uint64_t sub_214658FF0()
{
  v1 = *v0;

  return v1;
}

void sub_214659020(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void sub_2146590A8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 24);
  v8 = *(v2 + 56);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 40), *(v2 + 48));

    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146591EC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 40);
  *(v3 + 24) = v5;
  v6 = *(v1 + 48);
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

    return sub_21447C324;
  }

  return result;
}

void (*sub_2146592C4(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_213FDC9D0(v6, v7);
  return sub_21447C670;
}

void sub_214659364(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 64);
  v8 = *(v2 + 96);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 80), *(v2 + 88));

    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146594A8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 80);
  *(v3 + 24) = v5;
  v6 = *(v1 + 88);
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

    return sub_2145CF55C;
  }

  return result;
}

void (*sub_214659580(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145CF8A8;
}

uint64_t sub_214659620()
{
  v1 = *(v0 + 104);
  sub_213FDCA18(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_214659654(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 104), *(v2 + 112));
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_2146596CC(uint64_t result)
{
  *(v1 + 120) = result;
  *(v1 + 124) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146596FC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v9 = v1[10];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 185);
  v3 = *(v10 + 9);
  v4 = v1[9];
  v8[0] = v1[8];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C905BB0, &qword_2146F3FF0);
}

__n128 sub_214659758(uint64_t a1)
{
  v3 = v1[11];
  v7[2] = v1[10];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 185);
  v4 = v1[9];
  v7[0] = v1[8];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C905BB0, &qword_2146F3FF0);
  v5 = *(a1 + 48);
  v1[10] = *(a1 + 32);
  v1[11] = v5;
  *(v1 + 185) = *(a1 + 57);
  result = *(a1 + 16);
  v1[8] = *a1;
  v1[9] = result;
  return result;
}

uint64_t sub_214659838(uint64_t result)
{
  *(v1 + 204) = result;
  *(v1 + 208) = BYTE4(result) & 1;
  return result;
}

void sub_214659868(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146599AC(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_214659A84(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_214659B24(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214659C68(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
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

    return sub_2144F652C;
  }

  return result;
}

void (*sub_214659D40(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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

  sub_213FDC9D0(v6, v7);
  return sub_214659DE0;
}

void sub_214659E0C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 96), *(v2 + 104));

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214659F50(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 96);
  *(v3 + 24) = v5;
  v6 = *(v1 + 104);
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

    return sub_214664320;
  }

  return result;
}

uint64_t (*sub_21465A028(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214664324;
}

void sub_21465A0C8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 120);
  v8 = *(v2 + 152);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 136), *(v2 + 144));

    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465A20C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 136);
  *(v3 + 24) = v5;
  v6 = *(v1 + 144);
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

    return sub_214664328;
  }

  return result;
}

void (*sub_21465A2E4(uint64_t *a1))(uint64_t **, char)
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

  sub_213FDC9D0(v6, v7);
  return sub_21466432C;
}

void sub_21465A384(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465A4C8(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_21465A5A0(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21465A640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 56);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_21465A6B4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_21465A764(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_21465A830(uint64_t *a1))()
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_214664330;
  }

  return result;
}

uint64_t sub_21465A8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_21465A924(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  return result;
}

uint64_t (*sub_21465A9AC(uint64_t *a1))(uint64_t a1, uint64_t a2)
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

  sub_21404F7E0(v6, v7);
  return sub_214664334;
}

void sub_21465AA4C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 96), *(v2 + 104));

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465AB90(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 96);
  *(v3 + 24) = v5;
  v6 = *(v1 + 104);
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

    return sub_21465AC68;
  }

  return result;
}

void (*sub_21465AC6C(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21465AD0C;
}

void sub_21465AD38(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 120);
  v8 = *(v2 + 152);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 136), *(v2 + 144));

    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465AE7C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 136);
  *(v3 + 24) = v5;
  v6 = *(v1 + 144);
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

    return sub_214664328;
  }

  return result;
}

void (*sub_21465AF54(uint64_t *a1))(uint64_t **, char)
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

  sub_213FDC9D0(v6, v7);
  return sub_21466432C;
}

uint64_t sub_21465AFF4(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_21465B0C0(uint64_t *a1))(uint64_t *a1, char a2)
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

void (*sub_21465B160(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21465B200@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 248);
  v13[2] = *(v1 + 232);
  v13[3] = v2;
  v3 = *(v1 + 216);
  v13[0] = *(v1 + 200);
  v13[1] = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 280);
  v16 = *(v1 + 296);
  v17 = v4;
  v6 = *(v1 + 312);
  v18[0] = *(v1 + 328);
  *(v18 + 9) = *(v1 + 337);
  v7 = *(v1 + 280);
  v14 = *(v1 + 264);
  v8 = v14;
  v15 = v7;
  a1[6] = v16;
  a1[7] = v6;
  a1[8] = *(v1 + 328);
  *(a1 + 137) = *(v1 + 337);
  v9 = *(v1 + 248);
  a1[2] = *(v1 + 232);
  a1[3] = v9;
  a1[4] = v8;
  a1[5] = v5;
  v10 = *(v1 + 216);
  *a1 = *(v1 + 200);
  a1[1] = v10;
  return sub_213FB2E54(v13, &v12, &qword_27C905C08, &unk_2147738C0);
}

__n128 sub_21465B2B8(uint64_t a1)
{
  v3 = *(v1 + 248);
  v12[2] = *(v1 + 232);
  v12[3] = v3;
  v4 = *(v1 + 216);
  v12[0] = *(v1 + 200);
  v12[1] = v4;
  v5 = *(v1 + 312);
  v12[6] = *(v1 + 296);
  v12[7] = v5;
  v13[0] = *(v1 + 328);
  *(v13 + 9) = *(v1 + 337);
  v6 = *(v1 + 280);
  v12[4] = *(v1 + 264);
  v12[5] = v6;
  sub_213FB2DF4(v12, &qword_27C905C08, &unk_2147738C0);
  v7 = *(a1 + 112);
  *(v1 + 296) = *(a1 + 96);
  *(v1 + 312) = v7;
  *(v1 + 328) = *(a1 + 128);
  *(v1 + 337) = *(a1 + 137);
  v8 = *(a1 + 48);
  *(v1 + 232) = *(a1 + 32);
  *(v1 + 248) = v8;
  v9 = *(a1 + 80);
  *(v1 + 264) = *(a1 + 64);
  *(v1 + 280) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 200) = *a1;
  *(v1 + 216) = v11;
  return result;
}

uint64_t sub_21465B394@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 504);
  v3 = *(v1 + 536);
  v30 = *(v1 + 520);
  v31[0] = v3;
  *(v31 + 9) = *(v1 + 545);
  v4 = *(v1 + 440);
  v5 = *(v1 + 472);
  v26 = *(v1 + 456);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 472);
  v8 = *(v1 + 504);
  v28 = *(v1 + 488);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 376);
  v11 = *(v1 + 408);
  v22 = *(v1 + 392);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 408);
  v14 = *(v1 + 440);
  v24 = *(v1 + 424);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 376);
  v21[0] = *(v1 + 360);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 536);
  a1[10] = v30;
  a1[11] = v18;
  *(a1 + 185) = *(v1 + 545);
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v2;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v15;
  a1[5] = v4;
  *a1 = v17;
  a1[1] = v10;
  return sub_213FB2E54(v21, &v20, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_21465B450(uint64_t a1)
{
  v3 = (v1 + 360);
  v4 = v3[11];
  v16[10] = v3[10];
  v17[0] = v4;
  *(v17 + 9) = *(v3 + 185);
  v5 = v3[7];
  v16[6] = v3[6];
  v16[7] = v5;
  v6 = v3[9];
  v16[8] = v3[8];
  v16[9] = v6;
  v7 = v3[3];
  v16[2] = v3[2];
  v16[3] = v7;
  v8 = v3[5];
  v16[4] = v3[4];
  v16[5] = v8;
  v9 = v3[1];
  v16[0] = *v3;
  v16[1] = v9;
  sub_213FB2DF4(v16, &qword_27C905AD0, &unk_214759900);
  v10 = *(a1 + 176);
  v3[10] = *(a1 + 160);
  v3[11] = v10;
  *(v3 + 185) = *(a1 + 185);
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v12;
  v13 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v13;
  v14 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v14;
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_21465B530(uint64_t result, char a2)
{
  *(v2 + 568) = result;
  *(v2 + 576) = a2 & 1;
  return result;
}

void sub_21465B560(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 608);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 600);
    a2[1] = v4;
  }
}

double sub_21465B5D4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21465B684(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 584);
  v8 = *(v2 + 616);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 600), *(v2 + 608));

    *(v2 + 600) = a1;
    *(v2 + 608) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465B7D4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 600);
  *(v3 + 24) = v5;
  v6 = *(v1 + 608);
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

    return sub_21465B8AC;
  }

  return result;
}

void sub_21465B8AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 584);
    v13 = *(v3 + 616);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 600) = v5;
      *(v9 + 608) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 584);
  v13 = *(v3 + 616);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 600) = v5;
  *(v7 + 608) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21465BA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 592);
  v3 = *(a1 + 600);
  v4 = *(a1 + 608);
  v5 = *(a1 + 616);
  *a2 = *(a1 + 584);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21465BAE8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 600);
  v9 = *(a2 + 608);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 584) = v4;
  *(a2 + 592) = v3;
  *(a2 + 600) = v5;
  *(a2 + 608) = v6;
  *(a2 + 616) = v7;
  return result;
}

void (*sub_21465BB7C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 592);
  v6 = *(v1 + 600);
  v7 = *(v1 + 608);
  v8 = *(v1 + 616);
  *v4 = *(v1 + 584);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21465BC24;
}

void sub_21465BC24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 600);
  v10 = *(v3 + 608);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 584) = v5;
    *(v3 + 592) = v4;
    *(v3 + 600) = v7;
    *(v3 + 608) = v6;
    *(v3 + 616) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 584) = v5;
    *(v3 + 592) = v4;
    *(v3 + 600) = v7;
    *(v3 + 608) = v6;
    *(v3 + 616) = v8;
  }

  free(v2);
}

uint64_t sub_21465BD18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 800);
  v3 = *(v1 + 768);
  v30 = *(v1 + 784);
  v31 = v2;
  v4 = *(v1 + 800);
  v32 = *(v1 + 816);
  v5 = *(v1 + 736);
  v7 = *(v1 + 704);
  v26 = *(v1 + 720);
  v6 = v26;
  v27 = v5;
  v8 = *(v1 + 736);
  v9 = *(v1 + 768);
  v28 = *(v1 + 752);
  v10 = v28;
  v29 = v9;
  v11 = *(v1 + 672);
  v13 = *(v1 + 640);
  v22 = *(v1 + 656);
  v12 = v22;
  v23 = v11;
  v14 = *(v1 + 672);
  v15 = *(v1 + 704);
  v24 = *(v1 + 688);
  v16 = v24;
  v25 = v15;
  v17 = *(v1 + 640);
  v21[0] = *(v1 + 624);
  v18 = v21[0];
  v21[1] = v17;
  *(a1 + 160) = v30;
  *(a1 + 176) = v4;
  *(a1 + 192) = *(v1 + 816);
  *(a1 + 96) = v6;
  *(a1 + 112) = v8;
  *(a1 + 128) = v10;
  *(a1 + 144) = v3;
  *(a1 + 32) = v12;
  *(a1 + 48) = v14;
  *(a1 + 64) = v16;
  *(a1 + 80) = v7;
  v33 = *(v1 + 832);
  *(a1 + 208) = *(v1 + 832);
  *a1 = v18;
  *(a1 + 16) = v13;
  return sub_213FB2E54(v21, v20, &qword_27C905C20, &qword_2146F4020);
}

__n128 sub_21465BDDC(uint64_t a1)
{
  v3 = *(v1 + 800);
  v16[10] = *(v1 + 784);
  v16[11] = v3;
  v16[12] = *(v1 + 816);
  v17 = *(v1 + 832);
  v4 = *(v1 + 736);
  v16[6] = *(v1 + 720);
  v16[7] = v4;
  v5 = *(v1 + 768);
  v16[8] = *(v1 + 752);
  v16[9] = v5;
  v6 = *(v1 + 672);
  v16[2] = *(v1 + 656);
  v16[3] = v6;
  v7 = *(v1 + 704);
  v16[4] = *(v1 + 688);
  v16[5] = v7;
  v8 = *(v1 + 640);
  v16[0] = *(v1 + 624);
  v16[1] = v8;
  sub_213FB2DF4(v16, &qword_27C905C20, &qword_2146F4020);
  v9 = *(a1 + 176);
  *(v1 + 784) = *(a1 + 160);
  *(v1 + 800) = v9;
  *(v1 + 816) = *(a1 + 192);
  *(v1 + 832) = *(a1 + 208);
  v10 = *(a1 + 112);
  *(v1 + 720) = *(a1 + 96);
  *(v1 + 736) = v10;
  v11 = *(a1 + 144);
  *(v1 + 752) = *(a1 + 128);
  *(v1 + 768) = v11;
  v12 = *(a1 + 48);
  *(v1 + 656) = *(a1 + 32);
  *(v1 + 672) = v12;
  v13 = *(a1 + 80);
  *(v1 + 688) = *(a1 + 64);
  *(v1 + 704) = v13;
  result = *a1;
  v15 = *(a1 + 16);
  *(v1 + 624) = *a1;
  *(v1 + 640) = v15;
  return result;
}

uint64_t sub_21465BEF8(uint64_t result, char a2)
{
  *(v2 + 840) = result;
  *(v2 + 848) = a2 & 1;
  return result;
}

void sub_21465BF28(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465C06C(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_21465C144(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21465C1E4@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0x351uLL);
  memcpy(a1, (v1 + 40), 0x351uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905C70, &unk_214759910);
}

void *sub_21465C248(const void *a1)
{
  memcpy(v4, (v1 + 40), 0x351uLL);
  sub_213FB2DF4(v4, &qword_27C905C70, &unk_214759910);
  return memcpy((v1 + 40), a1, 0x351uLL);
}

uint64_t sub_21465C2D4(uint64_t result, char a2)
{
  *(v2 + 896) = result;
  *(v2 + 904) = a2 & 1;
  return result;
}

void sub_21465C304(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465C448(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_21465C520(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21465C5C0(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_21465C68C(uint64_t *a1))()
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_21465C72C;
  }

  return result;
}

uint64_t sub_21465C730(uint64_t *a1, char a2)
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

void (*sub_21465C870(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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

  sub_21404F7E0(v6, v7);
  return sub_21465C910;
}

void sub_21465C93C(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v17 = *(*a1 + 32);
  v11 = *(v6 + 56);
  v12 = *(v6 + 64);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v12);
    *(v6 + 40) = v8;
    *(v6 + 48) = v7;
    *(v6 + 56) = v10;
    *(v6 + 64) = v9;
    *(v6 + 72) = v17;
    v14 = v5[2];
    v15 = v5[3];

    a3(v14, v15);
  }

  else
  {

    a3(v11, v12);
    *(v6 + 40) = v8;
    *(v6 + 48) = v7;
    *(v6 + 56) = v10;
    *(v6 + 64) = v9;
    *(v6 + 72) = v17;
  }

  free(v5);
}

uint64_t sub_21465CA50(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_21465CB1C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 104);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 96);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146264B8;
  }

  return result;
}

void (*sub_21465CBBC(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_21465CC5C;
}

void sub_21465CC88(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v17 = *(*a1 + 32);
  v11 = *(v6 + 96);
  v12 = *(v6 + 104);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v12);
    *(v6 + 80) = v8;
    *(v6 + 88) = v7;
    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 112) = v17;
    v14 = v5[2];
    v15 = v5[3];

    a3(v14, v15);
  }

  else
  {

    a3(v11, v12);
    *(v6 + 80) = v8;
    *(v6 + 88) = v7;
    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 112) = v17;
  }

  free(v5);
}

uint64_t sub_21465CDFC(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

void sub_21465CE2C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 144);
  v8 = *(v2 + 176);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 160), *(v2 + 168));

    *(v2 + 160) = a1;
    *(v2 + 168) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465CF70(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 160);
  *(v3 + 24) = v5;
  v6 = *(v1 + 168);
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

    return sub_2145C8E5C;
  }

  return result;
}

void (*sub_21465D048(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  *v4 = *(v1 + 144);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145C91A8;
}

uint64_t sub_21465D0E8@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v20[2] = *(v1 + 216);
  v20[3] = v3;
  v4 = *(v1 + 248);
  v20[0] = *(v1 + 184);
  v20[1] = v2;
  v5 = *(v1 + 328);
  v6 = *(v1 + 360);
  v21 = *(v1 + 344);
  v22[0] = v6;
  *(v22 + 9) = *(v1 + 369);
  v8 = *(v1 + 264);
  v7 = *(v1 + 280);
  v20[4] = v4;
  v20[5] = v8;
  v9 = *(v1 + 264);
  v10 = *(v1 + 280);
  v11 = *(v1 + 296);
  v12 = *(v1 + 312);
  v20[6] = v7;
  v20[7] = v11;
  v13 = *(v1 + 296);
  v14 = *(v1 + 328);
  v20[8] = *(v1 + 312);
  v20[9] = v14;
  v15 = *(v1 + 360);
  a1[10] = v21;
  a1[11] = v15;
  *(a1 + 185) = *(v1 + 369);
  a1[6] = v10;
  a1[7] = v13;
  a1[8] = v12;
  a1[9] = v5;
  v16 = *(v1 + 200);
  v17 = *(v1 + 232);
  a1[2] = *(v1 + 216);
  a1[3] = v17;
  a1[4] = *(v1 + 248);
  a1[5] = v9;
  *a1 = *(v1 + 184);
  a1[1] = v16;
  return sub_213FB2E54(v20, &v19, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_21465D1B8(__int128 *a1)
{
  v3 = *(v1 + 200);
  v4 = *(v1 + 232);
  v21[2] = *(v1 + 216);
  v21[3] = v4;
  v5 = *(v1 + 248);
  v21[0] = *(v1 + 184);
  v21[1] = v3;
  v6 = *(v1 + 328);
  v7 = *(v1 + 360);
  v21[10] = *(v1 + 344);
  v22[0] = v7;
  *(v22 + 9) = *(v1 + 369);
  v8 = *(v1 + 264);
  v9 = *(v1 + 280);
  v21[4] = v5;
  v21[5] = v8;
  v10 = *(v1 + 296);
  v11 = *(v1 + 312);
  v21[6] = v9;
  v21[7] = v10;
  v21[8] = v11;
  v21[9] = v6;
  sub_213FB2DF4(v21, &qword_27C905AD0, &unk_214759900);
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[8];
  *(v1 + 328) = a1[9];
  *(v1 + 344) = v12;
  *(v1 + 360) = v13;
  *(v1 + 369) = *(a1 + 185);
  v15 = a1[6];
  v16 = a1[7];
  v17 = a1[4];
  *(v1 + 264) = a1[5];
  *(v1 + 280) = v15;
  *(v1 + 296) = v16;
  *(v1 + 312) = v14;
  v18 = *a1;
  *(v1 + 200) = a1[1];
  result = a1[2];
  v20 = a1[3];
  *(v1 + 216) = result;
  *(v1 + 232) = v20;
  *(v1 + 248) = v17;
  *(v1 + 184) = v18;
  return result;
}

uint64_t sub_21465D2B8(uint64_t result, char a2)
{
  *(v2 + 392) = result;
  *(v2 + 400) = a2 & 1;
  return result;
}

uint64_t sub_21465D318()
{
  v1 = *(v0 + 408);

  return v1;
}

void sub_21465D348(uint64_t a1, uint64_t a2)
{

  *(v2 + 408) = a1;
  *(v2 + 416) = a2;
}

uint64_t sub_21465D3AC(uint64_t result, char a2)
{
  *(v2 + 424) = result;
  *(v2 + 432) = a2 & 1;
  return result;
}

uint64_t sub_21465D3FC(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465D438(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_21465D488(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465D4DC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214778410[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21465D564(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214778410[v2]);
  return sub_2146DA9B8();
}

uint64_t sub_21465D6A0(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_21465D78C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 16);
  v8 = *(v2 + 48);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 32), *(v2 + 40));

    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465D8D0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
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

    return sub_2145F81C8;
  }

  return result;
}

void (*sub_21465D9A8(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_213FDC9D0(v6, v7);
  return sub_2145F843C;
}

uint64_t sub_21465DABC(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

void sub_21465DAEC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 72);
  v8 = *(v2 + 104);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 88), *(v2 + 96));

    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465DC30(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 88);
  *(v3 + 24) = v5;
  v6 = *(v1 + 96);
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

    return sub_214664338;
  }

  return result;
}

void (*sub_21465DD08(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21466433C;
}

void sub_21465DDFC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 120);
  v8 = *(v2 + 152);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 136), *(v2 + 144));

    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465DF40(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 136);
  *(v3 + 24) = v5;
  v6 = *(v1 + 144);
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

    return sub_21465E018;
  }

  return result;
}

void (*sub_21465E01C(uint64_t *a1))(uint64_t **, char)
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

  sub_213FDC9D0(v6, v7);
  return sub_21465E0BC;
}

uint64_t sub_21465E0C0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 160), 0x1B1uLL);
  memcpy(a1, (v1 + 160), 0x1B1uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905D58, &qword_2146F4098);
}

void *sub_21465E124(const void *a1)
{
  memcpy(v4, (v1 + 160), 0x1B1uLL);
  sub_213FB2DF4(v4, &qword_27C905D58, &qword_2146F4098);
  return memcpy((v1 + 160), a1, 0x1B1uLL);
}

uint64_t sub_21465E1A4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 648);
  v10 = *(v1 + 632);
  v2 = v10;
  v11 = v3;
  v12[0] = *(v1 + 664);
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 673);
  v6 = *(v1 + 616);
  v9[0] = *(v1 + 600);
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_213FB2E54(v9, &v8, &qword_27C905D70, &qword_2146F40A0);
}

__n128 sub_21465E210(uint64_t a1)
{
  v3 = (v1 + 600);
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v10[0] = v3[4];
  *(v10 + 9) = *(v3 + 73);
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  sub_213FB2DF4(v9, &qword_27C905D70, &qword_2146F40A0);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  *(v3 + 73) = *(a1 + 73);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  return result;
}

void sub_21465E2E4(uint64_t *a1@<X8>)
{
  v2 = v1[87];
  v3 = v1[88];
  v4 = v1[89];
  v5 = v1[90];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_21465E384(v2, v3, v4, v5, sub_213FDCA18);
}

__n128 sub_21465E328(uint64_t a1)
{
  sub_21465E384(*(v1 + 696), *(v1 + 704), *(v1 + 712), *(v1 + 720), sub_213FDC6BC);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 696) = *a1;
  *(v1 + 712) = v4;
  return result;
}

void sub_21465E384(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a2 >> 60 != 11)
  {
    a5(a1);

    (a5)(a3, a4);
  }
}

void sub_21465E410(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 752);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 744);
    a2[1] = v4;
  }
}

double sub_21465E484(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21465E534(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 728);
  v8 = *(v2 + 760);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 744), *(v2 + 752));

    *(v2 + 744) = a1;
    *(v2 + 752) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465E684(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 744);
  *(v3 + 24) = v5;
  v6 = *(v1 + 752);
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

    return sub_21465E75C;
  }

  return result;
}

void sub_21465E75C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 728);
    v13 = *(v3 + 760);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 744) = v5;
      *(v9 + 752) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 728);
  v13 = *(v3 + 760);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 744) = v5;
  *(v7 + 752) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21465E93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 736);
  v3 = *(a1 + 744);
  v4 = *(a1 + 752);
  v5 = *(a1 + 760);
  *a2 = *(a1 + 728);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21465E998(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 744);
  v9 = *(a2 + 752);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 728) = v4;
  *(a2 + 736) = v3;
  *(a2 + 744) = v5;
  *(a2 + 752) = v6;
  *(a2 + 760) = v7;
  return result;
}

void (*sub_21465EA2C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 736);
  v6 = *(v1 + 744);
  v7 = *(v1 + 752);
  v8 = *(v1 + 760);
  *v4 = *(v1 + 728);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21465EAD4;
}

void sub_21465EAD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 744);
  v10 = *(v3 + 752);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 728) = v5;
    *(v3 + 736) = v4;
    *(v3 + 744) = v7;
    *(v3 + 752) = v6;
    *(v3 + 760) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 728) = v5;
    *(v3 + 736) = v4;
    *(v3 + 744) = v7;
    *(v3 + 752) = v6;
    *(v3 + 760) = v8;
  }

  free(v2);
}

void sub_21465EBC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 792);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 784);
    a2[1] = v4;
  }
}

double sub_21465EC3C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21465ECEC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 768);
  v8 = *(v2 + 800);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 784), *(v2 + 792));

    *(v2 + 784) = a1;
    *(v2 + 792) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465EE3C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 784);
  *(v3 + 24) = v5;
  v6 = *(v1 + 792);
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

    return sub_21465EF14;
  }

  return result;
}

void sub_21465EF14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 768);
    v13 = *(v3 + 800);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 784) = v5;
      *(v9 + 792) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 768);
  v13 = *(v3 + 800);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 784) = v5;
  *(v7 + 792) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21465F0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 776);
  v3 = *(a1 + 784);
  v4 = *(a1 + 792);
  v5 = *(a1 + 800);
  *a2 = *(a1 + 768);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21465F150(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 784);
  v9 = *(a2 + 792);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 768) = v4;
  *(a2 + 776) = v3;
  *(a2 + 784) = v5;
  *(a2 + 792) = v6;
  *(a2 + 800) = v7;
  return result;
}

void (*sub_21465F1E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 776);
  v6 = *(v1 + 784);
  v7 = *(v1 + 792);
  v8 = *(v1 + 800);
  *v4 = *(v1 + 768);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21465F28C;
}

void sub_21465F28C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 784);
  v10 = *(v3 + 792);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 768) = v5;
    *(v3 + 776) = v4;
    *(v3 + 784) = v7;
    *(v3 + 792) = v6;
    *(v3 + 800) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 768) = v5;
    *(v3 + 776) = v4;
    *(v3 + 784) = v7;
    *(v3 + 792) = v6;
    *(v3 + 800) = v8;
  }

  free(v2);
}

uint64_t sub_21465F538()
{
  v1 = *(v0 + 848);

  return v1;
}

void sub_21465F56C(uint64_t a1, uint64_t a2)
{

  *(v2 + 848) = a1;
  *(v2 + 856) = a2;
}

uint64_t sub_21465F5C8@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 864), 0x389uLL);
  memcpy(a1, (v1 + 864), 0x389uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905DB8, &unk_2147598E0);
}

void *sub_21465F62C(const void *a1)
{
  memcpy(__dst, (v1 + 864), 0x389uLL);
  sub_213FB2DF4(__dst, &qword_27C905DB8, &unk_2147598E0);
  return memcpy((v1 + 864), a1, 0x389uLL);
}

uint64_t sub_21465F704(uint64_t result)
{
  *(v1 + 1772) = result;
  *(v1 + 1776) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465F79C()
{
  v1 = *v0;
  sub_213FDCA18(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_21465F7D0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_21465F828()
{
  v1 = *(v0 + 16);
  sub_213FDCA18(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_21465F85C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21465F8D4(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_21465F958@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x6F3uLL);
  memcpy(a1, (v1 + 16), 0x6F3uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905E98, &qword_2147738D0);
}

void *sub_21465F9BC(const void *a1)
{
  memcpy(v4, (v1 + 16), 0x6F3uLL);
  sub_213FB2DF4(v4, &qword_27C905E98, &qword_2147738D0);
  return memcpy((v1 + 16), a1, 0x6F3uLL);
}

void sub_21465FA3C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 1824);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 1816);
    a2[1] = v4;
  }
}

double sub_21465FAB0(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21465FB60(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 1800);
  v8 = *(v2 + 1832);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 1816), *(v2 + 1824));

    *(v2 + 1816) = a1;
    *(v2 + 1824) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21465FCB0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 1816);
  *(v3 + 24) = v5;
  v6 = *(v1 + 1824);
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

    return sub_21465FD88;
  }

  return result;
}

void sub_21465FD88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 1800);
    v13 = *(v3 + 1832);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 1816) = v5;
      *(v9 + 1824) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 1800);
  v13 = *(v3 + 1832);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 1816) = v5;
  *(v7 + 1824) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21465FF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1808);
  v3 = *(a1 + 1816);
  v4 = *(a1 + 1824);
  v5 = *(a1 + 1832);
  *a2 = *(a1 + 1800);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21465FFC4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 1816);
  v9 = *(a2 + 1824);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 1800) = v4;
  *(a2 + 1808) = v3;
  *(a2 + 1816) = v5;
  *(a2 + 1824) = v6;
  *(a2 + 1832) = v7;
  return result;
}

void (*sub_214660058(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 1808);
  v6 = *(v1 + 1816);
  v7 = *(v1 + 1824);
  v8 = *(v1 + 1832);
  *v4 = *(v1 + 1800);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214660100;
}

void sub_214660100(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 1816);
  v10 = *(v3 + 1824);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 1800) = v5;
    *(v3 + 1808) = v4;
    *(v3 + 1816) = v7;
    *(v3 + 1824) = v6;
    *(v3 + 1832) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 1800) = v5;
    *(v3 + 1808) = v4;
    *(v3 + 1816) = v7;
    *(v3 + 1824) = v6;
    *(v3 + 1832) = v8;
  }

  free(v2);
}

void sub_2146601F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 1864);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 1856);
    a2[1] = v4;
  }
}

double sub_214660268(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214660318(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 1840);
  v8 = *(v2 + 1872);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 1856), *(v2 + 1864));

    *(v2 + 1856) = a1;
    *(v2 + 1864) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214660468(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 1856);
  *(v3 + 24) = v5;
  v6 = *(v1 + 1864);
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

    return sub_214660540;
  }

  return result;
}

void sub_214660540(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 1840);
    v13 = *(v3 + 1872);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 1856) = v5;
      *(v9 + 1864) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 1840);
  v13 = *(v3 + 1872);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 1856) = v5;
  *(v7 + 1864) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214660720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1848);
  v3 = *(a1 + 1856);
  v4 = *(a1 + 1864);
  v5 = *(a1 + 1872);
  *a2 = *(a1 + 1840);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21466077C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 1856);
  v9 = *(a2 + 1864);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 1840) = v4;
  *(a2 + 1848) = v3;
  *(a2 + 1856) = v5;
  *(a2 + 1864) = v6;
  *(a2 + 1872) = v7;
  return result;
}

void (*sub_214660810(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 1848);
  v6 = *(v1 + 1856);
  v7 = *(v1 + 1864);
  v8 = *(v1 + 1872);
  *v4 = *(v1 + 1840);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2146608B8;
}

void sub_2146608B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 1856);
  v10 = *(v3 + 1864);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 1840) = v5;
    *(v3 + 1848) = v4;
    *(v3 + 1856) = v7;
    *(v3 + 1864) = v6;
    *(v3 + 1872) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 1840) = v5;
    *(v3 + 1848) = v4;
    *(v3 + 1856) = v7;
    *(v3 + 1864) = v6;
    *(v3 + 1872) = v8;
  }

  free(v2);
}

uint64_t sub_2146609DC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1880), 0x389uLL);
  memcpy(a1, (v1 + 1880), 0x389uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C905DB8, &unk_2147598E0);
}

void *sub_214660A40(const void *a1)
{
  memcpy(__dst, (v1 + 1880), 0x389uLL);
  sub_213FB2DF4(__dst, &qword_27C905DB8, &unk_2147598E0);
  return memcpy((v1 + 1880), a1, 0x389uLL);
}

uint64_t sub_214660B20()
{
  v1 = *(v0 + 2792);

  return v1;
}

void sub_214660B54(uint64_t a1, uint64_t a2)
{

  *(v2 + 2792) = a1;
  *(v2 + 2800) = a2;
}

uint64_t sub_214660D38(uint64_t result)
{
  *(v1 + 2836) = result;
  *(v1 + 2840) = BYTE4(result) & 1;
  return result;
}

void sub_214660DC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 2872);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 2864);
    a2[1] = v4;
  }
}

double sub_214660E3C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214660EEC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 2848);
  v8 = *(v2 + 2880);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 2864), *(v2 + 2872));

    *(v2 + 2864) = a1;
    *(v2 + 2872) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21466103C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 2864);
  *(v3 + 24) = v5;
  v6 = *(v1 + 2872);
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

    return sub_214661114;
  }

  return result;
}

void sub_214661114(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 2848);
    v13 = *(v3 + 2880);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 2864) = v5;
      *(v9 + 2872) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 2848);
  v13 = *(v3 + 2880);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 2864) = v5;
  *(v7 + 2872) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2146612F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2856);
  v3 = *(a1 + 2864);
  v4 = *(a1 + 2872);
  v5 = *(a1 + 2880);
  *a2 = *(a1 + 2848);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214661350(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 2864);
  v9 = *(a2 + 2872);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 2848) = v4;
  *(a2 + 2856) = v3;
  *(a2 + 2864) = v5;
  *(a2 + 2872) = v6;
  *(a2 + 2880) = v7;
  return result;
}

void (*sub_2146613E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 2856);
  v6 = *(v1 + 2864);
  v7 = *(v1 + 2872);
  v8 = *(v1 + 2880);
  *v4 = *(v1 + 2848);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21466148C;
}

void sub_21466148C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 2864);
  v10 = *(v3 + 2872);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 2848) = v5;
    *(v3 + 2856) = v4;
    *(v3 + 2864) = v7;
    *(v3 + 2872) = v6;
    *(v3 + 2880) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 2848) = v5;
    *(v3 + 2856) = v4;
    *(v3 + 2864) = v7;
    *(v3 + 2872) = v6;
    *(v3 + 2880) = v8;
  }

  free(v2);
}

uint64_t sub_214661660(uint64_t result)
{
  *(v1 + 2888) = result;
  *(v1 + 2892) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146616B0(uint64_t result)
{
  *(v1 + 2896) = result;
  *(v1 + 2900) = BYTE4(result) & 1;
  return result;
}

void sub_214661770(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 2928);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 2920);
    a2[1] = v4;
  }
}

double sub_2146617E4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214661894(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 2904);
  v8 = *(v2 + 2936);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 2920), *(v2 + 2928));

    *(v2 + 2920) = a1;
    *(v2 + 2928) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146619E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 2920);
  *(v3 + 24) = v5;
  v6 = *(v1 + 2928);
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

    return sub_214661ABC;
  }

  return result;
}

void sub_214661ABC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 2904);
    v13 = *(v3 + 2936);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 2920) = v5;
      *(v9 + 2928) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 2904);
  v13 = *(v3 + 2936);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 2920) = v5;
  *(v7 + 2928) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214661C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2912);
  v3 = *(a1 + 2920);
  v4 = *(a1 + 2928);
  v5 = *(a1 + 2936);
  *a2 = *(a1 + 2904);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214661CF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 2920);
  v9 = *(a2 + 2928);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 2904) = v4;
  *(a2 + 2912) = v3;
  *(a2 + 2920) = v5;
  *(a2 + 2928) = v6;
  *(a2 + 2936) = v7;
  return result;
}

void (*sub_214661D8C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 2912);
  v6 = *(v1 + 2920);
  v7 = *(v1 + 2928);
  v8 = *(v1 + 2936);
  *v4 = *(v1 + 2904);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214661E34;
}

void sub_214661E34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 2920);
  v10 = *(v3 + 2928);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 2904) = v5;
    *(v3 + 2912) = v4;
    *(v3 + 2920) = v7;
    *(v3 + 2928) = v6;
    *(v3 + 2936) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 2904) = v5;
    *(v3 + 2912) = v4;
    *(v3 + 2920) = v7;
    *(v3 + 2928) = v6;
    *(v3 + 2936) = v8;
  }

  free(v2);
}

uint64_t sub_214661FD8(uint64_t result)
{
  *(v1 + 2940) = result;
  *(v1 + 2944) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146620D8(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214662248(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

void sub_2146622A8(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_214534D70(v2, v3, v4, v5, v6, v7, sub_213FDCA18);
}

__n128 sub_2146622EC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_214534D70(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), sub_213FDC6BC);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

void sub_2146623F8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 72);
  v8 = *(v2 + 104);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 88), *(v2 + 96));

    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21466253C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 88);
  *(v3 + 24) = v5;
  v6 = *(v1 + 96);
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

    return sub_214662614;
  }

  return result;
}

void (*sub_214662618(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2146626B8;
}

uint64_t sub_2146626BC()
{
  v1 = *v0;
  sub_213FDCA18(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2146626F0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_214662748()
{
  v1 = *(v0 + 16);
  sub_213FDCA18(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_21466277C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2146627D4()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_214662808(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_214662864()
{
  result = qword_27C917708;
  if (!qword_27C917708)
  {
    result = swift_getWitnessTable(byte_2147738D8, &type metadata for CSDMConversationAudioVideoMode, v0, v1);
    atomic_store(result, &qword_27C917708);
  }

  return result;
}

unint64_t sub_2146628E8()
{
  result = qword_27C917710;
  if (!qword_27C917710)
  {
    result = swift_getWitnessTable(byte_2147739E4, &type metadata for CSDMConversationPresentationMode, v0, v1);
    atomic_store(result, &qword_27C917710);
  }

  return result;
}

unint64_t sub_21466296C()
{
  result = qword_27C917718;
  if (!qword_27C917718)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CSDMHandle.HandleType, &type metadata for CSDMHandle.HandleType, v0, v1);
    atomic_store(result, &qword_27C917718);
  }

  return result;
}

unint64_t sub_214662BD4()
{
  result = qword_27C917720;
  if (!qword_27C917720)
  {
    result = swift_getWitnessTable(byte_214773D30, &type metadata for CSDMConversationMessage.ConversationMessageType, v0, v1);
    atomic_store(result, &qword_27C917720);
  }

  return result;
}

unint64_t sub_214662CDC()
{
  result = qword_27C917728;
  if (!qword_27C917728)
  {
    result = swift_getWitnessTable(byte_214773EB0, &type metadata for CSDMConversationParticipantDidLeaveContext.LeaveReason, v0, v1);
    atomic_store(result, &qword_27C917728);
  }

  return result;
}

unint64_t sub_214662D8C()
{
  result = qword_27C917730;
  if (!qword_27C917730)
  {
    result = swift_getWitnessTable(byte_214773FD8, &type metadata for CSDMCallMessage.CallMessageType, v0, v1);
    atomic_store(result, &qword_27C917730);
  }

  return result;
}

unint64_t sub_214662E38()
{
  result = qword_27C917738;
  if (!qword_27C917738)
  {
    result = swift_getWitnessTable(a9_15, &type metadata for CSDMCallMessage, v0, v1);
    atomic_store(result, &qword_27C917738);
  }

  return result;
}

unint64_t sub_214662E8C()
{
  result = qword_27C917740;
  if (!qword_27C917740)
  {
    result = swift_getWitnessTable(byte_2146F7EF8, &type metadata for CSDMCallMessage, v0, v1);
    atomic_store(result, &qword_27C917740);
  }

  return result;
}

uint64_t sub_214662F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214662F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 496))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 216);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214662FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 488) = 0;
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
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 496) = 1;
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
      *(result + 216) = (a2 - 1);
      return result;
    }

    *(result + 496) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146630A0(uint64_t *a1, int a2)
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

uint64_t sub_2146630E8(uint64_t result, int a2, int a3)
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

uint64_t sub_214663158(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 362))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 328);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2146631A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 362) = 1;
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
      *(result + 328) = (a2 - 1);
      return result;
    }

    *(result + 362) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214663260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_2146632A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214663348(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 849))
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

uint64_t sub_214663390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 840) = 0;
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
    *(result + 848) = 0;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 849) = 1;
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

    *(result + 849) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146634CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 905))
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

uint64_t sub_214663514(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 904) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 905) = 1;
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

    *(result + 905) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21466365C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 433))
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

uint64_t sub_2146636A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
    *(result + 432) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 433) = 1;
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

    *(result + 433) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214663768(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214663788(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_2146637D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1779))
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

uint64_t sub_214663818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1768) = 0;
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
    *(result + 1778) = 0;
    *(result + 1776) = 0;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1779) = 1;
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

    *(result + 1779) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214663A54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214663AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_214663B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 2945))
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

uint64_t sub_214663B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 2936) = 0;
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
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2944) = 0;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 2945) = 1;
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

    *(result + 2945) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CSDMConversationParticipantDidLeaveContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 6))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 5);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 5);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for CSDMConversationParticipantDidLeaveContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_214663F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214663FC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21466403C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 48))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214664098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_214664104()
{
  result = qword_27C917748;
  if (!qword_27C917748)
  {
    result = swift_getWitnessTable(aAa, &type metadata for CSDMCallMessage.CallMessageType, v0, v1);
    atomic_store(result, &qword_27C917748);
  }

  return result;
}

unint64_t sub_214664158()
{
  result = qword_27C917750;
  if (!qword_27C917750)
  {
    result = swift_getWitnessTable(byte_214773F18, &type metadata for CSDMConversationParticipantDidLeaveContext.LeaveReason, v0, v1);
    atomic_store(result, &qword_27C917750);
  }

  return result;
}

unint64_t sub_2146641AC()
{
  result = qword_27C917758;
  if (!qword_27C917758)
  {
    result = swift_getWitnessTable(aD_6, &type metadata for CSDMConversationMessage.ConversationMessageType, v0, v1);
    atomic_store(result, &qword_27C917758);
  }

  return result;
}

unint64_t sub_214664200()
{
  result = qword_27C917760;
  if (!qword_27C917760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CSDMHandle.HandleType, &type metadata for CSDMHandle.HandleType, v0, v1);
    atomic_store(result, &qword_27C917760);
  }

  return result;
}

unint64_t sub_214664254()
{
  result = qword_27C917768;
  if (!qword_27C917768)
  {
    result = swift_getWitnessTable(aUg_1, &type metadata for CSDMConversationPresentationMode, v0, v1);
    atomic_store(result, &qword_27C917768);
  }

  return result;
}

unint64_t sub_2146642A8()
{
  result = qword_27C917770;
  if (!qword_27C917770)
  {
    result = swift_getWitnessTable(aAh, &type metadata for CSDMConversationAudioVideoMode, v0, v1);
    atomic_store(result, &qword_27C917770);
  }

  return result;
}

uint64_t sub_214664348()
{
  v1 = *v0;

  return v1;
}

void sub_214664378(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t type metadata accessor for MessagesAppCustomAcknowledgement(uint64_t a1)
{
  result = qword_280B2E870;
  if (!qword_280B2E870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146644F4()
{
  v1 = *(v0 + *(type metadata accessor for MessagesAppCustomAcknowledgement(0) + 24));

  return v1;
}

void sub_214664534(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppCustomAcknowledgement(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2146646C8(uint64_t a1, char a2)
{
  result = type metadata accessor for MessagesAppCustomAcknowledgement(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_214664758()
{
  v1 = *(v0 + *(type metadata accessor for MessagesAppCustomAcknowledgement(0) + 36));

  return v1;
}

void sub_214664798(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppCustomAcknowledgement(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_214664828(uint64_t a1)
{
  *(a1 + 8) = sub_214664890(&qword_27C90CF08, byte_2146FB030);
  result = sub_214664890(&qword_27C90CED8, byte_2146FB058);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214664890(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MessagesAppCustomAcknowledgement(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2146648FC(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_214664A0C(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_214664A0C(319, &qword_280B30B80, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BC8, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214664A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_214664A94(uint64_t a1)
{
  *(a1 + 8) = sub_214664B48(&qword_27C917778, byte_2146FAC70);
  result = sub_214664B48(&qword_27C917780, aA_110);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MarkUnreadRequest(uint64_t a1)
{
  result = qword_280B30510;
  if (!qword_280B30510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214664B48(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MarkUnreadRequest(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

id sub_214664BB8()
{
  v117 = type metadata accessor for LinkAttribute(0);
  v1 = MEMORY[0x28223BE20](v117);
  v113 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v116 = &v104 - v4;
  MEMORY[0x28223BE20](v3);
  v115 = &v104 - v5;
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v10 = sub_2146D9588();
  v11 = [v9 initWithString_];

  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = v6 + 32;
    v105 = @"__kIMTextStrikethroughAttributeName";
    v106 = @"__kIMTextUnderlineAttributeName";
    v107 = @"__kIMTextItalicAttributeName";
    v108 = @"__kIMTextBoldAttributeName";
    v109 = @"__kIMTextEffectAttributeName";
    v110 = @"__kIMLinkIsRichLinkAttributeName";
    v111 = @"__kIMLinkAttributeName";
    v112 = @"__kIMMentionConfirmedMention";
    v114 = @"__kIMBreadcrumbTextMarkerAttributeName";
    v118 = @"__kIMBreadcrumbTextOptionFlags";
    v119 = @"__kIMMessagePartAttributeName";
    v120 = @"__kIMBaseWritingDirectionAttributeName";
    v104 = xmmword_2146EA710;
    do
    {
      sub_214053840(v13, v141);
      v18 = v142;
      v19 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      (*(v19 + 16))(v18, v19);
      sub_2146D9758();
      sub_2146D9758();
      v122 = sub_2146D9768();
      v20 = sub_2146D9768();
      sub_214053840(v141, v140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905210, &qword_2146F1900);
      if (swift_dynamicCast())
      {
        memcpy(v125, v139, 0x1E1uLL);
        memcpy(v126, &v139[128], 0x139uLL);
        v21 = sub_214321D58(v126);
        v22 = MBDIMFileTransferAttributeName;
        if (v21 == 3)
        {
          sub_21438F464(v126);
          v22 = MBDIMLivePhotoAttributeName;
        }

        v14 = *v22;
        memcpy(v124, v125, sizeof(v124));
        v15 = objc_allocWithZone(type metadata accessor for _ObjCFileTransferAttributeWrapper());
        v16 = v14;
        sub_21431D360(v125, &v123);
        v17 = sub_2146666F4(v124);
        [v11 addAttribute:v16 value:v17 range:{v122, v20}];

        sub_2142E44CC(v125);
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        v23 = *v139;
        *&v121 = v13;
        v24 = v12;
        v25 = v8;
        v26 = v7;
        v27 = v20;
        v28 = v11;
        v29 = *&v139[8];
        v30 = v139[16];
        v31 = type metadata accessor for _ObjCBaseWritingDirectionAttributeWrapper();
        v32 = objc_allocWithZone(v31);
        v33 = &v32[OBJC_IVAR___BlastDoorBaseWritingDirectionAttribute_baseWritingDirectionAttribute];
        *v33 = v23;
        *(v33 + 1) = v29;
        v11 = v28;
        v33[16] = v30;
        v127.receiver = v32;
        v127.super_class = v31;
        v34 = v120;
        v35 = objc_msgSendSuper2(&v127, sel_init, v104);
      }

      else
      {
        if (swift_dynamicCast())
        {
          v121 = *v139;
          v38 = *&v139[16];
          v39 = type metadata accessor for _ObjCMessagePartAttributeWrapper();
          v40 = objc_allocWithZone(v39);
          v41 = &v40[OBJC_IVAR___BlastDoorMessagePartAttribute_messagePartAttribute];
          *v41 = v121;
          *(v41 + 2) = v38;
          v128.receiver = v40;
          v128.super_class = v39;
          v34 = v119;
          v42 = objc_msgSendSuper2(&v128, sel_init, v104);
LABEL_19:
          v36 = v42;
          [v11 addAttribute:v34 value:v42 range:{v122, v20}];
          goto LABEL_20;
        }

        if (swift_dynamicCast())
        {
          v121 = *v139;
          v43 = *&v139[16];
          v44 = type metadata accessor for _ObjCBreadcrumbTextOptionFlagsAttributeWrapper();
          v45 = objc_allocWithZone(v44);
          v46 = &v45[OBJC_IVAR___BlastDoorBreadcrumbTextOptionFlagsAttribute_breadcrumbTextOptionFlagsAttribute];
          *v46 = v121;
          *(v46 + 2) = v43;
          v129.receiver = v45;
          v129.super_class = v44;
          v34 = v118;
          v42 = objc_msgSendSuper2(&v129, sel_init, v104);
          goto LABEL_19;
        }

        if (swift_dynamicCast())
        {
          v121 = *v139;
          v47 = *&v139[16];
          v48 = *&v139[24];
          v49 = type metadata accessor for _ObjCBreadcrumbTextMarkerAttributeWrapper();
          v50 = objc_allocWithZone(v49);
          v51 = &v50[OBJC_IVAR___BlastDoorBreadcrumbTextMarkerAttribute_breadcrumbTextMarkerAttribute];
          *v51 = v121;
          *(v51 + 2) = v47;
          *(v51 + 3) = v48;
          v130.receiver = v50;
          v130.super_class = v49;
          v34 = v114;
          v42 = objc_msgSendSuper2(&v130, sel_init, v104);
          goto LABEL_19;
        }

        if (swift_dynamicCast())
        {
          v121 = *v139;
          v52 = *&v139[16];
          v53 = *&v139[24];
          v54 = type metadata accessor for _ObjCMentionAttributeWrapper();
          v55 = objc_allocWithZone(v54);
          v56 = &v55[OBJC_IVAR___BlastDoorMentionAttribute_mentionAttribute];
          *v56 = v121;
          *(v56 + 2) = v52;
          *(v56 + 3) = v53;
          v131.receiver = v55;
          v131.super_class = v54;
          v34 = v112;
          v42 = objc_msgSendSuper2(&v131, sel_init, v104);
          goto LABEL_19;
        }

        v57 = v115;
        if (swift_dynamicCast())
        {
          *&v121 = v11;
          v58 = v116;
          sub_214667224(v57, v116);
          v59 = v113;
          sub_2146672AC(v58, v113, type metadata accessor for LinkAttribute);
          v60 = type metadata accessor for _ObjCLinkAttributeWrapper(0);
          v61 = objc_allocWithZone(v60);
          sub_2146672AC(v59, v61 + OBJC_IVAR___BlastDoorLinkAttribute_linkAttribute[0], type metadata accessor for LinkAttribute);
          v132.receiver = v61;
          v132.super_class = v60;
          v62 = v111;
          v63 = objc_msgSendSuper2(&v132, sel_init);
          sub_214667314(v59, type metadata accessor for LinkAttribute);
          [v121 addAttribute:v62 value:v63 range:{v122, v20}];

          v11 = v121;
          sub_214667314(v116, type metadata accessor for LinkAttribute);
          goto LABEL_4;
        }

        if (swift_dynamicCast())
        {
          v64 = *v139;
          v65 = *&v139[8];
          *&v121 = v13;
          v24 = v12;
          v25 = v8;
          v26 = v7;
          v27 = v20;
          v28 = v11;
          v66 = v139[16];
          IsRichLinkAttributeWrapper = type metadata accessor for _ObjCLinkIsRichLinkAttributeWrapper();
          v68 = objc_allocWithZone(IsRichLinkAttributeWrapper);
          v69 = &v68[OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute];
          *v69 = v64;
          *(v69 + 1) = v65;
          v69[16] = v66;
          v11 = v28;
          v133.receiver = v68;
          v133.super_class = IsRichLinkAttributeWrapper;
          v34 = v110;
          v35 = objc_msgSendSuper2(&v133, sel_init, v104);
        }

        else
        {
          if (!swift_dynamicCast())
          {
            if (swift_dynamicCast())
            {
              v76 = *v139;
              v77 = *&v139[8];
              v78 = type metadata accessor for _ObjCTextBoldAttributeWrapper();
              v79 = objc_allocWithZone(v78);
              v80 = &v79[OBJC_IVAR___BlastDoorTextBoldAttribute_textBoldAttribute];
              *v80 = v76;
              *(v80 + 1) = v77;
              v135.receiver = v79;
              v135.super_class = v78;
              v34 = v108;
              v42 = objc_msgSendSuper2(&v135, sel_init, v104);
            }

            else if (swift_dynamicCast())
            {
              v81 = *v139;
              v82 = *&v139[8];
              v83 = type metadata accessor for _ObjCTextItalicAttributeWrapper();
              v84 = objc_allocWithZone(v83);
              v85 = &v84[OBJC_IVAR___BlastDoorTextItalicAttribute_textItalicAttribute];
              *v85 = v81;
              *(v85 + 1) = v82;
              v136.receiver = v84;
              v136.super_class = v83;
              v34 = v107;
              v42 = objc_msgSendSuper2(&v136, sel_init, v104);
            }

            else if (swift_dynamicCast())
            {
              v86 = *v139;
              v87 = *&v139[8];
              v88 = type metadata accessor for _ObjCTextUnderlineAttributeWrapper();
              v89 = objc_allocWithZone(v88);
              v90 = &v89[OBJC_IVAR___BlastDoorTextUnderlineAttribute_textUnderlineAttribute];
              *v90 = v86;
              *(v90 + 1) = v87;
              v137.receiver = v89;
              v137.super_class = v88;
              v34 = v106;
              v42 = objc_msgSendSuper2(&v137, sel_init, v104);
            }

            else
            {
              if (!swift_dynamicCast())
              {
                if (qword_27C902E58 != -1)
                {
                  swift_once();
                }

                v96 = qword_27C9045F0;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
                v97 = swift_allocObject();
                *(v97 + 16) = v104;
                sub_214053840(v141, v139);
                sub_21466714C(v139, v124);
                if (*&v124[24])
                {
                  sub_213FB77C8(v124, v125);
                  sub_214053840(v125, v124);
                  v98 = sub_2146D9618();
                  v100 = v99;
                  __swift_destroy_boxed_opaque_existential_1(v125);
                  sub_2146671BC(v139);
                }

                else
                {
                  sub_2146671BC(v124);
                  sub_2146671BC(v139);
                  v100 = 0xE300000000000000;
                  v98 = 7104878;
                }

                *(v97 + 56) = MEMORY[0x277D837D0];
                *(v97 + 64) = sub_213FB2DA0();
                *(v97 + 32) = v98;
                *(v97 + 40) = v100;
                v101 = sub_2146D9BC8();
                sub_2146D91C8("Failed to handle attribute: %{public}@ ", 39, 2, &dword_213FAF000, v96, v101, v97);

                goto LABEL_4;
              }

              v91 = *v139;
              v92 = *&v139[8];
              v93 = type metadata accessor for _ObjCTextStrikethroughAttributeWrapper();
              v94 = objc_allocWithZone(v93);
              v95 = &v94[OBJC_IVAR___BlastDoorTextStrikethroughAttribute_textStrikethroughAttribute];
              *v95 = v91;
              *(v95 + 1) = v92;
              v138.receiver = v94;
              v138.super_class = v93;
              v34 = v105;
              v42 = objc_msgSendSuper2(&v138, sel_init, v104);
            }

            goto LABEL_19;
          }

          v70 = *v139;
          v71 = *&v139[8];
          *&v121 = v13;
          v24 = v12;
          v25 = v8;
          v26 = v7;
          v27 = v20;
          v28 = v11;
          v72 = v139[16];
          v73 = type metadata accessor for _ObjCTextEffectAttributeWrapper();
          v74 = objc_allocWithZone(v73);
          v75 = &v74[OBJC_IVAR___BlastDoorTextEffectAttribute_textEffectAttribute];
          *v75 = v70;
          *(v75 + 1) = v71;
          v75[16] = v72;
          v11 = v28;
          v134.receiver = v74;
          v134.super_class = v73;
          v34 = v109;
          v35 = objc_msgSendSuper2(&v134, sel_init, v104);
        }
      }

      v36 = v35;
      v37 = v27;
      v7 = v26;
      v8 = v25;
      v12 = v24;
      v13 = v121;
      [v28 addAttribute:v34 value:v35 range:{v122, v37}];
LABEL_20:

LABEL_4:
      __swift_destroy_boxed_opaque_existential_1(v140);
      __swift_destroy_boxed_opaque_existential_1(v141);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  v102 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v102;
}

double sub_214665824()
{
  swift_beginAccess();

  return result;
}

double sub_2146658E0(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_214665938(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

void *sub_214665A4C()
{
  v1 = OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_214665AA4(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_214665BA8()
{
  v1 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_214665C5C(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_214665CB4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_214665DF0()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_214665EB4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_214665F14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_214666028()
{
  v1 = OBJC_IVAR___BlastDoorFileTransferAttribute_datasize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2146660C0(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_datasize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_21466620C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2146662A0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

double sub_214666300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_2146D95B8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;

  return result;
}

double sub_214666388(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

double sub_2146663E4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;

  return result;
}

void *sub_2146664F8()
{
  v1 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_214666550(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_2146665AC(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_214666604(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_2146666F4(const void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v51, a1, 0x1E1uLL);
  v8 = OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo;
  *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo] = 0;
  v9 = &v2[OBJC_IVAR___BlastDoorFileTransferAttribute_utiType];
  *v9 = 0;
  *(v9 + 1) = 0;
  v43 = v9;
  v10 = &v2[OBJC_IVAR___BlastDoorFileTransferAttribute_mimeType];
  *v10 = 0;
  *(v10 + 1) = 0;
  v44 = v10;
  v11 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji] = 0;
  v12 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  v13 = *(v51[2] + 16);
  if (v13)
  {
    v41 = v8;
    v42 = v11;
    v14 = v51[2] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    v40[1] = v51[2];

    do
    {
      sub_2146672AC(v14, v7, type metadata accessor for FileTransferAttribute.AttachmentInfo);
      v16 = type metadata accessor for _ObjCFileTransferAttribute_AttachmentInfoWrapper(0);
      v17 = objc_allocWithZone(v16);
      sub_2146672AC(v7, v17 + OBJC_IVAR___BlastDoorFileTransferAttribute_AttachmentInfo_fileTransferAttribute_AttachmentInfo[0], type metadata accessor for FileTransferAttribute.AttachmentInfo);
      v49.receiver = v17;
      v49.super_class = v16;
      objc_msgSendSuper2(&v49, sel_init);
      v18 = sub_214667314(v7, type metadata accessor for FileTransferAttribute.AttachmentInfo);
      MEMORY[0x2160547D0](v18);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2146D9938();
      }

      sub_2146D9958();
      v14 += v15;
      --v13;
    }

    while (v13);
    v12 = v50;

    v8 = v41;
    v11 = v42;
  }

  *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_attachments] = v12;
  if ((v51[5] & 1) == 0)
  {
    v19 = v51[4];
    v20 = v51[3];
    v21 = type metadata accessor for _ObjCFileTransferAttribute_ImageInfoWrapper();
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR___BlastDoorFileTransferAttribute_ImageInfo_fileTransferAttribute_ImageInfo];
    *v23 = v20;
    *(v23 + 1) = v19;
    v45.receiver = v22;
    v45.super_class = v21;
    v24 = objc_msgSendSuper2(&v45, sel_init);
    swift_beginAccess();
    v25 = *&v2[v8];
    *&v2[v8] = v24;
  }

  v26 = type metadata accessor for _ObjCEnumFileTransferAttributeAttachmentSubtypeWrapper();
  v27 = objc_allocWithZone(v26);
  memcpy(&v27[OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype], &v51[16], 0x139uLL);
  sub_21431D304(&v51[16], &v48);
  v47.receiver = v27;
  v47.super_class = v26;
  v28 = 0;
  *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype] = objc_msgSendSuper2(&v47, sel_init);
  if ((v51[15] & 1) == 0)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v29 = v51[59];
  if (!v51[59] || (v30 = &v2[OBJC_IVAR___BlastDoorFileTransferAttribute_name], *v30 = v51[58], *(v30 + 1) = v29, v31 = v51[10], *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_datasize] = v51[6], v31 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v32 = v51[9];
    v33 = v43;
    swift_beginAccess();
    *v33 = v32;
    v33[1] = v31;

    sub_213FDC9D0(v32, v31);

    v34 = v51[12];
    v35 = v51[13];
    v36 = v44;
    swift_beginAccess();
    *v36 = v34;
    *(v36 + 1) = v35;

    sub_2142E44CC(v51);
    swift_beginAccess();
    v37 = *&v2[v11];
    *&v2[v11] = v28;

    v38 = type metadata accessor for _ObjCFileTransferAttributeWrapper();
    v46.receiver = v2;
    v46.super_class = v38;
    return objc_msgSendSuper2(&v46, sel_init);
  }

  return result;
}

uint64_t sub_214666BC4()
{
  v1 = v0;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD000000000000024, 0x80000002147A63C0);
  v2 = (v0 + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x2160545D0](v3, v4);

  MEMORY[0x2160545D0](0x7A69736174616420, 0xEA00000000003D65);
  swift_beginAccess();
  v5 = sub_2146DA428();
  MEMORY[0x2160545D0](v5);

  MEMORY[0x2160545D0](0x6570795469747520, 0xE90000000000003DLL);
  v6 = (v1 + OBJC_IVAR___BlastDoorFileTransferAttribute_utiType);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x2160545D0](v7, v8);

  MEMORY[0x2160545D0](0x707954656D696D20, 0xEA00000000003D65);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v9 = sub_2146D9608();
  MEMORY[0x2160545D0](v9);

  MEMORY[0x2160545D0](0x4179636167656C20, 0xEF3D696A6F6D696ELL);
  v10 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  swift_beginAccess();
  v11 = *(v1 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9177D0, qword_214778630);
  v12 = sub_2146D9608();
  MEMORY[0x2160545D0](v12);

  MEMORY[0x2160545D0](0xD000000000000013, 0x80000002147A63F0);
  v13 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = [v14 description];
  v16 = sub_2146D95B8();
  v18 = v17;

  MEMORY[0x2160545D0](v16, v18);

  MEMORY[0x2160545D0](0xD000000000000013, 0x80000002147A6410);
  v19 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  if (*(v1 + v19) >> 62)
  {
    sub_2146DA028();
  }

  v20 = sub_2146DA428();
  MEMORY[0x2160545D0](v20);

  return 0;
}

id sub_214666F7C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_214667010(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _ObjCFileTransferAttributeWrapper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2146670EC()
{
  memcpy(__dst, v0, 0x1E1uLL);
  objc_allocWithZone(type metadata accessor for _ObjCFileTransferAttributeWrapper());
  sub_21431D360(__dst, &v2);
  return sub_2146666F4(v0);
}

uint64_t sub_21466714C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917788, &unk_214778620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2146671BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917788, &unk_214778620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214667224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAttribute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2146672AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214667314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_214667374()
{
  memcpy(__dst, v0, 0x1E1uLL);
  memcpy(v4, v0, 0x1E1uLL);
  v1 = objc_allocWithZone(type metadata accessor for _ObjCFileTransferAttributeWrapper());
  sub_21431D360(__dst, v3);
  return sub_2146666F4(v4);
}

double keypath_get_10Tm_0@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

id keypath_get_2Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

unint64_t sub_2146679F4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916610, &qword_214779300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2147786A0;
  v5 = sub_2142E43D0();
  *(v4 + 32) = &type metadata for BaseWritingDirectionAttribute;
  *(v4 + 40) = v5;
  v6 = sub_2142E4328();
  *(v4 + 48) = &type metadata for MessagePartAttribute;
  *(v4 + 56) = v6;
  v7 = sub_2142E3A1C();
  *(v4 + 64) = &type metadata for FileTransferAttribute;
  *(v4 + 72) = v7;
  v8 = sub_2142E4280();
  *(v4 + 80) = &type metadata for BreadcrumbTextOptionFlagsAttribute;
  *(v4 + 88) = v8;
  v9 = sub_2142E41D8();
  *(v4 + 96) = &type metadata for BreadcrumbTextMarkerAttribute;
  *(v4 + 104) = v9;
  v10 = sub_2142E4130();
  *(v4 + 112) = &type metadata for MentionAttribute;
  *(v4 + 120) = v10;
  v11 = type metadata accessor for LinkAttribute(0);
  v12 = sub_21466EBC0(&qword_280B309B0, type metadata accessor for LinkAttribute, protocol conformance descriptor for LinkAttribute);
  *(v4 + 128) = v11;
  *(v4 + 136) = v12;
  v13 = sub_2142E4088();
  *(v4 + 144) = &type metadata for TextEffectAttribute;
  *(v4 + 152) = v13;
  v14 = sub_2142E3FE0();
  *(v4 + 160) = &type metadata for TextBoldAttribute;
  *(v4 + 168) = v14;
  v15 = sub_2142E3F38();
  *(v4 + 176) = &type metadata for TextItalicAttribute;
  *(v4 + 184) = v15;
  v16 = sub_2142E3E90();
  *(v4 + 192) = &type metadata for TextUnderlineAttribute;
  *(v4 + 200) = v16;
  v17 = sub_2142E3DE8();
  *(v4 + 208) = &type metadata for TextStrikethroughAttribute;
  *(v4 + 216) = v17;
  v18 = sub_2142E3D40();
  *(v4 + 224) = &type metadata for LinkIsRichLinkAttribute;
  *(v4 + 232) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C70, &qword_2147319F0);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v19 + 16) = sub_21466F574;
  *(v19 + 24) = v20;
  *(v3 + 32) = v19;
  v21 = sub_2142E037C(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904100, &unk_2146EAA50);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v22 + 16) = sub_2145ED9C8;
  *(v22 + 24) = v23;
  *(inited + 32) = v22;
  return sub_214043C30(inited, a1);
}

uint64_t sub_214667C6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_2142E5A68(v3, v4, v5);
}

__n128 sub_214667CD0(uint64_t a1)
{
  v9 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_214032578(v5, v6, v7);
  result = v9;
  *(v1 + 32) = *a1;
  *(v1 + 48) = v9;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return result;
}

uint64_t sub_214667D50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_214667D9C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  return result;
}

uint64_t sub_214667DF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  if (v2 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = v1[7];
    v4 = v1[8];
    *a1 = v2;
    a1[1] = v3;
    a1[2] = v4;

    return sub_214031CA0(v2, v3, v4);
  }

  return result;
}

void sub_214667E74()
{
  if (*(v0 + 96))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t sub_214667F18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 496);
  v3 = *(v1 + 504);
  v4 = *(v1 + 512);
  v5 = *(v1 + 520);
  *a1 = *(v1 + 488);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214667F70(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 504);
  v7 = *(v1 + 512);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 488) = *a1;
  *(v1 + 504) = v3;
  *(v1 + 512) = v4;
  *(v1 + 520) = v5;
  return result;
}

uint64_t sub_214667FDC()
{
  if (*(v0 + 512) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 504);

    return v1;
  }

  return result;
}

uint64_t sub_21466805C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2146680A8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  v1[11] = *a1;
  v1[12].n128_u64[0] = v3;
  v1[12].n128_u8[8] = v4;
  return result;
}

void sub_214668100()
{
  if (*(v0 + 192))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t AudioMessage.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 AudioMessage.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

void AudioMessage.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t TextMessage.$threadIdentifierGUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 28));
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

__n128 TextMessage.$threadIdentifierGUID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 28));
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

uint64_t TextMessage.$threadOriginatorFallbackHash.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 32));
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

__n128 TextMessage.$threadOriginatorFallbackHash.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 32));
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

uint64_t TextMessage.$expressiveSendStyleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 36));
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

__n128 TextMessage.$expressiveSendStyleIdentifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 36));
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

uint64_t TextMessage.$groupID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 40));
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

__n128 TextMessage.$groupID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 40));
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

uint64_t TextMessage.$lastPublisherOfOffGridStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 92));
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

__n128 TextMessage.$lastPublisherOfOffGridStatus.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 92));
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

uint64_t TextMessage.threadIdentifierGUID.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 28);
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

uint64_t TextMessage.threadOriginatorFallbackHash.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 32);
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

uint64_t TextMessage.expressiveSendStyleIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 36);
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

uint64_t TextMessage.groupID.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 40);
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

uint64_t TextMessage.lastPublisherOfOffGridStatus.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 92);
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

uint64_t sub_214668AEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214668B38(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

__n128 sub_214668B94(uint64_t a1)
{
  sub_213FB2DF4(v1 + 40, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 232) = *(a1 + 192);
  *(v1 + 248) = v3;
  *(v1 + 264) = *(a1 + 224);
  v4 = *(a1 + 144);
  *(v1 + 168) = *(a1 + 128);
  *(v1 + 184) = v4;
  v5 = *(a1 + 176);
  *(v1 + 200) = *(a1 + 160);
  *(v1 + 216) = v5;
  v6 = *(a1 + 80);
  *(v1 + 104) = *(a1 + 64);
  *(v1 + 120) = v6;
  v7 = *(a1 + 112);
  *(v1 + 136) = *(a1 + 96);
  *(v1 + 152) = v7;
  v8 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 72) = result;
  *(v1 + 280) = *(a1 + 240);
  *(v1 + 88) = v10;
  return result;
}

void *sub_214668C3C(const void *a1)
{
  sub_213FB2DF4(v1 + 40, &qword_27C905500, &qword_2146F2BE0);

  return memcpy((v1 + 40), a1, 0x1B8uLL);
}

uint64_t sub_214668C90()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t TextMessage.MessageSummaryInfo.$sourceApplicationID.getter@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDC9D0(v3, v4);
}

__n128 TextMessage.MessageSummaryInfo.$sourceApplicationID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[2].n128_i64[0];
  v7 = v1[2].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t TextMessage.MessageSummaryInfo.$associatedBalloonBundleID.getter@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDC9D0(v3, v4);
}

__n128 TextMessage.MessageSummaryInfo.$associatedBalloonBundleID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t TextMessage.MessageSummaryInfo.sourceApplicationID.getter()
{
  if (*(v0 + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);

    return v1;
  }

  return result;
}

uint64_t TextMessage.MessageSummaryInfo.associatedBalloonBundleID.getter()
{
  if (*(v0 + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 72);

    return v1;
  }

  return result;
}

uint64_t sub_214669038@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1 + 40, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214669100()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9177E8, &qword_214779308);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_2146DA008();
  __swift_allocate_value_buffer(v3, qword_27CA19EC8);
  v4 = __swift_project_value_buffer(v3, qword_27CA19EC8);
  sub_2146D9FF8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_214669230()
{
  v1 = *v0;

  return v1;
}

void sub_214669260(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2146692B8()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_2146692E8(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_214669340(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_21403220C(*a1, v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_214031CE0(v1, v2, v3);
}

uint64_t (*sub_21466941C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1[6];
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = v1[7];
    v5 = v1[8];
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    sub_214031CA0(v3, v4, v5);
    return sub_2145ED1FC;
  }

  return result;
}

void (*sub_2146694BC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;

  sub_2142E5A68(v6, v7, v8);
  return sub_2145ED50C;
}

void sub_214669568(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 80);
  v6 = *(v1 + 104);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 96) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_2146696A4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214394968;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21466973C(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_214669860(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146699A8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214669A44(uint64_t *a1))(uint64_t **a1, char a2)
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
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

void (*sub_214669ADC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v3 + 248;
  *(v3 + 496) = v1;
  result = sub_213FB2E54(v1 + 40, v3 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v4 + 272))
  {
    v7 = *(v5 + 208);
    *(v4 + 192) = *(v5 + 192);
    *(v4 + 208) = v7;
    *(v4 + 224) = *(v5 + 224);
    *(v4 + 240) = *(v5 + 240);
    v8 = *(v5 + 144);
    *(v4 + 128) = *(v5 + 128);
    *(v4 + 144) = v8;
    v9 = *(v5 + 176);
    *(v4 + 160) = *(v5 + 160);
    *(v4 + 176) = v9;
    v10 = *(v5 + 80);
    *(v4 + 64) = *(v5 + 64);
    *(v4 + 80) = v10;
    v11 = *(v5 + 112);
    *(v4 + 96) = *(v5 + 96);
    *(v4 + 112) = v11;
    v12 = *(v5 + 16);
    *v4 = *v5;
    *(v4 + 16) = v12;
    v13 = *(v5 + 48);
    *(v4 + 32) = *(v5 + 32);
    *(v4 + 48) = v13;
    return sub_214487064;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_214669BC0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1 + 40, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_214487258;
}

void sub_214669CF8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 512);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 504);
    a2[1] = v4;
  }
}

double sub_214669D6C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214669E1C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 488);
  v8 = *(v2 + 520);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 504), *(v2 + 512));

    *(v2 + 504) = a1;
    *(v2 + 512) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214669F60(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 504);
  *(v3 + 24) = v5;
  v6 = *(v1 + 512);
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

    return sub_21466A038;
  }

  return result;
}

void sub_21466A038(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 488);
    v13 = *(v3 + 520);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 504) = v5;
      *(v9 + 512) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 488);
  v13 = *(v3 + 520);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 504) = v5;
  *(v7 + 512) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21466A208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 496);
  v3 = *(a1 + 504);
  v4 = *(a1 + 512);
  v5 = *(a1 + 520);
  *a2 = *(a1 + 488);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21466A25C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 504);
  v9 = *(a2 + 512);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 488) = v4;
  *(a2 + 496) = v3;
  *(a2 + 504) = v5;
  *(a2 + 512) = v6;
  *(a2 + 520) = v7;
  return result;
}

void (*sub_21466A2E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 496);
  v6 = *(v1 + 504);
  v7 = *(v1 + 512);
  v8 = *(v1 + 520);
  *v4 = *(v1 + 488);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21466A384;
}

void sub_21466A384(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 504);
  v10 = *(v3 + 512);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 488) = v5;
    *(v3 + 496) = v4;
    *(v3 + 504) = v7;
    *(v3 + 512) = v6;
    *(v3 + 520) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 488) = v5;
    *(v3 + 496) = v4;
    *(v3 + 504) = v7;
    *(v3 + 512) = v6;
    *(v3 + 520) = v8;
  }

  free(v2);
}

uint64_t sub_21466A4B8()
{
  v1 = *v0;

  return v1;
}

void sub_21466A4E8(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_21466A54C(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t sub_21466A57C()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_21466A5AC(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_21466A604@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v16 = *(v1 + 136);
  v3 = v16;
  v17 = v4;
  v18 = *(v1 + 168);
  v5 = v18;
  v11 = *(v1 + 56);
  v7 = *(v1 + 88);
  v12 = *(v1 + 72);
  v6 = v12;
  v13 = v7;
  v14 = *(v1 + 104);
  v8 = v14;
  v15 = v2;
  *a1 = v11;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_214091538(&v11, v10);
}

__n128 sub_21466A680(uint64_t a1)
{
  v3 = *(v1 + 136);
  v10[4] = *(v1 + 120);
  v10[5] = v3;
  v10[6] = *(v1 + 152);
  v11 = *(v1 + 168);
  v4 = *(v1 + 72);
  v10[0] = *(v1 + 56);
  v10[1] = v4;
  v5 = *(v1 + 104);
  v10[2] = *(v1 + 88);
  v10[3] = v5;
  sub_214091594(v10);
  v6 = *(a1 + 80);
  *(v1 + 120) = *(a1 + 64);
  *(v1 + 136) = v6;
  *(v1 + 152) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 88) = result;
  *(v1 + 168) = *(a1 + 112);
  *(v1 + 104) = v9;
  return result;
}

void sub_21466A738(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 192);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21466A7A0(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21466A848(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 176);
  v6 = *(v1 + 200);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 192) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21466A984(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 192);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_21466AA1C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21466AA1C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    v7 = *a1;
    v5 = *(v3 + 176);
    v8 = *(v3 + 200);
    v9 = 0x6E776F6E6B6E753CLL;
    v10 = 0xE90000000000003ELL;
    v11 = 0xD00000000000001CLL;
    v12 = 0x800000021478A360;
    if (v5(&v7, &v8, &v9))
    {

      *(v3 + 192) = v2;
      return;
    }

    goto LABEL_8;
  }

  v7 = *a1;
  v4 = *(v3 + 176);
  v8 = *(v3 + 200);
  v9 = 0x6E776F6E6B6E753CLL;
  v10 = 0xE90000000000003ELL;
  v11 = 0xD00000000000001CLL;
  v12 = 0x800000021478A360;

  if ((v4(&v7, &v8, &v9) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 192) = v2;
}

void sub_21466ABFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 176) = v4;
  *(a2 + 184) = v3;
  *(a2 + 192) = v5;
  *(a2 + 200) = v6;
}

void (*sub_21466AC70(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  v7 = *(v1 + 200);
  *v4 = *(v1 + 176);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_21466AD08;
}

void sub_21466AD08(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  if (a2)
  {

    *(v3 + 176) = v5;
    *(v3 + 184) = v4;
    *(v3 + 192) = v6;
    *(v3 + 200) = v7;
  }

  else
  {

    *(v3 + 176) = v5;
    *(v3 + 184) = v4;
    *(v3 + 192) = v6;
    *(v3 + 200) = v7;
  }

  free(v2);
}

uint64_t AudioMessage.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_214031CA0(v2, v3, v4);
}

__n128 AudioMessage.content.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_214031CE0(*v1, v1[1], v1[2]);
  result = v4;
  *v1 = v4;
  v1[2] = v2;
  return result;
}

void AudioMessage.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 24);
  v6 = *(v1 + 48);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 40) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*AudioMessage.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2145B8C7C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*AudioMessage.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *v4 = *(v1 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2145B8F68;
}

BlastDoor::TextMessage::ScheduleType_optional __swiftcall TextMessage.ScheduleType.init(defaultingRawValue:)(Swift::Int_optional defaultingRawValue)
{
  if (defaultingRawValue.is_nil)
  {
    *v1 = 5;
  }

  else if ((defaultingRawValue.value + 1) > 0xB)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_214779312[defaultingRawValue.value + 1];
  }

  return defaultingRawValue.value;
}

BlastDoor::TextMessage::ScheduleType_optional __swiftcall TextMessage.ScheduleType.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) > 0xB)
  {
    *v1 = 5;
  }

  else
  {
    *v1 = byte_21477931E[rawValue + 1];
  }

  return rawValue;
}

uint64_t sub_21466B18C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214779330[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21466B214(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214779330[v2]);
  return sub_2146DA9B8();
}

uint64_t sub_21466B400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21466B4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_21466B65C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_21466B6F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TextMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void TextMessage.threadIdentifierGUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 28);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*TextMessage.threadIdentifierGUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for TextMessage(0) + 28);
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

uint64_t sub_21466B9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 28));
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

uint64_t sub_21466BA6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 28);
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

void (*TextMessage.$threadIdentifierGUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for TextMessage(0) + 28);
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

void sub_21466BBB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 32);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_21466BC4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TextMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void TextMessage.threadOriginatorFallbackHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 32);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*TextMessage.threadOriginatorFallbackHash.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for TextMessage(0) + 32);
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

uint64_t sub_21466BF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 32));
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

uint64_t sub_21466BFC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 32);
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

void (*TextMessage.$threadOriginatorFallbackHash.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for TextMessage(0) + 32);
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

void sub_21466C104(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 36);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_21466C1A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TextMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void TextMessage.expressiveSendStyleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 36);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*TextMessage.expressiveSendStyleIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for TextMessage(0) + 36);
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

uint64_t sub_21466C4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 36));
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

uint64_t sub_21466C514(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 36);
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

void (*TextMessage.$expressiveSendStyleIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for TextMessage(0) + 36);
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

void sub_21466C658(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 40);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_21466C6F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TextMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void TextMessage.groupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 40);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*TextMessage.groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for TextMessage(0) + 40);
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

uint64_t sub_21466C9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 40));
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

uint64_t sub_21466CA68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 40);
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

void (*TextMessage.$groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for TextMessage(0) + 40);
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

uint64_t TextMessage.currentGroupName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage(0) + 44));

  return v1;
}

void TextMessage.currentGroupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TextMessage.groupParticipantVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextMessage.groupProtocolVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextMessage.groupPhotoCreationTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextMessage.transcriptBackgroundVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void TextMessage.MessageSummaryInfo.sourceApplicationID.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 16);
  v8 = *(v2 + 48);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 32), *(v2 + 40));

    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*TextMessage.MessageSummaryInfo.sourceApplicationID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
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

    return sub_2145F81C8;
  }

  return result;
}

void (*TextMessage.MessageSummaryInfo.$sourceApplicationID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_213FDC9D0(v6, v7);
  return sub_2145F843C;
}

void TextMessage.MessageSummaryInfo.associatedBalloonBundleID.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 56);
  v8 = *(v2 + 88);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 72), *(v2 + 80));

    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
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
    swift_unexpectedError();
    __break(1u);
  }
}

void (*TextMessage.MessageSummaryInfo.associatedBalloonBundleID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
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

    return sub_21447871C;
  }

  return result;
}