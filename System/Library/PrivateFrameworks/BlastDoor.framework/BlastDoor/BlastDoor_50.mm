uint64_t sub_21447D3AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    *a2 = *(a1 + 32);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_21447D41C(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21447D4CC(uint64_t a1, uint64_t a2)
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

void (*sub_21447D614(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 32);
    a1[1] = v3;

    return sub_21447D6B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21447D6B0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 16);
    v10 = *(v3 + 48);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 32) = v4;
      *(v3 + 40) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 16);
  v10 = *(v3 + 48);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 32) = v4;
  *(v3 + 40) = v2;
}

void sub_21447D8D0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
}

void (*sub_21447D948(uint64_t *a1))(uint64_t **a1, char a2)
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
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21447D9E0;
}

void sub_21447D9E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
  }

  else
  {

    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
  }

  free(v2);
}

void sub_21447DAB0(uint64_t a1, uint64_t a2)
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

void (*sub_21447DBF8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 72);
    a1[1] = v3;

    return sub_2143C00B4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21447DC94(uint64_t *a1))(uint64_t **a1, char a2)
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
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143C03E4;
}

uint64_t sub_21447DD2C()
{
  sub_21447D1AC();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21447DD80()
{
  sub_21447D1AC();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_21447DDD4(uint64_t a1)
{
  *(a1 + 8) = sub_2143200DC();
  result = sub_21431F9A4();
  *(a1 + 16) = result;
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

uint64_t sub_21447DE28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_21447DE70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21447DED8()
{
  v1 = *v0;

  return v1;
}

void sub_21447DF08(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_21447DF60()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_21447DF90(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21447DFE8()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_21447E018(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_21447E070()
{
  v1 = *(v0 + 48);

  return v1;
}

void sub_21447E0A0(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_21447E0F8()
{
  v1 = *(v0 + 64);

  return v1;
}

void sub_21447E128(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_21447E180()
{
  v1 = *(v0 + 80);

  return v1;
}

void sub_21447E1B0(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_21447E208()
{
  v1 = *(v0 + 96);

  return v1;
}

void sub_21447E238(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_21447E290@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_2142ECDA4(v10, &v9);
}

__n128 sub_21447E2E8(uint64_t a1)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v9[6] = v1[6];
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  sub_21447E358(v9);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  v1[6] = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t sub_21447E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21447E43C()
{
  result = qword_27C9142A8;
  if (!qword_27C9142A8)
  {
    result = swift_getWitnessTable(byte_2146F8E20, &type metadata for ContactMessage, v0, v1);
    atomic_store(result, &qword_27C9142A8);
  }

  return result;
}

unint64_t sub_21447E490()
{
  result = qword_27C9142B0;
  if (!qword_27C9142B0)
  {
    result = swift_getWitnessTable(byte_2146F8E48, &type metadata for ContactMessage, v0, v1);
    atomic_store(result, &qword_27C9142B0);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_21447E518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_21447E560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MBDRichCards.bridgedToObjectiveC.getter(uint64_t a1, uint64_t a2)
{
  MBDRichCards.dictionaryRepresentation.getter();
  v2 = sub_2146D9468();

  return v2;
}

uint64_t MBDRichCards.dictionaryRepresentation.getter()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6910;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x800000021479B110;
  v4 = *(v2 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = (v2 + 32);
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v2 + 16))
    {
      memcpy(__dst, v7, sizeof(__dst));
      v9 = MBDRichCard.dictionaryRepresentation.getter();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_214095798(0, v8[2] + 1, 1, v8);
        v8 = result;
      }

      v11 = v8[2];
      v10 = v8[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_214095798((v10 > 1), v11 + 1, 1, v8);
        v8 = result;
      }

      ++v6;
      v8[2] = v11 + 1;
      v8[v11 + 4] = v9;
      v7 += 416;
      if (v4 == v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_11:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9050E8, &qword_2147726C0);
    *(inited + 48) = v8;
    *(inited + 72) = v12;
    *(inited + 80) = 0xD000000000000022;
    *(inited + 88) = 0x800000021479B130;
    if (v1)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
    }

    else
    {
      v13 = 0;
      *(inited + 104) = 0;
      *(inited + 112) = 0;
    }

    *(inited + 96) = v1;
    *(inited + 120) = v13;
    v14 = sub_214045690(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v15 = sub_2140418B8(v14);

    return v15;
  }

  return result;
}

uint64_t sub_21447E868(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7364726163;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x8000000214788010;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7364726163;
  }

  if (*a2)
  {
    v6 = 0x8000000214788010;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_21447E910()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21447E994(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_21447EA04(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_21447EA84(char *a2@<X8>)
{
  v3 = sub_2146DA098();

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

void sub_21447EAE4(unint64_t *a1@<X8>)
{
  v2 = 0x8000000214788010;
  v3 = 0x7364726163;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

void sub_21447EB24(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_21447EB88(uint64_t a1)
{
  v2 = sub_21447F0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21447EBC4(uint64_t a1)
{
  v2 = sub_21447F0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDRichCards.init(from:configuration:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9142B8, "FW\b");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21447F0D0();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089E8, &qword_2146F5280);
    v13 = 0;
    sub_21447F178(&qword_27C9142C8, sub_21447F124, MEMORY[0x277CC9C38]);
    sub_2146DA0D8();
    v9 = v14;
    v13 = 1;
    sub_2142FFBF4();
    sub_2146DA148();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDRichCards.encode(to:configuration:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9142D8, &unk_21474B410);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21447F0D0();

  sub_2146DAA28();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089E8, &qword_2146F5280);
  sub_21447F178(&qword_27C9142E0, sub_21447F1F0, MEMORY[0x277CC9C40]);
  sub_2146DA2A8();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A00, &qword_2146F5288);
    sub_2142FFD20();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21447F068()
{
  MBDRichCards.dictionaryRepresentation.getter();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_21447F0D0()
{
  result = qword_27C9142C0;
  if (!qword_27C9142C0)
  {
    result = swift_getWitnessTable("y", &_s19CodingConfigurationV10CodingKeysON_10, v0, v1);
    atomic_store(result, &qword_27C9142C0);
  }

  return result;
}

unint64_t sub_21447F124()
{
  result = qword_27C9142D0;
  if (!qword_27C9142D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDRichCard, &type metadata for MBDRichCard, v0, v1);
    atomic_store(result, &qword_27C9142D0);
  }

  return result;
}

uint64_t sub_21447F178(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9089E8, &qword_2146F5280);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21447F1F0()
{
  result = qword_27C9142E8;
  if (!qword_27C9142E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDRichCard, &type metadata for MBDRichCard, v0, v1);
    atomic_store(result, &qword_27C9142E8);
  }

  return result;
}

unint64_t sub_21447F268()
{
  result = qword_27C9142F0;
  if (!qword_27C9142F0)
  {
    result = swift_getWitnessTable(aA_29, &_s19CodingConfigurationV10CodingKeysON_10, v0, v1);
    atomic_store(result, &qword_27C9142F0);
  }

  return result;
}

unint64_t sub_21447F2C0()
{
  result = qword_27C9142F8;
  if (!qword_27C9142F8)
  {
    result = swift_getWitnessTable(byte_21474B4C0, &_s19CodingConfigurationV10CodingKeysON_10, v0, v1);
    atomic_store(result, &qword_27C9142F8);
  }

  return result;
}

unint64_t sub_21447F318()
{
  result = qword_27C914300;
  if (!qword_27C914300)
  {
    result = swift_getWitnessTable(byte_21474B4E8, &_s19CodingConfigurationV10CodingKeysON_10, v0, v1);
    atomic_store(result, &qword_27C914300);
  }

  return result;
}

uint64_t sub_21447F3A0(uint64_t a1)
{
  *(a1 + 8) = sub_21447F454(&qword_27C914308, byte_2146F8F10);
  result = sub_21447F454(&qword_27C914310, byte_2146F8F38);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DeliveredQuietlyReceipt(uint64_t a1)
{
  result = qword_280B301D8;
  if (!qword_280B301D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21447F454(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DeliveredQuietlyReceipt(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21447F4C0(uint64_t a1)
{
  *(a1 + 8) = sub_21447F4F0();
  result = sub_21447F544();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21447F4F0()
{
  result = qword_280B30150;
  if (!qword_280B30150)
  {
    result = swift_getWitnessTable(byte_2146FA310, &type metadata for IDSCommandWebTunnelResponse, v0, v1);
    atomic_store(result, &qword_280B30150);
  }

  return result;
}

unint64_t sub_21447F544()
{
  result = qword_280B30158;
  if (!qword_280B30158)
  {
    result = swift_getWitnessTable(byte_2146FA338, &type metadata for IDSCommandWebTunnelResponse, v0, v1);
    atomic_store(result, &qword_280B30158);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor25APSUserPayloadHttpHeadersVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_21447F5BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_21447F618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

BlastDoor::ImageHeader_optional __swiftcall ImageHeader.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA8B8();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ImageHeader.rawValue.getter()
{
  result = 0x6C7070612E6D6F63;
  switch(*v0)
  {
    case 1:
    case 6:
      result = 0x612E63696C627570;
      break;
    case 2:
      result = 0x682E63696C627570;
      break;
    case 3:
      result = 0x6D2E63696C627570;
      break;
    case 4:
      result = 0x6D2E63696C627570;
      break;
    case 5:
      result = 0x612E63696C627570;
      break;
    case 7:
      result = 0x682E63696C627570;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
    case 0xB:
      result = 0x6A2E63696C627570;
      break;
    case 0xA:
      result = 0x6D2E63696C627570;
      break;
    case 0xC:
      result = 0x702E63696C627570;
      break;
    case 0xD:
      result = 0x772E63696C627570;
      break;
    case 0xE:
      result = 0x742E63696C627570;
      break;
    case 0xF:
      result = 0x622E63696C627570;
      break;
    case 0x10:
      result = 0x672E63696C627570;
      break;
    case 0x11:
      result = 0xD000000000000019;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x13:
      result = 0x6E776F6E6B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21447FA6C()
{
  v0 = ImageHeader.rawValue.getter();
  v2 = v1;
  if (v0 == ImageHeader.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

unint64_t sub_21447FB0C()
{
  result = qword_27C914318;
  if (!qword_27C914318)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImageHeader, &type metadata for ImageHeader, v0, v1);
    atomic_store(result, &qword_27C914318);
  }

  return result;
}

uint64_t sub_21447FB60()
{
  sub_2146DA958();
  ImageHeader.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21447FBC8(uint64_t a1)
{
  ImageHeader.rawValue.getter();
  sub_2146D9698();

  return result;
}

uint64_t sub_21447FC2C(uint64_t a1)
{
  sub_2146DA958();
  ImageHeader.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_21447FC9C@<X0>(unint64_t *a1@<X8>)
{
  result = ImageHeader.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21447FDE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21447FE2C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21447FE8C(uint64_t result, unint64_t a2)
{
  v4 = result;
  v5 = *(v2 + 8);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v10 = v7 - v8;
      if (v9)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v10 >= 12)
      {
LABEL_14:
        sub_21402D9F8(result, a2);
        result = sub_21462C008(4, v4, a2, v27);
        if (*(v5 + 16))
        {
          v19 = v27[0];
          v18 = v27[1];

          v21 = sub_21462C150(v20, v19, v18);

          sub_213FB54FC(v19, v18);
          if (v21)
          {
            result = sub_2146D8A18();
            if (*(v5 + 16) >= 2uLL)
            {
              v23 = result;
              v24 = v22;

              v26 = sub_21462C150(v25, v23, v24);

              sub_213FB54FC(v23, v24);
              return (v26 & 1) != 0;
            }

LABEL_24:
            __break(1u);
            return result;
          }

          return 0;
        }

        __break(1u);
        goto LABEL_22;
      }
    }
  }

  else if (v6)
  {
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (HIDWORD(result) - result >= 12)
    {
      goto LABEL_14;
    }
  }

  else if (BYTE6(a2) >= 0xCuLL)
  {
    goto LABEL_14;
  }

  v11 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v12 = qword_280B35410;
  result = os_log_type_enabled(qword_280B35410, v11);
  if (result)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v13 = 136446210;
    v15 = ImageHeader.rawValue.getter();
    v17 = sub_2144AEA38(v15, v16, v27);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_213FAF000, v12, v11, "%{public}s header validation failed because the data wasn't log enough", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216056AC0](v14, -1, -1);
    MEMORY[0x216056AC0](v13, -1, -1);
    return 0;
  }

  return result;
}

uint64_t sub_214480144(uint64_t a1)
{
  *(a1 + 8) = sub_2144801F8(&qword_27C914320, asc_2146F73E0);
  result = sub_2144801F8(&unk_27C914328, byte_2146F7408);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for AcceptChatCommand(uint64_t a1)
{
  result = qword_280B2F380;
  if (!qword_280B2F380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144801F8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for AcceptChatCommand(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214480264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_214052B38(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_2146D8B88();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_21408C470(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_214482F70();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_2146D8B88();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_214481DEC(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_2146D8B88();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_214480430(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_213FDC730(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_214052D14(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_2146DA008();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_213FB2DF4(a1, &qword_27C913170, &qword_2146EAB20);
    sub_2144AF010(a2, v9);
    v7 = sub_2146DA008();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_213FB2DF4(v9, &qword_27C913170, &qword_2146EAB20);
  }

  return result;
}

_OWORD *sub_21448054C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_213FDC730(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_214053068(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_213FB2DF4(a1, &qword_27C913170, &qword_2146EAB20);
    v7 = sub_21408C5F8(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_21448360C(&unk_27C9042C0, &unk_2146EAE60);
        v11 = v13;
      }

      sub_213FDC730((*(v11 + 56) + 32 * v9), v14);
      sub_2144823C0(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_213FB2DF4(v14, &qword_27C913170, &qword_2146EAB20);
  }

  return result;
}

_OWORD *sub_214480660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_213FDC730(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_2140530B0(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_213FB2DF4(a1, &qword_27C913170, &qword_2146EAB20);
    v7 = sub_21408C624(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_21448360C(&unk_27C9042D0, &unk_2146EAE78);
        v11 = v13;
      }

      sub_213FDC730((*(v11 + 56) + 32 * v9), v14);
      sub_214482824(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_213FB2DF4(v14, &qword_27C913170, &qword_2146EAB20);
  }

  return result;
}

void sub_214480774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_213FB77C8(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_21405324C(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_213FB2DF4(a1, &qword_27C914370, &qword_21474BE98);
    sub_2144AF0EC(a2, a3, v8);

    sub_213FB2DF4(v8, &qword_27C914370, &qword_21474BE98);
  }
}

unint64_t sub_214480844()
{
  sub_214480EA8();
  v0 = sub_2146D9C38();
  type metadata accessor for BlastDoorServer();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = 1;
  result = sub_214046A28(v2);
  *(v1 + 48) = result;
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  qword_280B32D60 = v1;
  return result;
}

uint64_t static BlastDoorServer.service.getter()
{
  if (qword_280B32D50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21448090C(_xpc_connection_s *a1, void *a2)
{
  v5 = MEMORY[0x277D84F90];
  *(v2 + 32) = MEMORY[0x277D84F90];
  *(v2 + 40) = 1;
  *(v2 + 48) = sub_214046A28(v5);
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  if (a1)
  {
    *(v2 + 40) = 0;
    v6 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_2144842D8;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_213FB14A8;
    v10[3] = &block_descriptor_39;
    v7 = _Block_copy(v10);
    v8 = a2;
    swift_unknownObjectRetain();

    xpc_connection_set_event_handler(a1, v7);

    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_214480A38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getObjectType();
    v5 = sub_21408FD98();
    if (v5 != 12)
    {
    }

    MEMORY[0x28223BE20](v5);
    v10[2] = v4;
    v10[3] = a1;
    if (*(v4 + 40) == 1)
    {
      v6 = *(v4 + 16);
      v7 = swift_allocObject();
      *(v7 + 16) = sub_2144842F8;
      *(v7 + 24) = v10;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_2144842F0;
      *(v8 + 24) = v7;
      aBlock[4] = sub_2144842F4;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21469F760;
      aBlock[3] = &block_descriptor_51;
      v9 = _Block_copy(aBlock);

      dispatch_sync(v6, v9);
      _Block_release(v9);
      LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

      if ((v6 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    sub_214481314(v4, a1);
  }

  return result;
}

uint64_t BlastDoorServer.__allocating_init()()
{
  v0 = sub_2146D9C28();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2146D9C18();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2146D93D8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_214480EA8();
  sub_2146D93C8();
  v9[1] = MEMORY[0x277D84F90];
  sub_214483D34(&qword_280B34D60, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914338, &qword_21474BE38);
  sub_214480EF4();
  sub_2146D9E48();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  v6 = sub_2146D9C58();
  v7 = xpc_connection_create(0, v6);
  type metadata accessor for BlastDoorServer();
  swift_allocObject();
  return sub_21448090C(v7, v6);
}

unint64_t sub_214480EA8()
{
  result = qword_280B35288[0];
  if (!qword_280B35288[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280B35288);
  }

  return result;
}

unint64_t sub_214480EF4()
{
  result = qword_280B34CA0;
  if (!qword_280B34CA0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C914338, &qword_21474BE38);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280B34CA0);
  }

  return result;
}

void sub_214480F7C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v4 = qword_280B35410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146EA710;
  if (v2 == 2)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v7 = sub_2146D9618();
    v6 = v8;
  }

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_213FB2DA0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  sub_2146D91D8(v3, &dword_213FAF000, v4, "BlastDoor launching sandbox: %@", 31, 2, v5);

  v9 = *(v1 + 24);
  if (!v9)
  {
    sub_2140A1C1C();
    xpc_main(sub_2144810D8);
  }

  xpc_connection_activate(v9);
}

uint64_t sub_2144810D8(uint64_t a1)
{
  v2 = qword_280B32D50;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  if (sub_21408FD98() == 12)
  {
    sub_214481178(a1);
  }

  return swift_unknownObjectRelease();
}

void sub_214481178(uint64_t a1)
{
  v6[3] = a1;
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2144842D0;
    *(v3 + 24) = v6;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_2144842F0;
    *(v4 + 24) = v3;
    aBlock[4] = sub_2144842F4;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21469F760;
    aBlock[3] = &block_descriptor_27;
    v5 = _Block_copy(aBlock);

    dispatch_sync(v2, v5);
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  else
  {

    sub_214481314(v1, a1);
  }
}

double sub_214481314(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClientConnection(0);
  swift_allocObject();

  swift_unknownObjectRetain();
  v4 = sub_214506EF8(a1, a2);

  swift_unknownObjectRelease();
  swift_beginAccess();

  MEMORY[0x2160547D0](v5);
  if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2146D9938();
  }

  sub_2146D9958();
  swift_endAccess();
  v6 = *(v4 + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  v16[4] = sub_213FB1508;
  v16[5] = v7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_213FB14A8;
  v16[3] = &block_descriptor_33;
  v8 = _Block_copy(v16);

  xpc_connection_set_event_handler(v6, v8);
  _Block_release(v8);
  xpc_connection_activate(*(v4 + 24));
  v9 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v10 = qword_280B35410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2146EA710;
  v16[0] = v4;
  v12 = sub_2146D9618();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_213FB2DA0();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_2146D91D8(v9, &dword_213FAF000, v10, "Added connection: %@", 20, 2, v11);

  return result;
}

uint64_t BlastDoorServer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t BlastDoorServer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21448162C(uint64_t result)
{
  v10[3] = result;
  if (*(isEscapingClosureAtFileLocation + 40) == 1)
  {
    v2 = *(isEscapingClosureAtFileLocation + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_214483D7C;
    *(v3 + 24) = v10;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_214484288;
    *(v4 + 24) = v3;
    aBlock[4] = sub_2144842B0;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21469F760;
    aBlock[3] = &block_descriptor_0;
    v5 = _Block_copy(aBlock);

    dispatch_sync(v2, v5);
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v6 = result;
  swift_beginAccess();

  v7 = sub_214483E88((isEscapingClosureAtFileLocation + 32), v6);

  v8 = *(isEscapingClosureAtFileLocation + 32);
  if (v8 >> 62)
  {
    result = sub_2146DA028();
    v9 = result;
    if (result >= v7)
    {
      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 < v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_2144841B0(v7, v9);
  return swift_endAccess();
}

uint64_t sub_214481824(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v4 = sub_214483E88((a1 + 32), a2);

  v6 = *(a1 + 32);
  if (v6 >> 62)
  {
    result = sub_2146DA028();
    v7 = result;
    if (result >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v4)
    {
LABEL_3:
      sub_2144841B0(v4, v7);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

uint64_t BlastDoorServer.register<A, B>(unpacker:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_214481A18(a1, a2, a3, a4, a5, type metadata accessor for RegisteredUnpacker, sub_2146C6E34, &off_2826A7FC0);
}

{
  return sub_214481A18(a1, a2, a3, a4, a5, type metadata accessor for RegisteredFileUnpacker, sub_2146CB25C, &off_2826A7FB8);
}

{
  return sub_214481A18(a1, a2, a3, a4, a5, type metadata accessor for RegisteredContextualUnpacker, sub_2146CB25C, &off_2826A7FB0);
}

{
  return sub_214481A18(a1, a2, a3, a4, a5, type metadata accessor for RegisteredContextualFileUnpacker, sub_2146CB25C, &off_2826A7FA8);
}

{
  return sub_214481A18(a1, a2, a3, a4, a5, type metadata accessor for RegisteredContextualFileAsyncUnpacker, sub_2146CB25C, &off_2826A7FA0);
}

{
  return sub_214481A18(a1, a2, a3, a4, a5, type metadata accessor for RegisteredContextualFileSessionUnpacker, sub_2146CB25C, &off_2826A7F98);
}

uint64_t sub_214481A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t), uint64_t a8)
{
  v29 = a4;
  v30 = a8;
  v28 = a7;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v17(0, v15, v16);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v27 - v20;
  (*(v12 + 16))(v14, a1, a3);
  v28(v14, a3, a5);
  v31[0] = a2;
  swift_getMetatypeMetadata();
  v22 = sub_2146D9608();
  v24 = v23;
  v31[3] = v18;
  v31[4] = v30;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
  (*(v19 + 16))(boxed_opaque_existential_0, v21, v18);
  swift_beginAccess();
  sub_214480774(v31, v22, v24);
  swift_endAccess();
  return (*(v19 + 8))(v21, v18);
}

_xpc_connection_s *BlastDoorServer.endpoint.getter()
{
  result = *(v0 + 24);
  if (result)
  {
    return xpc_endpoint_create(result);
  }

  __break(1u);
  return result;
}

void sub_214481C3C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2146D9E68() + 1) & ~v5;
    do
    {
      sub_2146DA958();

      sub_2146D9698();
      v10 = sub_2146DA9B8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

unint64_t sub_214481DEC(int64_t a1, uint64_t a2)
{
  v40 = sub_2146D8B88();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_2146D9E68();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_214483D34(&unk_27C914340, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_2146D94D8();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_21448210C(int64_t a1, uint64_t a2)
{
  v4 = sub_2146DA008();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_2146D9E68();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_2146D94D8();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2144823C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2146D9E68() + 1) & ~v5;
    do
    {
      sub_2146DA958();
      sub_2146D9698();

      result = sub_2146DA9B8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_214482824(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2146D9E68() + 1) & ~v5;
    do
    {
      sub_2146DA958();
      sub_2146D9698();

      result = sub_2146DA9B8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_214482A68(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2146D9E68() + 1) & ~v5;
    do
    {
      sub_2146DA958();

      sub_2146D9698();
      v11 = sub_2146DA9B8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void *sub_214482C4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A8, &unk_2146EAEA0);
  v2 = *v0;
  v3 = sub_2146DA038();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_2140538A4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2140537E4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_213FDC730(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_214482DF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904098, &unk_2146EA9E0);
  v2 = *v0;
  v3 = sub_2146DA038();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2140537E4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_213FDC730(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_214482F70()
{
  v1 = v0;
  v30 = sub_2146D8B88();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042A0, &unk_2146EAE50);
  v3 = *v0;
  v4 = sub_2146DA038();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2144831F0()
{
  v1 = v0;
  v26 = sub_2146DA008();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9042F0, &unk_2146EAB00);
  v3 = *v0;
  v4 = sub_2146DA038();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_2140537E4(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_213FDC730(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_214483474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904080, &unk_2146EAE90);
  v2 = *v0;
  v3 = sub_2146DA038();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21448360C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2146DA038();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + v19);
        sub_2140537E4(*(v4 + 56) + 32 * v19, v21);
        *(*(v6 + 48) + v19) = v20;
        result = sub_213FDC730(v21, (*(v6 + 56) + 32 * v19));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_214483778()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042E0, &qword_2146EAE88);
  v2 = *v0;
  v3 = sub_2146DA038();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2144838E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904068, &qword_2146EA9B0);
  v2 = *v0;
  v3 = sub_2146DA038();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_214053840(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_213FB77C8(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_214483AB8(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_2146DA038();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_2140537E4(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_214483C58(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2146DA028();
LABEL_9:
  result = sub_2146D9F18();
  *v2 = result;
  return result;
}

uint64_t sub_214483D34(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_214483D84(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_2146DA028();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x216054E00](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_214483E88(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_214483D84(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_2146DA028();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_2146DA028())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x216054E00](v11, v7);
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x216054E00](v10, v7);
        v14 = MEMORY[0x216054E00](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_214508E98(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_214508E98(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_2146DA028();
}

uint64_t sub_2144840B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ClientConnection(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2146DA028();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2146DA028();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2144841B0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2146DA028();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_2146DA028();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_214483C58(result, 1);

  return sub_2144840B0(v5, v3, 0);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AvatarImage.$imageName.getter@<X0>(uint64_t a1@<X8>)
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

__n128 AvatarImage.$imageName.setter(__n128 *a1)
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

__n128 AvatarImage.image.setter(uint64_t a1)
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

void *AvatarImage.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1 + 40, &qword_27C905500, &qword_2146F2BE0);

  return memcpy((v1 + 40), a1, 0x1B8uLL);
}

uint64_t AvatarImage.imageName.getter()
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

uint64_t sub_2144845C4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Wallpaper(0) + 20));
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

__n128 sub_214484650(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Wallpaper(0) + 20));
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

uint64_t sub_2144846C8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Wallpaper(0) + 28));
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

__n128 sub_214484734(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Wallpaper(0) + 28));
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

uint64_t sub_2144847AC()
{
  v1 = v0 + *(type metadata accessor for Wallpaper(0) + 20);
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

uint64_t sub_21448483C()
{
  v1 = v0 + *(type metadata accessor for Wallpaper(0) + 28);
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

uint64_t AvatarRecipe.EmojiRecipe.$emoji.getter@<X0>(uint64_t a1@<X8>)
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

__n128 AvatarRecipe.EmojiRecipe.$emoji.setter(__n128 *a1)
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

uint64_t AvatarRecipe.EmojiRecipe.emoji.getter()
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

__n128 sub_2144849F0(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void *sub_214484A70(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

uint64_t sub_214484AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214484B18(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214484B70@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 73);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214484B94(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  v1[4].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214484BEC()
{
  if (*(v0 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214484C50()
{
  if (*(v0 + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214484CB4()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_214484CE8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_214484D18()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_214484D4C()
{
  v1 = *(v0 + 48);
  sub_213FDCA18(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_214484D80()
{
  v1 = *(v0 + 64);
  sub_213FDCA18(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_214484DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_214484DF8()
{
  v1 = *(v0 + 104);
  sub_213FDCA18(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_214484E34()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000019;
    if (v1 == 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x79656B6E6ELL;
    v3 = 0xD000000000000010;
    if (v1 != 2)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0)
    {
      v2 = 0x615464726F636572;
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
}

uint64_t sub_214484F40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21448A730(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214484F68(uint64_t a1)
{
  v2 = sub_21448537C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214484FA4(uint64_t a1)
{
  v2 = sub_21448537C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214484FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914378, &qword_21474BEE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v33 = *(v1 + 24);
  v34 = v9;
  v10 = *(v1 + 32);
  v31 = *(v1 + 40);
  v32 = v10;
  v11 = *(v1 + 48);
  v29 = *(v1 + 56);
  v30 = v11;
  v12 = *(v1 + 72);
  v27 = *(v1 + 64);
  v28 = v12;
  v13 = *(v1 + 88);
  v25 = *(v1 + 80);
  v26 = v13;
  v39 = *(v1 + 96);
  v14 = *(v1 + 112);
  v23 = *(v1 + 104);
  v24 = v14;
  v22[3] = *(v1 + 120);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21402D9F8(v7, v8);
  sub_21448537C();
  sub_2146DAA28();
  v36 = v7;
  v37 = v8;
  v15 = v3;
  v40 = 0;
  sub_214061684();
  v16 = v35;
  sub_2146DA388();
  if (v16)
  {
    sub_213FB54FC(v36, v37);
  }

  else
  {
    v17 = v31;
    v18 = v32;
    v19 = v29;
    v20 = v30;
    sub_213FB54FC(v36, v37);
    LOBYTE(v36) = 1;
    sub_2146DA328();
    v36 = v18;
    v37 = v17;
    v40 = 2;
    sub_213FDCA18(v18, v17);
    sub_2146DA308();
    sub_213FDC6BC(v36, v37);
    v36 = v20;
    v37 = v19;
    v40 = 3;
    sub_213FDCA18(v20, v19);
    sub_2146DA308();
    sub_213FDC6BC(v36, v37);
    v36 = v27;
    v37 = v28;
    v40 = 4;
    sub_213FDCA18(v27, v28);
    sub_2146DA308();
    sub_213FDC6BC(v36, v37);
    v36 = v25;
    v37 = v26;
    v38 = v39;
    v40 = 5;
    sub_2140A6418();

    sub_2146DA388();

    v36 = v23;
    v37 = v24;
    v40 = 6;
    sub_213FDCA18(v23, v24);
    sub_2146DA308();
    sub_213FDC6BC(v36, v37);
    LOBYTE(v36) = 7;
    sub_2146DA338();
  }

  return (*(v4 + 8))(v6, v15);
}

unint64_t sub_21448537C()
{
  result = qword_27C914380;
  if (!qword_27C914380)
  {
    result = swift_getWitnessTable(byte_21474D0A0, &type metadata for Nickname.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914380);
  }

  return result;
}

void sub_2144853D0(void *a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914388, &qword_21474BEE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21448537C();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    v40 = v6;
    LOBYTE(v42) = 0;
    sub_21406116C();
    v10 = v5;
    sub_2146DA1C8();
    v39 = v49;
    LOBYTE(v49) = 1;
    v11 = sub_2146DA168();
    v38 = v12;
    v13 = v11;
    LOBYTE(v42) = 2;
    sub_2146DA148();
    v37 = v49;
    LOBYTE(v42) = 3;
    sub_2146DA148();
    v14 = v49;
    v35 = v13;
    v36 = *(&v49 + 1);
    LOBYTE(v42) = 4;
    sub_2146DA148();
    v34 = v49;
    LOBYTE(v42) = 5;
    sub_21406100C();
    sub_2146DA1C8();
    v29 = v14;
    v32 = *(&v49 + 1);
    v33 = v49;
    LOBYTE(v14) = v50;
    LOBYTE(v42) = 6;
    sub_2146DA148();
    v15 = v14;
    v30 = *(&v49 + 1);
    v31 = v49;
    v62 = 7;
    v16 = sub_2146DA178();
    (*(v40 + 8))(v8, v10);
    LODWORD(v40) = v16 & 1;
    v17 = v39;
    v42 = v39;
    v18 = v36;
    v19 = v38;
    *&v43 = v35;
    *(&v43 + 1) = v38;
    v20 = v37;
    v44 = v37;
    v21 = v29;
    *&v45 = v29;
    *(&v45 + 1) = v36;
    v46 = v34;
    *&v47 = v33;
    *(&v47 + 1) = v32;
    LOBYTE(v48[0]) = v15;
    *(&v48[0] + 1) = v31;
    *&v48[1] = v30;
    BYTE8(v48[1]) = v40;
    v22 = v39;
    v23 = v43;
    v24 = v45;
    a2[2] = v37;
    a2[3] = v24;
    *a2 = v22;
    a2[1] = v23;
    v25 = v46;
    v26 = v47;
    v27 = v48[0];
    *(a2 + 105) = *(v48 + 9);
    a2[5] = v26;
    a2[6] = v27;
    a2[4] = v25;
    sub_2144859C8(&v42, &v49);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v49 = __PAIR128__(*(&v39 + 1), v17);
    v50 = v35;
    v51 = v19;
    v52 = __PAIR128__(*(&v37 + 1), v20);
    v53 = v21;
    v54 = v18;
    v55 = v34;
    v56 = v33;
    v57 = v32;
    v58 = v15;
    v59 = v31;
    v60 = v30;
    v61 = v40;
    sub_214485A00(&v49);
  }
}

uint64_t sub_214485A60()
{
  v1 = *v0;

  return v1;
}

void sub_214485A90(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_214485AE8()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_214485B18(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_214485CE4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Nickname(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void sub_214485D2C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Nickname(0) + 32));

  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_214485DB8@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Nickname(0) + 36));
  v4 = v3[3];
  v11 = v3[2];
  v12[0] = v4;
  *(v12 + 10) = *(v3 + 58);
  v5 = *(v12 + 10);
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  *(a1 + 58) = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_213FB2E54(v10, &v9, &qword_27C9143A0, &qword_21474BF00);
}

__n128 sub_214485E30(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Nickname(0) + 36));
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 10) = *(v3 + 58);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_213FB2DF4(v8, &qword_27C9143A0, &qword_21474BF00);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 58) = *(a1 + 58);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_214485EF8()
{
  v1 = *v0;
  v2 = 0x6D614E7473726966;
  v3 = 0x657061706C6C6177;
  v4 = 0x736E756F6E6F7270;
  if (v1 != 4)
  {
    v4 = 0x6552726174617661;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E7473616CLL;
  if (v1 != 1)
  {
    v5 = 0x726174617661;
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

uint64_t sub_214485FBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21448A9C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214485FE4(uint64_t a1)
{
  v2 = sub_2144863CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214486020(uint64_t a1)
{
  v2 = sub_2144863CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21448605C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9143A8, &qword_21474BF08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144863CC();
  sub_2146DAA28();
  LOBYTE(v25[0]) = 0;
  sub_2146DA2B8();
  if (!v2)
  {
    LOBYTE(v25[0]) = 1;
    sub_2146DA2B8();
    LOBYTE(v25[0]) = 2;
    sub_214486420();
    sub_2146DA308();
    v9 = type metadata accessor for Nickname(0);
    LOBYTE(v25[0]) = 3;
    type metadata accessor for Wallpaper(0);
    sub_214486AE8(&qword_27C9143C0, type metadata accessor for Wallpaper, byte_2146FB418);
    sub_2146DA308();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v29 = *v10;
    v30 = v11;
    v28 = 4;
    sub_214486474();

    sub_2146DA308();

    v12 = (v3 + *(v9 + 36));
    v13 = v12[1];
    v14 = v12[3];
    v26 = v12[2];
    *v27 = v14;
    *&v27[10] = *(v12 + 58);
    v15 = v12[1];
    v25[0] = *v12;
    v25[1] = v15;
    v16 = v12[3];
    v23 = v26;
    v24[0] = v16;
    *(v24 + 10) = *(v12 + 58);
    v21 = v25[0];
    v22 = v13;
    v20 = 5;
    sub_213FB2E54(v25, v18, &qword_27C9143A0, &qword_21474BF00);
    sub_2144864C8();
    sub_2146DA308();
    v18[2] = v23;
    *v19 = v24[0];
    *&v19[10] = *(v24 + 10);
    v18[0] = v21;
    v18[1] = v22;
    sub_213FB2DF4(v18, &qword_27C9143A0, &qword_21474BF00);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2144863CC()
{
  result = qword_27C9143B0;
  if (!qword_27C9143B0)
  {
    result = swift_getWitnessTable(byte_21474D050, &type metadata for Nickname.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9143B0);
  }

  return result;
}

unint64_t sub_214486420()
{
  result = qword_27C9143B8;
  if (!qword_27C9143B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvatarImage, &type metadata for AvatarImage, v0, v1);
    atomic_store(result, &qword_27C9143B8);
  }

  return result;
}

unint64_t sub_214486474()
{
  result = qword_27C9143C8;
  if (!qword_27C9143C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Morphology, &type metadata for Morphology, v0, v1);
    atomic_store(result, &qword_27C9143C8);
  }

  return result;
}

unint64_t sub_2144864C8()
{
  result = qword_27C9143D0;
  if (!qword_27C9143D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvatarRecipe, &type metadata for AvatarRecipe, v0, v1);
    atomic_store(result, &qword_27C9143D0);
  }

  return result;
}

uint64_t sub_21448651C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914398, "Vh\a");
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v37 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9143D8, &unk_21474BF10);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = v37 - v5;
  v7 = type metadata accessor for Nickname(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 2) = 0u;
  v40 = v10 + 32;
  *(v10 + 30) = 0u;
  *(v10 + 31) = 0u;
  *(v10 + 28) = 0u;
  *(v10 + 29) = 0u;
  *(v10 + 26) = 0u;
  *(v10 + 27) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 25) = 0u;
  *(v10 + 22) = 0u;
  *(v10 + 23) = 0u;
  *(v10 + 20) = 0u;
  *(v10 + 21) = 0u;
  *(v10 + 18) = 0u;
  *(v10 + 19) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 17) = 0u;
  *(v10 + 14) = 0u;
  *(v10 + 15) = 0u;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = v8[9];
  v12 = type metadata accessor for Wallpaper(0);
  v13 = *(*(v12 - 8) + 56);
  v39 = v11;
  v13(&v10[v11], 1, 1, v12);
  v14 = &v10[v8[10]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v10[v8[11]];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 255;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 36) = 0;
  v16 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2144863CC();
  v44 = v6;
  v17 = v55;
  sub_2146DAA08();
  if (v17)
  {
    v55 = v17;
  }

  else
  {
    v37[0] = v15;
    v37[1] = v12;
    v18 = v39;
    v19 = v40;
    v20 = v41;
    v21 = v42;
    LOBYTE(v53[0]) = 0;
    v22 = v43;
    *v10 = sub_2146DA0F8();
    *(v10 + 1) = v23;
    LOBYTE(v53[0]) = 1;
    v24 = sub_2146DA0F8();
    v55 = 0;
    *(v10 + 2) = v24;
    *(v10 + 3) = v25;
    LOBYTE(v50[0]) = 2;
    sub_214486A94();
    v26 = v55;
    sub_2146DA148();
    v55 = v26;
    if (v26 || (sub_21402EDB8(v53, v19, &qword_27C914390, &unk_21474BEF0), LOBYTE(v53[0]) = 3, sub_214486AE8(&qword_27C9143E8, type metadata accessor for Wallpaper, byte_2146FB3F0), v27 = v55, sub_2146DA148(), (v55 = v27) != 0) || (sub_21402EDB8(v21, &v10[v18], &qword_27C914398, "Vh\a"), LOBYTE(v50[0]) = 4, sub_214486B30(), v29 = v55, sub_2146DA148(), (v55 = v29) != 0) || (v30 = v53[0], , *v14 = v30, v52 = 5, sub_214486B84(), v31 = v55, sub_2146DA148(), (v55 = v31) != 0))
    {
      (*(v20 + 8))(v44, v22);
    }

    else
    {
      (*(v20 + 8))(v44, v22);
      v48 = v53[2];
      v49[0] = v54[0];
      *(v49 + 10) = *(v54 + 10);
      v46 = v53[0];
      v47 = v53[1];
      v32 = v37[0];
      v33 = *(v37[0] + 48);
      v50[2] = *(v37[0] + 32);
      *v51 = v33;
      *&v51[10] = *(v37[0] + 58);
      v34 = *(v37[0] + 16);
      v50[0] = *v37[0];
      v50[1] = v34;
      sub_213FB2DF4(v50, &qword_27C9143A0, &qword_21474BF00);
      v35 = v49[0];
      v32[2] = v48;
      v32[3] = v35;
      *(v32 + 58) = *(v49 + 10);
      v36 = v47;
      *v32 = v46;
      v32[1] = v36;
      sub_214486BD8(v10, v38);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_214486A38(v10);
}

uint64_t sub_214486A38(uint64_t a1)
{
  v2 = type metadata accessor for Nickname(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214486A94()
{
  result = qword_27C9143E0;
  if (!qword_27C9143E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvatarImage, &type metadata for AvatarImage, v0, v1);
    atomic_store(result, &qword_27C9143E0);
  }

  return result;
}

uint64_t sub_214486AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_214486B30()
{
  result = qword_27C9143F0;
  if (!qword_27C9143F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Morphology, &type metadata for Morphology, v0, v1);
    atomic_store(result, &qword_27C9143F0);
  }

  return result;
}

unint64_t sub_214486B84()
{
  result = qword_27C9143F8;
  if (!qword_27C9143F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvatarRecipe, &type metadata for AvatarRecipe, v0, v1);
    atomic_store(result, &qword_27C9143F8);
  }

  return result;
}

uint64_t sub_214486BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Nickname(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void AvatarImage.imageName.setter(uint64_t a1, uint64_t a2)
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

void (*AvatarImage.imageName.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*AvatarImage.$imageName.modify(uint64_t *a1))()
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

  return sub_2143CE9DC;
}

uint64_t AvatarImage.image.getter@<X0>(uint64_t a1@<X8>)
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

void (*AvatarImage.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
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

void sub_214487064(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 62);
    sub_21407CF14(*a1, (v2 + 248));
    sub_213FB2DF4(v3 + 40, &qword_27C904858, &qword_214736F00);
    v4 = *(v2 + 264);
    v5 = *(v2 + 280);
    v6 = *(v2 + 296);
    *(v3 + 40) = *(v2 + 248);
    *(v3 + 88) = v6;
    *(v3 + 72) = v5;
    *(v3 + 56) = v4;
    v7 = *(v2 + 344);
    v8 = *(v2 + 360);
    v9 = *(v2 + 328);
    *(v3 + 104) = *(v2 + 312);
    *(v3 + 152) = v8;
    *(v3 + 136) = v7;
    *(v3 + 120) = v9;
    v10 = *(v2 + 408);
    v11 = *(v2 + 424);
    v12 = *(v2 + 392);
    *(v3 + 168) = *(v2 + 376);
    *(v3 + 216) = v11;
    *(v3 + 200) = v10;
    *(v3 + 184) = v12;
    v14 = *(v2 + 456);
    v13 = *(v2 + 472);
    v15 = *(v2 + 61);
    *(v3 + 232) = *(v2 + 440);
    *(v3 + 280) = v15;
    *(v3 + 264) = v13;
    *(v3 + 248) = v14;
    sub_21406D2CC(v2);
  }

  else
  {
    v16 = *(v2 + 62);
    sub_213FB2DF4(v16 + 40, &qword_27C904858, &qword_214736F00);
    v17 = *(v2 + 2);
    v18 = *(v2 + 3);
    v19 = *(v2 + 1);
    *(v16 + 40) = *v2;
    *(v16 + 88) = v18;
    *(v16 + 72) = v17;
    *(v16 + 56) = v19;
    v20 = *(v2 + 6);
    v21 = *(v2 + 7);
    v22 = *(v2 + 5);
    *(v16 + 104) = *(v2 + 4);
    *(v16 + 152) = v21;
    *(v16 + 136) = v20;
    *(v16 + 120) = v22;
    v23 = *(v2 + 10);
    v24 = *(v2 + 11);
    v25 = *(v2 + 9);
    *(v16 + 168) = *(v2 + 8);
    *(v16 + 216) = v24;
    *(v16 + 200) = v23;
    *(v16 + 184) = v25;
    v27 = *(v2 + 13);
    v26 = *(v2 + 14);
    v28 = *(v2 + 30);
    *(v16 + 232) = *(v2 + 12);
    *(v16 + 280) = v28;
    *(v16 + 264) = v26;
    *(v16 + 248) = v27;
  }

  free(v2);
}

void (*AvatarImage.$image.modify(uint64_t *a1))(uint64_t *a1, char a2)
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

void sub_214487258(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[110];
    sub_213FB2E54(*a1, (v2 + 55), &qword_27C905500, &qword_2146F2BE0);
    sub_213FB2DF4(v3 + 40, &qword_27C905500, &qword_2146F2BE0);
    memcpy((v3 + 40), v2 + 55, 0x1B8uLL);
    sub_213FB2DF4(v2, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v4 = v2[110];
    sub_213FB2DF4(v4 + 40, &qword_27C905500, &qword_2146F2BE0);
    memcpy((v4 + 40), v2, 0x1B8uLL);
  }

  free(v2);
}

__n128 AvatarRecipe.MonogramRecipe.center.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

void AvatarRecipe.EmojiRecipe.emoji.setter(uint64_t a1, uint64_t a2)
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

void (*AvatarRecipe.EmojiRecipe.emoji.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*AvatarRecipe.EmojiRecipe.$emoji.modify(uint64_t *a1))()
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

  return sub_2143D3F8C;
}

uint64_t AvatarRecipe.backgroundRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_2142FB07C(v2, v3, v4, v5, v6);
}

uint64_t AvatarRecipe.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 72);
  *(a1 + 32) = v6;
  v7 = *(v1 + 73);
  *(a1 + 33) = v7;
  return sub_2142FB0DC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_214487650()
{
  v0 = sub_214487890();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t AvatarRecipe.bridgedToObjectiveC.getter()
{
  v0 = sub_214487890();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

CGPath *sub_2144876E8(uint64_t a1)
{
  Mutable = CGPathCreateMutable();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      if (*v4 <= 1u)
      {
        if (*v4)
        {
          sub_2146D9BF8();
        }

        else
        {
          sub_2146D9BE8();
        }

        goto LABEL_4;
      }

      if (*v4 == 2)
      {
        v7 = *(v6 + 16);
        if (v7 == 2)
        {

          sub_2146D9BD8();
          goto LABEL_14;
        }

        if (v7 == 3)
        {

          sub_2146D9C08();
LABEL_14:
          sub_214487B6C(v6, v5, 2);
        }
      }

      else
      {
        CGPathCloseSubpath(Mutable);
      }

LABEL_4:
      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return Mutable;
}

uint64_t sub_214487890()
{
  v1 = sub_2146D8958();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - v6;
  v8 = v0[3];
  v26 = v0[2];
  v27[0] = v8;
  *(v27 + 10) = *(v0 + 58);
  v9 = v0[1];
  v24 = *v0;
  v25 = v9;
  type metadata accessor for ClientConnection(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_2146D9588();
  v13 = sub_2146D9588();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (v14)
  {
    sub_2146D88E8();

    (*(v2 + 32))(v7, v5, v1);
    v15 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v16 = sub_2146D8898();
    v17 = [v15 initWithURL_];

    if (v17)
    {
      [v17 load];
      if ([v17 principalClass])
      {
        ObjCClassMetadata = swift_getObjCClassMetadata();
        v19 = swift_conformsToProtocol2();
        if (v19)
        {
          if (ObjCClassMetadata)
          {
            v22[2] = v26;
            v23[0] = v27[0];
            *(v23 + 10) = *(v27 + 10);
            v22[0] = v24;
            v22[1] = v25;
            v20 = (*(v19 + 8))(v22, ObjCClassMetadata, v19);

            (*(v2 + 8))(v7, v1);
            return v20;
          }
        }
      }
    }

    (*(v2 + 8))(v7, v1);
  }

  return 0;
}

double sub_214487B6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

BlastDoor::WallpaperType __swiftcall WallpaperType.init(_:)(Swift::String a1)
{
  object = a1._object;
  v3 = v1;
  v4 = a1._countAndFlagsBits == 0xD00000000000002ELL && 0x8000000214787D40 == a1._object;
  if (v4 || (countAndFlagsBits = a1._countAndFlagsBits, (sub_2146DA6A8() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0xD000000000000028 && 0x8000000214787D70 == object || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0xD00000000000002CLL && 0x8000000214787DA0 == object)
  {

    v7 = 2;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v3 = v7;
  return result;
}

BlastDoor::WallpaperType_optional __swiftcall WallpaperType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_214487D80@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
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

void (*sub_214487E18(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_214487F00(uint64_t *a1))(uint64_t **a1, char a2)
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
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_214488008()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214488038@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 32);
  }

  return result;
}

uint64_t (*sub_2144880BC(void *a1))(double *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214488144;
  }

  return result;
}

uint64_t sub_214488170(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 41) = v7;
  return result;
}

void (*sub_2144881DC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

void sub_214488274(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 41) = v8;
  }

  else
  {

    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 41) = v8;
  }

  free(v2);
}

uint64_t sub_214488320@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 64);
  }

  return result;
}

uint64_t (*sub_2144883A4(void *a1))(double *a1)
{
  a1[1] = v1;
  if (*(v1 + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 64);
    return sub_21448842C;
  }

  return result;
}

uint64_t sub_214488458(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 73) = v7;
  return result;
}

void (*sub_2144884C4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 73);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_21448855C;
}

void sub_21448855C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
    *(v3 + 73) = v8;
  }

  else
  {

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
    *(v3 + 73) = v8;
  }

  free(v2);
}

__n128 sub_214488608@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_214488614(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  return result;
}

__n128 sub_214488654@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  result = *(v1 + 120);
  v4 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_21448866C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v4;
  *(v1 + 152) = v2;
  return result;
}

void sub_2144886A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Wallpaper(0) + 20);
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

double sub_214488740(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Wallpaper(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214488808(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Wallpaper(0) + 20);
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

void (*sub_214488958(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for Wallpaper(0) + 20);
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

uint64_t sub_214488A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Wallpaper(0) + 20));
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

uint64_t sub_214488AB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Wallpaper(0) + 20);
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

void (*sub_214488B4C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for Wallpaper(0) + 20);
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

void sub_214488C40(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Wallpaper(0) + 28);
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

double sub_214488CDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Wallpaper(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214488DA4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Wallpaper(0) + 28);
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

void (*sub_214488EF4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for Wallpaper(0) + 28);
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

uint64_t sub_214488FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Wallpaper(0) + 28));
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

uint64_t sub_214489050(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Wallpaper(0) + 28);
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

void (*sub_2144890E8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for Wallpaper(0) + 28);
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

uint64_t sub_214489290@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Wallpaper(0) + 40));
  v4 = v3[7];
  v5 = v3[5];
  v22 = v3[6];
  v23 = v4;
  v6 = v3[7];
  v24[0] = v3[8];
  *(v24 + 9) = *(v3 + 137);
  v7 = v3[3];
  v9 = v3[1];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  *(a1 + 137) = *(v3 + 137);
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v5;
  *a1 = v14;
  a1[1] = v9;
  return sub_213FB2E54(v17, &v16, &qword_27C9081D8, &qword_2146F4F68);
}

__n128 sub_214489348@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a7[1];
  v27 = *a7;
  v15 = type metadata accessor for Nickname(0);
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0u;
  *(a9 + 336) = 0u;
  *(a9 + 352) = 0u;
  *(a9 + 368) = 0u;
  *(a9 + 384) = 0u;
  *(a9 + 400) = 0u;
  *(a9 + 416) = 0u;
  *(a9 + 432) = 0u;
  *(a9 + 448) = 0u;
  *(a9 + 464) = 0u;
  *(a9 + 480) = 0u;
  *(a9 + 496) = 0u;
  *(a9 + 32) = 0u;
  v16 = v15[7];
  v17 = type metadata accessor for Wallpaper(0);
  (*(*(v17 - 8) + 56))(a9 + v16, 1, 1, v17);
  v18 = (a9 + v15[8]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a9 + v15[9];
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 255;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_21402EDB8(a5, a9 + 32, &qword_27C914390, &unk_21474BEF0);
  sub_21402EDB8(a6, a9 + v16, &qword_27C914398, "Vh\a");

  *v18 = v27;
  v18[1] = v26;
  v20 = *(v19 + 48);
  v28[2] = *(v19 + 32);
  v29[0] = v20;
  *(v29 + 10) = *(v19 + 58);
  v21 = *(v19 + 16);
  v28[0] = *v19;
  v28[1] = v21;
  sub_213FB2DF4(v28, &qword_27C9143A0, &qword_21474BF00);
  v22 = *(a8 + 48);
  *(v19 + 32) = *(a8 + 32);
  *(v19 + 48) = v22;
  *(v19 + 58) = *(a8 + 58);
  result = *(a8 + 16);
  *v19 = *a8;
  *(v19 + 16) = result;
  return result;
}

uint64_t sub_214489510@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12, char a13, uint64_t a14, uint64_t a15)
{
  v15 = *a12;
  v16 = a12[1];
  v17 = *(a12 + 16);
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v15;
  *(a9 + 88) = v16;
  *(a9 + 96) = v17;
  *(a9 + 120) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = a15;
  return result;
}

uint64_t AvatarImage.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  strcpy((v10 + 16), "NickNameImage");
  *(v10 + 30) = -4864;
  *(v9 + 16) = sub_2142EEE5C;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042B80(inited, a4);
  LOWORD(v31[0]) = 0;
  sub_2140615D0(v31);
  v11 = v31[9];
  *(a4 + 416) = v31[8];
  *(a4 + 432) = v11;
  v12 = v31[11];
  *(a4 + 448) = v31[10];
  *(a4 + 464) = v12;
  v13 = v31[5];
  *(a4 + 352) = v31[4];
  *(a4 + 368) = v13;
  v14 = v31[7];
  *(a4 + 384) = v31[6];
  *(a4 + 400) = v14;
  v15 = v31[1];
  *(a4 + 288) = v31[0];
  *(a4 + 304) = v15;
  v16 = v31[2];
  v17 = v31[3];
  *(a4 + 40) = 0u;
  *(a4 + 320) = v16;
  *(a4 + 336) = v17;
  *(a4 + 280) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 264) = 0u;
  v30[0] = a1;
  v30[1] = a2;
  v18 = *a4;
  v29 = *(a4 + 32);
  v28[0] = 0x6E776F6E6B6E753CLL;
  v28[1] = 0xE90000000000003ELL;
  v28[2] = 0xD00000000000001CLL;
  v28[3] = 0x800000021478A360;
  if (v18(v30, &v29, v28))
  {

    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
    result = sub_213FB2DF4(a4 + 40, &qword_27C904858, &qword_214736F00);
    v20 = *(a3 + 208);
    *(a4 + 232) = *(a3 + 192);
    *(a4 + 248) = v20;
    *(a4 + 264) = *(a3 + 224);
    *(a4 + 280) = *(a3 + 240);
    v21 = *(a3 + 144);
    *(a4 + 168) = *(a3 + 128);
    *(a4 + 184) = v21;
    v22 = *(a3 + 176);
    *(a4 + 200) = *(a3 + 160);
    *(a4 + 216) = v22;
    v23 = *(a3 + 80);
    *(a4 + 104) = *(a3 + 64);
    *(a4 + 120) = v23;
    v24 = *(a3 + 112);
    *(a4 + 136) = *(a3 + 96);
    *(a4 + 152) = v24;
    v25 = *(a3 + 16);
    *(a4 + 40) = *a3;
    *(a4 + 56) = v25;
    v26 = *(a3 + 48);
    *(a4 + 72) = *(a3 + 32);
    *(a4 + 88) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0x6E776F6E6B6E753CLL;
    v27[1] = 0xE90000000000003ELL;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_214489850()
{
  result = qword_27C914400;
  if (!qword_27C914400)
  {
    result = swift_getWitnessTable(byte_21474BF30, &type metadata for Nickname.Context, v0, v1);
    atomic_store(result, &qword_27C914400);
  }

  return result;
}

unint64_t sub_2144898A8()
{
  result = qword_27C914408;
  if (!qword_27C914408)
  {
    result = swift_getWitnessTable(byte_21474BF58, &type metadata for Nickname.Context, v0, v1);
    atomic_store(result, &qword_27C914408);
  }

  return result;
}

uint64_t sub_2144898FC(uint64_t a1)
{
  result = sub_214486AE8(&qword_27C914410, type metadata accessor for Nickname, byte_21474BFAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_214489954(uint64_t a1)
{
  *(a1 + 8) = sub_214486AE8(&qword_27C914418, type metadata accessor for Nickname, aA_30);
  result = sub_214486AE8(&qword_27C914420, type metadata accessor for Nickname, byte_21474BFF0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214489B10()
{
  result = qword_27C914428;
  if (!qword_27C914428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WallpaperType, &type metadata for WallpaperType, v0, v1);
    atomic_store(result, &qword_27C914428);
  }

  return result;
}

uint64_t sub_214489BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214489C24(uint64_t a1)
{
  *(a1 + 8) = sub_214486AE8(&qword_27C9143E8, type metadata accessor for Wallpaper, byte_2146FB3F0);
  result = sub_214486AE8(&qword_27C9143C0, type metadata accessor for Wallpaper, byte_2146FB418);
  *(a1 + 16) = result;
  return result;
}

void sub_214489CD0(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FC28, &type metadata for AvatarImage);
    if (v2 <= 0x3F)
    {
      sub_21448A3DC(319, qword_280B2E4F8, type metadata accessor for Wallpaper);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, qword_280B2FC48, &type metadata for Morphology);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2FA68, &type metadata for AvatarRecipe);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_214489DF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_214489E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214489EB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 480))
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

uint64_t sub_214489F00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
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
      *(result + 480) = 1;
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

    *(result + 480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor12AvatarRecipeV0D0O(uint64_t a1)
{
  if ((*(a1 + 33) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 33) & 3;
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21448A018(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 74))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_21448A060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_21448A0C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_21448A110(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor12AvatarRecipeV08MonogramD0V11CommandTypeO(uint64_t a1)
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

uint64_t sub_21448A1D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 34))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 33);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21448A218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t sub_21448A260(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    LOBYTE(a2) = 2;
    *(result + 32) = 0;
  }

  *(result + 33) = a2;
  return result;
}

void sub_21448A2DC(uint64_t a1)
{
  sub_21448A3DC(319, &qword_280B2F920, type metadata accessor for PosterArchive);
  if (v1 <= 0x3F)
  {
    sub_214084AA4(319);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2E558, &type metadata for Wallpaper.WallpaperImage);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2E550, &type metadata for Wallpaper.WallpaperMetadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21448A3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_21448A440(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_21448A488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21448A524()
{
  result = qword_27C914430;
  if (!qword_27C914430)
  {
    result = swift_getWitnessTable(aYM_0, &type metadata for Nickname.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914430);
  }

  return result;
}

unint64_t sub_21448A57C()
{
  result = qword_27C914438;
  if (!qword_27C914438)
  {
    result = swift_getWitnessTable(byte_21474D028, &type metadata for Nickname.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914438);
  }

  return result;
}

unint64_t sub_21448A5D4()
{
  result = qword_27C914440;
  if (!qword_27C914440)
  {
    result = swift_getWitnessTable(asc_21474CF98, &type metadata for Nickname.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914440);
  }

  return result;
}

unint64_t sub_21448A62C()
{
  result = qword_27C914448;
  if (!qword_27C914448)
  {
    result = swift_getWitnessTable(byte_21474CFC0, &type metadata for Nickname.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914448);
  }

  return result;
}

unint64_t sub_21448A684()
{
  result = qword_27C914450;
  if (!qword_27C914450)
  {
    result = swift_getWitnessTable(byte_21474CEE0, &type metadata for Nickname.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914450);
  }

  return result;
}

unint64_t sub_21448A6DC()
{
  result = qword_27C914458;
  if (!qword_27C914458)
  {
    result = swift_getWitnessTable(byte_21474CF08, &type metadata for Nickname.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914458);
  }

  return result;
}

uint64_t sub_21448A730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79656B6E6ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615464726F636572 && a2 == 0xE900000000000067 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000214795280 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021479B260 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002147952C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021478C7A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000214795320 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021479B280 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_21448A9C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657061706C6C6177 && a2 == 0xE900000000000072 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E756F6E6F7270 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552726174617661 && a2 == 0xEC00000065706963)
  {

    return 5;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

unint64_t sub_21448ABCC()
{
  result = qword_27C914460;
  if (!qword_27C914460)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WallpaperType, &type metadata for WallpaperType, v0, v1);
    atomic_store(result, &qword_27C914460);
  }

  return result;
}

uint64_t sub_21448AC20()
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

uint64_t sub_21448AC9C()
{
  v1 = v0 + *(type metadata accessor for IDSKCSharingInvitation(0) + 24);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for IDSKCSharingInvitation(uint64_t a1)
{
  result = qword_27C914468;
  if (!qword_27C914468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21448AD74@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21448ADC0(__n128 *a1)
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

uint64_t sub_21448AE1C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSKCSharingInvitation(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21448AE7C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSKCSharingInvitation(0) + 24));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void sub_21448AEE8(uint64_t a1, uint64_t a2)
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

void (*sub_21448B030(void *a1))(uint64_t *a1, char a2)
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

void (*sub_21448B0CC(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21448B164@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSKCSharingInvitation(0) + 20);

  return sub_2140703DC(v3, a1);
}

uint64_t sub_21448B1A8(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IDSKCSharingInvitation(0) + 20);

  return sub_214070484(a1, v3);
}

void sub_21448B234(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSKCSharingInvitation(0) + 24);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21448B2CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IDSKCSharingInvitation(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21448B394(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSKCSharingInvitation(0) + 24);
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

void (*sub_21448B4E8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IDSKCSharingInvitation(0) + 24);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2140646F8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21448B5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSKCSharingInvitation(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_21448B630(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSKCSharingInvitation(0) + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_21448B6B8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IDSKCSharingInvitation(0) + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_214064B44;
}

uint64_t sub_21448B764@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSKCSharingInvitation(0) + 28);

  return sub_2144716D8(v3, a1);
}

uint64_t sub_21448B7A8(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IDSKCSharingInvitation(0) + 28);

  return sub_2140924F0(a1, v3);
}

uint64_t sub_21448B834()
{
  v1 = *(v0 + *(type metadata accessor for IDSKCSharingInvitation(0) + 32));

  return v1;
}

void sub_21448B874(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IDSKCSharingInvitation(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21448B904(uint64_t a1)
{
  *(a1 + 8) = sub_21448B96C(&qword_27C90CB18, aY_94);
  result = sub_21448B96C(&qword_27C90CAE0, asc_2146FA5B8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21448B96C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for IDSKCSharingInvitation(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21448B9D8(uint64_t a1)
{
  sub_21448BAC8(319, &qword_280B2E578, type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CloudKitSharingToken(319);
    if (v2 <= 0x3F)
    {
      sub_21409320C(319);
      if (v3 <= 0x3F)
      {
        sub_21448BAC8(319, &qword_280B34BE0, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21448BAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21448BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  sub_21448CC2C();

  v6 = sub_2146D97A8();
  v8 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_21448C0B4(v6, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = sub_2146D9F88();
      v10 = v66;
    }

    v11 = *v9;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v21 = v10 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v9)
          {
            v25 = 0;
            v26 = v9 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_125;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v25 * a5;
              if ((v25 * a5) >> 64 == (v25 * a5) >> 63)
              {
                v25 = v29 + (v27 + v28);
                if (!__OFADD__(v29, (v27 + v28)))
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (v9)
        {
          v33 = 0;
          while (1)
          {
            v34 = *v9;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_125;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 == (v33 * a5) >> 63)
            {
              v33 = v36 + (v34 + v35);
              if (!__OFADD__(v36, (v34 + v35)))
              {
                ++v9;
                if (--v10)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v12)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (v9)
        {
          v16 = 0;
          v17 = v9 + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                if (v18 < 0x61 || v18 >= v15)
                {
                  break;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = v16 * a5;
            if ((v16 * a5) >> 64 == (v16 * a5) >> 63)
            {
              v16 = v20 - (v18 + v19);
              if (!__OFSUB__(v20, (v18 + v19)))
              {
                ++v17;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v7) & 0xF;
  v67 = v8;
  v68 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v58 = 0;
        v59 = a5 + 48;
        v60 = a5 + 55;
        v61 = a5 + 87;
        if (a5 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v67;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_125;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          v65 = v58 * a5;
          if ((v58 * a5) >> 64 == (v58 * a5) >> 63)
          {
            v58 = v65 + (v63 + v64);
            if (!__OFADD__(v65, (v63 + v64)))
            {
              v62 = (v62 + 1);
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v67 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_125;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 == (v41 * a5) >> 63)
          {
            v41 = v48 - (v46 + v47);
            if (!__OFSUB__(v48, (v46 + v47)))
            {
              ++v45;
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v50 = 0;
      v51 = a5 + 48;
      v52 = a5 + 55;
      v53 = a5 + 87;
      if (a5 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v67 + 1;
      while (1)
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_125;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = v50 * a5;
        if ((v50 * a5) >> 64 == (v50 * a5) >> 63)
        {
          v50 = v57 + (v55 + v56);
          if (!__OFADD__(v57, (v55 + v56)))
          {
            ++v54;
            if (--v49)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_21448C0B4(uint64_t a1, unint64_t a2)
{
  v2 = sub_2146D97B8();
  v6 = sub_21448C134(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21448C134(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2146D9D68();
    if (!v9 || (v10 = v9, v11 = sub_2146701CC(v9, 0), v12 = sub_21448C28C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2146D9688();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2146D9688();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2146D9F88();
LABEL_4:

  return sub_2146D9688();
}

unint64_t sub_21448C28C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21448C4AC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2146D9748();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2146D9F88();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21448C4AC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2146D9718();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_21448C4AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2146D9758();
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
    v5 = MEMORY[0x216054620](15, a1 >> 16);
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

uint64_t sub_21448C528(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_2146D9F88();
  }

  result = sub_21448C66C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_21448C5F4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2146DA418() & 1;
  }
}

uint64_t sub_21448C66C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_21448C4AC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_2146D9738();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_21448C4AC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_21448C4AC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_2146D9738();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_21448CAD8(uint64_t a1, unint64_t a2)
{
  v17[0] = 58;
  v17[1] = 0xE100000000000000;
  v16[2] = v17;

  v5 = sub_214508AC4(1, 1, sub_21406D1FC, v16, a1, a2, v4);
  if (v5[2] == 2)
  {
    v6 = v5;
    if ((sub_21448C5F4(v5[4], v5[5], v5[6], v5[7], 0x657079746B68, 0xE600000000000000) & 1) == 0)
    {

      return 1;
    }

    v7 = v6[8];
    v8 = v6[9];
    v10 = v6[10];
    v9 = v6[11];

    if ((v8 ^ v7) >> 14)
    {
      sub_21448C528(v7, v8, v10, v9, 10);
      if ((v11 & 0x100) != 0)
      {
        sub_21448BB1C(v7, v8, v10, v9, 10);
        v15 = v14;

        if (v15)
        {
          return 0;
        }
      }

      else
      {
        v12 = v11;

        if (v12)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

unint64_t sub_21448CC2C()
{
  result = qword_27C914478;
  if (!qword_27C914478)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83E58], MEMORY[0x277D83E40], v0, v1);
    atomic_store(result, &qword_27C914478);
  }

  return result;
}

unint64_t sub_21448CC80@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2143C945C;
  v5[3] = 0;
  v5[4] = 1;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_21439DF90;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[2] = sub_214059908;
  v7[3] = 0;
  v7[4] = 255;
  v7[5] = sub_21403C354;
  v7[6] = 0;
  *(v6 + 16) = sub_21439DF90;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  v8 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_214032610;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21448CE58@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2143C945C;
  v5[3] = 0;
  v5[4] = 1;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214059860;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[2] = sub_214059908;
  v7[3] = 0;
  v7[4] = 255;
  v7[5] = sub_21403C354;
  v7[6] = 0;
  *(v6 + 16) = sub_21439DF90;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  v8 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_21403254C;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21448D030@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448D088(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_21448D0F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448D148(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_i64[0];
  v7 = v1[4].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448D1B0()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_21448D230()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t sub_21448D2B0@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21448D308(__n128 *a1)
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

uint64_t sub_21448D370()
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

uint64_t sub_21448D3F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21448D41C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21448D474()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21448D4D8(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_21448D5A0(uint64_t *a1))(uint64_t *a1, char a2)
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

uint64_t sub_21448D640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);

  sub_213FDC6BC(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;

  return sub_213FDCA18(v7, v8);
}

void (*sub_21448D6B8(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_21448D758(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_21448D7D4()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21448D858(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

void sub_21448D8B4(BOOL *a2@<X8>)
{
  v3 = sub_2146DA098();

  *a2 = v3 != 0;
}

uint64_t (*sub_21448D9E4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_2143D0368;
  }

  return result;
}

void (*sub_21448DA6C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

void sub_21448DBD4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 24), *(v2 + 32));

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
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

void (*sub_21448DD18(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
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

    return sub_214053CC4;
  }

  return result;
}

void (*sub_21448DDF0(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

void sub_21448DE90(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 48);
  v8 = *(v2 + 80);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 64), *(v2 + 72));

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
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

void (*sub_21448DFD4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
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

    return sub_214054570;
  }

  return result;
}

void (*sub_21448E0AC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

uint64_t sub_21448E14C@<X0>(uint64_t a1@<X8>)
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