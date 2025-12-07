__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_252F61624(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_252F61680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_252F61700(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B860, &qword_252F73BF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B868, &qword_252F73BF8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  if (a2)
  {
    v14 = a2;
    sub_252F734D4();

    LOBYTE(v14) = sub_252F73574();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B878, &qword_252F73C00);
    v16 = v15;
    if (v14 & 1) == 0 || (a4)
    {
      (*(*(v15 - 8) + 16))(v9, a1, v15);
      swift_storeEnumTagMultiPayload();
      v19 = sub_252F61AA4();
      v20 = v16;
      v21 = v19;
      swift_getOpaqueTypeConformance2();
      return sub_252F73244();
    }

    else
    {
      v17 = sub_252F61AA4();
      sub_252F732D4();
      (*(v11 + 16))(v9, v13, v10);
      swift_storeEnumTagMultiPayload();
      v20 = v16;
      v21 = v17;
      swift_getOpaqueTypeConformance2();
      sub_252F73244();
      return (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    sub_252F734E4();
    sub_252F61A4C();
    result = sub_252F731E4();
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_252F61A4C()
{
  result = qword_27F57B870;
  if (!qword_27F57B870)
  {
    v3 = sub_252F734E4();
    result = swift_getWitnessTable(MEMORY[0x277D63F50], v3, v0, v1);
    atomic_store(result, &qword_27F57B870);
  }

  return result;
}

unint64_t sub_252F61AA4()
{
  result = qword_27F57B880;
  if (!qword_27F57B880)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B878, &qword_252F73C00);
    result = swift_getWitnessTable(MEMORY[0x277CE04B0], v3, v0, v1);
    atomic_store(result, &qword_27F57B880);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_252F61B54()
{
  result = qword_27F57B888;
  if (!qword_27F57B888)
  {
    v6 = v0;
    v7 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B890, &qword_252F73C08);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B878, &qword_252F73C00);
    v5 = sub_252F61AA4();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F57B888);
  }

  return result;
}

uint64_t CarPlayIntercomControlModel.playStopText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  return v1;
}

uint64_t sub_252F61C5C(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t (*CarPlayIntercomControlModel.playStopText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  *(v3 + 32) = sub_252F73104();
  return sub_252F61D7C;
}

uint64_t CarPlayIntercomControlModel.replyText.getter()
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  return v1;
}

uint64_t type metadata accessor for CarPlayIntercomControlModel(uint64_t a1)
{
  result = qword_27F57B8F0;
  if (!qword_27F57B8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_252F61E20@<X0>(void *a1@<X8>)
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  result = sub_252F73114();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F61E88(void *a1)
{
  type metadata accessor for CarPlayIntercomControlModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t CarPlayIntercomControlModel.replyText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t (*CarPlayIntercomControlModel.replyText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  *(v3 + 32) = sub_252F73104();
  return sub_252F63694;
}

uint64_t CarPlayIntercomControlModel.isPlaying.getter()
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  sub_252F73114();
  return v1;
}

void *sub_252F62040@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  result = sub_252F73114();
  *a1 = v3;
  return result;
}

uint64_t sub_252F620A8(char *a1)
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  return sub_252F73124();
}

uint64_t CarPlayIntercomControlModel.isPlaying.setter(char a1)
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  return sub_252F73124();
}

uint64_t (*CarPlayIntercomControlModel.isPlaying.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  *(v3 + 32) = sub_252F73104();
  return sub_252F63694;
}

void sub_252F621FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CarPlayIntercomControlModel.init(playStopText:replyText:isPlaying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_252F730F4();
  type metadata accessor for CarPlayIntercomControlModel(0);
  sub_252F730F4();
  return sub_252F730F4();
}

uint64_t sub_252F62314()
{
  v1 = *v0;
  sub_252F736C4();
  MEMORY[0x2530B0710](v1);
  return sub_252F736E4();
}

uint64_t sub_252F62388(uint64_t a1)
{
  v2 = *v1;
  sub_252F736C4();
  MEMORY[0x2530B0710](v2);
  return sub_252F736E4();
}

uint64_t sub_252F623CC()
{
  v1 = 0x786554796C706572;
  if (*v0 != 1)
  {
    v1 = 0x6E6979616C507369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706F745379616C70;
  }
}

uint64_t sub_252F6243C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252F6356C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252F6247C(uint64_t a1)
{
  v2 = sub_252F62768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F624B8(uint64_t a1)
{
  v2 = sub_252F62768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarPlayIntercomControlModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A8, &qword_252F73C30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F62768();
  sub_252F73704();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F62D4C(&qword_27F57B8B8, MEMORY[0x277D637D0]);
  sub_252F736A4();
  if (!v1)
  {
    type metadata accessor for CarPlayIntercomControlModel(0);
    v10 = 1;
    sub_252F736A4();
    v9 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
    sub_252F627BC(&qword_27F57B8C0, MEMORY[0x277D637D0]);
    sub_252F736A4();
  }

  return (*(v4 + 8))(v6, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_252F62768()
{
  result = qword_27F57B8B0;
  if (!qword_27F57B8B0)
  {
    result = swift_getWitnessTable(aYx, &type metadata for CarPlayIntercomControlModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57B8B0);
  }

  return result;
}

uint64_t sub_252F627BC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B8A0, &qword_252F73C28);
    v6[0] = MEMORY[0x277D839D0];
    v6[1] = MEMORY[0x277D839B8];
    result = swift_getWitnessTable(a2, v5, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CarPlayIntercomControlModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v30 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v23 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8C8, &qword_252F73C38);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for CarPlayIntercomControlModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_252F62768();
  sub_252F736F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v24 = v13;
  v25 = v15;
  v37 = 0;
  sub_252F62D4C(&qword_27F57B8D0, MEMORY[0x277D637E0]);
  v17 = v31;
  sub_252F73664();
  v31 = *(v30 + 32);
  (v31)(v25, v17, v5);
  v36 = 1;
  v18 = v8;
  sub_252F73664();
  v19 = v25;
  (v31)(&v25[*(v24 + 20)], v18, v5);
  v35 = 2;
  sub_252F627BC(&qword_27F57B8D8, MEMORY[0x277D637E0]);
  v21 = v28;
  v20 = v29;
  sub_252F73664();
  (*(v32 + 8))(v12, v33);
  (*(v26 + 32))(v19 + *(v24 + 24), v21, v20);
  sub_252F62DBC(v19, v27);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_252F62E20(v19);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_252F62D4C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B898, &qword_252F73C20);
    v6[0] = MEMORY[0x277D83808];
    v6[1] = MEMORY[0x277D837D8];
    result = swift_getWitnessTable(a2, v5, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252F62DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayIntercomControlModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F62E20(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayIntercomControlModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252F62EE4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CarPlayIntercomControlModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_252F62F58@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  result = sub_252F73114();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F62FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_252F630EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_252F63200(uint64_t a1)
{
  sub_252F632A4(319, &qword_27F57B900, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_252F632A4(319, &qword_27F57B908, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252F632A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_252F73134();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CarPlayIntercomControlModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarPlayIntercomControlModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_252F63468()
{
  result = qword_27F57B910;
  if (!qword_27F57B910)
  {
    result = swift_getWitnessTable(aAc, &type metadata for CarPlayIntercomControlModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57B910);
  }

  return result;
}

unint64_t sub_252F634C0()
{
  result = qword_27F57B918;
  if (!qword_27F57B918)
  {
    result = swift_getWitnessTable(byte_252F73CF8, &type metadata for CarPlayIntercomControlModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57B918);
  }

  return result;
}

unint64_t sub_252F63518()
{
  result = qword_27F57B920;
  if (!qword_27F57B920)
  {
    result = swift_getWitnessTable(byte_252F73D20, &type metadata for CarPlayIntercomControlModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57B920);
  }

  return result;
}

uint64_t sub_252F6356C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F745379616C70 && a2 == 0xEC00000074786554;
  if (v4 || (sub_252F736B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786554796C706572 && a2 == 0xE900000000000074 || (sub_252F736B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067)
  {

    return 2;
  }

  else
  {
    v6 = sub_252F736B4();

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

uint64_t CarPlayIntercomControlView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for CarPlayIntercomControlView(0) + 20));
  sub_252F734E4();
  sub_252F65B00(&qword_27F57B870, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v4 = sub_252F731F4();
  v4[1] = v5;
  sub_252F733D4();
  return sub_252F63EFC(a1, a2, type metadata accessor for CarPlayIntercomControlModel);
}

uint64_t type metadata accessor for CarPlayIntercomControlView(uint64_t a1)
{
  result = qword_27F57B938;
  if (!qword_27F57B938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CarPlayIntercomControlView.body.getter()
{
  v1 = type metadata accessor for CarPlayIntercomControlView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_252F63E94(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_252F63EFC(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for CarPlayIntercomControlView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B928, &qword_252F73E20);
  sub_252F65A4C(&qword_27F57B930, &qword_27F57B928, &qword_252F73E20, MEMORY[0x277CE14C0]);
  return sub_252F73404();
}

uint64_t sub_252F6390C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v45 = a2;
  v2 = sub_252F73484();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B960, &qword_252F73EA8);
  v44 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B968, &unk_252F73EB0);
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v36 - v11;
  v12 = sub_252F73424();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B970, &qword_252F74E80);
  v37 = *(v39 - 8);
  v16 = v37;
  v17 = MEMORY[0x28223BE20](v39);
  v46 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  sub_252F73434();
  sub_252F65B00(&qword_27F57B978, MEMORY[0x277D63C98], MEMORY[0x277D63C88]);
  v36 = v20;
  sub_252F73314();
  (*(v13 + 8))(v15, v12);
  v48 = v40;
  sub_252F73474();
  v21 = sub_252F65B00(&qword_27F57B980, MEMORY[0x277D63D30], MEMORY[0x277D63D28]);
  sub_252F73314();
  (*(v3 + 8))(v5, v2);
  v49 = v2;
  v50 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v47;
  v23 = v38;
  sub_252F732C4();
  (*(v44 + 8))(v7, v23);
  v24 = *(v16 + 16);
  v25 = v46;
  v26 = v39;
  v24(v46, v20, v39);
  v27 = v41;
  v28 = v42;
  v29 = *(v42 + 16);
  v30 = v43;
  v29(v41, v22, v43);
  v31 = v45;
  v24(v45, v25, v26);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B988, &qword_252F73EC0);
  v29(&v31[*(v32 + 48)], v27, v30);
  v33 = *(v28 + 8);
  v33(v47, v30);
  v34 = *(v37 + 8);
  v34(v36, v26);
  v33(v27, v30);
  return (v34)(v46, v26);
}

uint64_t sub_252F63E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayIntercomControlView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F63EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F63F84(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayIntercomControlView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B990, &qword_252F73EC8);
  v26 = *(v24 - 8);
  v5 = MEMORY[0x28223BE20](v24);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  sub_252F63E94(a1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v23 = type metadata accessor for CarPlayIntercomControlView;
  sub_252F63EFC(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CarPlayIntercomControlView);
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B998, &qword_252F73ED0);
  sub_252F65A4C(&qword_27F57B9A0, &qword_27F57B998, &qword_252F73ED0, MEMORY[0x277CDEFF0]);
  sub_252F73364();
  sub_252F63E94(a1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_252F63EFC(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9, v23);
  v27 = a1;
  v12 = v25;
  sub_252F73364();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9A8, &qword_252F73ED8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252F73E00;
  v14 = v24;
  *(v13 + 56) = v24;
  v15 = sub_252F65A4C(&qword_27F57B9B0, &qword_27F57B990, &qword_252F73EC8, MEMORY[0x277CDF028]);
  *(v13 + 64) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  v17 = v26;
  v18 = *(v26 + 16);
  v18(boxed_opaque_existential_1, v8, v14);
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  v19 = __swift_allocate_boxed_opaque_existential_1((v13 + 72));
  v18(v19, v12, v14);
  v20 = MEMORY[0x2530B0430](v13);

  v21 = *(v17 + 8);
  v21(v12, v14);
  v21(v8, v14);
  return v20;
}

uint64_t sub_252F64344()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D0, &unk_252F74210);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D8, &unk_252F73EF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E0, &unk_252F74220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24[-v7];
  v9 = sub_252F73054();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E8, &qword_252F73F00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252F73E10;
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  sub_252F73114();
  sub_252F65CB8(MEMORY[0x277D84F90]);
  v14 = sub_252F730C4();
  v15 = MEMORY[0x277D63778];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  sub_252F730B4();

  sub_252F73064();
  if (qword_27F57B850 != -1)
  {
    swift_once();
  }

  v16 = sub_252F73174();
  __swift_project_value_buffer(v16, qword_27F57BE00);
  v17 = sub_252F73154();
  v18 = sub_252F73564();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_252F60000, v17, v18, "#CarPlayIntercomControlView start/stop button tapped, performing direct action.", v19, 2u);
    MEMORY[0x2530B0AB0](v19, -1, -1);
  }

  type metadata accessor for CarPlayIntercomControlView(0);
  sub_252F733C4();
  v20 = sub_252F734C4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return sub_252F65E0C(v8, &qword_27F57B9E0, &unk_252F74220);
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    v23 = sub_252F73414();
    (*(*(v23 - 8) + 56))(v2, 1, 1, v23);
    sub_252F734B4();
    sub_252F65E0C(v2, &qword_27F57B9D0, &unk_252F74210);
    sub_252F65E0C(v5, &qword_27F57B9D8, &unk_252F73EF0);
    (*(v10 + 8))(v12, v9);
    return (*(v21 + 8))(v8, v20);
  }
}

uint64_t sub_252F6481C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9B8, &unk_252F73EE0);
  sub_252F733A4();
  swift_getOpaqueTypeConformance2();
  sub_252F65B00(&qword_27F57B9C0, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  return sub_252F73354();
}

uint64_t sub_252F6492C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  sub_252F65B48();
  v0 = sub_252F73294();
  v2 = v1;
  v4 = v3 & 1;
  sub_252F73314();
  sub_252F65B9C(v0, v2, v4);
}

uint64_t sub_252F649F8()
{
  v0 = sub_252F730E4();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  sub_252F73114();
  sub_252F730D4();

  return sub_252F733B4();
}

uint64_t sub_252F64AF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D0, &unk_252F74210);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D8, &unk_252F73EF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E0, &unk_252F74220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_252F73054();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E8, &qword_252F73F00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252F73E10;
  sub_252F65CB8(MEMORY[0x277D84F90]);
  v14 = sub_252F730C4();
  v15 = MEMORY[0x277D63778];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  sub_252F730B4();

  sub_252F73064();
  if (qword_27F57B850 != -1)
  {
    swift_once();
  }

  v16 = sub_252F73174();
  __swift_project_value_buffer(v16, qword_27F57BE00);
  v17 = sub_252F73154();
  v18 = sub_252F73564();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_252F60000, v17, v18, "#CarPlayIntercomControlView reply button tapped, performing direct action.", v19, 2u);
    MEMORY[0x2530B0AB0](v19, -1, -1);
  }

  type metadata accessor for CarPlayIntercomControlView(0);
  sub_252F733C4();
  v20 = sub_252F734C4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return sub_252F65E0C(v8, &qword_27F57B9E0, &unk_252F74220);
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    v23 = sub_252F73414();
    (*(*(v23 - 8) + 56))(v2, 1, 1, v23);
    sub_252F734B4();
    sub_252F65E0C(v2, &qword_27F57B9D0, &unk_252F74210);
    sub_252F65E0C(v5, &qword_27F57B9D8, &unk_252F73EF0);
    (*(v10 + 8))(v12, v9);
    return (*(v21 + 8))(v8, v20);
  }
}

uint64_t sub_252F64F80(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9B8, &unk_252F73EE0);
  sub_252F733A4();
  swift_getOpaqueTypeConformance2();
  sub_252F65B00(&qword_27F57B9C0, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  return sub_252F73354();
}

uint64_t sub_252F6508C()
{
  type metadata accessor for CarPlayIntercomControlModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  sub_252F65B48();
  v0 = sub_252F73294();
  v2 = v1;
  v4 = v3 & 1;
  sub_252F73314();
  sub_252F65B9C(v0, v2, v4);
}

uint64_t sub_252F65168()
{
  v0 = sub_252F730E4();
  MEMORY[0x28223BE20](v0 - 8);
  sub_252F730D4();
  return sub_252F733B4();
}

uint64_t sub_252F65224(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_252F63E94(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_252F63EFC(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for CarPlayIntercomControlView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B928, &qword_252F73E20);
  sub_252F65A4C(&qword_27F57B930, &qword_27F57B928, &qword_252F73E20, MEMORY[0x277CE14C0]);
  return sub_252F73404();
}

uint64_t sub_252F65394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CarPlayIntercomControlModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_252F733E4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_252F654D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CarPlayIntercomControlModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_252F733E4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_252F655FC(uint64_t a1)
{
  type metadata accessor for CarPlayIntercomControlModel(319);
  if (v1 <= 0x3F)
  {
    sub_252F65698(319);
    if (v2 <= 0x3F)
    {
      sub_252F733E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252F65698(uint64_t a1)
{
  if (!qword_27F57B948)
  {
    sub_252F734E4();
    sub_252F65B00(&qword_27F57B870, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_252F73204();
    if (!v2)
    {
      atomic_store(v1, &qword_27F57B948);
    }
  }
}

uint64_t sub_252F65770@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for CarPlayIntercomControlView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F6390C(v4, a1);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for CarPlayIntercomControlView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for CarPlayIntercomControlModel(0);
  v4(v2 + *(v5 + 20), v3);
  v6 = *(v5 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  v8 = v1[8];
  v9 = sub_252F733E4();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_252F659D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CarPlayIntercomControlView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_252F65A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_252F65B00(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_252F65B48()
{
  result = qword_27F57B9C8;
  if (!qword_27F57B9C8)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27F57B9C8);
  }

  return result;
}

uint64_t sub_252F65B9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_252F65BAC(uint64_t a1)
{
  v2 = sub_252F73594();

  return sub_252F65BF0(a1, v2);
}

unint64_t sub_252F65BF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_252F65EEC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2530B05E0](v9, a1);
      sub_252F65F48(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_252F65CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9F0, &qword_252F73F08);
    v3 = sub_252F73624();
    v4 = a1 + 32;

    while (1)
    {
      sub_252F65E6C(v4, v13);
      result = sub_252F65BAC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_252F65EDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_252F65E0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_252F65E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F57B9F8, &unk_252F73F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_252F65EDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_252F65FC4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_252F66358();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_252F6604C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_252F66188(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_252F66358()
{
  result = qword_27F57BA80;
  if (!qword_27F57BA80)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F57BA80);
  }

  return result;
}

uint64_t sub_252F663F4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v42 = *(a1 - 1);
  v43 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v41 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 16);
  *&v46 = *(v4 + 32);
  v7 = *(*(*(v46 + 8) + 8) + 8);
  v8 = sub_252F73614();
  MEMORY[0x28223BE20](v8);
  swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v10 = sub_252F73544();
  v40 = v10;
  v11 = a1[3];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83980], v10);
  v52 = v10;
  v53 = v9;
  v54 = v11;
  v55 = WitnessTable;
  v12 = v11;
  v36[1] = v11;
  v56 = MEMORY[0x277D83B98];
  v13 = sub_252F73384();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v37 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v38 = v36 - v17;
  MEMORY[0x2530B0570](v6, v7);
  swift_getWitnessTable(MEMORY[0x277D843F8], v8);
  v18 = sub_252F73554();
  *&v19 = v46;
  v20 = a1[5];
  v21 = a1[6];
  *(&v19 + 1) = v20;
  *&v22 = v6;
  *(&v22 + 1) = v12;
  v45 = v19;
  v46 = v22;
  v52 = v18;
  v47 = v22;
  v48 = v19;
  v23 = a1[7];
  v49 = v21;
  v50 = v23;
  v36[0] = swift_getKeyPath();
  v24 = v41;
  v25 = v42;
  (*(v42 + 16))(v41, v2, a1);
  v26 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v28 = v45;
  *(v27 + 16) = v46;
  *(v27 + 32) = v28;
  *(v27 + 48) = v21;
  *(v27 + 56) = v23;
  (*(v25 + 32))(v27 + v26, v24, a1);
  v29 = swift_allocObject();
  v30 = v45;
  *(v29 + 16) = v46;
  *(v29 + 32) = v30;
  *(v29 + 48) = v21;
  *(v29 + 56) = v23;
  *(v29 + 64) = sub_252F66BA4;
  *(v29 + 72) = v27;
  v31 = v37;
  sub_252F73374();
  v51 = v20;
  swift_getWitnessTable(MEMORY[0x277CE1290], v13, &v51);
  v32 = *(v14 + 16);
  v33 = v38;
  v32(v38, v31, v13);
  v34 = *(v14 + 8);
  v34(v31, v13);
  v32(v44, v33, v13);
  return (v34)(v33, v13);
}

uint64_t sub_252F66888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v26[0] = v16;
  v26[1] = v17;
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v26[5] = v21;
  v22 = type metadata accessor for ForEachWithIndex(0, v26);
  (*(a3 + *(v22 + 68)))(a1, a2);
  v23 = *(v10 + 16);
  v23(v15, v13, a4);
  v24 = *(v10 + 8);
  v24(v13, a4);
  v23(a5, v15, a4);
  return (v24)(v15, a4);
}

uint64_t sub_252F66A04(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v8, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_252F66AAC()
{
  v1 = v0[2];
  v6[0] = v0[1];
  v5 = *&v6[0];
  v2 = v0[3];
  v6[1] = v1;
  v6[2] = v2;
  v3 = *(type metadata accessor for ForEachWithIndex(0, v6) - 8);
  (*(*(v5 - 8) + 8))(v0 + ((*(v3 + 80) + 64) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_252F66BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v14[0] = v3[2];
  v14[1] = v7;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  v12 = *(type metadata accessor for ForEachWithIndex(0, v14) - 8);
  return sub_252F66888(a1, a2, v3 + ((*(v12 + 80) + 64) & ~*(v12 + 80)), v7, a3);
}

uint64_t sub_252F66C74()
{

  return swift_deallocObject();
}

uint64_t sub_252F66CE0(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v7 = sub_252F73544();
  v8 = v3;
  v9 = v1;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83980], v7);
  v11 = MEMORY[0x277D83B98];
  v4 = sub_252F73384();
  v6 = v2;
  return swift_getWitnessTable(MEMORY[0x277CE1290], v4, &v6);
}

uint64_t HomeAppLaunchModel.bundleId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  return v1;
}

uint64_t (*HomeAppLaunchModel.bundleId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  *(v3 + 32) = sub_252F73104();
  return sub_252F63694;
}

uint64_t HomeAppLaunchModel.buttonLabel.getter()
{
  type metadata accessor for HomeAppLaunchModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  return v1;
}

uint64_t type metadata accessor for HomeAppLaunchModel(uint64_t a1)
{
  result = qword_27F57BAB0;
  if (!qword_27F57BAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_252F66F74@<X0>(void *a1@<X8>)
{
  type metadata accessor for HomeAppLaunchModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  result = sub_252F73114();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F66FDC(void *a1)
{
  type metadata accessor for HomeAppLaunchModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t HomeAppLaunchModel.buttonLabel.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HomeAppLaunchModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t (*HomeAppLaunchModel.buttonLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for HomeAppLaunchModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  *(v3 + 32) = sub_252F73104();
  return sub_252F61D7C;
}

uint64_t sub_252F67174()
{
  if (*v0)
  {
    return 0x614C6E6F74747562;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_252F671B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_252F736B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252F736B4();

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

uint64_t sub_252F672A4(uint64_t a1)
{
  v2 = sub_252F674D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F672E0(uint64_t a1)
{
  v2 = sub_252F674D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAppLaunchModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BA88, &qword_252F73FB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F674D8();
  sub_252F73704();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F62D4C(&qword_27F57B8B8, MEMORY[0x277D637D0]);
  sub_252F736A4();
  if (!v1)
  {
    type metadata accessor for HomeAppLaunchModel(0);
    v8[14] = 1;
    sub_252F736A4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_252F674D8()
{
  result = qword_27F57BA90;
  if (!qword_27F57BA90)
  {
    result = swift_getWitnessTable(byte_252F74128, &type metadata for HomeAppLaunchModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BA90);
  }

  return result;
}

uint64_t HomeAppLaunchModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v27 = *(v30 - 8);
  v4 = MEMORY[0x28223BE20](v30);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = &v21 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BA98, &qword_252F73FC0);
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v21 - v8;
  v10 = type metadata accessor for HomeAppLaunchModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F674D8();
  sub_252F736F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v23 = v6;
  v24 = v12;
  v14 = v26;
  v13 = v27;
  v32 = 0;
  v15 = sub_252F62D4C(&qword_27F57B8D0, MEMORY[0x277D637E0]);
  v17 = v28;
  v16 = v29;
  sub_252F73664();
  v21 = v15;
  v28 = *(v13 + 32);
  (v28)(v24, v17, v30);
  v31 = 1;
  v18 = v23;
  sub_252F73664();
  (*(v14 + 8))(v9, v16);
  v19 = v24;
  (v28)(&v24[*(v22 + 20)], v18, v30);
  sub_252F678A8(v19, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_252F6790C(v19);
}

uint64_t sub_252F678A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppLaunchModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F6790C(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppLaunchModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252F679D0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for HomeAppLaunchModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_252F67A44@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  result = sub_252F73114();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F67AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_252F67B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_252F67BBC(uint64_t a1)
{
  sub_252F67C28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252F67C28()
{
  if (!qword_27F57B900)
  {
    v0 = sub_252F73134();
    if (!v1)
    {
      atomic_store(v0, &qword_27F57B900);
    }
  }
}

uint64_t getEnumTagSinglePayload for HomeAppLaunchModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HomeAppLaunchModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_252F67DD8()
{
  result = qword_27F57BAC0;
  if (!qword_27F57BAC0)
  {
    result = swift_getWitnessTable(byte_252F74100, &type metadata for HomeAppLaunchModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BAC0);
  }

  return result;
}

unint64_t sub_252F67E30()
{
  result = qword_27F57BAC8;
  if (!qword_27F57BAC8)
  {
    result = swift_getWitnessTable(a1o, &type metadata for HomeAppLaunchModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BAC8);
  }

  return result;
}

unint64_t sub_252F67E88()
{
  result = qword_27F57BAD0;
  if (!qword_27F57BAD0)
  {
    result = swift_getWitnessTable(aAk, &type metadata for HomeAppLaunchModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BAD0);
  }

  return result;
}

uint64_t HomeAppLaunchView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_252F734E4();
  sub_252F61A4C();
  *a2 = sub_252F731F4();
  a2[1] = v4;
  v5 = type metadata accessor for HomeAppLaunchView(0);
  sub_252F733D4();
  return sub_252F682C4(a1, a2 + *(v5 + 24), type metadata accessor for HomeAppLaunchModel);
}

uint64_t type metadata accessor for HomeAppLaunchView(uint64_t a1)
{
  result = qword_27F57BAE8;
  if (!qword_27F57BAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeAppLaunchView.body.getter()
{
  v1 = type metadata accessor for HomeAppLaunchView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_252F6825C(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_252F682C4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for HomeAppLaunchView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BAD8, &qword_252F74188);
  sub_252F65A4C(&qword_27F57BAE0, &qword_27F57BAD8, &qword_252F74188, MEMORY[0x277CDF028]);
  return sub_252F73404();
}

uint64_t sub_252F68114(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppLaunchView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_252F6825C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_252F682C4(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for HomeAppLaunchView);
  v9 = a1;
  return sub_252F73364();
}

uint64_t sub_252F6825C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppLaunchView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F682C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F6834C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D0, &unk_252F74210);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D8, &unk_252F73EF0);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E0, &unk_252F74220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = sub_252F73054();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_252F73044();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HomeAppLaunchView(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F57B858 != -1)
  {
    swift_once();
  }

  v17 = sub_252F73174();
  __swift_project_value_buffer(v17, qword_27F57BE18);
  sub_252F6825C(a1, v16);
  v18 = sub_252F73154();
  v19 = sub_252F73564();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = v8;
    v46 = v10;
    v21 = v9;
    v22 = v20;
    v23 = v13;
    v24 = swift_slowAlloc();
    v52[0] = v24;
    *v22 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
    sub_252F73114();
    sub_252F691D8(v16);
    v25 = sub_252F711EC(v52[1], v52[2], v52);

    *(v22 + 4) = v25;
    _os_log_impl(&dword_252F60000, v18, v19, "#HomeAppLaunchView Launching App: %s.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v26 = v24;
    v13 = v23;
    MEMORY[0x2530B0AB0](v26, -1, -1);
    v27 = v22;
    v9 = v21;
    v8 = v45;
    v10 = v46;
    MEMORY[0x2530B0AB0](v27, -1, -1);
  }

  else
  {

    sub_252F691D8(v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  sub_252F73034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E8, &qword_252F73F00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_252F73E10;
  v29 = sub_252F730C4();
  v30 = MEMORY[0x277D63778];
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
  v32 = v49;
  (*(v49 + 16))(boxed_opaque_existential_1, v13, v51);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63730], v29);
  v33 = v50;
  sub_252F73064();
  sub_252F733C4();
  v34 = v13;
  v35 = sub_252F734C4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) == 1)
  {
    (*(v10 + 1))(v33, v9);
    (*(v32 + 8))(v34, v51);
    return sub_252F65E0C(v8, &qword_27F57B9E0, &unk_252F74220);
  }

  else
  {
    v38 = v47;
    (*(v10 + 2))(v47, v33, v9);
    (*(v10 + 7))(v38, 0, 1, v9);
    v46 = v34;
    v39 = *MEMORY[0x277D63BE0];
    v40 = sub_252F73414();
    v41 = *(v40 - 8);
    v45 = v9;
    v42 = v41;
    v43 = v32;
    v44 = v48;
    (*(v41 + 104))(v48, v39, v40);
    (*(v42 + 56))(v44, 0, 1, v40);
    sub_252F734B4();
    sub_252F65E0C(v44, &qword_27F57B9D0, &unk_252F74210);
    sub_252F65E0C(v38, &qword_27F57B9D8, &unk_252F73EF0);
    (*(v10 + 1))(v50, v45);
    (*(v43 + 8))(v46, v51);
    return (*(v36 + 8))(v8, v35);
  }
}

uint64_t sub_252F68A48@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HomeAppLaunchView(0);
  type metadata accessor for HomeAppLaunchModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  sub_252F65B48();
  result = sub_252F73294();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_252F68AE8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_252F6825C(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_252F682C4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for HomeAppLaunchView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BAD8, &qword_252F74188);
  sub_252F65A4C(&qword_27F57BAE0, &qword_27F57BAD8, &qword_252F74188, MEMORY[0x277CDF028]);
  return sub_252F73404();
}

uint64_t sub_252F68C58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_252F733E4();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for HomeAppLaunchModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_252F68D9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_252F733E4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HomeAppLaunchModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_252F68EC0(uint64_t a1)
{
  sub_252F65698(319);
  if (v1 <= 0x3F)
  {
    sub_252F733E4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for HomeAppLaunchModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_252F68FA0()
{
  v1 = *(type metadata accessor for HomeAppLaunchView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252F68114(v2);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for HomeAppLaunchView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = sub_252F733E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for HomeAppLaunchModel(0);
  v7(&v5[*(v8 + 20)], v6);

  return swift_deallocObject();
}

uint64_t sub_252F69170()
{
  v1 = *(type metadata accessor for HomeAppLaunchView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252F6834C(v2);
}

uint64_t sub_252F691D8(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppLaunchView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HomeCommunicationSnippetModel.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_252F73144();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HomeCommunicationSnippetModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F69484(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D61BE8], v4);
    sub_252F6B3C4(&qword_27F57BB08, MEMORY[0x277D61C30], MEMORY[0x277D61C40]);
    v11 = sub_252F73504();
    (*(v5 + 8))(v7, v4);
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  sub_252F698DC(v10, type metadata accessor for HomeCommunicationSnippetModel);
  return v12 & 1;
}

uint64_t type metadata accessor for HomeCommunicationSnippetModel(uint64_t a1)
{
  result = qword_27F57BBC0;
  if (!qword_27F57BBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F69484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeCommunicationSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeCommunicationSnippetModel.description.getter()
{
  v1 = type metadata accessor for HomeDisambiguationModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CarPlayIntercomControlModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HomeAppLaunchModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HomeCommunicationSnippetModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_252F69484(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_252F6B2CC(v12, v3, type metadata accessor for HomeDisambiguationModel);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_252F735C4();
      MEMORY[0x2530B0550](0xD000000000000014, 0x8000000252F76CA0);
      sub_252F73604();
      v14 = v19;
      sub_252F698DC(v3, type metadata accessor for HomeDisambiguationModel);
    }

    else
    {
      v16 = *v12;
      v15 = v12[1];
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_252F735C4();
      MEMORY[0x2530B0550](0xD00000000000001CLL, 0x8000000252F76C80);
      v18[0] = v16;
      v18[1] = v15;
      sub_252F73604();

      return v19;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_252F6B2CC(v12, v6, type metadata accessor for CarPlayIntercomControlModel);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_252F735C4();
    MEMORY[0x2530B0550](0xD000000000000018, 0x8000000252F76CC0);
    sub_252F73604();
    MEMORY[0x2530B0550](41, 0xE100000000000000);
    v14 = v19;
    sub_252F698DC(v6, type metadata accessor for CarPlayIntercomControlModel);
  }

  else
  {
    sub_252F6B2CC(v12, v9, type metadata accessor for HomeAppLaunchModel);
    v19 = 0;
    v20 = 0xE000000000000000;
    MEMORY[0x2530B0550](0x6E75614C7070612ELL, 0xEB00000000286863);
    sub_252F73604();
    v14 = v19;
    sub_252F698DC(v9, type metadata accessor for HomeAppLaunchModel);
  }

  return v14;
}

uint64_t sub_252F698DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252F69990(uint64_t a1)
{
  v2 = sub_252F6A744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F699CC(uint64_t a1)
{
  v2 = sub_252F6A744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F69A08(uint64_t a1)
{
  v2 = sub_252F6A6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F69A44(uint64_t a1)
{
  v2 = sub_252F6A6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_252F69A80()
{
  v1 = 0x636E75614C707061;
  v2 = 0xD00000000000001ALL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_252F69B04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252F6BEA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252F69B38(uint64_t a1)
{
  v2 = sub_252F6A5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F69B74(uint64_t a1)
{
  v2 = sub_252F6A5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F69BB0(uint64_t a1)
{
  v2 = sub_252F6A69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F69BEC(uint64_t a1)
{
  v2 = sub_252F6A69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F69C28()
{
  sub_252F736C4();
  MEMORY[0x2530B0710](0);
  return sub_252F736E4();
}

uint64_t sub_252F69C6C(uint64_t a1)
{
  sub_252F736C4();
  MEMORY[0x2530B0710](0);
  return sub_252F736E4();
}

uint64_t sub_252F69CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_252F736B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252F69D2C(uint64_t a1)
{
  v2 = sub_252F6A5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F69D68(uint64_t a1)
{
  v2 = sub_252F6A5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeCommunicationSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB10, &qword_252F74230);
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB18, &qword_252F74238);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v38 - v5;
  v46 = type metadata accessor for HomeDisambiguationModel(0);
  MEMORY[0x28223BE20](v46);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB20, &qword_252F74240);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v8;
  v41 = type metadata accessor for CarPlayIntercomControlModel(0);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB28, &qword_252F74248);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for HomeAppLaunchModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HomeCommunicationSnippetModel(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB30, &qword_252F74250);
  v55 = *(v19 - 8);
  v56 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6A5A0();
  sub_252F73704();
  sub_252F69484(v54, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v34 = *v18;
      v33 = v18[1];
      LOBYTE(v57) = 3;
      sub_252F6A5F4();
      v35 = v51;
      v36 = v56;
      sub_252F73684();
      v57 = v34;
      v58 = v33;
      sub_252F6A648();
      v37 = v53;
      sub_252F736A4();
      (*(v52 + 8))(v35, v37);
      (*(v55 + 8))(v21, v36);
    }

    v26 = v47;
    sub_252F6B2CC(v18, v47, type metadata accessor for HomeDisambiguationModel);
    LOBYTE(v57) = 2;
    sub_252F6A69C();
    v27 = v48;
    v28 = v56;
    sub_252F73684();
    sub_252F6B3C4(&qword_27F57BB58, type metadata accessor for HomeDisambiguationModel, protocol conformance descriptor for HomeDisambiguationModel);
    v29 = v50;
    sub_252F736A4();
    (*(v49 + 8))(v27, v29);
    v30 = type metadata accessor for HomeDisambiguationModel;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_252F6B2CC(v18, v15, type metadata accessor for HomeAppLaunchModel);
      LOBYTE(v57) = 0;
      sub_252F6A744();
      v23 = v56;
      sub_252F73684();
      sub_252F6B3C4(&qword_27F57BAA8, type metadata accessor for HomeAppLaunchModel, protocol conformance descriptor for HomeAppLaunchModel);
      v24 = v40;
      sub_252F736A4();
      (*(v39 + 8))(v12, v24);
      sub_252F698DC(v15, type metadata accessor for HomeAppLaunchModel);
      return (*(v55 + 8))(v21, v23);
    }

    v26 = v42;
    sub_252F6B2CC(v18, v42, type metadata accessor for CarPlayIntercomControlModel);
    LOBYTE(v57) = 1;
    sub_252F6A6F0();
    v31 = v43;
    v28 = v56;
    sub_252F73684();
    sub_252F6B3C4(&qword_27F57B8E8, type metadata accessor for CarPlayIntercomControlModel, protocol conformance descriptor for CarPlayIntercomControlModel);
    v32 = v45;
    sub_252F736A4();
    (*(v44 + 8))(v31, v32);
    v30 = type metadata accessor for CarPlayIntercomControlModel;
  }

  sub_252F698DC(v26, v30);
  return (*(v55 + 8))(v21, v28);
}

unint64_t sub_252F6A5A0()
{
  result = qword_27F57BB38;
  if (!qword_27F57BB38)
  {
    result = swift_getWitnessTable(")m,/L\v", &type metadata for HomeCommunicationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BB38);
  }

  return result;
}

unint64_t sub_252F6A5F4()
{
  result = qword_27F57BB40;
  if (!qword_27F57BB40)
  {
    result = swift_getWitnessTable(aYm, &type metadata for HomeCommunicationSnippetModel.SendAnnouncementNeedsValueCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BB40);
  }

  return result;
}

unint64_t sub_252F6A648()
{
  result = qword_27F57BB48;
  if (!qword_27F57BB48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SendAnnouncementNeedsValueModel, &type metadata for SendAnnouncementNeedsValueModel, v0, v1);
    atomic_store(result, &qword_27F57BB48);
  }

  return result;
}

unint64_t sub_252F6A69C()
{
  result = qword_27F57BB50;
  if (!qword_27F57BB50)
  {
    result = swift_getWitnessTable(byte_252F74860, &type metadata for HomeCommunicationSnippetModel.HomeDisambiguationCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BB50);
  }

  return result;
}

unint64_t sub_252F6A6F0()
{
  result = qword_27F57BB60;
  if (!qword_27F57BB60)
  {
    result = swift_getWitnessTable(byte_252F74810, &type metadata for HomeCommunicationSnippetModel.CarPlayIntercomControlCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BB60);
  }

  return result;
}

unint64_t sub_252F6A744()
{
  result = qword_27F57BB68;
  if (!qword_27F57BB68)
  {
    result = swift_getWitnessTable(aIn, &type metadata for HomeCommunicationSnippetModel.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BB68);
  }

  return result;
}

uint64_t HomeCommunicationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB70, &qword_252F74258);
  v73 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v79 = &v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB78, &qword_252F74260);
  v5 = *(v4 - 8);
  v71 = v4;
  v72 = v5;
  MEMORY[0x28223BE20](v4);
  v78 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB80, &qword_252F74268);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  MEMORY[0x28223BE20](v7);
  v77 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB88, &qword_252F74270);
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v61 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB90, &qword_252F74278);
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = &v61 - v12;
  v75 = type metadata accessor for HomeCommunicationSnippetModel(0);
  v14 = MEMORY[0x28223BE20](v75);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v61 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v61 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v61 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  v28 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_252F6A5A0();
  v29 = v82;
  sub_252F736F4();
  if (!v29)
  {
    v63 = v25;
    v64 = v22;
    v62 = v16;
    v65 = v19;
    v31 = v77;
    v30 = v78;
    v32 = v79;
    v82 = v27;
    v33 = v81;
    v34 = v76;
    v35 = sub_252F73674();
    v36 = v35;
    v37 = *(v35 + 16);
    if (!v37 || ((v38 = *(v35 + 32), v37 == 1) ? (v39 = v38 == 4) : (v39 = 1), v39))
    {
      v40 = sub_252F735E4();
      swift_allocError();
      v41 = v13;
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB98, &qword_252F74280);
      *v43 = v75;
      sub_252F73644();
      sub_252F735D4();
      (*(*(v40 - 8) + 104))(v43, *MEMORY[0x277D84160], v40);
      swift_willThrow();
      (*(v80 + 8))(v41, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v35 + 32) > 1u)
      {
        if (v38 == 2)
        {
          LOBYTE(v83) = 2;
          sub_252F6A69C();
          sub_252F73634();
          v50 = v80;
          v79 = v36;
          type metadata accessor for HomeDisambiguationModel(0);
          sub_252F6B3C4(&qword_27F57BBA8, type metadata accessor for HomeDisambiguationModel, "!W,/8\n");
          v53 = v65;
          v54 = v71;
          sub_252F73664();
          (*(v72 + 8))(v30, v54);
          (*(v50 + 8))(v13, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v58 = v82;
          sub_252F6B2CC(v53, v82, type metadata accessor for HomeCommunicationSnippetModel);
          v59 = v81;
        }

        else
        {
          v59 = v33;
          LOBYTE(v83) = 3;
          sub_252F6A5F4();
          sub_252F73634();
          v52 = v80;
          sub_252F6B278();
          v57 = v70;
          sub_252F73664();
          (*(v73 + 8))(v32, v57);
          (*(v52 + 8))(v13, v34);
          swift_unknownObjectRelease();
          v60 = v62;
          *v62 = v83;
          swift_storeEnumTagMultiPayload();
          v58 = v82;
          sub_252F6B2CC(v60, v82, type metadata accessor for HomeCommunicationSnippetModel);
        }
      }

      else
      {
        if (*(v35 + 32))
        {
          LOBYTE(v83) = 1;
          sub_252F6A6F0();
          v51 = v31;
          sub_252F73634();
          type metadata accessor for CarPlayIntercomControlModel(0);
          v79 = v13;
          sub_252F6B3C4(&qword_27F57B8E0, type metadata accessor for CarPlayIntercomControlModel, protocol conformance descriptor for CarPlayIntercomControlModel);
          v55 = v64;
          v56 = v68;
          sub_252F73664();
          (*(v69 + 8))(v51, v56);
          (*(v80 + 8))(v79, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v55;
        }

        else
        {
          LOBYTE(v83) = 0;
          sub_252F6A744();
          v45 = v74;
          sub_252F73634();
          type metadata accessor for HomeAppLaunchModel(0);
          v46 = v45;
          v79 = v36;
          sub_252F6B3C4(&qword_27F57BAA0, type metadata accessor for HomeAppLaunchModel, protocol conformance descriptor for HomeAppLaunchModel);
          v47 = v63;
          v48 = v67;
          sub_252F73664();
          (*(v66 + 8))(v46, v48);
          (*(v80 + 8))(v13, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v47;
        }

        v58 = v82;
        sub_252F6B2CC(v49, v82, type metadata accessor for HomeCommunicationSnippetModel);
        v59 = v33;
      }

      sub_252F6B2CC(v58, v59, type metadata accessor for HomeCommunicationSnippetModel);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

unint64_t sub_252F6B278()
{
  result = qword_27F57BBA0;
  if (!qword_27F57BBA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SendAnnouncementNeedsValueModel, &type metadata for SendAnnouncementNeedsValueModel, v0, v1);
    atomic_store(result, &qword_27F57BBA0);
  }

  return result;
}

uint64_t sub_252F6B2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F6B3C4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_252F6B428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_252F73144();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F69484(v4, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 104))(v9, *MEMORY[0x277D61BE8], v5);
    sub_252F6B3C4(&qword_27F57BB08, MEMORY[0x277D61C30], MEMORY[0x277D61C40]);
    v12 = sub_252F73504();
    (*(v6 + 8))(v9, v5);
    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  sub_252F698DC(v11, type metadata accessor for HomeCommunicationSnippetModel);
  return v13 & 1;
}

uint64_t sub_252F6B680(uint64_t a1)
{
  result = type metadata accessor for HomeAppLaunchModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CarPlayIntercomControlModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for HomeDisambiguationModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeCommunicationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HomeCommunicationSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Logger(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Logger(_WORD *result, int a2, int a3)
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

unint64_t sub_252F6B984()
{
  result = qword_27F57BBD0;
  if (!qword_27F57BBD0)
  {
    result = swift_getWitnessTable(byte_252F744B8, &type metadata for HomeCommunicationSnippetModel.SendAnnouncementNeedsValueCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BBD0);
  }

  return result;
}

unint64_t sub_252F6B9DC()
{
  result = qword_27F57BBD8;
  if (!qword_27F57BBD8)
  {
    result = swift_getWitnessTable(aYH, &type metadata for HomeCommunicationSnippetModel.HomeDisambiguationCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BBD8);
  }

  return result;
}

unint64_t sub_252F6BA34()
{
  result = qword_27F57BBE0;
  if (!qword_27F57BBE0)
  {
    result = swift_getWitnessTable(byte_252F74628, &type metadata for HomeCommunicationSnippetModel.CarPlayIntercomControlCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BBE0);
  }

  return result;
}

unint64_t sub_252F6BA8C()
{
  result = qword_27F57BBE8;
  if (!qword_27F57BBE8)
  {
    result = swift_getWitnessTable(byte_252F746E0, &type metadata for HomeCommunicationSnippetModel.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BBE8);
  }

  return result;
}

unint64_t sub_252F6BAE4()
{
  result = qword_27F57BBF0;
  if (!qword_27F57BBF0)
  {
    result = swift_getWitnessTable(a1y, &type metadata for HomeCommunicationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BBF0);
  }

  return result;
}

unint64_t sub_252F6BB3C()
{
  result = qword_27F57BBF8;
  if (!qword_27F57BBF8)
  {
    result = swift_getWitnessTable(aQi, &type metadata for HomeCommunicationSnippetModel.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BBF8);
  }

  return result;
}

unint64_t sub_252F6BB94()
{
  result = qword_27F57BC00;
  if (!qword_27F57BC00)
  {
    result = swift_getWitnessTable(aAe, &type metadata for HomeCommunicationSnippetModel.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC00);
  }

  return result;
}

unint64_t sub_252F6BBEC()
{
  result = qword_27F57BC08;
  if (!qword_27F57BC08)
  {
    result = swift_getWitnessTable(aJ, &type metadata for HomeCommunicationSnippetModel.CarPlayIntercomControlCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC08);
  }

  return result;
}

unint64_t sub_252F6BC44()
{
  result = qword_27F57BC10;
  if (!qword_27F57BC10)
  {
    result = swift_getWitnessTable(byte_252F745C0, &type metadata for HomeCommunicationSnippetModel.CarPlayIntercomControlCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC10);
  }

  return result;
}

unint64_t sub_252F6BC9C()
{
  result = qword_27F57BC18;
  if (!qword_27F57BC18)
  {
    result = swift_getWitnessTable(byte_252F744E0, &type metadata for HomeCommunicationSnippetModel.HomeDisambiguationCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC18);
  }

  return result;
}

unint64_t sub_252F6BCF4()
{
  result = qword_27F57BC20;
  if (!qword_27F57BC20)
  {
    result = swift_getWitnessTable(byte_252F74508, &type metadata for HomeCommunicationSnippetModel.HomeDisambiguationCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC20);
  }

  return result;
}

unint64_t sub_252F6BD4C()
{
  result = qword_27F57BC28;
  if (!qword_27F57BC28)
  {
    result = swift_getWitnessTable(aYk, &type metadata for HomeCommunicationSnippetModel.SendAnnouncementNeedsValueCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC28);
  }

  return result;
}

unint64_t sub_252F6BDA4()
{
  result = qword_27F57BC30;
  if (!qword_27F57BC30)
  {
    result = swift_getWitnessTable(byte_252F74450, &type metadata for HomeCommunicationSnippetModel.SendAnnouncementNeedsValueCodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC30);
  }

  return result;
}

unint64_t sub_252F6BDFC()
{
  result = qword_27F57BC38;
  if (!qword_27F57BC38)
  {
    result = swift_getWitnessTable(byte_252F74708, &type metadata for HomeCommunicationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC38);
  }

  return result;
}

unint64_t sub_252F6BE54()
{
  result = qword_27F57BC40;
  if (!qword_27F57BC40)
  {
    result = swift_getWitnessTable(byte_252F74730, &type metadata for HomeCommunicationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC40);
  }

  return result;
}

uint64_t sub_252F6BEA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
  if (v4 || (sub_252F736B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000252F76D10 == a2 || (sub_252F736B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000252F76D30 == a2 || (sub_252F736B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000252F76D50 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_252F736B4();

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

uint64_t HomeTarget.hash(into:)(uint64_t a1)
{
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_252F734F4();
}

uint64_t HomeTarget.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_252F73024();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeTarget.init(id:name:selectHomeAction:)@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v7 = sub_252F73024();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a5, a1, v7);
  type metadata accessor for HomeTarget(0);
  sub_252F730F4();
  sub_252F6C264();
  sub_252F73084();
  return (*(v8 + 8))(a1, v7);
}

unint64_t sub_252F6C264()
{
  result = qword_27F57BC50;
  if (!qword_27F57BC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F57BC50);
  }

  return result;
}

unint64_t sub_252F6C2B0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_252F6C2FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252F6E878(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252F6C324(uint64_t a1)
{
  v2 = sub_252F6C604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F6C360(uint64_t a1)
{
  v2 = sub_252F6C604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeTarget.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC58, &unk_252F74950);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6C604();
  sub_252F73704();
  v8[15] = 0;
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC68, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_252F736A4();
  if (!v1)
  {
    type metadata accessor for HomeTarget(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
    sub_252F62D4C(&qword_27F57B8B8, MEMORY[0x277D637D0]);
    sub_252F736A4();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
    sub_252F6CEB8(&qword_27F57BC78, MEMORY[0x277D63228]);
    sub_252F736A4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_252F6C604()
{
  result = qword_27F57BC60;
  if (!qword_27F57BC60)
  {
    result = swift_getWitnessTable(byte_252F74D54, &type metadata for HomeTarget.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BC60);
  }

  return result;
}

uint64_t sub_252F6C658(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t HomeTarget.hashValue.getter()
{
  sub_252F736C4();
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252F734F4();
  return sub_252F736E4();
}

uint64_t HomeTarget.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v35 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = sub_252F73024();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v36 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC80, &qword_252F74968);
  v32 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v10 = &v26 - v9;
  v11 = type metadata accessor for HomeTarget(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6C604();
  v37 = v10;
  v14 = v39;
  sub_252F736F4();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v32;
  v15 = v33;
  v26 = v11;
  v27 = v13;
  v39 = a1;
  v18 = v34;
  v17 = v35;
  v42 = 0;
  sub_252F6C658(&qword_27F57BC88, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v19 = v36;
  sub_252F73664();
  v20 = *(v31 + 32);
  v36 = v7;
  v20(v27, v19, v7);
  v41 = 1;
  sub_252F62D4C(&qword_27F57B8D0, MEMORY[0x277D637E0]);
  v21 = v6;
  sub_252F73664();
  v22 = v27;
  (*(v15 + 32))(&v27[*(v26 + 20)], v21, v18);
  v40 = 2;
  sub_252F6CEB8(&qword_27F57BC90, MEMORY[0x277D63230]);
  v23 = v17;
  v24 = v30;
  sub_252F73664();
  (*(v16 + 8))(v37, v38);
  (*(v28 + 32))(v22 + *(v26 + 24), v23, v24);
  sub_252F6DB98(v22, v29, type metadata accessor for HomeTarget);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_252F6DC00(v22, type metadata accessor for HomeTarget);
}

uint64_t sub_252F6CC90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_252F73024();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_252F6CD28()
{
  sub_252F736C4();
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252F734F4();
  return sub_252F736E4();
}

uint64_t sub_252F6CDB0(uint64_t a1)
{
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_252F734F4();
}

uint64_t sub_252F6CE34(uint64_t a1)
{
  sub_252F736C4();
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252F734F4();
  return sub_252F736E4();
}

uint64_t sub_252F6CEB8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BC70, &qword_252F74960);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252F6CF30()
{
  v1 = 0x6449656C646E7562;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x74706D6F7270;
  }

  if (*v0)
  {
    v1 = 0x67726154656D6F68;
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

uint64_t sub_252F6CFB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252F6E990(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252F6CFDC(uint64_t a1)
{
  v2 = sub_252F6D2FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F6D018(uint64_t a1)
{
  v2 = sub_252F6D2FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeDisambiguationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC98, &qword_252F74970);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6D2FC();
  sub_252F73704();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F62D4C(&qword_27F57B8B8, MEMORY[0x277D637D0]);
  sub_252F736A4();
  if (!v1)
  {
    v8[1] = type metadata accessor for HomeDisambiguationModel(0);
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
    sub_252F6DAB0(&qword_27F57BCB0, MEMORY[0x277D637D0]);
    sub_252F736A4();
    v10 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
    sub_252F627BC(&qword_27F57B8C0, MEMORY[0x277D637D0]);
    sub_252F736A4();
    v9 = 3;
    sub_252F736A4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_252F6D2FC()
{
  result = qword_27F57BCA0;
  if (!qword_27F57BCA0)
  {
    result = swift_getWitnessTable("%i,/L\b", v0);
    atomic_store(result, &qword_27F57BCA0);
  }

  return result;
}

uint64_t sub_252F6D370(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F6D3A8(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BCC0, &unk_252F74980);
    v10 = sub_252F6C658(a2, type metadata accessor for HomeTarget, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HomeDisambiguationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v32 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v42 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v32 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCE0, &qword_252F74990);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v12 = &v32 - v11;
  v13 = type metadata accessor for HomeDisambiguationModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6D2FC();
  v47 = v12;
  v16 = v49;
  sub_252F736F4();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v44;
  v35 = v9;
  v36 = v15;
  v49 = a1;
  v53 = 0;
  v18 = sub_252F62D4C(&qword_27F57B8D0, MEMORY[0x277D637E0]);
  v19 = v45;
  sub_252F73664();
  v34 = v18;
  v20 = v6;
  v21 = v42 + 32;
  v22 = *(v42 + 32);
  v45 = v20;
  v22(v36, v19);
  v52 = 1;
  sub_252F6DAB0(&qword_27F57BCE8, MEMORY[0x277D637E0]);
  v23 = v17;
  v24 = v43;
  sub_252F73664();
  v32 = v21;
  v33 = v22;
  v25 = v13;
  v26 = v36;
  (*(v39 + 32))(&v36[*(v13 + 20)], v23, v24);
  v51 = 2;
  sub_252F627BC(&qword_27F57B8D8, MEMORY[0x277D637E0]);
  v27 = v38;
  v28 = v41;
  v44 = 0;
  sub_252F73664();
  (*(v40 + 32))(v26 + *(v25 + 24), v27, v28);
  v50 = 3;
  v29 = v35;
  v30 = v45;
  sub_252F73664();
  (*(v46 + 8))(v47, v48);
  v33(v26 + *(v25 + 28), v29, v30);
  sub_252F6DB98(v26, v37, type metadata accessor for HomeDisambiguationModel);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_252F6DC00(v26, type metadata accessor for HomeDisambiguationModel);
}

uint64_t sub_252F6DAB0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BCA8, &qword_252F74978);
    v6[0] = sub_252F6D3A8(&qword_27F57BCB8, &qword_27F57BCC8, protocol conformance descriptor for HomeTarget, MEMORY[0x277D83978]);
    v6[1] = sub_252F6D3A8(&qword_27F57BCD0, &qword_27F57BCD8, protocol conformance descriptor for HomeTarget, MEMORY[0x277D83948]);
    result = swift_getWitnessTable(a2, v5, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252F6DB98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F6DC00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252F6DE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252F73024();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_252F6DFC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_252F73024();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_252F6E124(uint64_t a1)
{
  sub_252F73024();
  if (v1 <= 0x3F)
  {
    sub_252F632A4(319, &qword_27F57B900, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_252F6E1D0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252F6E1D0(uint64_t a1)
{
  if (!qword_27F57BD08)
  {
    sub_252F6C264();
    v1 = sub_252F730A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F57BD08);
    }
  }
}

uint64_t sub_252F6E23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_252F6E3B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_252F6E524(uint64_t a1)
{
  sub_252F632A4(319, &qword_27F57B900, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_252F6E5E4(319);
    if (v2 <= 0x3F)
    {
      sub_252F632A4(319, &qword_27F57B908, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252F6E5E4(uint64_t a1)
{
  if (!qword_27F57BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BCC0, &unk_252F74980);
    v1 = sub_252F73134();
    if (!v2)
    {
      atomic_store(v1, &qword_27F57BD20);
    }
  }
}

unint64_t sub_252F6E66C()
{
  result = qword_27F57BD28;
  if (!qword_27F57BD28)
  {
    result = swift_getWitnessTable(byte_252F74C24, &type metadata for HomeTarget.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BD28);
  }

  return result;
}

unint64_t sub_252F6E6C4()
{
  result = qword_27F57BD30;
  if (!qword_27F57BD30)
  {
    result = swift_getWitnessTable(byte_252F74CDC, &type metadata for HomeDisambiguationModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BD30);
  }

  return result;
}

unint64_t sub_252F6E71C()
{
  result = qword_27F57BD38;
  if (!qword_27F57BD38)
  {
    result = swift_getWitnessTable(aUc, &type metadata for HomeDisambiguationModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BD38);
  }

  return result;
}

unint64_t sub_252F6E774()
{
  result = qword_27F57BD40;
  if (!qword_27F57BD40)
  {
    result = swift_getWitnessTable(aE, &type metadata for HomeDisambiguationModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BD40);
  }

  return result;
}

unint64_t sub_252F6E7CC()
{
  result = qword_27F57BD48;
  if (!qword_27F57BD48)
  {
    result = swift_getWitnessTable(aD, &type metadata for HomeTarget.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BD48);
  }

  return result;
}

unint64_t sub_252F6E824()
{
  result = qword_27F57BD50;
  if (!qword_27F57BD50)
  {
    result = swift_getWitnessTable(byte_252F74BBC, &type metadata for HomeTarget.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BD50);
  }

  return result;
}

uint64_t sub_252F6E878(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_252F736B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_252F736B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252F76DA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_252F736B4();

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

uint64_t sub_252F6E990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_252F736B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x67726154656D6F68 && a2 == 0xEB00000000737465 || (sub_252F736B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000252F76DC0 == a2 || (sub_252F736B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_252F736B4();

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

uint64_t HomeDisambiguationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_252F734E4();
  sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *a2 = sub_252F731F4();
  a2[1] = v4;
  v5 = type metadata accessor for HomeDisambiguationView(0);
  sub_252F733D4();
  return sub_252F70ED8(a1, a2 + *(v5 + 24), type metadata accessor for HomeDisambiguationModel);
}

uint64_t type metadata accessor for HomeDisambiguationView(uint64_t a1)
{
  result = qword_27F57BDA0;
  if (!qword_27F57BDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD58, &qword_252F74DB0);
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v24 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD60, &qword_252F74DB8);
  MEMORY[0x28223BE20](v28);
  v7 = &v24 - v6;
  v8 = type metadata accessor for HomeDisambiguationView(0);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252F734A4();
  MEMORY[0x28223BE20](v11 - 8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD68, &unk_252F74DC0);
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v25 = &v24 - v12;
  type metadata accessor for HomeDisambiguationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  sub_252F73114();
  if (v35 != 1)
  {
    goto LABEL_4;
  }

  v24 = v9;
  v13 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v14 = *v1;
    sub_252F734D4();

    v10 = v13;
    if (sub_252F73574())
    {
LABEL_4:
      sub_252F70B68(v2, v10, type metadata accessor for HomeDisambiguationView);
      v15 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v16 = swift_allocObject();
      sub_252F70ED8(v10, v16 + v15, type metadata accessor for HomeDisambiguationView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD70, &qword_252F74DD0);
      sub_252F65A4C(&qword_27F57BD78, &qword_27F57BD70, &qword_252F74DD0, MEMORY[0x277CE14C0]);
      sub_252F73404();
      v17 = v31;
      (*(v3 + 16))(v7, v5, v31);
      swift_storeEnumTagMultiPayload();
      sub_252F65A4C(&qword_27F57BD80, &qword_27F57BD68, &unk_252F74DC0, MEMORY[0x277D63CE0]);
      sub_252F65A4C(&qword_27F57BD88, &qword_27F57BD58, &qword_252F74DB0, MEMORY[0x277D63B90]);
      sub_252F73244();
      return (*(v3 + 8))(v5, v17);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
    sub_252F73114();
    v36 = MEMORY[0x277D837D0];
    v37 = MEMORY[0x277D63F80];
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_252F73494();
    sub_252F70B68(v2, v13, type metadata accessor for HomeDisambiguationView);
    v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v20 = swift_allocObject();
    sub_252F70ED8(v13, v20 + v19, type metadata accessor for HomeDisambiguationView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD90, &qword_252F74DD8);
    sub_252F65A4C(&qword_27F57BD98, &qword_27F57BD90, &qword_252F74DD8, aQ);
    v21 = v25;
    sub_252F73444();
    v22 = v26;
    v23 = v29;
    (*(v26 + 16))(v7, v21, v29);
    swift_storeEnumTagMultiPayload();
    sub_252F65A4C(&qword_27F57BD80, &qword_27F57BD68, &unk_252F74DC0, MEMORY[0x277D63CE0]);
    sub_252F65A4C(&qword_27F57BD88, &qword_27F57BD58, &qword_252F74DB0, MEMORY[0x277D63B90]);
    sub_252F73244();
    return (*(v22 + 8))(v21, v23);
  }

  else
  {
    sub_252F734E4();
    sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F731E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F6F324@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for HomeDisambiguationView(0);
  v4 = *(v3 - 8);
  v27[1] = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v29 = v5;
  v30 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252F73424();
  v27[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B970, &qword_252F74E80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDF0, &qword_252F74E88);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  if (*a1)
  {
    v19 = *a1;
    sub_252F734D4();

    if (sub_252F73574())
    {
      (*(v10 + 56))(v18, 1, 1, v9);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
      sub_252F73114();
      sub_252F73434();
      sub_252F717F4(&qword_27F57B978, MEMORY[0x277D63C98], MEMORY[0x277D63C88]);
      sub_252F73314();
      (*(v27[0] + 8))(v8, v6);
      (*(v10 + 32))(v18, v12, v9);
      (*(v10 + 56))(v18, 0, 1, v9);
    }

    type metadata accessor for HomeDisambiguationModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
    sub_252F73114();
    v20 = v32;
    v21 = v30;
    sub_252F70B68(a1, v30, type metadata accessor for HomeDisambiguationView);
    v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v23 = swift_allocObject();
    sub_252F70ED8(v21, v23 + v22, type metadata accessor for HomeDisambiguationView);
    sub_252F71AC0(v18, v16);
    v24 = v31;
    sub_252F71AC0(v16, v31);
    v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDF8, &unk_252F74E90) + 48));
    *v25 = v20;
    v25[1] = sub_252F71B30;
    v25[2] = v23;

    sub_252F65E0C(v18, &qword_27F57BDF0, &qword_252F74E88);

    return sub_252F65E0C(v16, &qword_27F57BDF0, &qword_252F74E88);
  }

  else
  {
    sub_252F734E4();
    sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F731E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F6F82C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomeDisambiguationView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_252F6F324(v4, a1);
}

uint64_t sub_252F6F89C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HomeDisambiguationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for HomeDisambiguationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  sub_252F73114();
  v7 = v11[1];
  sub_252F70B68(a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HomeDisambiguationView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = sub_252F70ED8(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for HomeDisambiguationView);
  *a2 = v7;
  a2[1] = sub_252F70B64;
  a2[2] = v9;
  return result;
}

uint64_t sub_252F6FA04@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HomeDisambiguationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F6F89C(v4, a1);
}

uint64_t sub_252F6FA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v50 = a1;
  v51 = a4;
  v5 = sub_252F73074();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HomeDisambiguationView(0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HomeTarget(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_252F73464();
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDC0, &qword_252F74E60);
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDC8, &unk_252F74E68);
  MEMORY[0x28223BE20](v46);
  v19 = &v38 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  v78 = MEMORY[0x277D837D0];
  v79 = MEMORY[0x277D63F80];
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_252F73454();
  sub_252F70B68(a2, v12, type metadata accessor for HomeTarget);
  v20 = v42;
  sub_252F70B68(v42, v9, type metadata accessor for HomeDisambiguationView);
  v21 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v22 = (v11 + *(v40 + 80) + v21) & ~*(v40 + 80);
  v23 = swift_allocObject();
  sub_252F70ED8(v12, v23 + v21, type metadata accessor for HomeTarget);
  sub_252F70ED8(v9, v23 + v22, type metadata accessor for HomeDisambiguationView);
  v24 = sub_252F717F4(&qword_27F57BDD0, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
  v25 = v41;
  sub_252F732B4();
  v26 = v25;

  (*(v43 + 8))(v14, v25);
  if (*v20)
  {
    v27 = *v20;
    sub_252F734D4();

    if (sub_252F73574() & 1) != 0 || (v28 = v27, sub_252F734D4(), v28, (sub_252F73584()))
    {
      v29 = MEMORY[0x277D62F38];
    }

    else
    {
      v29 = MEMORY[0x277D62F28];
    }

    v31 = v47;
    v30 = v48;
    v32 = v49;
    (*(v48 + 104))(v47, *v29, v49);
    v76 = v26;
    v77 = v24;
    swift_getOpaqueTypeConformance2();
    v33 = v45;
    sub_252F732A4();
    (*(v30 + 8))(v31, v32);
    (*(v44 + 8))(v17, v33);
    LOBYTE(v32) = v50 == 0;
    sub_252F734E4();
    sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v34 = sub_252F731F4();
    v35 = &v19[*(v46 + 36)];
    *v35 = v34;
    *(v35 + 1) = v36;
    v35[16] = v32;
    sub_252F7100C();
    sub_252F73314();
    return sub_252F65E0C(v19, &qword_27F57BDC8, &unk_252F74E68);
  }

  else
  {
    sub_252F734E4();
    sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F731E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F70190(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D0, &unk_252F74210);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D8, &unk_252F73EF0);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E0, &unk_252F74220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for HomeTarget(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_252F73054();
  v13 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E8, &qword_252F73F00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_252F73E10;
  v17 = sub_252F730C4();
  v18 = MEMORY[0x277D63778];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  *boxed_opaque_existential_1 = sub_252F73094();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v17);
  sub_252F73064();
  if (qword_27F57B858 != -1)
  {
    swift_once();
  }

  v20 = sub_252F73174();
  __swift_project_value_buffer(v20, qword_27F57BE18);
  sub_252F70B68(a1, v12, type metadata accessor for HomeTarget);
  v21 = sub_252F73154();
  v22 = sub_252F73564();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
    sub_252F73114();
    sub_252F71190(v12);
    v25 = sub_252F711EC(v38, v39, &v40);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_252F60000, v21, v22, "#HomeDisambiguationView target tapped, performing direct action for %s.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x2530B0AB0](v24, -1, -1);
    MEMORY[0x2530B0AB0](v23, -1, -1);
  }

  else
  {

    sub_252F71190(v12);
  }

  type metadata accessor for HomeDisambiguationView(0);
  sub_252F733C4();
  v26 = sub_252F734C4();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v9, 1, v26) == 1)
  {
    (*(v13 + 8))(v15, v37);
    return sub_252F65E0C(v9, &qword_27F57B9E0, &unk_252F74220);
  }

  else
  {
    v29 = v34;
    v30 = v37;
    (*(v13 + 16))(v34, v15, v37);
    (*(v13 + 56))(v29, 0, 1, v30);
    v31 = sub_252F73414();
    v32 = v35;
    (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
    sub_252F734B4();
    sub_252F65E0C(v32, &qword_27F57B9D0, &unk_252F74210);
    sub_252F65E0C(v29, &qword_27F57B9D8, &unk_252F73EF0);
    (*(v13 + 8))(v15, v30);
    return (*(v27 + 8))(v9, v26);
  }
}

uint64_t sub_252F70778(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_252F733E4();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for HomeDisambiguationModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_252F708BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_252F733E4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HomeDisambiguationModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_252F709E0(uint64_t a1)
{
  sub_252F65698(319);
  if (v1 <= 0x3F)
  {
    sub_252F733E4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for HomeDisambiguationModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252F70A80()
{
  result = qword_27F57BDB0;
  if (!qword_27F57BDB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BDB8, &qword_252F74E58);
    v4[0] = sub_252F65A4C(&qword_27F57BD80, &qword_27F57BD68, &unk_252F74DC0, MEMORY[0x277D63CE0]);
    v4[1] = sub_252F65A4C(&qword_27F57BD88, &qword_27F57BD58, &qword_252F74DB0, MEMORY[0x277D63B90]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F57BDB0);
  }

  return result;
}

uint64_t sub_252F70B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F70BD0()
{
  v1 = (type metadata accessor for HomeTarget(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for HomeDisambiguationView(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = v0 + v2;
  v7 = sub_252F73024();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v10 = *(*(v9 - 8) + 8);
  v10(v6 + v8, v9);
  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  (*(*(v12 - 8) + 8))(v6 + v11, v12);

  v13 = v4[7];
  v14 = sub_252F733E4();
  (*(*(v14 - 8) + 8))(v0 + v5 + v13, v14);
  v15 = v0 + v5 + v4[8];
  v10(v15, v9);
  v16 = type metadata accessor for HomeDisambiguationModel(0);
  v17 = v16[5];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  (*(*(v18 - 8) + 8))(v15 + v17, v18);
  v19 = v16[6];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v10(v15 + v16[7], v9);

  return swift_deallocObject();
}

uint64_t sub_252F70ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F70F40()
{
  v1 = *(type metadata accessor for HomeTarget(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for HomeDisambiguationView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_252F70190(v0 + v2, v5);
}

unint64_t sub_252F7100C()
{
  result = qword_27F57BDD8;
  if (!qword_27F57BDD8)
  {
    v5[8] = v0;
    v5[9] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BDC8, &unk_252F74E68);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BDC0, &qword_252F74E60);
    sub_252F73464();
    sub_252F717F4(&qword_27F57BDD0, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_252F7113C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27F57BDD8);
  }

  return result;
}

unint64_t sub_252F7113C()
{
  result = qword_27F57BDE0;
  if (!qword_27F57BDE0)
  {
    result = swift_getWitnessTable(aY, &type metadata for CarPlayDisambiguationListItem, v0, v1);
    atomic_store(result, &qword_27F57BDE0);
  }

  return result;
}

uint64_t sub_252F71190(uint64_t a1)
{
  v2 = type metadata accessor for HomeTarget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252F711EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_252F712B8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_252F71794(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_252F712B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_252F713C4(a5, a6);
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
    result = sub_252F735F4();
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

void *sub_252F713C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_252F71410(a1, a2);
  sub_252F71540(&unk_2864D98D8);
  return v3;
}

void *sub_252F71410(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_252F7162C(v5, 0);
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

  result = sub_252F735F4();
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
        v10 = sub_252F73524();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_252F7162C(v10, 0);
        result = sub_252F735B4();
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

uint64_t sub_252F71540(uint64_t result)
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

  result = sub_252F716A0(result, v11, 1, v3);
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

void *sub_252F7162C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDE8, &qword_252F74E78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_252F716A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDE8, &qword_252F74E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_252F71794(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_252F717F4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for HomeDisambiguationView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = sub_252F733E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for HomeDisambiguationModel(0);
  v9 = v8[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  (*(*(v10 - 8) + 8))(&v5[v9], v10);
  v11 = v8[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  (*(*(v12 - 8) + 8))(&v5[v11], v12);
  v7(&v5[v8[7]], v6);

  return swift_deallocObject();
}

uint64_t sub_252F71A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for HomeDisambiguationView(0) - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return sub_252F6FA90(a1, a2, v8, a3);
}

uint64_t sub_252F71AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDF0, &qword_252F74E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F71B40()
{
  v0 = sub_252F73174();
  __swift_allocate_value_buffer(v0, qword_27F57BE00);
  __swift_project_value_buffer(v0, qword_27F57BE00);
  return sub_252F73164();
}

uint64_t sub_252F71BE0()
{
  v0 = sub_252F73174();
  __swift_allocate_value_buffer(v0, qword_27F57BE18);
  __swift_project_value_buffer(v0, qword_27F57BE18);
  return sub_252F73164();
}

uint64_t sub_252F71C84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_252F73174();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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

uint64_t sub_252F71DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E746567726174 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_252F736B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252F71E60(uint64_t a1)
{
  v2 = sub_252F72014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F71E9C(uint64_t a1)
{
  v2 = sub_252F72014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SendAnnouncementNeedsValueModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BE30, &qword_252F74ED0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F72014();
  sub_252F73704();
  sub_252F73694();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_252F72014()
{
  result = qword_27F57BE38;
  if (!qword_27F57BE38)
  {
    result = swift_getWitnessTable(byte_252F75074, &type metadata for SendAnnouncementNeedsValueModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BE38);
  }

  return result;
}

uint64_t SendAnnouncementNeedsValueModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BE40, &qword_252F74ED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F72014();
  sub_252F736F4();
  if (!v2)
  {
    v9 = sub_252F73654();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_252F721FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BE30, &qword_252F74ED0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F72014();
  sub_252F73704();
  sub_252F73694();
  return (*(v3 + 8))(v5, v2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_252F72344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_252F723A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_252F72414()
{
  result = qword_27F57BE48;
  if (!qword_27F57BE48)
  {
    result = swift_getWitnessTable(aP, &type metadata for SendAnnouncementNeedsValueModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BE48);
  }

  return result;
}

unint64_t sub_252F7246C()
{
  result = qword_27F57BE50;
  if (!qword_27F57BE50)
  {
    result = swift_getWitnessTable(byte_252F74FBC, &type metadata for SendAnnouncementNeedsValueModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BE50);
  }

  return result;
}

unint64_t sub_252F724C4()
{
  result = qword_27F57BE58;
  if (!qword_27F57BE58)
  {
    result = swift_getWitnessTable(byte_252F74FE4, &type metadata for SendAnnouncementNeedsValueModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F57BE58);
  }

  return result;
}

double SendAnnouncementView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_252F73234();
  v50 = 1;
  sub_252F727F0(v3, v4, &v38);
  v59 = v46;
  v60 = v47;
  v55 = v42;
  v56 = v43;
  v57 = v44;
  v58 = v45;
  v51 = v38;
  v52 = v39;
  v53 = v40;
  v54 = v41;
  v62[8] = v46;
  v62[9] = v47;
  v62[4] = v42;
  v62[5] = v43;
  v62[6] = v44;
  v62[7] = v45;
  v62[0] = v38;
  v62[1] = v39;
  v61 = v48;
  v63 = v48;
  v62[2] = v40;
  v62[3] = v41;
  sub_252F72F8C(&v51, &v37, &qword_27F57BE60, &qword_252F750D0);
  sub_252F65E0C(v62, &qword_27F57BE60, &qword_252F750D0);
  *&v49[119] = v58;
  *&v49[135] = v59;
  *&v49[151] = v60;
  *&v49[55] = v54;
  *&v49[71] = v55;
  *&v49[87] = v56;
  *&v49[103] = v57;
  *&v49[7] = v51;
  *&v49[23] = v52;
  v49[167] = v61;
  *&v49[39] = v53;
  v6 = v50;
  v7 = sub_252F73324();
  v8 = objc_opt_self();
  v9 = [v8 mainScreen];
  [v9 applicationFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v64.origin.x = v11;
  v64.origin.y = v13;
  v64.size.width = v15;
  v64.size.height = v17;
  CGRectGetWidth(v64);
  v18 = [v8 mainScreen];
  [v18 applicationFrame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v65.origin.x = v20;
  v65.origin.y = v22;
  v65.size.width = v24;
  v65.size.height = v26;
  CGRectGetHeight(v65);
  sub_252F73394();
  sub_252F731C4();
  v27 = sub_252F731D4();
  LOBYTE(v9) = sub_252F73254();
  v28 = sub_252F73334();
  v29 = sub_252F73254();
  v30 = *&v49[96];
  *(a1 + 129) = *&v49[112];
  v31 = *&v49[144];
  *(a1 + 145) = *&v49[128];
  *(a1 + 161) = v31;
  v32 = *&v49[32];
  *(a1 + 65) = *&v49[48];
  v33 = *&v49[80];
  *(a1 + 81) = *&v49[64];
  *(a1 + 97) = v33;
  *(a1 + 113) = v30;
  v34 = *&v49[16];
  *(a1 + 17) = *v49;
  *(a1 + 33) = v34;
  *(a1 + 49) = v32;
  v35 = v39;
  *(a1 + 200) = v38;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 177) = *&v49[160];
  *(a1 + 192) = v7;
  *(a1 + 216) = v35;
  result = *&v40;
  *(a1 + 232) = v40;
  *(a1 + 248) = v27;
  *(a1 + 256) = v9;
  *(a1 + 264) = v28;
  *(a1 + 272) = v29;
  return result;
}

uint64_t sub_252F727F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BED8, &qword_252F751A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  if (a2)
  {
    v9 = a2;
  }

  else
  {

    v9 = 0xEA00000000006572;
    a1 = 0x6568777972657645;
  }

  *&v47 = a1;
  *(&v47 + 1) = v9;
  sub_252F65B48();

  v10 = sub_252F73294();
  v12 = v11;
  v37 = v11;
  v38 = v13;
  v15 = v14;
  v16 = v13;
  v17 = sub_252F73264();
  sub_252F73184();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v15 & 1;
  v63 = v15 & 1;
  HIDWORD(v36) = v15 & 1;
  v62 = 0;
  v27 = sub_252F73344();
  v28 = sub_252F73274();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  v29 = sub_252F73284();
  sub_252F65E0C(v8, &qword_27F57BED8, &qword_252F751A0);
  KeyPath = swift_getKeyPath();
  *&v43 = v10;
  *(&v43 + 1) = v12;
  LOBYTE(v44) = v26;
  *(&v44 + 1) = *v42;
  DWORD1(v44) = *&v42[3];
  *(&v44 + 1) = v16;
  LOBYTE(v45) = v17;
  *(&v45 + 1) = *v41;
  DWORD1(v45) = *&v41[3];
  *(&v45 + 1) = v19;
  *&v46[0] = v21;
  *(&v46[0] + 1) = v23;
  *&v46[1] = v25;
  BYTE8(v46[1]) = 0;
  *(v50 + 9) = *(v46 + 9);
  v49 = v45;
  v50[0] = v46[0];
  v47 = v43;
  v48 = v44;
  v40 = 1;
  v39 = 1;
  v31 = v43;
  v32 = v44;
  v33 = v50[1];
  *(a3 + 48) = v46[0];
  *(a3 + 64) = v33;
  v34 = v49;
  *(a3 + 16) = v32;
  *(a3 + 32) = v34;
  *a3 = v31;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 96) = v27;
  *(a3 + 104) = KeyPath;
  *(a3 + 112) = v29;
  *(a3 + 120) = sub_252F72B80;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 1;
  sub_252F72F8C(&v43, v51, &unk_27F57BEE0, &qword_252F751D8);

  sub_252F72FF4(sub_252F72B80, 0);
  sub_252F72FF4(0, 0);

  sub_252F73004(sub_252F72B80, 0);
  sub_252F73004(0, 0);
  v51[0] = v10;
  v51[1] = v37;
  v52 = BYTE4(v36);
  *v53 = *v42;
  *&v53[3] = *&v42[3];
  v54 = v38;
  v55 = v17;
  *v56 = *v41;
  *&v56[3] = *&v41[3];
  v57 = v19;
  v58 = v21;
  v59 = v23;
  v60 = v25;
  v61 = 0;
  return sub_252F65E0C(v51, &unk_27F57BEE0, &qword_252F751D8);
}

void sub_252F72B80()
{
  if (qword_27F57B858 != -1)
  {
    swift_once();
  }

  v0 = sub_252F73174();
  __swift_project_value_buffer(v0, qword_27F57BE18);
  oslog = sub_252F73154();
  v1 = sub_252F73564();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_252F60000, oslog, v1, "WAVEFORM!!", v2, 2u);
    MEMORY[0x2530B0AB0](v2, -1, -1);
  }
}

unint64_t sub_252F72C80()
{
  result = qword_27F57BE68;
  if (!qword_27F57BE68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BE70, &qword_252F75168);
    v4[0] = sub_252F72D38();
    v4[1] = sub_252F65A4C(&qword_27F57BEC8, &qword_27F57BED0, &qword_252F75198, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F57BE68);
  }

  return result;
}

unint64_t sub_252F72D38()
{
  result = qword_27F57BE78;
  if (!qword_27F57BE78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BE80, &qword_252F75170);
    v4[0] = sub_252F72DC4();
    v4[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F57BE78);
  }

  return result;
}

unint64_t sub_252F72DC4()
{
  result = qword_27F57BE88;
  if (!qword_27F57BE88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BE90, &qword_252F75178);
    v4[0] = sub_252F72E50();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F57BE88);
  }

  return result;
}

unint64_t sub_252F72E50()
{
  result = qword_27F57BE98;
  if (!qword_27F57BE98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BEA0, &qword_252F75180);
    v4[0] = sub_252F65A4C(&qword_27F57BEA8, &qword_27F57BEB0, &qword_252F75188, MEMORY[0x277CE1198]);
    v4[1] = sub_252F65A4C(&qword_27F57BEB8, &qword_27F57BEC0, &qword_252F75190, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F57BE98);
  }

  return result;
}

uint64_t sub_252F72F34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F73214();
  *a1 = result;
  return result;
}

uint64_t sub_252F72F8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_252F72FF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_252F73004(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}