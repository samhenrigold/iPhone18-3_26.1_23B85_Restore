uint64_t PosterArchive.Provider.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D180, &qword_2146F6F70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21432360C();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = 0;
    sub_2143239B0();
    sub_2146DA1C8();
    v11 = v18;
    if (v18 > 2u)
    {
      if (v18 == 3)
      {
        v24 = 4;
        sub_214323AAC();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v14 = 0;
        v12 = v18;
        v15 = v19;
        v13 = v20;
        LOBYTE(v16) = v21;
        goto LABEL_16;
      }

      if (v18 != 4)
      {
        v24 = 6;
        sub_214323A04();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v12 = v18;
        v15 = v19;
        v13 = v20;
        LOBYTE(v16) = v21;
        LOBYTE(v5) = v22;
        v14 = v21 & 0xFFFFFFFFFFFFFF00;
        v26 = v22;
        goto LABEL_16;
      }

      v24 = 5;
      sub_214323A58();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v12 = v18;
      v15 = v19;
      v13 = v20;
      v16 = v21;
      LOBYTE(v5) = v22;
      v25[6] = v23[6];
      v25[7] = v23[7];
      v25[8] = v23[8];
      *(&v25[8] + 13) = *(&v23[8] + 13);
    }

    else
    {
      if (!v18)
      {
        v24 = 1;
        sub_214323BA8();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v12 = v18;
        v17 = v19;
        v13 = v20;
        LOBYTE(v5) = v22;
        memcpy(v25, v23, 0x2AFuLL);
        v15 = v19;
        v14 = v21 & 0xFFFFFFFFFFFFFF00;
        LOBYTE(v16) = v21;
        goto LABEL_16;
      }

      if (v18 == 1)
      {
        v24 = 2;
        sub_214323B54();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v12 = v18;
        v17 = v19;
        v13 = v20;
        v14 = v21 & 0xFFFFFFFFFFFFFF00;
        LOBYTE(v5) = v22;
        memcpy(v25, v23, 0x1E0uLL);
        v15 = v19;
        LOBYTE(v16) = v21;
LABEL_16:
        *a2 = v12;
        *(a2 + 8) = v15;
        *(a2 + 24) = v13;
        *(a2 + 32) = v14 | v16;
        *(a2 + 40) = v5;
        memcpy((a2 + 41), v25, 0x2AFuLL);
        *(a2 + 728) = v11;
        return __swift_destroy_boxed_opaque_existential_1(v27);
      }

      v24 = 3;
      sub_214323B00();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v12 = v18;
      v15 = v19;
      v13 = v20;
      v16 = v21;
      LOBYTE(v5) = v22;
      v25[6] = v23[6];
      v25[7] = v23[7];
      v25[8] = v23[8];
      v25[9] = v23[9];
    }

    v25[2] = v23[2];
    v25[3] = v23[3];
    v25[4] = v23[4];
    v25[5] = v23[5];
    v14 = v16 & 0xFFFFFFFFFFFFFF00;
    v25[0] = v23[0];
    v25[1] = v23[1];
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_2142C25A4()
{
  v1 = 0x6569666963657073;
  if (*v0 != 1)
  {
    v1 = 0x565F6D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656853656C797473;
  }
}

uint64_t sub_2142C2620@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438A488(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C2648(uint64_t a1)
{
  v2 = sub_214323BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C2684(uint64_t a1)
{
  v2 = sub_214323BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C26C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6574737973;
  }

  else
  {
    v3 = 0x6569666963657073;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6574737973;
  }

  else
  {
    v5 = 0x6569666963657073;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142C2768()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C27EC(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142C285C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142C28E8(uint64_t *a1@<X8>)
{
  v2 = 0x6569666963657073;
  if (*v1)
  {
    v2 = 0x6D6574737973;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t StyleSheet.Font.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D1C0, &qword_2146F6F78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214323BFC();
  sub_2146DAA28();
  if (v9 < 0)
  {
    LOBYTE(v14) = 1;
    v19 = 0;
    sub_214323C50();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v14) = v13;
      v19 = 2;
      sub_214323CA4();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v19 = 0;
    sub_214323C50();
    sub_2146DA388();
    if (!v2)
    {
      v14 = v13;
      v15 = v9;
      v16 = BYTE2(v9);
      v17 = BYTE3(v9);
      v18 = v12;
      v19 = 1;
      sub_214323CF8();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StyleSheet.Font.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D1E8, &qword_2146F6F80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214323BFC();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    sub_214323D4C();
    sub_2146DA1C8();
    v10 = (v6 + 8);
    if (v15)
    {
      v18 = 2;
      sub_214323DA0();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v11 = 0;
      v12 = v15;
      v13 = 0x8000000000000000;
    }

    else
    {
      v18 = 1;
      sub_214323DF4();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v12 = v15;
      v13 = v16;
      v11 = v17;
    }

    *a2 = v12;
    a2[1] = v13;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C2E7C()
{
  v1 = 0x6574756C6F736261;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2142C2F0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438A608(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C2F34(uint64_t a1)
{
  v2 = sub_214323E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C2F70(uint64_t a1)
{
  v2 = sub_214323E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C2FAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574756C6F736261;
  }

  else
  {
    v3 = 0x6569666963657073;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574756C6F736261;
  }

  else
  {
    v5 = 0x6569666963657073;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142C3058()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C30E0(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142C3154(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142C31E4(uint64_t *a1@<X8>)
{
  v2 = 0x6569666963657073;
  if (*v1)
  {
    v2 = 0x6574756C6F736261;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t StyleSheet.Font.Size.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D208, &qword_2146F6F88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v10 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214323E48();
  sub_2146DAA28();
  if (v8 < 0)
  {
    v18 = 1;
    v17 = 0;
    sub_214323E9C();
    sub_2146DA388();
    if (!v2)
    {
      v16 = v10;
      v15 = 3;
      sub_214323EF0();
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    sub_214323E9C();
    sub_2146DA388();
    if (!v2)
    {
      v13 = 1;
      sub_2146DA348();
      v12 = v8;
      v11 = 2;
      sub_214323F44();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StyleSheet.Font.Size.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D230, &qword_2146F6F90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214323E48();
  sub_2146DAA08();
  if (!v2)
  {
    v14[14] = 0;
    sub_214323F98();
    sub_2146DA1C8();
    if (v14[15])
    {
      v14[12] = 3;
      sub_214323FEC();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v10 = v14[13];
      v11 = 0x80;
    }

    else
    {
      v14[11] = 1;
      sub_2146DA188();
      v13 = v12;
      v14[9] = 2;
      sub_214324040();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v11 = v14[10];
      v10 = v13;
    }

    *a2 = v10;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C37A4()
{
  v1 = 0x656853656C797473;
  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2142C3880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438A7D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C38A8(uint64_t a1)
{
  v2 = sub_214324094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C38E4(uint64_t a1)
{
  v2 = sub_214324094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C3920(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726F7779654B7461;
  }

  else
  {
    v2 = 0x656966696C617571;
  }

  if (*a2)
  {
    v3 = 0x726F7779654B7461;
  }

  else
  {
    v3 = 0x656966696C617571;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2142C39B4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C3A34(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142C3A98(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142C3B20(uint64_t *a1@<X8>)
{
  v2 = 0x656966696C617571;
  if (*v1)
  {
    v2 = 0x726F7779654B7461;
  }

  *a1 = v2;
  a1[1] = 0xE900000000000064;
}

uint64_t StyleSheet.Rule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D250, &qword_2146F6F98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v15 = v1[1];
  v16 = v8;
  v9 = v1[2];
  v13[1] = v1[3];
  v14 = v9;
  v13[0] = v1[4];
  v10 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324094();
  sub_2146DAA28();
  if ((v10 & 1) == 0)
  {
    LOBYTE(v17) = 0;
    v18 = 0;
    sub_2143240E8();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v17) = 1;
      sub_2146DA328();
      v17 = v14;
      v11 = 2;
      goto LABEL_7;
    }

    return (*(v5 + 8))(v7, v4);
  }

  LOBYTE(v17) = 1;
  v18 = 0;
  sub_2143240E8();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  LOBYTE(v17) = 3;
  sub_2146DA328();
  LOBYTE(v17) = 4;
  sub_2146DA328();
  v17 = v13[0];
  v11 = 5;
LABEL_7:
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D268, &qword_2146F6FA0);
  sub_21432413C();
  sub_2146DA388();
  return (*(v5 + 8))(v7, v4);
}

uint64_t StyleSheet.Rule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D280, &qword_2146F6FA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324094();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = 0;
    sub_214324214();
    sub_2146DA1C8();
    v10 = v23;
    if (v23)
    {
      LOBYTE(v23) = 3;
      v11 = sub_2146DA168();
      v13 = v12;
      v22 = v11;
      LOBYTE(v23) = 4;
      v20 = sub_2146DA168();
      v21 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D268, &qword_2146F6FA0);
      v24 = 5;
      sub_214324268();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v17 = v23;
      v18 = v20;
      v19 = v21;
    }

    else
    {
      LOBYTE(v23) = 1;
      v15 = sub_2146DA168();
      v13 = v16;
      v22 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D268, &qword_2146F6FA0);
      v24 = 2;
      sub_214324268();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v19 = 0;
      v17 = 0;
      v18 = v23;
    }

    *a2 = v22;
    *(a2 + 8) = v13;
    *(a2 + 16) = v18;
    *(a2 + 24) = v19;
    *(a2 + 32) = v17;
    *(a2 + 40) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C4234()
{
  v1 = 0x5F64696C61766E69;
  v2 = *v0;
  v3 = 0x6C61565F746E6F66;
  if (v2 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x67696C4174786574;
  if (v2 == 4)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x61565F726F6C6F63;
  if (v2 == 2)
  {
    v5 = 0x5F64696C61766E69;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2142C4350@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438AA40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C4378(uint64_t a1)
{
  v2 = sub_214324340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C43B4(uint64_t a1)
{
  v2 = sub_214324340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C4404(uint64_t a1)
{
  sub_2146D9698();
}

unint64_t sub_2142C44FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438AD50(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142C452C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64696C61766E69;
  v5 = 0xE90000000000006ELL;
  v6 = 0x67696C4174786574;
  v7 = 0xE400000000000000;
  v8 = 1953394534;
  if (v2 != 4)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEF6567616D49646ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x726F6C6F63;
  if (v2 != 1)
  {
    v10 = 0x756F72676B636162;
    v9 = 0xEF726F6C6F43646ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t StyleSheet.Rule.Declaration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D2A0, &qword_2146F6FB0);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v12 = v1[1];
  v13 = v7;
  v11 = v1[2];
  v8 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324340();
  sub_2146DAA28();
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      LOBYTE(v15) = 3;
      v18 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        LOBYTE(v15) = v13;
        v18 = 5;
        sub_21432443C();
        goto LABEL_18;
      }
    }

    else if (v8 == 4)
    {
      LOBYTE(v15) = 4;
      v18 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        v15 = v13;
        v16 = v12;
        v17 = v11;
        v18 = 6;
        sub_2143243E8();
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v15) = 5;
      v18 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        v15 = v13;
        v16 = v12;
        v18 = 7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_214045AC0();
        goto LABEL_18;
      }
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      LOBYTE(v15) = 1;
      v18 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        v15 = v13;
        LODWORD(v16) = v12;
        v18 = 3;
        sub_214324514();
LABEL_18:
        sub_2146DA388();
      }
    }

    else
    {
      LOBYTE(v15) = 2;
      v18 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        v15 = v13;
        LODWORD(v16) = v12;
        BYTE4(v16) = BYTE4(v12) & 1;
        v18 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D2C8, &qword_2146F6FB8);
        sub_214324490();
        goto LABEL_18;
      }
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    v18 = 0;
    sub_214324394();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v15) = 1;
      sub_2146DA328();
      LOBYTE(v15) = 2;
      sub_2146DA328();
    }
  }

  return (*(v14 + 8))(v6, v4);
}

uint64_t StyleSheet.Rule.Declaration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D2E0, &qword_2146F6FC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324340();
  sub_2146DAA08();
  if (!v2)
  {
    v25 = 0;
    sub_214324568();
    sub_2146DA1C8();
    v10 = v22;
    if (v22 > 2u)
    {
      if (v22 == 3)
      {
        v25 = 5;
        sub_214324610();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v14 = 0;
        v11 = 0;
        v12 = 0;
        v13 = v22;
      }

      else if (v22 == 4)
      {
        v25 = 6;
        sub_2143245BC();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v12 = 0;
        v13 = v22;
        v14 = v23;
        v11 = v24;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        v25 = 7;
        sub_2142E12FC();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v11 = 0;
        v12 = 0;
        v13 = v22;
        v14 = v23;
      }
    }

    else if (v22)
    {
      if (v22 == 1)
      {
        v25 = 3;
        sub_2143246E8();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v11 = 0;
        v12 = 0;
        v13 = v22;
        v14 = v23;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D2C8, &qword_2146F6FB8);
        v25 = 4;
        sub_214324664();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v11 = 0;
        v12 = 0;
        v13 = v22;
        v17 = 0x100000000;
        if (!BYTE4(v23))
        {
          v17 = 0;
        }

        v14 = v17 | v23;
      }
    }

    else
    {
      LOBYTE(v22) = 1;
      v15 = sub_2146DA168();
      v14 = v16;
      v21 = v15;
      LOBYTE(v22) = 2;
      v11 = sub_2146DA168();
      v18 = v8;
      v20 = v19;
      (*(v6 + 8))(v18, v5);
      v12 = v20;
      v13 = v21;
    }

    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C4F74()
{
  v1 = *v0;
  v2 = 0x61565F6E69616C70;
  v3 = 0xD000000000000018;
  if (v1 != 4)
  {
    v3 = 0xD000000000000019;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 1)
  {
    v2 = 0x6C61565F6C696D73;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_2142C5044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438AD9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C506C(uint64_t a1)
{
  v2 = sub_21432473C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C50A8(uint64_t a1)
{
  v2 = sub_21432473C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C50F0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C51D0(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142C529C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142C5378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438B000(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142C53A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E69616C70;
  v5 = 0xEA0000000000746ELL;
  v6 = 0x656D686361747461;
  v7 = 0xD000000000000012;
  v8 = 0x8000000214786E80;
  if (v2 != 3)
  {
    v7 = 0xD000000000000013;
    v8 = 0x8000000214786EA0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 1818848627;
    v3 = 0xE400000000000000;
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

uint64_t sub_2142C54F4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D310, &qword_2146F6FC8);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = v1[1];
  v12 = *v1;
  v13 = v7;
  v8 = v1[2];
  v11 = v1[3];
  v9 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432473C();
  sub_2146DAA28();
  if (v9 <= 1)
  {
    if (v9)
    {
      LOBYTE(v15) = 1;
      v19 = 0;
      sub_214324790();
      sub_2146DA388();
      if (!v2)
      {
        v15 = v12;
        v16 = v13;
        v17 = v8;
        v18 = v11;
        v19 = 2;
        sub_21405D548();
        goto LABEL_15;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
      v19 = 0;
      sub_214324790();
      sub_2146DA388();
      if (!v2)
      {
        v15 = v12;
        v16 = v13;
        v19 = 1;
        sub_21405D2CC();
        goto LABEL_15;
      }
    }
  }

  else if (v9 == 2)
  {
    LOBYTE(v15) = 2;
    v19 = 0;
    sub_214324790();
    sub_2146DA388();
    if (!v2)
    {
      v15 = v12;
      v16 = v13;
      v17 = v8;
      v18 = v11;
      v19 = 3;
      sub_21405D61C();
      goto LABEL_15;
    }
  }

  else if (v9 == 3)
  {
    LOBYTE(v15) = 3;
    v19 = 0;
    sub_214324790();
    sub_2146DA388();
    if (!v2)
    {
      v15 = v12;
      LOBYTE(v16) = v13;
      v19 = 4;
      sub_21405D3A0();
LABEL_15:
      sub_2146DA388();
    }
  }

  else
  {
    LOBYTE(v15) = 4;
    v19 = 0;
    sub_214324790();
    sub_2146DA388();
    if (!v2)
    {
      v15 = v12;
      v16 = v13;
      v19 = 5;
      sub_21405D474();
      goto LABEL_15;
    }
  }

  return (*(v14 + 8))(v6, v4);
}

uint64_t sub_2142C5850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D328, &qword_2146F6FD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432473C();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    sub_2143247E4();
    sub_2146DA1C8();
    v10 = v14;
    if (v14 <= 1u)
    {
      if (!v14)
      {
        v17 = 1;
        sub_21405D278();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        goto LABEL_12;
      }

      v17 = 2;
      sub_21405D4F4();
    }

    else
    {
      if (v14 != 2)
      {
        if (v14 == 3)
        {
          v17 = 4;
          sub_21405D34C();
          sub_2146DA1C8();
          (*(v6 + 8))(v8, v5);
          v11 = 0;
          v12 = 0;
          *&v13 = v14;
          *(&v13 + 1) = BYTE8(v14);
LABEL_15:
          *a2 = v13;
          *(a2 + 16) = v11;
          *(a2 + 24) = v12;
          *(a2 + 32) = v10;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v17 = 5;
        sub_21405D420();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
LABEL_12:
        v11 = 0;
        v12 = 0;
        v13 = v14;
        goto LABEL_15;
      }

      v17 = 3;
      sub_21405D5C8();
    }

    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v13 = v14;
    v11 = v15;
    v12 = v16;
    goto LABEL_15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142C5B90(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD00000000000001ALL;
      if (a1 != 10)
      {
        v6 = 0x6449617245736C6DLL;
      }

      if (a1 == 9)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      v5 = 0xD000000000000020;
      if (a1 == 7)
      {
        v5 = 0xD000000000000016;
      }

      if (a1 == 6)
      {
        return 0xD000000000000021;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 0x65756C61565F6F74;
    v2 = 0x656D695465746164;
    v3 = 0x63617073656D616ELL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0x6C61565F6D6F7266;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
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

unint64_t sub_2142C5D54(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 28532;
    v5 = 0x656D695465746164;
    v6 = 0x63617073656D616ELL;
    if (a1 != 3)
    {
      v6 = 0x7373654D6E646D69;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 1836020326;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v2 = 0xD000000000000015;
      v1 = 0xD000000000000014;
      if (a1 != 9)
      {
        v1 = 0x6449617245736C6DLL;
      }

      v3 = a1 == 8;
    }

    else
    {
      v1 = 0xD000000000000010;
      v2 = 0xD00000000000001BLL;
      if (a1 != 6)
      {
        v1 = 0xD00000000000001ALL;
      }

      v3 = a1 == 5;
    }

    if (v3)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2142C5EF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438B04C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C5F1C(uint64_t a1)
{
  v2 = sub_214324838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C5F58(uint64_t a1)
{
  v2 = sub_214324838();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2142C5FF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438B478(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2142C6024@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142C5D54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CPIMMessage.Header.encode(to:)(void *a1)
{
  v78 = type metadata accessor for CPIMMessage.NamespaceHeader(0);
  MEMORY[0x28223BE20](v78);
  v3 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CPIMMessage.DateTimeHeader(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D338, &qword_2146F6FD8);
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v77 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324838();
  v81 = v13;
  sub_2146DAA28();
  sub_2143287C0(v79, v9, type metadata accessor for CPIMMessage.Header);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v39 = v6;
        sub_214328704(v9, v6, type metadata accessor for CPIMMessage.DateTimeHeader);
        LOBYTE(v84) = 2;
        v89 = 0;
        sub_21432488C();
        v21 = v81;
        v20 = v82;
        v40 = v80;
        sub_2146DA388();
        if (!v40)
        {
          LOBYTE(v84) = 3;
          sub_214328930(&qword_27C90D390, type metadata accessor for CPIMMessage.DateTimeHeader, protocol conformance descriptor for CPIMMessage.DateTimeHeader);
          sub_2146DA388();
        }

        v23 = type metadata accessor for CPIMMessage.DateTimeHeader;
        v24 = v39;
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v51 = *v9;
          v52 = *(v9 + 1);
          v54 = *(v9 + 2);
          v53 = *(v9 + 3);
          v55 = v9[32];
          LOBYTE(v84) = 4;
          v89 = 0;
          sub_21432488C();
          v30 = v81;
          v31 = v82;
          v56 = v80;
          sub_2146DA388();
          if (v56)
          {
            goto LABEL_38;
          }

          v84 = v51;
          v85 = v52;
          v86 = v54;
          v87 = v53;
          v88 = v55;
          v89 = 5;
          sub_214324AD8();
          goto LABEL_37;
        }

        sub_214328704(v9, v3, type metadata accessor for CPIMMessage.NamespaceHeader);
        LOBYTE(v84) = 3;
        v89 = 0;
        sub_21432488C();
        v21 = v81;
        v20 = v82;
        v22 = v80;
        sub_2146DA388();
        if (!v22)
        {
          LOBYTE(v84) = 4;
          sub_214328930(&qword_27C90D388, type metadata accessor for CPIMMessage.NamespaceHeader, protocol conformance descriptor for CPIMMessage.NamespaceHeader);
          sub_2146DA388();
        }

        v23 = type metadata accessor for CPIMMessage.NamespaceHeader;
        v24 = v3;
      }

      sub_21432887C(v24, v23);
      return (*(v83 + 8))(v21, v20);
    }

    if (EnumCaseMultiPayload)
    {
      v57 = *v9;
      v58 = *(v9 + 1);
      v60 = *(v9 + 2);
      v59 = *(v9 + 3);
      v61 = v9[32];
      LOBYTE(v84) = 1;
      v89 = 0;
      sub_21432488C();
      v30 = v81;
      v31 = v82;
      v62 = v80;
      sub_2146DA388();
      if (v62)
      {
        goto LABEL_38;
      }

      v84 = v57;
      v85 = v58;
      v86 = v60;
      v87 = v59;
      v88 = v61;
      v89 = 2;
      sub_214324B2C();
    }

    else
    {
      v33 = *v9;
      v34 = *(v9 + 1);
      v36 = *(v9 + 2);
      v35 = *(v9 + 3);
      v37 = v9[32];
      LOBYTE(v84) = 0;
      v89 = 0;
      sub_21432488C();
      v30 = v81;
      v31 = v82;
      v38 = v80;
      sub_2146DA388();
      if (v38)
      {
        goto LABEL_38;
      }

      v84 = v33;
      v85 = v34;
      v86 = v36;
      v87 = v35;
      v88 = v37;
      v89 = 1;
      sub_214324B80();
    }

LABEL_37:
    sub_2146DA388();
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v41 = *v9;
      LOBYTE(v84) = 5;
      v89 = 0;
      sub_21432488C();
      v42 = v81;
      v43 = v82;
      v44 = v80;
      sub_2146DA388();
      if (!v44)
      {
        v84 = v41;
        v89 = 6;
        sub_214324A84();
        sub_2146DA388();
      }

      (*(v83 + 8))(v42, v43);
    }

    if (EnumCaseMultiPayload == 6)
    {
      v15 = *v9;
      LOBYTE(v84) = 6;
      v89 = 0;
      sub_21432488C();
      v16 = v81;
      v17 = v82;
      v18 = v80;
      sub_2146DA388();
      if (!v18)
      {
        LOBYTE(v84) = v15;
        v89 = 7;
        sub_214324A30();
        sub_2146DA388();
      }

      return (*(v83 + 8))(v16, v17);
    }

    v63 = *v9;
    v64 = *(v9 + 1);
    v66 = *(v9 + 2);
    v65 = *(v9 + 3);
    v67 = v9[32];
    LOBYTE(v84) = 7;
    v89 = 0;
    sub_21432488C();
    v30 = v81;
    v31 = v82;
    v68 = v80;
    sub_2146DA388();
    if (!v68)
    {
      v84 = v63;
      v85 = v64;
      v86 = v66;
      v87 = v65;
      v88 = v67;
      v89 = 8;
      sub_2143249DC();
      goto LABEL_37;
    }

LABEL_38:
    (*(v83 + 8))(v30, v31);
  }

  if (EnumCaseMultiPayload == 8)
  {
    v45 = *v9;
    v46 = *(v9 + 1);
    v48 = *(v9 + 2);
    v47 = *(v9 + 3);
    v49 = v9[32];
    LOBYTE(v84) = 8;
    v89 = 0;
    sub_21432488C();
    v30 = v81;
    v31 = v82;
    v50 = v80;
    sub_2146DA388();
    if (v50)
    {
      goto LABEL_38;
    }

    v84 = v45;
    v85 = v46;
    v86 = v48;
    v87 = v47;
    v88 = v49;
    v89 = 9;
    sub_214324988();
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 9)
  {
    v25 = *v9;
    v26 = *(v9 + 1);
    v28 = *(v9 + 2);
    v27 = *(v9 + 3);
    v29 = v9[32];
    LOBYTE(v84) = 9;
    v89 = 0;
    sub_21432488C();
    v30 = v81;
    v31 = v82;
    v32 = v80;
    sub_2146DA388();
    if (v32)
    {
      goto LABEL_38;
    }

    v84 = v25;
    v85 = v26;
    v86 = v28;
    v87 = v27;
    v88 = v29;
    v89 = 10;
    sub_214324934();
    goto LABEL_37;
  }

  v70 = *v9;
  v69 = *(v9 + 1);
  v71 = *(v9 + 2);
  v72 = v9[24];
  v73 = v9[25];
  LOBYTE(v84) = 10;
  v89 = 0;
  sub_21432488C();
  v74 = v81;
  v75 = v82;
  v76 = v80;
  sub_2146DA388();
  if (!v76)
  {
    v84 = v70;
    v85 = v69;
    v86 = v71;
    LOBYTE(v87) = v72;
    BYTE1(v87) = v73;
    v89 = 11;
    sub_2143248E0();
    sub_2146DA388();
  }

  (*(v83 + 8))(v74, v75);
}

uint64_t CPIMMessage.Header.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v34 = type metadata accessor for CPIMMessage.NamespaceHeader(0);
  MEMORY[0x28223BE20](v34);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CPIMMessage.DateTimeHeader(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D3A8, &qword_2146F6FE0);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214324838();
  v14 = v39;
  sub_2146DAA08();
  if (v14)
  {
    v17 = v38;
  }

  else
  {
    v39 = v12;
    v16 = v36;
    v15 = v37;
    v43 = 0;
    sub_214324BD4();
    sub_2146DA1C8();
    if (v40 <= 4u)
    {
      if (v40 <= 1u)
      {
        v43 = 1;
        sub_214324EC8();
        sub_2146DA1C8();
        (*(v35 + 8))(v9, v7);
        v22 = v42;
        v23 = v41;
        v19 = v39;
        *v39 = v40;
        v19[1] = v23;
        *(v19 + 32) = v22;
      }

      else if (v40 == 2)
      {
        LOBYTE(v40) = 3;
        sub_214328930(&qword_27C90D3F8, type metadata accessor for CPIMMessage.DateTimeHeader, protocol conformance descriptor for CPIMMessage.DateTimeHeader);
        sub_2146DA1C8();
        (*(v35 + 8))(v9, v7);
        v19 = v39;
        sub_214328704(v6, v39, type metadata accessor for CPIMMessage.DateTimeHeader);
      }

      else if (v40 == 3)
      {
        LOBYTE(v40) = 4;
        sub_214328930(&qword_27C90D3F0, type metadata accessor for CPIMMessage.NamespaceHeader, protocol conformance descriptor for CPIMMessage.NamespaceHeader);
        sub_2146DA1C8();
        (*(v35 + 8))(v9, v7);
        v19 = v39;
        sub_214328704(v16, v39, type metadata accessor for CPIMMessage.NamespaceHeader);
      }

      else
      {
        v43 = 5;
        sub_214324E20();
        sub_2146DA1C8();
        (*(v35 + 8))(v9, v7);
        v31 = v42;
        v32 = v41;
        v19 = v39;
        *v39 = v40;
        v19[1] = v32;
        *(v19 + 32) = v31;
      }
    }

    else if (v40 > 7u)
    {
      if (v40 == 8)
      {
        v43 = 9;
        sub_214324CD0();
        sub_2146DA1C8();
        (*(v35 + 8))(v9, v7);
        v24 = v42;
        v25 = v41;
        v19 = v39;
        *v39 = v40;
        v19[1] = v25;
        *(v19 + 32) = v24;
      }

      else if (v40 == 9)
      {
        v43 = 10;
        sub_214324C7C();
        sub_2146DA1C8();
        (*(v35 + 8))(v9, v7);
        v20 = v42;
        v21 = v41;
        v19 = v39;
        *v39 = v40;
        v19[1] = v21;
        *(v19 + 32) = v20;
      }

      else
      {
        v43 = 11;
        sub_214324C28();
        sub_2146DA1C8();
        (*(v35 + 8))(v9, v7);
        v28 = v41;
        v29 = BYTE8(v41);
        v30 = BYTE9(v41);
        v19 = v39;
        *v39 = v40;
        *(v19 + 2) = v28;
        *(v19 + 24) = v29;
        *(v19 + 25) = v30;
      }
    }

    else if (v40 == 5)
    {
      v43 = 6;
      sub_214324DCC();
      sub_2146DA1C8();
      (*(v35 + 8))(v9, v7);
      v19 = v39;
      *v39 = v40;
    }

    else if (v40 == 6)
    {
      v43 = 7;
      sub_214324D78();
      sub_2146DA1C8();
      (*(v35 + 8))(v9, v7);
      v19 = v39;
      *v39 = v40;
    }

    else
    {
      v43 = 8;
      sub_214324D24();
      sub_2146DA1C8();
      (*(v35 + 8))(v9, v7);
      v26 = v42;
      v27 = v41;
      v19 = v39;
      *v39 = v40;
      v19[1] = v27;
      *(v19 + 32) = v26;
    }

    v33 = v38;
    swift_storeEnumTagMultiPayload();
    sub_214328704(v19, v15, type metadata accessor for CPIMMessage.Header);
    v17 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_2142C7250(char a1)
{
  result = 0x69616C5074786574;
  switch(a1)
  {
    case 1:
    case 12:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x6C61565F6E646D69;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x756C61565F736C6DLL;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000027;
      break;
  }

  return result;
}

unint64_t sub_2142C73E0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 7564397;
    v7 = 0x6C4D726576726573;
    if (a1 != 10)
    {
      v7 = 0x54656C6946736C6DLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    v9 = 1852075369;
    if (a1 != 7)
    {
      v9 = 0x6E657265666E6F63;
    }

    if (a1 != 6)
    {
      v8 = v9;
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
    v1 = 0x4C68737550736372;
    v2 = 0x617373654D746F62;
    v3 = 0x6E617254656C6966;
    if (a1 != 4)
    {
      v3 = 0x69616C5074786574;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x70756F72476D7063;
    if (a1 != 1)
    {
      v4 = 0x6567677553746F62;
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

uint64_t sub_2142C75D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438B4C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C7600(uint64_t a1)
{
  v2 = sub_214324F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C763C(uint64_t a1)
{
  v2 = sub_214324F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2142C76D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438B938(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2142C7708@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142C73E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.encode(to:)(void *a1)
{
  v56 = type metadata accessor for SIPConferenceInfo(0);
  MEMORY[0x28223BE20](v56);
  v62 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for IMDispositionNotification(0);
  MEMORY[0x28223BE20](v55);
  v61 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for IMCompositionIndication(0);
  MEMORY[0x28223BE20](v54);
  v60 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for RCSFileTransferInfo(0);
  MEMORY[0x28223BE20](v53);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Chatbot.RootMessage(0);
  v6 = MEMORY[0x28223BE20](v57);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  v10 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D410, &qword_2146F6FE8);
  v65 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324F1C();
  sub_2146DAA28();
  sub_2143287C0(v63, v12, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      v21 = v15;
      if (EnumCaseMultiPayload == 6)
      {
        v22 = v60;
        sub_214328704(v12, v60, type metadata accessor for IMCompositionIndication);
        LOBYTE(v70) = 6;
        LOBYTE(v66) = 0;
        sub_214324F70();
        v37 = v64;
        sub_2146DA388();
        if (!v37)
        {
          LOBYTE(v70) = 7;
          sub_214328930(&qword_27C90D450, type metadata accessor for IMCompositionIndication, byte_2146FC958);
          sub_2146DA388();
        }

        v24 = type metadata accessor for IMCompositionIndication;
      }

      else if (EnumCaseMultiPayload == 7)
      {
        v22 = v61;
        sub_214328704(v12, v61, type metadata accessor for IMDispositionNotification);
        LOBYTE(v70) = 7;
        LOBYTE(v66) = 0;
        sub_214324F70();
        v23 = v64;
        sub_2146DA388();
        if (!v23)
        {
          LOBYTE(v70) = 8;
          sub_214328930(&qword_27C90D448, type metadata accessor for IMDispositionNotification, a1gm);
          sub_2146DA388();
        }

        v24 = type metadata accessor for IMDispositionNotification;
      }

      else
      {
        v22 = v62;
        sub_214328704(v12, v62, type metadata accessor for SIPConferenceInfo);
        LOBYTE(v70) = 8;
        LOBYTE(v66) = 0;
        sub_214324F70();
        v46 = v64;
        sub_2146DA388();
        if (!v46)
        {
          LOBYTE(v70) = 9;
          sub_214328930(&qword_27C90D440, type metadata accessor for SIPConferenceInfo, aQMG);
          sub_2146DA388();
        }

        v24 = type metadata accessor for SIPConferenceInfo;
      }

      v39 = v24;
      v40 = v22;
      goto LABEL_42;
    }

    v28 = v15;
    if (EnumCaseMultiPayload == 9)
    {
      v42 = *v12;
      v41 = *(v12 + 1);
      v32 = *(v12 + 2);
      v31 = *(v12 + 3);
      v43 = v12[32];
      LOBYTE(v70) = 9;
      LOBYTE(v66) = 0;
      sub_214324F70();
      v44 = v64;
      sub_2146DA388();
      if (!v44)
      {
        *&v70 = v42;
        *(&v70 + 1) = v41;
        *&v71 = v32;
        *(&v71 + 1) = v31;
        v72[0] = v43;
        LOBYTE(v66) = 10;
        sub_21432506C();
        goto LABEL_48;
      }
    }

    else if (EnumCaseMultiPayload == 10)
    {
      v30 = *v12;
      v29 = *(v12 + 1);
      v32 = *(v12 + 2);
      v31 = *(v12 + 3);
      v33 = v12[32];
      LOBYTE(v70) = 10;
      LOBYTE(v66) = 0;
      sub_214324F70();
      v34 = v64;
      sub_2146DA388();
      if (!v34)
      {
        *&v70 = v30;
        *(&v70 + 1) = v29;
        *&v71 = v32;
        *(&v71 + 1) = v31;
        v72[0] = v33;
        LOBYTE(v66) = 11;
        sub_214325018();
LABEL_48:
        sub_2146DA388();
      }
    }

    else
    {
      v49 = *v12;
      v48 = *(v12 + 1);
      v32 = *(v12 + 2);
      v31 = *(v12 + 3);
      v50 = v12[32];
      LOBYTE(v70) = 11;
      LOBYTE(v66) = 0;
      sub_214324F70();
      v51 = v64;
      sub_2146DA388();
      if (!v51)
      {
        *&v70 = v49;
        *(&v70 + 1) = v48;
        *&v71 = v32;
        *(&v71 + 1) = v31;
        v72[0] = v50;
        LOBYTE(v66) = 12;
        sub_214324FC4();
        goto LABEL_48;
      }
    }

    (*(v65 + 8))(v28, v13);

    return sub_213FDC6BC(v32, v31);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v25 = v58;
      sub_214328704(v12, v58, type metadata accessor for Chatbot.RootMessage);
      LOBYTE(v70) = 3;
      LOBYTE(v66) = 0;
      sub_214324F70();
      v21 = v15;
      v38 = v64;
      sub_2146DA388();
      if (!v38)
      {
        LOBYTE(v70) = 4;
        sub_214328930(&qword_27C90D460, type metadata accessor for Chatbot.RootMessage, byte_214703D48);
        sub_2146DA388();
      }

      v27 = type metadata accessor for Chatbot.RootMessage;
    }

    else
    {
      v21 = v15;
      if (EnumCaseMultiPayload != 4)
      {
        LOBYTE(v70) = 5;
        LOBYTE(v66) = 0;
        sub_214324F70();
        v47 = v64;
        sub_2146DA388();
        if (!v47)
        {
          LOBYTE(v70) = 6;
          sub_2146DA328();
        }

        (*(v65 + 8))(v15, v13);
      }

      v25 = v59;
      sub_214328704(v12, v59, type metadata accessor for RCSFileTransferInfo);
      LOBYTE(v70) = 4;
      LOBYTE(v66) = 0;
      sub_214324F70();
      v26 = v64;
      sub_2146DA388();
      if (!v26)
      {
        LOBYTE(v70) = 5;
        sub_214328930(&qword_27C90D458, type metadata accessor for RCSFileTransferInfo, byte_2146FC7C8);
        sub_2146DA388();
      }

      v27 = type metadata accessor for RCSFileTransferInfo;
    }

    v39 = v27;
    v40 = v25;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v12 + 3);
      *v72 = *(v12 + 2);
      *&v72[16] = v17;
      v73 = *(v12 + 32);
      v18 = *(v12 + 1);
      v70 = *v12;
      v71 = v18;
      LOBYTE(v66) = 1;
      v74 = 0;
      sub_214324F70();
      v19 = v64;
      sub_2146DA388();
      if (!v19)
      {
        *v68 = *v72;
        *&v68[16] = *&v72[16];
        v69 = v73;
        v66 = v70;
        v67 = v71;
        v74 = 2;
        sub_2143250C0();
        sub_2146DA388();
      }

      (*(v65 + 8))(v15, v13);
      return sub_21430280C(&v70);
    }

    sub_214328704(v12, v9, type metadata accessor for Chatbot.RootMessage);
    LOBYTE(v70) = 2;
    LOBYTE(v66) = 0;
    sub_214324F70();
    v21 = v15;
    v45 = v64;
    sub_2146DA388();
    if (!v45)
    {
      LOBYTE(v70) = 3;
      sub_214328930(&qword_27C90D460, type metadata accessor for Chatbot.RootMessage, byte_214703D48);
      sub_2146DA388();
    }

    v39 = type metadata accessor for Chatbot.RootMessage;
    v40 = v9;
LABEL_42:
    sub_21432887C(v40, v39);
    return (*(v65 + 8))(v21, v13);
  }

  v35 = *(v12 + 1);
  v70 = *v12;
  v71 = v35;
  *v72 = *(v12 + 2);
  *&v72[10] = *(v12 + 42);
  LOBYTE(v66) = 0;
  v74 = 0;
  sub_214324F70();
  v36 = v64;
  sub_2146DA388();
  if (!v36)
  {
    v66 = v70;
    v67 = v71;
    *v68 = *v72;
    *&v68[10] = *&v72[10];
    v74 = 1;
    sub_214325168();
    sub_2146DA388();
  }

  (*(v65 + 8))(v15, v13);
  return sub_214325114(&v70);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = type metadata accessor for SIPConferenceInfo(0);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for IMDispositionNotification(0);
  MEMORY[0x28223BE20](v47);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for IMCompositionIndication(0);
  MEMORY[0x28223BE20](v42);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for RCSFileTransferInfo(0);
  MEMORY[0x28223BE20](v43);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Chatbot.RootMessage(0);
  v7 = MEMORY[0x28223BE20](v49);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D478, &qword_2146F6FF0);
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_214324F1C();
  v19 = v53;
  sub_2146DAA08();
  if (!v19)
  {
    v41 = v11;
    v20 = v9;
    v21 = v50;
    v53 = v15;
    v22 = v51;
    v59 = 0;
    sub_2143251BC();
    v23 = v14;
    sub_2146DA1C8();
    if (v55 > 5u)
    {
      if (v55 > 8u)
      {
        v26 = v22;
        if (v55 == 9)
        {
          v59 = 10;
          sub_2143252B8();
        }

        else
        {
          v59 = 11;
          sub_214325264();
        }

        sub_2146DA1C8();
        (*(v52 + 8))(v23, v12);
        v31 = v57[0];
        v32 = v56;
        *v17 = v55;
        *(v17 + 1) = v32;
        v17[32] = v31;
      }

      else
      {
        v26 = v22;
        if (v55 == 6)
        {
          LOBYTE(v55) = 7;
          sub_214328930(&qword_27C90D4B0, type metadata accessor for IMCompositionIndication, byte_2146FC930);
          sub_2146DA1C8();
          (*(v52 + 8))(v23, v12);
          sub_214328704(v21, v17, type metadata accessor for IMCompositionIndication);
        }

        else if (v55 == 7)
        {
          LOBYTE(v55) = 8;
          sub_214328930(&qword_27C90D4A8, type metadata accessor for IMDispositionNotification, byte_2146FC980);
          v29 = v45;
          sub_2146DA1C8();
          (*(v52 + 8))(v23, v12);
          sub_214328704(v29, v17, type metadata accessor for IMDispositionNotification);
        }

        else
        {
          LOBYTE(v55) = 9;
          sub_214328930(&qword_27C90D4A0, type metadata accessor for SIPConferenceInfo, byte_2146FCB60);
          v35 = v46;
          sub_2146DA1C8();
          (*(v52 + 8))(v23, v12);
          sub_214328704(v35, v17, type metadata accessor for SIPConferenceInfo);
        }
      }

      goto LABEL_27;
    }

    if (v55 > 2u)
    {
      if (v55 != 3)
      {
        if (v55 == 4)
        {
          LOBYTE(v55) = 5;
          sub_214328930(&qword_27C90D4B8, type metadata accessor for RCSFileTransferInfo, aIgm);
          v30 = v44;
          sub_2146DA1C8();
          v26 = v22;
          (*(v52 + 8))(v23, v12);
          sub_214328704(v30, v17, type metadata accessor for RCSFileTransferInfo);
        }

        else
        {
          LOBYTE(v55) = 6;
          v36 = sub_2146DA168();
          v37 = v14;
          v38 = v36;
          v40 = v39;
          v26 = v22;
          (*(v52 + 8))(v37, v12);
          *v17 = v38;
          *(v17 + 1) = v40;
        }

        goto LABEL_27;
      }

      LOBYTE(v55) = 4;
      sub_214328930(&qword_27C90D4C0, type metadata accessor for Chatbot.RootMessage, byte_214703D20);
      sub_2146DA1C8();
      (*(v52 + 8))(v14, v12);
      sub_214328704(v20, v17, type metadata accessor for Chatbot.RootMessage);
    }

    else if (v55)
    {
      v25 = v52;
      if (v55 == 1)
      {
        v59 = 2;
        sub_21432530C();
        sub_2146DA1C8();
        (*(v25 + 8))(v14, v12);
        v26 = v22;
        v27 = *&v57[16];
        *(v17 + 2) = *v57;
        *(v17 + 3) = v27;
        *(v17 + 32) = v58;
        v28 = v56;
        *v17 = v55;
        *(v17 + 1) = v28;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        goto LABEL_28;
      }

      LOBYTE(v55) = 3;
      sub_214328930(&qword_27C90D4C0, type metadata accessor for Chatbot.RootMessage, byte_214703D20);
      v34 = v41;
      sub_2146DA1C8();
      (*(v25 + 8))(v23, v12);
      sub_214328704(v34, v17, type metadata accessor for Chatbot.RootMessage);
    }

    else
    {
      v59 = 1;
      sub_214325360();
      sub_2146DA1C8();
      (*(v52 + 8))(v14, v12);
      v33 = v56;
      *v17 = v55;
      *(v17 + 1) = v33;
      *(v17 + 2) = *v57;
      *(v17 + 42) = *&v57[10];
    }

    swift_storeEnumTagMultiPayload();
    v26 = v22;
LABEL_28:
    sub_214328704(v17, v26, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_2142C8FC0()
{
  v1 = 0x5F6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2142C902C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438B984(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C9054(uint64_t a1)
{
  v2 = sub_2143253B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C9090(uint64_t a1)
{
  v2 = sub_2143253B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C90CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6567617373656DLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x8000000214787020;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6567617373656DLL;
  }

  if (*a2)
  {
    v6 = 0x8000000214787020;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142C9178()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C9200(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142C9274(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142C9304(unint64_t *a1@<X8>)
{
  v2 = 0x8000000214787020;
  v3 = 0x6567617373656DLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t CPIMMessage.Content.encode(to:)(void *a1)
{
  v2 = v1;
  v16 = type metadata accessor for CPIMMessage.EncapsulatedMessage(0);
  MEMORY[0x28223BE20](v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CPIMMessage.Content(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D4D8, &qword_2146F6FF8);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143253B4();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for CPIMMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v8;
    v24 = 1;
    v23 = 0;
    sub_214325408();
    v13 = v17;
    sub_2146DA388();
    if (!v13)
    {
      v19 = v12;
      v22 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D4F0, &qword_2146F7000);
      sub_21432545C();
      sub_2146DA388();
    }

    (*(v18 + 8))(v11, v9);
  }

  else
  {
    sub_214328704(v8, v5, type metadata accessor for CPIMMessage.EncapsulatedMessage);
    v21 = 0;
    sub_214325408();
    v15 = v17;
    sub_2146DA388();
    if (!v15)
    {
      v20 = 1;
      sub_214328930(&qword_27C90D500, type metadata accessor for CPIMMessage.EncapsulatedMessage, protocol conformance descriptor for CPIMMessage.EncapsulatedMessage);
      sub_2146DA388();
    }

    sub_21432887C(v5, type metadata accessor for CPIMMessage.EncapsulatedMessage);
    return (*(v18 + 8))(v11, v9);
  }
}

uint64_t CPIMMessage.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for CPIMMessage.EncapsulatedMessage(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D508, &qword_2146F7008);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CPIMMessage.Content(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2143253B4();
  v13 = v22;
  sub_2146DAA08();
  if (!v13)
  {
    v19 = v11;
    v22 = v9;
    v14 = v20;
    v15 = v21;
    v27 = 0;
    sub_214325510();
    sub_2146DA1C8();
    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D4F0, &qword_2146F7000);
      v26 = 2;
      sub_214325564();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v15;
      v18 = v19;
      *v19 = v24;
    }

    else
    {
      v25 = 1;
      sub_214328930(&qword_27C90D520, type metadata accessor for CPIMMessage.EncapsulatedMessage, protocol conformance descriptor for CPIMMessage.EncapsulatedMessage);
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v18 = v19;
      sub_214328704(v5, v19, type metadata accessor for CPIMMessage.EncapsulatedMessage);
      v17 = v15;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v18, v17, type metadata accessor for CPIMMessage.Content);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_2142C9B24()
{
  if (*v0)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_2142C9B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x8000000214798B40 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE0065756C61565FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
  return result;
}

uint64_t sub_2142C9C60(uint64_t a1)
{
  v2 = sub_214325618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C9C9C(uint64_t a1)
{
  v2 = sub_214325618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C9DF8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D528, &qword_2146F7010);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v12 = *v1;
  v8 = *(v1 + 2);
  v17 = *(v1 + 24);
  v11 = *(v1 + 25);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325618();
  sub_2146DAA28();
  LOBYTE(v13) = 0;
  sub_21432566C();
  sub_2146DA388();
  if (!v2)
  {
    v13 = v12;
    v14 = v8;
    v15 = v17;
    v16 = v11;
    v18 = 1;
    sub_2143256C0();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142C9FB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D548, &qword_2146F7018);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325618();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v13) = 0;
    sub_214325714();
    sub_2146DA1C8();
    v17 = 1;
    sub_214325768();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v15;
    v11 = v16;
    *a2 = v13;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 25) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CA1C8()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000035;
  }
}

uint64_t sub_2142CA204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000035 && 0x8000000214798B60 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000214798BA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2142CA2E4(uint64_t a1)
{
  v2 = sub_2143257BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CA320(uint64_t a1)
{
  v2 = sub_2143257BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CA368()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CA44C(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142CA51C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142CA5FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438BBB0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142CA62C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x65726576696C6564;
  v4 = 0x8000000214787050;
  v5 = 0xD000000000000010;
  v6 = 0xE90000000000006ELL;
  v7 = 0x6564646962726F66;
  if (v2 != 3)
  {
    v7 = 0x726F727265;
    v6 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0x64656C696166;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t sub_2142CA77C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D560, &qword_2146F7020);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143257BC();
  sub_2146DAA28();
  v9 = v8 >> 4;
  if (v8 >> 4 > 0xD)
  {
    if (v9 == 14)
    {
      v16 = 3;
      v15 = 0;
      sub_214325810();
      goto LABEL_12;
    }

    if (v9 == 15)
    {
      v12 = 0;
      sub_214325810();
      goto LABEL_12;
    }
  }

  else
  {
    if (v9 == 6)
    {
      v18 = 4;
      v17 = 0;
      sub_214325810();
      goto LABEL_12;
    }

    if (v9 == 7)
    {
      v14 = 1;
      v13 = 0;
      sub_214325810();
LABEL_12:
      sub_2146DA388();
      return (*(v5 + 8))(v7, v4);
    }
  }

  v11[15] = 2;
  v11[14] = 0;
  sub_214325810();
  sub_2146DA388();
  if (!v2)
  {
    v11[13] = v8;
    v11[12] = 1;
    sub_214325864();
    goto LABEL_12;
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142CA9D8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D580, &qword_2146F7028);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143257BC();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = 0;
    sub_2143258B8();
    sub_2146DA1C8();
    if (v14 <= 1u)
    {
      if (v14)
      {
        (*(v6 + 8))(v8, v5);
        *a2 = 112;
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        *a2 = -16;
      }
    }

    else if (v14 == 2)
    {
      v11 = 1;
      sub_21432590C();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      *a2 = v12;
    }

    else if (v14 == 3)
    {
      (*(v6 + 8))(v8, v5);
      *a2 = -32;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      *a2 = 96;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CAC84()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000043;
  }
}

uint64_t sub_2142CACD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438BBFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142CACFC(uint64_t a1)
{
  v2 = sub_214325960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CAD38(uint64_t a1)
{
  v2 = sub_214325960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CAD74(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "mlsServerFailureReason";
  }

  else
  {
    v2 = "failedWithReason";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "mlsServerFailureReason";
  }

  else
  {
    v4 = "failedWithReason";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_2142CAE18()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CAE90(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142CAEF4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142CAF74(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "mlsServerFailureReason";
  }

  else
  {
    v2 = "failedWithReason";
  }

  *a1 = 0xD000000000000016;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_2142CB05C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D598, &qword_2146F7030);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325960();
  sub_2146DAA28();
  if (v8 < 0)
  {
    v17 = 1;
    v16 = 0;
    sub_2143259B4();
    sub_2146DA388();
    if (!v2)
    {
      v15 = v8 & 0x7F;
      v14 = 2;
      sub_214325A08();
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    sub_2143259B4();
    sub_2146DA388();
    if (!v2)
    {
      v12 = v8;
      v11 = 1;
      sub_214325A5C();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142CB254@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D5C0, &qword_2146F7038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325960();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_214325AB0();
    sub_2146DA1C8();
    v10 = (v6 + 8);
    if (v17)
    {
      v14 = 2;
      sub_214325B04();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      *a2 = v15 | 0x80;
    }

    else
    {
      v12 = 1;
      sub_214325B58();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      *a2 = v13;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CB4C0()
{
  v1 = *v0;
  v2 = 0x79726576696C6564;
  v3 = 0x5F79616C70736964;
  v4 = 0xD000000000000012;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000031;
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

uint64_t sub_2142CB57C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438BD74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142CB5A4(uint64_t a1)
{
  v2 = sub_214325BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CB5E0(uint64_t a1)
{
  v2 = sub_214325BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CB628()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CB6F8(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142CB7B4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142CB880@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438BF9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142CB8B0(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79726576696C6564;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x69737365636F7270;
  if (*v1 != 2)
  {
    v5 = 0x726F777265746E69;
    v4 = 0xEC000000676E696BLL;
  }

  if (*v1)
  {
    v3 = 0x79616C70736964;
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

uint64_t sub_2142CB9EC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D5E0, &qword_2146F7040);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v11 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325BAC();
  sub_2146DAA28();
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v12 = 512;
      sub_214325C00();
      sub_2146DA388();
      if (!v2)
      {
        HIBYTE(v12) = v11;
        LOBYTE(v12) = 3;
        sub_214325CA8();
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 768;
      sub_214325C00();
      sub_2146DA388();
      if (!v2)
      {
        HIBYTE(v12) = v11;
        LOBYTE(v12) = 4;
        sub_214325C54();
        goto LABEL_12;
      }
    }
  }

  else if (v8)
  {
    v12 = 256;
    sub_214325C00();
    sub_2146DA388();
    if (!v2)
    {
      HIBYTE(v12) = v11;
      LOBYTE(v12) = 2;
      sub_214325CFC();
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    sub_214325C00();
    sub_2146DA388();
    if (!v2)
    {
      HIBYTE(v12) = v11;
      LOBYTE(v12) = 1;
      sub_214325D50();
LABEL_12:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142CBCB8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D618, &qword_2146F7048);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325BAC();
  sub_2146DAA08();
  if (!v2)
  {
    v13[30] = 0;
    sub_214325DA4();
    sub_2146DA1C8();
    v10 = v14;
    v11 = (v6 + 8);
    if (v14 > 1u)
    {
      if (v14 == 2)
      {
        v13[26] = 3;
        sub_214325E4C();
        sub_2146DA1C8();
        (*v11)(v8, v5);
        v12 = v13[27];
      }

      else
      {
        v13[28] = 4;
        sub_214325DF8();
        sub_2146DA1C8();
        (*v11)(v8, v5);
        v12 = v13[29];
      }
    }

    else if (v14)
    {
      v13[24] = 2;
      sub_214325EA0();
      sub_2146DA1C8();
      (*v11)(v8, v5);
      v12 = v13[25];
    }

    else
    {
      v13[14] = 1;
      sub_214325EF4();
      sub_2146DA1C8();
      (*v11)(v8, v5);
      v12 = v13[15];
    }

    *a2 = v12;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142CBFEC()
{
  v1 = 0x565F656C63726963;
  if (*v0 != 1)
  {
    v1 = 0x61565F746E696F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_2142CC05C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438BFE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142CC084(uint64_t a1)
{
  v2 = sub_214325F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CC0C0(uint64_t a1)
{
  v2 = sub_214325F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CC0FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E696F70;
  }

  else
  {
    v3 = 0x656C63726963;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E696F70;
  }

  else
  {
    v5 = 0x656C63726963;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142CC19C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CC218(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142CC280(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142CC304(uint64_t *a1@<X8>)
{
  v2 = 0x656C63726963;
  if (*v1)
  {
    v2 = 0x746E696F70;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142CC3EC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D648, &qword_2146F7050);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = v1[1];
  v14 = *v1;
  v15 = v8;
  v9 = v1[3];
  v16 = v1[2];
  v17 = v9;
  v10 = v1[5];
  v18 = v1[4];
  v19 = v10;
  v20 = v1[6];
  v11 = *(v1 + 28);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325F48();
  sub_2146DAA28();
  if ((v11 & 0x80) != 0)
  {
    LOBYTE(v21) = 1;
    v29 = 0;
    sub_214325F9C();
    sub_2146DA388();
    if (!v2)
    {
      v21 = v14;
      v22 = v15;
      v23 = v16;
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v28 = v11 & 0xFF7F;
      v29 = 2;
      sub_214325FF0();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
    v29 = 0;
    sub_214325F9C();
    sub_2146DA388();
    if (!v2)
    {
      v21 = v14;
      v22 = v15;
      v23 = v16;
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v28 = v11;
      v29 = 1;
      sub_214326044();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142CC644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D670, &qword_2146F7058);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325F48();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = 0;
    sub_214326098();
    sub_2146DA1C8();
    v10 = (v6 + 8);
    if (v25)
    {
      v23 = 2;
      sub_2143260EC();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v11 = v17;
      v12 = v18;
      v13 = v19;
      v14 = v20;
      v15 = v21;
      v16 = v22 & 0xFF01 | 0x80;
    }

    else
    {
      v23 = 1;
      sub_214326140();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v11 = v17;
      v12 = v18;
      v13 = v19;
      v14 = v20;
      v15 = v21;
      v16 = v22 & 0xFF01;
    }

    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13 & 0xFF01;
    *(a2 + 32) = v14;
    *(a2 + 48) = v15;
    *(a2 + 56) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142CC8F0()
{
  if (*v0)
  {
    return 0x61565F7972746E65;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t sub_2142CC938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000025 && 0x8000000214798CF0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61565F7972746E65 && a2 == 0xEB0000000065756CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
  return result;
}

uint64_t sub_2142CCA24(uint64_t a1)
{
  v2 = sub_214326194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CCA60(uint64_t a1)
{
  v2 = sub_214326194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CCBAC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D690, &qword_2146F7060);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v16 = *(v1 + 1);
  v10 = v1[5];
  v14 = v1[4];
  v15 = v8;
  v13 = v10;
  v23 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326194();
  sub_2146DAA28();
  LOBYTE(v17) = 0;
  sub_2143261E8();
  sub_2146DA388();
  if (!v2)
  {
    v17 = v9;
    v18 = v15;
    v19 = v16;
    v20 = v14;
    v21 = v13;
    v22 = v23;
    v24 = 1;
    sub_21432623C();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142CCD70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D6B0, &qword_2146F7068);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326194();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v13[0]) = 0;
    sub_214326290();
    sub_2146DA1C8();
    v15 = 1;
    sub_2143262E4();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v11 = v13[1];
    v10 = v13[2];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v10;
    *(a2 + 48) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142CCF7C()
{
  if (*v0)
  {
    return 0x676E656C6C616863;
  }

  else
  {
    return 0xD000000000000026;
  }
}

uint64_t sub_2142CCFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000026 && 0x8000000214798D20 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEF65756C61565F65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
  return result;
}

uint64_t sub_2142CD0B8(uint64_t a1)
{
  v2 = sub_214326338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CD0F4(uint64_t a1)
{
  v2 = sub_214326338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CD260(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D6C8, &qword_2146F7070);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v12 = *v1;
  v8 = *(v1 + 2);
  v11 = *(v1 + 3);
  v17 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326338();
  sub_2146DAA28();
  LOBYTE(v13) = 0;
  sub_21432638C();
  sub_2146DA388();
  if (!v2)
  {
    v13 = v12;
    v14 = v8;
    v15 = v11;
    v16 = v17;
    v18 = 1;
    sub_2143263E0();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142CD414@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D6E8, &qword_2146F7078);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326338();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v12[0]) = 0;
    sub_214326434();
    sub_2146DA1C8();
    v14 = 1;
    sub_214326488();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CD5E8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000012;
    v5 = 0xD000000000000014;
    if (a1 != 8)
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x5F72656B63697473;
    if (a1 != 5)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x5F6B636162706174;
    if (a1 != 3)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000015;
    if (!a1)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2142CD744(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E49676E69707974;
    v6 = 0x6B636162706174;
    if (a1 != 2)
    {
      v6 = 0x506E6F6F6C6C6162;
    }

    if (a1)
    {
      v5 = 0x7373654D74786574;
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
    v1 = 0x706154696A6F6D65;
    v2 = 0x5472656B63697473;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x72656B63697473;
    if (a1 != 4)
    {
      v3 = 0x73654D6F69647561;
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

uint64_t sub_2142CD8D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438C210(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142CD900(uint64_t a1)
{
  v2 = sub_2143264DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CD93C(uint64_t a1)
{
  v2 = sub_2143264DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CD99C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_2146DA958();
  a3(v7, v5);
  return sub_2146DA9B8();
}

uint64_t sub_2142CDA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_2146DA958();
  a4(v8, v6);
  return sub_2146DA9B8();
}

unint64_t sub_2142CDA58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438C59C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2142CDA88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2142CD744(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TextMessage.MessageType.encode(to:)(void *a1)
{
  v62 = type metadata accessor for CustomAcknowledgement(0);
  MEMORY[0x28223BE20](v62);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BalloonPlugin(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D700, &qword_2146F7080);
  v64 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v10 = &v62 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143264DC();
  v67 = v10;
  sub_2146DAA28();
  sub_2143287C0(v65, v8, type metadata accessor for TextMessage.MessageType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = *(v8 + 9);
        v68[8] = *(v8 + 8);
        v68[9] = v19;
        v68[10] = *(v8 + 10);
        *&v68[11] = *(v8 + 22);
        v20 = *(v8 + 5);
        v68[4] = *(v8 + 4);
        v68[5] = v20;
        v21 = *(v8 + 7);
        v68[6] = *(v8 + 6);
        v68[7] = v21;
        v22 = *(v8 + 1);
        v68[0] = *v8;
        v68[1] = v22;
        v23 = *(v8 + 3);
        v68[2] = *(v8 + 2);
        v68[3] = v23;
        LOBYTE(v69[0]) = 2;
        v70 = 0;
        sub_214326530();
        v24 = v71;
        v26 = v66;
        v25 = v67;
        sub_2146DA388();
        if (!v26)
        {
          v69[8] = v68[8];
          v69[9] = v68[9];
          v69[10] = v68[10];
          *&v69[11] = *&v68[11];
          v69[4] = v68[4];
          v69[5] = v68[5];
          v69[6] = v68[6];
          v69[7] = v68[7];
          v69[0] = v68[0];
          v69[1] = v68[1];
          v69[2] = v68[2];
          v69[3] = v68[3];
          v70 = 3;
          sub_214326680();
          sub_2146DA388();
        }

        (*(v64 + 8))(v25, v24);
        return sub_214301F90(v68);
      }

      else
      {
        sub_214328704(v8, v5, type metadata accessor for BalloonPlugin);
        LOBYTE(v68[0]) = 3;
        LOBYTE(v69[0]) = 0;
        sub_214326530();
        v52 = v71;
        v54 = v66;
        v53 = v67;
        sub_2146DA388();
        if (!v54)
        {
          LOBYTE(v68[0]) = 4;
          sub_214328930(&qword_27C904790, type metadata accessor for BalloonPlugin, protocol conformance descriptor for BalloonPlugin);
          sub_2146DA388();
        }

        sub_21432887C(v5, type metadata accessor for BalloonPlugin);
        return (*(v64 + 8))(v53, v52);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        memcpy(v68, v8, 0x218uLL);
        LOBYTE(v69[0]) = 0;
        v70 = 0;
        sub_214326530();
        v16 = v71;
        v18 = v66;
        v17 = v67;
        sub_2146DA388();
        if (!v18)
        {
          LOBYTE(v69[0]) = 1;
          sub_2143266D4();
          sub_2146DA388();
        }

        sub_214307C44(v68);
        return (*(v64 + 8))(v17, v16);
      }

      v46 = *(v8 + 5);
      v68[4] = *(v8 + 4);
      v68[5] = v46;
      v68[6] = *(v8 + 6);
      *&v68[7] = *(v8 + 14);
      v47 = *(v8 + 1);
      v68[0] = *v8;
      v68[1] = v47;
      v48 = *(v8 + 3);
      v68[2] = *(v8 + 2);
      v68[3] = v48;
      LOBYTE(v69[0]) = 1;
      v70 = 0;
      sub_214326530();
      v49 = v71;
      v51 = v66;
      v50 = v67;
      sub_2146DA388();
      if (!v51)
      {
        v69[4] = v68[4];
        v69[5] = v68[5];
        v69[6] = v68[6];
        *&v69[7] = *&v68[7];
        v69[0] = v68[0];
        v69[1] = v68[1];
        v69[2] = v68[2];
        v69[3] = v68[3];
        v70 = 2;
        sub_214301CA0();
        sub_2146DA388();
      }

      (*(v64 + 8))(v50, v49);
      return sub_214091594(v68);
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v27 = *(v8 + 11);
      v68[10] = *(v8 + 10);
      v68[11] = v27;
      *(&v68[11] + 9) = *(v8 + 185);
      v28 = *(v8 + 7);
      v68[6] = *(v8 + 6);
      v68[7] = v28;
      v29 = *(v8 + 9);
      v68[8] = *(v8 + 8);
      v68[9] = v29;
      v30 = *(v8 + 3);
      v68[2] = *(v8 + 2);
      v68[3] = v30;
      v31 = *(v8 + 5);
      v68[4] = *(v8 + 4);
      v68[5] = v31;
      v32 = *(v8 + 1);
      v68[0] = *v8;
      v68[1] = v32;
      LOBYTE(v69[0]) = 4;
      v70 = 0;
      sub_214326530();
      v33 = v71;
      v35 = v66;
      v34 = v67;
      sub_2146DA388();
      if (!v35)
      {
        v69[10] = v68[10];
        v69[11] = v68[11];
        *(&v69[11] + 9) = *(&v68[11] + 9);
        v69[6] = v68[6];
        v69[7] = v68[7];
        v69[8] = v68[8];
        v69[9] = v68[9];
        v69[2] = v68[2];
        v69[3] = v68[3];
        v69[4] = v68[4];
        v69[5] = v68[5];
        v69[0] = v68[0];
        v69[1] = v68[1];
        v70 = 5;
        sub_21432662C();
        sub_2146DA388();
      }

      (*(v64 + 8))(v34, v33);
      return sub_214307E9C(v68);
    }

    else
    {
      v57 = *(v8 + 1);
      v68[0] = *v8;
      v68[1] = v57;
      v58 = *(v8 + 3);
      v68[2] = *(v8 + 2);
      v68[3] = v58;
      LOBYTE(v69[0]) = 5;
      v70 = 0;
      sub_214326530();
      v59 = v71;
      v61 = v66;
      v60 = v67;
      sub_2146DA388();
      if (!v61)
      {
        v69[0] = v68[0];
        v69[1] = v68[1];
        v69[2] = v68[2];
        v69[3] = v68[3];
        v70 = 6;
        sub_2143265D8();
        sub_2146DA388();
      }

      (*(v64 + 8))(v60, v59);
      return sub_214307FA0(v68);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        memcpy(v68, v8, 0x130uLL);
        LOBYTE(v69[0]) = 7;
        v70 = 0;
        sub_214326530();
        v12 = v71;
        v14 = v66;
        v13 = v67;
        sub_2146DA388();
        if (!v14)
        {
          memcpy(v69, v68, sizeof(v69));
          v70 = 8;
          sub_2140918A8();
          sub_2146DA388();
        }

        (*(v64 + 8))(v13, v12);
        return sub_214301B48(v68);
      }

      v55 = v63;
      sub_214328704(v8, v63, type metadata accessor for CustomAcknowledgement);
      LOBYTE(v68[0]) = 8;
      LOBYTE(v69[0]) = 0;
      sub_214326530();
      v16 = v71;
      v56 = v66;
      v17 = v67;
      sub_2146DA388();
      if (!v56)
      {
        LOBYTE(v68[0]) = 9;
        sub_214328930(&qword_27C90D708, type metadata accessor for CustomAcknowledgement, byte_2146F8EE8);
        sub_2146DA388();
      }

      sub_21432887C(v55, type metadata accessor for CustomAcknowledgement);
      return (*(v64 + 8))(v17, v16);
    }

    v36 = *(v8 + 11);
    v68[10] = *(v8 + 10);
    v68[11] = v36;
    v37 = *(v8 + 13);
    v68[12] = *(v8 + 12);
    v68[13] = v37;
    v38 = *(v8 + 7);
    v68[6] = *(v8 + 6);
    v68[7] = v38;
    v39 = *(v8 + 9);
    v68[8] = *(v8 + 8);
    v68[9] = v39;
    v40 = *(v8 + 3);
    v68[2] = *(v8 + 2);
    v68[3] = v40;
    v41 = *(v8 + 5);
    v68[4] = *(v8 + 4);
    v68[5] = v41;
    v42 = *(v8 + 1);
    v68[0] = *v8;
    v68[1] = v42;
    LOBYTE(v69[0]) = 6;
    v70 = 0;
    sub_214326530();
    v43 = v71;
    v45 = v66;
    v44 = v67;
    sub_2146DA388();
    if (!v45)
    {
      v69[10] = v68[10];
      v69[11] = v68[11];
      v69[12] = v68[12];
      v69[13] = v68[13];
      v69[6] = v68[6];
      v69[7] = v68[7];
      v69[8] = v68[8];
      v69[9] = v68[9];
      v69[2] = v68[2];
      v69[3] = v68[3];
      v69[4] = v68[4];
      v69[5] = v68[5];
      v69[0] = v68[0];
      v69[1] = v68[1];
      v70 = 7;
      sub_214326584();
      sub_2146DA388();
    }

    (*(v64 + 8))(v44, v43);
    return sub_2142EE95C(v68);
  }
}

uint64_t TextMessage.MessageType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v46 = type metadata accessor for CustomAcknowledgement(0);
  MEMORY[0x28223BE20](v46);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for BalloonPlugin(0);
  MEMORY[0x28223BE20](v44);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D730, &qword_2146F7088);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2143264DC();
  v13 = v49;
  sub_2146DAA08();
  if (!v13)
  {
    v49 = v9;
    v15 = v47;
    v14 = v48;
    v52 = 0;
    sub_214326728();
    sub_2146DA1C8();
    if (LOBYTE(v51[0]) <= 3u)
    {
      if (LOBYTE(v51[0]) > 1u)
      {
        if (LOBYTE(v51[0]) != 2)
        {
          LOBYTE(v51[0]) = 4;
          sub_214328930(&qword_27C904788, type metadata accessor for BalloonPlugin, protocol conformance descriptor for BalloonPlugin);
          sub_2146DA1C8();
          (*(v15 + 8))(v8, v6);
          v32 = v50;
          sub_214328704(v5, v11, type metadata accessor for BalloonPlugin);
          swift_storeEnumTagMultiPayload();
LABEL_23:
          sub_214328704(v11, v14, type metadata accessor for TextMessage.MessageType);
          v16 = v32;
          return __swift_destroy_boxed_opaque_existential_1(v16);
        }

        v52 = 3;
        sub_214326878();
        sub_2146DA1C8();
        (*(v15 + 8))(v8, v6);
        v18 = v51[9];
        v11[8] = v51[8];
        v11[9] = v18;
        v11[10] = v51[10];
        *(v11 + 22) = *&v51[11];
        v19 = v51[5];
        v11[4] = v51[4];
        v11[5] = v19;
        v20 = v51[7];
        v11[6] = v51[6];
        v11[7] = v20;
        v21 = v51[1];
        *v11 = v51[0];
        v11[1] = v21;
        v22 = v51[3];
        v11[2] = v51[2];
        v11[3] = v22;
      }

      else if (LOBYTE(v51[0]))
      {
        v52 = 2;
        sub_214301BF0();
        sub_2146DA1C8();
        (*(v15 + 8))(v8, v6);
        v29 = v51[5];
        v11[4] = v51[4];
        v11[5] = v29;
        v11[6] = v51[6];
        *(v11 + 14) = *&v51[7];
        v30 = v51[1];
        *v11 = v51[0];
        v11[1] = v30;
        v31 = v51[3];
        v11[2] = v51[2];
        v11[3] = v31;
      }

      else
      {
        v52 = 1;
        sub_2143268CC();
        sub_2146DA1C8();
        (*(v15 + 8))(v8, v6);
        memcpy(v11, v51, 0x218uLL);
      }
    }

    else if (LOBYTE(v51[0]) <= 5u)
    {
      if (LOBYTE(v51[0]) == 4)
      {
        v52 = 5;
        sub_214326824();
        sub_2146DA1C8();
        (*(v15 + 8))(v8, v6);
        v23 = v51[11];
        v11[10] = v51[10];
        v11[11] = v23;
        *(v11 + 185) = *(&v51[11] + 9);
        v24 = v51[7];
        v11[6] = v51[6];
        v11[7] = v24;
        v25 = v51[9];
        v11[8] = v51[8];
        v11[9] = v25;
        v26 = v51[3];
        v11[2] = v51[2];
        v11[3] = v26;
        v27 = v51[5];
        v11[4] = v51[4];
        v11[5] = v27;
        v28 = v51[1];
        *v11 = v51[0];
        v11[1] = v28;
      }

      else
      {
        v52 = 6;
        sub_2143267D0();
        sub_2146DA1C8();
        (*(v15 + 8))(v8, v6);
        v41 = v51[1];
        *v11 = v51[0];
        v11[1] = v41;
        v42 = v51[3];
        v11[2] = v51[2];
        v11[3] = v42;
      }
    }

    else if (LOBYTE(v51[0]) == 6)
    {
      v52 = 7;
      sub_21432677C();
      sub_2146DA1C8();
      (*(v15 + 8))(v8, v6);
      v34 = v51[11];
      v11[10] = v51[10];
      v11[11] = v34;
      v35 = v51[13];
      v11[12] = v51[12];
      v11[13] = v35;
      v36 = v51[7];
      v11[6] = v51[6];
      v11[7] = v36;
      v37 = v51[9];
      v11[8] = v51[8];
      v11[9] = v37;
      v38 = v51[3];
      v11[2] = v51[2];
      v11[3] = v38;
      v39 = v51[5];
      v11[4] = v51[4];
      v11[5] = v39;
      v40 = v51[1];
      *v11 = v51[0];
      v11[1] = v40;
    }

    else if (LOBYTE(v51[0]) == 7)
    {
      v52 = 8;
      sub_214091854();
      sub_2146DA1C8();
      (*(v15 + 8))(v8, v6);
      memcpy(v11, v51, 0x130uLL);
    }

    else
    {
      LOBYTE(v51[0]) = 9;
      sub_214328930(&qword_27C90D738, type metadata accessor for CustomAcknowledgement, aI_122);
      v33 = v45;
      sub_2146DA1C8();
      (*(v15 + 8))(v8, v6);
      sub_214328704(v33, v11, type metadata accessor for CustomAcknowledgement);
    }

    swift_storeEnumTagMultiPayload();
    v32 = v50;
    goto LABEL_23;
  }

  v16 = v50;
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

unint64_t sub_2142CEE1C()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_2142CEE74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438C5E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142CEE9C(uint64_t a1)
{
  v2 = sub_214326920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CEED8(uint64_t a1)
{
  v2 = sub_214326920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CEF14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61724669746C756DLL;
  }

  else
  {
    v3 = 0x7246656C676E6973;
  }

  if (v2)
  {
    v4 = 0xEB00000000656D61;
  }

  else
  {
    v4 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v5 = 0x61724669746C756DLL;
  }

  else
  {
    v5 = 0x7246656C676E6973;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656DLL;
  }

  else
  {
    v6 = 0xEB00000000656D61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142CEFC8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CF058(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142CF0D4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142CF16C(uint64_t *a1@<X8>)
{
  v2 = 0x7246656C676E6973;
  if (*v1)
  {
    v2 = 0x61724669746C756DLL;
  }

  v3 = 0xEB00000000656D61;
  if (*v1)
  {
    v3 = 0xEA0000000000656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t VideoPreview.FrameConstraints.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D760, &qword_2146F7090);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = *v1;
  v18 = v1[1];
  v19 = v7;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326920();
  sub_2146DAA28();
  if (v11 < 0)
  {
    v29 = v11;
    v14 = v18;
    LOBYTE(v23) = 1;
    v30 = 0;
    sub_214326974();
    v12 = v20;
    v15 = v22;
    sub_2146DA388();
    if (!v15)
    {
      v23 = v19;
      v24 = v14;
      v25 = v9;
      v26 = v8 & 1;
      v27 = v10;
      v28 = v29 & 1;
      v30 = 2;
      sub_2143269C8();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    v30 = 0;
    sub_214326974();
    v12 = v20;
    v13 = v22;
    sub_2146DA388();
    if (!v13)
    {
      v23 = v19;
      v30 = 1;
      sub_214326A1C();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v21 + 8))(v6, v12);
}

uint64_t VideoPreview.FrameConstraints.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D788, &qword_2146F7098);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326920();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = 0;
    sub_214326A70();
    sub_2146DA1C8();
    v10 = (v6 + 8);
    if (v16)
    {
      v21 = 2;
      sub_214326AC4();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v11 = v16;
      v12 = v17;
      v13 = v18;
      v14 = v19;
      v15 = v20 | 0x80;
    }

    else
    {
      v21 = 1;
      sub_214326B18();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v11 = v16;
      v12 = 0uLL;
    }

    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CF710(char a1)
{
  result = 0xD000000000000027;
  switch(a1)
  {
    case 1:
    case 8:
    case 23:
      result = 0xD000000000000012;
      break;
    case 2:
    case 6:
    case 15:
      result = 0xD000000000000013;
      break;
    case 3:
    case 31:
      result = 0xD000000000000018;
      break;
    case 4:
    case 14:
    case 25:
      result = 0xD000000000000014;
      break;
    case 5:
    case 7:
    case 13:
      result = 0xD000000000000016;
      break;
    case 9:
    case 12:
    case 24:
      result = 0xD000000000000017;
      break;
    case 10:
    case 33:
    case 34:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 26:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000019;
      break;
    case 17:
    case 27:
    case 28:
    case 30:
    case 36:
    case 37:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0xD000000000000023;
      break;
    case 19:
      result = 0xD000000000000022;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
    case 32:
      result = 0xD00000000000001BLL;
      break;
    case 22:
      result = 0xD000000000000024;
      break;
    case 29:
      result = 0xD00000000000002BLL;
      break;
    case 35:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2142CF9DC(char a1)
{
  result = 0x6174654D676E6F73;
  switch(a1)
  {
    case 1:
      v3 = 0x4D6D75626C61;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7465000000000000;
    case 2:
    case 30:
      return 0xD000000000000012;
    case 3:
      v4 = 0x747369747261;
      goto LABEL_21;
    case 4:
    case 6:
    case 12:
      return 0xD000000000000010;
    case 5:
      v3 = 0x4D6F69646172;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7465000000000000;
    case 7:
      v5 = 1802465122;
      goto LABEL_29;
    case 8:
    case 11:
    case 23:
      return 0xD000000000000011;
    case 9:
    case 32:
    case 33:
      return 0xD000000000000016;
    case 10:
      return 0x4D74736163646F70;
    case 13:
      v4 = 0x776F68537674;
      goto LABEL_21;
    case 14:
      v3 = 0x4D6569766F6DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7465000000000000;
    case 15:
      return 0xD000000000000013;
    case 16:
      return 0xD000000000000014;
    case 17:
      v6 = 9;
      goto LABEL_19;
    case 18:
      return 0xD00000000000001CLL;
    case 19:
      return 0x646174654D70616DLL;
    case 20:
    case 31:
      return 0xD000000000000015;
    case 21:
      v6 = 10;
LABEL_19:
      result = v6 | 0xD000000000000014;
      break;
    case 22:
      v5 = 1701603686;
LABEL_29:
      result = v5 | 0x6174654D00000000;
      break;
    case 24:
      v4 = 0x736B636F7473;
LABEL_21:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x654D000000000000;
      break;
    case 25:
      result = 0x4D5654656C707061;
      break;
    case 26:
      result = 0xD000000000000014;
      break;
    case 27:
      result = 0xD000000000000014;
      break;
    case 28:
      result = 0xD000000000000025;
      break;
    case 29:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD000000000000017;
      break;
    case 35:
      result = 0xD000000000000014;
      break;
    case 36:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2142CFD94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438C768(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142CFDC8(uint64_t a1)
{
  v2 = sub_214326B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CFE04(uint64_t a1)
{
  v2 = sub_214326B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CFE58(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2146DA6A8();
  }

  return v12 & 1;
}

uint64_t sub_2142CFF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_2146DA958();
  a3(v5);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CFF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_2146D9698();
}

uint64_t sub_2142CFFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_2146DA958();
  a4(v6);
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142D0060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438D3C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2142D0090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2142CF9DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142D016C(void *a1)
{
  v173 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
  MEMORY[0x28223BE20](v173);
  v192 = &v155 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
  MEMORY[0x28223BE20](v172);
  v191 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
  MEMORY[0x28223BE20](v171);
  v190 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for LinkPresentation.FileMetadata(0);
  MEMORY[0x28223BE20](v170);
  v189 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
  MEMORY[0x28223BE20](v169);
  v188 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  MEMORY[0x28223BE20](v168);
  v187 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
  MEMORY[0x28223BE20](v167);
  v186 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
  MEMORY[0x28223BE20](v166);
  v185 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
  MEMORY[0x28223BE20](v165);
  v184 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
  MEMORY[0x28223BE20](v164);
  v183 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
  MEMORY[0x28223BE20](v163);
  v182 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
  MEMORY[0x28223BE20](v162);
  v181 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for LinkPresentation.BookMetadata(0);
  MEMORY[0x28223BE20](v161);
  v180 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
  MEMORY[0x28223BE20](v160);
  v179 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for LinkPresentation.RadioMetadata(0);
  MEMORY[0x28223BE20](v159);
  v178 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
  MEMORY[0x28223BE20](v158);
  v177 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for LinkPresentation.ArtistMetadata(0);
  MEMORY[0x28223BE20](v157);
  v176 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
  MEMORY[0x28223BE20](v156);
  v175 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
  MEMORY[0x28223BE20](v155);
  v174 = &v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LinkPresentation.SongMetadata(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7A8, &qword_2146F70A0);
  v193 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v28 = &v155 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326B6C();
  v195 = v28;
  sub_2146DAA28();
  sub_2143287C0(v200, v26, type metadata accessor for LinkPresentation.SpecializationMetadata);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v96 = v26;
      v59 = v174;
      sub_214328704(v96, v174, type metadata accessor for LinkPresentation.AlbumMetadata);
      v198[0] = 1;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v97 = v194;
      sub_2146DA388();
      if (!v97)
      {
        v198[0] = 2;
        sub_214328930(&qword_27C904950, type metadata accessor for LinkPresentation.AlbumMetadata, aQ_59);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.AlbumMetadata;
      goto LABEL_110;
    case 2u:
      v88 = v26;
      v59 = v175;
      sub_214328704(v88, v175, type metadata accessor for LinkPresentation.MusicVideoMetadata);
      v198[0] = 2;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v89 = v194;
      sub_2146DA388();
      if (!v89)
      {
        v198[0] = 3;
        sub_214328930(&qword_27C904960, type metadata accessor for LinkPresentation.MusicVideoMetadata, asc_2147009B8);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.MusicVideoMetadata;
      goto LABEL_110;
    case 3u:
      v92 = v26;
      v59 = v176;
      sub_214328704(v92, v176, type metadata accessor for LinkPresentation.ArtistMetadata);
      v198[0] = 3;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v93 = v194;
      sub_2146DA388();
      if (!v93)
      {
        v198[0] = 4;
        sub_214328930(&qword_27C904970, type metadata accessor for LinkPresentation.ArtistMetadata, asc_214700A08);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.ArtistMetadata;
      goto LABEL_110;
    case 4u:
      v67 = v26;
      v59 = v177;
      sub_214328704(v67, v177, type metadata accessor for LinkPresentation.PlaylistMetadata);
      v198[0] = 4;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v68 = v194;
      sub_2146DA388();
      if (!v68)
      {
        v198[0] = 5;
        sub_214328930(&qword_27C904980, type metadata accessor for LinkPresentation.PlaylistMetadata, byte_214700A58);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.PlaylistMetadata;
      goto LABEL_110;
    case 5u:
      v112 = v26;
      v59 = v178;
      sub_214328704(v112, v178, type metadata accessor for LinkPresentation.RadioMetadata);
      v198[0] = 5;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v113 = v194;
      sub_2146DA388();
      if (!v113)
      {
        v198[0] = 6;
        sub_214328930(&qword_27C904990, type metadata accessor for LinkPresentation.RadioMetadata, a1_22);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.RadioMetadata;
      goto LABEL_110;
    case 6u:
      v123 = v26;
      v59 = v179;
      sub_214328704(v123, v179, type metadata accessor for LinkPresentation.SoftwareMetadata);
      v198[0] = 6;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v124 = v194;
      sub_2146DA388();
      if (!v124)
      {
        v198[0] = 7;
        sub_214328930(&qword_27C9049A0, type metadata accessor for LinkPresentation.SoftwareMetadata, aM_150);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.SoftwareMetadata;
      goto LABEL_110;
    case 7u:
      v94 = v26;
      v59 = v180;
      sub_214328704(v94, v180, type metadata accessor for LinkPresentation.BookMetadata);
      v198[0] = 7;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v95 = v194;
      sub_2146DA388();
      if (!v95)
      {
        v198[0] = 8;
        sub_214328930(&qword_27C9049B0, type metadata accessor for LinkPresentation.BookMetadata, byte_214700B48);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.BookMetadata;
      goto LABEL_110;
    case 8u:
      v130 = v26;
      v59 = v181;
      sub_214328704(v130, v181, type metadata accessor for LinkPresentation.AudioBookMetadata);
      v198[0] = 8;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v131 = v194;
      sub_2146DA388();
      if (!v131)
      {
        v198[0] = 9;
        sub_214328930(&qword_27C9049C0, type metadata accessor for LinkPresentation.AudioBookMetadata, aA_64);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.AudioBookMetadata;
      goto LABEL_110;
    case 9u:
      v71 = v26;
      v59 = v182;
      sub_214328704(v71, v182, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
      v198[0] = 9;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v72 = v194;
      sub_2146DA388();
      if (!v72)
      {
        v198[0] = 10;
        sub_214328930(&qword_27C9049D0, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata, byte_214700BE8);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata;
      goto LABEL_110;
    case 0xAu:
      v128 = v26;
      v59 = v183;
      sub_214328704(v128, v183, type metadata accessor for LinkPresentation.PodcastMetadata);
      v198[0] = 10;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v129 = v194;
      sub_2146DA388();
      if (!v129)
      {
        v198[0] = 11;
        sub_214328930(&qword_27C9049E0, type metadata accessor for LinkPresentation.PodcastMetadata, byte_214700C38);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.PodcastMetadata;
      goto LABEL_110;
    case 0xBu:
      v65 = v26;
      v59 = v184;
      sub_214328704(v65, v184, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
      v198[0] = 11;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v66 = v194;
      sub_2146DA388();
      if (!v66)
      {
        v198[0] = 12;
        sub_214328930(&qword_27C9049F0, type metadata accessor for LinkPresentation.TVEpisodeMetadata, aQ_60);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.TVEpisodeMetadata;
      goto LABEL_110;
    case 0xCu:
      v69 = v26;
      v59 = v185;
      sub_214328704(v69, v185, type metadata accessor for LinkPresentation.TVSeasonMetadata);
      v198[0] = 12;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v70 = v194;
      sub_2146DA388();
      if (!v70)
      {
        v198[0] = 13;
        sub_214328930(&qword_27C904A00, type metadata accessor for LinkPresentation.TVSeasonMetadata, byte_214700CD8);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.TVSeasonMetadata;
      goto LABEL_110;
    case 0xDu:
      v121 = v26;
      v59 = v186;
      sub_214328704(v121, v186, type metadata accessor for LinkPresentation.TVShowMetadata);
      v198[0] = 13;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v122 = v194;
      sub_2146DA388();
      if (!v122)
      {
        v198[0] = 14;
        sub_214328930(&qword_27C904A10, type metadata accessor for LinkPresentation.TVShowMetadata, byte_214700D28);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.TVShowMetadata;
      goto LABEL_110;
    case 0xEu:
      v58 = v26;
      v59 = v187;
      sub_214328704(v58, v187, type metadata accessor for LinkPresentation.MovieMetadata);
      v198[0] = 14;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v60 = v194;
      sub_2146DA388();
      if (!v60)
      {
        v198[0] = 15;
        sub_214328930(&qword_27C904A20, type metadata accessor for LinkPresentation.MovieMetadata, aA_65);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.MovieMetadata;
      goto LABEL_110;
    case 0xFu:
      v90 = v26;
      v59 = v188;
      sub_214328704(v90, v188, type metadata accessor for LinkPresentation.MovieBundleMetadata);
      v198[0] = 15;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v91 = v194;
      sub_2146DA388();
      if (!v91)
      {
        v198[0] = 16;
        sub_214328930(&qword_27C904A30, type metadata accessor for LinkPresentation.MovieBundleMetadata, byte_214700DC8);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.MovieBundleMetadata;
      goto LABEL_110;
    case 0x10u:
      memcpy(v198, v26, 0x138uLL);
      LOBYTE(v197[0]) = 16;
      v199 = 0;
      sub_214326BC0();
      v55 = v195;
      v56 = v196;
      v57 = v194;
      sub_2146DA388();
      if (!v57)
      {
        memcpy(v197, v198, 0x138uLL);
        v199 = 17;
        sub_214076584();
        sub_2146DA388();
      }

      (*(v193 + 8))(v55, v56);
      return sub_214326E60(v198);
    case 0x11u:
      v101 = v26[9];
      *&v198[128] = v26[8];
      *&v198[144] = v101;
      *&v198[153] = *(v26 + 153);
      v102 = v26[5];
      *&v198[64] = v26[4];
      *&v198[80] = v102;
      v103 = v26[6];
      *&v198[112] = v26[7];
      *&v198[96] = v103;
      v104 = v26[1];
      *v198 = *v26;
      *&v198[16] = v104;
      v105 = v26[2];
      *&v198[48] = v26[3];
      *&v198[32] = v105;
      LOBYTE(v197[0]) = 17;
      v199 = 0;
      sub_214326BC0();
      v106 = v195;
      v107 = v196;
      v108 = v194;
      sub_2146DA388();
      if (!v108)
      {
        v197[8] = *&v198[128];
        v197[9] = *&v198[144];
        *(&v197[9] + 9) = *&v198[153];
        v197[4] = *&v198[64];
        v197[5] = *&v198[80];
        v197[6] = *&v198[96];
        v197[7] = *&v198[112];
        v197[0] = *v198;
        v197[1] = *&v198[16];
        v197[2] = *&v198[32];
        v197[3] = *&v198[48];
        v199 = 18;
        sub_214076658();
        sub_2146DA388();
      }

      (*(v193 + 8))(v106, v107);
      return sub_214326E0C(v198);
    case 0x12u:
      memcpy(v198, v26, 0x118uLL);
      LOBYTE(v197[0]) = 18;
      v199 = 0;
      sub_214326BC0();
      v125 = v195;
      v126 = v196;
      v127 = v194;
      sub_2146DA388();
      if (!v127)
      {
        memcpy(v197, v198, 0x118uLL);
        v199 = 19;
        sub_21407672C();
        sub_2146DA388();
      }

      (*(v193 + 8))(v125, v126);
      return sub_214326DB8(v198);
    case 0x13u:
      memcpy(v198, v26, sizeof(v198));
      LOBYTE(v197[0]) = 19;
      v199 = 0;
      sub_214326BC0();
      v139 = v195;
      v140 = v196;
      v141 = v194;
      sub_2146DA388();
      if (!v141)
      {
        memcpy(v197, v198, 0x42AuLL);
        v199 = 20;
        sub_2140768D4();
        sub_2146DA388();
      }

      (*(v193 + 8))(v139, v140);
      return sub_214326D64(v198);
    case 0x14u:
      memcpy(v198, v26, 0x229uLL);
      LOBYTE(v197[0]) = 20;
      v199 = 0;
      sub_214326BC0();
      v109 = v195;
      v110 = v196;
      v111 = v194;
      sub_2146DA388();
      if (!v111)
      {
        memcpy(v197, v198, 0x229uLL);
        v199 = 21;
        sub_2140769A8();
        sub_2146DA388();
      }

      (*(v193 + 8))(v109, v110);
      return sub_214326D10(v198);
    case 0x15u:
      v114 = v26[7];
      *&v198[96] = v26[6];
      *&v198[112] = v114;
      *&v198[128] = v26[8];
      v115 = v26[3];
      *&v198[32] = v26[2];
      *&v198[48] = v115;
      v116 = v26[4];
      *&v198[80] = v26[5];
      *&v198[64] = v116;
      v117 = *v26;
      *&v198[16] = v26[1];
      *v198 = v117;
      LOBYTE(v197[0]) = 21;
      v199 = 0;
      sub_214326BC0();
      v118 = v195;
      v119 = v196;
      v120 = v194;
      sub_2146DA388();
      if (!v120)
      {
        v197[6] = *&v198[96];
        v197[7] = *&v198[112];
        v197[8] = *&v198[128];
        v197[2] = *&v198[32];
        v197[3] = *&v198[48];
        v197[4] = *&v198[64];
        v197[5] = *&v198[80];
        v197[0] = *v198;
        v197[1] = *&v198[16];
        v199 = 22;
        sub_214076A7C();
        sub_2146DA388();
      }

      (*(v193 + 8))(v118, v119);
      return sub_214326CBC(v198);
    case 0x16u:
      v137 = v26;
      v59 = v189;
      sub_214328704(v137, v189, type metadata accessor for LinkPresentation.FileMetadata);
      v198[0] = 22;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v138 = v194;
      sub_2146DA388();
      if (!v138)
      {
        v198[0] = 23;
        sub_214328930(&qword_27C904AC0, type metadata accessor for LinkPresentation.FileMetadata, aA_66);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.FileMetadata;
      goto LABEL_110;
    case 0x17u:
      v143 = *v26;
      v142 = *(v26 + 1);
      v198[0] = 23;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v45 = v195;
      v46 = v196;
      v144 = v194;
      sub_2146DA388();
      if (v144)
      {
        goto LABEL_105;
      }

      *v198 = v143;
      *&v198[8] = v142;
      LOBYTE(v197[0]) = 24;
      sub_214076BD4();
      goto LABEL_104;
    case 0x18u:
      v80 = v26[9];
      *&v198[128] = v26[8];
      *&v198[144] = v80;
      *&v198[160] = v26[10];
      *&v198[169] = *(v26 + 169);
      v81 = v26[5];
      *&v198[64] = v26[4];
      *&v198[80] = v81;
      v82 = v26[7];
      *&v198[96] = v26[6];
      *&v198[112] = v82;
      v83 = v26[1];
      *v198 = *v26;
      *&v198[16] = v83;
      v84 = v26[3];
      *&v198[32] = v26[2];
      *&v198[48] = v84;
      LOBYTE(v197[0]) = 24;
      v199 = 0;
      sub_214326BC0();
      v85 = v195;
      v86 = v196;
      v87 = v194;
      sub_2146DA388();
      if (!v87)
      {
        v197[8] = *&v198[128];
        v197[9] = *&v198[144];
        v197[10] = *&v198[160];
        *(&v197[10] + 9) = *&v198[169];
        v197[4] = *&v198[64];
        v197[5] = *&v198[80];
        v197[6] = *&v198[96];
        v197[7] = *&v198[112];
        v197[0] = *v198;
        v197[1] = *&v198[16];
        v197[2] = *&v198[32];
        v197[3] = *&v198[48];
        v199 = 25;
        sub_214076CA8();
        sub_2146DA388();
      }

      (*(v193 + 8))(v85, v86);
      return sub_214326C68(v198);
    case 0x19u:
      v73 = v26[7];
      *&v198[96] = v26[6];
      *&v198[112] = v73;
      *&v198[128] = v26[8];
      *&v198[137] = *(v26 + 137);
      v74 = v26[3];
      *&v198[32] = v26[2];
      *&v198[48] = v74;
      v75 = v26[5];
      *&v198[64] = v26[4];
      *&v198[80] = v75;
      v76 = v26[1];
      *v198 = *v26;
      *&v198[16] = v76;
      LOBYTE(v197[0]) = 25;
      v199 = 0;
      sub_214326BC0();
      v77 = v195;
      v78 = v196;
      v79 = v194;
      sub_2146DA388();
      if (!v79)
      {
        v197[6] = *&v198[96];
        v197[7] = *&v198[112];
        v197[8] = *&v198[128];
        *(&v197[8] + 9) = *&v198[137];
        v197[2] = *&v198[32];
        v197[3] = *&v198[48];
        v197[4] = *&v198[64];
        v197[5] = *&v198[80];
        v197[0] = *v198;
        v197[1] = *&v198[16];
        v199 = 26;
        sub_214076D7C();
        sub_2146DA388();
      }

      (*(v193 + 8))(v77, v78);
      return sub_214326C14(v198);
    case 0x1Au:
      v153 = v26;
      v59 = v190;
      sub_214328704(v153, v190, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
      v198[0] = 26;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v154 = v194;
      sub_2146DA388();
      if (!v154)
      {
        v198[0] = 27;
        sub_214328930(&qword_27C904B00, type metadata accessor for LinkPresentation.PhotosMomentMetadata, byte_2147011D8);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.PhotosMomentMetadata;
      goto LABEL_110;
    case 0x1Bu:
      v44 = *v26;
      v43 = *(v26 + 1);
      v198[0] = 27;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v45 = v195;
      v46 = v196;
      v47 = v194;
      sub_2146DA388();
      if (v47)
      {
        goto LABEL_105;
      }

      *v198 = v44;
      *&v198[8] = v43;
      LOBYTE(v197[0]) = 28;
      sub_214076ED4();
      goto LABEL_104;
    case 0x1Cu:
      v146 = *v26;
      v145 = *(v26 + 1);
      v148 = *(v26 + 2);
      v147 = *(v26 + 3);
      v198[0] = 28;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v52 = v195;
      v53 = v196;
      v149 = v194;
      sub_2146DA388();
      if (v149)
      {
        goto LABEL_101;
      }

      *v198 = v146;
      *&v198[8] = v145;
      *&v198[16] = v148;
      *&v198[24] = v147;
      LOBYTE(v197[0]) = 29;
      sub_214076FA8();
      goto LABEL_100;
    case 0x1Du:
      v151 = *v26;
      v150 = *(v26 + 1);
      v198[0] = 29;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v45 = v195;
      v46 = v196;
      v152 = v194;
      sub_2146DA388();
      if (v152)
      {
        goto LABEL_105;
      }

      *v198 = v151;
      *&v198[8] = v150;
      LOBYTE(v197[0]) = 30;
      sub_21407707C();
      goto LABEL_104;
    case 0x1Eu:
      v132 = v26;
      v59 = v191;
      sub_214328704(v132, v191, type metadata accessor for LinkPresentation.WalletPassMetadata);
      v198[0] = 30;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v133 = v194;
      sub_2146DA388();
      if (!v133)
      {
        v198[0] = 31;
        sub_214328930(&qword_27C904B40, type metadata accessor for LinkPresentation.WalletPassMetadata, byte_214701318);
        sub_2146DA388();
      }

      v61 = type metadata accessor for LinkPresentation.WalletPassMetadata;
LABEL_110:
      v32 = v61;
      v33 = v59;
      goto LABEL_111;
    case 0x1Fu:
      v99 = *v26;
      v98 = *(v26 + 1);
      v198[0] = 31;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v45 = v195;
      v46 = v196;
      v100 = v194;
      sub_2146DA388();
      if (v100)
      {
        goto LABEL_105;
      }

      *v198 = v99;
      *&v198[8] = v98;
      LOBYTE(v197[0]) = 32;
      sub_2140771D4();
      goto LABEL_104;
    case 0x20u:
      v135 = *v26;
      v134 = *(v26 + 1);
      v198[0] = 32;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v45 = v195;
      v46 = v196;
      v136 = v194;
      sub_2146DA388();
      if (v136)
      {
        goto LABEL_105;
      }

      *v198 = v135;
      *&v198[8] = v134;
      LOBYTE(v197[0]) = 33;
      sub_2140772A8();
      goto LABEL_104;
    case 0x21u:
      v63 = *v26;
      v62 = *(v26 + 1);
      v198[0] = 33;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v45 = v195;
      v46 = v196;
      v64 = v194;
      sub_2146DA388();
      if (v64)
      {
        goto LABEL_105;
      }

      *v198 = v63;
      *&v198[8] = v62;
      LOBYTE(v197[0]) = 34;
      sub_214077450();
LABEL_104:
      sub_2146DA388();
LABEL_105:
      (*(v193 + 8))(v45, v46);
      goto LABEL_106;
    case 0x22u:
      v49 = *v26;
      v48 = *(v26 + 1);
      v51 = *(v26 + 2);
      v50 = *(v26 + 3);
      v198[0] = 34;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v52 = v195;
      v53 = v196;
      v54 = v194;
      sub_2146DA388();
      if (v54)
      {
        goto LABEL_101;
      }

      *v198 = v49;
      *&v198[8] = v48;
      *&v198[16] = v51;
      *&v198[24] = v50;
      LOBYTE(v197[0]) = 35;
      sub_2140775F8();
LABEL_100:
      sub_2146DA388();
LABEL_101:
      (*(v193 + 8))(v52, v53);

LABEL_106:

      break;
    case 0x23u:
      memcpy(v198, v26, 0x149uLL);
      LOBYTE(v197[0]) = 35;
      v199 = 0;
      sub_214326BC0();
      v34 = v195;
      v35 = v196;
      v36 = v194;
      sub_2146DA388();
      if (!v36)
      {
        memcpy(v197, v198, 0x149uLL);
        v199 = 36;
        sub_214077524();
        sub_2146DA388();
      }

      (*(v193 + 8))(v34, v35);
      return sub_214317B18(v198);
    case 0x24u:
      v38 = swift_projectBox();
      v39 = v192;
      sub_2143287C0(v38, v192, type metadata accessor for LinkPresentation.SharedObjectMetadata);
      v198[0] = 36;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v40 = v195;
      v41 = v196;
      v42 = v194;
      sub_2146DA388();
      if (!v42)
      {
        v198[0] = 37;
        sub_214328930(&qword_27C904BB0, type metadata accessor for LinkPresentation.SharedObjectMetadata, byte_214701548);
        sub_2146DA388();
      }

      sub_21432887C(v39, type metadata accessor for LinkPresentation.SharedObjectMetadata);
      (*(v193 + 8))(v40, v41);

    default:
      sub_214328704(v26, v23, type metadata accessor for LinkPresentation.SongMetadata);
      v198[0] = 0;
      LOBYTE(v197[0]) = 0;
      sub_214326BC0();
      v29 = v195;
      v30 = v196;
      v31 = v194;
      sub_2146DA388();
      if (!v31)
      {
        v198[0] = 1;
        sub_214328930(&qword_27C904940, type metadata accessor for LinkPresentation.SongMetadata, byte_214700918);
        sub_2146DA388();
      }

      v32 = type metadata accessor for LinkPresentation.SongMetadata;
      v33 = v23;
LABEL_111:
      sub_21432887C(v33, v32);
      result = (*(v193 + 8))(v29, v30);
      break;
  }

  return result;
}

uint64_t sub_2142D25A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v161 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
  MEMORY[0x28223BE20](v161);
  v158 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
  MEMORY[0x28223BE20](v160);
  v157 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
  MEMORY[0x28223BE20](v159);
  v156 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for LinkPresentation.FileMetadata(0);
  MEMORY[0x28223BE20](v154);
  v155 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
  MEMORY[0x28223BE20](v152);
  v153 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  MEMORY[0x28223BE20](v150);
  v151 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
  MEMORY[0x28223BE20](v148);
  v149 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
  MEMORY[0x28223BE20](v146);
  v147 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
  MEMORY[0x28223BE20](v144);
  v145 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
  MEMORY[0x28223BE20](v142);
  v143 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
  MEMORY[0x28223BE20](v140);
  v141 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
  MEMORY[0x28223BE20](v138);
  v139 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for LinkPresentation.BookMetadata(0);
  MEMORY[0x28223BE20](v136);
  v137 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
  MEMORY[0x28223BE20](v134);
  v135 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for LinkPresentation.RadioMetadata(0);
  MEMORY[0x28223BE20](v132);
  v133 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
  MEMORY[0x28223BE20](v130);
  v131 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for LinkPresentation.ArtistMetadata(0);
  MEMORY[0x28223BE20](v128);
  v129 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
  MEMORY[0x28223BE20](v126);
  v127 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
  MEMORY[0x28223BE20](v124);
  v125 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for LinkPresentation.SongMetadata(0);
  MEMORY[0x28223BE20](v123);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7C0, &qword_2146F70A8);
  v162 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v119 - v25;
  v27 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[3];
  v164 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_214326B6C();
  v31 = v167;
  sub_2146DAA08();
  if (v31)
  {
LABEL_4:
    v36 = v164;
  }

  else
  {
    v121 = v23;
    v122 = v27;
    v32 = v162;
    v167 = v29;
    v33 = v163;
    v166 = 0;
    sub_214326EB4();
    v34 = v26;
    sub_2146DA1C8();
    v35 = v24;
    v120 = 0;
    switch(v165[0])
    {
      case 1:
        v165[0] = 2;
        sub_214328930(&qword_27C904948, type metadata accessor for LinkPresentation.AlbumMetadata, aE_92);
        v81 = v125;
        v82 = v120;
        sub_2146DA1C8();
        if (v82)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v81, v167, type metadata accessor for LinkPresentation.AlbumMetadata);
        goto LABEL_82;
      case 2:
        v165[0] = 3;
        sub_214328930(&qword_27C904958, type metadata accessor for LinkPresentation.MusicVideoMetadata, aY_56);
        v73 = v127;
        v74 = v120;
        sub_2146DA1C8();
        if (v74)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v26, v35);
        v40 = v167;
        sub_214328704(v73, v167, type metadata accessor for LinkPresentation.MusicVideoMetadata);
        goto LABEL_82;
      case 3:
        v165[0] = 4;
        sub_214328930(&qword_27C904968, type metadata accessor for LinkPresentation.ArtistMetadata, asc_2147009E0);
        v77 = v129;
        v78 = v120;
        sub_2146DA1C8();
        if (v78)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v77, v167, type metadata accessor for LinkPresentation.ArtistMetadata);
        goto LABEL_82;
      case 4:
        v165[0] = 5;
        sub_214328930(&qword_27C904978, type metadata accessor for LinkPresentation.PlaylistMetadata, asc_214700A30);
        v56 = v131;
        v57 = v120;
        sub_2146DA1C8();
        if (v57)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v56, v167, type metadata accessor for LinkPresentation.PlaylistMetadata);
        goto LABEL_82;
      case 5:
        v165[0] = 6;
        sub_214328930(&qword_27C904988, type metadata accessor for LinkPresentation.RadioMetadata, byte_214700A80);
        v91 = v133;
        v92 = v120;
        sub_2146DA1C8();
        if (v92)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v91, v167, type metadata accessor for LinkPresentation.RadioMetadata);
        goto LABEL_82;
      case 6:
        v165[0] = 7;
        sub_214328930(&qword_27C904998, type metadata accessor for LinkPresentation.SoftwareMetadata, a9_22);
        v100 = v135;
        v101 = v120;
        sub_2146DA1C8();
        if (v101)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v100, v167, type metadata accessor for LinkPresentation.SoftwareMetadata);
        goto LABEL_82;
      case 7:
        v165[0] = 8;
        sub_214328930(&qword_27C9049A8, type metadata accessor for LinkPresentation.BookMetadata, aM_151);
        v79 = v137;
        v80 = v120;
        sub_2146DA1C8();
        if (v80)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v79, v167, type metadata accessor for LinkPresentation.BookMetadata);
        goto LABEL_82;
      case 8:
        v165[0] = 9;
        sub_214328930(&qword_27C9049B8, type metadata accessor for LinkPresentation.AudioBookMetadata, byte_214700B70);
        v105 = v139;
        v106 = v120;
        sub_2146DA1C8();
        if (v106)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v105, v167, type metadata accessor for LinkPresentation.AudioBookMetadata);
        goto LABEL_82;
      case 9:
        v165[0] = 10;
        sub_214328930(&qword_27C9049C8, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata, aI_73);
        v60 = v141;
        v61 = v120;
        sub_2146DA1C8();
        if (v61)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v60, v167, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
        goto LABEL_82;
      case 0xA:
        v165[0] = 11;
        sub_214328930(&qword_27C9049D8, type metadata accessor for LinkPresentation.PodcastMetadata, byte_214700C10);
        v103 = v143;
        v104 = v120;
        sub_2146DA1C8();
        if (v104)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v103, v167, type metadata accessor for LinkPresentation.PodcastMetadata);
        goto LABEL_82;
      case 0xB:
        v165[0] = 12;
        sub_214328930(&qword_27C9049E8, type metadata accessor for LinkPresentation.TVEpisodeMetadata, byte_214700C60);
        v54 = v145;
        v55 = v120;
        sub_2146DA1C8();
        if (v55)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v54, v167, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
        goto LABEL_82;
      case 0xC:
        v165[0] = 13;
        sub_214328930(&qword_27C9049F8, type metadata accessor for LinkPresentation.TVSeasonMetadata, aY_57);
        v58 = v147;
        v59 = v120;
        sub_2146DA1C8();
        if (v59)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v58, v167, type metadata accessor for LinkPresentation.TVSeasonMetadata);
        goto LABEL_82;
      case 0xD:
        v165[0] = 14;
        sub_214328930(&qword_27C904A08, type metadata accessor for LinkPresentation.TVShowMetadata, asc_214700D00);
        v98 = v149;
        v99 = v120;
        sub_2146DA1C8();
        if (v99)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v98, v167, type metadata accessor for LinkPresentation.TVShowMetadata);
        goto LABEL_82;
      case 0xE:
        v165[0] = 15;
        sub_214328930(&qword_27C904A18, type metadata accessor for LinkPresentation.MovieMetadata, byte_214700D50);
        v51 = v151;
        v52 = v120;
        sub_2146DA1C8();
        if (v52)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v51, v167, type metadata accessor for LinkPresentation.MovieMetadata);
        goto LABEL_82;
      case 0xF:
        v165[0] = 16;
        sub_214328930(&qword_27C904A28, type metadata accessor for LinkPresentation.MovieBundleMetadata, aI_74);
        v75 = v153;
        v76 = v120;
        sub_2146DA1C8();
        if (v76)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v75, v167, type metadata accessor for LinkPresentation.MovieBundleMetadata);
        goto LABEL_82;
      case 0x10:
        v166 = 17;
        sub_214076530();
        v50 = v120;
        sub_2146DA1C8();
        v42 = (v32 + 8);
        if (v50)
        {
          goto LABEL_72;
        }

        (*v42)(v26, v24);
        v40 = v167;
        memcpy(v167, v165, 0x138uLL);
        goto LABEL_82;
      case 0x11:
        v166 = 18;
        sub_214076604();
        v84 = v120;
        sub_2146DA1C8();
        v42 = (v32 + 8);
        if (v84)
        {
          goto LABEL_72;
        }

        (*v42)(v26, v24);
        v85 = *&v165[144];
        v40 = v167;
        v167[8] = *&v165[128];
        v40[9] = v85;
        *(v40 + 153) = *&v165[153];
        v86 = *&v165[80];
        v40[4] = *&v165[64];
        v40[5] = v86;
        v87 = *&v165[112];
        v40[6] = *&v165[96];
        v40[7] = v87;
        v88 = *&v165[16];
        *v40 = *v165;
        v40[1] = v88;
        v89 = *&v165[48];
        v40[2] = *&v165[32];
        v40[3] = v89;
        goto LABEL_82;
      case 0x12:
        v166 = 19;
        sub_2140766D8();
        v102 = v120;
        sub_2146DA1C8();
        v42 = (v32 + 8);
        if (v102)
        {
          goto LABEL_72;
        }

        (*v42)(v26, v24);
        v40 = v167;
        memcpy(v167, v165, 0x118uLL);
        goto LABEL_82;
      case 0x13:
        v166 = 20;
        sub_214076880();
        v112 = v120;
        sub_2146DA1C8();
        v42 = (v32 + 8);
        if (v112)
        {
          goto LABEL_72;
        }

        (*v42)(v26, v24);
        v40 = v167;
        memcpy(v167, v165, 0x42AuLL);
        goto LABEL_82;
      case 0x14:
        v166 = 21;
        sub_214076954();
        v90 = v120;
        sub_2146DA1C8();
        v42 = (v32 + 8);
        if (v90)
        {
          goto LABEL_72;
        }

        (*v42)(v26, v24);
        v40 = v167;
        memcpy(v167, v165, 0x229uLL);
        goto LABEL_82;
      case 0x15:
        v166 = 22;
        sub_214076A28();
        v93 = v120;
        sub_2146DA1C8();
        v42 = (v32 + 8);
        if (v93)
        {
          goto LABEL_72;
        }

        (*v42)(v26, v24);
        v94 = *&v165[112];
        v40 = v167;
        v167[6] = *&v165[96];
        v40[7] = v94;
        v40[8] = *&v165[128];
        v95 = *&v165[48];
        v40[2] = *&v165[32];
        v40[3] = v95;
        v96 = *&v165[80];
        v40[4] = *&v165[64];
        v40[5] = v96;
        v97 = *&v165[16];
        *v40 = *v165;
        v40[1] = v97;
        goto LABEL_82;
      case 0x16:
        v165[0] = 23;
        sub_214328930(&qword_27C904AB8, type metadata accessor for LinkPresentation.FileMetadata, byte_214701070);
        v110 = v155;
        v111 = v120;
        sub_2146DA1C8();
        if (v111)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v110, v167, type metadata accessor for LinkPresentation.FileMetadata);
        goto LABEL_82;
      case 0x17:
        v166 = 24;
        sub_214076B80();
        v113 = v120;
        sub_2146DA1C8();
        if (!v113)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x18:
        v166 = 25;
        sub_214076C54();
        v67 = v120;
        sub_2146DA1C8();
        v42 = (v32 + 8);
        if (v67)
        {
          goto LABEL_72;
        }

        (*v42)(v26, v24);
        v68 = *&v165[144];
        v40 = v167;
        v167[8] = *&v165[128];
        v40[9] = v68;
        v40[10] = *&v165[160];
        *(v40 + 169) = *&v165[169];
        v69 = *&v165[80];
        v40[4] = *&v165[64];
        v40[5] = v69;
        v70 = *&v165[112];
        v40[6] = *&v165[96];
        v40[7] = v70;
        v71 = *&v165[16];
        *v40 = *v165;
        v40[1] = v71;
        v72 = *&v165[48];
        v40[2] = *&v165[32];
        v40[3] = v72;
        goto LABEL_82;
      case 0x19:
        v166 = 26;
        sub_214076D28();
        v62 = v120;
        sub_2146DA1C8();
        v42 = (v32 + 8);
        if (v62)
        {
          goto LABEL_72;
        }

        (*v42)(v26, v24);
        v63 = *&v165[112];
        v40 = v167;
        v167[6] = *&v165[96];
        v40[7] = v63;
        v40[8] = *&v165[128];
        *(v40 + 137) = *&v165[137];
        v64 = *&v165[48];
        v40[2] = *&v165[32];
        v40[3] = v64;
        v65 = *&v165[80];
        v40[4] = *&v165[64];
        v40[5] = v65;
        v66 = *&v165[16];
        *v40 = *v165;
        v40[1] = v66;
        goto LABEL_82;
      case 0x1A:
        v165[0] = 27;
        sub_214328930(&qword_27C904AF8, type metadata accessor for LinkPresentation.PhotosMomentMetadata, aY_59);
        v116 = v156;
        v117 = v120;
        sub_2146DA1C8();
        if (v117)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v116, v167, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
        goto LABEL_82;
      case 0x1B:
        v166 = 28;
        sub_214076E80();
        v47 = v120;
        sub_2146DA1C8();
        if (!v47)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x1C:
        v166 = 29;
        sub_214076F54();
        v114 = v120;
        sub_2146DA1C8();
        if (!v114)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      case 0x1D:
        v166 = 30;
        sub_214077028();
        v115 = v120;
        sub_2146DA1C8();
        if (!v115)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x1E:
        v165[0] = 31;
        sub_214328930(&qword_27C904B38, type metadata accessor for LinkPresentation.WalletPassMetadata, byte_2147012F0);
        v107 = v157;
        v108 = v120;
        sub_2146DA1C8();
        if (v108)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v107, v167, type metadata accessor for LinkPresentation.WalletPassMetadata);
        goto LABEL_82;
      case 0x1F:
        v166 = 32;
        sub_214077180();
        v83 = v120;
        sub_2146DA1C8();
        if (!v83)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x20:
        v166 = 33;
        sub_214077254();
        v109 = v120;
        sub_2146DA1C8();
        if (!v109)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      case 0x21:
        v166 = 34;
        sub_2140773FC();
        v53 = v120;
        sub_2146DA1C8();
        if (v53)
        {
          goto LABEL_3;
        }

LABEL_78:
        (*(v32 + 8))(v26, v24);
        v40 = v167;
        *v167 = *v165;
        goto LABEL_82;
      case 0x22:
        v166 = 35;
        sub_2140775A4();
        v48 = v120;
        sub_2146DA1C8();
        if (v48)
        {
          goto LABEL_3;
        }

LABEL_16:
        (*(v32 + 8))(v26, v24);
        v49 = *&v165[16];
        v40 = v167;
        *v167 = *v165;
        v40[1] = v49;
        goto LABEL_82;
      case 0x23:
        v166 = 36;
        sub_2140774D0();
        v41 = v120;
        sub_2146DA1C8();
        v42 = (v32 + 8);
        if (!v41)
        {
          (*v42)(v26, v24);
          v40 = v167;
          memcpy(v167, v165, 0x149uLL);
          goto LABEL_82;
        }

LABEL_72:
        (*v42)(v26, v24);
        goto LABEL_4;
      case 0x24:
        v165[0] = 37;
        sub_214328930(&qword_27C904BA8, type metadata accessor for LinkPresentation.SharedObjectMetadata, aMl_0);
        v43 = v158;
        v44 = v120;
        sub_2146DA1C8();
        if (v44)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v26, v24);
        v45 = swift_allocBox();
        sub_214328704(v43, v46, type metadata accessor for LinkPresentation.SharedObjectMetadata);
        v40 = v167;
        *v167 = v45;
        goto LABEL_82;
      default:
        v165[0] = 1;
        sub_214328930(&qword_27C904938, type metadata accessor for LinkPresentation.SongMetadata, byte_2147008F0);
        v38 = v120;
        v39 = v121;
        sub_2146DA1C8();
        if (v38)
        {
LABEL_3:
          (*(v32 + 8))(v34, v35);
          goto LABEL_4;
        }

        (*(v32 + 8))(v34, v24);
        v40 = v167;
        sub_214328704(v39, v167, type metadata accessor for LinkPresentation.SongMetadata);
LABEL_82:
        swift_storeEnumTagMultiPayload();
        v118 = v164;
        sub_214328704(v40, v33, type metadata accessor for LinkPresentation.SpecializationMetadata);
        v36 = v118;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

unint64_t sub_2142D4450()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_2142D448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000021 && 0x8000000214799320 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214799350 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2142D456C(uint64_t a1)
{
  v2 = sub_214326F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D45A8(uint64_t a1)
{
  v2 = sub_214326F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D45E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6F686563616C70;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB00000000726564;
  }

  if (*a2)
  {
    v5 = 0x6C6F686563616C70;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xEB00000000726564;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142D468C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D4710(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142D4780(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142D480C(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x6C6F686563616C70;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000726564;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142D48FC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7D0, &qword_2146F70B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326F08();
  sub_2146DAA28();
  if (v8)
  {
    v13 = 1;
    v12 = 0;
    sub_214326F5C();
    sub_2146DA388();
    if (!v2)
    {
      v11 = 1;
      sub_2146DA368();
    }
  }

  else
  {
    v14 = 0;
    sub_214326F5C();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142D4ACC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7E8, &qword_2146F70B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326F08();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = 0;
    sub_214326FB0();
    sub_2146DA1C8();
    if (v15 == 1)
    {
      v13 = 1;
      v9 = sub_2146DA1A8();
      (*(v6 + 8))(v8, v5);
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *a2 = v10;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      *a2 = 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142D4CF0()
{
  if (*v0)
  {
    return 0x6465696669726576;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_2142D4D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000214799370 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEE0065756C61565FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
  return result;
}

uint64_t sub_2142D4E2C(uint64_t a1)
{
  v2 = sub_214327004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D4E68(uint64_t a1)
{
  v2 = sub_214327004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D4EA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x6465696669726576;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x80000002147874F0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x6465696669726576;
  }

  if (*a2)
  {
    v6 = 0x80000002147874F0;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142D4F50()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D4FD8(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142D504C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142D50DC(unint64_t *a1@<X8>)
{
  v2 = 0x80000002147874F0;
  v3 = 0x6465696669726576;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2142D51D0(void *a1)
{
  v2 = type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v16 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Chatbot.VerificationInfo(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D7F8, &qword_2146F70C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327004();
  sub_2146DAA28();
  sub_2143287C0(v17, v7, type metadata accessor for Chatbot.VerificationInfo);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v22 = 1;
    v21 = 0;
    sub_214327058();
    sub_2146DA388();
  }

  else
  {
    v12 = v16;
    sub_214328704(v7, v16, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
    v20 = 0;
    sub_214327058();
    v13 = v18;
    sub_2146DA388();
    if (v13)
    {
      sub_21432887C(v12, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
      return (*(v9 + 8))(v11, v8);
    }

    v19 = 1;
    sub_214328930(&qword_27C90D810, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo, aA_40);
    sub_2146DA388();
    sub_21432887C(v12, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2142D5540@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo(0);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D818, &qword_2146F70C8);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Chatbot.VerificationInfo(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214327004();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = v23;
    v14 = v24;
    v21 = v12;
    v27 = 0;
    sub_2143270AC();
    sub_2146DA1C8();
    if (v28)
    {
      (*(v15 + 8))(v9, v7);
      v16 = 1;
      v17 = v14;
      v18 = v21;
    }

    else
    {
      v26 = 1;
      sub_214328930(&qword_27C90D828, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo, byte_214701C50);
      sub_2146DA1C8();
      (*(v15 + 8))(v9, v7);
      v17 = v14;
      v18 = v21;
      sub_214328704(v6, v21, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
      v16 = 0;
    }

    (*(v22 + 56))(v18, v16, 1, v4);
    sub_214328704(v18, v17, type metadata accessor for Chatbot.VerificationInfo);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_2142D58CC()
{
  v1 = 0x61565F796C706572;
  if (*v0 != 1)
  {
    v1 = 0x565F6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2142D593C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438D414(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142D5964(uint64_t a1)
{
  v2 = sub_214327100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D59A0(uint64_t a1)
{
  v2 = sub_214327100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D5A98(void *a1)
{
  v2 = v1;
  v20 = type metadata accessor for Chatbot.Action(0);
  MEMORY[0x28223BE20](v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.MenuL2.Entry(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D830, &qword_2146F70D0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327100();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for Chatbot.MenuL2.Entry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214328704(v8, v5, type metadata accessor for Chatbot.Action);
    LOBYTE(v32) = 1;
    LOBYTE(v24) = 0;
    sub_214327154();
    v12 = v23;
    v13 = v21;
    sub_2146DA388();
    if (!v13)
    {
      LOBYTE(v32) = 2;
      sub_214328930(&qword_27C90D848, type metadata accessor for Chatbot.Action, asc_2147022B8);
      sub_2146DA388();
    }

    sub_21432887C(v5, type metadata accessor for Chatbot.Action);
    return (*(v22 + 8))(v11, v12);
  }

  else
  {
    v15 = *(v8 + 5);
    v36 = *(v8 + 4);
    v37 = v15;
    v38 = *(v8 + 6);
    v39 = v8[112];
    v16 = *(v8 + 1);
    v32 = *v8;
    v33 = v16;
    v17 = *(v8 + 3);
    v34 = *(v8 + 2);
    v35 = v17;
    LOBYTE(v24) = 0;
    v40 = 0;
    sub_214327154();
    v18 = v23;
    v19 = v21;
    sub_2146DA388();
    if (!v19)
    {
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v40 = 1;
      sub_2143271FC();
      sub_2146DA388();
    }

    (*(v22 + 8))(v11, v18);
    return sub_2143271A8(&v32);
  }
}

uint64_t sub_2142D5E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for Chatbot.Action(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D858, &qword_2146F70D8);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Chatbot.MenuL2.Entry(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214327100();
  v13 = v25;
  sub_2146DAA08();
  if (!v13)
  {
    v25 = v3;
    v22 = v11;
    v14 = v23;
    v15 = v24;
    v35 = 0;
    sub_214327250();
    sub_2146DA1C8();
    if (v27)
    {
      LOBYTE(v27) = 2;
      sub_214328930(&qword_27C90D868, type metadata accessor for Chatbot.Action, aY_37);
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v22;
      sub_214328704(v5, v22, type metadata accessor for Chatbot.Action);
      swift_storeEnumTagMultiPayload();
      v18 = v15;
    }

    else
    {
      v35 = 1;
      sub_2143272A4();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v18 = v15;
      v19 = v32;
      v17 = v22;
      *(v22 + 4) = v31;
      *(v17 + 80) = v19;
      *(v17 + 96) = v33;
      *(v17 + 112) = v34;
      v20 = v28;
      *v17 = v27;
      *(v17 + 16) = v20;
      v21 = v30;
      *(v17 + 32) = v29;
      *(v17 + 48) = v21;
      swift_storeEnumTagMultiPayload();
    }

    sub_214328704(v17, v18, type metadata accessor for Chatbot.MenuL2.Entry);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_2142D6224()
{
  v1 = 0x61565F796C706572;
  v2 = 0x565F6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x565F324C756E656DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_2142D62BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438D594(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142D62E4(uint64_t a1)
{
  v2 = sub_2143272F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D6320(uint64_t a1)
{
  v2 = sub_2143272F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D635C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v3 = 0x324C756E656DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x796C706572;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x6E6F69746361;
  if (*a2 != 1)
  {
    v6 = 0x324C756E656DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x796C706572;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142D644C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D64E4(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142D6568(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142D65FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438D768(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142D662C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v4 = 0x324C756E656DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x796C706572;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2142D6730(void *a1)
{
  v2 = v1;
  *(&v29 + 1) = type metadata accessor for Chatbot.Action(0);
  MEMORY[0x28223BE20](*(&v29 + 1));
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.MenuL1.Entry(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D878, &qword_2146F70E0);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143272F8();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for Chatbot.MenuL1.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_214328704(v8, v5, type metadata accessor for Chatbot.Action);
      LOBYTE(v41) = 1;
      LOBYTE(v33) = 0;
      sub_21432734C();
      v13 = v32;
      v14 = v30;
      sub_2146DA388();
      if (!v14)
      {
        LOBYTE(v41) = 2;
        sub_214328930(&qword_27C90D848, type metadata accessor for Chatbot.Action, asc_2147022B8);
        sub_2146DA388();
      }

      sub_21432887C(v5, type metadata accessor for Chatbot.Action);
      return (*(v31 + 8))(v11, v13);
    }

    else
    {
      v21 = *(v8 + 1);
      *&v29 = *v8;
      *(&v29 + 1) = v21;
      v23 = *(v8 + 2);
      v22 = *(v8 + 3);
      v24 = v8[32];
      v25 = *(v8 + 5);
      LOBYTE(v41) = 2;
      LOBYTE(v33) = 0;
      sub_21432734C();
      v26 = v32;
      v27 = v30;
      sub_2146DA388();
      if (!v27)
      {
        v41 = v29;
        *&v42 = v23;
        *(&v42 + 1) = v22;
        LOBYTE(v43) = v24;
        *(&v43 + 1) = v25;
        LOBYTE(v33) = 3;
        sub_2143273A0();
        sub_2146DA388();
      }

      (*(v31 + 8))(v11, v26);
    }
  }

  else
  {
    v16 = *(v8 + 5);
    v45 = *(v8 + 4);
    v46 = v16;
    v47 = *(v8 + 6);
    v48 = v8[112];
    v17 = *(v8 + 1);
    v41 = *v8;
    v42 = v17;
    v18 = *(v8 + 3);
    v43 = *(v8 + 2);
    v44 = v18;
    LOBYTE(v33) = 0;
    v49 = 0;
    sub_21432734C();
    v19 = v32;
    v20 = v30;
    sub_2146DA388();
    if (!v20)
    {
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v49 = 1;
      sub_2143271FC();
      sub_2146DA388();
    }

    (*(v31 + 8))(v11, v19);
    return sub_2143271A8(&v41);
  }
}

uint64_t sub_2142D6BC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for Chatbot.Action(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D898, &qword_2146F70E8);
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Chatbot.MenuL1.Entry(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2143272F8();
  v13 = v28;
  sub_2146DAA08();
  if (!v13)
  {
    v14 = v27;
    v38 = 0;
    sub_2143273F4();
    sub_2146DA1C8();
    if (v30)
    {
      if (v30 != 1)
      {
        v38 = 3;
        sub_214327448();
        sub_2146DA1C8();
        (*(v14 + 8))(v8, v6);
        v21 = v26;
        v22 = v32;
        v23 = *(&v32 + 1);
        v24 = v31;
        v16 = v11;
        *v11 = v30;
        *(v11 + 1) = v24;
        v11[32] = v22;
        *(v11 + 5) = v23;
        v25 = v21;
        swift_storeEnumTagMultiPayload();
        v20 = v25;
        goto LABEL_10;
      }

      LOBYTE(v30) = 2;
      sub_214328930(&qword_27C90D868, type metadata accessor for Chatbot.Action, aY_37);
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v16 = v11;
      sub_214328704(v5, v11, type metadata accessor for Chatbot.Action);
    }

    else
    {
      v38 = 1;
      sub_2143272A4();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v35;
      v16 = v11;
      *(v11 + 4) = v34;
      *(v11 + 5) = v17;
      *(v11 + 6) = v36;
      v11[112] = v37;
      v18 = v31;
      *v11 = v30;
      *(v11 + 1) = v18;
      v19 = v33;
      *(v11 + 2) = v32;
      *(v11 + 3) = v19;
    }

    swift_storeEnumTagMultiPayload();
    v20 = v26;
LABEL_10:
    sub_214328704(v16, v20, type metadata accessor for Chatbot.MenuL1.Entry);
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_2142D7008()
{
  v1 = 0x5F746F6274616863;
  v2 = 0x565F6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x565F314C756E656DLL;
  }

  if (*v0)
  {
    v1 = 0x61565F796C706572;
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

uint64_t sub_2142D70A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438D7B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142D70D0(uint64_t a1)
{
  v2 = sub_21432749C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D710C(uint64_t a1)
{
  v2 = sub_21432749C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D7148(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v3 = 0x314C756E656DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x796C706572;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x6E6F69746361;
  if (*a2 != 1)
  {
    v6 = 0x314C756E656DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x796C706572;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142D7238()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D72D0(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142D7354(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142D73E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438D9D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142D7418(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v4 = 0x314C756E656DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x796C706572;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2142D751C(void *a1)
{
  v2 = v1;
  *(&v29 + 1) = type metadata accessor for Chatbot.Action(0);
  MEMORY[0x28223BE20](*(&v29 + 1));
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.MenuL0(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D8B0, &qword_2146F70F0);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432749C();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for Chatbot.MenuL0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_214328704(v8, v5, type metadata accessor for Chatbot.Action);
      LOBYTE(v41) = 1;
      LOBYTE(v33) = 0;
      sub_2143274F0();
      v13 = v32;
      v14 = v30;
      sub_2146DA388();
      if (!v14)
      {
        LOBYTE(v41) = 2;
        sub_214328930(&qword_27C90D848, type metadata accessor for Chatbot.Action, asc_2147022B8);
        sub_2146DA388();
      }

      sub_21432887C(v5, type metadata accessor for Chatbot.Action);
      return (*(v31 + 8))(v11, v13);
    }

    else
    {
      v21 = *(v8 + 1);
      *&v29 = *v8;
      *(&v29 + 1) = v21;
      v23 = *(v8 + 2);
      v22 = *(v8 + 3);
      v24 = v8[32];
      v25 = *(v8 + 5);
      LOBYTE(v41) = 2;
      LOBYTE(v33) = 0;
      sub_2143274F0();
      v26 = v32;
      v27 = v30;
      sub_2146DA388();
      if (!v27)
      {
        v41 = v29;
        *&v42 = v23;
        *(&v42 + 1) = v22;
        LOBYTE(v43) = v24;
        *(&v43 + 1) = v25;
        LOBYTE(v33) = 3;
        sub_214327544();
        sub_2146DA388();
      }

      (*(v31 + 8))(v11, v26);
    }
  }

  else
  {
    v16 = *(v8 + 5);
    v45 = *(v8 + 4);
    v46 = v16;
    v47 = *(v8 + 6);
    v48 = v8[112];
    v17 = *(v8 + 1);
    v41 = *v8;
    v42 = v17;
    v18 = *(v8 + 3);
    v43 = *(v8 + 2);
    v44 = v18;
    LOBYTE(v33) = 0;
    v49 = 0;
    sub_2143274F0();
    v19 = v32;
    v20 = v30;
    sub_2146DA388();
    if (!v20)
    {
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v49 = 1;
      sub_2143271FC();
      sub_2146DA388();
    }

    (*(v31 + 8))(v11, v19);
    return sub_2143271A8(&v41);
  }
}

uint64_t sub_2142D79AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for Chatbot.Action(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D8D0, &qword_2146F70F8);
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Chatbot.MenuL0(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21432749C();
  v13 = v28;
  sub_2146DAA08();
  if (!v13)
  {
    v14 = v27;
    v38 = 0;
    sub_214327598();
    sub_2146DA1C8();
    if (v30)
    {
      if (v30 != 1)
      {
        v38 = 3;
        sub_2143275EC();
        sub_2146DA1C8();
        (*(v14 + 8))(v8, v6);
        v21 = v26;
        v22 = v32;
        v23 = *(&v32 + 1);
        v24 = v31;
        v16 = v11;
        *v11 = v30;
        *(v11 + 1) = v24;
        v11[32] = v22;
        *(v11 + 5) = v23;
        v25 = v21;
        swift_storeEnumTagMultiPayload();
        v20 = v25;
        goto LABEL_10;
      }

      LOBYTE(v30) = 2;
      sub_214328930(&qword_27C90D868, type metadata accessor for Chatbot.Action, aY_37);
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v16 = v11;
      sub_214328704(v5, v11, type metadata accessor for Chatbot.Action);
    }

    else
    {
      v38 = 1;
      sub_2143272A4();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v35;
      v16 = v11;
      *(v11 + 4) = v34;
      *(v11 + 5) = v17;
      *(v11 + 6) = v36;
      v11[112] = v37;
      v18 = v31;
      *v11 = v30;
      *(v11 + 1) = v18;
      v19 = v33;
      *(v11 + 2) = v32;
      *(v11 + 3) = v19;
    }

    swift_storeEnumTagMultiPayload();
    v20 = v26;
LABEL_10:
    sub_214328704(v16, v20, type metadata accessor for Chatbot.MenuL0);
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_2142D7DF4()
{
  if (*v0)
  {
    return 0x5F4C52556E65706FLL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2142D7E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002147993D0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5F4C52556E65706FLL && a2 == 0xED000065756C6156)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
  return result;
}

uint64_t sub_2142D7F30(uint64_t a1)
{
  v2 = sub_214327640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D7F6C(uint64_t a1)
{
  v2 = sub_214327640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D80C8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D8E8, &qword_2146F7100);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v19 = *(v1 + 3);
  v32 = *(v1 + 32);
  v10 = *(v1 + 33);
  v17 = *(v1 + 34);
  v18 = v10;
  v20 = *(v1 + 40);
  v21 = v8;
  v11 = *(v1 + 7);
  v15 = *(v1 + 8);
  v16 = v11;
  v14 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327640();
  sub_2146DAA28();
  LOBYTE(v22) = 0;
  sub_214327694();
  sub_2146DA388();
  if (!v2)
  {
    v22 = v21;
    v23 = v9;
    v24 = v19;
    v25 = v32;
    v26 = v18;
    v27 = v17;
    v28 = v20;
    v29 = v16;
    v30 = v15;
    v31 = v14;
    v33 = 1;
    sub_2143276E8();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142D82BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D908, &qword_2146F7108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327640();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v12) = 0;
    sub_21432773C();
    sub_2146DA1C8();
    v16 = 1;
    sub_214327790();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10[2] = v14;
    v11[0] = v15[0];
    *(v11 + 9) = *(v15 + 9);
    v10[0] = v12;
    v10[1] = v13;
    sub_2143277E4(v10, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142D84D4()
{
  v1 = 0x6C61436F65646976;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2142D8564@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438DA24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142D858C(uint64_t a1)
{
  v2 = sub_214327840();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D85C8(uint64_t a1)
{
  v2 = sub_214327840();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D8604(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6465686369726E65;
  v4 = 0xEC0000006C6C6143;
  if (v2 != 1)
  {
    v3 = 0x6C61436F65646976;
    v4 = 0xE90000000000006CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  v7 = 0x6465686369726E65;
  v8 = 0xEC0000006C6C6143;
  if (*a2 != 1)
  {
    v7 = 0x6C61436F65646976;
    v8 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000726562;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142D8724()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D87DC(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142D8880(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142D8934@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438DC40(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142D8964(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0xEC0000006C6C6143;
  v5 = 0x6465686369726E65;
  if (v2 != 1)
  {
    v5 = 0x6C61436F65646976;
    v4 = 0xE90000000000006CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D754E656E6F6870;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142D8A88(void *a1)
{
  v24 = type metadata accessor for Chatbot.DialerAction.DialVideoCall(0);
  MEMORY[0x28223BE20](v24);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0);
  MEMORY[0x28223BE20](v23);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Chatbot.DialerAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D920, &qword_2146F7110);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327840();
  sub_2146DAA28();
  sub_2143287C0(v26, v10, type metadata accessor for Chatbot.DialerAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_214328704(v10, v4, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
      v34 = 1;
      v33 = 0;
      sub_214327894();
      v15 = v29;
      v16 = v27;
      sub_2146DA388();
      if (!v16)
      {
        v32 = 2;
        sub_214328930(&qword_27C90D940, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall, byte_214701FE8);
        sub_2146DA388();
      }

      v17 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall;
      v18 = v4;
    }

    else
    {
      v20 = v25;
      sub_214328704(v10, v25, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
      v37 = 2;
      v36 = 0;
      sub_214327894();
      v15 = v29;
      v21 = v27;
      sub_2146DA388();
      if (!v21)
      {
        v35 = 3;
        sub_214328930(&qword_27C90D938, type metadata accessor for Chatbot.DialerAction.DialVideoCall, byte_214702038);
        sub_2146DA388();
      }

      v17 = type metadata accessor for Chatbot.DialerAction.DialVideoCall;
      v18 = v20;
    }
  }

  else
  {
    sub_214328704(v10, v7, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
    v31 = 0;
    sub_214327894();
    v15 = v29;
    v19 = v27;
    sub_2146DA388();
    if (!v19)
    {
      v30 = 1;
      sub_214328930(&qword_27C90D948, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber, aA_41);
      sub_2146DA388();
    }

    v17 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber;
    v18 = v7;
  }

  sub_21432887C(v18, v17);
  return (*(v28 + 8))(v13, v15);
}

uint64_t sub_2142D8FA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = type metadata accessor for Chatbot.DialerAction.DialVideoCall(0);
  MEMORY[0x28223BE20](v28);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0);
  MEMORY[0x28223BE20](v29);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D950, &qword_2146F7118);
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Chatbot.DialerAction(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_214327840();
  v15 = v32;
  sub_2146DAA08();
  if (!v15)
  {
    v25 = v13;
    v32 = v11;
    v16 = v30;
    v17 = v31;
    v37 = 0;
    sub_2143278E8();
    sub_2146DA1C8();
    v19 = v10;
    v20 = (v16 + 8);
    if (v38)
    {
      if (v38 == 1)
      {
        v35 = 2;
        sub_214328930(&qword_27C90D968, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall, aI_39);
        v21 = v27;
        sub_2146DA1C8();
        (*v20)(v19, v8);
        v22 = v25;
        sub_214328704(v21, v25, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
      }

      else
      {
        v36 = 3;
        sub_214328930(&qword_27C90D960, type metadata accessor for Chatbot.DialerAction.DialVideoCall, byte_214702010);
        v23 = v26;
        sub_2146DA1C8();
        (*v20)(v19, v8);
        v22 = v25;
        sub_214328704(v23, v25, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
      }
    }

    else
    {
      v34 = 1;
      sub_214328930(&qword_27C90D970, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber, byte_214701F70);
      sub_2146DA1C8();
      (*v20)(v19, v8);
      v22 = v25;
      sub_214328704(v7, v25, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v22, v17, type metadata accessor for Chatbot.DialerAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

unint64_t sub_2142D94DC()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2142D9514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000214799450 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000214797870 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
  return result;
}

uint64_t sub_2142D95F8(uint64_t a1)
{
  v2 = sub_21432793C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142D9634(uint64_t a1)
{
  v2 = sub_21432793C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142D9670(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x61636F4C776F6873;
  }

  if (v2)
  {
    v4 = 0xEC0000006E6F6974;
  }

  else
  {
    v4 = 0x8000000214787540;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x61636F4C776F6873;
  }

  if (*a2)
  {
    v6 = 0x8000000214787540;
  }

  else
  {
    v6 = 0xEC0000006E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142D9724()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142D97B4(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142D9830(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142D98C8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000214787540;
  v3 = 0x61636F4C776F6873;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEC0000006E6F6974;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2142D99C4(void *a1)
{
  v2 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v16 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Chatbot.MapAction(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D978, &qword_2146F7120);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432793C();
  sub_2146DAA28();
  sub_2143287C0(v17, v7, type metadata accessor for Chatbot.MapAction);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v22 = 1;
    v21 = 0;
    sub_214327990();
    sub_2146DA388();
  }

  else
  {
    v12 = v16;
    sub_214328704(v7, v16, type metadata accessor for Chatbot.MapAction.ShowLocation);
    v20 = 0;
    sub_214327990();
    v13 = v18;
    sub_2146DA388();
    if (v13)
    {
      sub_21432887C(v12, type metadata accessor for Chatbot.MapAction.ShowLocation);
      return (*(v9 + 8))(v11, v8);
    }

    v19 = 1;
    sub_214328930(&qword_27C90D990, type metadata accessor for Chatbot.MapAction.ShowLocation, aA_42);
    sub_2146DA388();
    sub_21432887C(v12, type metadata accessor for Chatbot.MapAction.ShowLocation);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2142D9D34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D998, &qword_2146F7128);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Chatbot.MapAction(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21432793C();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = v23;
    v14 = v24;
    v21 = v12;
    v27 = 0;
    sub_2143279E4();
    sub_2146DA1C8();
    if (v28)
    {
      (*(v15 + 8))(v9, v7);
      v16 = 1;
      v17 = v14;
      v18 = v21;
    }

    else
    {
      v26 = 1;
      sub_214328930(&qword_27C90D9A8, type metadata accessor for Chatbot.MapAction.ShowLocation, byte_214702150);
      sub_2146DA1C8();
      (*(v15 + 8))(v9, v7);
      v17 = v14;
      v18 = v21;
      sub_214328704(v6, v21, type metadata accessor for Chatbot.MapAction.ShowLocation);
      v16 = 0;
    }

    (*(v22 + 56))(v18, v16, 1, v4);
    sub_214328704(v18, v17, type metadata accessor for Chatbot.MapAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

unint64_t sub_2142DA0C0()
{
  v1 = 0x61565F7972657571;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_2142DA130@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438DC8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142DA158(uint64_t a1)
{
  v2 = sub_214327A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DA194(uint64_t a1)
{
  v2 = sub_214327A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DA1D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7972657571;
  }

  else
  {
    v3 = 0x616E6964726F6F63;
  }

  if (v2)
  {
    v4 = 0xEB00000000736574;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7972657571;
  }

  else
  {
    v5 = 0x616E6964726F6F63;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB00000000736574;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142DA27C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DA304(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142DA378(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DA408(uint64_t *a1@<X8>)
{
  v2 = 0x616E6964726F6F63;
  if (*v1)
  {
    v2 = 0x7972657571;
  }

  v3 = 0xEB00000000736574;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142DA4FC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D9B0, &qword_2146F7130);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = v1[1];
  v16 = *v1;
  v17 = v8;
  v9 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v10 = v1[5];
  v20 = v1[4];
  v14 = v1[6];
  v15 = v10;
  v11 = *(v1 + 28);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327A38();
  sub_2146DAA28();
  if ((v11 & 0x80) != 0)
  {
    LOBYTE(v21) = 1;
    v29 = 0;
    sub_214327A8C();
    sub_2146DA388();
    if (!v2)
    {
      v21 = v16;
      v22 = v17;
      v23 = v18;
      v24 = v19;
      LOBYTE(v25) = v20;
      v29 = 2;
      sub_214327AE0();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
    v29 = 0;
    sub_214327A8C();
    sub_2146DA388();
    if (!v2)
    {
      v21 = v16;
      v22 = v17;
      v23 = v18;
      v24 = v19;
      v25 = v20;
      v26 = v15;
      v27 = v14;
      v28 = v11;
      v29 = 1;
      sub_214327B34();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142DA744@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D9D8, &qword_2146F7138);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327A38();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = 0;
    sub_214327B88();
    sub_2146DA1C8();
    v10 = (v6 + 8);
    if (v23)
    {
      v21 = 2;
      sub_214327BDC();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v11 = v16;
      v12 = v17;
      v13 = v18;
      *&v14 = v18;
      v15 = 128;
    }

    else
    {
      v21 = 1;
      sub_214327C30();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v11 = v16;
      v12 = v17;
      v14 = v18;
      v13 = v19;
      v15 = v20 & 0xFF01;
    }

    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 32) = v14;
    *(a2 + 48) = v13;
    *(a2 + 56) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142DA9D4()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_2142DAA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000016 && 0x80000002147994C0 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002147994E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2142DAAF0(uint64_t a1)
{
  v2 = sub_214327C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DAB2C(uint64_t a1)
{
  v2 = sub_214327C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DAB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2142DAC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2142DAC70@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2142DAD94(void *a1)
{
  v2 = v1;
  v15[0] = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  MEMORY[0x28223BE20](v15[0]);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.CalendarAction(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D9F8, &qword_2146F7140);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327C84();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for Chatbot.CalendarAction);
  sub_214328704(v8, v5, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  v17 = 0;
  sub_214327CD8();
  v13 = v15[1];
  sub_2146DA388();
  if (!v13)
  {
    v16 = 1;
    sub_214328930(&qword_27C90DA10, type metadata accessor for Chatbot.CalendarAction.CreateEvent, byte_2147021C8);
    sub_2146DA388();
  }

  sub_21432887C(v5, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2142DB034@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  MEMORY[0x28223BE20](Event);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DA18, &qword_2146F7148);
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327C84();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v16 = 0;
    sub_214327D2C();
    v11 = v14;
    sub_2146DA1C8();
    v15 = 1;
    sub_214328930(&qword_27C90DA28, type metadata accessor for Chatbot.CalendarAction.CreateEvent, aI_40);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v11);
    sub_214328704(v6, v13, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142DB2C8()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}