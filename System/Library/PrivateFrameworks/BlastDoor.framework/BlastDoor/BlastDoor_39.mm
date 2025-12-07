uint64_t sub_214394968(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *(v3 + 80);
    v9 = *(v3 + 104);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {

      *(v3 + 96) = v2;
      return result;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v4 = *(v3 + 80);
  v9 = *(v3 + 104);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v4(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  *(v3 + 96) = v2;
}

uint64_t sub_214394B48(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  return result;
}

void (*sub_214394BBC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_214394C54;
}

void sub_214394C54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  if (a2)
  {

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
  }

  else
  {

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
  }

  free(v2);
}

uint64_t sub_214394D14()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_214394D44(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_214394D9C()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_214394DCC(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_21439522C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHealthInvitation(0) + 64);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2143952C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSHealthInvitation(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214395390(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHealthInvitation(0) + 64);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2143954E0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 64);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_2143955CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation(0) + 64));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21439563C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHealthInvitation(0) + 64);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2143956D4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 64);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

uint64_t sub_214395780@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHealthInvitation(0) + 68);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21439581C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSHealthInvitation(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143958E4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHealthInvitation(0) + 68);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214395A34(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 68);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_214395B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation(0) + 68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214395B90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHealthInvitation(0) + 68);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_214395C28(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 68);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_214395DAC@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IDSHealthInvitation(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t sub_214395DE0(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IDSHealthInvitation(0);
  *(v1 + *(result + 76)) = v2;
  return result;
}

uint64_t sub_214395E58()
{
  type metadata accessor for IDSHealthInvitation(0);
}

uint64_t sub_214395E8C(uint64_t a1)
{
  v3 = *(type metadata accessor for IDSHealthInvitation(0) + 80);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_214395F14@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IDSHealthInvitation(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t sub_214395F48(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IDSHealthInvitation(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t sub_214395FC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for IDSHealthInvitation(0) + 88) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214396054(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for IDSHealthInvitation(0);
  sub_2140325F8(v1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214396110(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IDSHealthInvitation(0) + 88);
  v9 = a1;
  v4 = *v3;
  v8 = *(v3 + 24);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v4(&v9, &v8, v7))
  {

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214396258(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IDSHealthInvitation(0) + 88);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214396308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation(0) + 88));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

uint64_t sub_21439636C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for IDSHealthInvitation(0) + 88);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

void (*sub_2143963F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation(0) + 88);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

uint64_t sub_2143964B4()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 0x657469766E69;
  }
}

uint64_t sub_2143964EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657469766E69 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
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

uint64_t sub_2143965C4(uint64_t a1)
{
  v2 = sub_2143969E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214396600(uint64_t a1)
{
  v2 = sub_2143969E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214396648(uint64_t a1)
{
  v2 = sub_214396A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214396684(uint64_t a1)
{
  v2 = sub_214396A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143966C0(uint64_t a1)
{
  v2 = sub_214396A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143966FC(uint64_t a1)
{
  v2 = sub_214396A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214396738(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911DF0, &qword_214732A18);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911DF8, &qword_214732A20);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E00, &qword_214732A28);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143969E8();
  sub_2146DAA28();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_214396A3C();
    v14 = v18;
    sub_2146DA288();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_214396A90();
    sub_2146DA288();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_2143969E8()
{
  result = qword_27C911E08;
  if (!qword_27C911E08)
  {
    result = swift_getWitnessTable(byte_21473425C, &type metadata for IDSHealthInvitation.InvitationType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C911E08);
  }

  return result;
}

unint64_t sub_214396A3C()
{
  result = qword_27C911E10;
  if (!qword_27C911E10)
  {
    result = swift_getWitnessTable(byte_21473420C, &type metadata for IDSHealthInvitation.InvitationType.RequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911E10);
  }

  return result;
}

unint64_t sub_214396A90()
{
  result = qword_27C911E18;
  if (!qword_27C911E18)
  {
    result = swift_getWitnessTable(aMt_0, &type metadata for IDSHealthInvitation.InvitationType.InviteCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911E18);
  }

  return result;
}

uint64_t sub_214396B14@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E20, &qword_214732A30);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E28, &qword_214732A38);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E30, &unk_214732A40);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143969E8();
  v13 = v31;
  sub_2146DAA08();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_2146DA238();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_2146D9F58();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v21 = &type metadata for IDSHealthInvitation.InvitationType;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_214396A3C();
    sub_2146DA0B8();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_214396A90();
    sub_2146DA0B8();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_214396F68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
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

uint64_t sub_214396F9C()
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

uint64_t sub_214396FD0()
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

uint64_t sub_214397004()
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

BOOL sub_214397038()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_214397064()
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

uint64_t sub_2143970C8()
{
  if (*v0)
  {
    return 0x676E696D6F636E69;
  }

  else
  {
    return 0x676E696F6774756FLL;
  }
}

uint64_t sub_2143970FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696F6774756FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696D6F636E69 && a2 == 0xE800000000000000)
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

uint64_t sub_2143971D8(uint64_t a1)
{
  v2 = sub_2143975F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397214(uint64_t a1)
{
  v2 = sub_2143975F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397250(uint64_t a1)
{
  v2 = sub_214397644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21439728C(uint64_t a1)
{
  v2 = sub_214397644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143972C8(uint64_t a1)
{
  v2 = sub_214397698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397304(uint64_t a1)
{
  v2 = sub_214397698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397340(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E38, &qword_214732A50);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E40, &qword_214732A58);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E48, &qword_214732A60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143975F0();
  sub_2146DAA28();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_214397644();
    v14 = v18;
    sub_2146DA288();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_214397698();
    sub_2146DA288();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_2143975F0()
{
  result = qword_27C911E50;
  if (!qword_27C911E50)
  {
    result = swift_getWitnessTable(byte_21473416C, &type metadata for IDSHealthInvitation.Direction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C911E50);
  }

  return result;
}

unint64_t sub_214397644()
{
  result = qword_27C911E58;
  if (!qword_27C911E58)
  {
    result = swift_getWitnessTable(aU_85, &type metadata for IDSHealthInvitation.Direction.IncomingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911E58);
  }

  return result;
}

unint64_t sub_214397698()
{
  result = qword_27C911E60;
  if (!qword_27C911E60)
  {
    result = swift_getWitnessTable(aU_86, &type metadata for IDSHealthInvitation.Direction.OutgoingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911E60);
  }

  return result;
}

uint64_t sub_2143976EC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E68, &qword_214732A68);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E70, &qword_214732A70);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E78, &qword_214732A78);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143975F0();
  v13 = v31;
  sub_2146DAA08();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_2146DA238();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_2146D9F58();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v21 = &type metadata for IDSHealthInvitation.Direction;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_214397644();
    sub_2146DA0B8();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_214397698();
    sub_2146DA0B8();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_214397B70(uint64_t a1)
{
  v2 = sub_214398598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397BAC(uint64_t a1)
{
  v2 = sub_214398598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397BE8()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x64656E696C636564;
  v4 = 0x65646E6963736572;
  if (v1 != 3)
  {
    v4 = 0x64656B6F766572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465747065636361;
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

uint64_t sub_214397C88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21439DAF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214397CB0(uint64_t a1)
{
  v2 = sub_214398448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397CEC(uint64_t a1)
{
  v2 = sub_214398448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397D28(uint64_t a1)
{
  v2 = sub_214398544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397D64(uint64_t a1)
{
  v2 = sub_214398544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397DA0(uint64_t a1)
{
  v2 = sub_2143985EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397DDC(uint64_t a1)
{
  v2 = sub_2143985EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397E18(uint64_t a1)
{
  v2 = sub_2143984F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397E54(uint64_t a1)
{
  v2 = sub_2143984F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397E90(uint64_t a1)
{
  v2 = sub_21439849C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214397ECC(uint64_t a1)
{
  v2 = sub_21439849C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214397F08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E80, &qword_214732A80);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E88, &qword_214732A88);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E90, &qword_214732A90);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911E98, &qword_214732A98);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EA0, &qword_214732AA0);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EA8, &qword_214732AA8);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_214398448();
  sub_2146DAA28();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_214398598();
      v31 = v45;
      sub_2146DA288();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_2143985EC();
      v31 = v45;
      sub_2146DA288();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_214398544();
      v22 = v33;
      v23 = v45;
      sub_2146DA288();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_2143984F0();
      v22 = v36;
      v23 = v45;
      sub_2146DA288();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_21439849C();
      v22 = v39;
      v23 = v45;
      sub_2146DA288();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_214398448()
{
  result = qword_27C911EB0;
  if (!qword_27C911EB0)
  {
    result = swift_getWitnessTable(byte_21473407C, &type metadata for IDSHealthInvitation.Status.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C911EB0);
  }

  return result;
}

unint64_t sub_21439849C()
{
  result = qword_27C911EB8;
  if (!qword_27C911EB8)
  {
    result = swift_getWitnessTable(byte_21473402C, &type metadata for IDSHealthInvitation.Status.RevokedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911EB8);
  }

  return result;
}

unint64_t sub_2143984F0()
{
  result = qword_27C911EC0;
  if (!qword_27C911EC0)
  {
    result = swift_getWitnessTable(aMv_1, &type metadata for IDSHealthInvitation.Status.RescindedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911EC0);
  }

  return result;
}

unint64_t sub_214398544()
{
  result = qword_27C911EC8;
  if (!qword_27C911EC8)
  {
    result = swift_getWitnessTable(byte_214733F8C, &type metadata for IDSHealthInvitation.Status.DeclinedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911EC8);
  }

  return result;
}

unint64_t sub_214398598()
{
  result = qword_27C911ED0;
  if (!qword_27C911ED0)
  {
    result = swift_getWitnessTable(byte_214733F3C, &type metadata for IDSHealthInvitation.Status.AcceptedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911ED0);
  }

  return result;
}

unint64_t sub_2143985EC()
{
  result = qword_27C911ED8;
  if (!qword_27C911ED8)
  {
    result = swift_getWitnessTable(aW_5, &type metadata for IDSHealthInvitation.Status.PendingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911ED8);
  }

  return result;
}

uint64_t sub_214398640@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EE0, &qword_214732AB0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EE8, &qword_214732AB8);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EF0, &qword_214732AC0);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911EF8, &qword_214732AC8);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F00, &qword_214732AD0);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F08, &qword_214732AD8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214398448();
  v16 = v46;
  sub_2146DAA08();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_2146DA238();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_2146D9F58();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v26 = &type metadata for IDSHealthInvitation.Status;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_214398598();
          sub_2146DA0B8();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_2143985EC();
          sub_2146DA0B8();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_214398544();
          sub_2146DA0B8();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_2143984F0();
            v29 = v42;
            sub_2146DA0B8();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_21439849C();
            sub_2146DA0B8();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_214398DD0(uint64_t a1)
{
  v2 = sub_2143993EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214398E0C(uint64_t a1)
{
  v2 = sub_2143993EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214398E48()
{
  v1 = 0x676E69646E6570;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636361;
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

uint64_t sub_214398E9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21439DCA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214398EC4(uint64_t a1)
{
  v2 = sub_214399398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214398F00(uint64_t a1)
{
  v2 = sub_214399398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214398F3C(uint64_t a1)
{
  v2 = sub_214399494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214398F78(uint64_t a1)
{
  v2 = sub_214399494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214398FB4(uint64_t a1)
{
  v2 = sub_214399440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214398FF0(uint64_t a1)
{
  v2 = sub_214399440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21439902C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F10, &qword_214732AE0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F18, &qword_214732AE8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F20, &qword_214732AF0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F28, &qword_214732AF8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214399398();
  sub_2146DAA28();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_214399440();
      v9 = v21;
      sub_2146DA288();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_2143993EC();
      v9 = v24;
      sub_2146DA288();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_214399494();
    sub_2146DA288();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_214399398()
{
  result = qword_27C911F30;
  if (!qword_27C911F30)
  {
    result = swift_getWitnessTable(byte_214733E9C, &type metadata for IDSHealthInvitation.NotificationStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C911F30);
  }

  return result;
}

unint64_t sub_2143993EC()
{
  result = qword_27C911F38;
  if (!qword_27C911F38)
  {
    result = swift_getWitnessTable(byte_214733E4C, &type metadata for IDSHealthInvitation.NotificationStatus.AcceptedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911F38);
  }

  return result;
}

unint64_t sub_214399440()
{
  result = qword_27C911F40;
  if (!qword_27C911F40)
  {
    result = swift_getWitnessTable(aX_9, &type metadata for IDSHealthInvitation.NotificationStatus.PendingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911F40);
  }

  return result;
}

unint64_t sub_214399494()
{
  result = qword_27C911F48;
  if (!qword_27C911F48)
  {
    result = swift_getWitnessTable(aX_10, &type metadata for IDSHealthInvitation.NotificationStatus.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911F48);
  }

  return result;
}

uint64_t sub_2143994E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F50, &qword_214732B00);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F58, &qword_214732B08);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F60, &qword_214732B10);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F68, &qword_214732B18);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214399398();
  v13 = v43;
  sub_2146DAA08();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_2146DA238();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_214399440();
          v27 = v34;
          sub_2146DA0B8();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_2143993EC();
          v31 = v34;
          sub_2146DA0B8();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_214399494();
        v29 = v34;
        sub_2146DA0B8();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_2146D9F58();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
  *v23 = &type metadata for IDSHealthInvitation.NotificationStatus;
  sub_2146DA0E8();
  sub_2146D9F28();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_214399AEC()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 7562617;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746553746F6ELL;
  }
}

uint64_t sub_214399B30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21439DDC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214399B58(uint64_t a1)
{
  v2 = sub_21439A0A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214399B94(uint64_t a1)
{
  v2 = sub_21439A0A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214399BD0(uint64_t a1)
{
  v2 = sub_21439A14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214399C0C(uint64_t a1)
{
  v2 = sub_21439A14C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214399C48(uint64_t a1)
{
  v2 = sub_21439A1A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214399C84(uint64_t a1)
{
  v2 = sub_21439A1A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214399CC0(uint64_t a1)
{
  v2 = sub_21439A0F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214399CFC(uint64_t a1)
{
  v2 = sub_21439A0F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214399D38(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F70, &qword_214732B20);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F78, &qword_214732B28);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F80, &qword_214732B30);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911F88, &qword_214732B38);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21439A0A4();
  sub_2146DAA28();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_21439A14C();
      v9 = v21;
      sub_2146DA288();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_21439A0F8();
      v9 = v24;
      sub_2146DA288();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_21439A1A0();
    sub_2146DA288();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_21439A0A4()
{
  result = qword_27C911F90;
  if (!qword_27C911F90)
  {
    result = swift_getWitnessTable(byte_214733D5C, &type metadata for IDSHealthInvitation.WheelchairUse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C911F90);
  }

  return result;
}

unint64_t sub_21439A0F8()
{
  result = qword_27C911F98;
  if (!qword_27C911F98)
  {
    result = swift_getWitnessTable(byte_214733D0C, &type metadata for IDSHealthInvitation.WheelchairUse.YesCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911F98);
  }

  return result;
}

unint64_t sub_21439A14C()
{
  result = qword_27C911FA0;
  if (!qword_27C911FA0)
  {
    result = swift_getWitnessTable(aMy_0, &type metadata for IDSHealthInvitation.WheelchairUse.NoCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911FA0);
  }

  return result;
}

unint64_t sub_21439A1A0()
{
  result = qword_27C911FA8;
  if (!qword_27C911FA8)
  {
    result = swift_getWitnessTable(byte_214733C6C, &type metadata for IDSHealthInvitation.WheelchairUse.NotSetCodingKeys, v0, v1);
    atomic_store(result, &qword_27C911FA8);
  }

  return result;
}

uint64_t sub_21439A224@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911FB0, &qword_214732B40);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911FB8, &qword_214732B48);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911FC0, &qword_214732B50);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911FC8, &qword_214732B58);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21439A0A4();
  v13 = v43;
  sub_2146DAA08();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_2146DA238();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_21439A14C();
          v27 = v34;
          sub_2146DA0B8();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_21439A0F8();
          v31 = v34;
          sub_2146DA0B8();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_21439A1A0();
        v29 = v34;
        sub_2146DA0B8();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_2146D9F58();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
  *v23 = &type metadata for IDSHealthInvitation.WheelchairUse;
  sub_2146DA0E8();
  sub_2146D9F28();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_21439A818(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *v2;
  v9 = *(v2 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439A95C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

void (*sub_21439AA34(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439DFB4;
}

uint64_t sub_21439AC84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21439AD20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21439ADE8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439AF38(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21439B024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21439B094(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21439B12C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_21439B1D8@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_21439B20C(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t sub_21439B284@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21439B320(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21439B3E8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439B538(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21439B624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21439B694(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21439B72C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 36);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_21439B7D8()
{
  type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
}

uint64_t sub_21439B80C(uint64_t a1)
{
  v3 = *(type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21439B894(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *v2;
  v9 = *(v2 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439B9D8(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439BAB0;
  }

  return result;
}

void (*sub_21439BAB4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439BB54;
}

uint64_t sub_21439BB58()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_21439BB88(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_21439BBE0()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_21439BC10(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

BlastDoor::HKProfileType_optional __swiftcall HKProfileType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 2)
  {
    if (rawValue == 1)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 2)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 100)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 4)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 3)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

unint64_t sub_21439BCF4()
{
  result = qword_27C911FD0;
  if (!qword_27C911FD0)
  {
    result = swift_getWitnessTable(aIu, &type metadata for IDSHealthInvitation.InvitationType, v0, v1);
    atomic_store(result, &qword_27C911FD0);
  }

  return result;
}

unint64_t sub_21439BD78()
{
  result = qword_27C911FD8;
  if (!qword_27C911FD8)
  {
    result = swift_getWitnessTable(byte_214732C34, &type metadata for IDSHealthInvitation.Direction, v0, v1);
    atomic_store(result, &qword_27C911FD8);
  }

  return result;
}

unint64_t sub_21439BDFC()
{
  result = qword_27C911FE0;
  if (!qword_27C911FE0)
  {
    result = swift_getWitnessTable(byte_214732D08, &type metadata for IDSHealthInvitation.Status, v0, v1);
    atomic_store(result, &qword_27C911FE0);
  }

  return result;
}

unint64_t sub_21439BE80()
{
  result = qword_27C911FE8;
  if (!qword_27C911FE8)
  {
    result = swift_getWitnessTable(byte_214732DDC, &type metadata for IDSHealthInvitation.NotificationStatus, v0, v1);
    atomic_store(result, &qword_27C911FE8);
  }

  return result;
}

unint64_t sub_21439BF04()
{
  result = qword_27C911FF0;
  if (!qword_27C911FF0)
  {
    result = swift_getWitnessTable(byte_214732EB0, &type metadata for IDSHealthInvitation.WheelchairUse, v0, v1);
    atomic_store(result, &qword_27C911FF0);
  }

  return result;
}

uint64_t sub_21439BF84(uint64_t a1)
{
  *(a1 + 8) = sub_21439C008(&qword_27C9075D8, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata, aR_7);
  result = sub_21439C008(&qword_27C907678, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata, aQ_78);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21439C008(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21439C07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21439C0B8(uint64_t a1)
{
  *(a1 + 8) = sub_21439C008(&qword_27C90CB10, type metadata accessor for IDSHealthInvitation, byte_2146FA360);
  result = sub_21439C008(&qword_27C90CAD8, type metadata accessor for IDSHealthInvitation, aQ_8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21439C164()
{
  result = qword_27C911FF8;
  if (!qword_27C911FF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HKProfileType, &type metadata for HKProfileType, v0, v1);
    atomic_store(result, &qword_27C911FF8);
  }

  return result;
}

uint64_t sub_21439C1B8()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2147342B8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21439C240(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2147342B8[v2]);
  return sub_2146DA9B8();
}

void sub_21439C384(uint64_t a1)
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v1 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E568, &unk_27C904F20, &qword_2146EE8A0);
    if (v2 <= 0x3F)
    {
      sub_21439C90C(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21439C90C(319, &qword_27C912010, &type metadata for IDSHealthInvitation.InvitationType, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21439C90C(319, &qword_27C912018, &type metadata for IDSHealthInvitation.Direction, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21439C90C(319, &qword_27C912020, &type metadata for IDSHealthInvitation.Status, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_21439C6D4(319, &qword_27C912028, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_21439C6D4(319, &qword_280B35230, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_21439C6D4(319, &qword_27C912030, type metadata accessor for CloudKitShareParticipant, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_21439C90C(319, &qword_27C912038, &type metadata for IDSHealthInvitation.NotificationStatus, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_21439C90C(319, &qword_27C912040, &type metadata for IDSHealthInvitation.SharingAuthorization, MEMORY[0x277D83940]);
                      if (v11 <= 0x3F)
                      {
                        sub_21439C90C(319, &qword_27C912048, &type metadata for IDSHealthInvitation.WheelchairUse, MEMORY[0x277D83D88]);
                        if (v12 <= 0x3F)
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
      }
    }
  }
}

void sub_21439C6D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21439C7B0(uint64_t a1)
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v1 <= 0x3F)
  {
    sub_21439C6D4(319, &qword_27C912030, type metadata accessor for CloudKitShareParticipant, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21439C90C(319, &qword_27C912060, &type metadata for HKProfileType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21439C6D4(319, &qword_27C912068, type metadata accessor for CloudKitSharingToken, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21439C90C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
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

uint64_t sub_21439C980(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21439C9C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_21439CB7C()
{
  result = qword_27C912070;
  if (!qword_27C912070)
  {
    result = swift_getWitnessTable(aUk, &type metadata for IDSHealthInvitation.InvitationType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912070);
  }

  return result;
}

unint64_t sub_21439CBD4()
{
  result = qword_27C912078;
  if (!qword_27C912078)
  {
    result = swift_getWitnessTable(byte_2147336AC, &type metadata for IDSHealthInvitation.Direction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912078);
  }

  return result;
}

unint64_t sub_21439CC2C()
{
  result = qword_27C912080;
  if (!qword_27C912080)
  {
    result = swift_getWitnessTable(byte_2147338F4, &type metadata for IDSHealthInvitation.Status.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912080);
  }

  return result;
}

unint64_t sub_21439CC84()
{
  result = qword_27C912088;
  if (!qword_27C912088)
  {
    result = swift_getWitnessTable(aF_4, &type metadata for IDSHealthInvitation.NotificationStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912088);
  }

  return result;
}

unint64_t sub_21439CCDC()
{
  result = qword_27C912090;
  if (!qword_27C912090)
  {
    result = swift_getWitnessTable(byte_214733C44, &type metadata for IDSHealthInvitation.WheelchairUse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912090);
  }

  return result;
}

unint64_t sub_21439CD34()
{
  result = qword_27C912098;
  if (!qword_27C912098)
  {
    result = swift_getWitnessTable(aT_15, &type metadata for IDSHealthInvitation.WheelchairUse.NotSetCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912098);
  }

  return result;
}

unint64_t sub_21439CD8C()
{
  result = qword_27C9120A0;
  if (!qword_27C9120A0)
  {
    result = swift_getWitnessTable(aMp_3, &type metadata for IDSHealthInvitation.WheelchairUse.NotSetCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120A0);
  }

  return result;
}

unint64_t sub_21439CDE4()
{
  result = qword_27C9120A8;
  if (!qword_27C9120A8)
  {
    result = swift_getWitnessTable(byte_214733B14, &type metadata for IDSHealthInvitation.WheelchairUse.NoCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120A8);
  }

  return result;
}

unint64_t sub_21439CE3C()
{
  result = qword_27C9120B0;
  if (!qword_27C9120B0)
  {
    result = swift_getWitnessTable(byte_214733B3C, &type metadata for IDSHealthInvitation.WheelchairUse.NoCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120B0);
  }

  return result;
}

unint64_t sub_21439CE94()
{
  result = qword_27C9120B8;
  if (!qword_27C9120B8)
  {
    result = swift_getWitnessTable(byte_214733AC4, &type metadata for IDSHealthInvitation.WheelchairUse.YesCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120B8);
  }

  return result;
}

unint64_t sub_21439CEEC()
{
  result = qword_27C9120C0;
  if (!qword_27C9120C0)
  {
    result = swift_getWitnessTable(byte_214733AEC, &type metadata for IDSHealthInvitation.WheelchairUse.YesCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120C0);
  }

  return result;
}

unint64_t sub_21439CF44()
{
  result = qword_27C9120C8;
  if (!qword_27C9120C8)
  {
    result = swift_getWitnessTable(byte_214733BB4, &type metadata for IDSHealthInvitation.WheelchairUse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120C8);
  }

  return result;
}

unint64_t sub_21439CF9C()
{
  result = qword_27C9120D0;
  if (!qword_27C9120D0)
  {
    result = swift_getWitnessTable(byte_214733BDC, &type metadata for IDSHealthInvitation.WheelchairUse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120D0);
  }

  return result;
}

unint64_t sub_21439CFF4()
{
  result = qword_27C9120D8;
  if (!qword_27C9120D8)
  {
    result = swift_getWitnessTable(byte_2147339BC, &type metadata for IDSHealthInvitation.NotificationStatus.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120D8);
  }

  return result;
}

unint64_t sub_21439D04C()
{
  result = qword_27C9120E0;
  if (!qword_27C9120E0)
  {
    result = swift_getWitnessTable(byte_2147339E4, &type metadata for IDSHealthInvitation.NotificationStatus.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120E0);
  }

  return result;
}

unint64_t sub_21439D0A4()
{
  result = qword_27C9120E8;
  if (!qword_27C9120E8)
  {
    result = swift_getWitnessTable(a5v, &type metadata for IDSHealthInvitation.NotificationStatus.PendingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120E8);
  }

  return result;
}

unint64_t sub_21439D0FC()
{
  result = qword_27C9120F0;
  if (!qword_27C9120F0)
  {
    result = swift_getWitnessTable(aEr, &type metadata for IDSHealthInvitation.NotificationStatus.PendingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120F0);
  }

  return result;
}

unint64_t sub_21439D154()
{
  result = qword_27C9120F8;
  if (!qword_27C9120F8)
  {
    result = swift_getWitnessTable(byte_21473391C, &type metadata for IDSHealthInvitation.NotificationStatus.AcceptedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9120F8);
  }

  return result;
}

unint64_t sub_21439D1AC()
{
  result = qword_27C912100;
  if (!qword_27C912100)
  {
    result = swift_getWitnessTable(byte_214733944, &type metadata for IDSHealthInvitation.NotificationStatus.AcceptedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912100);
  }

  return result;
}

unint64_t sub_21439D204()
{
  result = qword_27C912108;
  if (!qword_27C912108)
  {
    result = swift_getWitnessTable(byte_214733A0C, &type metadata for IDSHealthInvitation.NotificationStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912108);
  }

  return result;
}

unint64_t sub_21439D25C()
{
  result = qword_27C912110;
  if (!qword_27C912110)
  {
    result = swift_getWitnessTable(byte_214733A34, &type metadata for IDSHealthInvitation.NotificationStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912110);
  }

  return result;
}

unint64_t sub_21439D2B4()
{
  result = qword_27C912118;
  if (!qword_27C912118)
  {
    result = swift_getWitnessTable(byte_214733814, &type metadata for IDSHealthInvitation.Status.PendingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912118);
  }

  return result;
}

unint64_t sub_21439D30C()
{
  result = qword_27C912120;
  if (!qword_27C912120)
  {
    result = swift_getWitnessTable(byte_21473383C, &type metadata for IDSHealthInvitation.Status.PendingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912120);
  }

  return result;
}

unint64_t sub_21439D364()
{
  result = qword_27C912128;
  if (!qword_27C912128)
  {
    result = swift_getWitnessTable(byte_2147337C4, &type metadata for IDSHealthInvitation.Status.AcceptedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912128);
  }

  return result;
}

unint64_t sub_21439D3BC()
{
  result = qword_27C912130;
  if (!qword_27C912130)
  {
    result = swift_getWitnessTable(byte_2147337EC, &type metadata for IDSHealthInvitation.Status.AcceptedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912130);
  }

  return result;
}

unint64_t sub_21439D414()
{
  result = qword_27C912138;
  if (!qword_27C912138)
  {
    result = swift_getWitnessTable(aX_11, &type metadata for IDSHealthInvitation.Status.DeclinedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912138);
  }

  return result;
}

unint64_t sub_21439D46C()
{
  result = qword_27C912140;
  if (!qword_27C912140)
  {
    result = swift_getWitnessTable(aT_16, &type metadata for IDSHealthInvitation.Status.DeclinedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912140);
  }

  return result;
}

unint64_t sub_21439D4C4()
{
  result = qword_27C912148;
  if (!qword_27C912148)
  {
    result = swift_getWitnessTable(aX_12, &type metadata for IDSHealthInvitation.Status.RescindedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912148);
  }

  return result;
}

unint64_t sub_21439D51C()
{
  result = qword_27C912150;
  if (!qword_27C912150)
  {
    result = swift_getWitnessTable(byte_21473374C, &type metadata for IDSHealthInvitation.Status.RescindedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912150);
  }

  return result;
}

unint64_t sub_21439D574()
{
  result = qword_27C912158;
  if (!qword_27C912158)
  {
    result = swift_getWitnessTable(byte_2147336D4, &type metadata for IDSHealthInvitation.Status.RevokedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912158);
  }

  return result;
}

unint64_t sub_21439D5CC()
{
  result = qword_27C912160;
  if (!qword_27C912160)
  {
    result = swift_getWitnessTable(byte_2147336FC, &type metadata for IDSHealthInvitation.Status.RevokedCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912160);
  }

  return result;
}

unint64_t sub_21439D624()
{
  result = qword_27C912168;
  if (!qword_27C912168)
  {
    result = swift_getWitnessTable(aW_6, &type metadata for IDSHealthInvitation.Status.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912168);
  }

  return result;
}

unint64_t sub_21439D67C()
{
  result = qword_27C912170;
  if (!qword_27C912170)
  {
    result = swift_getWitnessTable(aMs_0, &type metadata for IDSHealthInvitation.Status.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912170);
  }

  return result;
}

unint64_t sub_21439D6D4()
{
  result = qword_27C912178;
  if (!qword_27C912178)
  {
    result = swift_getWitnessTable(byte_2147335CC, &type metadata for IDSHealthInvitation.Direction.OutgoingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912178);
  }

  return result;
}

unint64_t sub_21439D72C()
{
  result = qword_27C912180;
  if (!qword_27C912180)
  {
    result = swift_getWitnessTable(byte_2147335F4, &type metadata for IDSHealthInvitation.Direction.OutgoingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912180);
  }

  return result;
}

unint64_t sub_21439D784()
{
  result = qword_27C912188;
  if (!qword_27C912188)
  {
    result = swift_getWitnessTable(aZ_6, &type metadata for IDSHealthInvitation.Direction.IncomingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912188);
  }

  return result;
}

unint64_t sub_21439D7DC()
{
  result = qword_27C912190;
  if (!qword_27C912190)
  {
    result = swift_getWitnessTable(a5v_0, &type metadata for IDSHealthInvitation.Direction.IncomingCodingKeys, v0, v1);
    atomic_store(result, &qword_27C912190);
  }

  return result;
}

unint64_t sub_21439D834()
{
  result = qword_27C912198;
  if (!qword_27C912198)
  {
    result = swift_getWitnessTable(byte_21473361C, &type metadata for IDSHealthInvitation.Direction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912198);
  }

  return result;
}

unint64_t sub_21439D88C()
{
  result = qword_27C9121A0;
  if (!qword_27C9121A0)
  {
    result = swift_getWitnessTable(byte_214733644, &type metadata for IDSHealthInvitation.Direction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9121A0);
  }

  return result;
}

unint64_t sub_21439D8E4()
{
  result = qword_27C9121A8;
  if (!qword_27C9121A8)
  {
    result = swift_getWitnessTable(asc_214733474, &type metadata for IDSHealthInvitation.InvitationType.InviteCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9121A8);
  }

  return result;
}

unint64_t sub_21439D93C()
{
  result = qword_27C9121B0;
  if (!qword_27C9121B0)
  {
    result = swift_getWitnessTable(aW_7, &type metadata for IDSHealthInvitation.InvitationType.InviteCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9121B0);
  }

  return result;
}

unint64_t sub_21439D994()
{
  result = qword_27C9121B8;
  if (!qword_27C9121B8)
  {
    result = swift_getWitnessTable(asc_214733424, &type metadata for IDSHealthInvitation.InvitationType.RequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9121B8);
  }

  return result;
}

unint64_t sub_21439D9EC()
{
  result = qword_27C9121C0;
  if (!qword_27C9121C0)
  {
    result = swift_getWitnessTable(byte_21473344C, &type metadata for IDSHealthInvitation.InvitationType.RequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9121C0);
  }

  return result;
}

unint64_t sub_21439DA44()
{
  result = qword_27C9121C8;
  if (!qword_27C9121C8)
  {
    result = swift_getWitnessTable(byte_2147334C4, &type metadata for IDSHealthInvitation.InvitationType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9121C8);
  }

  return result;
}

unint64_t sub_21439DA9C()
{
  result = qword_27C9121D0;
  if (!qword_27C9121D0)
  {
    result = swift_getWitnessTable(byte_2147334EC, &type metadata for IDSHealthInvitation.InvitationType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9121D0);
  }

  return result;
}

uint64_t sub_21439DAF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646E6963736572 && a2 == 0xE900000000000064 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656B6F766572 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_21439DCA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_21439DDC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746553746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28526 && a2 == 0xE200000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7562617 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

unint64_t sub_21439DECC()
{
  result = qword_27C9121D8;
  if (!qword_27C9121D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HKProfileType, &type metadata for HKProfileType, v0, v1);
    atomic_store(result, &qword_27C9121D8);
  }

  return result;
}

unint64_t sub_21439DFD0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = sub_213FDC8D0;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21439E120@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSFileTransferInfo(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t type metadata accessor for RCSFileTransferInfo(uint64_t a1)
{
  result = qword_27C9121E0;
  if (!qword_27C9121E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21439E1D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for RCSFileTransferInfo(0) + 24));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21439E250()
{
  v1 = v0 + *(type metadata accessor for RCSFileTransferInfo(0) + 24);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_21439E2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFileInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21439E358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFileInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21439E3DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSFileTransferInfo(0) + 20);

  return sub_21439E420(v3, a1);
}

uint64_t sub_21439E420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21439E490(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSFileTransferInfo(0) + 20);

  return sub_21439E4D4(a1, v3);
}

uint64_t sub_21439E4D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21439E58C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RCSFileTransferInfo(0) + 24);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21439E628(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for RCSFileTransferInfo(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21439E6F0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RCSFileTransferInfo(0) + 24);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21439E840(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for RCSFileTransferInfo(0) + 24);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_21439E92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for RCSFileTransferInfo(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21439E99C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for RCSFileTransferInfo(0) + 24);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21439EA34(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for RCSFileTransferInfo(0) + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t sub_21439EAE0(uint64_t a1)
{
  *(a1 + 8) = sub_21439EB48(&qword_27C90D4B8, aIgm);
  result = sub_21439EB48(&qword_27C90D458, byte_2146FC7C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21439EB48(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for RCSFileTransferInfo(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21439EBB4(uint64_t a1)
{
  type metadata accessor for RCSFileInfo(319);
  if (v1 <= 0x3F)
  {
    sub_21439EC50(319);
    if (v2 <= 0x3F)
    {
      sub_214084AA4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21439EC50(uint64_t a1)
{
  if (!qword_27C9121F0)
  {
    type metadata accessor for RCSFileInfo(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_27C9121F0);
    }
  }
}

uint64_t sub_21439ECA8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = v1 + *(type metadata accessor for CloudKitSharingToken(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v6 + *(v7 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  sub_213FB2DF4(v5, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CloudKitSharingToken(uint64_t a1)
{
  result = qword_27C912200;
  if (!qword_27C912200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21439EE8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439EEE4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_21439EF4C()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439EFD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F02C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[2].n128_i64[0];
  v7 = v1[2].n128_u64[1];

  sub_213FDC6BC(v6, v7);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21439F094()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 32);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439F11C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F174(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_21439F1DC()
{
  v1 = *(v0 + 80);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 72);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439F264@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F2BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_u64[1];

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21439F324@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F37C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21439F3E4()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439F46C()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_21439F4F4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 0x100000;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_21439F65C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 0x100000;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_21439F7C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21439F81C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t sub_21439F884@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21439F8DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_21439F944@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21439F99C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[11].n128_i64[0];
  v7 = v1[11].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21439FA04()
{
  v1 = *(v0 + 48);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 40);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439FA8C()
{
  v1 = *(v0 + 144);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 136);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21439FB14()
{
  v1 = *(v0 + 184);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 176);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_21439FB9C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 0x100000;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_21439FD04@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = sub_214069764(&unk_282652C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v4 + 16) = sub_21409A858;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = sub_214069888(&unk_282652D30);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21409A860;
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  return sub_214042F80(inited, a1);
}

unint64_t sub_21439FE30@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21405980C;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21439FF50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v5 = *(v1 + 320);
  *a1 = *(v1 + 288);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21439FFA8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[19].n128_i64[0];
  v7 = v1[19].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[18] = *a1;
  v1[19].n128_u64[0] = v3;
  v1[19].n128_u64[1] = v4;
  v1[20].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143A0058(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudKitSharingToken(0) + 24);

  return sub_2143A009C(a1, v3);
}

uint64_t sub_2143A009C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143A010C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CloudKitSharingToken(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2143A0178(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CloudKitSharingToken(0) + 28));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143A01F0()
{
  v1 = *(v0 + 312);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 304);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143A0278()
{
  v1 = v0 + *(type metadata accessor for CloudKitSharingToken(0) + 28);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_2143A0338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 24);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A03AC(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A045C(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A0528(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 32);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A05C8;
  }

  return result;
}

uint64_t sub_2143A05C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A0708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A075C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v8, v9);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

void (*sub_2143A07E4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A0884;
}

void sub_2143A0884(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  if (a2)
  {

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v10);
    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6BC(v11, v12);
  }

  else
  {

    sub_213FDC6BC(v9, v10);
    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
  }

  free(v2);
}

uint64_t sub_2143A09B4(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2143A09E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 32);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A0A58(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A0B08(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A0BD4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 40);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 32);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A0C74;
  }

  return result;
}

uint64_t sub_2143A0C74(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A0DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A0E08(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v8, v9);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

void (*sub_2143A0E90(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A0F30;
}

void sub_2143A0F30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  if (a2)
  {

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v10);
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6BC(v11, v12);
  }

  else
  {

    sub_213FDC6BC(v9, v10);
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
  }

  free(v2);
}

uint64_t sub_2143A1010@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_2142EB0A8(v7, v6);
}

__n128 sub_2143A105C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  sub_2142EB000(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_2143A10DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 72);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A1150(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A1200(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A12CC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 80);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 72);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A136C;
  }

  return result;
}

uint64_t sub_2143A136C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A14AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A1500(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v8, v9);
  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  return result;
}

void (*sub_2143A1588(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A1628;
}

void sub_2143A1628(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  if (a2)
  {

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v10);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6BC(v11, v12);
  }

  else
  {

    sub_213FDC6BC(v9, v10);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
  }

  free(v2);
}

uint64_t sub_2143A1728(uint64_t result)
{
  *(v1 + 92) = result;
  *(v1 + 96) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2143A1760(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2143A17E4(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2143A183C(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_2143A1888@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 16);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A18FC(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A19A8(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A1A70(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A1B10;
  }

  return result;
}

uint64_t sub_2143A1B10(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A1C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A1C9C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v8, v9);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_2143A1D24(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A1DC4;
}

void sub_2143A1DC4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (a2)
  {

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v10);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6BC(v11, v12);
  }

  else
  {

    sub_213FDC6BC(v9, v10);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t sub_2143A1ED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 56);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A1F48(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A1FF8(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A20C4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A2164;
  }

  return result;
}

uint64_t sub_2143A2164(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A22A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A22F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v8, v9);
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  return result;
}

void (*sub_2143A2380(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A2420;
}

void sub_2143A2420(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  if (a2)
  {

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v10);
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6BC(v11, v12);
  }

  else
  {

    sub_213FDC6BC(v9, v10);
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
  }

  free(v2);
}

uint64_t sub_2143A2500@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t sub_2143A2544(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_2143A25B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 40);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143A2624(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A26D4(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143A27A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 48);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 40);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143A2840;
  }

  return result;
}

uint64_t sub_2143A2840(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143A2980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143A29D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

void (*sub_2143A2A5C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  *v4 = *(v1 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143A2AFC;
}

void sub_2143A2AFC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
  }

  free(v2);
}

void sub_2143A2BDC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 112);
  sub_2143A2C00(v2, v3, v4, v5, v6, v7);
}

void sub_2143A2C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {

    sub_213FDCA18(a5, a6);
  }
}

__n128 sub_2143A2C4C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_2143A2CA8(*(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v7;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 112) = v5;
  return result;
}

void sub_2143A2CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {

    sub_213FDC6BC(a5, a6);
  }
}

uint64_t sub_2143A2D14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 136);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_2143A2D88(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A2E38(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2143A2F04(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 144);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 136);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A2FA4;
  }

  return result;
}

uint64_t sub_2143A2FA4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_2143A30E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  *a2 = *(a1 + 120);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2143A3138(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 136);
  v9 = *(a2 + 144);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v8, v9);
  *(a2 + 120) = v4;
  *(a2 + 128) = v3;
  *(a2 + 136) = v5;
  *(a2 + 144) = v6;
  *(a2 + 152) = v7;
  return result;
}

void (*sub_2143A31C0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A3260;
}

void sub_2143A3260(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 136);
  v10 = *(v3 + 144);
  if (a2)
  {

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v10);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6BC(v11, v12);
  }

  else
  {

    sub_213FDC6BC(v9, v10);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
  }

  free(v2);
}

uint64_t sub_2143A3340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 184);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 176);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143A33B4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A3464(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143A3530(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 184);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 176);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143A35D0;
  }

  return result;
}

uint64_t sub_2143A35D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143A3710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);
  v5 = *(a1 + 192);
  *a2 = *(a1 + 160);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143A3764(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 176);
  v9 = *(a2 + 184);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 160) = v4;
  *(a2 + 168) = v3;
  *(a2 + 176) = v5;
  *(a2 + 184) = v6;
  *(a2 + 192) = v7;
  return result;
}

void (*sub_2143A37EC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143A388C;
}

void sub_2143A388C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 176);
  v10 = *(v3 + 184);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
  }

  free(v2);
}

uint64_t sub_2143A396C@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  v9 = *(v1 + 232);
  v10[0] = v3;
  v8[0] = *(v1 + 200);
  v4 = v8[0];
  v8[1] = v2;
  *(v10 + 9) = *(v1 + 257);
  v5 = *(v10 + 9);
  a1[2] = v9;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v2;
  *(a1 + 57) = v5;
  return sub_213FB2E54(v8, &v7, &qword_27C906460, &qword_2146F4370);
}

__n128 sub_2143A39D4(__int128 *a1)
{
  v3 = *(v1 + 216);
  v4 = *(v1 + 248);
  v8[2] = *(v1 + 232);
  v9[0] = v4;
  v8[0] = *(v1 + 200);
  v8[1] = v3;
  *(v9 + 9) = *(v1 + 257);
  sub_213FB2DF4(v8, &qword_27C906460, &qword_2146F4370);
  v5 = *a1;
  *(v1 + 216) = a1[1];
  v6 = a1[3];
  *(v1 + 232) = a1[2];
  *(v1 + 248) = v6;
  result = *(a1 + 57);
  *(v1 + 257) = result;
  *(v1 + 200) = v5;
  return result;
}

uint64_t sub_2143A3A8C(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 280) = v2;
  return result;
}

uint64_t sub_2143A3AD8@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x120uLL);
  memcpy(a1, v1, 0x120uLL);
  return sub_2142EBBC4(__dst, v4);
}

void *sub_2143A3B2C(const void *a1)
{
  memcpy(__dst, v1, 0x120uLL);
  sub_2142EB96C(__dst);
  return memcpy(v1, a1, 0x120uLL);
}

uint64_t sub_2143A3B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 312);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 304);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143A3C10(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A3CC0(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143A3D8C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 312);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 304);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143A3E2C;
  }

  return result;
}

uint64_t sub_2143A3E2C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143A3F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 296);
  v3 = *(a1 + 304);
  v4 = *(a1 + 312);
  v5 = *(a1 + 320);
  *a2 = *(a1 + 288);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143A3FC0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 304);
  v9 = *(a2 + 312);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 288) = v4;
  *(a2 + 296) = v3;
  *(a2 + 304) = v5;
  *(a2 + 312) = v6;
  *(a2 + 320) = v7;
  return result;
}

void (*sub_2143A4048(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 296);
  v6 = *(v1 + 304);
  v7 = *(v1 + 312);
  v8 = *(v1 + 320);
  *v4 = *(v1 + 288);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143A40E8;
}

void sub_2143A40E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 304);
  v10 = *(v3 + 312);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 288) = v5;
    *(v3 + 296) = v4;
    *(v3 + 304) = v7;
    *(v3 + 312) = v6;
    *(v3 + 320) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 288) = v5;
    *(v3 + 296) = v4;
    *(v3 + 304) = v7;
    *(v3 + 312) = v6;
    *(v3 + 320) = v8;
  }

  free(v2);
}

uint64_t sub_2143A41C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = a1 + *(type metadata accessor for CloudKitSharingToken(0) + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  sub_213FB2DF4(v6, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143A4364(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  type metadata accessor for CloudKitSharingToken(0);
  sub_21402F904(v6);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_2143A44A4(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for CloudKitSharingToken(0);
  sub_21402F904(v5);
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2143A45A0(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CloudKitSharingToken(0) + 24);
  *(v5 + 12) = v15;
  v16 = v1 + v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v16 + *(v17 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_2143A47E0;
  }

  return result;
}

void sub_2143A47E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    sub_21402F904(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v7 = v2[1];
    sub_21402F904(*(*a1 + 40));
  }

  free(v4);
  free(v3);
  free(v7);

  free(v2);
}

void (*sub_2143A48B0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for CloudKitSharingToken(0) + 24);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &unk_27C9131D0, &qword_2146EAA70);
  return sub_2143A4970;
}

void sub_2143A4970(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_2143A009C(v1, *a1 + *(a1 + 16));

  free(v1);
}

uint64_t sub_2143A49B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CloudKitSharingToken(0) + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2143A4A50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CloudKitSharingToken(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A4B18(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitSharingToken(0) + 28);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2143A4C68(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CloudKitSharingToken(0) + 28);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_2143A4D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CloudKitSharingToken(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2143A4DC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CloudKitSharingToken(0) + 28);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2143A4E5C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for CloudKitSharingToken(0) + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t sub_2143A4F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143A5078(uint64_t a1)
{
  *(a1 + 8) = sub_2143A50E0(&qword_27C9057A0, a9_29);
  result = sub_2143A50E0(&qword_27C9057C0, byte_2146F88F8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143A50E0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CloudKitSharingToken(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2143A5124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2143A516C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143A51C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143A5210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143A5270(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143A52B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143A5368(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2143A53B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSgSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17CloudStorageSPKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor21CloudStorageSignatureVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2143A546C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_2143A54B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2143A5578(uint64_t a1)
{
  sub_21409A2B4(319, &qword_27C912210, &qword_27C905680, &unk_2146F3CE0);
  if (v1 <= 0x3F)
  {
    sub_2143A5654(319);
    if (v2 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2143A5654(uint64_t a1)
{
  if (!qword_280B2E580)
  {
    v2 = sub_2146D8958();
    v5 = type metadata accessor for Validated(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280B2E580);
    }
  }
}

uint64_t sub_2143A56AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2143A5734()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6910;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  if (v1 && (v6 = MEMORY[0x277D837D0], *(inited + 48) = v2, *(inited + 56) = v1, *(inited + 72) = v6, *(inited + 80) = 1954047348, *(inited + 88) = 0xE400000000000000, v3))
  {
    *(inited + 120) = v6;
    *(inited + 96) = v4;
    *(inited + 104) = v3;
    v7 = inited;

    v8 = sub_2140457C0(v7);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    return v8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143A5880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v53 = a2;
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = *(v3 + 200);
  v106[8] = *(v3 + 184);
  v106[9] = v9;
  v10 = *(v3 + 232);
  v106[10] = *(v3 + 216);
  v106[11] = v10;
  v11 = *(v3 + 136);
  v106[4] = *(v3 + 120);
  v106[5] = v11;
  v12 = *(v3 + 168);
  v106[6] = *(v3 + 152);
  v106[7] = v12;
  v13 = *(v3 + 72);
  v106[0] = *(v3 + 56);
  v106[1] = v13;
  v14 = *(v3 + 104);
  v106[2] = *(v3 + 88);
  v106[3] = v14;
  v15 = *(v3 + 200);
  v100 = *(v3 + 184);
  v101 = v15;
  v16 = *(v3 + 232);
  v102 = *(v3 + 216);
  v103 = v16;
  v17 = *(v3 + 136);
  v96 = *(v3 + 120);
  v97 = v17;
  v18 = *(v3 + 168);
  v98 = *(v3 + 152);
  v99 = v18;
  v19 = *(v3 + 72);
  v92 = *(v3 + 56);
  v93 = v19;
  v20 = *(v3 + 104);
  v94 = *(v3 + 88);
  v95 = v20;
  *&v54[2] = a3;
  v54[3] = a1;
  v21 = *(v8 + 8);
  sub_21407CE3C(v106, &v80);
  type metadata accessor for CGImage(0);
  v23 = v22;
  v21(&v104, &v92, sub_2143A5D90, v54, v22, v7, v8);
  if (v4)
  {
    v88 = v100;
    v89 = v101;
    v90 = v102;
    v91 = v103;
    v84 = v96;
    v85 = v97;
    v86 = v98;
    v87 = v99;
    v80 = v92;
    v81 = v93;
    v82 = v94;
    v83 = v95;
    return sub_213FB2DF4(&v80, &qword_27C904D00, &qword_2146EF6E0);
  }

  v88 = v100;
  v89 = v101;
  v90 = v102;
  v91 = v103;
  v84 = v96;
  v85 = v97;
  v86 = v98;
  v87 = v99;
  v80 = v92;
  v81 = v93;
  v82 = v94;
  v83 = v95;
  sub_213FB2DF4(&v80, &qword_27C904D00, &qword_2146EF6E0);
  v25 = v104;
  if (v104)
  {
    v105 = v104;
LABEL_5:
    v26 = v53;
    *(v53 + 24) = v23;
    *(v26 + 32) = &off_28268E9F0;
    *v26 = v25;
    v27 = *(v3 + 200);
    v76 = *(v3 + 184);
    v77 = v27;
    v28 = *(v3 + 232);
    v78 = *(v3 + 216);
    v79 = v28;
    v29 = *(v3 + 136);
    v72 = *(v3 + 120);
    v73 = v29;
    v30 = *(v3 + 168);
    v74 = *(v3 + 152);
    v75 = v30;
    v31 = *(v3 + 72);
    v68 = *(v3 + 56);
    v69 = v31;
    v32 = *(v3 + 104);
    v70 = *(v3 + 88);
    v71 = v32;
    *(v26 + 40) = 0;
    *(v26 + 48) = 1;
    *(v26 + 184) = *(v3 + 184);
    *(v26 + 200) = *(v3 + 200);
    *(v26 + 216) = *(v3 + 216);
    *(v26 + 232) = *(v3 + 232);
    *(v26 + 120) = *(v3 + 120);
    *(v26 + 136) = *(v3 + 136);
    *(v26 + 152) = *(v3 + 152);
    *(v26 + 168) = *(v3 + 168);
    *(v26 + 56) = *(v3 + 56);
    *(v26 + 72) = *(v3 + 72);
    *(v26 + 88) = *(v3 + 88);
    *(v26 + 104) = *(v3 + 104);
    return sub_21407CE3C(&v68, &v56);
  }

  v33 = *(v3 + 32);
  v51 = *(v3 + 24);
  v34 = __swift_project_boxed_opaque_existential_1(v3, v51);
  v52 = &v50;
  v35 = *(v3 + 200);
  v76 = *(v3 + 184);
  v77 = v35;
  v36 = *(v3 + 232);
  v78 = *(v3 + 216);
  v79 = v36;
  v37 = *(v3 + 136);
  v72 = *(v3 + 120);
  v73 = v37;
  v38 = *(v3 + 168);
  v74 = *(v3 + 152);
  v75 = v38;
  v39 = *(v3 + 72);
  v68 = *(v3 + 56);
  v69 = v39;
  v40 = *(v3 + 104);
  v70 = *(v3 + 88);
  v71 = v40;
  v41 = *(v3 + 200);
  v64 = *(v3 + 184);
  v65 = v41;
  v42 = *(v3 + 232);
  v66 = *(v3 + 216);
  v67 = v42;
  v43 = *(v3 + 136);
  v60 = *(v3 + 120);
  v61 = v43;
  v44 = *(v3 + 168);
  v62 = *(v3 + 152);
  v63 = v44;
  v45 = *(v3 + 72);
  v56 = *(v3 + 56);
  v57 = v45;
  v46 = *(v3 + 104);
  v58 = *(v3 + 88);
  v59 = v46;
  MEMORY[0x28223BE20](v34);
  *&v49[2] = a3;
  v47 = *(v33 + 16);
  sub_21407CE3C(&v68, v55);
  v47(&v105, &v56, sub_2143A6190, v49, v23, v51, v33);
  v55[8] = v64;
  v55[9] = v65;
  v55[10] = v66;
  v55[11] = v67;
  v55[4] = v60;
  v55[5] = v61;
  v55[6] = v62;
  v55[7] = v63;
  v55[0] = v56;
  v55[1] = v57;
  v55[2] = v58;
  v55[3] = v59;
  sub_213FB2DF4(v55, &qword_27C904D00, &qword_2146EF6E0);
  v25 = v105;
  if (v105)
  {
    goto LABEL_5;
  }

  sub_2143A61AC();
  swift_allocError();
  *v48 = 0;
  *(v48 + 8) = 0;
  *(v48 + 16) = 3;
  return swift_willThrow();
}

CGImageRef sub_2143A5D90@<X0>(CGImageRef *a1@<X8>)
{
  result = sub_2143A5DCC(*(v1 + 24), *(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

CGImageRef sub_2143A5DCC(int64_t a1, double a2)
{
  if (a1 < 0 || CGImageSourceGetCount(v2) <= a1)
  {
    v30 = CGImageSourceGetType(v2);
    if (v30)
    {
      v31 = v30;
      v28 = sub_2146D95B8();
      ThumbnailAtIndex = v32;
    }

    else
    {
      v28 = 0;
      ThumbnailAtIndex = 0;
    }

    sub_2143A61AC();
    swift_allocError();
    v34 = 0;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  result = swift_initStackObject();
  v6 = *MEMORY[0x277CD3648];
  *(result + 4) = *MEMORY[0x277CD3648];
  v7 = MEMORY[0x277D839B0];
  *(result + 1) = xmmword_2146E6930;
  *(result + 40) = 1;
  v8 = *MEMORY[0x277CD3568];
  *(result + 8) = v7;
  *(result + 9) = v8;
  *(result + 80) = 1;
  v9 = *MEMORY[0x277CD3660];
  *(result + 13) = v7;
  *(result + 14) = v9;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 < 9.22337204e18)
  {
    v10 = a2;
    v11 = MEMORY[0x277D83B88];
    if (a2 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    *(result + 15) = v10;
    v12 = *MEMORY[0x277CD3578];
    *(result + 18) = v11;
    *(result + 19) = v12;
    v13 = MEMORY[0x277CD3678];
    *(result + 160) = 1;
    v14 = *v13;
    *(result + 23) = v7;
    *(result + 24) = v14;
    v15 = MEMORY[0x277CD3618];
    *(result + 200) = 0;
    v16 = *v15;
    *(result + 28) = v7;
    *(result + 29) = v16;
    *(result + 33) = v7;
    *(result + 240) = 1;
    v17 = result;
    v18 = v6;
    v19 = v8;
    v20 = v9;
    v21 = v12;
    v22 = v14;
    v23 = v16;
    sub_214045EE0(v17);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
    swift_arrayDestroy();
    type metadata accessor for CFString(0);
    sub_2143A6B04();
    v24 = sub_2146D9468();

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v2, a1, v24);

    if (ThumbnailAtIndex)
    {
      return ThumbnailAtIndex;
    }

    v26 = CGImageSourceGetType(v2);
    if (v26)
    {
      v27 = v26;
      v28 = sub_2146D95B8();
      ThumbnailAtIndex = v29;
    }

    else
    {
      v28 = 0;
      ThumbnailAtIndex = 0;
    }

    sub_2143A61AC();
    swift_allocError();
    v34 = 1;
LABEL_15:
    *v33 = v28;
    *(v33 + 8) = ThumbnailAtIndex;
    *(v33 + 16) = v34;
    swift_willThrow();
    return ThumbnailAtIndex;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2143A60C4@<X0>(CGImage *a1@<X0>, uint64_t *a2@<X8>)
{
  CGImageGetRenderingIntent(a1);
  result = CGImageCreateCopyWithParameters();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    sub_2143A61AC();
    swift_allocError();
    *v4 = xmmword_214734E00;
    *(v4 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2143A61AC()
{
  result = qword_27C912218;
  if (!qword_27C912218)
  {
    result = swift_getWitnessTable(byte_214734EB4, &type metadata for ThumbnailError, v0, v1);
    atomic_store(result, &qword_27C912218);
  }

  return result;
}

void *sub_2143A6200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = v4;
  v11 = *(v6 + 200);
  v42 = *(v6 + 184);
  v43 = v11;
  v12 = *(v6 + 232);
  v44 = *(v6 + 216);
  v45 = v12;
  v13 = *(v6 + 136);
  v38 = *(v6 + 120);
  v39 = v13;
  v14 = *(v6 + 168);
  v40 = *(v6 + 152);
  v41 = v14;
  v15 = *(v6 + 72);
  v34 = *(v6 + 56);
  v35 = v15;
  v16 = *(v6 + 104);
  v36 = *(v6 + 88);
  v37 = v16;
  v17 = *(v6 + 24);
  v18 = *(v6 + 32);
  __swift_project_boxed_opaque_existential_1(v6, v17);
  v32[8] = v42;
  v32[9] = v43;
  v32[10] = v44;
  v32[11] = v45;
  v32[4] = v38;
  v32[5] = v39;
  v32[6] = v40;
  v32[7] = v41;
  v32[0] = v34;
  v32[1] = v35;
  v32[2] = v36;
  v32[3] = v37;
  v31[2] = a1;
  *&v31[3] = a4;
  v31[4] = a2;
  v19 = *(v18 + 8);
  type metadata accessor for CGImage(0);
  v21 = v20;
  result = v19(&v33, v32, sub_2143A6B5C, v31, v20, v17, v18);
  if (!v5)
  {
    v23 = v33;
    if (v33)
    {
      v24 = v43;
      *(a3 + 184) = v42;
      *(a3 + 200) = v24;
      v25 = v45;
      *(a3 + 216) = v44;
      *(a3 + 232) = v25;
      v26 = v39;
      *(a3 + 120) = v38;
      *(a3 + 136) = v26;
      v27 = v41;
      *(a3 + 152) = v40;
      *(a3 + 168) = v27;
      v28 = v35;
      *(a3 + 56) = v34;
      *(a3 + 72) = v28;
      v29 = v37;
      *(a3 + 88) = v36;
      *(a3 + 24) = v21;
      *(a3 + 32) = &off_28268E9F0;
      *a3 = v23;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
      *(a3 + 104) = v29;
      return sub_21407CE3C(&v34, v32);
    }

    else
    {
      sub_2143A61AC();
      swift_allocError();
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 16) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_2143A640C(CGImageSource *a1@<X0>, int64_t a2@<X1>, double *a3@<X2>, CGImageRef *a4@<X8>, double a5@<D0>)
{
  Count = CGImageSourceGetCount(a1);
  if (a2 < 0 || Count <= a2)
  {
    v37 = CGImageSourceGetType(a1);
    if (v37)
    {
      v38 = v37;
      v39 = sub_2146D95B8();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    sub_2143A61AC();
    swift_allocError();
    *v42 = v39;
    *(v42 + 8) = v41;
    *(v42 + 16) = 0;
    goto LABEL_24;
  }

  v62 = a3;
  v63 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6930;
  v12 = *MEMORY[0x277CD3648];
  *(inited + 32) = *MEMORY[0x277CD3648];
  v13 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v14 = *MEMORY[0x277CD3678];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 80) = 0;
  v15 = *MEMORY[0x277CD3618];
  *(inited + 104) = v13;
  *(inited + 112) = v15;
  *(inited + 120) = 1;
  v16 = *MEMORY[0x277CD3620];
  *(inited + 144) = v13;
  *(inited + 152) = v16;
  *(inited + 160) = 1;
  v17 = *MEMORY[0x277CD3668];
  v18 = MEMORY[0x277D837D0];
  *(inited + 200) = 0x682E63696C627570;
  *(inited + 208) = 0xEB00000000636965;
  v19 = MEMORY[0x277CD35A8];
  *(inited + 184) = v13;
  *(inited + 192) = v17;
  v20 = *v19;
  *(inited + 224) = v18;
  *(inited + 232) = v20;
  *(inited + 264) = v13;
  *(inited + 240) = 1;
  v21 = v12;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v20;
  sub_214045EE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v27 = sub_2146D9468();

  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, a2, v27);

  if (!ImageAtIndex)
  {
    v43 = CGImageSourceGetType(a1);
    if (v43)
    {
      v44 = v43;
      v45 = sub_2146D95B8();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    sub_2143A61AC();
    swift_allocError();
    *v54 = v45;
    *(v54 + 8) = v47;
    *(v54 + 16) = 1;
LABEL_24:
    swift_willThrow();
    return;
  }

  v29 = ImageAtIndex;
  Width = CGImageGetWidth(v29);
  Height = CGImageGetHeight(v29);
  if (Width < 1 || (v32 = Width, Width > a5))
  {
    v48 = CGImageSourceGetType(a1);
    if (!v48)
    {
LABEL_20:
      v50 = 0;
      v52 = 0;
      goto LABEL_21;
    }

LABEL_18:
    v49 = v48;
    v50 = sub_2146D95B8();
    v52 = v51;

LABEL_21:
    sub_2143A61AC();
    swift_allocError();
    *v53 = v50;
    *(v53 + 8) = v52;
    *(v53 + 16) = 2;
    swift_willThrow();

    return;
  }

  if (Height < 1 || (v33 = Height, Height > a5))
  {
    v48 = CGImageSourceGetType(a1);
    if (!v48)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v34 = CGImageSourceCopyPropertiesAtIndex(a1, a2, 0);
  if (v34)
  {
    v35 = v34;
    v36 = v63;
    if ([(__CFDictionary *)v34 __swift_objectForKeyedSubscript:*MEMORY[0x277CD3490]])
    {
      sub_2146D9E28();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v66 = v64;
    v67 = v65;
    if (*(&v65 + 1))
    {
      sub_21404A8B8(0, &qword_280B2E378, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v55 = v68;
        if ([v68 __swift_objectForKeyedSubscript_])
        {
          sub_2146D9E28();
          swift_unknownObjectRelease();
        }

        else
        {
          v64 = 0u;
          v65 = 0u;
        }

        v66 = v64;
        v67 = v65;
        if (*(&v65 + 1))
        {
          sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v56 = v68;
          }

          else
          {
            v56 = 0;
          }
        }

        else
        {
          sub_213FB2DF4(&v66, &qword_27C913170, &qword_2146EAB20);
          v56 = 0;
        }

        if ([v55 __swift_objectForKeyedSubscript_])
        {
          sub_2146D9E28();
          swift_unknownObjectRelease();
        }

        else
        {
          v64 = 0u;
          v65 = 0u;
        }

        v66 = v64;
        v67 = v65;
        if (*(&v65 + 1))
        {
          sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v57 = v68;
          }

          else
          {
            v57 = 0;
          }

          if (v56)
          {
            if (v57)
            {
              [v56 doubleValue];
              v59 = v58;
              [v57 doubleValue];
              v61 = v60;

              if (v59 <= v32 && v59 >= -v32 && v61 <= v33 && v61 >= -v33)
              {
                *v62 = v59;
                v62[1] = v61;
              }

              goto LABEL_57;
            }

            goto LABEL_54;
          }
        }

        else
        {
          sub_213FB2DF4(&v66, &qword_27C913170, &qword_2146EAB20);
          if (v56)
          {
LABEL_54:

            goto LABEL_57;
          }

          v57 = 0;
        }

        goto LABEL_57;
      }
    }

    else
    {

      sub_213FB2DF4(&v66, &qword_27C913170, &qword_2146EAB20);
    }
  }

  else
  {

    v36 = v63;
  }

LABEL_57:
  *v36 = ImageAtIndex;
}

CGImageRef sub_2143A6A8C(CFDictionaryRef options)
{
  v2 = options;
  if (options)
  {
    type metadata accessor for CFString(0);
    sub_2143A6B04();
    v2 = sub_2146D9468();
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, v2);

  return ImageAtIndex;
}

unint64_t sub_2143A6B04()
{
  result = qword_280B34D70;
  if (!qword_280B34D70)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable(byte_2146E97A8, v3, v0, v1);
    atomic_store(result, &qword_280B34D70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor14ThumbnailErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2143A6B9C(uint64_t a1, unsigned int a2)
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

uint64_t sub_2143A6BE4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2143A6C28(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2143A6C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2146D8F48();
    }

    else if (result == 2)
    {
      type metadata accessor for NearbyGroup_Member(0);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_2143A6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_2146D90A8(), !v4))
  {
    result = sub_2143A6DC8(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for NearbyGroup_Member(0);
      return sub_2146D8DD8();
    }
  }

  return result;
}

uint64_t sub_2143A6DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyGroup_Member(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_2143A6E44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  result = sub_2146D8DE8();
  v5 = (a2 + *(a1 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_2143A6ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C9122E8, type metadata accessor for NearbyGroup_Member, byte_2147356C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143A6F6C(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member, byte_2147356F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143A6FD8(uint64_t a1, uint64_t a2)
{
  sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member, byte_2147356F8);

  return sub_2146D9008();
}

uint64_t sub_2143A7058()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19938);
  __swift_project_value_buffer(v0, qword_27CA19938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "initialize";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "memberAdded";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "memberRemoved";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "memberLeft";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2143A72A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_2143A7EF0(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_2143A84AC(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_2143A7384(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_2143A7934(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2143A7384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912300, &qword_214735788);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_213FB2E54(a1, v12, &qword_27C9122F8, &qword_214735780);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_213FB2DF4(v12, &qword_27C9122F8, &qword_214735780);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_2143AC89C(v12, v19, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    sub_2143AC89C(v19, v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2143AC83C(v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v29 = v44;
    }

    else
    {
      sub_213FB2DF4(v24, &qword_27C912300, &qword_214735788);
      v31 = v39;
      sub_2143AC89C(v17, v39, type metadata accessor for NearbyGroup_Group.Initialization);
      sub_2143AC89C(v31, v24, type metadata accessor for NearbyGroup_Group.Initialization);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_2143AB278(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization, aI_10);
  v33 = v43;
  sub_2146D8F98();
  if (v33)
  {
    return sub_213FB2DF4(v24, &qword_27C912300, &qword_214735788);
  }

  sub_213FB2E54(v24, v32, &qword_27C912300, &qword_214735788);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_213FB2DF4(v24, &qword_27C912300, &qword_214735788);
    return sub_213FB2DF4(v32, &qword_27C912300, &qword_214735788);
  }

  else
  {
    v35 = v40;
    sub_2143AC89C(v32, v40, type metadata accessor for NearbyGroup_Group.Initialization);
    if (v28 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v24, &qword_27C912300, &qword_214735788);
    v36 = v38;
    sub_213FB2DF4(v38, &qword_27C9122F8, &qword_214735780);
    sub_2143AC89C(v35, v36, type metadata accessor for NearbyGroup_Group.Initialization);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_2143A7934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912308, &qword_214735790);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_213FB2E54(a1, v12, &qword_27C9122F8, &qword_214735780);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_213FB2DF4(v12, &qword_27C9122F8, &qword_214735780);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_2143AC89C(v12, v19, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    sub_2143AC89C(v19, v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_213FB2DF4(v24, &qword_27C912308, &qword_214735790);
      v31 = v40;
      sub_2143AC89C(v17, v40, type metadata accessor for NearbyGroup_Group.MemberAdded);
      sub_2143AC89C(v31, v24, type metadata accessor for NearbyGroup_Group.MemberAdded);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_2143AC83C(v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_2143AB278(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded, aE_77);
  v33 = v43;
  sub_2146D8F98();
  if (v33)
  {
    return sub_213FB2DF4(v24, &qword_27C912308, &qword_214735790);
  }

  sub_213FB2E54(v24, v32, &qword_27C912308, &qword_214735790);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_213FB2DF4(v24, &qword_27C912308, &qword_214735790);
    return sub_213FB2DF4(v32, &qword_27C912308, &qword_214735790);
  }

  else
  {
    v35 = v39;
    sub_2143AC89C(v32, v39, type metadata accessor for NearbyGroup_Group.MemberAdded);
    if (v28 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v24, &qword_27C912308, &qword_214735790);
    v36 = v38;
    sub_213FB2DF4(v38, &qword_27C9122F8, &qword_214735780);
    sub_2143AC89C(v35, v36, type metadata accessor for NearbyGroup_Group.MemberAdded);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_2143A7EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912310, &qword_214735798);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_213FB2E54(a1, v12, &qword_27C9122F8, &qword_214735780);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_213FB2DF4(v12, &qword_27C9122F8, &qword_214735780);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_2143AC89C(v12, v19, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    sub_2143AC89C(v19, v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_213FB2DF4(v24, &qword_27C912310, &qword_214735798);
      v31 = v40;
      sub_2143AC89C(v17, v40, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      sub_2143AC89C(v31, v24, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_2143AC83C(v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_2143AB278(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved, a9_1);
  v33 = v43;
  sub_2146D8F98();
  if (v33)
  {
    return sub_213FB2DF4(v24, &qword_27C912310, &qword_214735798);
  }

  sub_213FB2E54(v24, v32, &qword_27C912310, &qword_214735798);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_213FB2DF4(v24, &qword_27C912310, &qword_214735798);
    return sub_213FB2DF4(v32, &qword_27C912310, &qword_214735798);
  }

  else
  {
    v35 = v39;
    sub_2143AC89C(v32, v39, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    if (v28 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v24, &qword_27C912310, &qword_214735798);
    v36 = v38;
    sub_213FB2DF4(v38, &qword_27C9122F8, &qword_214735780);
    sub_2143AC89C(v35, v36, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_2143A84AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912318, &qword_2147357A0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_213FB2E54(a1, v12, &qword_27C9122F8, &qword_214735780);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_213FB2DF4(v12, &qword_27C9122F8, &qword_214735780);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_2143AC89C(v12, v19, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    sub_2143AC89C(v19, v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_213FB2DF4(v24, &qword_27C912318, &qword_2147357A0);
      v31 = v40;
      sub_2143AC89C(v17, v40, type metadata accessor for NearbyGroup_Group.MemberLeft);
      sub_2143AC89C(v31, v24, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_2143AC83C(v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_2143AB278(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft, byte_214734FF0);
  v33 = v43;
  sub_2146D8F98();
  if (v33)
  {
    return sub_213FB2DF4(v24, &qword_27C912318, &qword_2147357A0);
  }

  sub_213FB2E54(v24, v32, &qword_27C912318, &qword_2147357A0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_213FB2DF4(v24, &qword_27C912318, &qword_2147357A0);
    return sub_213FB2DF4(v32, &qword_27C912318, &qword_2147357A0);
  }

  else
  {
    v35 = v39;
    sub_2143AC89C(v32, v39, type metadata accessor for NearbyGroup_Group.MemberLeft);
    if (v28 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v24, &qword_27C912318, &qword_2147357A0);
    v36 = v38;
    sub_213FB2DF4(v38, &qword_27C9122F8, &qword_214735780);
    sub_2143AC89C(v35, v36, type metadata accessor for NearbyGroup_Group.MemberLeft);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_2143A8A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_213FB2E54(v3, &v14 - v9, &qword_27C9122F8, &qword_214735780);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2143A90A8(v3, a1, a2, a3);
    }

    else
    {
      sub_2143A92E0(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_2143A8E70(v3, a1, a2, a3);
  }

  else
  {
    sub_2143A8C3C(v3, a1, a2, a3);
  }

  result = sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for NearbyGroup_Group(0);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2143A8C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB2E54(a1, v7, &qword_27C9122F8, &qword_214735780);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C9122F8, &qword_214735780);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_2143AC89C(v7, v10, type metadata accessor for NearbyGroup_Group.Initialization);
    sub_2143AB278(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization, aI_10);
    sub_2146D90F8();
    return sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Group.Initialization);
  }

  result = sub_2143AC83C(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2143A8E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB2E54(a1, v7, &qword_27C9122F8, &qword_214735780);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C9122F8, &qword_214735780);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2143AC89C(v7, v10, type metadata accessor for NearbyGroup_Group.MemberAdded);
    sub_2143AB278(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded, aE_77);
    sub_2146D90F8();
    return sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Group.MemberAdded);
  }

  result = sub_2143AC83C(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2143A90A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB2E54(a1, v7, &qword_27C9122F8, &qword_214735780);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C9122F8, &qword_214735780);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2143AC89C(v7, v10, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    sub_2143AB278(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved, a9_1);
    sub_2146D90F8();
    return sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Group.MemberRemoved);
  }

  result = sub_2143AC83C(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2143A92E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB2E54(a1, v7, &qword_27C9122F8, &qword_214735780);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C9122F8, &qword_214735780);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_2143AC89C(v7, v10, type metadata accessor for NearbyGroup_Group.MemberLeft);
    sub_2143AB278(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft, byte_214734FF0);
    sub_2146D90F8();
    return sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Group.MemberLeft);
  }

  result = sub_2143AC83C(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2143A9518@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return sub_2146D8DE8();
}

uint64_t sub_2143A95CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C9122F0, type metadata accessor for NearbyGroup_Group, asc_214735558);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143A966C(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C9122B0, type metadata accessor for NearbyGroup_Group, byte_214735590);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143A96D8(uint64_t a1, uint64_t a2)
{
  sub_2143AB278(&qword_27C9122B0, type metadata accessor for NearbyGroup_Group, byte_214735590);

  return sub_2146D9008();
}

uint64_t sub_2143A9778(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2146D9148();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2146E6910;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_2146D9118();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 7;
  v18[16] = 2;
  v17();
  return sub_2146D9128();
}

uint64_t sub_2143A9938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2146D8E78();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2146D8ED8();
      }

      else if (result == 2)
      {
        type metadata accessor for NearbyGroup_Member(0);
        sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member, byte_2147356F8);
        sub_2146D8F78();
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_2143A9A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_2146D9048();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v3[2] + 16) || (type metadata accessor for NearbyGroup_Member(0), sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member, byte_2147356F8), result = sub_2146D90D8(), !v4))
  {
    type metadata accessor for NearbyGroup_Group.Initialization(0);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2143A9B70@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_2146ECC00;
  *(a2 + 16) = MEMORY[0x277D84F90];
  return sub_2146D8DE8();
}

uint64_t sub_2143A9C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C912340, type metadata accessor for NearbyGroup_Group.Initialization, aQ_107);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143A9CB8(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization, aI_10);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143A9D24(uint64_t a1, uint64_t a2)
{
  sub_2143AB278(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization, aI_10);

  return sub_2146D9008();
}

uint64_t sub_2143A9DA0(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_214466780(*a1, a1[1], *a2, a2[1]) || (sub_2143D84A0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  sub_2146D8DF8();
  sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_2143A9E5C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19968);
  __swift_project_value_buffer(v0, qword_27CA19968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "member";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2143AA09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C912348, type metadata accessor for NearbyGroup_Group.MemberAdded, a5_80);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143AA13C(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded, aE_77);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143AA1A8(uint64_t a1, uint64_t a2)
{
  sub_2143AB278(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded, aE_77);

  return sub_2146D9008();
}

uint64_t sub_2143AA228()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19980);
  __swift_project_value_buffer(v0, qword_27CA19980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "member";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2143AA3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  while (1)
  {
    result = sub_2146D8E78();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2146D8ED8();
    }

    else if (result == 2)
    {
      sub_2143AA490(a1, v7, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_2143AA490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for NearbyGroup_Member(0);
  sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member, byte_2147356F8);
  return sub_2146D8F98();
}

uint64_t sub_2143AA548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_2146D9048();
    if (v6)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v12;
    v16 = v12 >> 32;
    goto LABEL_8;
  }

  if ((v13 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_2143AA638(v5, a1, a2, a3, a4);
  if (!v6)
  {
    a5(0);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2143AA638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for NearbyGroup_Member(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_213FB2E54(a1 + *(v14 + 24), v9, &qword_27C912330, &qword_2147357B8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_213FB2DF4(v9, &qword_27C912330, &qword_2147357B8);
  }

  sub_2143AC89C(v9, v13, type metadata accessor for NearbyGroup_Member);
  sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member, byte_2147356F8);
  sub_2146D90F8();
  return sub_2143AC83C(v13, type metadata accessor for NearbyGroup_Member);
}

uint64_t sub_2143AA858@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_2146ECC00;
  sub_2146D8DE8();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for NearbyGroup_Member(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_2143AA95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C912350, type metadata accessor for NearbyGroup_Group.MemberRemoved, aA_104);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143AA9FC(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved, a9_1);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143AAA68(uint64_t a1, uint64_t a2)
{
  sub_2143AB278(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved, a9_1);

  return sub_2146D9008();
}

uint64_t sub_2143AAAE8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19998);
  __swift_project_value_buffer(v0, qword_27CA19998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "usesToken";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2143AACB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2146D8ED8();
    }

    else if (result == 2)
    {
      sub_2146D8EA8();
    }
  }

  return result;
}

uint64_t sub_2143AAD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_2146D9048();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v3 + 16) != 1 || (result = sub_2146D9028(), !v4))
  {
    type metadata accessor for NearbyGroup_Group.MemberLeft(0);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2143AAE20@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_2146ECC00;
  *(a2 + 16) = 0;
  return sub_2146D8DE8();
}

uint64_t sub_2143AAE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2143AAEE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2143AAF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C912358, type metadata accessor for NearbyGroup_Group.MemberLeft, byte_214734FB8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143AB024(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft, byte_214734FF0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143AB090(uint64_t a1, uint64_t a2)
{
  sub_2143AB278(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft, byte_214734FF0);

  return sub_2146D9008();
}

uint64_t sub_2143AB10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_214466780(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_2146D8DF8();
  sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_2143AB278(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2143AB990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912320, &qword_2147357A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_213FB2E54(a1, &v20 - v13, &qword_27C9122F8, &qword_214735780);
  sub_213FB2E54(a2, &v14[v15], &qword_27C9122F8, &qword_214735780);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_213FB2DF4(v14, &qword_27C9122F8, &qword_214735780);
LABEL_9:
      type metadata accessor for NearbyGroup_Group(0);
      sub_2146D8DF8();
      sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_2146D9578();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_213FB2E54(v14, v10, &qword_27C9122F8, &qword_214735780);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Group.OneOf_Event);
LABEL_6:
    sub_213FB2DF4(v14, &qword_27C912320, &qword_2147357A8);
    goto LABEL_7;
  }

  sub_2143AC89C(&v14[v15], v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  v18 = sub_2143AC050(v10, v7);
  sub_2143AC83C(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  sub_213FB2DF4(v14, &qword_27C9122F8, &qword_214735780);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}