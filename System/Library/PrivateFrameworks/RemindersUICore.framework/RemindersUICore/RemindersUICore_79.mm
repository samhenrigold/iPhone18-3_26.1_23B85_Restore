uint64_t sub_21D84D588(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_21DBFC64C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_21D84D5E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6569646572676E69;
  v4 = 0xEB0000000073746ELL;
  if (v2 != 1)
  {
    v3 = 0x6572436863746162;
    v4 = 0xEF44496E6F697461;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F6973726576;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6569646572676E69;
  v8 = 0xEB0000000073746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6572436863746162;
    v8 = 0xEF44496E6F697461;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E6F6973726576;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DBFC64C();
  }

  return v11 & 1;
}

uint64_t sub_21D84D714()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D84D7CC(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D84D870(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

unint64_t sub_21D84D924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21D84F634(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21D84D954(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB0000000073746ELL;
  v5 = 0x6569646572676E69;
  if (v2 != 1)
  {
    v5 = 0x6572436863746162;
    v4 = 0xEF44496E6F697461;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F6973726576;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21D84D9C8()
{
  v1 = 0x6569646572676E69;
  if (*v0 != 1)
  {
    v1 = 0x6572436863746162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

unint64_t sub_21D84DA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21D84F634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21D84DA60(uint64_t a1)
{
  v2 = sub_21D84E084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21D84DA9C(uint64_t a1)
{
  v2 = sub_21D84E084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRSERecipeCard.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v36 - v4;
  v5 = sub_21DBF56BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62A18, &qword_21DC2C358);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for TTRSERecipeCard(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v42 = v6;
  v19 = *(v6 + 56);
  v17 = v6 + 56;
  v18 = v19;
  v46 = v5;
  (v19)(&v14[v16], 1, 1, v5, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D84E084();
  v20 = v48;
  sub_21DBFC87C();
  if (v20)
  {
    goto LABEL_5;
  }

  v38 = v18;
  v39 = v17;
  v40 = v16;
  v48 = a1;
  v22 = v46;
  v21 = v47;
  v52 = 0;
  v24 = v44;
  v23 = v45;
  sub_21DBFC4CC();
  v37 = v10;
  *v14 = v25;
  if (v25 != 1.0)
  {
    sub_21D84E0D8();
    swift_allocError();
    swift_willThrow();
    (*(v24 + 8))(v37, v23);
    a1 = v48;
    v16 = v40;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_21D0CF7E0(&v14[v16], &qword_27CE58370, &unk_21DC091F0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62A30, &unk_21DC2C360);
  v51 = 1;
  sub_21D84E9FC(&qword_27CE62A38, sub_21D84E12C, MEMORY[0x277D83978]);
  v26 = v37;
  sub_21DBFC4EC();
  *(v14 + 1) = v49;
  v50 = 2;
  sub_21D84F680(&qword_27CE65160, MEMORY[0x277CC9618]);
  v28 = v21;
  sub_21DBFC49C();
  (*(v24 + 8))(v26, v23);
  v29 = v42;
  v30 = (*(v42 + 48))(v21, 1, v22);
  v31 = v48;
  if (v30 == 1)
  {
    v32 = v43;
    sub_21D0CF7E0(v28, &qword_27CE58370, &unk_21DC091F0);
  }

  else
  {
    v33 = *(v29 + 32);
    v34 = v41;
    v33(v41, v28, v22);
    v35 = v40;
    sub_21D0CF7E0(&v14[v40], &qword_27CE58370, &unk_21DC091F0);
    v33(&v14[v35], v34, v22);
    v38(&v14[v35], 0, 1, v22);
    v32 = v43;
  }

  sub_21D84E180(v14, v32);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return sub_21D84E1E4(v14);
}

uint64_t type metadata accessor for TTRSERecipeCard(uint64_t a1)
{
  result = qword_27CE62A68;
  if (!qword_27CE62A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D84E084()
{
  result = qword_27CE62A20;
  if (!qword_27CE62A20)
  {
    result = swift_getWitnessTable(byte_21DC2C778, &type metadata for TTRSERecipeCard.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE62A20);
  }

  return result;
}

unint64_t sub_21D84E0D8()
{
  result = qword_27CE62A28;
  if (!qword_27CE62A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSERecipeCardError, &type metadata for TTRSERecipeCardError, v0, v1);
    atomic_store(result, &qword_27CE62A28);
  }

  return result;
}

unint64_t sub_21D84E12C()
{
  result = qword_27CE62A40;
  if (!qword_27CE62A40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSERecipeCard.TTRSERecipeCardIngredient, &type metadata for TTRSERecipeCard.TTRSERecipeCardIngredient, v0, v1);
    atomic_store(result, &qword_27CE62A40);
  }

  return result;
}

uint64_t sub_21D84E180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSERecipeCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D84E1E4(uint64_t a1)
{
  v2 = type metadata accessor for TTRSERecipeCard(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRSERecipeCard.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_21DBFBEEC();
  MEMORY[0x223D42AA0](0xD000000000000014, 0x800000021DC6DE00);
  sub_21DBFAA2C();
  MEMORY[0x223D42AA0](0xD000000000000015, 0x800000021DC6DE20);
  v13[0] = *(*(v0 + 8) + 16);
  v4 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v4);

  MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC6DE40);
  v5 = type metadata accessor for TTRSERecipeCard(0);
  sub_21D55CB10(v0 + *(v5 + 24), v3);
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE58370, &unk_21DC091F0);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_21DBF565C();
    v9 = v10;
    (*(v7 + 8))(v3, v6);
  }

  v13[0] = v8;
  v13[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0, &qword_21DC09AF0);
  v11 = sub_21DBFA1AC();
  MEMORY[0x223D42AA0](v11);

  return v14;
}

uint64_t TTRSERecipeCard.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62A48, &qword_21DC2C370);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D84E084();
  sub_21DBFC88C();
  v12 = 0;
  sub_21DBFC53C();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62A30, &unk_21DC2C360);
    sub_21D84E9FC(&qword_27CE62A50, sub_21D84EA74, MEMORY[0x277D83948]);
    sub_21DBFC56C();
    type metadata accessor for TTRSERecipeCard(0);
    v10[14] = 2;
    sub_21DBF56BC();
    sub_21D84F680(&qword_27CE5B4B8, MEMORY[0x277CC95F8]);
    sub_21DBFC50C();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL _s15RemindersUICore15TTRSERecipeCardV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62AA8, &qword_21DC2C818);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 || (sub_21D1D7798(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for TTRSERecipeCard(0) + 24);
  v15 = *(v11 + 48);
  sub_21D55CB10(a1 + v14, v13);
  sub_21D55CB10(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE58370, &unk_21DC091F0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_21D55CB10(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_21D0CF7E0(v13, &qword_27CE62AA8, &qword_21DC2C818);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_21D84F680(&qword_280D1B848, MEMORY[0x277CC9610]);
  v18 = sub_21DBFA10C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_21D0CF7E0(v13, &qword_27CE58370, &unk_21DC091F0);
  return (v18 & 1) != 0;
}

uint64_t sub_21D84E9FC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62A30, &unk_21DC2C360);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D84EA74()
{
  result = qword_27CE62A58;
  if (!qword_27CE62A58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSERecipeCard.TTRSERecipeCardIngredient, &type metadata for TTRSERecipeCard.TTRSERecipeCardIngredient, v0, v1);
    atomic_store(result, &qword_27CE62A58);
  }

  return result;
}

unint64_t sub_21D84EACC()
{
  result = qword_27CE62A60;
  if (!qword_27CE62A60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSERecipeCardError, &type metadata for TTRSERecipeCardError, v0, v1);
    atomic_store(result, &qword_27CE62A60);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRSERecipeCard(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v7 = *(a3 + 24);
    v8 = sub_21DBF56BC();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    sub_21DBF8E0C();
    if (v10(&a2[v7], 1, v8))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
      memcpy(&v4[v7], &a2[v7], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], &a2[v7], v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }
  }

  return v4;
}

uint64_t destroy for TTRSERecipeCard(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_21DBF56BC();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

char *initializeWithCopy for TTRSERecipeCard(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 24);
  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  sub_21DBF8E0C();
  if (v9(&a2[v6], 1, v7))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  return a1;
}

char *assignWithCopy for TTRSERecipeCard(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_21DBF8E0C();

  v6 = *(a3 + 24);
  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
  return a1;
}

char *initializeWithTake for TTRSERecipeCard(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for TTRSERecipeCard(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 24);
  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
  return a1;
}

void sub_21D84F2F4(uint64_t a1)
{
  sub_21D84F39C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D84F39C(uint64_t a1)
{
  if (!qword_27CE5B590)
  {
    sub_21DBF56BC();
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE5B590);
    }
  }
}

unint64_t sub_21D84F428()
{
  result = qword_27CE62A78;
  if (!qword_27CE62A78)
  {
    result = swift_getWitnessTable(aI_8, &type metadata for TTRSERecipeCard.TTRSERecipeCardIngredient.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE62A78);
  }

  return result;
}

unint64_t sub_21D84F480()
{
  result = qword_27CE62A80;
  if (!qword_27CE62A80)
  {
    result = swift_getWitnessTable(aY_4, &type metadata for TTRSERecipeCard.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE62A80);
  }

  return result;
}

unint64_t sub_21D84F4D8()
{
  result = qword_27CE62A88;
  if (!qword_27CE62A88)
  {
    result = swift_getWitnessTable(byte_21DC2C688, &type metadata for TTRSERecipeCard.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE62A88);
  }

  return result;
}

unint64_t sub_21D84F530()
{
  result = qword_27CE62A90;
  if (!qword_27CE62A90)
  {
    result = swift_getWitnessTable(asc_21DC2C6B0, &type metadata for TTRSERecipeCard.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE62A90);
  }

  return result;
}

unint64_t sub_21D84F588()
{
  result = qword_27CE62A98;
  if (!qword_27CE62A98)
  {
    result = swift_getWitnessTable(asc_21DC2C598, &type metadata for TTRSERecipeCard.TTRSERecipeCardIngredient.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE62A98);
  }

  return result;
}

unint64_t sub_21D84F5E0()
{
  result = qword_27CE62AA0;
  if (!qword_27CE62AA0)
  {
    result = swift_getWitnessTable(byte_21DC2C5C0, &type metadata for TTRSERecipeCard.TTRSERecipeCardIngredient.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE62AA0);
  }

  return result;
}

unint64_t sub_21D84F634(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBFC45C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21D84F680(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_21DBF56BC();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D84F6C4(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (a1 == 3)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_15;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_21DBF516C();
}

id sub_21D84F9BC(char a1)
{
  v2 = sub_21DBF5A0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF5A2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF563C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  if (a1 == 3)
  {
    v29 = v15;
    type metadata accessor for TTRReminderEditor();
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    static TTRReminderEditor.tomorrowDueDate(now:)(v13, v17);
    v18 = v13;
    v19 = v29;
    v30 = *(v11 + 8);
    v30(v18, v29);
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    (*(v3 + 104))(v5, *MEMORY[0x277CC9968], v2);
    v20 = sub_21DBF5A1C();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    v31 = v20;
    v32 = sub_21DBFC5BC();
    v33 = v21;
    MEMORY[0x223D42AA0](0x61646E656C61632ELL, 0xE900000000000072);
    v22 = sub_21DBFA12C();

    v23 = objc_opt_self();
    v24 = [v23 _systemImageNamed_];

    if (!v24)
    {
      v25 = sub_21DBFA12C();
      v24 = [v23 _systemImageNamed_];
    }

    v30(v17, v19);
  }

  else
  {
    v26 = sub_21DBFA12C();
    v24 = [objc_opt_self() _systemImageNamed_];
  }

  return v24;
}

uint64_t sub_21D84FE54@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v73) = a1;
  v72 = a2;
  v2 = sub_21DBF5C4C();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - v9;
  v11 = sub_21DBF563C();
  v67 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  v17 = sub_21DBF509C();
  v70 = *(v17 - 8);
  v71 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - v24;
  v26 = type metadata accessor for TTRDateChangeType(0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v73;
  if (v73 <= 1u)
  {
    goto LABEL_7;
  }

  if (v73 == 2)
  {
    v66 = v27;
    v73 = v28;
    sub_21D8508D8(v19);
    sub_21DBFB39C();
    v4 = v70;
    v10 = v71;
LABEL_10:
    v4[2](v31, v19, v10);
    sub_21DBF4F6C();
    sub_21DBF4FDC();
    sub_21DBF4FFC();
    sub_21DBF4DFC();
    v37 = v19;
    goto LABEL_19;
  }

  v4 = v70;
  v10 = v71;
  if (v73 == 3)
  {
    v66 = v27;
    v73 = v28;
    sub_21D8508D8(v19);
    v33 = sub_21DBFB39C();
    v7 = (v33 + 24);
    if (!__OFADD__(v33, 24))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_7:
    v34 = v7;
    v62 = v25;
    v63 = v22;
    v64 = v13;
    v65 = v16;
    v36 = v68;
    v35 = v69;
    v61 = v11;
    v73 = v28;
    if (!v32)
    {
      goto LABEL_20;
    }

    v66 = v27;
    v41 = v65;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v42 = v10;
    v43 = v36;
    (*(v36 + 56))(v42, 1, 1, v35);
    v60 = sub_21DBF55BC();
    v44 = v34;
    sub_21D0D3954(v42, v34, &unk_27CE60DB0, qword_21DC0BF70);
    v45 = *(v36 + 48);
    if (v45(v34, 1, v35) == 1)
    {
      v46 = [objc_opt_self() defaultTimeZone];
      sub_21DBF5C2C();

      v47 = v45(v34, 1, v35);
      v48 = v4;
      v41 = v65;
      if (v47 != 1)
      {
        sub_21D0CF7E0(v44, &unk_27CE60DB0, qword_21DC0BF70);
      }
    }

    else
    {
      v48 = v4;
      (*(v36 + 32))(v4, v44, v35);
    }

    type metadata accessor for TTRReminderEditor();
    v49 = objc_opt_self();
    v50 = sub_21DBF5C0C();
    (*(v43 + 8))(v48, v35);
    v51 = v60;
    v52 = [v49 rem:v60 dateComponentsWithDate:v50 timeZone:0 isAllDay:?];

    v53 = v63;
    sub_21DBF4EFC();

    sub_21D0CF7E0(v42, &unk_27CE60DB0, qword_21DC0BF70);
    v54 = *(v67 + 8);
    v55 = v61;
    v54(v41, v61);
    v4 = v70;
    v10 = v71;
    v56 = v62;
    v70[4](v62, v53, v71);
    v57 = v64;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    sub_21D850520(v56, v31);
    v54(v57, v55);
    v37 = v56;
LABEL_19:
    (v4[1])(v37, v10);
    v27 = v66;
LABEL_20:
    v58 = v27;
    swift_storeEnumTagMultiPayload();
    v59 = v72;
    sub_21D1A9484(v31, v72);
    return (*(v73 + 56))(v59, 0, 1, v58);
  }

  v38 = *(v28 + 56);
  v39 = v72;

  return v38(v39, 1, 1, v29);
}

uint64_t sub_21D850520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v2 = sub_21DBF5A0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF583C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF5A2C();
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF563C();
  v20 = *(v13 - 8);
  v21 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF559C();
  (*(v7 + 104))(v9, *MEMORY[0x277CC9830], v6);
  sub_21DBF584C();
  (*(v7 + 8))(v9, v6);
  v16 = *(v3 + 104);
  v16(v5, *MEMORY[0x277CC9980], v2);
  sub_21DBF5A1C();
  v17 = *(v3 + 8);
  v17(v5, v2);
  v16(v5, *MEMORY[0x277CC99A0], v2);
  sub_21DBF5A1C();
  v17(v5, v2);
  v18 = sub_21DBF509C();
  (*(*(v18 - 8) + 16))(v24, v25, v18);
  sub_21DBF4F6C();
  sub_21DBF4FDC();
  sub_21DBF4FFC();
  sub_21DBF4DFC();
  (*(v22 + 8))(v12, v23);
  return (*(v20 + 8))(v15, v21);
}

uint64_t sub_21D8508D8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_21DBF5C4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = sub_21DBF563C();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  (*(v2 + 56))(v10, 1, 1, v1);
  v14 = sub_21DBF55BC();
  sub_21D0D3954(v10, v7, &unk_27CE60DB0, qword_21DC0BF70);
  v15 = *(v2 + 48);
  if (v15(v7, 1, v1) == 1)
  {
    v16 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v15(v7, 1, v1) != 1)
    {
      sub_21D0CF7E0(v7, &unk_27CE60DB0, qword_21DC0BF70);
    }
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
  }

  v17 = objc_opt_self();
  v18 = sub_21DBF5C0C();
  (*(v2 + 8))(v4, v1);
  v19 = [v17 rem:v14 dateComponentsWithDate:v18 timeZone:0 isAllDay:?];

  sub_21DBF4EFC();
  sub_21D0CF7E0(v10, &unk_27CE60DB0, qword_21DC0BF70);
  return (*(v22 + 8))(v13, v23);
}

uint64_t sub_21D850C34()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D850D24(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D850E00(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

unint64_t sub_21D850EEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21D851490(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21D850F1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE700000000000000;
  v6 = 0x746867696E6F74;
  v7 = 0xEF676E696E726F4DLL;
  v8 = 0x776F72726F6D6F74;
  if (v2 != 3)
  {
    v8 = 0x54646E4165746164;
    v7 = 0xEB00000000656D69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72756F487478656ELL;
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

uint64_t sub_21D850FD8(uint64_t a1)
{
  v2 = sub_21DBF5A0C();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5A2C();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  sub_21D0D3954(a1, v10, &qword_27CE58D68, &unk_21DC0C060);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(a1, &qword_27CE58D68, &unk_21DC0C060);
    sub_21D0CF7E0(v10, &qword_27CE58D68, &unk_21DC0C060);
    return 0;
  }

  else
  {
    v32 = a1;
    (*(v12 + 32))(v17, v10, v11);
    v19 = [objc_opt_self() currentCalendar];
    sub_21DBF596C();

    v21 = v33;
    v20 = v34;
    (*(v33 + 104))(v4, *MEMORY[0x277CC9980], v34);
    v22 = v7;
    v23 = sub_21DBF5A1C();
    (*(v21 + 8))(v4, v20);
    sub_21DBF560C();
    sub_21DBF558C();
    v25 = v24;
    v26 = *(v12 + 8);
    v26(v14, v11);
    if (v25 <= 0.0 || v25 > 3600.0)
    {
      v27 = v23;
      v28 = sub_21DBF590C();
      v29 = v32;
      if ((v28 & 1) != 0 && v27 == sub_21DBFB39C())
      {
        sub_21D0CF7E0(v29, &qword_27CE58D68, &unk_21DC0C060);
        (*(v35 + 8))(v22, v36);
        v26(v17, v11);
        return 3;
      }

      else
      {
        v30 = sub_21DBFB39C();
        sub_21D0CF7E0(v29, &qword_27CE58D68, &unk_21DC0C060);
        (*(v35 + 8))(v22, v36);
        v26(v17, v11);
        if (v27 == v30)
        {
          return 2;
        }

        else
        {
          return 4;
        }
      }
    }

    else
    {
      sub_21D0CF7E0(v32, &qword_27CE58D68, &unk_21DC0C060);
      (*(v35 + 8))(v22, v36);
      v26(v17, v11);
      return 1;
    }
  }
}

unint64_t sub_21D851490(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBFC45C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21D8514F0()
{
  result = qword_27CE62AB0;
  if (!qword_27CE62AB0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62AB8, "\\-\n");
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE62AB0);
  }

  return result;
}

unint64_t sub_21D851558()
{
  result = qword_27CE62AC0;
  if (!qword_27CE62AC0)
  {
    result = swift_getWitnessTable(byte_21DC2C900, &type metadata for TTRQuickRemindersListPostponeType, v0, v1);
    atomic_store(result, &qword_27CE62AC0);
  }

  return result;
}

void sub_21D8515AC(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
    if (!v2)
    {
      return;
    }

    v28 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v25 = sub_21DBFBD0C();
    v26 = v3;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v28 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  v4 = sub_21DBFBCCC();
  v5 = *(a1 + 36);
  v25 = v4;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v25;
    v9 = v26;
    v11 = v27;
    sub_21D3659E4(v25, v26, v27, a1);
    v13 = v12;
    sub_21DBFADFC();

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
    if (v23)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_21DBFBD2C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D8B8, &unk_21DC2CA00);
      v7 = sub_21DBFAAEC();
      sub_21DBFBDEC();
      v7(v24, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_21D15746C(v25, v26, v27);
        return;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = 1 << *(a1 + 32);
      if (v10 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v10 >> 6;
      v16 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v16 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_21D15746C(v10, v9, 0);
            v14 = __clz(__rbit64(v21)) + v18;
            goto LABEL_27;
          }
        }

        sub_21D15746C(v10, v9, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v9;
      v27 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t *TTRRemindersListDataModelSourceShowCompletedContext.__allocating_init(key:userDefaults:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_21D853A98(a1, v10, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v12;
}

uint64_t sub_21D8519C0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62AC8);
  v1 = __swift_project_value_buffer(v0, qword_27CE62AC8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListDataModelSourceShowCompletedContextType.setShowCompletedIfNeeded(forRevealing:pathSpecifier:subtaskDisplayStyle:persistingPreferencesIfPossible:)(void *a1, uint64_t a2, __int128 *a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 + 16);
  v16 = *a3;
  v17 = v9;
  result = sub_21D851C10(a1, a2, &v16, a5, a6);
  if (result != 2)
  {
    if (qword_27CE56D38 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_27CE62AC8);
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAEDC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = 1;
      _os_log_impl(&dword_21D0C9000, v12, v13, "ShowCompletedContext: overriding showCompleted for revealing reminders {to: %{BOOL}d}", v14, 8u);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    v15 = *(a6 + 32);

    return v15(1, a4 & 1, a5, a6);
  }

  return result;
}

uint64_t sub_21D851C10(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v48 = a1;
  v49[1] = *MEMORY[0x277D85DE8];
  v46 = sub_21DBF669C();
  v9 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v44 - v13;
  v14 = sub_21DBF66DC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a3;
  v19 = *(a3 + 16);
  v20 = (*(a5 + 8))(a4, a5, v16);
  if (v20 & 1) == 0 && ([v48 isCompleted])
  {
    return 1;
  }

  (*(v15 + 16))(v18, a2, v14);
  v22 = (*(v15 + 88))(v18, v14);
  if (v22 == *MEMORY[0x277D45170])
  {
    (*(v15 + 96))(v18, v14);
    v23 = v9;
    v25 = v46;
    v24 = v47;
    (*(v9 + 32))(v47, v18, v46);
    (*(v9 + 16))(v11, v24, v25);
    v26 = (*(v9 + 88))(v11, v25);
    if (v26 == *MEMORY[0x277D45160])
    {
      (*(v9 + 96))(v11, v25);
      if ((v19 & 1) != 0 || (v45) && (v20 & 1) == 0)
      {
        if (*v11)
        {
          v27 = [v48 subtaskContext];
          if (v27)
          {
            v28 = v27;
            v49[0] = 0;
            v29 = [v27 fetchSubtasksMasksWithError_];
            v30 = v49[0];
            if (v49[0])
            {
              swift_willThrow();
              v31 = qword_27CE56D38;
              v32 = v30;
              if (v31 != -1)
              {
                swift_once();
              }

              v33 = sub_21DBF84BC();
              __swift_project_value_buffer(v33, qword_27CE62AC8);
              v34 = v32;
              v35 = sub_21DBF84AC();
              v36 = sub_21DBFAEBC();

              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                v49[0] = v38;
                *v37 = 136315138;
                swift_getErrorValue();
                v39 = sub_21DBFC75C();
                v41 = v23;
                v42 = sub_21D0CDFB4(v39, v40, v49);

                *(v37 + 4) = v42;
                _os_log_impl(&dword_21D0C9000, v35, v36, "ShowCompletedContext: failed to fetch REMReminderSubtasksMasks {error: %s}", v37, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v38);
                MEMORY[0x223D46520](v38, -1, -1);
                MEMORY[0x223D46520](v37, -1, -1);

                (*(v41 + 8))(v47, v25);
              }

              else
              {

                (*(v23 + 8))(v47, v25);
              }
            }

            else
            {
              v43 = v29;
              (*(v9 + 8))(v24, v25);

              if ((v43 & 2) != 0)
              {
                return 1;
              }
            }

            return 2;
          }
        }
      }

      goto LABEL_19;
    }

    if (v26 == *MEMORY[0x277D45158])
    {
LABEL_19:
      (*(v9 + 8))(v24, v25);
      return 2;
    }
  }

  else
  {
    if (v22 == *MEMORY[0x277D45168])
    {
      (*(v15 + 8))(v18, v14);
      return 2;
    }

    sub_21DBFC63C();
    __break(1u);
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

void (*sub_21D852170(uint64_t a1))(uint64_t a1, __n128 a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return sub_21D85219C;
}

uint64_t sub_21D8521CC(uint64_t a1, __n128 a2)
{
  v4 = sub_21DBF71BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v2 + 40) == 1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D45468], v4, v6);
  }

  else
  {
    swift_beginAccess();
    *v8 = *(v2 + 48);
    (*(v5 + 104))(v8, *MEMORY[0x277D45480], v4);
    sub_21DBF8E0C();
  }

  sub_21D8515AC(a1);
  v10 = v9;
  swift_beginAccess();
  sub_21D3339B0(v10, v11);
  swift_endAccess();

  sub_21D852D48(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21D852368(__n128 a1)
{
  v2 = sub_21DBF71BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 40) == 1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D45468], v2, v4);
  }

  else
  {
    swift_beginAccess();
    *v6 = *(v1 + 48);
    (*(v3 + 104))(v6, *MEMORY[0x277D45480], v2);
    sub_21DBF8E0C();
  }

  swift_beginAccess();
  *(v1 + 48) = MEMORY[0x277D84FA0];

  sub_21D852D48(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21D8524E0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 64))(v5, v6);
  v8 = 1;
  if (v4 & 1) == 0 && (v7)
  {
    swift_beginAccess();
    v9 = *(v2 + 48);
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = *(v11 + 8);
    sub_21DBF8E0C();
    v13 = v12(v10, v11);
    v14 = sub_21DBFADFC();

    v8 = sub_21D1E21D0(v14, v9);
  }

  return v8 & 1;
}

double sub_21D8525D8@<D0>(void *a1@<X8>)
{
  if (*(v2 + 40) == 1)
  {
    v4 = *MEMORY[0x277D45468];
    v5 = sub_21DBF71BC();
    v6 = *(*(v5 - 8) + 104);

    v6(a1, v4, v5);
  }

  else
  {
    swift_beginAccess();
    *a1 = *(v2 + 48);
    v8 = *MEMORY[0x277D45480];
    v9 = sub_21DBF71BC();
    (*(*(v9 - 8) + 104))(a1, v8, v9);
    sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D8526E8(uint64_t *a1, __n128 a2)
{
  v4 = sub_21DBF71BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v11 = (&v23 - v9);
  v12 = MEMORY[0x277D45480];
  if (*(v2 + 40) == 1)
  {
    v13 = *(v5 + 104);
    v13(&v23 - v9, *MEMORY[0x277D45468], v4, v10);
  }

  else
  {
    swift_beginAccess();
    *v11 = *(v2 + 48);
    v13 = *(v5 + 104);
    (v13)(v11, *v12, v4);
    sub_21DBF8E0C();
  }

  v14 = *(v5 + 16);
  v14(v7, v11, v4);
  v15 = (*(v5 + 88))(v7, v4);
  if (v15 == *MEMORY[0x277D45478])
  {
    (*(v5 + 8))(v7, v4);
    v16 = *MEMORY[0x277D45470];
LABEL_13:
    (v13)(a1, v16, v4);
    if (MEMORY[0x277D84F90] >> 62 && sub_21DBFBD7C())
    {
      sub_21D1CE198(MEMORY[0x277D84F90]);
      v19 = v21;
    }

    else
    {
      v19 = MEMORY[0x277D84FA0];
    }

    goto LABEL_15;
  }

  if (v15 != *v12)
  {
    v16 = *MEMORY[0x277D45470];
    if (v15 != v16 && v15 != *MEMORY[0x277D45468])
    {
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }

    goto LABEL_13;
  }

  (*(v5 + 96))(v7, v4);
  v17 = *v7;
  v14(a1, v11, v4);
  sub_21D4F5F28(v17);
  v19 = v18;

LABEL_15:
  (*(v5 + 8))(v11, v4);
  return v19;
}

void (*sub_21D8529C8(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t *TTRRemindersListDataModelSourceShowCompletedContext.init(key:userDefaults:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_21D853A98(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v12;
}

uint64_t sub_21D852B54(uint64_t a1, void *a2, unsigned __int8 a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27CE56D38 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE62AC8);
    sub_21D157850(a2, a3);
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEAC();
    sub_21D157478(a2, a3);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      v21 = a2;
      *v11 = 136315138;
      v22 = a3;
      v13 = TTRUserDefaults.ShowCompletedType.key.getter();
      v15 = sub_21D0CDFB4(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21D0C9000, v9, v10, "ShowCompletedContext: handling user defaults change {key: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    v16 = a4[3];
    v17 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v16);
    v21 = a2;
    v22 = a3;
    v18.n128_f64[0] = (*(v17 + 8))(&v21, v16, v17);
    sub_21D8536C0(v19 & 1, 0, v18);
  }

  return result;
}

uint64_t sub_21D852D48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62AE0, &qword_21DC2C9F8);
  MEMORY[0x28223BE20](v3);
  v5 = &v69 - v4;
  v6 = sub_21DBF71BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = (&v69 - v11);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v69 - v13;
  v16 = MEMORY[0x277D45480];
  if (*(v1 + 40) == 1)
  {
    v17 = *MEMORY[0x277D45468];
    v74 = *(v7 + 104);
    v74(&v69 - v13, v17, v6, v14);
  }

  else
  {
    swift_beginAccess();
    *v15 = *(v1 + 48);
    v18 = *v16;
    v74 = *(v7 + 104);
    (v74)(v15, v18, v6);
    sub_21DBF8E0C();
  }

  sub_21D853F9C(&qword_280D0C7D8, MEMORY[0x277D45488], MEMORY[0x277D45490]);
  if (sub_21DBFA10C())
  {
    return (*(v7 + 8))(v15, v6);
  }

  v70 = v9;
  v72 = v1;
  v20 = *(v3 + 48);
  v21 = *(v7 + 16);
  v21(v5, a1, v6);
  v73 = v15;
  v21(&v5[v20], v15, v6);
  v22 = v5;
  v75 = v7;
  v23 = *(v7 + 88);
  v24 = v23(v5, v6);
  if (v24 == *v16 && v23(&v5[v20], v6) == v24)
  {
    v25 = v75;
    (*(v75 + 96))(v22 + v20, v6);
    v26 = *(v22 + v20);
    v27 = v26 & 0xC000000000000001;
    if ((v26 & 0xC000000000000001) != 0)
    {
      v28 = sub_21DBFBD7C();
    }

    else
    {
      v28 = *(v26 + 16);
    }

    v47 = v72;
    if (v28)
    {
      if (qword_27CE56D38 != -1)
      {
        swift_once();
      }

      v48 = sub_21DBF84BC();
      __swift_project_value_buffer(v48, qword_27CE62AC8);
      sub_21DBF8E0C();
      v49 = sub_21DBF84AC();
      v50 = sub_21DBFAEAC();
      if (os_log_type_enabled(v49, v50))
      {
        v71 = v22;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v77[0] = v52;
        *v51 = 134218242;
        if (v27)
        {
          v53 = sub_21DBFBD7C();
        }

        else
        {
          v53 = *(v26 + 16);
        }

        *(v51 + 4) = v53;

        *(v51 + 12) = 2080;
        sub_21DBF634C();
        sub_21D853F9C(&qword_27CE58AA0, MEMORY[0x277D44FB0], MEMORY[0x277D85378]);
        v62 = sub_21DBFAABC();
        v64 = sub_21D0CDFB4(v62, v63, v77);

        *(v51 + 14) = v64;
        _os_log_impl(&dword_21D0C9000, v49, v50, "ShowCompletedContext: allowlist inserted (total: %ld): %s", v51, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x223D46520](v52, -1, -1);
        MEMORY[0x223D46520](v51, -1, -1);

        v25 = v75;
        v27 = v26 & 0xC000000000000001;
        v22 = v71;
      }

      else
      {
      }
    }

    else
    {
      if (qword_27CE56D38 != -1)
      {
        swift_once();
      }

      v54 = sub_21DBF84BC();
      __swift_project_value_buffer(v54, qword_27CE62AC8);
      sub_21DBF8E0C();
      v55 = sub_21DBF84AC();
      v56 = sub_21DBFAEAC();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v77[0] = v76;
        *v57 = 136315138;
        sub_21DBF634C();
        sub_21D853F9C(&qword_27CE58AA0, MEMORY[0x277D44FB0], MEMORY[0x277D85378]);
        v58 = sub_21DBFAABC();
        v60 = sub_21D0CDFB4(v58, v59, v77);

        *(v57 + 4) = v60;
        v27 = v26 & 0xC000000000000001;
        _os_log_impl(&dword_21D0C9000, v55, v56, "ShowCompletedContext: allowlist cleared %s", v57, 0xCu);
        v61 = v76;
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x223D46520](v61, -1, -1);
        MEMORY[0x223D46520](v57, -1, -1);
      }

      v25 = v75;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v65 = *(v47 + 24);
      if (v27)
      {
        v66 = sub_21DBFBD7C();
      }

      else
      {
        v66 = *(v26 + 16);
      }

      ObjectType = swift_getObjectType();
      (*(v65 + 16))(v66 == 0, ObjectType, v65);
      swift_unknownObjectRelease();
      v25 = v75;
    }

    else
    {
    }

    v68 = *(v25 + 8);
    v68(v73, v6);
    return (v68)(v22, v6);
  }

  else
  {
    v71 = v5;
    if (qword_27CE56D38 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_27CE62AC8);
    v30 = v76;
    v21(v76, a1, v6);
    v31 = sub_21DBF84AC();
    v32 = sub_21DBFAEAC();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v75;
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v77[0] = v36;
      *v35 = 136315138;
      v37 = v70;
      (v74)(v70, *MEMORY[0x277D45468], v6);
      v38 = MEMORY[0x223D3F960](v30, v37);
      v39 = *(v34 + 8);
      v39(v37, v6);
      v40 = (v38 & 1) == 0;
      if (v38)
      {
        v41 = 1702195828;
      }

      else
      {
        v41 = 0x65736C6166;
      }

      if (v40)
      {
        v42 = 0xE500000000000000;
      }

      else
      {
        v42 = 0xE400000000000000;
      }

      v39(v30, v6);
      v43 = sub_21D0CDFB4(v41, v42, v77);

      *(v35 + 4) = v43;
      _os_log_impl(&dword_21D0C9000, v31, v32, "ShowCompletedContext: showCompleted changed {isOn: %s}", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x223D46520](v36, -1, -1);
      MEMORY[0x223D46520](v35, -1, -1);
    }

    else
    {

      v39 = *(v34 + 8);
      v39(v30, v6);
    }

    v44 = v72;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = *(v44 + 24);
      v46 = swift_getObjectType();
      (*(v45 + 8))(v46, v45);
      swift_unknownObjectRelease();
    }

    v39(v73, v6);
    return sub_21D853F34(v71);
  }
}

void sub_21D8536C0(char a1, char a2, __n128 a3)
{
  v6 = sub_21DBF71BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 32);
  if (v10 && *(v3 + 40) != (a1 & 1))
  {
    v25 = v3;
    v11 = qword_27CE56D38;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE62AC8);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAEDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = a1 & 1;
      _os_log_impl(&dword_21D0C9000, v13, v14, "ShowCompletedContext: showCompleted changed {newValue: %{BOOL}d}", v15, 8u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    v16 = v25;
    if (*(v25 + 40) == 1)
    {
      (*(v7 + 104))(v9, *MEMORY[0x277D45468], v6);
    }

    else
    {
      swift_beginAccess();
      *v9 = *(v16 + 48);
      (*(v7 + 104))(v9, *MEMORY[0x277D45480], v6);
      sub_21DBF8E0C();
    }

    *(v16 + 40) = a1 & 1;
    if ((a1 & 1) == 0)
    {
      swift_beginAccess();
      *(v16 + 48) = MEMORY[0x277D84FA0];
    }

    if ((a2 & 1) == 0)
    {
      goto LABEL_18;
    }

    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAEAC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = a1 & 1;
      _os_log_impl(&dword_21D0C9000, v17, v18, "ShowCompletedContext: setting user defaults {newValue: %{BOOL}d}", v19, 8u);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    v20 = *(v10 + 88);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      *(v10 + 88) = v22;
      v26 = a1 & 1;
      (*(v10 + 48))(&v26);
      v23 = *(v10 + 88);
      v21 = __OFSUB__(v23, 1);
      v24 = v23 - 1;
      if (!v21)
      {
        *(v10 + 88) = v24;
LABEL_18:
        sub_21D852D48(v9);

        (*(v7 + 8))(v9, v6);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t TTRRemindersListDataModelSourceShowCompletedContext.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRRemindersListDataModelSourceShowCompletedContext.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t *sub_21D853A98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v17[3] = a4;
  v17[4] = a5;
  v10 = v9;
  __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a4 - 8) + 32))();
  v11 = *a1;
  v12 = *(a1 + 8);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[6] = MEMORY[0x277D84FA0];
  if (v12 == 255)
  {
    *(a3 + 40) = 0;
    a3[4] = 0;
  }

  else
  {
    *&v16[0] = v11;
    BYTE8(v16[0]) = v12;
    *(a3 + 40) = (*(a5 + 8))(v16, a4, a5) & 1;
    *&v16[0] = v11;
    BYTE8(v16[0]) = v12;
    a3[4] = (*(a5 + 16))(v16, a4, a5);
    v13 = swift_allocObject();
    swift_weakInit();
    sub_21D0D32E4(v17, v16);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    *(v14 + 32) = v12;
    sub_21D0D0FD0(v16, v14 + 40);
    *(v14 + 80) = v10;

    sub_21D1952F4(v11, v12);
    sub_21D0D0CE4(sub_21D1952E0, v14);

    sub_21D195308(v11, v12);
  }

  __swift_destroy_boxed_opaque_existential_0(v17);
  return a3;
}

uint64_t sub_21D853F34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62AE0, &qword_21DC2C9F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D853F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D854008(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = (result + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate);
    swift_beginAccess();
    v4 = v3[3];
    if (v4)
    {
      v5 = __swift_project_boxed_opaque_existential_1(v3, v4);
      v6 = *v5;
      v7 = *v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 64))(v6, a1 & 1, ObjectType, v8);
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D8540F8()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_21D85416C(char **a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRIReminderCellQuickBarFlagInteractor();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for TTRIReminderCellQuickBarFlagRouter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[3] = v6;
  v21[4] = &off_282ED66B0;
  v21[0] = v7;
  type metadata accessor for TTRIReminderCellQuickBarFlagPresenter();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v21, v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  *(v8 + 96) = v6;
  *(v8 + 104) = &off_282ED66B0;
  *(v8 + 72) = v14;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 48) = 2;
  *(v8 + 56) = v5;
  *(v8 + 64) = &off_282ED6670;

  __swift_destroy_boxed_opaque_existential_0(v21);
  v15 = type metadata accessor for TTRIReminderCellQuickBarFlagViewController();
  v16 = objc_allocWithZone(v15);

  v18 = sub_21D8543B4(v17, v16);
  *(v5 + 24) = &off_282ED6698;
  swift_unknownObjectWeakAssign();
  *(v8 + 24) = &off_282ED66B8;
  swift_unknownObjectWeakAssign();
  *(v8 + 40) = a3;
  swift_unknownObjectWeakAssign();
  a1[3] = v15;
  a1[4] = &off_282ED66D8;

  *a1 = v18;
  return v8;
}

char *sub_21D8543B4(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_21DBFB7EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBFB95C();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  a2[OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_isFlagged] = 0;
  v14 = &a2[OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_presenter];
  *v14 = a1;
  v14[1] = &off_282ED66A0;
  sub_21DBFB8EC();
  v15 = [objc_opt_self() quaternarySystemFillColor];
  v16 = sub_21DBFB79C();
  sub_21DBF883C();
  v16(v36, 0);
  (*(v5 + 104))(v7, *MEMORY[0x277D74FD8], v4);
  sub_21DBFB7FC();
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v17 = sub_21D900614(7);
  v18 = [objc_opt_self() configurationWithFont:v17 scale:2];

  sub_21DBFB78C();
  sub_21D854798();
  v20 = v33;
  v19 = v34;
  (*(v33 + 16))(v10, v13, v34);
  *&a2[OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_button] = sub_21DBFB96C();
  v35.receiver = a2;
  v35.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v35, sel_init);
  v22 = OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_button;
  v23 = *&v21[OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_button];
  v24 = v21;
  [v23 addTarget:v24 action:sel_buttonAction_ forControlEvents:0x2000];
  LODWORD(v25) = 1148846080;
  [*&v21[v22] setContentCompressionResistancePriority:0 forAxis:v25];
  v26 = *&v21[v22];
  v27 = qword_280D166D0;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBFA12C();
  [v28 setAccessibilityHint_];

  sub_21D854808();
  (*(v20 + 8))(v13, v19);
  return v24;
}

unint64_t sub_21D854798()
{
  result = qword_280D0C1C0;
  if (!qword_280D0C1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C1C0);
  }

  return result;
}

uint64_t sub_21D854808()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_21DBFB95C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_button;
  v13 = *(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_button);
  sub_21DBFB97C();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21D0CF7E0(v7, &unk_27CE5F2F0, qword_21DC0FEA0);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_isFlagged) == 1)
  {
    v15 = sub_21DBFA12C();
    v16 = [objc_opt_self() systemImageNamed_];

    sub_21DBFB8FC();
    v17 = [objc_opt_self() systemOrangeColor];
    sub_21DBFB89C();
    v18 = qword_27CE57468;
    v19 = *(v1 + v12);
    if (v18 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v20 = sub_21DBFA12C();
  v21 = [objc_opt_self() systemImageNamed_];

  sub_21DBFB8FC();
  v22 = [objc_opt_self() secondaryLabelColor];
  sub_21DBFB89C();
  v23 = qword_280D16710;
  v19 = *(v1 + v12);
  if (v23 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
  v24 = sub_21DBFA12C();
  [v19 setAccessibilityLabel_];

  v25 = *(v1 + v12);
  (*(v9 + 16))(v4, v11, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v26 = v25;
  sub_21DBFB98C();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21D854D2C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62B00);
  v1 = __swift_project_value_buffer(v0, qword_27CE62B00);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D854E44(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D854EB0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRShowScheduledDataModelSource.__allocating_init(store:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, char a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_dataViewMonitor) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_store) = a1;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_countCompleted) = a2;
  v9 = qword_280D1AA10;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v12 = swift_allocObject();
  v13 = sub_21D193548(1, 2, v11, v12);
  *(v8 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_showCompletedContextInstance) = v13;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 18) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_tipKitContextInstance) = v14;
  v15 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v16 = sub_21DBF70DC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8 + v15, a3, v16);
  *(v8 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v8 + 16) = a4 & 1;
  swift_beginAccess();
  v13[3] = &protocol witness table for TTRShowScheduledDataModelSource;
  swift_unknownObjectWeakAssign();
  v19 = 10;

  sub_21D8558C0(&v19);

  (*(v17 + 8))(a3, v16);
  return v8;
}

uint64_t TTRShowScheduledDataModelSource.init(store:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, char a2, uint64_t a3, char a4)
{
  *(v4 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_dataViewMonitor) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_store) = a1;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_countCompleted) = a2;
  v9 = qword_280D1AA10;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v12 = swift_allocObject();
  v13 = sub_21D193548(1, 2, v11, v12);
  *(v4 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_showCompletedContextInstance) = v13;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 18) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_tipKitContextInstance) = v14;
  v15 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v16 = sub_21DBF70DC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v4 + v15, a3, v16);
  *(v4 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v4 + 16) = a4 & 1;
  swift_beginAccess();
  v13[3] = &protocol witness table for TTRShowScheduledDataModelSource;
  swift_unknownObjectWeakAssign();
  v19 = 10;

  sub_21D8558C0(&v19);

  (*(v17 + 8))(a3, v16);
  return v4;
}

id sub_21D8553FC@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_store);
  v3 = type metadata accessor for TTRTipKitDataModelSourceBase();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = &protocol witness table for TTRTipKitDataModelSourceBase;
  *a1 = v4;

  return v6;
}

uint64_t sub_21D855474@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF71BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v33 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_showCompletedContextInstance);
  if (*(v15 + 40))
  {
    v16 = *MEMORY[0x277D45468];
    v17 = *(v6 + 104);
    v17(v10, v16, v5, v12);
    v18 = v14;
    v19 = v16;
  }

  else
  {
    swift_beginAccess();
    *v10 = *(v15 + 48);
    v17 = *(v6 + 104);
    (v17)(v10, *MEMORY[0x277D45480], v5);
    v34 = v1;
    v35 = v2;
    v20 = v3;
    v21 = *(v6 + 8);
    sub_21DBF8E0C();
    v21(v10, v5);
    v3 = v20;
    v1 = v34;
    v2 = v35;
    v19 = *MEMORY[0x277D45470];
    v18 = v14;
  }

  (v17)(v18, v19, v5);
  v22 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_store);
  v23 = v36;
  (*(v6 + 16))(v36, v14, v5);
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v25 = v1 + v24;
  v26 = v38;
  (*(v3 + 16))(v38, v25, v2);
  v27 = type metadata accessor for TTRShowScheduledPrintingDataModelSource(0);
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  (*(v6 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_showCompleted, v23, v5);
  (*(v3 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_sortingStyle, v26, v2);
  v29 = v37;
  v37[3] = v27;
  v29[4] = &protocol witness table for TTRShowScheduledPrintingDataModelSource;
  *v29 = v28;
  v30 = *(v6 + 8);
  v31 = v22;
  return v30(v14, v5);
}

uint64_t TTRShowScheduledPrintingDataModelSource.__allocating_init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21D8558C0(unsigned __int8 *a1)
{
  v2 = v1;
  v59 = sub_21DBF70DC();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_21DBF71BC();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8, &unk_21DC15DF0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E0, &qword_21DC15E08);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v55 - v15;
  v68 = sub_21DBF6E4C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v69 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a1;
  v18 = OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v66 = v18;
  if (*(v2 + v18))
  {
    v19 = v2 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      v70[0] = v65;
      (*(*(v20 + 8) + 16))(v70, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  sub_21DBF6E2C();
  v22 = *(v2 + v66);
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = *(*v22 + 104);
  swift_beginAccess();
  sub_21D0D3954(v22 + v23, v16, &qword_27CE5C2E0, &qword_21DC15E08);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    sub_21D0CF7E0(v16, &qword_27CE5C2E0, &qword_21DC15E08);
LABEL_7:
    v24 = 0;
    goto LABEL_9;
  }

  v24 = *&v16[*(v8 + 48)];
  (*(v67 + 8))(v16, v68);
LABEL_9:
  v58 = v8;
  v25 = *(v8 + 48);
  v26 = *(v67 + 16);
  v55[1] = v67 + 16;
  v55[0] = v26;
  v26(v13, v69, v68);
  v63 = v13;
  *&v13[v25] = v24;
  v27 = v2 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v56 = v24;
  if (!Strong)
  {
    v39 = v24;
    v36 = v61;
    v37 = v60;
    v38 = v57;
    goto LABEL_13;
  }

  v29 = *(v27 + 8);
  v30 = swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v24;
  v33 = *(v31 + 8);
  v34 = v32;
  v64 = v33(v30, v31);
  LOBYTE(v30) = v35;
  swift_unknownObjectRelease();
  v36 = v61;
  v37 = v60;
  v38 = v57;
  if (v30)
  {
LABEL_13:
    v64 = 30;
  }

  v40 = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_store);
  v41 = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_showCompletedContextInstance);
  if (*(v41 + 40) == 1)
  {
    (*(v37 + 104))(v38, *MEMORY[0x277D45468], v36);
  }

  else
  {
    swift_beginAccess();
    *v38 = *(v41 + 48);
    (*(v37 + 104))(v38, *MEMORY[0x277D45480], v36);
    sub_21DBF8E0C();
  }

  v42 = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_countCompleted);
  v43 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v44 = v6;
  v45 = v6;
  v46 = v59;
  (*(v4 + 16))(v45, v2 + v43, v59);
  type metadata accessor for TTRShowScheduledMonitorableDataView(0);
  v47 = swift_allocObject();
  *(v47 + 16) = v40;
  (*(v37 + 32))(v47 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_showCompleted, v38, v36);
  *(v47 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_countCompleted) = v42;
  (*(v4 + 32))(v47 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_sortingStyle, v44, v46);
  *(v47 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_remindersToPrefetchCount) = v64;
  v48 = *(v58 + 48);
  v49 = v62;
  v50 = v63;
  v51 = v68;
  (v55[0])(v62, v63, v68);
  *(v49 + v48) = v56;
  v52 = v66;
  swift_beginAccess();
  v53 = v40;
  sub_21D4FEB8C((v2 + v52), v49, v47, v2, v65);
  sub_21D0CF7E0(v49, &qword_27CE5C2C8, &unk_21DC15DF0);
  swift_endAccess();

  sub_21D0CF7E0(v50, &qword_27CE5C2C8, &unk_21DC15DF0);
  return (*(v67 + 8))(v69, v51);
}

uint64_t TTRShowScheduledMonitorableDataView.__allocating_init(store:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v10 + v11, a2, v12);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_countCompleted) = a3;
  v13 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v10 + v13, a4, v14);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_remindersToPrefetchCount) = a5;
  return v10;
}

uint64_t sub_21D8561D8()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate);
}

uint64_t TTRShowScheduledDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowScheduledDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;

  sub_21D157444(v0 + v3);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowScheduledDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = v1;
  sub_21D8558C0(&v2);
}

uint64_t sub_21D8564B4(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sub_21D8558C0(&v3);
}

uint64_t TTRShowScheduledDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowScheduledDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8, &unk_21DC15DF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  v15 = sub_21DBF6E4C();
  v16 = *(v15 - 8);
  v17 = a2;
  v18 = v14;
  (*(v16 + 16))(v14, v17, v15);
  *&v14[*(v9 + 48)] = a3;
  v19 = OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v60 = v4;
  v20 = *(v4 + v19);
  if (!v20)
  {
    v29 = a3;
    return sub_21D0CF7E0(v18, &qword_27CE5C2C8, &unk_21DC15DF0);
  }

  v21 = a3;
  if (v20 != a1)
  {
    return sub_21D0CF7E0(v18, &qword_27CE5C2C8, &unk_21DC15DF0);
  }

  v59 = v18;
  v22 = v21;
  v23 = sub_21DBF6E3C();
  sub_21D4F5F28(v23);
  v25 = v24;

  v58 = a4;
  if (a3)
  {
    v26 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v27 = v60;
    swift_beginAccess();
    if (*(v27 + v26))
    {
      v28 = v22;

      sub_21D4F9F64(v28, v25);
    }

    else
    {
      v57 = *(v27 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v30 = v22;
      v31 = sub_21DBFB12C();
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      v33 = sub_21D87E81C(v57, sub_21D1947D8, v32, v30, v31);
      *(v27 + v26) = v33;

      swift_beginAccess();
      v33[3] = &protocol witness table for TTRShowScheduledDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    a4 = v58;
  }

  else
  {
  }

  v18 = v59;
  sub_21D0D3954(v59, v11, &qword_27CE5C2C8, &unk_21DC15DF0);

  v34 = sub_21DBF6DEC();
  (*(v16 + 8))(v11, v15);
  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_12;
    }

LABEL_30:

    v45 = v60;
LABEL_31:
    v52 = v45 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v52 + 8);
      ObjectType = swift_getObjectType();
      (*(v53 + 16))(v18, a4, ObjectType, v53);
      swift_unknownObjectRelease();
    }

    return sub_21D0CF7E0(v18, &qword_27CE5C2C8, &unk_21DC15DF0);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_30;
  }

  v35 = sub_21DBFBD7C();
  if (!v35)
  {

    v37 = MEMORY[0x277D84F90];
LABEL_21:
    a4 = v58;
    v18 = v59;
    v45 = v60;
    if (*(v37 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
      v46 = sub_21DBFC40C();
    }

    else
    {
      v46 = MEMORY[0x277D84F98];
    }

    v61[0] = v46;
    v47 = sub_21DBF8E0C();
    sub_21D1931C0(v47, 1, v61);

    v48 = v61[0];
    v49 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v45 + v49))
    {

      sub_21D188810(v48);
      v51 = v50;

      TTRBatchFetchManager<A>.override(objects:)(v51);

      v45 = v60;
    }

    else
    {
    }

    goto LABEL_31;
  }

LABEL_12:
  v61[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v61[0];
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x223D44740](v36, v34);
      }

      else
      {
        v38 = *(v34 + 8 * v36 + 32);
      }

      v39 = v38;
      v40 = [v38 objectID];
      v61[0] = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      if (v42 >= v41 >> 1)
      {
        v44 = v40;
        sub_21D18E6B8((v41 > 1), v42 + 1, 1);
        v40 = v44;
        v37 = v61[0];
      }

      ++v36;
      *(v37 + 16) = v42 + 1;
      v43 = v37 + 16 * v42;
      *(v43 + 32) = v40;
      *(v43 + 40) = v39;
    }

    while (v35 != v36);

    goto LABEL_21;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D856B54()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D856BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8, &unk_21DC15DF0) + 48));

  return TTRShowScheduledDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowScheduledDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(objectIDs._rawValue, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void TTRShowScheduledDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56D40 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62B00);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x656C756465686373, 0xE900000000000064, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowScheduledDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D856EBC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowScheduledPrintingDataModelSource.init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(v4 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v4 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v4 + v9, a3, v10);
  return v4;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowScheduledPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v103 = retstr;
  v120 = sub_21DBF563C();
  v101 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v89 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_21DBF6E1C();
  v121 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF6E4C();
  v99 = *(v3 - 8);
  v100 = v3;
  MEMORY[0x28223BE20](v3);
  v98 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5A2C();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF582C();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v89 - v10;
  v11 = sub_21DBF746C();
  v122 = *(v11 - 8);
  *&v123 = v11;
  MEMORY[0x28223BE20](v11);
  v116 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2D8, &qword_21DC15E00);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v14 = &v89 - v13;
  v15 = sub_21DBF714C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF734C();
  v114 = *(v19 - 8);
  v115 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF71BC();
  v111 = *(v22 - 8);
  v112 = v22;
  MEMORY[0x28223BE20](v22);
  v113 = (&v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_21DBF70DC();
  v105 = *(v24 - 8);
  v106 = v24;
  MEMORY[0x28223BE20](v24);
  v107 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21DBF738C();
  v108 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v110 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56D40 != -1)
  {
    swift_once();
  }

  v28 = sub_21DBF84BC();
  __swift_project_value_buffer(v28, qword_27CE62B00);
  v29 = sub_21DBF84AC();
  v30 = sub_21DBFAEDC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v90 = v21;
    v32 = v18;
    v33 = v16;
    v34 = v15;
    v35 = v26;
    v36 = v14;
    v37 = v31;
    *v31 = 0;
    _os_log_impl(&dword_21D0C9000, v29, v30, "PrintingDataModelSource: fetch Scheduled tree", v31, 2u);
    v38 = v37;
    v14 = v36;
    v26 = v35;
    v15 = v34;
    v16 = v33;
    v18 = v32;
    v21 = v90;
    MEMORY[0x223D46520](v38, -1, -1);
  }

  v109 = v26;

  v39 = OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_showCompleted;
  v40 = v124;
  (*(v105 + 16))(v107, v124 + OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_sortingStyle, v106);
  (*(v111 + 16))(v113, v40 + v39, v112);
  (*(v114 + 104))(v21, *MEMORY[0x277D45500], v115);
  (*(v16 + 104))(v18, *MEMORY[0x277D45460], v15);
  v41 = v110;
  sub_21DBF737C();
  v43 = v122;
  v42 = v123;
  v44 = v116;
  (*(v122 + 104))(v116, *MEMORY[0x277D45530], v123);
  v45 = v142;
  sub_21DBF749C();
  if (v45)
  {
    (*(v43 + 8))(v44, v42);
    (*(v108 + 8))(v41, v109);
  }

  else
  {
    v106 = 0;
    (*(v43 + 8))(v44, v42);
    v46 = v101;
    v47 = v92;
    (*(v101 + 56))(v92, 1, 1, v120);
    v48 = v91;
    sub_21DBF57AC();
    v49 = v95;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    type metadata accessor for TTRShowScheduledSectionHeaderTitleFormatter(0);
    v50 = swift_allocObject();
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
    (*(v93 + 32))(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale, v48, v94);
    (*(v96 + 32))(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar, v49, v97);
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = 0;
    v116 = v50;
    sub_21D46CA8C(v47, v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
    v51 = v98;
    v107 = v14;
    sub_21DBF76DC();
    v52 = sub_21DBF6E3C();
    (*(v99 + 8))(v51, v100);
    v53 = *(v52 + 16);
    v54 = v109;
    if (v53)
    {
      v141 = MEMORY[0x277D84F90];
      sub_21D18E6F8(0, v53, 0);
      v142 = v141;
      v114 = *(v121 + 16);
      v115 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates;
      v55 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v105 = v52;
      v56 = v52 + v55;
      v57 = *(v121 + 72);
      v113 = (v46 + 8);
      v121 += 16;
      v111 = v57;
      v112 = (v121 - 8);
      v124 = v53 - 1;
      while (1)
      {
        v59 = v117;
        v58 = v118;
        v122 = v56;
        v60 = (v114)(v117);
        v61 = v119;
        MEMORY[0x223D3F5B0](v60);
        TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v61, v116[v115], &v125);
        v123 = v125;
        v62 = v126;
        v63 = v127;
        v64 = v128;
        (*v113)(v61, v120);
        *(v133 + 5) = v125;
        BYTE7(v133[0]) = BYTE2(v125);
        v129 = v123;
        *&v130 = v62;
        *(&v130 + 1) = v63;
        v131 = v64;
        v132 = 0uLL;
        LODWORD(v133[0]) = 64;
        BYTE4(v133[0]) = 3;
        *(v133 + 8) = 0u;
        *(&v133[1] + 8) = 0u;
        *(&v133[2] + 8) = 0u;
        WORD4(v133[3]) = 255;
        nullsub_1();
        v65 = sub_21DBF6E0C();
        (*v112)(v59, v58);
        v136 = v131;
        v137 = v132;
        *(v140 + 10) = *(&v133[2] + 10);
        v139 = v133[1];
        v140[0] = v133[2];
        v138 = v133[0];
        v134 = v129;
        v135 = v130;
        v66 = v142;
        v141 = v142;
        v68 = v142[2];
        v67 = v142[3];
        if (v68 >= v67 >> 1)
        {
          sub_21D18E6F8((v67 > 1), v68 + 1, 1);
          v66 = v141;
        }

        v66[2] = v68 + 1;
        v69 = &v66[17 * v68];
        v70 = v134;
        v71 = v135;
        v72 = v137;
        *(v69 + 4) = v136;
        *(v69 + 5) = v72;
        *(v69 + 2) = v70;
        *(v69 + 3) = v71;
        v73 = v138;
        v74 = v139;
        v75 = v140[1];
        *(v69 + 8) = v140[0];
        *(v69 + 9) = v75;
        *(v69 + 6) = v73;
        *(v69 + 7) = v74;
        v69[20] = v65;
        if (!v124)
        {
          break;
        }

        v142 = v66;
        --v124;
        v56 = v122 + v111;
      }

      v76 = v107;
      v54 = v109;
      v41 = v110;
    }

    else
    {

      v66 = MEMORY[0x277D84F90];
      v76 = v107;
    }

    v77 = *MEMORY[0x277D44BA8];
    v78 = REMSmartListType.title.getter(*MEMORY[0x277D44BA8]);
    if (v79)
    {
      v80 = v78;
    }

    else
    {
      v80 = 0;
    }

    if (v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0xE000000000000000;
    }

    v82 = REMSmartListType.color.getter(v77);
    if (v82)
    {
      v83 = v82;

      (*(v102 + 8))(v76, v104);
      (*(v108 + 8))(v41, v54);
    }

    else
    {
      v124 = v80;
      v142 = v66;
      if (qword_280D1BAC0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v84 = xmmword_280D1BAC8;
      v85 = xmmword_280D1BAD8;
      v87 = *(&xmmword_280D1BAE8 + 1);
      v86 = xmmword_280D1BAE8;
      LODWORD(v122) = byte_280D1BAF8;
      v134 = xmmword_280D1BAC8;
      v135 = xmmword_280D1BAD8;
      *&v123 = *(&xmmword_280D1BAD8 + 1);
      v136 = xmmword_280D1BAE8;
      LOBYTE(v137) = byte_280D1BAF8;
      sub_21D0FB960(xmmword_280D1BAC8, *(&xmmword_280D1BAC8 + 1), xmmword_280D1BAD8, *(&xmmword_280D1BAD8 + 1), xmmword_280D1BAE8, *(&xmmword_280D1BAE8 + 1), byte_280D1BAF8);
      v83 = TTRListColors.Color.nativeColor.getter();

      (*(v102 + 8))(v107, v104);
      (*(v108 + 8))(v110, v54);
      sub_21D1078C0(v84, *(&v84 + 1), v85, v123, v86, v87, v122);
      v66 = v142;
      v80 = v124;
    }

    v88 = v103;
    v103->listName._countAndFlagsBits = v80;
    v88->listName._object = v81;
    v88->listColor.super.isa = v83;
    v88->count.value = 0;
    v88->count.is_nil = 1;
    v88->sections._rawValue = v66;
    v88->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
  }
}

uint64_t TTRShowScheduledMonitorableDataView.init(store:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  *(v6 + 16) = a1;
  v11 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v6 + v11, a2, v12);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_countCompleted) = a3;
  v13 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v6 + v13, a4, v14);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_remindersToPrefetchCount) = a5;
  return v6;
}

char *TTRShowScheduledMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v75) = a4;
  v56 = a1;
  v57 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2D0, &qword_21DC2CD00);
  MEMORY[0x28223BE20](v53);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - v8;
  v9 = sub_21DBF746C();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2D8, &qword_21DC15E00);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v72 = &v50 - v11;
  v12 = sub_21DBF714C();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  v64 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF71BC();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x28223BE20](v14);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21DBF70DC();
  v16 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF738C();
  v67 = *(v19 - 8);
  v68 = v19;
  MEMORY[0x28223BE20](v19);
  v73 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_21DBF734C();
  v21 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v50 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E0, &qword_21DC15E08);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v50 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0, &qword_21DC19620);
  sub_21DBFC83C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8, &unk_21DC15DF0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    sub_21D0CF7E0(v29, &qword_27CE5C2E0, &qword_21DC15E08);
    if (v75)
    {
      v58 = *(v5 + 16);
LABEL_6:
      v75 = 0;
      v33 = MEMORY[0x277D45508];
      goto LABEL_10;
    }

    v31 = 0;
    goto LABEL_8;
  }

  v31 = *&v29[*(v30 + 48)];
  v32 = sub_21DBF6E4C();
  (*(*(v32 - 8) + 8))(v29, v32);
  if ((v75 & 1) == 0)
  {
LABEL_8:
    v58 = [*(v5 + 16) nonUserInteractiveStore];
    goto LABEL_9;
  }

  v58 = *(v5 + 16);
  if (!v31)
  {
    goto LABEL_6;
  }

LABEL_9:
  v75 = v31;
  v33 = MEMORY[0x277D454F8];
LABEL_10:
  *v26 = *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_remindersToPrefetchCount);
  v34 = v74;
  (*(v21 + 104))(v26, *v33, v74);
  (*(v16 + 16))(v18, v5 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_sortingStyle, v59);
  (*(v61 + 16))(v60, v5 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_showCompleted, v62);
  v35 = v34;
  (*(v21 + 16))(v23, v26, v34);
  (*(v65 + 104))(v64, *MEMORY[0x277D45460], v66);
  v36 = v73;
  sub_21DBF737C();
  v37 = v63;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v39 = v69;
  v38 = v70;
  (*(v69 + 104))(v37, *MEMORY[0x277D45528], v70);
  v40 = v71;
  v41 = v72;
  v66 = v26;
  v42 = v58;
  sub_21DBF749C();
  if (v40)
  {

    (*(v39 + 8))(v37, v38);
    (*(v67 + 8))(v36, v68);
    (*(v21 + 8))(v66, v35);
  }

  else
  {
    (*(v39 + 8))(v37, v38);
    v43 = v53;
    v44 = *(v53 + 48);
    v45 = v55;
    v46 = v52;
    sub_21DBF76DC();
    *(v45 + v44) = sub_21DBF76BC();
    v47 = v54;
    sub_21D0D3954(v45, v54, &qword_27CE5C2D0, &qword_21DC2CD00);
    v37 = *(v47 + *(v43 + 48));
    v48 = sub_21DBF6E4C();
    (*(*(v48 - 8) + 32))(v56, v47, v48);
    sub_21DBF76CC();

    sub_21D0CF7E0(v45, &qword_27CE5C2D0, &qword_21DC2CD00);
    (*(v51 + 8))(v41, v46);
    (*(v67 + 8))(v73, v68);
    (*(v21 + 8))(v66, v74);
  }

  return v37;
}

uint64_t sub_21D858820(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_21DBF71BC();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *a2;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  return v2;
}

uint64_t sub_21D8588E4(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_21DBF71BC();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *a2;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8589D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowScheduledMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8, &unk_21DC15DF0);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21D858A4C(uint64_t a1)
{
  v35 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0, &qword_21DC19620);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E0, &qword_21DC15E08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v37 = sub_21DBF6E4C();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v36 = v1;
  v17 = *(v1 + v16);
  if (v17)
  {
    v33 = v3;
    v34 = v2;
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_21D0D3954(v17 + v18, v7, &qword_27CE5C2C0, &qword_21DC19620);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C2C0, &qword_21DC19620);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8, &unk_21DC15DF0);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5C2E0, &qword_21DC15E08);
    }

    else
    {

      v20 = *(v39 + 32);
      v21 = v37;
      v20(v12, v10, v37);
      v20(v15, v12, v21);
      v40[0] = v35;
      swift_getKeyPath(aH_3);
      swift_getKeyPath(asc_21DC2CF18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D5DE94C();
      sub_21D183A0C();
      v22 = sub_21DBFA46C();

      v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v24 = v36;
      swift_beginAccess();
      if (*(v24 + v23))
      {

        TTRBatchFetchManager<A>.override(objects:)(v22);
      }

      sub_21D183AA0(v22);
      v26 = v25;

      sub_21D19ED38(v26);

      v27 = v33;
      v28 = v38;
      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }
      }

      sub_21DBF767C();
      v29 = v24 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 8);
        ObjectType = swift_getObjectType();
        (*(v30 + 16))(v15, v28, ObjectType, v30);
        swift_unknownObjectRelease();
      }

      (*(v27 + 8))(v28, v34);
      (*(v39 + 8))(v15, v21);
    }
  }
}

void sub_21D858FEC(void *a1)
{
  if (qword_27CE56D40 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62B00);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x656C756465686373, 0xE900000000000064, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowScheduledDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D8593DC(uint64_t a1, __n128 a2)
{
  result = sub_21DBF71BC();
  if (v3 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v4 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TTRIQuickBarTabBarItem.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D8595A0()
{
  result = qword_280D17060;
  if (!qword_280D17060)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIQuickBarTabBarItem, &type metadata for TTRIQuickBarTabBarItem, v0, v1);
    atomic_store(result, &qword_280D17060);
  }

  return result;
}

unint64_t sub_21D8595F8()
{
  result = qword_27CE62BA0;
  if (!qword_27CE62BA0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62BA8, &qword_21DC2CF98);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE62BA0);
  }

  return result;
}

uint64_t TTRTimeZoneProvider.timeZoneDescription(for:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF5C4C();
  result = (*(*(v6 - 8) + 16))(v5, a1, v6);
  if (*(v1 + 16))
  {

    sub_21DBF6B4C();

    return sub_21D8598E8(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams(uint64_t a1)
{
  result = qword_27CE62BC8;
  if (!qword_27CE62BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8598E8(uint64_t a1)
{
  v2 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRTimeZoneProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_21D0CE468();
  sub_21DBFB12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E708, &qword_21DC2D070);
  swift_allocObject();
  *(v0 + 16) = sub_21DBF6B5C();
  return v0;
}

uint64_t sub_21D8599FC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62BB0);
  v1 = __swift_project_value_buffer(v0, qword_27CE62BB0);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTimeZoneProvider.init()()
{
  *(v0 + 16) = 0;
  sub_21D0CE468();
  sub_21DBFB12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E708, &qword_21DC2D070);
  swift_allocObject();
  *(v0 + 16) = sub_21DBF6B5C();

  return v0;
}

uint64_t sub_21D859B78(uint64_t a1)
{
  v2 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_21DBFA89C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21D85A8AC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_21D85A910(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_21D3BF9AC(0, 0, v7, &unk_21DC2D1A8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62BE8, &qword_21DC2D1B0);
  return sub_21DBF81EC();
}

uint64_t sub_21D859D34(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_21D859DCC;

  return TimeZone.defaultCityName()();
}

uint64_t sub_21D859DCC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = sub_21D859F24;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v7 = sub_21D859F00;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21D859F00()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  *v2 = *(v0 + 80);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_21D859F24()
{
  v17 = v0;
  if (qword_27CE56D48 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62BB0);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRTimeZoneProvider: failed to fetch time zone city name {error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[6];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = v0[1];

  return v14();
}

uint64_t sub_21D85A0F4@<X0>(uint64_t a1@<X8>)
{
  sub_21D85A858();
  result = swift_allocError();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D85A13C()
{
  sub_21DBFC7DC();
  sub_21DBF5C4C();
  sub_21D85A810(&qword_27CE58378, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_21DBFA00C();
  return sub_21DBFC82C();
}

uint64_t sub_21D85A1C4(uint64_t a1)
{
  sub_21DBF5C4C();
  sub_21D85A810(&qword_27CE58378, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);

  return sub_21DBFA00C();
}

uint64_t sub_21D85A248(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBF5C4C();
  sub_21D85A810(&qword_27CE58378, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_21DBFA00C();
  return sub_21DBFC82C();
}

uint64_t sub_21D85A2CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DBF5BCC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TTRTimeZoneProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D85A350(uint64_t a1)
{
  v3 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = sub_21DBF5C4C();
  result = (*(*(v7 - 8) + 16))(v5, a1, v7);
  if (*(v6 + 16))
  {

    sub_21DBF6B4C();

    return sub_21D8598E8(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D85A498(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_21D85A504(uint64_t a1)
{
  v2 = sub_21DBF5C4C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_21D85A568(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D85A5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D85A630(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D85A694(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D85A720(uint64_t a1)
{
  result = sub_21DBF5C4C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D85A810(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21D85A858()
{
  result = qword_27CE62BE0;
  if (!qword_27CE62BE0)
  {
    result = swift_getWitnessTable(aI_9, &type metadata for TTRTimeZoneProvider.InternalError, v0, v1);
    atomic_store(result, &qword_27CE62BE0);
  }

  return result;
}

uint64_t sub_21D85A8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D85A910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D85A974(uint64_t a1)
{
  type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D1B795C;

  return sub_21D859D34(a1);
}

unint64_t sub_21D85AA78()
{
  result = qword_27CE62BF0;
  if (!qword_27CE62BF0)
  {
    result = swift_getWitnessTable(byte_21DC2D208, &type metadata for TTRTimeZoneProvider.InternalError, v0, v1);
    atomic_store(result, &qword_27CE62BF0);
  }

  return result;
}

uint64_t sub_21D85AACC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62BF8);
  v1 = __swift_project_value_buffer(v0, qword_27CE62BF8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTREditSectionsInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_21D0E6A9C(a1, a2);

  return swift_unknownObjectRelease();
}

void (*TTREditSectionsInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

double TTREditSectionsInteractor.lastFetchedSections.getter()
{
  sub_21D25A450();

  sub_21DBF8E0C();
  return result;
}

double TTREditSectionsInteractor.currentSectionOrdering.getter()
{
  sub_21D85C320();

  sub_21DBF8E0C();
  return result;
}

double TTREditSectionsInteractor.currentSectionOrdering.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t TTREditSectionsInteractor.changeItem.getter()
{
  sub_21D85C354();
}

uint64_t TTREditSectionsInteractor.changeItem.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

char *TTREditSectionsInteractor.__allocating_init(editSectionsEditor:store:undoManager:committer:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  swift_allocObject();
  v10 = sub_21D85C388(a1, a2, a3, a4);

  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v10;
}

char *TTREditSectionsInteractor.init(editSectionsEditor:store:undoManager:committer:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *v4;
  v9 = sub_21D85C388(a1, a2, a3, a4);

  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

Swift::Void __swiftcall TTREditSectionsInteractor.start()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v23 - v5;
  v8 = *(v7 + 88);
  (*(v9 + 16))(&v23 - v5, v1 + *(v7 + 128), v3, v4);
  v10 = qword_280D1AA10;
  v12 = *(v1 + *(*v1 + 136));
  if (v10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for TTREditSectionsMonitorableDataView(0, v3, v8, v11);
  v14 = qword_280D1AA18;
  v29 = type metadata accessor for TTRUserDefaults();
  v30 = &protocol witness table for TTRUserDefaults;
  *&v27 = v14;
  v15 = swift_allocObject();
  TTREditSectionsMonitorableDataView.init(editSectionsEditor:store:userDefaults:)(v6, v12, &v27);
  type metadata accessor for TTRDataViewMonitor(0, v13, &protocol witness table for TTREditSectionsMonitorableDataView<A>, v16);
  v25 = v15;
  v26 = MEMORY[0x277D84F90];
  sub_21D0CE468();
  v17 = v14;

  v18 = sub_21DBFB12C();
  sub_21DBF60DC();
  v19 = sub_21DBF60BC();
  v20 = sub_21DBF60AC();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTREditSectionsInteractor<A>, v2);
  sub_21D719640(&v27);
  v23 = v27;
  v24 = v28;
  v22 = sub_21DB74D48(&v26, &v25, v1, v18, v19, v20, &v23, v2, WitnessTable);

  *(v1 + *(*v1 + 160)) = v22;

  TTRDataViewMonitor.resume(userInteractive:)(1);
}

uint64_t TTREditSectionsMonitorableDataView.__allocating_init(editSectionsEditor:store:userDefaults:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  TTREditSectionsMonitorableDataView.init(editSectionsEditor:store:userDefaults:)(a1, a2, a3);
  return v6;
}

void TTREditSectionsInteractor.rename(_:to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCastUnknownClass();
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    v11 = v3[6];
    swift_beginAccess();
    v12 = *(v11 + 32);
    v17 = a1;

    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 32) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_21D210A84(0, *(v12 + 2) + 1, 1, v12);
      *(v11 + 32) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_21D210A84((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[16 * v15];
    *(v16 + 4) = a2;
    *(v16 + 5) = a3;
    *(v11 + 32) = v12;
    swift_endAccess();

    (*(v7 + 32))(v10, v8, v7);
  }
}

Swift::Void __swiftcall TTREditSectionsInteractor.setSectionOrdering(_:initialOrderedSectionIDs:)(Swift::OpaquePointer _, Swift::OpaquePointer_optional initialOrderedSectionIDs)
{
  rawValue = initialOrderedSectionIDs.value._rawValue;
  swift_beginAccess();
  v5 = *(v2 + 48);
  swift_beginAccess();
  v5[5]._rawValue = _._rawValue;

  sub_21DBF8E0C();

  v6 = *(v2 + 48);
  swift_beginAccess();
  *(v6 + 48) = rawValue;

  sub_21DBF8E0C();
}

Swift::Void __swiftcall TTREditSectionsInteractor.toggleHideEmptySections(isOn:)(Swift::Bool isOn)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  swift_beginAccess();
  *(v3 + 56) = isOn;
}

Swift::Void __swiftcall TTREditSectionsInteractor.editSectionsDidCommit()()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v1 = objc_opt_self();
  v2 = sub_21DBFA12C();

  v3 = swift_allocObject();
  *(v3 + 16) = sub_21D85C610;
  *(v3 + 24) = v0;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_98;
  v4 = _Block_copy(aBlock);

  [v1 withActionName:v2 block:{v4, 0x800000021DC507C0}];

  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

double sub_21D85B7EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v28 - v6;
  swift_beginAccess();
  v8 = *(v1 + 6);
  swift_beginAccess();
  v9 = *(v8 + 56);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v10 = *(*(v2 + 6) + 24);
  v11 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(v10) & 1;

  v28 = v3;
  if (v9 != v11)
  {
    v12 = *(*v2 + 128);
    v13 = *(v3 + 88);
    v14 = *(v13 + 40);

    v14(v15, v4, v13);

    v16 = *(v2 + 6);
    swift_beginAccess();
    if (!*(v16 + 40))
    {
      goto LABEL_11;
    }

    (*(v5 + 16))(v7, &v2[v12], v4);
    swift_beginAccess();
    v17 = *(v16 + 48);
    goto LABEL_10;
  }

  v18 = *(v2 + 6);
  swift_beginAccess();
  v19 = *(v18 + 40);
  if (!v19)
  {
    goto LABEL_11;
  }

  if (!(v19 >> 62))
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (sub_21DBFBD7C())
  {
LABEL_9:
    (*(v5 + 16))(v7, &v2[*(*v2 + 128)], v4);
    v20 = *(v2 + 6);
    swift_beginAccess();
    v17 = *(v20 + 48);
    v13 = *(v28 + 88);
LABEL_10:
    v21 = *(v13 + 56);
    sub_21DBF8E0C();
    v22 = sub_21DBF8E0C();
    v21(v22, v17, v4, v13);

    (*(v5 + 8))(v7, v4);
  }

LABEL_11:
  v23 = *(v2 + 6);
  swift_beginAccess();
  if (*(*(v23 + 32) + 16))
  {
    v25 = *(v28 + 88);
    v26 = *(v25 + 48);
    v27 = sub_21DBF8E0C();
    v26(v27, v4, v25);
  }

  return result;
}

uint64_t *TTREditSectionsInteractor.deinit()
{
  v1 = *v0;
  sub_21D157444((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 152)));

  return v0;
}

uint64_t sub_21D85BD54(uint64_t a1, uint64_t a2)
{
  sub_21D0E6A9C(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_21D85BD90(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTREditSectionsInteractor.delegate.modify(v2);
  return sub_21D4C3D30;
}

uint64_t sub_21D85BE04()
{
  sub_21D85C354();
}

void (*sub_21D85BE5C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTREditSectionsInteractor.changeItem.modify(v2);
  return sub_21D4C30A8;
}

double sub_21D85BED0()
{
  sub_21D25A450();

  sub_21DBF8E0C();
  return result;
}

double sub_21D85BF04()
{
  sub_21D85C320();

  sub_21DBF8E0C();
  return result;
}

void (*sub_21D85BF5C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTREditSectionsInteractor.currentSectionOrdering.modify(v2);
  return sub_21D4C3D30;
}

uint64_t TTREditSectionsMonitorableDataView.init(editSectionsEditor:store:userDefaults:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  *(v3 + *(*v3 + 104)) = a2;
  sub_21D0D0FD0(a3, v3 + *(*v3 + 112));
  return v3;
}

uint64_t TTREditSectionsMonitorableDataView.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 112)));
  return v0;
}

uint64_t sub_21D85C294(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_21D85C2F0(uint64_t *a1, __n128 a2)
{
  result = sub_21D85C954(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_21D85C388(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = *v5;
  *(v5 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  *&v5[*(*v5 + 160)] = 0;
  v11 = MEMORY[0x277D84F90];
  *&v5[*(*v5 + 168)] = MEMORY[0x277D84F90];
  v12 = *(v10 + 80);
  (*(*(v12 - 8) + 16))(&v5[*(*v5 + 128)], a1, v12);
  *&v5[*(*v5 + 136)] = a2;
  *&v5[*(*v5 + 144)] = a3;
  sub_21D0D32E4(a4, &v5[*(*v5 + 152)]);
  v13 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v14 = a2;
  v15 = a3;
  v16 = [v13 initWithStore_];
  v17 = (*(*(v10 + 88) + 16))(v12);
  type metadata accessor for TTREditSectionsChangeItem();
  v18 = swift_allocObject();
  *(v18 + 32) = v11;
  *(v18 + 40) = v11;
  *(v18 + 48) = v11;
  *(v18 + 56) = 1;
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = qword_280D1AA10;
  v20 = v16;
  v21 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v22 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(v21);

  __swift_destroy_boxed_opaque_existential_0(a4);
  swift_beginAccess();
  *(v18 + 56) = v22 & 1;
  *(v5 + 6) = v18;
  return v5;
}

double sub_21D85C614(uint64_t a1)
{
  v2 = v1;
  if (qword_27CE56D50 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62BF8);
  sub_21DBF8E0C();
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&dword_21D0C9000, v5, v6, "TTREditSectionsMonitorableDataView: did fetch data {count: %ld}", v7, 0xCu);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  *(v2 + 32) = a1;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    sub_21DBF8E0C();
    v10(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21DBF8E0C();
  }

  return result;
}

void sub_21D85C7BC(void *a1)
{
  if (qword_27CE56D50 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62BF8);
  v3 = a1;
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTREditSectionsMonitorableDataView: did hit error {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D85C954(__n128 a1)
{
  v2 = *v1;
  v3 = sub_21DBF714C();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF734C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v18 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF71BC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_21DBF70DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF738C();
  v19 = *(v21 - 8);
  v11 = MEMORY[0x28223BE20](v21);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D45418], v7, v11);
  v14 = *(v2 + 88);
  v15 = *(v2 + 80);
  (*(v14 + 24))(v15, v14);
  (*(v20 + 104))(v18, *MEMORY[0x277D45500], v22);
  (*(v24 + 104))(v23, *MEMORY[0x277D45458], v25);
  sub_21DBF737C();
  v16 = (*(v14 + 64))(v13, v15, v14);
  (*(v19 + 8))(v13, v21);
  return v16;
}

uint64_t sub_21D85CE88(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D85D038(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return a1;
}

id static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 64;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return a1;
}

Swift::Void __swiftcall UIViewController.endFirstResponderEditing()()
{
  v1 = [v0 viewIfLoaded];
  if (v1)
  {
    v2 = v1;
    v3 = UIView.firstResponderDescendant.getter();

    if (v3)
    {
      [v3 resignFirstResponder];
    }
  }
}

BOOL UIViewController.isIPadIdiom.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return v2 == 1;
}

void static TTRIPopoverAnchor.trailingPortion(in:permittedArrowDirections:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v8 = a1;
    [v8 bounds];
    y = v20.origin.y;
    height = v20.size.height;
    v11 = CGRectGetMaxX(v20) + -40.0;
    v12 = [v8 effectiveUserInterfaceLayoutDirection];
    [v8 bounds];
    Width = CGRectGetWidth(v21);
    if (!v12)
    {
LABEL_5:
      *a4 = a1;
      *(a4 + 8) = v11;
      *(a4 + 16) = y;
      *(a4 + 24) = 0x4044000000000000;
      *(a4 + 32) = height;
      *(a4 + 40) = 0;
      *(a4 + 48) = a2;
      *(a4 + 56) = a3 & 1;
      return;
    }

    if (v12 == 1)
    {
      v14 = Width;
      v22.origin.x = v11;
      v22.origin.y = y;
      v22.size.width = 40.0;
      v22.size.height = height;
      v15 = v14 - CGRectGetMinX(v22);
      v23.origin.x = v11;
      v23.origin.y = y;
      v23.size.width = 40.0;
      v23.size.height = height;
      v11 = v15 - CGRectGetWidth(v23);
      goto LABEL_5;
    }

    if (qword_27CE56F38 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE64930);
    v17 = MEMORY[0x277D84F90];
    v18 = sub_21D17716C(MEMORY[0x277D84F90]);
    v19 = sub_21D17716C(v17);
    sub_21DAEAB00("unknown language direction", 26, 2, v18, v19);
    __break(1u);
  }

  else
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 40) = xmmword_21DC0A830;
    *(a4 + 56) = 0;
  }
}

id UIViewController.canPresentDCIDrillinPopover(withAnchor:)(uint64_t a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    result = [v1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = [result window];

    if (v7)
    {
      v8 = [v7 traitCollection];

      v9 = [v8 horizontalSizeClass];
      if (v9 == 1)
      {
        return 0;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];

  return UIViewController.canPresentPopover(withAnchor:requiredFeatureFlags:requiredExternalFeatureFlags:)(a1, v10, v11);
}

uint64_t TTRIPopoverAnchor.withPermittedArrowDirectionsIfNil(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v12 + 9) = *(v2 + 41);
  v3 = v2[1];
  v10 = *v2;
  v11 = v3;
  v12[0] = v2[2];
  if (BYTE8(v12[1]) != 1)
  {
    v7 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v7;
    *(a2 + 32) = v2[2];
    *(a2 + 41) = *(v2 + 41);
    return sub_21D50B9A4(&v10, &v9);
  }

  v4 = v11;
  v5 = *&v12[0];
  v6 = BYTE8(v12[0]);
  if (BYTE8(v12[0]) >> 6)
  {
    *a2 = v10;
    *(a2 + 16) = v4;
    *(a2 + 32) = v5;
  }

  else
  {
    *a2 = v10;
    *(a2 + 16) = v4;
    *(a2 + 32) = v5;
    if ((v6 & 1) == 0)
    {
      *(a2 + 40) = 0;
      goto LABEL_5;
    }

    v6 = 1;
  }

  *(a2 + 40) = v6;
LABEL_5:
  *(a2 + 48) = a1;
  *(a2 + 56) = 0;
  return sub_21D50B9A4(&v10, &v9);
}

void UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v2 setModalPresentationStyle_];
  v11 = [v2 popoverPresentationController];
  if (v11)
  {
    v12 = v11;
    if (v10)
    {
      v13 = 15;
    }

    else
    {
      v13 = v9;
    }

    [v11 setPermittedArrowDirections_];
    if (v8 <= 0x3F)
    {
      v14 = *&v4;
    }

    else
    {
      v14 = 0.0;
    }

    if (v8 <= 0x3F)
    {
      v15 = *&v5;
    }

    else
    {
      v15 = 0.0;
    }

    if (v8 <= 0x3F)
    {
      v16 = *&v6;
    }

    else
    {
      v16 = 0.0;
    }

    if (v8 <= 0x3F)
    {
      v17 = *&v7;
    }

    else
    {
      v17 = 0.0;
    }

    if (v8 <= 0x3F)
    {
      v18 = v8;
    }

    else
    {
      v18 = 1;
    }

    if (v8 <= 0x3F)
    {
      v19 = 0;
    }

    else
    {
      v19 = v3;
    }

    if (v8 <= 0x3F)
    {
      v20 = v3;
    }

    else
    {
      v20 = 0;
    }

    sub_21D50BA00(v3, v4, v5, v6, v7, v8);
    sub_21D50BA00(v3, v4, v5, v6, v7, v8);
    [v12 setSourceView_];
    if (v18)
    {
      v14 = *MEMORY[0x277CBF398];
      v15 = *(MEMORY[0x277CBF398] + 8);
      v16 = *(MEMORY[0x277CBF398] + 16);
      v17 = *(MEMORY[0x277CBF398] + 24);
    }

    [v12 setSourceRect_];
    [v12 setSourceItem_];

    swift_unknownObjectRelease();

    sub_21D50B440(v3, v4, v5, v6, v7, v8);
  }
}

uint64_t UIViewController.present<A>(alert:actions:didPresent:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 128) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 72) = sub_21DBFA84C();
  *(v8 + 80) = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  *(v8 + 88) = v10;
  *(v8 + 96) = v9;

  return MEMORY[0x2822009F8](sub_21D85D86C, v10, v9);
}

uint64_t sub_21D85D86C(uint64_t a1)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v12 = *(v1 + 24);
  v13 = *(v1 + 56);
  v5 = sub_21DBFA83C();
  *(v1 + 104) = v5;
  v6 = swift_task_alloc();
  *(v1 + 112) = v6;
  *(v6 + 16) = v13;
  *(v6 + 32) = vextq_s8(v12, v12, 8uLL);
  *(v6 + 48) = v2;
  *(v6 + 56) = v4;
  *(v6 + 64) = v3;
  v7 = swift_task_alloc();
  *(v1 + 120) = v7;
  *v7 = v1;
  v7[1] = sub_21D85D9A4;
  v8 = *(v1 + 56);
  v9 = *(v1 + 16);
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v9, v5, v10, 0xD00000000000002BLL, 0x800000021DC60680, sub_21D86216C, v6, v8);
}

uint64_t sub_21D85D9A4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D390144, v3, v2);
}

uint64_t UIViewController.dismissAndWait(animated:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  *(v2 + 24) = sub_21DBFA84C();
  *(v2 + 32) = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x2822009F8](sub_21D85DBA4, v4, v3);
}

uint64_t sub_21D85DBA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 80);
  v4 = sub_21DBFA83C();
  *(v1 + 56) = v4;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *v6 = v1;
  v6[1] = sub_21D85DCB8;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v4, v7, 0xD000000000000019, 0x800000021DC60530, sub_21D57B12C, v5, v8);
}

uint64_t sub_21D85DCB8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21D454AAC, v3, v2);
}

uint64_t TTRIValueBasedAlertAction.init(title:style:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for TTRIValueBasedAlertAction(0, a5, a3, a4);
  v10 = *(*(a5 - 8) + 32);
  v11 = a6 + *(v9 + 32);

  return v10(v11, a4, a5);
}

uint64_t UIViewController.deselectRowsAlongsideTransition(for:animated:)(void *a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_21D861EC8(v6, v3, v2, v4, v5);
}

uint64_t sub_21D85DEF4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F400);
  v1 = __swift_project_value_buffer(v0, qword_280D0F400);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL UIViewController.canPresentPopover(withAnchor:requiredFeatureFlags:requiredExternalFeatureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v6 = sub_21DBF601C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF604C();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*(a1 + 40) & 0xFELL) == 0)
  {
    return 0;
  }

  v15 = [v3 traitCollection];
  v16 = [v15 userInterfaceIdiom];

  if (v16 != 1)
  {
    return 0;
  }

  v28 = v6;
  v29 = a3;
  v17 = 0;
  v18 = *(v30 + 16);
  while (v18 != v17)
  {
    (*(v11 + 16))(v14, v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17++, v10);
    v19 = sub_21DBF603C();
    (*(v11 + 8))(v14, v10);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = 0;
  v24 = v28;
  v23 = v29;
  v25 = *(v29 + 16);
  do
  {
    v20 = v25 == v22;
    if (v25 == v22)
    {
      break;
    }

    (*(v7 + 16))(v9, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22++, v24);
    v26 = sub_21DBF600C();
    (*(v7 + 8))(v9, v24);
  }

  while ((v26 & 1) != 0);
  return v20;
}

void sub_21D85E24C(void *a1, void *a2, uint64_t a3, char a4)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    sub_21D0D32E4(a3, v10);
    v7 = swift_allocObject();
    sub_21D0D0FD0(v10, v7 + 16);
    *(v7 + 56) = a4 & 1;
    aBlock[4] = sub_21D863530;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D83EFE8;
    aBlock[3] = &block_descriptor_19_2;
    v8 = _Block_copy(aBlock);

    [a2 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
  }
}

uint64_t sub_21D85E358(void *a1, void *a2, char a3)
{
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    return (*(v7 + 8))(a3 & 1, v6, v7);
  }

  return result;
}

id UIViewController.effectiveNavigationBar.getter()
{
  v1 = [v0 navigationController];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      do
      {
        v4 = v3;

        v3 = [v4 navigationController];
        v2 = v4;
      }

      while (v3);
    }

    else
    {
      v4 = v2;
    }

    v2 = [v4 navigationBar];
  }

  return v2;
}

uint64_t UIPopoverPresentationController.setPopoverAnchorSource(_:)(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (v7 <= 0x3F)
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 1;
  }

  if (v7 <= 0x3F)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  if (v7 <= 0x3F)
  {
    v14 = *a1;
  }

  else
  {
    v14 = 0;
  }

  if (v7 <= 0xFD)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0.0;
  }

  if (v7 <= 0xFD)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0.0;
  }

  if (v7 <= 0xFD)
  {
    v17 = v10;
  }

  else
  {
    v17 = 0.0;
  }

  if (v7 <= 0xFD)
  {
    v18 = v11;
  }

  else
  {
    v18 = 0.0;
  }

  if (v7 <= 0xFD)
  {
    v19 = v12;
  }

  else
  {
    v19 = 1;
  }

  if (v7 <= 0xFD)
  {
    v20 = v13;
  }

  else
  {
    v20 = 0;
  }

  if (v7 <= 0xFD)
  {
    v21 = v14;
  }

  else
  {
    v21 = 0;
  }

  sub_21D862198(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v7);
  [v6 setSourceView_];
  if (v19)
  {
    v15 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
    v17 = *(MEMORY[0x277CBF398] + 16);
    v18 = *(MEMORY[0x277CBF398] + 24);
  }

  [v6 setSourceRect_];
  [v6 setSourceItem_];

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(UIScrollView *_, Swift::Bool animated, Swift::Bool wantsDispatchAsync)
{
  v4 = v3;
  LODWORD(v56) = animated;
  v7 = sub_21DBF9D2C();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D5C();
  v54 = *(v10 - 8);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 navigationController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 navigationController];
    if (v16)
    {
      do
      {
        v17 = v16;

        v16 = [v17 navigationController];
        v15 = v17;
      }

      while (v16);
    }

    else
    {
      v17 = v15;
    }

    v18 = [v17 navigationBar];

    if (v18)
    {
      v19 = [v18 _restingHeights];
      if (v19)
      {
        v20 = v19;
        sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
        v21 = sub_21DBFA5EC();

        if (v21 >> 62)
        {
          if (sub_21DBFBD7C())
          {
LABEL_10:
            if ((v21 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x223D44740](0, v21);
            }

            else
            {
              if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_34;
              }

              v22 = *(v21 + 32);
            }

            v23 = v22;
            [v22 ttr_CGFloatValue];

            v53 = v18;
            [v53 frame];
            CGRectGetMinY(v59);
            UIRoundToViewScale();
            v25 = v24;
            [(UIScrollView *)_ contentOffset];
            v28 = v27;
            if (v27 >= -v25)
            {

LABEL_20:
              v49 = v53;
LABEL_29:

              return;
            }

            v29 = v26;
            v30 = [v4 view];
            if (v30)
            {
              v31 = v30;

              [v31 bounds];
              v33 = v32;
              v35 = v34;

              [v53 sizeThatFits:v33, v35];
              [v53 frame];
              v37 = v36;
              v39 = v38;
              v41 = v40;
              v43 = v42;

              v60.origin.x = v37;
              v60.origin.y = v39;
              v60.size.width = v41;
              v60.size.height = v43;
              CGRectGetMinY(v60);
              UIRoundToViewScale();
              if (v28 > -v44)
              {
                if (wantsDispatchAsync)
                {
                  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
                  v45 = sub_21DBFB12C();
                  v46 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v47 = swift_allocObject();
                  *(v47 + 16) = v46;
                  *(v47 + 24) = v29;
                  *(v47 + 32) = v28;
                  *(v47 + 40) = v25;
                  *(v47 + 48) = v56 & 1;
                  aBlock[4] = sub_21D8621AC;
                  aBlock[5] = v47;
                  aBlock[0] = MEMORY[0x277D85DD0];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_21D0D74FC;
                  aBlock[3] = &block_descriptor_99;
                  v48 = _Block_copy(aBlock);

                  sub_21DBF9D4C();
                  aBlock[0] = MEMORY[0x277D84F90];
                  sub_21D0CD898();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
                  sub_21D0CD8F0();
                  sub_21DBFBCBC();
                  MEMORY[0x223D438F0](0, v13, v9, v48);
                  _Block_release(v48);

                  (*(v55 + 8))(v9, v7);
                  (*(v54 + 8))(v13, v10);
                  return;
                }

                sub_21D85EC04(_, v56 & 1, v25);
              }

              goto LABEL_20;
            }

LABEL_34:
            __break(1u);
            return;
          }
        }

        else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }
      }

      if (qword_280D0F3F8 != -1)
      {
        swift_once();
      }

      v50 = sub_21DBF84BC();
      __swift_project_value_buffer(v50, qword_280D0F400);
      v56 = sub_21DBF84AC();
      v51 = sub_21DBFAEBC();
      if (os_log_type_enabled(v56, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_21D0C9000, v56, v51, "scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded: failed to determine defaultHeight", v52, 2u);
        MEMORY[0x223D46520](v52, -1, -1);
      }

      v49 = v56;
      goto LABEL_29;
    }
  }
}

id sub_21D85EC04(void *a1, char a2, double a3)
{
  [a1 contentOffset];
  v7 = v6;
  *v20 = v6;
  v8 = [a1 traitCollection];
  [v8 displayScale];
  v10 = v9;

  v11 = 1.0;
  if (v10 != 0.0)
  {
    v11 = 1.0 / v10;
  }

  *&v20[1] = v11 - a3;
  if (a2)
  {

    return [a1 setContentOffset:1 animated:v7];
  }

  else
  {
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v20;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_21D863974;
    *(v15 + 24) = v14;
    v19[4] = sub_21D0E6070;
    v19[5] = v15;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_21D0E6204;
    v19[3] = &block_descriptor_49_2;
    v16 = _Block_copy(v19);
    v17 = a1;

    [v13 performWithoutAnimation_];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21D85EE28(uint64_t a1, char a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong contentOffset];
    if (vabdd_f64(v10, a4) < 1.0)
    {
      sub_21D85EC04(v9, a2 & 1, a5);
    }
  }
}

uint64_t UIViewController.futureForPresenting(_:animated:)(void *a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE62D10, &qword_21DC2D438);
  swift_allocObject();
  v6 = v2;
  v7 = a1;
  return sub_21DBF911C();
}

void sub_21D85EF50(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = sub_21D8638E4;
  v11[3] = v10;
  v11[4] = a4;
  v14[4] = sub_21D863920;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21D0D74FC;
  v14[3] = &block_descriptor_40_2;
  v12 = _Block_copy(v14);

  v13 = a4;

  [a3 presentViewController:v13 animated:a5 & 1 completion:v12];
  _Block_release(v12);
}

id UIViewController.topPresentedViewController.getter()
{
  v1 = v0;
  v2 = [v1 presentedViewController];
  if (!v2)
  {
    return v1;
  }

  do
  {
    v3 = v2;

    v2 = [v3 presentedViewController];
    v1 = v3;
  }

  while (v2);
  return v3;
}

BOOL UIViewController.isPresentedInsidePopover.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 _presentationSemanticContext];

  return v2 == 3;
}

uint64_t sub_21D85F14C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a6;
  v40 = a7;
  v38 = a5;
  v36 = a4;
  v34 = a3;
  v42 = sub_21DBF9D2C();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBFA7FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v35 = sub_21DBFB12C();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a8;
  *(v21 + 24) = v34;
  (*(v14 + 32))(v21 + v19, v17, v13);
  v22 = v36;
  *(v21 + v20) = v36;
  v23 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = v18;
  *(v23 + 8) = v38;
  v24 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v26 = v39;
  v25 = v40;
  *v24 = v39;
  v24[1] = v25;
  aBlock[4] = sub_21D863A6C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_83_3;
  v27 = _Block_copy(aBlock);
  sub_21DBF8E0C();
  v28 = v22;

  sub_21D0D0E74(v26, v25);
  v29 = v37;
  sub_21DBF9D4C();
  v46 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0CD8F0();
  v31 = v41;
  v30 = v42;
  sub_21DBFBCBC();
  v32 = v35;
  MEMORY[0x223D438F0](0, v29, v31, v27);
  _Block_release(v27);

  (*(v45 + 8))(v31, v30);
  (*(v43 + 8))(v29, v44);
}

void sub_21D85F570(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t (*a6)(), uint64_t a7, uint64_t a8)
{
  v44 = a7;
  v45 = a6;
  v46 = a5;
  v47 = a4;
  v62 = a3;
  v59 = a2;
  v58 = sub_21DBFA7FC();
  v63 = *(v58 - 8);
  v57 = *(v63 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v43 - v10;
  v60 = a8;
  v13 = type metadata accessor for TTRIValueBasedAlertAction(0, a8, v11, v12);
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v55 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v14;
  MEMORY[0x28223BE20](v15);
  v69 = &v43 - v16;
  if (sub_21DBFA6DC())
  {
    v52 = objc_opt_self();
    v17 = 0;
    v54 = (v70 + 16);
    v51 = v63 + 16;
    v50 = v70 + 32;
    v49 = v63 + 32;
    v48 = &v73;
    v53 = a1;
    v18 = v56;
    do
    {
      v19 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v19)
      {
        (*(v70 + 16))(v69, a1 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v17, v13);
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v39 = sub_21DBFBF7C();
        if (v61 != 8)
        {
          __break(1u);
          return;
        }

        aBlock = v39;
        (*v54)(v69, &aBlock, v13);
        swift_unknownObjectRelease();
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      v21 = v69;
      v22 = *v69;
      v64 = *(v69 + 1);
      v65 = v22;
      v66 = *(v69 + 2);
      v67 = v20;
      v23 = v63;
      v24 = v58;
      (*(v63 + 16))(v18, v59, v58);
      v25 = v70;
      v26 = *(v70 + 32);
      v68 = v17;
      v27 = v55;
      v26(v55, v21, v13);
      v28 = (*(v23 + 80) + 24) & ~*(v23 + 80);
      v29 = *(v25 + 80);
      v30 = v13;
      v31 = (v57 + v29 + v28) & ~v29;
      v32 = swift_allocObject();
      *(v32 + 16) = v60;
      (*(v23 + 32))(v32 + v28, v18, v24);
      v33 = v32 + v31;
      v13 = v30;
      v34 = v27;
      v35 = v68;
      v26(v33, v34, v30);
      sub_21DBF8E0C();
      v36 = sub_21DBFA12C();

      v75 = sub_21D863B44;
      v76 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v73 = sub_21D1B6000;
      v74 = &block_descriptor_89_1;
      v37 = _Block_copy(&aBlock);

      v38 = [v52 actionWithTitle:v36 style:v66 handler:v37];
      _Block_release(v37);

      a1 = v53;
      [v62 addAction_];

      v17 = v35 + 1;
    }

    while (v67 != sub_21DBFA6DC());
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    if (v45)
    {
      v75 = v45;
      v76 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v73 = sub_21D0D74FC;
      v74 = &block_descriptor_92_0;
      v42 = _Block_copy(&aBlock);
    }

    else
    {
      v42 = 0;
    }

    [v41 presentViewController:v62 animated:v46 & 1 completion:v42];
    _Block_release(v42);
  }
}

uint64_t sub_21D85FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRIValueBasedAlertAction(0, v10, v9, v10);
  (*(v6 + 16))(v8, a3 + *(v11 + 32), a4);
  sub_21DBFA7FC();
  return sub_21DBFA7EC();
}

uint64_t UIViewController.presentAlert<A>(with:animated:)(uint64_t a1, _OWORD *a2, char a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 57) = a3;
  *(v5 + 64) = a1;
  v6 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 41) = *(a2 + 25);
  *(v5 + 88) = sub_21DBFA84C();
  *(v5 + 96) = sub_21DBFA83C();
  v8 = sub_21DBFA7CC();
  *(v5 + 104) = v8;
  *(v5 + 112) = v7;

  return MEMORY[0x2822009F8](sub_21D85FD40, v8, v7);
}

uint64_t sub_21D85FD40()
{
  v1 = [*(v0 + 80) viewIfLoaded];
  v2 = [v1 window];

  if (v2)
  {

    if (*(v0 + 24))
    {
      v3 = sub_21DBFA12C();
      if (*(v0 + 40))
      {
LABEL_4:
        v4 = sub_21DBFA12C();
LABEL_10:
        v9 = *(v0 + 80);
        v10 = *(v0 + 72);
        v11 = *(v0 + 57);
        v12 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];
        *(v0 + 120) = v12;

        v13 = sub_21DBFA83C();
        *(v0 + 128) = v13;
        v14 = swift_task_alloc();
        *(v0 + 136) = v14;
        *(v14 + 16) = v10;
        *(v14 + 24) = v0 + 16;
        *(v14 + 32) = v12;
        *(v14 + 40) = v9;
        *(v14 + 48) = v11;
        v15 = swift_task_alloc();
        *(v0 + 144) = v15;
        *v15 = v0;
        v15[1] = sub_21D85FFCC;
        v16 = *(v0 + 64);
        v17 = *(v0 + 72);
        v18 = MEMORY[0x277D85700];

        return MEMORY[0x2822008A0](v16, v13, v18, 0xD00000000000001CLL, 0x800000021DC6E280, sub_21D8621CC, v14, v17);
      }
    }

    else
    {
      v3 = 0;
      if (*(v0 + 40))
      {
        goto LABEL_4;
      }
    }

    v4 = 0;
    goto LABEL_10;
  }

  v5 = objc_opt_self();
  v6 = sub_21DBFA12C();
  [v5 internalErrorWithDebugDescription_];

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21D85FFCC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21D860160;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21D8600F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D8600F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D860160()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

id sub_21D8601E8(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v43 = a5;
  v44 = a4;
  v60 = a3;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280, &qword_21DC09C40);
  v55 = sub_21DBFA7FC();
  v59 = *(v55 - 8);
  v54 = *(v59 + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v42[-v8];
  v57 = a6;
  v11 = type metadata accessor for TTRAlertSpecification.Action(0, a6, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v52 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v51 = &v42[-v15];
  v58 = v16;
  MEMORY[0x28223BE20](v17);
  v69 = &v42[-v18];
  v19 = *(a2 + 32);
  if (!sub_21DBFA6DC())
  {
    return [v44 presentViewController:v60 animated:v43 & 1 completion:0];
  }

  v49 = objc_opt_self();
  v20 = 0;
  v67 = v12 + 32;
  v68 = (v12 + 16);
  v48 = v59 + 16;
  v47 = v59 + 32;
  v46 = v71;
  v45 = v12 + 8;
  v50 = v19;
  v21 = v51;
  v22 = v53;
  while (1)
  {
    v23 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v23)
    {
      v24 = *(v12 + 16);
      v24(v69, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20, v11);
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_21DBFBF7C();
    if (v58 != 8)
    {
      break;
    }

    aBlock[0] = result;
    v24 = *v68;
    (*v68)(v69, aBlock, v11);
    swift_unknownObjectRelease();
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
LABEL_10:
      __break(1u);
      return [v44 presentViewController:v60 animated:v43 & 1 completion:0];
    }

LABEL_5:
    v63 = *(v12 + 32);
    v65 = v25;
    v63(v21, v69, v11);
    v64 = v21[16];
    v26 = *v21;
    v61 = *(v21 + 1);
    v62 = v26;
    v27 = v59;
    v28 = *(v59 + 16);
    v66 = v20;
    v29 = v11;
    v30 = v55;
    v28(v22, v56, v55);
    v31 = v52;
    v24(v52, v21, v29);
    v32 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v33 = (v54 + *(v12 + 80) + v32) & ~*(v12 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v57;
    v35 = v30;
    v11 = v29;
    (*(v27 + 32))(v34 + v32, v22, v35);
    v36 = v31;
    v19 = v50;
    v63((v34 + v33), v36, v29);
    v37 = sub_21DBFA12C();
    v71[2] = sub_21D8637D8;
    v71[3] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v71[0] = sub_21D1B6000;
    v71[1] = &block_descriptor_31_3;
    v38 = _Block_copy(aBlock);

    v39 = [v49 actionWithTitle:v37 style:v64 handler:v38];
    _Block_release(v38);

    v40 = v66;
    [v60 addAction_];

    (*(v12 + 8))(v21, v11);
    v20 = v40 + 1;
    if (v65 == sub_21DBFA6DC())
    {
      return [v44 presentViewController:v60 animated:v43 & 1 completion:0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D86078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAlertSpecification.Action(0, v10, v9, v10);
  (*(v6 + 16))(v8, a3 + *(v11 + 32), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280, &qword_21DC09C40);
  sub_21DBFA7FC();
  return sub_21DBFA7EC();
}

uint64_t UIViewController.present<A>(warmingSheet:primaryButtonAction:secondaryButtonAction:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 128) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_21DBFA8CC();
  *(v7 + 64) = swift_task_alloc();
  v8 = sub_21DBFA93C();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  sub_21DBFA84C();
  *(v7 + 96) = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  *(v7 + 104) = v10;
  *(v7 + 112) = v9;

  return MEMORY[0x2822009F8](sub_21D8609D4, v10, v9);
}

uint64_t sub_21D8609D4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 128);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = *(v0 + 24);
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  *(v6 + 40) = v5;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  v8 = *MEMORY[0x277D85778];
  v9 = sub_21DBFA8CC();
  (*(*(v9 - 8) + 104))(v1, v8, v9);
  sub_21DBFA94C();

  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_21D860B3C;
  v11 = *(v0 + 72);
  v12 = *(v0 + 16);

  return MEMORY[0x282138AD0](v12, v11);
}

uint64_t sub_21D860B3C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21D860C5C, v3, v2);
}

uint64_t sub_21D860C5C()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

id sub_21D860CF4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v73 = a6;
  v74 = a5;
  v75 = a7;
  v72 = a4;
  v68 = a3;
  v76 = a2;
  v8 = type metadata accessor for TTRIValueBasedAlertAction(255, a7, a3, a4);
  v9 = sub_21DBFBA8C();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = &v51 - v10;
  v67 = v8;
  v11 = *(v8 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v66 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = sub_21DBFA91C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v51 - v21;
  v78[0] = 0;
  v23 = *(v18 + 16);
  v65 = a1;
  v59 = v18 + 16;
  v57 = v23;
  (v23)(&v51 - v21, a1, v17, v20);
  v24 = v11;
  v25 = *(v11 + 16);
  v26 = v68;
  v56 = v11 + 16;
  v55 = v25;
  v25(v16, v68, v8);
  v27 = *(v18 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = *(v24 + 80);
  v30 = v24;
  v31 = (v19 + v29 + v28) & ~v29;
  v63 = v12;
  v53 = v27 | v29;
  v32 = swift_allocObject();
  *(v32 + 16) = v75;
  v33 = *(v18 + 32);
  v58 = v28;
  v61 = v22;
  v62 = v17;
  v54 = v18 + 32;
  v52 = v33;
  v33(v32 + v28, v22, v17);
  v34 = *(v30 + 32);
  v60 = v31;
  v64 = v16;
  v35 = v16;
  v36 = v69;
  v37 = v67;
  v34(v32 + v31, v35, v67);
  TTRIPermissionsWarmingSheetViewController.setAction<A>(_:forButton:handler:)(v26, v78, sub_21D863C6C, v32);
  v38 = v71;

  v39 = v70;
  (*(v70 + 16))(v36, v72, v38);
  v72 = v30;
  v40 = v37;
  if ((*(v30 + 48))(v36, 1, v37) == 1)
  {
    (*(v39 + 8))(v36, v38);
    v41 = v76;
  }

  else
  {
    v42 = v66;
    v34(v66, v36, v37);
    v77 = 1;
    v43 = v34;
    v45 = v61;
    v44 = v62;
    v57(v61, v65, v62);
    v46 = v64;
    v55(v64, v42, v40);
    v47 = v60;
    v48 = swift_allocObject();
    *(v48 + 16) = v75;
    v52(v48 + v58, v45, v44);
    v43(v48 + v47, v46, v40);
    v49 = v76;
    TTRIPermissionsWarmingSheetViewController.setAction<A>(_:forButton:handler:)(v42, &v77, sub_21D863704, v48);

    (*(v72 + 8))(v42, v40);
    v41 = v49;
  }

  return [v74 presentViewController:v41 animated:v73 & 1 completion:0];
}

uint64_t sub_21D86120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBFA8AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v14 = type metadata accessor for TTRIValueBasedAlertAction(0, a3, v12, v13);
  (*(v5 + 16))(v7, a2 + *(v14 + 32), a3);
  sub_21DBFA91C();
  sub_21DBFA8FC();
  (*(v9 + 8))(v11, v8);
  return sub_21DBFA90C();
}

uint64_t sub_21D8613A0(uint64_t a1, uint64_t a2, int a3)
{
  v22 = a3;
  v20[1] = a2;
  v4 = sub_21DBF9D2C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62E00, &unk_21DC2D5B8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v21 = sub_21DBFB12C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 25) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v22;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_21D86398C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_70_1;
  v17 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v26 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0CD8F0();
  sub_21DBFBCBC();
  v18 = v21;
  MEMORY[0x223D438F0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v25 + 8))(v6, v4);
  (*(v23 + 8))(v9, v24);
}

void sub_21D861744(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62E00, &unk_21DC2D5B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, a3, v5);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + v11, v8, v5);
    aBlock[4] = sub_21D863A00;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_76_0;
    v13 = _Block_copy(aBlock);

    [v10 dismissViewControllerAnimated:a2 & 1 completion:v13];
    _Block_release(v13);
  }
}

uint64_t TTRIValueBasedAlertAction.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void __swiftcall AlertStyleBuilder.AlertInfo.init(alertTitle:alertMessage:alertPrimaryButtonTitle:)(RemindersUICore::AlertStyleBuilder::AlertInfo *__return_ptr retstr, Swift::String_optional alertTitle, Swift::String_optional alertMessage, Swift::String alertPrimaryButtonTitle)
{
  retstr->alertTitle = alertTitle;
  retstr->alertMessage = alertMessage;
  retstr->alertPrimaryButtonTitle = alertPrimaryButtonTitle;
}

void AlertStyleBuilder.init(alertInfo:actionSheetInfo:alertPreferredStyle:popoverAnchor:)(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4[1];
  v14 = *a4;
  v15 = v6;
  v16[0] = a4[2];
  *(v16 + 9) = *(a4 + 41);
  v7 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v7;
  v8 = *a2;
  v9 = a2[1];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v8;
  v10 = a2[2];
  *(a5 + 64) = v9;
  *(a5 + 80) = v10;
  if (a3)
  {
    sub_21D0CF7E0(&v14, &qword_27CE5D558, &qword_21DC1CB50);
    v13 = 1;
  }

  else if ((~BYTE8(v16[0]) & 0xFE) != 0)
  {
    sub_21D0CF7E0(&v14, &qword_27CE5D558, &qword_21DC1CB50);
    v13 = 0;
  }

  else
  {
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    v13 = v12 == 1;
  }

  *(a5 + 96) = v13;
}

uint64_t AlertStyleBuilder.title.getter()
{
  v1 = v0[12];
  if (v1)
  {
    if (v1 == 1 && v0[5])
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!v0[11])
  {
    return 0;
  }

  v0 += 6;
LABEL_7:
  v2 = *v0;
  sub_21DBF8E0C();
  return v2;
}

uint64_t AlertStyleBuilder.message.getter()
{
  v1 = v0[12];
  if (!v1)
  {
    if (v0[11])
    {
      v2 = v0 + 8;
      goto LABEL_7;
    }

    return 0;
  }

  if (v1 != 1 || !v0[5])
  {
    return 0;
  }

  v2 = v0 + 2;
LABEL_7:
  v3 = *v2;
  sub_21DBF8E0C();
  return v3;
}

uint64_t AlertStyleBuilder.primaryButtonTitle.getter()
{
  v1 = v0[12];
  if (!v1)
  {
    if (v0[11])
    {
      v2 = v0 + 10;
      goto LABEL_7;
    }

    return 0;
  }

  if (v1 != 1 || !v0[5])
  {
    return 0;
  }

  v2 = v0 + 4;
LABEL_7:
  v3 = *v2;
  sub_21DBF8E0C();
  return v3;
}

__C::UIPopoverArrowDirection __swiftcall UIPopoverArrowDirection.addingRTLFallback()()
{
  if ((result.rawValue & 4) != 0)
  {
    if ((result.rawValue & 8) != 0)
    {
      return result;
    }

    v1 = 8;
  }

  else
  {
    if ((result.rawValue & 8) == 0)
    {
      return result;
    }

    v1 = 4;
  }

  return (v1 | result.rawValue);
}

id TTRIPopoverAnchor.source.getter@<X0>(uint64_t a1@<X8>)
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
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_21D50BA00(v2, v3, v4, v5, v6, v7);
}

__n128 TTRIPopoverAnchor.source.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21D50B440(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t TTRIPopoverAnchor.permittedArrowDirections.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

id static TTRIPopoverAnchor.sourceViewAndRect(view:rect:permittedArrowDirections:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = a1;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = 0;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return a1;
}

uint64_t static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0x80;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return swift_unknownObjectRetain();
}

double static TTRIPopoverAnchor.sourceViewOrBarButtonItem(fromSender:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D0DB414(a1, v6);
  if (v7)
  {
    sub_21D0D8CF0(0, &qword_280D0C300, 0x277D751E0);
    if (swift_dynamicCast())
    {
      *a2 = v5;
      result = 0.0;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 64;
LABEL_8:
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      return result;
    }
  }

  else
  {
    sub_21D0CF7E0(v6, &qword_27CE5C690, &unk_21DC11AB0);
  }

  sub_21D0DB414(a1, v6);
  if (v7)
  {
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    if (swift_dynamicCast())
    {
      *a2 = v5;
      result = 0.0;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    sub_21D0CF7E0(v6, &qword_27CE5C690, &unk_21DC11AB0);
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *&result = 254;
  *(a2 + 40) = xmmword_21DC0A830;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_21D861EC8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24[3] = a4;
  v24[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v11 = [a3 transitionCoordinator];
  if (v11)
  {
    v12 = v11;
    if ([v11 initiallyInteractive] && (objc_msgSend(v12, sel_isInterruptible) & 1) == 0)
    {
      sub_21D0D32E4(v24, v23);
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      sub_21D0D0FD0(v23, v15 + 24);
      *(v15 + 64) = a2 & 1;
      v21 = sub_21D81A244;
      v22 = v15;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_21D83EFE8;
      v20 = &block_descriptor_61_0;
      v14 = _Block_copy(&v17);
      swift_unknownObjectRetain();

      [v12 notifyWhenInteractionChangesUsingBlock_];
    }

    else
    {
      if (![v12 isInterruptible])
      {
        (*(a5 + 8))(a2 & 1, a4, a5);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v24);
      }

      sub_21D0D32E4(v24, v23);
      v13 = swift_allocObject();
      sub_21D0D0FD0(v23, v13 + 16);
      *(v13 + 56) = a2 & 1;
      v21 = sub_21D81A238;
      v22 = v13;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_21D83EFE8;
      v20 = &block_descriptor_55_1;
      v14 = _Block_copy(&v17);

      [v12 animateAlongsideTransition:0 completion:v14];
    }

    _Block_release(v14);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_0(v24);
}

id sub_21D862198(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xFDu)
  {
    return sub_21D50BA00(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_21D8621F0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D862298(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-25 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    v13 = *(v5 + 16);
    sub_21DBF8E0C();
    v13(v11 + 1, v12 + 1, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_21D8623A4(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

void *sub_21D862420(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(*(v7 - 8) + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  sub_21DBF8E0C();
  v8(v10 & ~v9, v11 & ~v9, v7);
  return a1;
}

void *sub_21D8624C8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + 8) & ~*(v8 + 80), (v7 + *(v8 + 80) + 8) & ~*(v8 + 80));
  return a1;
}

_OWORD *sub_21D862578(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void *sub_21D862600(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  (*(v9 + 40))((v7 + *(v9 + 80) + 8) & ~*(v9 + 80), (v8 + *(v9 + 80) + 8) & ~*(v9 + 80));
  return a1;
}

uint64_t sub_21D8626A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
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

void sub_21D86282C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

double destroy for AlertStyleBuilder(uint64_t a1)
{
  if (*(a1 + 40))
  {
  }

  if (*(a1 + 88))
  {
  }

  return result;
}

uint64_t initializeWithCopy for AlertStyleBuilder(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 88);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = *(a2 + 88);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
LABEL_6:
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void *assignWithCopy for AlertStyleBuilder(void *a1, void *a2)
{
  v4 = a2[5];
  if (a1[5])
  {
    if (v4)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();

      a1[2] = a2[2];
      a1[3] = a2[3];
      sub_21DBF8E0C();

      a1[4] = a2[4];
      a1[5] = a2[5];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D862DEC(a1);
      v6 = *(a2 + 1);
      v5 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 1) = v6;
      *(a1 + 2) = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
    a1[5] = a2[5];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v8;
    *a1 = v7;
  }

  v9 = a2[11];
  if (a1[11])
  {
    if (v9)
    {
      a1[6] = a2[6];
      a1[7] = a2[7];
      sub_21DBF8E0C();

      a1[8] = a2[8];
      a1[9] = a2[9];
      sub_21DBF8E0C();

      a1[10] = a2[10];
      a1[11] = a2[11];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D862E1C((a1 + 6));
      v11 = *(a2 + 4);
      v10 = *(a2 + 5);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v11;
      *(a1 + 5) = v10;
    }
  }

  else if (v9)
  {
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];
    a1[10] = a2[10];
    a1[11] = a2[11];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v13;
    *(a1 + 3) = v12;
  }

  a1[12] = a2[12];
  return a1;
}

uint64_t assignWithTake for AlertStyleBuilder(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;

      v6 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v6;

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v4;

      if (!*(a1 + 88))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    sub_21D862DEC(a1);
  }

  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = *(a2 + 32);
  if (!*(a1 + 88))
  {
LABEL_10:
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_11;
  }

LABEL_7:
  v8 = *(a2 + 88);
  if (!v8)
  {
    sub_21D862E1C(a1 + 48);
    goto LABEL_10;
  }

  v9 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v9;

  v10 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v10;

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;

LABEL_11:
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for AlertStyleBuilder(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for AlertStyleBuilder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRIPopoverAnchor(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  sub_21D50BA00(*a2, v5, v6, v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for TTRIPopoverAnchor(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  sub_21D50BA00(*a2, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v15 = *(a1 + 40);
  *(a1 + 40) = v9;
  sub_21D50B440(v10, v11, v12, v13, v14, v15);
  v16 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v16;
  return a1;
}

uint64_t assignWithTake for TTRIPopoverAnchor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v4;
  v12 = *(a1 + 40);
  *(a1 + 40) = v5;
  sub_21D50B440(v6, v7, v8, v9, v10, v12);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIPopoverAnchor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 57))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 40) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 40) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRIPopoverAnchor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRIPopoverAnchor.Source(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21D50BA00(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithCopy for TTRIPopoverAnchor.Source(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21D50BA00(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v14 = *(a1 + 40);
  *(a1 + 40) = v8;
  sub_21D50B440(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for TTRIPopoverAnchor.Source(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v3;
  v11 = *(a1 + 40);
  *(a1 + 40) = v4;
  sub_21D50B440(v5, v7, v6, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIPopoverAnchor.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 41))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 40) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 40) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRIPopoverAnchor.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21D863530()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  return (*(v3 + 8))(v1, v2, v3);
}

uint64_t objectdestroy_21Tm(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = sub_21DBFA91C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v9 = (type metadata accessor for TTRIValueBasedAlertAction(0, v2, v7, v8) - 8);
  v10 = (v5 + v6 + *(*v9 + 80)) & ~*(*v9 + 80);
  (*(v4 + 8))(v1 + v5, v3);

  (*(*(v2 - 8) + 8))(v1 + v10 + v9[10], v2);

  return swift_deallocObject();
}

uint64_t sub_21D863708(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = *(sub_21DBFA91C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v8 = *(type metadata accessor for TTRIValueBasedAlertAction(0, v2, v6, v7) - 8);
  return sub_21D86120C(v1 + v4, v1 + ((v4 + v5 + *(v8 + 80)) & ~*(v8 + 80)), v2);
}

uint64_t sub_21D8637D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280, &qword_21DC09C40);
  v4 = *(sub_21DBFA7FC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v9 = *(type metadata accessor for TTRAlertSpecification.Action(0, v3, v7, v8) - 8);
  v10 = v1 + ((v5 + v6 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_21D86078C(a1, v1 + v5, v10, v3);
}

uint64_t sub_21D8638E4(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 1;
  return v2(&v4);
}

void sub_21D863920()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(0);
  v2 = *MEMORY[0x277D76488];

  UIAccessibilityPostNotification(v2, v1);
}

void sub_21D86398C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62E00, &unk_21DC2D5B8) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  sub_21D861744(v2, v3, v4);
}

void sub_21D863A6C()
{
  v1 = *(v0 + 16);
  v2 = *(sub_21DBFA7FC() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_21D85F570(v6, v0 + v3, v7, v8, v9, v11, v12, v1);
}

uint64_t sub_21D863B44(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_21DBFA7FC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v9 = *(type metadata accessor for TTRIValueBasedAlertAction(0, v3, v7, v8) - 8);
  v10 = v1 + ((v5 + v6 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_21D85FB8C(a1, v1 + v5, v10, v3);
}

double sub_21D863CB4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 sortingStyle];
  v5 = sub_21DBFA16C();
  v7 = v6;
  if (v5 == sub_21DBFA16C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218, &unk_21DC0AFE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC0AFB0;
      *(inited + 32) = 0x657079547473696CLL;
      *(inited + 40) = 0xE800000000000000;
      sub_21D0D8CF0(0, &qword_27CE5A168, 0x277CCACA8);
      *(inited + 48) = sub_21DBFB66C();
      *(inited + 56) = 0x6E6F73616572;
      *(inited + 64) = 0xE600000000000000;
      v13 = sub_21DBFA12C();

      *(inited + 72) = v13;
      *(inited + 80) = 0x6974726F53646C6FLL;
      *(inited + 88) = 0xEF656C797453676ELL;
      *(inited + 96) = [v3 sortingStyle];
      *(inited + 104) = 0x6974726F5377656ELL;
      *(inited + 112) = 0xEF656C797453676ELL;
      *(inited + 120) = a1;
      v14 = a1;
      v15 = sub_21D1777B4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220, &qword_21DC0E700);
      swift_arrayDestroy();
      sub_21DBF835C();
      MEMORY[0x223D40B00](0xD00000000000001ALL, 0x800000021DC45C80, v15, 0, 1);

      [v3 setSortingStyle_];
    }
  }

  return result;
}

id TTRTemplateEditor.addNewSection(with:displayName:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_21DBF619C();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[2];
  v11 = [v10 sectionsContextChangeItem];
  if (v11)
  {
    v12 = v11;
    v35 = v4;
    v13 = [v10 saveRequest];
    v14 = sub_21DBFA12C();
    v36 = [v13 addTemplateSectionWithDisplayName:v14 toTemplateSectionContextChangeItem:v12 templateSectionObjectID:a1];

    v34 = v12;
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    sub_21DBF62DC();
    sub_21DBF62CC();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
    v16 = &v9[v15[12]];
    v17 = v15[16];
    v18 = &v9[v15[20]];
    v19 = *MEMORY[0x277D44E60];
    v20 = sub_21DBF613C();
    (*(*(v20 - 8) + 104))(v9, v19, v20);
    *v16 = TTRUserDefaults.activitySessionId.getter();
    v16[1] = v21;
    TTRUserDefaults.activitySessionBeginTime.getter(&v9[v17]);
    v37 = sub_21DBFC8EC();
    v38 = v22;
    MEMORY[0x223D42AA0](0x6C706D6554202D20, 0xEB00000000657461);
    v23 = v38;
    *v18 = v37;
    v18[1] = v23;
    (*(v6 + 104))(v9, *MEMORY[0x277D44E98], v5);
    sub_21DBF62BC();

    (*(v6 + 8))(v9, v5);
    v24 = v36;
    v25 = [v36 objectID];
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = v25;
    sub_21D182D68(sub_21D866DD0, v26);

    return v24;
  }

  else
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_27CE62E10);
    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAECC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21D0C9000, v30, v31, "Attempted to set the add a section to a template that does not support it.", v32, 2u);
      MEMORY[0x223D46520](v32, -1, -1);
    }

    return 0;
  }
}

void TTRTemplateEditor.deleteSection(_:)(void *a1)
{
  v3 = [*(v1 + 16) saveRequest];
  v4 = [v3 updateTemplateSection_];

  [v4 removeFromParentTemplate];
  v5 = [a1 objectID];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = v5;
  sub_21D182D68(sub_21D3A4960, v6);
}

Swift::Void __swiftcall TTRTemplateEditor.updateOrderingOfSections(withSectionIDsOrdering:initialSectionIDsOrdering:)(Swift::OpaquePointer withSectionIDsOrdering, Swift::OpaquePointer_optional initialSectionIDsOrdering)
{
  rawValue = initialSectionIDsOrdering.value._rawValue;
  v5 = *(v2 + 16);
  v6 = [v5 sectionsContextChangeItem];
  if (v6)
  {
    oslog = v6;
    sub_21D0D8CF0(0, &qword_27CE62E28, 0x277D448C8);
    sub_21DBF80CC();
    if (rawValue)
    {
      v7 = swift_allocObject();
      v7[2]._rawValue = rawValue;
      v7[3]._rawValue = withSectionIDsOrdering._rawValue;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D182D68(sub_21D3A4A20, v7);
    }
  }

  else
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE62E10);

    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAECC();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = [v5 objectID];
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Failed to update ordering of sections in template because template does not support sections {templateID: %@}", v10, 0xCu);
      sub_21D0CF7E0(v11, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }
  }
}

void TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(v3 + 16);
  v13 = [v12 sectionsContextChangeItem];
  if (v13)
  {
    v14 = v13;
    v15 = v11;
    sub_21DBF560C();
    sub_21D0D8CF0(0, &qword_27CE62E28, 0x277D448C8);
    sub_21DBF815C();

    (*(v7 + 8))(v10, v6);
    if (a3)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = v11;
      v17 = v15;
      sub_21DBF8E0C();
      sub_21D182D68(sub_21D866DEC, v16);
    }
  }

  else
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE62E10);

    v25 = sub_21DBF84AC();
    v19 = sub_21DBFAECC();

    if (os_log_type_enabled(v25, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = [v12 objectID];
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_21D0C9000, v25, v19, "Failed to update memberships of reminders in sections because template does not support sections {listID: %@}", v20, 0xCu);
      sub_21D0CF7E0(v21, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    v23 = v25;
  }
}

Swift::Void __swiftcall TTRTemplateEditor.edit(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = [v4 name];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = v6 == countAndFlagsBits && v8 == object;
  if (v9 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    v10 = sub_21DBFA12C();
    [v4 setName_];

    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v8;
    sub_21D182D68(sub_21D43DE24, v11);
  }
}

uint64_t sub_21D864B30()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62E10);
  v1 = __swift_project_value_buffer(v0, qword_27CE62E10);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__n128 TTRTemplateEditor.__allocating_init(changeItem:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  *(v4 + 56) = *(a2 + 32);
  *(v4 + 64) = 0;
  return result;
}

__n128 TTRTemplateEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v8;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 64) = a3;
  return result;
}

uint64_t TTRTemplateEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v4 = *(a2 + 16);
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(a2 + 32);
  *(v3 + 64) = a3;
  return v3;
}

void sub_21D864CEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*(*a1 + 16) name];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = v7 == a2 && v9 == a3;
  if (v10 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    v11 = *(v5 + 16);
    v12 = sub_21DBFA12C();
    [v11 setName_];

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = v9;
    sub_21D182D68(sub_21D866FCC, v13);
  }
}

void TTRTemplateEditor.edit(color:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 color];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_21D0D8CF0(0, &qword_27CE59200, 0x277D445D0), v8 = v4, v5 = a1, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setColor_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866E28, v7);
  }
}

void sub_21D864F6C(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 16);
  v4 = [v3 color];
  if (!v4)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a2 || (sub_21D0D8CF0(0, &qword_27CE59200, 0x277D445D0), v8 = v4, v5 = a2, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setColor_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866FD4, v7);
  }
}

Swift::Void __swiftcall TTRTemplateEditor.edit(badgeEmblem:)(__C::REMListBadgeEmblem badgeEmblem)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
  v3 = *(v1 + 16);
  v4 = [v3 badge];
  if (!v4)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v2 || (sub_21D0D8CF0(0, &qword_27CE59210, 0x277D44678), v8 = v4, v5 = v2, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setBadge_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866E30, v7);

    goto LABEL_7;
  }

LABEL_7:
}

void TTRTemplateEditor.edit(badge:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 badge];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_21D0D8CF0(0, &qword_27CE59210, 0x277D44678), v8 = v4, v5 = a1, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setBadge_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866FD0, v7);
  }
}

Swift::Void __swiftcall TTRTemplateEditor.edit(badgeEmoji:)(Swift::String badgeEmoji)
{
  v2 = objc_allocWithZone(MEMORY[0x277D44678]);
  v3 = sub_21DBFA12C();
  v4 = [v2 initWithEmoji_];

  v5 = *(v1 + 16);
  v6 = [v5 badge];
  if (!v6)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v4 || (sub_21D0D8CF0(0, &qword_27CE59210, 0x277D44678), v10 = v6, v7 = v4, v8 = sub_21DBFB63C(), v10, v7, (v8 & 1) == 0))
  {
LABEL_6:
    [v5 setBadge_];
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = v6;
    sub_21D182D68(sub_21D866FD0, v9);

    goto LABEL_7;
  }

LABEL_7:
}

void sub_21D86551C(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 16);
  v4 = [v3 badge];
  if (!v4)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a2 || (sub_21D0D8CF0(0, &qword_27CE59210, 0x277D44678), v8 = v4, v5 = a2, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setBadge_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866FD0, v7);
  }
}

Swift::Void __swiftcall TTRTemplateEditor.edit(showingLargeAttachments:)(Swift::Bool showingLargeAttachments)
{
  v3 = *v1;
  v4 = v1[2];
  if ([v4 showingLargeAttachments] != showingLargeAttachments)
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62E10);

    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAE9C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v8 = 136315650;
      v21[1] = v3;
      swift_getMetatypeMetadata();
      v9 = sub_21DBFA1AC();
      v11 = sub_21D0CDFB4(v9, v10, v21);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = [v4 showingLargeAttachments];
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v13)
      {
        v15 = 0xE500000000000000;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      v16 = sub_21D0CDFB4(v14, v15, v21);

      *(v8 + 14) = v16;
      *(v8 + 22) = 2080;
      if (showingLargeAttachments)
      {
        v17 = 1702195828;
      }

      else
      {
        v17 = 0x65736C6166;
      }

      if (showingLargeAttachments)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      v19 = sub_21D0CDFB4(v17, v18, v21);

      *(v8 + 24) = v19;
      _os_log_impl(&dword_21D0C9000, v6, v7, "%s: Changing showing large attachments {from: %s, to: %s}", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v20, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    [v4 setShowingLargeAttachments_];
  }
}

void sub_21D8658D4(uint64_t a1)
{
  v56[4] = *MEMORY[0x277D85DE8];
  v50 = *(v1 + 16);
  v4 = [v50 saveRequest];
  v5 = [v4 store];

  sub_21D198698(a1);
  v6 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v7 = sub_21DBFA5DC();

  v56[0] = 0;
  v8 = [v5 fetchTemplateSectionsWithObjectIDs:v7 error:v56];

  v9 = v56[0];
  if (v8)
  {
    sub_21D0D8CF0(0, &qword_27CE584B8, 0x277D448B8);
    sub_21D183A0C();
    v10 = sub_21DBF9E6C();
    v11 = v9;

    v51 = v6;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = sub_21DBFC21C();
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v10 = v12 | 0x8000000000000000;
    }

    else
    {
      v29 = -1 << *(v10 + 32);
      v13 = v10 + 64;
      v14 = ~v29;
      v30 = -v29;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v15 = v31 & *(v10 + 64);
    }

    v32 = 0;
    v33 = (v14 + 64) >> 6;
    if (v10 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v34 = v32;
      v35 = v15;
      v36 = v32;
      if (!v15)
      {
        break;
      }

LABEL_16:
      v37 = (v35 - 1) & v35;
      v38 = (v36 << 9) | (8 * __clz(__rbit64(v35)));
      v39 = *(*(v10 + 56) + v38);
      v40 = *(*(v10 + 48) + v38);
      v41 = v39;
      if (!v40)
      {
LABEL_22:
        sub_21D0CFAF8(v10);
        return;
      }

      while (1)
      {

        v45 = [v50 saveRequest];
        v2 = [v45 updateTemplateSection_];

        [v2 removeFromParentTemplate];
        v46 = [v41 objectID];
        v53 = v37;
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        v56[3] = v51;
        v52 = v46;
        v56[0] = [v50 objectID];
        v48 = sub_21D0D8CF0(0, &qword_27CE584C8, 0x277D44898);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584D0, &unk_21DC094E0);
        *&v54 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_21DC08D00;
        sub_21D0CEB98(v56, v49 + 32);
        sub_21D0CF2E8(&v54, (v49 + 64));
        __swift_destroy_boxed_opaque_existential_0(v56);
        sub_21D1C4F54(v49, sub_21D3A4B68, v47);

        v32 = v36;
        v15 = v53;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v42 = sub_21DBFC2DC();
        if (v42)
        {
          v44 = v43;
          *&v54 = v42;
          swift_dynamicCast();
          v40 = v56[0];
          *&v54 = v44;
          swift_dynamicCast();
          v41 = v56[0];
          v36 = v32;
          v37 = v15;
          if (v40)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v33)
      {
        goto LABEL_22;
      }

      v35 = *(v13 + 8 * v36);
      ++v34;
      if (v35)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = v56[0];
    v2 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56D60 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_27CE62E10);
  sub_21DBF8E0C();
  v18 = v2;
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAEBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v56[0] = v22;
    *v21 = 136446466;
    sub_21D183A0C();
    v23 = sub_21DBFAABC();
    v25 = sub_21D0CDFB4(v23, v24, v56);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    swift_getErrorValue();
    v26 = sub_21DBFC75C();
    v28 = sub_21D0CDFB4(v26, v27, v56);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_21D0C9000, v19, v20, "Failed to delete sections {sectionIDs: %{public}s, error: %{public}s}", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  else
  {
  }
}

void sub_21D865EFC(uint64_t a1, void *a2)
{
  v3 = [*(*a1 + 16) sectionsContextChangeItem];
  if (v3)
  {
    v6 = v3;
    [v3 undeleteSectionWithID_];
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v5 = a2;
    sub_21D182D68(sub_21D866FD8, v4);
  }
}

void sub_21D865FCC(uint64_t a1, void **a2)
{
  v3 = v2;
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(v3 + 16);
  v13 = [v12 sectionsContextChangeItem];
  if (v13)
  {
    v14 = v13;
    sub_21DBF560C();
    sub_21D1E44B4(a1, v10);
    (*(v7 + 8))(v10, v6);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v11;
    v16 = v11;
    sub_21DBF8E0C();
    sub_21D182D68(sub_21D866FC4, v15);
  }

  else
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE62E10);

    v24 = sub_21DBF84AC();
    v18 = sub_21DBFAECC();

    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v12 objectID];
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&dword_21D0C9000, v24, v18, "Failed to update memberships of reminders in sections because template does not support sections {listID: %@}", v19, 0xCu);
      sub_21D0CF7E0(v20, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v20, -1, -1);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    v22 = v24;
  }
}

id TTRTemplateEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

double sub_21D8662EC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = a2;
  v4 = a2;
  v5 = sub_21D19ED08(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_21D8658D4(v5);

  return result;
}

double sub_21D866394(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59330, &qword_21DC0B350);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D1D1E74();
  sub_21D183A0C();
  v5 = sub_21DBFA49C();
  v7 = a3;
  TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v5, &v7, a2);

  return result;
}

uint64_t TTRTemplateEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80, &unk_21DC093F0);

  return swift_deallocClassInstance();
}

id static TTRTemplateEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

__n128 TTRTemplateEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, id a2, uint64_t a3, char a4)
{
  v8 = [a2 updateTemplate_];

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  result = *a3;
  v11 = *(a3 + 16);
  *(v9 + 24) = *a3;
  *(v9 + 40) = v11;
  *(v9 + 56) = *(a3 + 32);
  *(v9 + 64) = a4;
  return result;
}

__n128 sub_21D8665C0@<Q0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 updateTemplate_];

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  result = *a3;
  v13 = *(a3 + 16);
  *(v11 + 24) = *a3;
  *(v11 + 40) = v13;
  *(v11 + 56) = *(a3 + 32);
  *(v11 + 64) = a4;
  *a5 = v11;
  return result;
}

id static TTRTemplateEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedTemplateChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateTemplate_];

  return v2;
}

id static TTRTemplateEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id TTRTemplateEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

id sub_21D866764@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21D866E38(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D866794(void *a1, id a2)
{
  v2 = [a2 _trackedTemplateChangeItemForObjectID_];

  return v2;
}

id sub_21D8667D4(void *a1, id a2)
{
  v2 = [a2 updateTemplate_];

  return v2;
}

id sub_21D866814(NSObject *a1)
{
  v2 = v1;
  if (qword_27CE56D60 != -1)
  {
LABEL_27:
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62E10);

  v5 = a1;
  a1 = sub_21DBF84AC();
  LOBYTE(v6) = sub_21DBFAE9C();

  v7 = &selRef_setQueryFragment_;
  if (!os_log_type_enabled(a1, v6))
  {

    a1 = v5;
    goto LABEL_7;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  *v8 = 138412546;
  v10 = [*(v2 + 16) remObjectID];
  *(v8 + 4) = v10;
  *v9 = v10;
  *(v8 + 6) = 2048;
  v11 = [v5 topLevelElementIDs];
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v12 = sub_21DBFA5EC();

  if (v12 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {

    *(v8 + 14) = i;

    _os_log_impl(&dword_21D0C9000, a1, v6, "Changing manual ordering {template: %@, top-level elements count: %ld}", v8, 0x16u);
    sub_21D0CF7E0(v9, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
LABEL_7:

    v14 = [v5 v7[494]];
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v15 = sub_21DBFA5EC();

    if (v15 >> 62)
    {
      a1 = sub_21DBFBD7C();
    }

    else
    {
      a1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = [v5 secondaryLevelElementIDsByTopLevelElementID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
    sub_21D183A0C();
    v17 = sub_21DBF9E6C();

    v18 = v17;
    v9 = 0;
    v19 = 0;
    v6 = v18 + 64;
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;
    while (v22)
    {
LABEL_17:
      v25 = *(*(v18 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v22)))));
      if (v25 >> 62)
      {
        v7 = v18;
        v26 = sub_21DBFBD7C();
        v18 = v7;
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v22 &= v22 - 1;
      v27 = __OFADD__(v19, v26);
      v19 += v26;
      if (v27)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    while (1)
    {
      v24 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v24 >= v23)
      {
        break;
      }

      v22 = *(v6 + 8 * v24);
      ++v9;
      if (v22)
      {
        v9 = v24;
        goto LABEL_17;
      }
    }

    v27 = __OFADD__(a1, v19);
    v8 = a1 + v19;
    if (!v27)
    {
      break;
    }

    __break(1u);
LABEL_30:
    ;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218, &unk_21DC0AFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D10;
  *(inited + 32) = 0x657079547473696CLL;
  *(inited + 40) = 0xE800000000000000;
  sub_21D0D8CF0(0, &qword_27CE5A168, 0x277CCACA8);
  *(inited + 48) = sub_21DBFB66C();
  *(inited + 56) = 0x6E6F73616572;
  *(inited + 64) = 0xE600000000000000;
  v29 = sub_21DBFA12C();

  *(inited + 72) = v29;
  *(inited + 80) = 0x657A6953746E6968;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21DBFABEC();
  v30 = sub_21D1777B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220, &qword_21DC0E700);
  swift_arrayDestroy();
  sub_21DBF835C();
  MEMORY[0x223D40B00](0xD000000000000022, 0x800000021DC647A0, v30, 0, 1);

  return [*(v2 + 16) updateManualOrdering_];
}

void sub_21D866DEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21D865FCC(v1, &v2);
}

id sub_21D866E38(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchTemplateWithObjectID:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_21D866EF8(uint64_t a1)
{
  result = sub_21D866F20();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_21D866F20()
{
  result = qword_27CE62E30;
  if (!qword_27CE62E30)
  {
    v3 = type metadata accessor for TTRTemplateEditor();
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplateEditor, v3, v0, v1);
    atomic_store(result, &qword_27CE62E30);
  }

  return result;
}

uint64_t FromTo.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *(*(a3 - 8) + 32);
  v12(a3 - 8, a5, a1);
  v10 = a5 + *(type metadata accessor for FromTo(0, a3, a4, v9) + 36);

  return v12(v10, a2, a3);
}

uint64_t FromTo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  v17 = *(*(a3 - 8) + 32);
  v17(&v22 - v15, a1, a3, v14);
  (v17)(&v16[*(TupleTypeMetadata2 + 48)], a2, a3);
  (*(v10 + 32))(v12, v16, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  (v17)(a5, v12, a3);
  v20 = type metadata accessor for FromTo(0, a3, v23, v19);
  return (v17)(a5 + *(v20 + 36), &v12[v18], a3);
}

uint64_t FromTo.tuple()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v9 = *(*(v6 - 8) + 16);
  v9(a1, v3, v6);
  v7 = v3 + *(a3 + 36);

  return (v9)(a2, v7, v6);
}

uint64_t static FromTo.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_21DBFA10C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FromTo(0, a3, a4, v6);
  return sub_21DBFA10C() & 1;
}

uint64_t FromTo.hashValue.getter(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA00C();
  sub_21DBFA00C();
  return sub_21DBFC82C();
}

uint64_t sub_21D867568(uint64_t a1, uint64_t a2)
{
  sub_21DBFC7DC();
  FromTo.hash(into:)(v4, a2);
  return sub_21DBFC82C();
}

double FromTo.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21DBFA78C();
  type metadata accessor for FromTo(0, a2, a3, v6);
  sub_21DBFA78C();

  return result;
}

uint64_t FromTo.description.getter(uint64_t a1)
{
  sub_21DBFC5EC();
  MEMORY[0x223D42AA0](540945696, 0xE400000000000000);
  sub_21DBFC5EC();
  return 0;
}

uint64_t sub_21D8676E0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D867770(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v14(((v3 + v9) & v8), ((a2 + v9) & v8), v4);
  }

  return v3;
}

uint64_t sub_21D867878(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8) + 8;
  v7 = *v6;
  (*v6)(a1, v3);
  v4 = (*(v6 + 56) + a1 + *(v6 + 72)) & ~*(v6 + 72);

  return v7(v4, v3);
}

unint64_t sub_21D867914(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v7((*(v8 + 48) + *(v8 + 64) + a1) & ~*(v8 + 64), (*(v8 + 48) + *(v8 + 64) + a2) & ~*(v8 + 64), v5);
  return a1;
}

unint64_t sub_21D8679A8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v7((*(v8 + 40) + *(v8 + 56) + a1) & ~*(v8 + 56), (*(v8 + 40) + *(v8 + 56) + a2) & ~*(v8 + 56), v5);
  return a1;
}

unint64_t sub_21D867A3C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v7((*(v8 + 32) + *(v8 + 48) + a1) & ~*(v8 + 48), (*(v8 + 32) + *(v8 + 48) + a2) & ~*(v8 + 48), v5);
  return a1;
}

unint64_t sub_21D867AD0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v7((*(v8 + 24) + *(v8 + 40) + a1) & ~*(v8 + 40), (*(v8 + 24) + *(v8 + 40) + a2) & ~*(v8 + 40), v5);
  return a1;
}

uint64_t sub_21D867B64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}