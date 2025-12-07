unint64_t sub_24B6BF754()
{
  result = qword_27F0342A0;
  if (!qword_27F0342A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342A0);
  }

  return result;
}

unint64_t sub_24B6BF7AC()
{
  result = qword_27F0342A8;
  if (!qword_27F0342A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342A8);
  }

  return result;
}

unint64_t sub_24B6BF804()
{
  result = qword_27F0342B0;
  if (!qword_27F0342B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342B0);
  }

  return result;
}

unint64_t sub_24B6BF85C()
{
  result = qword_27F0342B8;
  if (!qword_27F0342B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342B8);
  }

  return result;
}

unint64_t sub_24B6BF8B4()
{
  result = qword_27F0342C0;
  if (!qword_27F0342C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342C0);
  }

  return result;
}

uint64_t EditorialDetailEnvironment.fetchRemoteDetailContent.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EditorialDetailEnvironment.presentFilter.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EditorialDetailEnvironment.navigateToSocialMediaLink.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EditorialDetailEnvironment.onPreviewButtonTapped.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EditorialDetailEnvironment.init(fetchRemoteDetailContent:presentFilter:navigateToSocialMediaLink:onPreviewButtonTapped:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[2] = a3;
  a9[3] = a4;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B6BF9F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24B6BFA3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WorkoutProgramLinkAnnotation.init(title:platform:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *a5 = v7;
  v8 = *(type metadata accessor for WorkoutProgramLinkAnnotation(0) + 24);
  v9 = sub_24B75B108();
  v10 = *(*(v9 - 8) + 32);

  return v10(a5 + v8, a4, v9);
}

uint64_t sub_24B6BFB28()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D726F6674616C70;
  }
}

uint64_t sub_24B6BFB78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B6C0BA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B6BFBAC(uint64_t a1)
{
  v2 = sub_24B6BFED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BFBE8(uint64_t a1)
{
  v2 = sub_24B6BFED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BFC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgramLinkAnnotation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutProgramLinkAnnotation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0342C8, &qword_24B75ECE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BFED4();
  sub_24B75C738();
  v10[15] = *v3;
  v10[14] = 0;
  sub_24B6BFF28();
  sub_24B75C6A8();
  if (!v2)
  {
    v10[13] = 1;
    sub_24B75C678();
    type metadata accessor for WorkoutProgramLinkAnnotation(0);
    v10[12] = 2;
    sub_24B75B108();
    sub_24B6A71D0(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B6BFED4()
{
  result = qword_27F0342D0;
  if (!qword_27F0342D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342D0);
  }

  return result;
}

unint64_t sub_24B6BFF28()
{
  result = qword_27F0342D8;
  if (!qword_27F0342D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342D8);
  }

  return result;
}

uint64_t WorkoutProgramLinkAnnotation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_24B75B108();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0342E0, &qword_24B75ECE8);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v16 - v6;
  v8 = type metadata accessor for WorkoutProgramLinkAnnotation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BFED4();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v8;
  v11 = a1;
  v12 = v20;
  v13 = v21;
  v25 = 0;
  sub_24B6C0318();
  sub_24B75C618();
  *v10 = v26;
  v24 = 1;
  *(v10 + 1) = sub_24B75C5E8();
  *(v10 + 2) = v14;
  v16[1] = v14;
  v23 = 2;
  sub_24B6A71D0(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B75C618();
  (*(v12 + 8))(v7, v22);
  (*(v18 + 32))(&v10[*(v17 + 24)], v5, v13);
  sub_24B6BFC30(v10, v19);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return sub_24B6C036C(v10);
}

unint64_t sub_24B6C0318()
{
  result = qword_27F0342E8;
  if (!qword_27F0342E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342E8);
  }

  return result;
}

uint64_t sub_24B6C036C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutProgramLinkAnnotation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static WorkoutProgramLinkAnnotation.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v3 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for WorkoutProgramLinkAnnotation(0);

  return sub_24B75B0F8();
}

uint64_t WorkoutProgramLinkAnnotation.hash(into:)(uint64_t a1)
{
  MEMORY[0x24C2489B0](*v1);
  sub_24B75C358();
  type metadata accessor for WorkoutProgramLinkAnnotation(0);
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B75C2C8();
}

uint64_t WorkoutProgramLinkAnnotation.hashValue.getter()
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*v0);
  sub_24B75C358();
  type metadata accessor for WorkoutProgramLinkAnnotation(0);
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6C05E4()
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*v0);
  sub_24B75C358();
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6C069C(uint64_t a1)
{
  MEMORY[0x24C2489B0](*v1);
  sub_24B75C358();
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B75C2C8();
}

uint64_t sub_24B6C073C(uint64_t a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*v1);
  sub_24B75C358();
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6C07F0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v5 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  return sub_24B75B0F8();
}

uint64_t getEnumTagSinglePayload for WorkoutProgramLinkAnnotation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutProgramLinkAnnotation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B6C0A9C()
{
  result = qword_27F034300;
  if (!qword_27F034300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034300);
  }

  return result;
}

unint64_t sub_24B6C0AF4()
{
  result = qword_27F034308;
  if (!qword_27F034308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034308);
  }

  return result;
}

unint64_t sub_24B6C0B4C()
{
  result = qword_27F034310;
  if (!qword_27F034310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034310);
  }

  return result;
}

uint64_t sub_24B6C0BA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B6C0CB4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034318, &qword_24B75EF20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034320, &qword_24B75EF28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034328, &qword_24B75EF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034330, &qword_24B75EF38);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034338, &unk_24B75EF40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = sub_24B75B048();
  MEMORY[0x28223BE20](v20 - 8);

  sub_24B75B038();
  sub_24B75AFF8();
  v21 = sub_24B75BB88();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_24B75BB98();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_24B75BBA8();
  v23 = sub_24B75BBB8();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  v24 = sub_24B75BB78();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  sub_24B75BBC8();
  v25 = sub_24B75BBD8();
  (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  sub_24B6C10B4(v19, v16);
  sub_24B6C1124();
  sub_24B75B008();
  return sub_24B6C1178(v19);
}

uint64_t sub_24B6C10B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034338, &unk_24B75EF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B6C1124()
{
  result = qword_27F034340;
  if (!qword_27F034340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034340);
  }

  return result;
}

uint64_t sub_24B6C1178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034338, &unk_24B75EF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B6C11E0()
{
  if (*v0)
  {
    return 0x4164694477656976;
  }

  else
  {
    return 0x4677656976657270;
  }
}

uint64_t sub_24B6C1234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4677656976657270 && a2 == 0xEE00646568637465;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B6C1320(uint64_t a1)
{
  v2 = sub_24B6C190C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6C135C(uint64_t a1)
{
  v2 = sub_24B6C190C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6C1398(uint64_t a1)
{
  v2 = sub_24B6C1A18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6C13D4(uint64_t a1)
{
  v2 = sub_24B6C1A18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6C1410(uint64_t a1)
{
  v2 = sub_24B6C19C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6C144C(uint64_t a1)
{
  v2 = sub_24B6C19C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034348, &qword_24B75EF50);
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034350, &qword_24B75EF58);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - v5;
  v6 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutContextMenuPreviewAction(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034358, &qword_24B75EF60);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6C190C();
  sub_24B75C738();
  sub_24B6C1960(v29, v11);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    v31 = 1;
    sub_24B6C19C4();
    v16 = v23;
    sub_24B75C638();
    (*(v25 + 8))(v16, v26);
  }

  else
  {
    v18 = v22;
    sub_24B6C210C(v11, v22, type metadata accessor for WorkoutContextMenuPreviewContent);
    v30 = 0;
    sub_24B6C1A18();
    v19 = v24;
    sub_24B75C638();
    sub_24B6C2174(&qword_27F034378, &protocol conformance descriptor for WorkoutContextMenuPreviewContent);
    v20 = v28;
    sub_24B75C6A8();
    (*(v27 + 8))(v19, v20);
    sub_24B6C1A6C(v18);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewAction(uint64_t a1)
{
  result = qword_2810F6BE0;
  if (!qword_2810F6BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B6C190C()
{
  result = qword_27F034360;
  if (!qword_27F034360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034360);
  }

  return result;
}

uint64_t sub_24B6C1960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B6C19C4()
{
  result = qword_27F034368;
  if (!qword_27F034368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034368);
  }

  return result;
}

unint64_t sub_24B6C1A18()
{
  result = qword_27F034370;
  if (!qword_27F034370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034370);
  }

  return result;
}

uint64_t sub_24B6C1A6C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutContextMenuPreviewAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034380, &qword_24B75EF68);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v40 = &v35 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034388, &qword_24B75EF70);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034390, &unk_24B75EF78);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for WorkoutContextMenuPreviewAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24B6C190C();
  v16 = v43;
  sub_24B75C728();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v35 = v11;
  v43 = v14;
  v17 = v40;
  v18 = v41;
  v19 = sub_24B75C628();
  v20 = (2 * *(v19 + 16)) | 1;
  v45 = v19;
  v46 = v19 + 32;
  v47 = 0;
  v48 = v20;
  v21 = sub_24B6B9E04();
  v22 = v6;
  if (v21 == 2 || v47 != v48 >> 1)
  {
    v24 = sub_24B75C568();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v26 = v9;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v42 + 8))(v8, v22);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  if (v21)
  {
    v49 = 1;
    sub_24B6C19C4();
    sub_24B75C598();
    v23 = v42;
    v29 = v18;
    (*(v37 + 8))(v17, v39);
    (*(v23 + 8))(v8, v6);
    swift_unknownObjectRelease();
    v30 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
    v31 = v43;
    (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  }

  else
  {
    v49 = 0;
    sub_24B6C1A18();
    sub_24B75C598();
    v28 = v42;
    v29 = v18;
    v32 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
    sub_24B6C2174(&qword_27F034398, &protocol conformance descriptor for WorkoutContextMenuPreviewContent);
    v34 = v35;
    v33 = v36;
    sub_24B75C618();
    (*(v38 + 8))(v5, v33);
    (*(v28 + 8))(v8, v22);
    swift_unknownObjectRelease();
    (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
    v31 = v43;
    sub_24B6C210C(v34, v43, type metadata accessor for WorkoutContextMenuPreviewAction);
  }

  sub_24B6C210C(v31, v29, type metadata accessor for WorkoutContextMenuPreviewAction);
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_24B6C210C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6C2174(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutContextMenuPreviewContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6C2210(uint64_t a1)
{
  v1 = type metadata accessor for WorkoutContextMenuPreviewContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_24B6C229C()
{
  result = qword_27F0343A0;
  if (!qword_27F0343A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343A0);
  }

  return result;
}

unint64_t sub_24B6C22F4()
{
  result = qword_27F0343A8;
  if (!qword_27F0343A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343A8);
  }

  return result;
}

unint64_t sub_24B6C234C()
{
  result = qword_27F0343B0;
  if (!qword_27F0343B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343B0);
  }

  return result;
}

unint64_t sub_24B6C23A4()
{
  result = qword_27F0343B8;
  if (!qword_27F0343B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343B8);
  }

  return result;
}

unint64_t sub_24B6C23FC()
{
  result = qword_27F0343C0;
  if (!qword_27F0343C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343C0);
  }

  return result;
}

unint64_t sub_24B6C2454()
{
  result = qword_27F0343C8;
  if (!qword_27F0343C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343C8);
  }

  return result;
}

unint64_t sub_24B6C24AC()
{
  result = qword_27F0343D0;
  if (!qword_27F0343D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343D0);
  }

  return result;
}

unint64_t sub_24B6C2504()
{
  result = qword_27F0343D8;
  if (!qword_27F0343D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343D8);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WorkoutContextMenuPreviewState(0) + 24);

  return sub_24B6C25E8(a1, v3);
}

uint64_t sub_24B6C25E8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t WorkoutContextMenuPreviewState.init(identifier:layout:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = a5 + *(type metadata accessor for WorkoutContextMenuPreviewState(0) + 24);

  return sub_24B6C26E8(a4, v8);
}

uint64_t sub_24B6C26E8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_24B6C274C()
{
  v1 = 0x74756F79616CLL;
  if (*v0 != 1)
  {
    v1 = 0x7461745364616F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24B6C27AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B6C3210(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B6C27D4(uint64_t a1)
{
  v2 = sub_24B6C2A30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6C2810(uint64_t a1)
{
  v2 = sub_24B6C2A30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0343E0, &qword_24B75F310);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6C2A30();
  sub_24B75C738();
  v10[15] = 0;
  sub_24B75C678();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_24B6C2A84();
    sub_24B75C6A8();
    type metadata accessor for WorkoutContextMenuPreviewState(0);
    v10[12] = 2;
    type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
    sub_24B6C2E78(&qword_27F0343F8, &protocol conformance descriptor for WorkoutContextMenuPreviewLoadState);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B6C2A30()
{
  result = qword_27F0343E8;
  if (!qword_27F0343E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343E8);
  }

  return result;
}

unint64_t sub_24B6C2A84()
{
  result = qword_27F0343F0;
  if (!qword_27F0343F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343F0);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  MEMORY[0x28223BE20](State);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034400, &qword_24B75F318);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for WorkoutContextMenuPreviewState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6C2A30();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = a1;
  v11 = v10;
  v12 = v19;
  v25 = 0;
  v13 = v21;
  *v11 = sub_24B75C5E8();
  *(v11 + 8) = v14;
  v16 = v14;
  v23 = 1;
  sub_24B6C2E24();
  sub_24B75C618();
  *(v11 + 16) = v24;
  v22 = 2;
  sub_24B6C2E78(&qword_27F034410, &protocol conformance descriptor for WorkoutContextMenuPreviewLoadState);
  sub_24B75C618();
  (*(v12 + 8))(v7, v13);
  sub_24B6C26E8(v5, v11 + *(v8 + 24));
  sub_24B6C2EBC(v11, v18, type metadata accessor for WorkoutContextMenuPreviewState);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_24B6C2F24(v11);
}

unint64_t sub_24B6C2E24()
{
  result = qword_27F034408;
  if (!qword_27F034408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034408);
  }

  return result;
}

uint64_t sub_24B6C2E78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutContextMenuPreviewLoadState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6C2EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6C2F24(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutContextMenuPreviewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static WorkoutContextMenuPreviewState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_24B75C6B8() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for WorkoutContextMenuPreviewState(0) + 24);

  return _s20FitnessProductDetail34WorkoutContextMenuPreviewLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

BOOL sub_24B6C303C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_24B75C6B8() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return _s20FitnessProductDetail34WorkoutContextMenuPreviewLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v8, a2 + v8);
}

unint64_t sub_24B6C310C()
{
  result = qword_27F034418;
  if (!qword_27F034418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034418);
  }

  return result;
}

unint64_t sub_24B6C3164()
{
  result = qword_27F034420;
  if (!qword_27F034420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034420);
  }

  return result;
}

unint64_t sub_24B6C31BC()
{
  result = qword_27F034428;
  if (!qword_27F034428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034428);
  }

  return result;
}

uint64_t sub_24B6C3210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B6C3334()
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](0);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6C3394(uint64_t a1)
{
  MEMORY[0x24C2489B0](0);

  return sub_24B75C358();
}

uint64_t sub_24B6C33E8(uint64_t a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](0);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6C3444(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B75C6B8();
  }
}

__n128 WorkoutContextMenuPreviewFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t WorkoutContextMenuPreviewFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v46 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034430, &unk_24B75F4E0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutContextMenuPreviewAction(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[1];
  v42 = *v4;
  v43 = v16;
  sub_24B6C4800(a4, v15, type metadata accessor for WorkoutContextMenuPreviewAction);
  v17 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = *(type metadata accessor for WorkoutContextMenuPreviewState(0) + 24);
  if (v20 == 1)
  {
    sub_24B6C4800(&a2[v21], v12, type metadata accessor for WorkoutContextMenuPreviewLoadState);
    result = v19(v12, 2, v17);
    if (result)
    {
      if (result == 1)
      {
        v24 = *a2;
        v23 = *(a2 + 1);

        sub_24B6C4868(&a2[v21], type metadata accessor for WorkoutContextMenuPreviewLoadState);
        (*(v18 + 56))(&a2[v21], 2, 2, v17);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
        v26 = v25[16];
        v27 = v25[20];
        v28 = &v9[v25[24]];
        v47 = v24;
        v48 = v23;
        sub_24B6C3990();

        sub_24B75C508();
        sub_24B75C3F8();
        v29 = *MEMORY[0x277D043F0];
        v30 = sub_24B75C208();
        (*(*(v30 - 8) + 104))(&v9[v26], v29, v30);
        v31 = swift_allocObject();
        v32 = v43;
        v31[2] = v42;
        v31[3] = v32;
        v31[4] = v24;
        v31[5] = v23;
        *v28 = &unk_24B75F4F8;
        *(v28 + 1) = v31;
        v33 = *MEMORY[0x277D043E8];
        v34 = sub_24B75C1F8();
        (*(*(v34 - 8) + 104))(&v9[v27], v33, v34);
        v36 = v44;
        v35 = v45;
        (*(v44 + 104))(v9, *MEMORY[0x277D043B0], v45);
        v37 = v46;
        v38 = *v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_24B6C4614(0, v38[2] + 1, 1, v38, &qword_27F034498, &qword_24B75F690, &qword_27F034430, &unk_24B75F4E0);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = sub_24B6C4614((v39 > 1), v40 + 1, 1, v38, &qword_27F034498, &qword_24B75F690, &qword_27F034430, &unk_24B75F4E0);
        }

        v38[2] = v40 + 1;
        result = (*(v36 + 32))(v38 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v40, v9, v35);
        *v37 = v38;
      }
    }

    else
    {
      return sub_24B6C4868(v12, type metadata accessor for WorkoutContextMenuPreviewLoadState);
    }
  }

  else
  {
    sub_24B6C4868(&a2[v21], type metadata accessor for WorkoutContextMenuPreviewLoadState);
    sub_24B6C4228(v15, &a2[v21]);
    return (*(v18 + 56))(&a2[v21], 0, 2, v17);
  }

  return result;
}

unint64_t sub_24B6C3990()
{
  result = qword_27F034440;
  if (!qword_27F034440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034440);
  }

  return result;
}

uint64_t sub_24B6C39E4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  type metadata accessor for WorkoutContextMenuPreviewAction(0);
  v5[3] = swift_task_alloc();
  v9 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v5[4] = v9;
  v5[5] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[6] = v10;
  v5[7] = sub_24B75C3E8();
  v5[8] = sub_24B75C3D8();
  v13 = (a2 + *a2);
  v11 = swift_task_alloc();
  v5[9] = v11;
  *v11 = v5;
  v11[1] = sub_24B6C3BA8;

  return v13(v10, a4, a5);
}

uint64_t sub_24B6C3BA8()
{
  v2 = *v1;
  v2[10] = v0;

  v4 = sub_24B75C3C8();
  v2[11] = v4;
  v2[12] = v3;
  if (v0)
  {
    v5 = sub_24B6C3FF4;
  }

  else
  {
    v5 = sub_24B6C3D08;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B6C3D08()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_24B6C4800(v0[6], v2, type metadata accessor for WorkoutContextMenuPreviewContent);
  (*(v1 + 56))(v2, 0, 1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344A0, &qword_24B75F698);
  *v4 = v0;
  v4[1] = sub_24B6C3E04;
  v6 = v0[3];

  return MEMORY[0x282159B08](v6, v5);
}

uint64_t sub_24B6C3E04()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  sub_24B6C4868(v2, type metadata accessor for WorkoutContextMenuPreviewAction);
  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24B6C3F5C, v4, v3);
}

uint64_t sub_24B6C3F5C()
{
  v1 = *(v0 + 48);

  sub_24B6C4868(v1, type metadata accessor for WorkoutContextMenuPreviewContent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B6C3FF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B6C4070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B6C412C;

  return sub_24B6C39E4(a1, v4, v5, v7, v6);
}

uint64_t sub_24B6C412C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B6C4228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B6C4320()
{
  result = qword_27F034448;
  if (!qword_27F034448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034448);
  }

  return result;
}

uint64_t sub_24B6C43BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6C4404(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B6C444C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B6C4498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B6C44E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B6C4530()
{
  result = qword_27F034450;
  if (!qword_27F034450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034450);
  }

  return result;
}

void *sub_24B6C4614(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_24B6C4800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6C4868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B6C48C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D0, qword_24B75F750);
  sub_24B6C743C(&qword_2810F6968, &qword_27F0344D0, qword_24B75F750, MEMORY[0x277D04410]);

  return sub_24B75B408();
}

uint64_t sub_24B6C4968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  return sub_24B75B268();
}

uint64_t sub_24B6C49D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  sub_24B75B288();
  sub_24B75B278();
  return v2;
}

__n128 sub_24B6C4A48@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24B75BAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75BAC8();
  v6 = *MEMORY[0x277CE0A10];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  v17 = sub_24B75BB28();

  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_24B75BAF8();
  v7(v5, v6, v2);
  v9 = sub_24B75BB28();

  v8(v5, v2);
  sub_24B75BB38();
  v7(v5, v6, v2);
  v10 = sub_24B75BB28();

  v8(v5, v2);
  *a1 = 0x4072F00000000000;
  *(a1 + 8) = v17;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  __asm { FMOV            V0.2D, #20.0 }

  *(a1 + 32) = result;
  *(a1 + 48) = xmmword_24B75F6A0;
  *(a1 + 64) = 0x4028000000000000;
  return result;
}

uint64_t sub_24B6C4C34(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  return sub_24B75B268();
}

uint64_t (*sub_24B6C4CBC())(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  sub_24B75B278();
  *(swift_allocObject() + 16) = v1;
  return sub_24B6C74F4;
}

uint64_t WorkoutContextMenuPreviewView.init(store:artworkViewBuilder:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = a9 + *(type metadata accessor for WorkoutContextMenuPreviewView(0, a7, a8, a4) + 40);
  sub_24B6C4A48(v22);
  v17 = v22[3];
  *(v16 + 32) = v22[2];
  *(v16 + 48) = v17;
  *(v16 + 64) = v23;
  v18 = v22[1];
  *v16 = v22[0];
  *(v16 + 16) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *a9 = sub_24B6C4E74;
  *(a9 + 8) = v19;
  *(a9 + 16) = 0;

  sub_24B6C4968(a3, a4, a7);
  sub_24B6C4C34(a5, a6);
}

uint64_t WorkoutContextMenuPreviewView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v32 = *(a1 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](a1);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344A8, &unk_24B75F6B0);
  v27 = *(a1 + 16);
  v5 = v27;
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B8, &unk_24B75F6C0);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  v6 = sub_24B75C0A8();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_24B75B558();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v30 = &v27 - v13;
  sub_24B6C5368();
  v14 = *(a1 + 24);
  v35 = v5;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v2;
  sub_24B75C158();
  sub_24B75C098();
  v17 = v32;
  v18 = v29;
  (*(v32 + 16))(v29, v2, a1);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v14;
  (*(v17 + 32))(v20 + v19, v18, a1);
  WitnessTable = swift_getWitnessTable();
  v22 = v28;
  sub_24B75BE88();

  (*(v31 + 8))(v8, v6);
  v40 = WitnessTable;
  v41 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v23 = *(v10 + 16);
  v24 = v30;
  v23(v30, v22, v9);
  v25 = *(v10 + 8);
  v25(v22, v9);
  v23(v34, v24, v9);
  return (v25)(v24, v9);
}

void sub_24B6C5368()
{
  sub_24B6C48C8();
  swift_getKeyPath();
  sub_24B75C218();

  if (v9 != 1)
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;

    v10.origin.x = v2;
    v10.origin.y = v4;
    v10.size.width = v6;
    v10.size.height = v8;
    CGRectGetWidth(v10);
    v11.origin.x = v2;
    v11.origin.y = v4;
    v11.size.width = v6;
    v11.size.height = v8;
    CGRectGetHeight(v11);
  }
}

uint64_t sub_24B6C549C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v57 = a1;
  v61 = a4;
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B8, &unk_24B75F6C0);
  swift_getTupleTypeMetadata2();
  v44[2] = sub_24B75C178();
  v44[1] = swift_getWitnessTable();
  v10 = sub_24B75C088();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = v44 - v13;
  v14 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v50 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B75B7B8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v60 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v59 = v44 - v24;
  v58 = sub_24B75BF08();
  sub_24B75C158();
  sub_24B75B458();
  v56 = v73[2];
  v55 = v74;
  v54 = v75;
  v53 = v76;
  v52 = v77;
  v51 = v78;
  v48 = a2;
  v49 = a3;
  type metadata accessor for WorkoutContextMenuPreviewView(0, a2, a3, v25);
  v26 = v57;
  sub_24B6C48C8();
  swift_getKeyPath();
  sub_24B75C218();

  v27 = (*(v15 + 48))(v19, 2, v14);
  v28 = MEMORY[0x277CE1410];
  if (v27)
  {
    WitnessTable = swift_getWitnessTable();
    v30 = v59;
    sub_24B73898C(WitnessTable, MEMORY[0x277CE1428], v10, MEMORY[0x277CE1410], WitnessTable);
  }

  else
  {
    v31 = v50;
    v32 = sub_24B6C4228(v19, v50);
    MEMORY[0x28223BE20](v32);
    v33 = v49;
    v44[-6] = v48;
    v44[-5] = v33;
    v44[-4] = v31;
    v44[-3] = v26;
    *&v44[-2] = a5;
    *&v44[-1] = a6;
    sub_24B75B778();
    v34 = v46;
    sub_24B75C078();
    v57 = swift_getWitnessTable();
    v35 = v47;
    v36 = *(v47 + 16);
    v37 = v45;
    v36(v45, v34, v10);
    v38 = *(v35 + 8);
    v38(v34, v10);
    v36(v34, v37, v10);
    v30 = v59;
    sub_24B738894(v34, MEMORY[0x277CE1428], v10, MEMORY[0x277CE1410], v57);
    v39 = v34;
    v28 = MEMORY[0x277CE1410];
    v38(v39, v10);
    v38(v37, v10);
    sub_24B6C7358(v50, type metadata accessor for WorkoutContextMenuPreviewContent);
  }

  v67[0] = v58;
  v67[1] = v56;
  v68 = v55;
  v69 = v54;
  v70 = v53;
  v71 = v52;
  v72 = v51;
  v73[0] = v67;
  v40 = v60;
  (*(v21 + 16))(v60, v30, v20);
  v73[1] = v40;

  v66[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344A8, &unk_24B75F6B0);
  v66[1] = v20;
  v64 = sub_24B6C73B8();
  v41 = swift_getWitnessTable();
  v62 = v28;
  v63 = v41;
  v65 = swift_getWitnessTable();
  sub_24B7386C4(v73, 2uLL, v66);

  v42 = *(v21 + 8);
  v42(v30, v20);
  v42(v40, v20);
}

uint64_t sub_24B6C5C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a4;
  v73 = a5;
  v74 = a2;
  v67 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v9;
  v10 = sub_24B75B558();
  v68 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = &v62 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v80 = v10;
  v12 = sub_24B75B558();
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  v78 = v12;
  v81 = sub_24B75C4E8();
  v76 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v77 = &v62 - v25;
  v72 = a1;
  sub_24B6B9D34(a1, v18, &qword_27F0344E8, &unk_24B76A050);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_24B6B9CD4(v18, &qword_27F0344E8, &unk_24B76A050);
    v26 = v79;
    v71[7](v79, 1, 1, v78);
    v27 = v82;
    v131 = v82;
    v132 = MEMORY[0x277CDF678];
    WitnessTable = swift_getWitnessTable();
    v29 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
    v129 = WitnessTable;
    v130 = v29;
    swift_getWitnessTable();
    sub_24B6C7508(v26, v77);
    v30 = *(v76 + 8);
    v70 = ((v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v71 = v30;
    (v30)(v26, v81);
    v32 = type metadata accessor for WorkoutContextMenuPreviewView(0, v75, v27, v31);
  }

  else
  {
    v33 = v22;
    v63 = v22;
    sub_24B6C7484(v18, v22);
    v34 = v75;
    v35 = v82;
    v66 = type metadata accessor for WorkoutContextMenuPreviewView(0, v75, v82, v36);
    v37 = sub_24B6C49D0(v66);
    v38 = v65;
    v37(v33);

    sub_24B75C158();
    v39 = v64;
    sub_24B75BE08();
    (*(v67 + 8))(v38, v34);
    v85 = v35;
    v86 = MEMORY[0x277CDF678];
    v40 = v80;
    v41 = swift_getWitnessTable();
    v42 = v70;
    sub_24B75BD18();
    (*(v68 + 8))(v39, v40);
    sub_24B6B9CD4(v63, &qword_27F0344C0, &unk_24B763A50);
    v43 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
    v83 = v41;
    v84 = v43;
    v44 = v78;
    v68 = swift_getWitnessTable();
    v45 = v71;
    v46 = v71[2];
    v47 = v69;
    (v46)(v69, v42, v44);
    v48 = v45[1];
    (v48)(v42, v44);
    (v46)(v42, v47, v44);
    (v48)(v47, v44);
    v49 = v79;
    (v45[4])(v79, v42, v44);
    v45[7](v49, 0, 1, v44);
    sub_24B6C7508(v49, v77);
    v50 = *(v76 + 8);
    v70 = ((v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v71 = v50;
    (v50)(v49, v81);
    v32 = v66;
  }

  v51 = v74;
  v52 = *(v74 + *(v32 + 40) + 48);
  v53 = sub_24B75B778();
  LOBYTE(v95) = 0;
  v54 = v82;
  sub_24B6C680C(v72, v51, v75, v82, v127);
  v121 = v127[10];
  v122 = v127[11];
  v117 = v127[6];
  v118 = v127[7];
  v119 = v127[8];
  v120 = v127[9];
  v113 = v127[2];
  v114 = v127[3];
  v115 = v127[4];
  v116 = v127[5];
  v111 = v127[0];
  v112 = v127[1];
  v124[9] = v127[9];
  v124[10] = v127[10];
  v124[11] = v127[11];
  v124[12] = v127[12];
  v124[5] = v127[5];
  v124[6] = v127[6];
  v124[7] = v127[7];
  v124[8] = v127[8];
  v124[1] = v127[1];
  v124[2] = v127[2];
  v124[3] = v127[3];
  v124[4] = v127[4];
  v123 = v127[12];
  v124[0] = v127[0];
  sub_24B6B9D34(&v111, &v125, &qword_27F0344F8, &unk_24B75F810);
  sub_24B6B9CD4(v124, &qword_27F0344F8, &unk_24B75F810);
  *(&v127[9] + 7) = v120;
  *(&v127[10] + 7) = v121;
  *(&v127[11] + 7) = v122;
  *(&v127[12] + 7) = v123;
  *(&v127[5] + 7) = v116;
  *(&v127[6] + 7) = v117;
  *(&v127[7] + 7) = v118;
  *(&v127[8] + 7) = v119;
  *(&v127[1] + 7) = v112;
  *(&v127[2] + 7) = v113;
  *(&v127[3] + 7) = v114;
  *(&v127[4] + 7) = v115;
  *(v127 + 7) = v111;
  *&v126[161] = v127[10];
  *&v126[177] = v127[11];
  *&v126[193] = v127[12];
  *&v126[97] = v127[6];
  *&v126[113] = v127[7];
  *&v126[129] = v127[8];
  *&v126[145] = v127[9];
  *&v126[33] = v127[2];
  *&v126[49] = v127[3];
  *&v126[65] = v127[4];
  *&v126[81] = v127[5];
  *&v126[1] = v127[0];
  *&v125 = v53;
  *(&v125 + 1) = v52;
  v126[0] = v95;
  *&v126[208] = *(&v123 + 1);
  *&v126[17] = v127[1];
  v55 = v77;
  v56 = v79;
  v57 = v81;
  (*(v76 + 16))(v79, v77, v81);
  v107 = *&v126[176];
  v108 = *&v126[192];
  v109 = *&v126[208];
  v103 = *&v126[112];
  v104 = *&v126[128];
  v105 = *&v126[144];
  v106 = *&v126[160];
  v99 = *&v126[48];
  v100 = *&v126[64];
  v101 = *&v126[80];
  v102 = *&v126[96];
  v95 = v125;
  v96 = *v126;
  v97 = *&v126[16];
  v98 = *&v126[32];
  v110[0] = v56;
  v110[1] = &v95;
  sub_24B6B9D34(&v125, v127, &qword_27F0344B8, &unk_24B75F6C0);
  v94[0] = v57;
  v94[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344B8, &unk_24B75F6C0);
  v90 = v54;
  v91 = MEMORY[0x277CDF678];
  v58 = swift_getWitnessTable();
  v59 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v88 = v58;
  v89 = v59;
  v87 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v93 = sub_24B6C743C(&qword_27F034500, &qword_27F0344B8, &unk_24B75F6C0, MEMORY[0x277CE1198]);
  sub_24B7386C4(v110, 2uLL, v94);
  sub_24B6B9CD4(&v125, &qword_27F0344B8, &unk_24B75F6C0);
  v60 = v71;
  (v71)(v55, v57);
  v127[12] = v107;
  v127[13] = v108;
  v128 = v109;
  v127[8] = v103;
  v127[9] = v104;
  v127[10] = v105;
  v127[11] = v106;
  v127[4] = v99;
  v127[5] = v100;
  v127[6] = v101;
  v127[7] = v102;
  v127[0] = v95;
  v127[1] = v96;
  v127[2] = v97;
  v127[3] = v98;
  sub_24B6B9CD4(v127, &qword_27F0344B8, &unk_24B75F6C0);
  return (v60)(v56, v57);
}

uint64_t sub_24B6C680C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v96 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  v15 = sub_24B75AFE8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v86 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  v87 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v88 = a1;
  v21 = v16;
  sub_24B6B9D34(a1 + *(v87 + 20), v14, &qword_27F034508, &qword_24B761E50);
  v22 = *(v16 + 48);
  v23 = v22(v14, 1, v15);
  v84 = a3;
  v85 = a4;
  if (v23 == 1)
  {
    sub_24B6B9CD4(v14, &qword_27F034508, &qword_24B761E50);
    v101 = 0;
    v102 = 0;
    v94 = 0;
    v95 = 0;
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v99 = 0;
    v100 = 0;
    v98 = 0uLL;
    v97 = 0;
    v24 = v96;
  }

  else
  {
    (*(v21 + 32))(v20, v14, v15);
    v26 = type metadata accessor for WorkoutContextMenuPreviewView(0, a3, a4, v25);
    v27 = sub_24B6C4CBC();
    v102 = v27(v20);
    v94 = v29;
    v95 = v28;
    v30 = v22;
    v31 = v21;
    v33 = v32;

    sub_24B75C168();
    sub_24B75B458();
    v34 = v33 & 1;
    v21 = v31;
    v22 = v30;
    LOBYTE(v125[0]) = v34;
    v92 = v129;
    v93 = v128;
    v91 = v130;
    v100 = v132;
    v101 = v131;
    v99 = v133;
    v97 = v34;
    v35 = *(v26 + 40);
    v24 = v96;
    v36 = *(v96 + v35 + 8);
    *&v98 = swift_getKeyPath();
    *(&v98 + 1) = v36;

    v90 = sub_24B75BF18();
    (*(v21 + 8))(v20, v15);
  }

  v37 = v15;
  v38 = v89;
  sub_24B6B9D34(v88 + *(v87 + 24), v89, &qword_27F034508, &qword_24B761E50);
  if (v22(v38, 1, v15) == 1)
  {
    sub_24B6B9CD4(v38, &qword_27F034508, &qword_24B761E50);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v52 = v86;
    (*(v21 + 32))(v86, v38, v15);
    v54 = type metadata accessor for WorkoutContextMenuPreviewView(0, v84, v85, v53);
    v55 = sub_24B6C4CBC();
    v96 = v55(v52);
    v88 = v57;
    v89 = v56;
    v58 = v21;
    v60 = v59;

    sub_24B75C168();
    sub_24B75B458();
    LOBYTE(v125[0]) = v60 & 1;
    v87 = v134;
    v84 = v136;
    v85 = v135;
    v82 = v138;
    v83 = v137;
    v81 = v139;
    sub_24B6C48C8();
    swift_getKeyPath();
    sub_24B75C218();

    v61 = 24;
    if (LOBYTE(v124[0]))
    {
      v61 = 16;
    }

    v49 = *(v24 + *(v54 + 40) + v61);

    KeyPath = swift_getKeyPath();
    v50 = sub_24B75BF18();
    (*(v58 + 8))(v52, v37);
    v48 = KeyPath;
    v51 = v60 & 1;
    v47 = v81;
    v46 = v82;
    v45 = v83;
    v44 = v84;
    v43 = v85;
    v42 = v87;
    v41 = v88;
    v40 = v89;
    v39 = v96;
  }

  v63 = v94;
  v64 = v95;
  *&v110 = v102;
  *(&v110 + 1) = v95;
  *&v111 = v97;
  *(&v111 + 1) = v94;
  v65 = v92;
  v66 = v93;
  *&v112 = v93;
  *(&v112 + 1) = v92;
  v67 = v90;
  v68 = v91;
  *&v113 = v91;
  *(&v113 + 1) = v101;
  *&v114 = v100;
  *(&v114 + 1) = v99;
  v115 = v98;
  v116 = v90;
  v103 = v110;
  v104 = v111;
  *&v109[0] = v90;
  v107 = v114;
  v108 = v98;
  v105 = v112;
  v106 = v113;
  *&v117 = v39;
  *(&v117 + 1) = v40;
  *&v118 = v51;
  *(&v118 + 1) = v41;
  *&v119 = v42;
  *(&v119 + 1) = v43;
  *&v120 = v44;
  *(&v120 + 1) = v45;
  *&v121 = v46;
  *(&v121 + 1) = v47;
  *&v122 = v48;
  *(&v122 + 1) = v49;
  v123 = v50;
  *(&v109[2] + 8) = v119;
  *(&v109[1] + 8) = v118;
  *(v109 + 8) = v117;
  *(&v109[6] + 1) = v50;
  *(&v109[5] + 8) = v122;
  *(&v109[4] + 8) = v121;
  *(&v109[3] + 8) = v120;
  v69 = v110;
  v70 = v111;
  v71 = v113;
  a5[2] = v112;
  a5[3] = v71;
  *a5 = v69;
  a5[1] = v70;
  v72 = v107;
  v73 = v108;
  v74 = v109[1];
  a5[6] = v109[0];
  a5[7] = v74;
  a5[4] = v72;
  a5[5] = v73;
  v75 = v109[2];
  v76 = v109[3];
  v77 = v109[6];
  a5[11] = v109[5];
  a5[12] = v77;
  v78 = v109[4];
  a5[9] = v76;
  a5[10] = v78;
  a5[8] = v75;
  v124[0] = v39;
  v124[1] = v40;
  v124[2] = v51;
  v124[3] = v41;
  v124[4] = v42;
  v124[5] = v43;
  v124[6] = v44;
  v124[7] = v45;
  v124[8] = v46;
  v124[9] = v47;
  v124[10] = v48;
  v124[11] = v49;
  v124[12] = v50;
  sub_24B6B9D34(&v110, v125, &qword_27F034510, &qword_24B75F820);
  sub_24B6B9D34(&v117, v125, &qword_27F034510, &qword_24B75F820);
  sub_24B6B9CD4(v124, &qword_27F034510, &qword_24B75F820);
  v125[0] = v102;
  v125[1] = v64;
  v125[2] = v97;
  v125[3] = v63;
  v125[4] = v66;
  v125[5] = v65;
  v125[6] = v68;
  v125[7] = v101;
  v125[8] = v100;
  v125[9] = v99;
  v126 = v98;
  v127 = v67;
  return sub_24B6B9CD4(v125, &qword_27F034510, &qword_24B75F820);
}

uint64_t sub_24B6C6F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WorkoutContextMenuPreviewAction(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutContextMenuPreviewView(0, a2, a3, v8);
  sub_24B6C48C8();
  v9 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_24B75C228();

  return sub_24B6C7358(v7, type metadata accessor for WorkoutContextMenuPreviewAction);
}

uint64_t sub_24B6C700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for WorkoutContextMenuPreviewView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_24B6C6F04(v8, v5, v6);
}

void sub_24B6C7124(uint64_t a1)
{
  if (!qword_2810F6978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344D0, qword_24B75F750);
    sub_24B6C743C(&qword_2810F6968, &qword_27F0344D0, qword_24B75F750, MEMORY[0x277D04410]);
    v1 = sub_24B75B418();
    if (!v2)
    {
      atomic_store(v1, &qword_2810F6978);
    }
  }
}

void sub_24B6C71E0(uint64_t a1)
{
  if (!qword_2810F7AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344D8, qword_24B75FA30);
    v1 = sub_24B75B288();
    if (!v2)
    {
      atomic_store(v1, &qword_2810F7AF0);
    }
  }
}

uint64_t sub_24B6C7244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_24B6C72B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24B6C72F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24B6C7358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B6C73B8()
{
  result = qword_27F0344E0;
  if (!qword_27F0344E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344A8, &unk_24B75F6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0344E0);
  }

  return result;
}

uint64_t sub_24B6C743C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24B6C7484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6C7508@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_24B75C4E8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_24B6C7574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034698, &qword_24B75FA28);
  sub_24B6C743C(&qword_27F0346A0, &qword_27F034698, &qword_24B75FA28, MEMORY[0x277D04410]);

  return sub_24B75B408();
}

uint64_t sub_24B6C7614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v18[8] = a9;
  v18[9] = a10;
  v18[10] = a1;
  v18[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  return sub_24B75B268();
}

uint64_t (*sub_24B6C7744(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v2 = *(a1 + 16);
  *&v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  *(&v5 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  sub_24B75B288();
  sub_24B75B278();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = *(a1 + 24);
  *(v3 + 40) = *(a1 + 40);
  *(v3 + 56) = *(a1 + 56);
  *(v3 + 72) = *(a1 + 72);
  *(v3 + 80) = v5;
  return sub_24B6E9AA4;
}

uint64_t (*sub_24B6C7864())(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  sub_24B75B278();
  *(swift_allocObject() + 16) = v1;
  return sub_24B6C74F4;
}

uint64_t WorkoutDetailView.init(store:relatedCanvasViewBuilder:workoutActionsViewBuilder:artworkBannerViewBuilder:artworkViewBuilder:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a5)(uint64_t)@<X4>, void (*a7)(uint64_t)@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)@<X0>(uint64_t x8_0@<X8>), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *a9 = sub_24B6C4E74;
  *(a9 + 8) = v24;
  *(a9 + 16) = 0;
  v33 = a14;
  v34 = a15;
  v35 = a16;
  v36 = a17;
  v37 = a18;
  v38 = a19;
  v39 = a20;
  v40 = a21;
  type metadata accessor for WorkoutDetailView(0, &v33);

  v26 = a3(v25);
  v27 = a5(v26);
  a7(v27);

  sub_24B6C7614(a10, a11, a14, a15, a16, a17, a18, a19, a20, a21);
  v28 = swift_allocObject();
  *(v28 + 16) = a12;
  *(v28 + 24) = a13;
  v33 = sub_24B6C74FC;
  v34 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  sub_24B75B268();
}

BOOL sub_24B6C7B08(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for WorkoutDetail(0) + 88) + 8))
  {
    return 0;
  }

  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  return !v3 && v2 < 7u;
}

uint64_t sub_24B6C7BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  v17 = *(a2 + 16);
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  v16 = *(a2 + 40);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v15[1] = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v28 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  v5 = sub_24B75C088();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B75B788();
  v20 = v17;
  v21 = *(a2 + 24);
  v22 = v16;
  v12 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v12;
  v25 = v3;
  v26 = v18;
  sub_24B75C078();
  swift_getWitnessTable();
  sub_24B6C7504();
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_24B6C7504();
  return (v13)(v11, v5);
}

uint64_t sub_24B6C7F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v31 = a7;
  v29 = a5;
  v32 = a2;
  v30 = a1;
  v34 = a9;
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v14 = sub_24B75B558();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  v36 = a3;
  v37 = a4;
  v38 = v29;
  v39 = a6;
  v40 = v31;
  v41 = v33;
  v42 = a10;
  v43 = a11;
  v21 = v32;
  v44 = v30;
  v45 = v32;
  v48[0] = a3;
  v48[1] = a4;
  v48[2] = v29;
  v48[3] = a6;
  v48[4] = v31;
  v48[5] = v33;
  v48[6] = a10;
  v48[7] = a11;
  v22 = type metadata accessor for WorkoutDetailView(0, v48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0349A8, &qword_24B75FD58);
  v24 = sub_24B6EAAF8();
  sub_24B6C8A54(v21, sub_24B6EAAE0, v35, v22, v23, v24, v17);
  WitnessTable = swift_getWitnessTable();
  v26 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v46 = WitnessTable;
  v47 = v26;
  swift_getWitnessTable();
  sub_24B6C7504();
  v27 = *(v15 + 8);
  v27(v17, v14);
  sub_24B6C7504();
  return (v27)(v20, v14);
}

uint64_t sub_24B6C82D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  *&v52 = a7;
  v55 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v47 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345B0, &qword_24B75F950);
  MEMORY[0x28223BE20](v48);
  v51 = &v47 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0349C0, &qword_24B75FD60);
  v53 = *(v20 - 8);
  *&v54 = v20;
  MEMORY[0x28223BE20](v20);
  v50 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v49 = &v47 - v23;
  v56[0] = a2;
  v56[1] = a3;
  v56[2] = a4;
  v56[3] = a5;
  v57 = a6;
  v58 = v52;
  v59 = a9;
  v60 = a10;
  type metadata accessor for WorkoutDetailView(0, v56);
  if (sub_24B6C7B08(a1))
  {
    sub_24B6C86BC(a1, v18);
    v24 = sub_24B75B9D8();
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v25 = v57;
    if (v57)
    {
      v52 = 0u;
      v47 = 0u;
    }

    else
    {
      sub_24B75B3D8();
      *(&v30 + 1) = v29;
      v47 = v30;
      *(&v32 + 1) = v31;
      v52 = v32;
    }

    v28 = v54;
    v33 = v51;
    sub_24B6B8DE8(v18, v51, &qword_27F0346C0, &qword_24B75FAC0);
    v34 = v33 + *(v48 + 36);
    *v34 = v24;
    *(v34 + 24) = v47;
    *(v34 + 8) = v52;
    *(v34 + 40) = v25;
    v35 = sub_24B75B9F8();
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v36 = v57;
    if (v57)
    {
      v54 = 0u;
      v52 = 0u;
    }

    else
    {
      sub_24B75B3D8();
      *(&v38 + 1) = v37;
      v52 = v38;
      *(&v40 + 1) = v39;
      v54 = v40;
    }

    v41 = v33;
    v42 = v50;
    sub_24B6B8DE8(v41, v50, &qword_27F0345B0, &qword_24B75F950);
    v43 = v42 + *(v28 + 36);
    *v43 = v35;
    *(v43 + 24) = v52;
    *(v43 + 8) = v54;
    *(v43 + 40) = v36;
    v44 = v49;
    sub_24B6B8DE8(v42, v49, &qword_27F0349C0, &qword_24B75FD60);
    v45 = v44;
    v27 = v55;
    sub_24B6B8DE8(v45, v55, &qword_27F0349C0, &qword_24B75FD60);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v27 = v55;
    v28 = v54;
  }

  return (*(v53 + 56))(v27, v26, 1, v28);
}

uint64_t sub_24B6C86BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v31 = sub_24B75B768();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B75BAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v8 = v39;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v27 = v8 == 0 && BYTE1(v36) > 6u;
  v9 = 3;
  if (v27)
  {
    v9 = 0;
  }

  v26 = v9;
  v10 = sub_24B6C7864();
  v11 = type metadata accessor for WorkoutDetail(0);
  v12 = v10(v28 + *(v11 + 112));
  v14 = v13;
  v16 = v15;

  sub_24B75BA58();
  sub_24B75BA78();
  sub_24B75BAD8();

  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
  sub_24B75BB28();

  (*(v5 + 8))(v7, v4);
  v17 = sub_24B75BC18();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_24B6E89A0(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v32 = v17;
  v33 = v19;
  v21 &= 1u;
  v34 = v21;
  v35 = v23;
  v36 = KeyPath;
  v37 = v26;
  v38 = v27;
  sub_24B75B758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
  sub_24B6E8D88();
  sub_24B75BDD8();
  (*(v29 + 8))(v3, v31);
  sub_24B6E89A0(v17, v19, v21);
}

uint64_t sub_24B6C8A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v38 = a5;
  v45 = a3;
  v44 = a2;
  v43 = a1;
  v48 = a7;
  v46 = sub_24B75B588();
  MEMORY[0x28223BE20](v46);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(a4 + 16);
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v65 = a6;
  v66 = MEMORY[0x277CDF918];
  v47 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_24B75B5D8();
  sub_24B75B558();
  v34 = *(a4 + 40);
  swift_getTupleTypeMetadata2();
  v36 = sub_24B75C178();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_24B75C088();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v15 = sub_24B75B558();
  v42 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v39 = &v33 - v19;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v20 = v64;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v21 = 1.77777778;
  if (v20)
  {
    v22 = 14.0;
  }

  else
  {
    v22 = 0.0;
  }

  v50 = *(a4 + 24);
  if (v63 < 7u && v20 == 0)
  {
    v21 = 1.25;
  }

  v24 = *(a4 + 64);
  v53 = *(a4 + 48);
  v49 = v40;
  v51 = v34;
  v52 = v38;
  v54 = v24;
  v55 = v37;
  v56 = v7;
  v57 = v43;
  v58 = v21;
  v59 = v44;
  v60 = v45;
  sub_24B75B778();
  sub_24B75C078();
  v25 = *(v46 + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_24B75B748();
  (*(*(v27 - 8) + 104))(v11 + v25, v26, v27);
  *v11 = v22;
  v11[1] = v22;
  v28 = swift_getWitnessTable();
  sub_24B6EAA80(&qword_27F034820, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  sub_24B75BEA8();
  sub_24B6E9694(v11, MEMORY[0x277CDFC08]);
  (*(v41 + 8))(v14, v12);
  v29 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v61 = v28;
  v62 = v29;
  swift_getWitnessTable();
  v30 = v39;
  sub_24B6C7504();
  v31 = *(v42 + 8);
  v31(v17, v15);
  sub_24B6C7504();
  return (v31)(v30, v15);
}

uint64_t sub_24B6C909C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v101 = a7;
  v94 = a4;
  v93 = a3;
  v73 = a2;
  v102 = a1;
  v97 = a9;
  v103 = a15;
  v100 = a14;
  v98 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v96 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v95 = &v73 - v21;
  v78 = *(v22 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B958();
  v26 = sub_24B75B558();
  v80 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v77 = &v73 - v27;
  v28 = sub_24B75B558();
  v85 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v82 = &v73 - v29;
  v89 = a11;
  v30 = sub_24B75B558();
  v91 = a16;
  v115 = a16;
  v116 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v81 = v30;
  v75 = WitnessTable;
  v32 = sub_24B75B5D8();
  v87 = v28;
  v79 = v32;
  v86 = sub_24B75B558();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v88 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v76 = &v73 - v35;
  MEMORY[0x28223BE20](v36);
  v83 = &v73 - v37;
  v38 = a5;
  v107 = a5;
  v108 = a6;
  v92 = a6;
  v109 = v101;
  v110 = a8;
  v99 = a8;
  v111 = a12;
  v112 = a13;
  v90 = a13;
  v113 = v100;
  v114 = v103;
  v74 = type metadata accessor for WorkoutDetailView(0, &v107);
  v39 = sub_24B6C7744(v74);
  v40 = type metadata accessor for WorkoutDetail(0);
  v41 = v73;
  v42 = v40;
  if (*(v73 + *(v40 + 88) + 8) && *(v73 + *(v40 + 40)) >= 1)
  {
    v43 = sub_24B6E9C10(&unk_285E93A70);
  }

  else
  {
    v43 = MEMORY[0x277D84FA0];
  }

  v44 = *(v42 + 36);
  v45 = v41 + *(v42 + 32);
  v46 = type metadata accessor for WorkoutDetailArtwork(0);
  v39(v45, v41 + v44, v45 + *(v46 + 20), v43);

  v47 = v77;
  sub_24B75BDA8();
  (*(v78 + 8))(v25, v38);
  v48 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v106[6] = a12;
  v106[7] = v48;
  v49 = swift_getWitnessTable();
  v50 = v82;
  sub_24B75BCD8();
  (v80[1])(v47, v26);
  v51 = sub_24B75C148();
  v80 = &v73;
  MEMORY[0x28223BE20](v51);
  v52 = v92;
  *(&v73 - 12) = v38;
  *(&v73 - 11) = v52;
  v53 = v99;
  *(&v73 - 10) = v101;
  *(&v73 - 9) = v53;
  *(&v73 - 8) = v89;
  *(&v73 - 7) = a12;
  v54 = v100;
  *(&v73 - 6) = v90;
  *(&v73 - 5) = v54;
  v55 = v91;
  *(&v73 - 4) = v103;
  *(&v73 - 3) = v55;
  v56 = v94;
  *(&v73 - 2) = v93;
  *(&v73 - 1) = v56;
  v106[4] = v49;
  v106[5] = MEMORY[0x277CE01B0];
  v57 = v87;
  v58 = swift_getWitnessTable();
  v59 = v76;
  sub_24B75BE38();
  (*(v85 + 8))(v50, v57);
  v60 = swift_getWitnessTable();
  v106[2] = v58;
  v106[3] = v60;
  v61 = v86;
  v62 = swift_getWitnessTable();
  v63 = v83;
  sub_24B6C7504();
  v64 = v84;
  v101 = *(v84 + 8);
  v101(v59, v61);
  v65 = v95;
  v66 = v103;
  sub_24B6C7504();
  v67 = v88;
  (*(v64 + 16))(v88, v63, v61);
  v107 = v67;
  v68 = v98;
  v69 = v96;
  (*(v98 + 16))(v96, v65, v53);
  v108 = v69;
  v106[0] = v61;
  v106[1] = v53;
  v104 = v62;
  v105 = v66;
  sub_24B7386C4(&v107, 2uLL, v106);
  v70 = *(v68 + 8);
  v70(v65, v53);
  v71 = v101;
  v101(v63, v61);
  v70(v69, v53);
  return v71(v67, v61);
}

uint64_t sub_24B6C99A8@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[1] = a3;
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B75B558();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v22 - v18;
  a1(v17);
  sub_24B75B9C8();
  sub_24B75BE48();
  (*(v9 + 8))(v11, a2);
  v22[2] = a7;
  v22[3] = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_24B6C7504();
  v20 = *(v13 + 8);
  v20(v15, v12);
  sub_24B6C7504();
  return (v20)(v19, v12);
}

uint64_t sub_24B6C9BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v18 = *(a2 + 32);
  v19 = *(a2 + 64);
  v31 = v18;
  v32 = v19;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v17[1] = swift_getWitnessTable();
  v5 = sub_24B75C088();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v12 = v34;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (v33 < 4u && v12 == 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  sub_24B75B788();
  v22 = *(a2 + 16);
  v23 = v18;
  v24 = *(a2 + 40);
  v25 = *(a2 + 56);
  v26 = v19;
  v27 = *(a2 + 72);
  v28 = v3;
  v29 = v20;
  v30 = v14;
  sub_24B75C078();
  swift_getWitnessTable();
  sub_24B6C7504();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_24B6C7504();
  return (v15)(v11, v5);
}

uint64_t sub_24B6C9F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12)
{
  v77 = a7;
  v78 = a8;
  v76 = a5;
  v74 = a4;
  v95 = a3;
  v96 = a9;
  v79 = a1;
  v75 = a12;
  v73 = a10;
  v14 = sub_24B75B1F8();
  v93 = *(v14 - 8);
  v94 = v14;
  MEMORY[0x28223BE20](v14);
  v89 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_24B75AF28();
  MEMORY[0x28223BE20](v88);
  v86 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034548, &qword_24B75F8F8);
  v91 = *(v17 - 8);
  v92 = v17;
  MEMORY[0x28223BE20](v17);
  v90 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v87 = v68 - v20;
  v21 = sub_24B75C2B8();
  v83 = *(v21 - 8);
  v84 = v21;
  MEMORY[0x28223BE20](v21);
  OpaqueTypeConformance2 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B75C258();
  MEMORY[0x28223BE20](v23 - 8);
  v72 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24B75C278();
  MEMORY[0x28223BE20](v25 - 8);
  v68[1] = v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348B8, &qword_24B75FC50);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = v68 - v28;
  v30 = a6;
  v69 = a11;
  v70 = a6;
  v106 = a6;
  v107 = a11;
  v80 = MEMORY[0x277D7EDA0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v101 = v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v99 = v68 - v33;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034540, &qword_24B75F8F0);
  MEMORY[0x28223BE20](v85);
  v98 = v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v68 - v36;
  v100 = v68 - v36;
  v38 = type metadata accessor for WorkoutDetail(0);
  v39 = *(a2 + v38[11]);
  v40 = v38[14];
  v41 = *(a2 + v38[29]);
  v71 = a2;
  v106 = v74;
  v107 = v76;
  v108 = v30;
  v109 = v77;
  v110 = v78;
  v111 = v73;
  v112 = a11;
  v113 = v75;
  v78 = type metadata accessor for WorkoutDetailView(0, &v106);
  sub_24B6CA914(v39, a2 + v40, v41, v78, v37);
  sub_24B75C268();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348E0, &qword_24B75FCC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B75F8A0;
  strcpy((inited + 32), "impressionType");
  v43 = MEMORY[0x277D837D0];
  *(inited + 47) = -18;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v43;
  *(inited + 80) = 0x6973736572706D69;
  v44 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v44;
  *(inited + 128) = 0x657079546469;
  *(inited + 168) = v43;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x64695F737469;
  *(inited + 152) = 0xE600000000000000;
  sub_24B6E9D4C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348E8, &qword_24B75FCD0);
  swift_arrayDestroy();
  sub_24B75C248();
  v45 = MEMORY[0x277D84F90];
  sub_24B6E9D4C(MEMORY[0x277D84F90]);
  sub_24B6E9D4C(v45);
  sub_24B75C288();
  v46 = sub_24B75C298();
  (*(*(v46 - 8) + 56))(v29, 0, 1, v46);
  v47 = OpaqueTypeConformance2;
  sub_24B75C2A8();
  v48 = v101;
  v49 = v69;
  v50 = v70;
  sub_24B75BC78();
  (*(v83 + 8))(v47, v84);
  sub_24B6B9CD4(v29, &qword_27F0348B8, &qword_24B75FC50);
  v106 = v50;
  v107 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = OpaqueTypeMetadata2;
  sub_24B6C7504();
  v83 = *(v97 + 8);
  v84 = v97 + 8;
  (v83)(v48, v51);
  v80 = v38[27];
  v52 = v71;
  sub_24B75AF18();
  sub_24B6EAA80(&qword_27F034938, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v53 = sub_24B75C378();
  v55 = v54;
  v56 = v78;
  sub_24B6C7574();
  swift_getKeyPath();
  v57 = v89;
  sub_24B75C218();

  v58 = v87;
  sub_24B6CA9B4(v52 + v80, v53, v55, v57, v95, v56, v87);

  (*(v93 + 8))(v57, v94);
  v59 = v98;
  sub_24B6B9D34(v100, v98, &qword_27F034540, &qword_24B75F8F0);
  v106 = v59;
  v60 = v101;
  v61 = v99;
  (*(v97 + 16))(v101, v99, v51);
  v107 = v60;
  v63 = v90;
  v62 = v91;
  v64 = v92;
  (*(v91 + 16))(v90, v58, v92);
  v108 = v63;
  v105[0] = v85;
  v105[1] = v51;
  v105[2] = v64;
  v102 = sub_24B6C743C(&qword_27F034940, &qword_27F034540, &qword_24B75F8F0, MEMORY[0x277CE1198]);
  v103 = OpaqueTypeConformance2;
  v104 = sub_24B6C743C(&qword_27F034948, &qword_27F034548, &qword_24B75F8F8, MEMORY[0x277D09728]);
  sub_24B7386C4(&v106, 3uLL, v105);
  v65 = *(v62 + 8);
  v65(v58, v64);
  v66 = v83;
  (v83)(v61, v51);
  sub_24B6B9CD4(v100, &qword_27F034540, &qword_24B75F8F0);
  v65(v63, v64);
  v66(v101, v51);
  return sub_24B6B9CD4(v98, &qword_27F034540, &qword_24B75F8F0);
}

uint64_t sub_24B6CA914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_24B75B788();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034950, &qword_24B75FCF8);
  return sub_24B6CAF34(a1, a3, v5, a2, a4[2], a4[3], a4[4], a4[5], a5 + *(v11 + 44), a4[6], a4[7], a4[8], a4[9]);
}

uint64_t sub_24B6CA9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v74 = a5;
  v71 = a4;
  v72 = a7;
  v76 = a3;
  v73 = a2;
  v70 = sub_24B75B1F8();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24B75AFE8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a6 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v69 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  v22 = *(v15 + 16);
  v65 = v15 + 16;
  v66 = v22;
  (v22)(&v51 - v20, v75, a6, v19);
  (*(v12 + 16))(v14, a1, v11);
  v23 = *(v15 + 80);
  v64 = ((v23 + 80) & ~v23) + v16;
  v24 = (v23 + 80) & ~v23;
  v52 = v24;
  v63 = v23 | 7;
  v25 = (v64 + *(v12 + 80)) & ~*(v12 + 80);
  v26 = swift_allocObject();
  v27 = a6[2];
  v61 = a6[3];
  v28 = v61;
  v62 = v27;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v29 = a6[4];
  v59 = a6[5];
  v30 = v59;
  v60 = v29;
  *(v26 + 4) = v29;
  *(v26 + 5) = v30;
  v31 = a6[6];
  v57 = a6[7];
  v32 = v57;
  v58 = v31;
  *(v26 + 6) = v31;
  *(v26 + 7) = v32;
  v56 = a6[8];
  v55 = a6[9];
  v33 = v55;
  *(v26 + 8) = v56;
  *(v26 + 9) = v33;
  v34 = *(v15 + 32);
  v53 = v15 + 32;
  v54 = v34;
  v34(&v26[v24], v21, a6);
  (*(v12 + 32))(&v26[v25], v14, v11);

  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = ObjCClassFromMetadata;
  v36 = objc_opt_self();
  v37 = [v36 bundleForClass_];
  v38 = v68;
  v39 = *(v67 + 16);
  v40 = v70;
  v41 = v71;
  v39(v68, v71, v70);
  sub_24B75C348();
  v67 = v42;
  sub_24B75C2E8();
  v43 = [v36 bundleForClass_];
  v39(v38, v41, v40);
  sub_24B75C348();
  v44 = v69;
  v66(v69, v75, a6);
  v45 = swift_allocObject();
  v46 = v61;
  *(v45 + 2) = v62;
  *(v45 + 3) = v46;
  v47 = v59;
  *(v45 + 4) = v60;
  *(v45 + 5) = v47;
  v48 = v57;
  *(v45 + 6) = v58;
  *(v45 + 7) = v48;
  v49 = v55;
  *(v45 + 8) = v56;
  *(v45 + 9) = v49;
  v54(&v45[v52], v44, a6);
  return sub_24B75B318();
}

uint64_t sub_24B6CAF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v84 = a7;
  v85 = a8;
  v83 = a6;
  v81 = a5;
  v74 = a4;
  v86 = a3;
  v70 = a2;
  v71 = a1;
  v77 = a9;
  v82 = a13;
  v79 = a11;
  v80 = a12;
  v78 = a10;
  v76 = sub_24B75BAE8();
  v72 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034958, &qword_24B75FD00);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034960, &qword_24B75FD08);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034918, &unk_24B75FCE0);
  v69 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034968, &qword_24B75FD10);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034970, &qword_24B75FD18);
  MEMORY[0x28223BE20](v27 - 8);
  v73 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v32 = &v61 - v30;
  if (*(v71 + 16))
  {
    (*(v24 + 56))(&v61 - v30, 1, 1, v23, v31);
  }

  else
  {
    v62 = v24;
    v63 = &v61 - v30;
    v64 = v19;
    v33 = v69;
    v65 = v17;
    v66 = v26;
    v67 = v20;
    v68 = v23;
    v71 = v14;
    v34 = v70;
    if (*(v70 + 16) == 1)
    {
      v35 = *(*(type metadata accessor for WorkoutDetailTrainer(0) - 8) + 80);
      v87 = v81;
      v88 = v83;
      v36 = (v35 + 32) & ~v35;
      v89 = v84;
      v90 = v85;
      v91 = v78;
      v92 = v79;
      v93 = v80;
      v94 = v82;
      v37 = type metadata accessor for WorkoutDetailView(0, &v87);
      sub_24B6CB7B8(v34 + v36, v37, v22);
      v38 = v67;
      (*(v33 + 16))(v64, v22, v67);
      swift_storeEnumTagMultiPayload();
      sub_24B6C743C(&qword_27F034910, &qword_27F034918, &unk_24B75FCE0, MEMORY[0x277CDF028]);
      sub_24B6C743C(&qword_27F034980, &qword_27F034958, &qword_24B75FD00, MEMORY[0x277CE1138]);
      v39 = v66;
      sub_24B75B7A8();
      (*(v33 + 8))(v22, v38);
    }

    else
    {
      v87 = v81;
      v88 = v83;
      v89 = v84;
      v90 = v85;
      v91 = v78;
      v92 = v79;
      v93 = v80;
      v94 = v82;
      type metadata accessor for WorkoutDetailView(0, &v87);
      sub_24B6CB9EC(v34, v16);
      sub_24B6B9D34(v16, v64, &qword_27F034958, &qword_24B75FD00);
      swift_storeEnumTagMultiPayload();
      sub_24B6C743C(&qword_27F034910, &qword_27F034918, &unk_24B75FCE0, MEMORY[0x277CDF028]);
      sub_24B6C743C(&qword_27F034980, &qword_27F034958, &qword_24B75FD00, MEMORY[0x277CE1138]);
      v39 = v66;
      sub_24B75B7A8();
      sub_24B6B9CD4(v16, &qword_27F034958, &qword_24B75FD00);
    }

    v40 = v68;
    v41 = v62;
    v32 = v63;
    sub_24B6B8DE8(v39, v63, &qword_27F034968, &qword_24B75FD10);
    (*(v41 + 56))(v32, 0, 1, v40);
  }

  v87 = v81;
  v88 = v83;
  v89 = v84;
  v90 = v85;
  v91 = v78;
  v92 = v79;
  v93 = v80;
  v94 = v82;
  type metadata accessor for WorkoutDetailView(0, &v87);
  v42 = sub_24B6C7864();
  v43 = v42(v74);
  v45 = v44;
  v47 = v46;

  sub_24B75BB38();
  v48 = v72;
  v50 = v75;
  v49 = v76;
  (*(v72 + 104))(v75, *MEMORY[0x277CE0A10], v76);
  sub_24B75BB28();

  (*(v48 + 8))(v50, v49);
  v51 = sub_24B75BC18();
  v53 = v52;
  LOBYTE(v48) = v54;
  v56 = v55;

  sub_24B6E89A0(v43, v45, v47 & 1);

  v57 = v73;
  sub_24B6B9D34(v32, v73, &qword_27F034970, &qword_24B75FD18);
  v58 = v77;
  sub_24B6B9D34(v57, v77, &qword_27F034970, &qword_24B75FD18);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034978, &qword_24B75FD20) + 48);
  *v59 = v51;
  *(v59 + 8) = v53;
  LOBYTE(v48) = v48 & 1;
  *(v59 + 16) = v48;
  *(v59 + 24) = v56;
  *(v59 + 32) = 256;
  sub_24B6E8EF0(v51, v53, v48);

  sub_24B6B9CD4(v32, &qword_27F034970, &qword_24B75FD18);
  sub_24B6E89A0(v51, v53, v48);

  return sub_24B6B9CD4(v57, &qword_27F034970, &qword_24B75FD18);
}

uint64_t sub_24B6CB7B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v21[1] = a3;
  v7 = type metadata accessor for WorkoutDetailTrainer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 1);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  (*(v11 + 16))(v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v14);
  sub_24B6EA848(a1, v10, type metadata accessor for WorkoutDetailTrainer);
  v15 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v16 = (v12 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = a2[2];
  *(v17 + 1) = a2[1];
  *(v17 + 2) = v18;
  v19 = a2[4];
  *(v17 + 3) = a2[3];
  *(v17 + 4) = v19;
  (*(v11 + 32))(&v17[v15], v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_24B6EA8B0(v10, &v17[v16], type metadata accessor for WorkoutDetailTrainer);
  v22 = a1;
  return sub_24B75BFE8();
}

uint64_t sub_24B6CB9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24B75B6B8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034988, &unk_24B75FD28);
  v9 = a1;
  KeyPath = swift_getKeyPath();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034990, &qword_24B75FD50);
  v6 = sub_24B6C743C(&qword_27F034998, &qword_27F034990, &qword_24B75FD50, MEMORY[0x277D83980]);
  v7 = sub_24B6EAA80(&qword_27F0349A0, type metadata accessor for WorkoutDetailTrainer, &protocol conformance descriptor for WorkoutDetailTrainer);
  return sub_24B75C0D8(&v9, KeyPath, sub_24B6CBEEC, 0, v5, MEMORY[0x277CE0BD8], v6, v7, MEMORY[0x277CE0BC8]);
}

uint64_t sub_24B6CBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a1;
  v23 = a2;
  v16 = type metadata accessor for WorkoutDetailAction(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v24[5] = a8;
  v24[6] = a9;
  v24[7] = a10;
  type metadata accessor for WorkoutDetailView(0, v24);
  sub_24B6C7574();
  v19 = (v23 + *(type metadata accessor for WorkoutDetailTrainer(0) + 24));
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;
  swift_storeEnumTagMultiPayload();

  sub_24B75C228();

  return sub_24B6E9694(v18, type metadata accessor for WorkoutDetailAction);
}

uint64_t sub_24B6CBC6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_24B75BAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for WorkoutDetailTrainer(0) + 28));
  v8 = v7[1];
  v30 = *v7;
  v31 = v8;
  sub_24B6E89B0();

  v9 = sub_24B75BC48();
  v11 = v10;
  v13 = v12;
  sub_24B75BA38();
  sub_24B75BA78();
  sub_24B75BAD8();

  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  sub_24B75BB28();

  (*(v4 + 8))(v6, v3);
  v14 = sub_24B75BC18();
  v16 = v15;
  v18 = v17;

  sub_24B6E89A0(v9, v11, v13 & 1);

  if (qword_27F033CE0 != -1)
  {
    swift_once();
  }

  v30 = qword_27F034518;

  v19 = sub_24B75BBE8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_24B6E89A0(v14, v16, v18 & 1);

  v27 = v29;
  *v29 = v19;
  v27[1] = v21;
  *(v27 + 16) = v23 & 1;
  v27[3] = v25;
  return result;
}

uint64_t sub_24B6CBEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B75BAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for WorkoutDetailTrainer(0) + 28));
  v9 = v8[1];
  v23[2] = *v8;
  v23[3] = v9;
  sub_24B6E89B0();

  v10 = sub_24B75BC48();
  v12 = v11;
  v14 = v13;
  sub_24B75BA38();
  sub_24B75BA78();
  sub_24B75BAD8();

  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
  sub_24B75BB28();

  (*(v5 + 8))(v7, v4);
  v15 = sub_24B75BC18();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_24B6E89A0(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_24B6CC0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a9;
  v14[7] = a10;
  type metadata accessor for WorkoutDetailView(0, v14);
  v11 = sub_24B6C7864();
  v12 = v11(a2);

  return v12;
}

uint64_t sub_24B6CC168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a1;
  v24 = a3;
  v21 = a2;
  v25 = a5;
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  v20 = *(a4 + 16);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v52 = *(a4 + 48);
  v6 = v52;
  v53 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v51 = MEMORY[0x277CDF678];
  v48 = swift_getWitnessTable();
  v49 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v7 = swift_getWitnessTable();
  v45 = MEMORY[0x277CE1340];
  v46 = v7;
  v47 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B958();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v40 = v19[0];
  v41 = MEMORY[0x277D837D0];
  v42 = OpaqueTypeMetadata2;
  v43 = v9;
  v44 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  v10 = sub_24B75C088();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v19 - v15;
  sub_24B75B788();
  v26 = v20;
  v27 = *(a4 + 24);
  v28 = *(a4 + 40);
  v29 = v6;
  v30 = *(a4 + 56);
  v31 = *(a4 + 72);
  v32 = v23;
  v33 = v21;
  v34 = v22;
  v35 = v24;
  sub_24B75C078();
  swift_getWitnessTable();
  sub_24B6C7504();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_24B6C7504();
  return (v17)(v16, v10);
}

uint64_t sub_24B6CC7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v104 = a8;
  v103 = a7;
  v90 = a6;
  v100 = a4;
  v99 = a3;
  v95 = a2;
  v94 = a1;
  v101 = a9;
  v105 = a12;
  v89 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v97 = *(v17 - 8);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = &v74 - v18;
  v109 = a5;
  v110 = a6;
  v111 = a7;
  v112 = a8;
  v113 = a10;
  v114 = a11;
  v115 = a12;
  v116 = a13;
  v77 = a13;
  v92 = type metadata accessor for WorkoutDetailView(0, &v109);
  v91 = *(v92 - 8);
  v93 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v88 = &v74 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  v76 = a5;
  sub_24B75B558();
  v20 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v21 = sub_24B75B558();
  v108[11] = a10;
  v108[12] = MEMORY[0x277CE01B0];
  v75 = a10;
  v108[9] = swift_getWitnessTable();
  v108[10] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v23 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v108[7] = WitnessTable;
  v108[8] = v23;
  v24 = swift_getWitnessTable();
  v109 = v20;
  v110 = MEMORY[0x277CE1350];
  v111 = v21;
  v112 = v21;
  v113 = WitnessTable;
  v114 = MEMORY[0x277CE1340];
  v115 = v24;
  v116 = v24;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v108[5] = v25;
  v108[6] = v26;
  swift_getWitnessTable();
  v27 = sub_24B75C088();
  v28 = swift_getWitnessTable();
  v109 = v27;
  v110 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B958();
  v29 = sub_24B75B558();
  v109 = v27;
  v110 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v108[3] = OpaqueTypeConformance2;
  v108[4] = v31;
  v83 = v29;
  v82 = swift_getWitnessTable();
  v109 = v29;
  v110 = v82;
  v80 = MEMORY[0x277CE0CA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = OpaqueTypeMetadata2;
  v33 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v109 = v102;
  v110 = MEMORY[0x277D837D0];
  v111 = OpaqueTypeMetadata2;
  v112 = v33;
  v113 = MEMORY[0x277D837E0];
  v86 = sub_24B75C0F8();
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v79 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v84 = &v74 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034550, &qword_24B75F900);
  v78 = v37;
  MEMORY[0x28223BE20](v37);
  v81 = &v74 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v74 - v40;
  *v41 = sub_24B75B6B8();
  *(v41 + 1) = 0;
  v41[16] = 1;
  v42 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034778, &qword_24B75FB40) + 44)];
  v43 = v41;
  v102 = v41;
  v44 = v94;
  v45 = v95;
  v46 = v90;
  v47 = v89;
  sub_24B6CD3E8(v94, v95, a5, v90, v103, v104, a10, v89, v42, v105, a13);
  v48 = sub_24B75B9C8();
  sub_24B75B3D8();
  v49 = &v43[*(v37 + 36)];
  *v49 = v48;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  v54 = v91;
  v55 = v88;
  v56 = v92;
  (*(v91 + 16))(v88, v44, v92);
  v57 = v96;
  sub_24B6B9D34(v45, v96, &qword_27F034118, &qword_24B75E1D8);
  v58 = (*(v54 + 80) + 80) & ~*(v54 + 80);
  v59 = (v93 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (*(v97 + 80) + v59 + 9) & ~*(v97 + 80);
  v61 = swift_allocObject();
  *(v61 + 2) = v76;
  *(v61 + 3) = v46;
  v62 = v104;
  *(v61 + 4) = v103;
  *(v61 + 5) = v62;
  *(v61 + 6) = v75;
  *(v61 + 7) = v47;
  v63 = v77;
  *(v61 + 8) = v105;
  *(v61 + 9) = v63;
  (*(v54 + 32))(&v61[v58], v55, v56);
  v64 = &v61[v59];
  *v64 = v99;
  v64[8] = v100;
  sub_24B6B8DE8(v57, &v61[v60], &qword_27F034118, &qword_24B75E1D8);
  type metadata accessor for WorkoutDetailMusicTrack(0);
  swift_bridgeObjectRetain_n();
  v109 = v83;
  v110 = v82;
  v65 = swift_getOpaqueTypeConformance2();
  sub_24B6EAA80(&qword_27F034780, type metadata accessor for WorkoutDetailMusicTrack, &protocol conformance descriptor for WorkoutDetailMusicTrack);
  sub_24B6EAA80(&qword_27F034788, type metadata accessor for WorkoutDetailMusicTrack, &protocol conformance descriptor for WorkoutDetailMusicTrack);
  v66 = v79;
  sub_24B75C0C8();
  v108[2] = v65;
  v67 = v86;
  v68 = swift_getWitnessTable();
  v69 = v84;
  sub_24B6C7504();
  v70 = v87;
  v71 = *(v87 + 8);
  v71(v66, v67);
  v72 = v81;
  sub_24B6B9D34(v102, v81, &qword_27F034550, &qword_24B75F900);
  v109 = v72;
  (*(v70 + 16))(v66, v69, v67);
  v110 = v66;
  v108[0] = v78;
  v108[1] = v67;
  v106 = sub_24B6E9094();
  v107 = v68;
  sub_24B7386C4(&v109, 2uLL, v108);
  v71(v69, v67);
  sub_24B6B9CD4(v102, &qword_27F034550, &qword_24B75F900);
  v71(v66, v67);
  return sub_24B6B9CD4(v72, &qword_27F034550, &qword_24B75F900);
}

uint64_t sub_24B6CD3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v155 = a2;
  v163 = a1;
  v161 = a9;
  v132 = a3;
  v133 = a4;
  v175 = a3;
  v176 = a4;
  v134 = a5;
  v177 = a5;
  v178 = a6;
  v136 = a6;
  v137 = a7;
  v179 = a7;
  v180 = a8;
  v138 = a8;
  v130 = a10;
  v131 = a11;
  v181 = a10;
  v182 = a11;
  v171 = type metadata accessor for WorkoutDetailView(0, &v175);
  v129 = *(v171 - 8);
  v126 = *(v129 + 64);
  MEMORY[0x28223BE20](v171);
  v127 = v124 - v11;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348A0, &qword_24B75FC38);
  MEMORY[0x28223BE20](v139);
  v128 = v124 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348A8, &qword_24B75FC40);
  v159 = *(v13 - 8);
  v160 = v13;
  MEMORY[0x28223BE20](v13);
  v135 = v124 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v15 - 8);
  v154 = v124 - v16;
  v172 = sub_24B75B108();
  v166 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v124[1] = v17;
  v125 = v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v156 = v124 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348B0, &qword_24B75FC48);
  MEMORY[0x28223BE20](v20 - 8);
  v158 = v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v157 = v124 - v23;
  v24 = sub_24B75B768();
  v152 = *(v24 - 8);
  v153 = v24;
  MEMORY[0x28223BE20](v24);
  v151 = v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24B75C2B8();
  v149 = *(v26 - 8);
  v150 = v26;
  MEMORY[0x28223BE20](v26);
  v148 = v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24B75C258();
  MEMORY[0x28223BE20](v28 - 8);
  v144 = v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v30 - 8);
  v162 = v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v32 - 8);
  v141 = v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B75C278();
  MEMORY[0x28223BE20](v34 - 8);
  v140 = v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348B8, &qword_24B75FC50);
  MEMORY[0x28223BE20](v36 - 8);
  v143 = v124 - v37;
  v38 = sub_24B75BAE8();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24B75B718();
  MEMORY[0x28223BE20](v42 - 8);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348C0, &qword_24B75FC58);
  MEMORY[0x28223BE20](v165);
  v164 = v124 - v43;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348C8, &qword_24B75FC60);
  v147 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v142 = v124 - v44;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348D0, &qword_24B75FC68);
  MEMORY[0x28223BE20](v146);
  v168 = v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v167 = v124 - v47;
  sub_24B75B708();
  sub_24B75B6F8();
  sub_24B75BF98();
  sub_24B75B6D8();

  sub_24B75B6F8();
  sub_24B75B738();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v170 = ObjCClassFromMetadata;
  v169 = objc_opt_self();
  v49 = [v169 bundleForClass_];
  v50 = sub_24B75BC28();
  v52 = v51;
  v54 = v53;
  sub_24B75BAB8();
  sub_24B75BA78();
  sub_24B75BAD8();

  (*(v39 + 104))(v41, *MEMORY[0x277CE0A10], v38);
  sub_24B75BB28();

  (*(v39 + 8))(v41, v38);
  sub_24B75BB18();

  v55 = sub_24B75BC18();
  v57 = v56;
  v59 = v58;
  v61 = v60;

  sub_24B6E89A0(v50, v52, v54 & 1);

  v62 = v164;
  v63 = &v164[*(v165 + 36)];
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348D8, &qword_24B75FC70) + 28);
  v65 = *MEMORY[0x277CE1050];
  v66 = sub_24B75BFA8();
  (*(*(v66 - 8) + 104))(v63 + v64, v65, v66);
  *v63 = swift_getKeyPath();
  *v62 = v55;
  *(v62 + 1) = v57;
  v62[16] = v59 & 1;
  *(v62 + 3) = v61;
  v175 = 0;
  v176 = 0xE000000000000000;
  sub_24B75C548();

  v175 = 0x5F74756F6B726F77;
  v176 = 0xE800000000000000;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  MEMORY[0x24C248630](v173, v174);

  MEMORY[0x24C248630](0x7254636973756D5FLL, 0xEC000000736B6361);
  sub_24B75C268();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348E0, &qword_24B75FCC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B75F8B0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_24B75C2E8();
  v68 = [v169 bundleForClass_];
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v69 = sub_24B75C348();
  v70 = MEMORY[0x277D837D0];
  *(inited + 48) = v69;
  *(inited + 56) = v71;
  *(inited + 72) = v70;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 120) = v70;
  *(inited + 128) = 0x6973736572706D69;
  v72 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = 0;
  *(inited + 168) = v72;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v70;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B6E9D4C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348E8, &qword_24B75FCD0);
  swift_arrayDestroy();
  sub_24B75C248();
  v73 = MEMORY[0x277D84F90];
  sub_24B6E9D4C(MEMORY[0x277D84F90]);
  sub_24B6E9D4C(v73);
  v74 = v143;
  sub_24B75C288();
  v75 = sub_24B75C298();
  v76 = v74;
  (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
  v77 = v148;
  sub_24B75C2A8();
  v78 = sub_24B6E9E90();
  v79 = v142;
  v80 = v164;
  v81 = v165;
  sub_24B75BC78();
  (*(v149 + 8))(v77, v150);
  sub_24B6B9CD4(v76, &qword_27F0348B8, &qword_24B75FC50);
  sub_24B6B9CD4(v80, &qword_27F0348C0, &qword_24B75FC58);
  sub_24B75C2E8();
  v82 = [v169 bundleForClass_];
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v83 = sub_24B75BB58();
  v85 = v84;
  LOBYTE(v62) = v86;
  v175 = v81;
  v176 = v78;
  swift_getOpaqueTypeConformance2();
  v87 = v168;
  v88 = v145;
  sub_24B75BD88();
  v89 = v83;
  v90 = v154;
  sub_24B6E89A0(v89, v85, v62 & 1);

  (*(v147 + 8))(v79, v88);
  v91 = v151;
  sub_24B75B758();
  sub_24B75B548();
  (*(v152 + 8))(v91, v153);
  sub_24B6B9CD4(v87, &qword_27F0348D0, &qword_24B75FC68);
  sub_24B6B9D34(v155, v90, &qword_27F034118, &qword_24B75E1D8);
  v92 = v166;
  if ((*(v166 + 48))(v90, 1, v172) == 1)
  {
    sub_24B6B9CD4(v90, &qword_27F034118, &qword_24B75E1D8);
    v93 = 1;
    v94 = v157;
  }

  else
  {
    v165 = *(v92 + 32);
    v95 = v156;
    (v165)(v156, v90, v172);
    sub_24B75C2E8();
    v96 = [v169 bundleForClass_];
    v97 = v171;
    v98 = v163;
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v175 = sub_24B75C348();
    v176 = v99;
    v100 = v129;
    v101 = v127;
    (*(v129 + 16))(v127, v98, v97);
    v102 = v166 + 16;
    v103 = v125;
    v104 = v95;
    v105 = v172;
    (*(v166 + 16))(v125, v104, v172);
    v106 = (*(v100 + 80) + 80) & ~*(v100 + 80);
    v107 = (v126 + *(v102 + 64) + v106) & ~*(v102 + 64);
    v108 = swift_allocObject();
    v109 = v133;
    *(v108 + 2) = v132;
    *(v108 + 3) = v109;
    v110 = v136;
    v111 = v137;
    *(v108 + 4) = v134;
    *(v108 + 5) = v110;
    v112 = v138;
    *(v108 + 6) = v111;
    *(v108 + 7) = v112;
    v113 = v131;
    *(v108 + 8) = v130;
    *(v108 + 9) = v113;
    (*(v100 + 32))(&v108[v106], v101, v97);
    (v165)(&v108[v107], v103, v105);
    sub_24B6E89B0();
    v114 = v128;
    sub_24B75C008();
    v115 = v166;
    if (qword_27F033CE0 != -1)
    {
      swift_once();
    }

    *(v114 + *(v139 + 36)) = qword_27F034518;
    sub_24B6E9F74();

    v116 = v135;
    sub_24B75BDF8();
    sub_24B6B9CD4(v114, &qword_27F0348A0, &qword_24B75FC38);
    (*(v115 + 8))(v156, v172);
    v94 = v157;
    sub_24B6B8DE8(v116, v157, &qword_27F0348A8, &qword_24B75FC40);
    v93 = 0;
  }

  (*(v159 + 56))(v94, v93, 1, v160);
  v117 = v167;
  v118 = v168;
  sub_24B6B9D34(v167, v168, &qword_27F0348D0, &qword_24B75FC68);
  v119 = v158;
  sub_24B6B9D34(v94, v158, &qword_27F0348B0, &qword_24B75FC48);
  v120 = v161;
  sub_24B6B9D34(v118, v161, &qword_27F0348D0, &qword_24B75FC68);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034900, &qword_24B75FCD8);
  v122 = v120 + *(v121 + 48);
  *v122 = 0;
  *(v122 + 8) = 1;
  sub_24B6B9D34(v119, v120 + *(v121 + 64), &qword_27F0348B0, &qword_24B75FC48);
  sub_24B6B9CD4(v94, &qword_27F0348B0, &qword_24B75FC48);
  sub_24B6B9CD4(v117, &qword_27F0348D0, &qword_24B75FC68);
  sub_24B6B9CD4(v119, &qword_27F0348B0, &qword_24B75FC48);
  return sub_24B6B9CD4(v118, &qword_27F0348D0, &qword_24B75FC68);
}

uint64_t sub_24B6CE76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a1;
  v22 = a2;
  v16 = type metadata accessor for WorkoutDetailAction(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a9;
  v23[7] = a10;
  type metadata accessor for WorkoutDetailView(0, v23);
  sub_24B6C7574();
  v19 = sub_24B75B108();
  (*(*(v19 - 8) + 16))(v18, v22, v19);
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B6E9694(v18, type metadata accessor for WorkoutDetailAction);
}

uint64_t sub_24B6CE8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v114 = a8;
  v102 = a6;
  v95 = a5;
  v93 = a1;
  v94 = a4;
  v91 = a3;
  v92 = a2;
  v105 = a9;
  v113 = a15;
  v112 = a14;
  v111 = a13;
  v110 = a11;
  v109 = a10;
  v17 = type metadata accessor for WorkoutDetailMusicTrack(0);
  v103 = *(v17 - 8);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v101 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = a7;
  v139 = a8;
  v106 = a12;
  v107 = a7;
  v140 = a10;
  v141 = a11;
  v142 = a12;
  v143 = a13;
  v144 = a14;
  v145 = a15;
  v99 = type metadata accessor for WorkoutDetailView(0, &v138);
  v108 = *(v99 - 8);
  v100 = *(v108 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v98 = *(v20 - 8);
  v96 = *(v98 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v90 = v74 - v21;
  v22 = sub_24B75B928();
  v88 = *(v22 - 8);
  v89 = v22;
  MEMORY[0x28223BE20](v22);
  v87 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B558();
  v24 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v25 = sub_24B75B558();
  v136 = a12;
  v137 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v135 = MEMORY[0x277CDF678];
  v26 = swift_getWitnessTable();
  v27 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v132 = v26;
  v133 = v27;
  v28 = swift_getWitnessTable();
  v138 = v24;
  v139 = MEMORY[0x277CE1350];
  v140 = v25;
  v141 = v25;
  v142 = v26;
  v143 = MEMORY[0x277CE1340];
  v144 = v28;
  v145 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v29 = sub_24B75B7B8();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v130 = v30;
  v131 = v31;
  v78 = v29;
  v79 = swift_getWitnessTable();
  v32 = sub_24B75C088();
  v82 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = v74 - v33;
  v35 = swift_getWitnessTable();
  v138 = v32;
  v139 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = v74 - v37;
  sub_24B75B958();
  v39 = sub_24B75B558();
  v81 = v39;
  v86 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v74[0] = v74 - v40;
  v138 = v32;
  v139 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74[1] = OpaqueTypeConformance2;
  v42 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v128 = OpaqueTypeConformance2;
  v129 = v42;
  v80 = swift_getWitnessTable();
  v138 = v39;
  v139 = v80;
  v83 = MEMORY[0x277CE0CA8];
  v43 = swift_getOpaqueTypeMetadata2();
  v44 = *(v43 - 8);
  v84 = v43;
  v85 = v44;
  MEMORY[0x28223BE20](v43);
  v75 = v74 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v77 = v74 - v47;
  sub_24B75B788();
  v115 = v107;
  v116 = v114;
  v117 = v109;
  v118 = v110;
  v119 = v106;
  v120 = v111;
  v121 = v112;
  v49 = v91;
  v48 = v92;
  v122 = v113;
  v123 = v91;
  v124 = v92;
  v125 = v93;
  v126 = v94;
  v127 = v95;
  sub_24B75C078();
  v50 = v87;
  sub_24B75B918();
  sub_24B75BDB8();
  (*(v88 + 8))(v50, v89);
  (*(v82 + 8))(v34, v32);
  sub_24B75BDF8();
  (*(v76 + 8))(v38, OpaqueTypeMetadata2);
  v51 = v90;
  sub_24B6B9D34(v102, v90, &qword_27F034118, &qword_24B75E1D8);
  v52 = v108;
  v53 = v97;
  v54 = v49;
  v55 = v99;
  (*(v108 + 16))(v97, v54, v99);
  v56 = v101;
  sub_24B6EA848(v48, v101, type metadata accessor for WorkoutDetailMusicTrack);
  v57 = (*(v98 + 80) + 80) & ~*(v98 + 80);
  v58 = (v96 + *(v52 + 80) + v57) & ~*(v52 + 80);
  v59 = (v100 + *(v103 + 80) + v58) & ~*(v103 + 80);
  v60 = swift_allocObject();
  v61 = v114;
  *(v60 + 2) = v107;
  *(v60 + 3) = v61;
  v62 = v110;
  *(v60 + 4) = v109;
  *(v60 + 5) = v62;
  v63 = v111;
  v64 = v112;
  *(v60 + 6) = v106;
  *(v60 + 7) = v63;
  v65 = v113;
  *(v60 + 8) = v64;
  *(v60 + 9) = v65;
  sub_24B6B8DE8(v51, &v60[v57], &qword_27F034118, &qword_24B75E1D8);
  (*(v108 + 32))(&v60[v58], v53, v55);
  sub_24B6EA8B0(v56, &v60[v59], type metadata accessor for WorkoutDetailMusicTrack);
  v66 = v75;
  v68 = v80;
  v67 = v81;
  v69 = v74[0];
  sub_24B75BD28();

  (*(v86 + 8))(v69, v67);
  v138 = v67;
  v139 = v68;
  swift_getOpaqueTypeConformance2();
  v70 = v77;
  v71 = v84;
  sub_24B6C7504();
  v72 = *(v85 + 8);
  v72(v66, v71);
  sub_24B6C7504();
  return (v72)(v70, v71);
}

uint64_t sub_24B6CF448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void, void))
{
  v145 = a8;
  v144 = a7;
  v142 = a6;
  v120 = a5;
  v152 = a4;
  v153 = a3;
  v149 = a2;
  v146 = a1;
  v154 = a9;
  v157 = a14;
  v156 = a13;
  v155 = a12;
  v141 = a11;
  v143 = a10;
  sub_24B75B558();
  v14 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v15 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  v131 = sub_24B75C178();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_24B75C088();
  v136 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v134 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v133 = &v116 - v19;
  v173 = a11;
  v174 = MEMORY[0x277CE01B0];
  v171 = swift_getWitnessTable();
  v172 = MEMORY[0x277CDF678];
  v20 = swift_getWitnessTable();
  v21 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v169 = v20;
  v170 = v21;
  v22 = swift_getWitnessTable();
  v161 = v14;
  v162 = MEMORY[0x277CE1350];
  v163 = v15;
  v164 = v15;
  v165 = v20;
  v166 = MEMORY[0x277CE1340];
  v167 = v22;
  v168 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  v23 = sub_24B75C178();
  v24 = swift_getWitnessTable();
  v126 = v23;
  v125 = v24;
  v25 = sub_24B75C028();
  v26 = sub_24B75B558();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  v28 = sub_24B75C178();
  v139 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v138 = &v116 - v29;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347B0, &qword_24B75FB58);
  MEMORY[0x28223BE20](v116);
  v119 = &v116 - v30;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347B8, &qword_24B75FB60);
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v118 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v117 = &v116 - v33;
  v137 = v27;
  MEMORY[0x28223BE20](v34);
  v135 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v140 = &v116 - v37;
  v127 = v25;
  v122 = *(v25 - 8);
  MEMORY[0x28223BE20](v38);
  v121 = &v116 - v39;
  v128 = v26;
  v124 = *(v26 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v123 = &v116 - v44;
  v147 = v28;
  v148 = v16;
  v151 = sub_24B75B7B8();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v46 = &v116 - v45;
  v47 = v142;
  v161 = v142;
  v48 = v144;
  v162 = v144;
  v49 = v145;
  v163 = v145;
  v50 = v143;
  v164 = v143;
  v51 = v141;
  v165 = v141;
  v166 = v155;
  v167 = v156;
  v168 = v157;
  type metadata accessor for WorkoutDetailView(0, &v161);
  v52 = v146;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (BYTE1(v165) > 6u)
  {
    v78 = sub_24B75B788();
    MEMORY[0x28223BE20](v78);
    *(&v116 - 12) = v47;
    *(&v116 - 11) = v48;
    *(&v116 - 10) = v49;
    *(&v116 - 9) = v50;
    v108 = v51;
    v109 = v155;
    v110 = v156;
    v111 = v157;
    v112 = v52;
    v113 = v149;
    v114 = v153;
    v115 = v152;
    v79 = v134;
    sub_24B75C078();
    v80 = v148;
    v81 = swift_getWitnessTable();
    v82 = v133;
    sub_24B6C7504();
    v83 = *(v136 + 1);
    v83(v79, v80);
    sub_24B6C7504();
    v84 = v147;
    v85 = swift_getWitnessTable();
    sub_24B738894(v79, v84, v80, v85, v81);
    v83(v79, v80);
    v83(v82, v80);
    v86 = v46;
  }

  else
  {
    v136 = v46;
    v53 = sub_24B75B6B8();
    MEMORY[0x28223BE20](v53);
    *(&v116 - 10) = v47;
    *(&v116 - 9) = v48;
    v109 = v50;
    v111 = v155;
    v54 = v121;
    sub_24B75C018();
    v55 = sub_24B75C158();
    v57 = v56;
    v58 = v127;
    v59 = swift_getWitnessTable();
    v114 = v58;
    v115 = v59;
    v112 = v55;
    v113 = v57;
    v60 = 1;
    LOBYTE(v111) = 1;
    v110 = 0;
    LOBYTE(v109) = 1;
    v108 = 0;
    sub_24B75BE18();
    (*(v122 + 8))(v54, v58);
    v160[2] = v59;
    v160[3] = MEMORY[0x277CDFC60];
    v61 = v128;
    v62 = swift_getWitnessTable();
    v63 = v123;
    sub_24B6C7504();
    v64 = v124;
    v157 = *(v124 + 8);
    v156 = v124 + 8;
    v157(v42, v61);
    v65 = v132;
    if (*(v152 + 16) - 1 != v153)
    {
      v66 = v119;
      sub_24B75C0B8();
      v67 = [objc_opt_self() separatorColor];
      v68 = sub_24B75BED8();
      v69 = sub_24B75B9A8();
      v70 = &v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347C0, &qword_24B75FB68) + 36)];
      *v70 = v68;
      v70[8] = v69;
      *&v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347C8, &qword_24B75FB70) + 36)] = 0;
      LOBYTE(v68) = sub_24B75B9D8();
      sub_24B75B3D8();
      v71 = &v66[*(v116 + 36)];
      *v71 = v68;
      *(v71 + 1) = v72;
      *(v71 + 2) = v73;
      *(v71 + 3) = v74;
      *(v71 + 4) = v75;
      v71[40] = 0;
      v76 = sub_24B75B568();
      if (v120)
      {
        v77 = sub_24B75B9F8();
      }

      else
      {
        v77 = sub_24B75B9E8();
      }

      v87 = v77;
      v88 = v66;
      v89 = v118;
      sub_24B6B8DE8(v88, v118, &qword_27F0347B0, &qword_24B75FB58);
      v90 = v89 + *(v65 + 36);
      *v90 = v76;
      *(v90 + 8) = v87;
      v91 = v89;
      v92 = v117;
      sub_24B6B8DE8(v91, v117, &qword_27F0347B8, &qword_24B75FB60);
      sub_24B6B8DE8(v92, v140, &qword_27F0347B8, &qword_24B75FB60);
      v60 = 0;
    }

    v93 = v140;
    (*(v130 + 56))(v140, v60, 1, v65);
    (*(v64 + 16))(v42, v63, v61);
    v161 = v42;
    v94 = v135;
    sub_24B6B9D34(v93, v135, &qword_27F034568, &qword_24B75F918);
    v162 = v94;
    v160[0] = v61;
    v160[1] = v137;
    v158 = v62;
    v159 = sub_24B6E9B94(&qword_27F0347D0, &qword_27F034568, &qword_24B75F918, sub_24B6E9374);
    v95 = v138;
    sub_24B7386C4(&v161, 2uLL, v160);
    sub_24B6B9CD4(v94, &qword_27F034568, &qword_24B75F918);
    v96 = v61;
    v97 = v61;
    v98 = v157;
    v157(v42, v96);
    v99 = v63;
    v100 = v147;
    v101 = swift_getWitnessTable();
    v102 = v148;
    v103 = swift_getWitnessTable();
    v86 = v136;
    sub_24B73898C(v95, v100, v102, v101, v103);
    (*(v139 + 8))(v95, v100);
    sub_24B6B9CD4(v93, &qword_27F034568, &qword_24B75F918);
    v98(v99, v97);
  }

  v104 = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  v160[4] = v104;
  v160[5] = v105;
  v106 = v151;
  swift_getWitnessTable();
  sub_24B6C7504();
  return (*(v150 + 8))(v86, v106);
}

uint64_t sub_24B6D0430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v106 = a5;
  v107 = a8;
  v104 = a6;
  v101 = a9;
  v102 = a4;
  v79 = a3;
  v108 = a2;
  v91 = a1;
  v88 = a11;
  v75 = a10;
  v99 = sub_24B75B588();
  MEMORY[0x28223BE20](v99);
  v100 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(a3 - 8);
  MEMORY[0x28223BE20](v14);
  v86 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B75B558();
  v94 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v84 = &v75 - v17;
  v81 = v16;
  v18 = sub_24B75B558();
  v96 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v83 = &v75 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v20 = sub_24B75B558();
  v137 = a7;
  v138 = MEMORY[0x277CE01B0];
  v21 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v135 = WitnessTable;
  v136 = MEMORY[0x277CDF678];
  v98 = v21;
  v22 = v18;
  v82 = v18;
  v23 = swift_getWitnessTable();
  v97 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v133 = v23;
  v78 = v23;
  v134 = v97;
  v24 = swift_getWitnessTable();
  *&v155[0] = v22;
  *(&v155[0] + 1) = MEMORY[0x277CE1350];
  v77 = v20;
  *&v155[1] = v20;
  *(&v155[1] + 1) = v20;
  *&v155[2] = v23;
  *(&v155[2] + 1) = MEMORY[0x277CE1340];
  v76 = v24;
  *&v155[3] = v24;
  *(&v155[3] + 1) = v24;
  v87 = MEMORY[0x277CE0E60];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v105 = &v75 - v25;
  v90 = sub_24B75B558();
  v93 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v103 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v89 = &v75 - v28;
  v29 = v79;
  *&v155[0] = v79;
  *(&v155[0] + 1) = v102;
  *&v155[1] = v106;
  *(&v155[1] + 1) = v104;
  v30 = a7;
  *&v155[2] = a7;
  *(&v155[2] + 1) = v107;
  *&v155[3] = a10;
  v31 = v88;
  *(&v155[3] + 1) = v88;
  v32 = type metadata accessor for WorkoutDetailView(0, v155);
  v33 = sub_24B6C7744(v32);
  v34 = type metadata accessor for WorkoutDetailMusicTrack(0);
  v35 = *(v34 + 24);
  v36 = v108;
  v37 = v108 + *(v34 + 20);
  v38 = type metadata accessor for WorkoutDetailArtwork(0);
  v39 = v36 + v35;
  v40 = v86;
  v33(v37, v39, &v37[*(v38 + 20)], MEMORY[0x277D84FA0]);

  v41 = v84;
  sub_24B75BCD8();
  (*(v95 + 8))(v40, v29);
  sub_24B75C158();
  v42 = v83;
  v43 = v81;
  sub_24B75BE08();
  (*(v94 + 8))(v41, v43);
  sub_24B75C138();
  v117 = v29;
  v118 = v102;
  v119 = v106;
  v120 = v104;
  v121 = v30;
  v122 = v107;
  v123 = v75;
  v124 = v31;
  v109 = v29;
  v110 = v102;
  v111 = v106;
  v112 = v104;
  v113 = v30;
  v114 = v107;
  v115 = v75;
  v116 = v31;
  v44 = swift_checkMetadataState();
  v45 = v76;
  v46 = v78;
  v47 = v82;
  sub_24B75BE98();
  v48 = v47;
  (*(v96 + 8))(v42, v47);
  v49 = *(v99 + 20);
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_24B75B748();
  v52 = v100;
  (*(*(v51 - 8) + 104))(&v100[v49], v50, v51);
  __asm { FMOV            V0.2D, #2.0 }

  *v52 = _Q0;
  v58 = v52;
  *&v155[0] = v48;
  *(&v155[0] + 1) = MEMORY[0x277CE1350];
  *&v155[1] = v44;
  *(&v155[1] + 1) = v44;
  *&v155[2] = v46;
  *(&v155[2] + 1) = MEMORY[0x277CE1340];
  *&v155[3] = v45;
  *(&v155[3] + 1) = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B6EAA80(&qword_27F034820, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v60 = v103;
  v61 = OpaqueTypeMetadata2;
  v62 = v105;
  sub_24B75BEA8();
  sub_24B6E9694(v58, MEMORY[0x277CDFC08]);
  (*(v92 + 8))(v62, v61);
  v131 = OpaqueTypeConformance2;
  v132 = v97;
  v63 = v90;
  v107 = swift_getWitnessTable();
  v64 = v89;
  v65 = v60;
  sub_24B6C7504();
  v66 = v93;
  v67 = *(v93 + 8);
  v67(v65, v63);
  v68 = sub_24B75B788();
  v128[0] = 0;
  sub_24B6D12C8(v108, v155);
  v149 = v155[10];
  v150 = v155[11];
  v145 = v155[6];
  v146 = v155[7];
  v148 = v155[9];
  v147 = v155[8];
  v141 = v155[2];
  v142 = v155[3];
  v144 = v155[5];
  v143 = v155[4];
  v140 = v155[1];
  v139 = v155[0];
  v152[10] = v155[10];
  v152[11] = v155[11];
  v152[6] = v155[6];
  v152[7] = v155[7];
  v152[9] = v155[9];
  v152[8] = v155[8];
  v152[2] = v155[2];
  v152[3] = v155[3];
  v152[5] = v155[5];
  v152[4] = v155[4];
  v151 = v155[12];
  v153 = v155[12];
  v152[1] = v155[1];
  v152[0] = v155[0];
  sub_24B6B9D34(&v139, v154, &qword_27F034828, &qword_24B75FB88);
  sub_24B6B9CD4(v152, &qword_27F034828, &qword_24B75FB88);
  *&v130[151] = v148;
  *&v130[167] = v149;
  *&v130[183] = v150;
  *&v130[87] = v144;
  *&v130[103] = v145;
  *&v130[119] = v146;
  *&v130[135] = v147;
  *&v130[23] = v140;
  *&v130[39] = v141;
  *&v130[55] = v142;
  *&v130[71] = v143;
  v130[199] = v151;
  *&v130[7] = v139;
  LOBYTE(v61) = v128[0];
  LOBYTE(v58) = sub_24B75BA08();
  sub_24B75B3D8();
  *(&v154[20] + 1) = *&v130[144];
  *(&v154[22] + 1) = *&v130[160];
  *(&v154[24] + 1) = *&v130[176];
  *(&v154[12] + 1) = *&v130[80];
  *(&v154[14] + 1) = *&v130[96];
  *(&v154[16] + 1) = *&v130[112];
  *(&v154[18] + 1) = *&v130[128];
  *(&v154[4] + 1) = *&v130[16];
  *(&v154[6] + 1) = *&v130[32];
  *(&v154[8] + 1) = *&v130[48];
  *(&v154[10] + 1) = *&v130[64];
  LOBYTE(v155[0]) = 0;
  v154[0] = v68;
  v154[1] = 0;
  LOBYTE(v154[2]) = v61;
  *(&v154[26] + 1) = *&v130[192];
  *(&v154[2] + 1) = *v130;
  LOBYTE(v154[28]) = v58;
  v154[29] = v69;
  v154[30] = v70;
  v154[31] = v71;
  v154[32] = v72;
  LOBYTE(v154[33]) = 0;
  v73 = v103;
  (*(v66 + 16))(v103, v64, v63);
  v129[0] = v73;
  memcpy(v128, v154, 0x109uLL);
  v129[1] = v128;
  sub_24B6B9D34(v154, v155, &qword_27F034560, &qword_24B75F910);
  v127[0] = v63;
  v127[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034560, &qword_24B75F910);
  v125 = v107;
  v126 = sub_24B6E96F4();
  sub_24B7386C4(v129, 2uLL, v127);
  sub_24B6B9CD4(v154, &qword_27F034560, &qword_24B75F910);
  v67(v64, v63);
  memcpy(v155, v128, 0x109uLL);
  sub_24B6B9CD4(v155, &qword_27F034560, &qword_24B75F910);
  return (v67)(v73, v63);
}

uint64_t sub_24B6D0F8C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X5>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v22 = a5;
  v23 = a3;
  v24 = a1;
  v25 = a4;
  v5 = sub_24B75B588();
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v8 = sub_24B75B558();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *(v5 + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24B75B748();
  (*(*(v17 - 8) + 104))(v7 + v15, v16, v17);
  *v7 = v22;
  v30 = v23;
  v31 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v29 = MEMORY[0x277CDF678];
  v18 = swift_getWitnessTable();
  sub_24B6EAA80(&qword_27F034820, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  sub_24B75BEA8();
  sub_24B6E9694(v7, MEMORY[0x277CDFC08]);
  v19 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v26 = v18;
  v27 = v19;
  swift_getWitnessTable();
  sub_24B6C7504();
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_24B6C7504();
  return (v20)(v14, v8);
}

uint64_t sub_24B6D12C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_24B75BAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24B75B6B8();
  LOBYTE(v76[0]) = 0;
  sub_24B6D17AC(a1, &v86);
  v64 = *&v87[48];
  v65 = *&v87[64];
  v66 = *&v87[80];
  v60 = v86;
  v61 = *v87;
  v62 = *&v87[16];
  v63 = *&v87[32];
  v67[0] = v86;
  v67[1] = *v87;
  v67[2] = *&v87[16];
  v67[3] = *&v87[32];
  v67[4] = *&v87[48];
  v67[5] = *&v87[64];
  v68 = *&v87[80];
  sub_24B6B9D34(&v60, &v69, &qword_27F034848, &qword_24B75FB98);
  sub_24B6B9CD4(v67, &qword_27F034848, &qword_24B75FB98);
  *(&v59[3] + 7) = v63;
  *(&v59[4] + 7) = v64;
  *(&v59[5] + 7) = v65;
  *(v59 + 7) = v60;
  *(&v59[1] + 7) = v61;
  *(&v59[6] + 7) = v66;
  *(&v59[2] + 7) = v62;
  v42 = LOBYTE(v76[0]);
  v7 = *a1;
  v8 = a1[1];
  *&v86 = v7;
  *(&v86 + 1) = v8;
  sub_24B6E89B0();

  v9 = sub_24B75BC48();
  v11 = v10;
  v13 = v12;
  sub_24B75BA28();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  sub_24B75BB28();

  (*(v4 + 8))(v6, v3);
  v14 = sub_24B75BC18();
  v16 = v15;
  LOBYTE(v6) = v17;

  sub_24B6E89A0(v9, v11, v13 & 1);

  LODWORD(v86) = sub_24B75B848();
  v18 = sub_24B75BBE8();
  v20 = v19;
  LOBYTE(v3) = v21;
  v41 = v22;
  sub_24B6E89A0(v14, v16, v6 & 1);

  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  LOBYTE(v86) = v3 & 1;
  v25 = v43;
  *&v69 = v43;
  *(&v69 + 1) = 0x4010000000000000;
  LOBYTE(v8) = v42;
  LOBYTE(v70[0]) = v42;
  *(&v70[3] + 1) = v59[3];
  *(&v70[4] + 1) = v59[4];
  *(&v70[5] + 1) = v59[5];
  v70[6] = *(&v59[5] + 15);
  *(v70 + 1) = v59[0];
  *(&v70[1] + 1) = v59[1];
  *(&v70[2] + 1) = v59[2];
  v44 = v69;
  v45 = v70[0];
  v46 = v70[1];
  v47 = v70[2];
  v50 = v70[5];
  v51 = *(&v59[5] + 15);
  v48 = v70[3];
  v49 = v70[4];
  *&v71 = v18;
  v26 = v20;
  *(&v71 + 1) = v20;
  LOBYTE(v72) = v3 & 1;
  DWORD1(v72) = *&v58[3];
  *(&v72 + 1) = *v58;
  v27 = v41;
  *(&v72 + 1) = v41;
  *&v73 = KeyPath;
  *(&v73 + 1) = 1;
  LOBYTE(v74) = 0;
  DWORD1(v74) = *&v57[3];
  *(&v74 + 1) = *v57;
  *(&v74 + 1) = v24;
  v75 = 1;
  v56 = 1;
  v54 = v73;
  v55 = v74;
  v52 = v71;
  v53 = v72;
  v28 = v69;
  v29 = v70[0];
  v30 = v70[2];
  v31 = v40;
  *(v40 + 32) = v70[1];
  *(v31 + 48) = v30;
  *v31 = v28;
  *(v31 + 16) = v29;
  v32 = v48;
  v33 = v49;
  v34 = v51;
  *(v31 + 96) = v50;
  *(v31 + 112) = v34;
  *(v31 + 64) = v32;
  *(v31 + 80) = v33;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v38 = v55;
  *(v31 + 192) = v56;
  *(v31 + 160) = v37;
  *(v31 + 176) = v38;
  *(v31 + 128) = v35;
  *(v31 + 144) = v36;
  v76[0] = v18;
  v76[1] = v26;
  v77 = v3 & 1;
  *v78 = *v58;
  *&v78[3] = *&v58[3];
  v79 = v27;
  v80 = KeyPath;
  v81 = 1;
  v82 = 0;
  *v83 = *v57;
  *&v83[3] = *&v57[3];
  v84 = v24;
  v85 = 1;
  sub_24B6B9D34(&v69, &v86, &qword_27F034850, &qword_24B75FC00);
  sub_24B6B9D34(&v71, &v86, &qword_27F034858, &qword_24B75FC08);
  sub_24B6B9CD4(v76, &qword_27F034858, &qword_24B75FC08);
  *&v87[49] = v59[3];
  *&v87[65] = v59[4];
  *&v87[81] = v59[5];
  *&v87[96] = *(&v59[5] + 15);
  *&v87[1] = v59[0];
  *&v87[17] = v59[1];
  *&v86 = v25;
  *(&v86 + 1) = 0x4010000000000000;
  v87[0] = v8;
  *&v87[33] = v59[2];
  return sub_24B6B9CD4(&v86, &qword_27F034850, &qword_24B75FC00);
}

uint64_t sub_24B6D17AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v64 = a2;
  v3 = sub_24B75AFE8();
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B75BAE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for WorkoutDetailMusicTrack(0);
  v9 = (a1 + *(v57 + 36));
  v10 = v9[1];
  *&v71 = *v9;
  *(&v71 + 1) = v10;
  sub_24B6E89B0();

  v11 = sub_24B75BC48();
  v13 = v12;
  v15 = v14;
  sub_24B75BA38();
  v16 = *(v6 + 104);
  v54 = *MEMORY[0x277CE0A10];
  v53 = v16;
  v16(v8);
  sub_24B75BB28();

  v17 = *(v6 + 8);
  v56 = v5;
  v52 = v17;
  v17(v8, v5);
  v62 = sub_24B75BC18();
  v61 = v18;
  v20 = v19;
  v63 = v21;

  sub_24B6E89A0(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v65 = v20 & 1;
  LOBYTE(v71) = v20 & 1;
  LOBYTE(v76[0]) = 0;
  if (*(v58 + *(v57 + 28)) == 1)
  {
    sub_24B6C0CB4(69, 0xE100000000000000);
    v26 = sub_24B75BC38();
    v28 = v27;
    v30 = v29;
    sub_24B75BB38();
    v31 = v56;
    v53(v8, v54, v56);
    sub_24B75BB28();

    v52(v8, v31);
    v32 = sub_24B75BC18();
    v34 = v33;
    v36 = v35;

    sub_24B6E89A0(v26, v28, v30 & 1);

    LODWORD(v71) = sub_24B75B848();
    v22 = sub_24B75BBE8();
    v23 = v37;
    v39 = v38;
    v25 = v40;
    sub_24B6E89A0(v32, v34, v36 & 1);

    v24 = v39 & 1;
    sub_24B6E8EF0(v22, v23, v39 & 1);
  }

  v41 = v62;
  *&v66 = v62;
  v42 = v61;
  *(&v66 + 1) = v61;
  LOBYTE(v67) = v65;
  *(&v67 + 1) = v87[0];
  DWORD1(v67) = *(v87 + 3);
  v43 = v63;
  *(&v67 + 1) = v63;
  v44 = KeyPath;
  *&v68 = KeyPath;
  *(&v68 + 1) = 1;
  LOBYTE(v69) = 0;
  *(&v69 + 1) = *v86;
  DWORD1(v69) = *&v86[3];
  v45 = v59;
  *(&v69 + 1) = v59;
  v70 = 1;
  v74 = v69;
  LOBYTE(v75) = 1;
  v72 = v67;
  v73 = v68;
  v71 = v66;
  sub_24B6B9D34(&v66, v76, &qword_27F034858, &qword_24B75FC08);
  sub_24B6E9A1C(v22, v23, v24, v25);
  sub_24B6E9A60(v22, v23, v24, v25);
  v46 = v72;
  v47 = v74;
  v48 = v64;
  *(v64 + 32) = v73;
  *(v48 + 48) = v47;
  v49 = v75;
  *v48 = v71;
  *(v48 + 16) = v46;
  *(v48 + 64) = v49;
  *(v48 + 72) = v22;
  *(v48 + 80) = v23;
  *(v48 + 88) = v24;
  *(v48 + 96) = v25;
  sub_24B6E9A60(v22, v23, v24, v25);
  v76[0] = v41;
  v76[1] = v42;
  v77 = v65;
  *v78 = v87[0];
  *&v78[3] = *(v87 + 3);
  v79 = v43;
  v80 = v44;
  v81 = 1;
  v82 = 0;
  *v83 = *v86;
  *&v83[3] = *&v86[3];
  v84 = v45;
  v85 = 1;
  return sub_24B6B9CD4(v76, &qword_27F034858, &qword_24B75FC08);
}

uint64_t sub_24B6D1D78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  *&v87 = a7;
  *(&v87 + 1) = a8;
  v95 = a4;
  v96 = a3;
  v88 = a1;
  v100 = a9;
  v85 = a11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347C8, &qword_24B75FB70);
  v97 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v77 = &v77 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034578, &qword_24B75F928);
  MEMORY[0x28223BE20](v98);
  v99 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v101 = &v77 - v18;
  v92 = sub_24B75B588();
  MEMORY[0x28223BE20](v92);
  v93 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(a5 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a5;
  v23 = sub_24B75B558();
  v83 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v77 - v24;
  v82 = sub_24B75B558();
  v91 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v77 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v27 = sub_24B75B558();
  v28 = *(v27 - 8);
  v89 = v27;
  v90 = v28;
  MEMORY[0x28223BE20](v27);
  v81 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v86 = &v77 - v31;
  *&v131[0] = a5;
  *(&v131[0] + 1) = a6;
  v131[1] = v87;
  *(&v131[2] + 8) = v85;
  *&v131[2] = a10;
  *(&v131[3] + 1) = a12;
  v32 = type metadata accessor for WorkoutDetailView(0, v131);
  v33 = sub_24B6C7744(v32);
  v34 = type metadata accessor for WorkoutDetailMusicTrack(0);
  v35 = *(v34 + 20);
  v36 = *(v34 + 24);
  v84 = a2;
  v37 = a2 + v35;
  v38 = type metadata accessor for WorkoutDetailArtwork(0);
  v33(v37, a2 + v36, &v37[*(v38 + 20)], MEMORY[0x277D84FA0]);

  v39 = v78;
  sub_24B75BCD8();
  (*(v80 + 8))(v22, v39);
  sub_24B75C158();
  v114 = a10;
  v115 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v41 = v79;
  sub_24B75BE08();
  (*(v83 + 8))(v25, v23);
  v42 = *(v92 + 20);
  v43 = *MEMORY[0x277CE0118];
  v44 = sub_24B75B748();
  v45 = v93;
  (*(*(v44 - 8) + 104))(&v93[v42], v43, v44);
  __asm { FMOV            V0.2D, #2.0 }

  *v45 = _Q0;
  v112 = WitnessTable;
  v113 = MEMORY[0x277CDF678];
  v51 = v82;
  v52 = swift_getWitnessTable();
  sub_24B6EAA80(&qword_27F034820, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v53 = v81;
  sub_24B75BEA8();
  sub_24B6E9694(v45, MEMORY[0x277CDFC08]);
  (*(v91 + 8))(v41, v51);
  v54 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v110 = v52;
  v111 = v54;
  v55 = v89;
  v56 = swift_getWitnessTable();
  v57 = v86;
  v91 = v56;
  sub_24B6C7504();
  v58 = v90;
  v59 = v53;
  v92 = *(v90 + 8);
  v93 = (v90 + 8);
  (v92)(v53, v55);
  v60 = sub_24B75B788();
  v106[0] = 0;
  sub_24B6D28D4(v84, v131);
  v126 = v131[10];
  v127 = v131[11];
  v122 = v131[6];
  v123 = v131[7];
  v125 = v131[9];
  v124 = v131[8];
  v118 = v131[2];
  v119 = v131[3];
  v121 = v131[5];
  v120 = v131[4];
  v117 = v131[1];
  v116 = v131[0];
  v129[10] = v131[10];
  v129[11] = v131[11];
  v129[6] = v131[6];
  v129[7] = v131[7];
  v129[9] = v131[9];
  v129[8] = v131[8];
  v129[2] = v131[2];
  v129[3] = v131[3];
  v129[5] = v131[5];
  v129[4] = v131[4];
  v128 = v131[12];
  v130 = v131[12];
  v129[1] = v131[1];
  v129[0] = v131[0];
  sub_24B6B9D34(&v116, v108, &qword_27F034860, &qword_24B75FC10);
  sub_24B6B9CD4(v129, &qword_27F034860, &qword_24B75FC10);
  *&v109[151] = v125;
  *&v109[167] = v126;
  *&v109[183] = v127;
  *&v109[87] = v121;
  *&v109[103] = v122;
  *&v109[119] = v123;
  *&v109[135] = v124;
  *&v109[23] = v117;
  *&v109[39] = v118;
  *&v109[55] = v119;
  *&v109[71] = v120;
  v109[199] = v128;
  *&v109[7] = v116;
  LOBYTE(v52) = v106[0];
  LOBYTE(v39) = sub_24B75BA08();
  sub_24B75B3D8();
  v61 = 1;
  *(&v131[10] + 1) = *&v109[144];
  *(&v131[11] + 1) = *&v109[160];
  *(&v131[12] + 1) = *&v109[176];
  *(&v131[6] + 1) = *&v109[80];
  *(&v131[7] + 1) = *&v109[96];
  *(&v131[8] + 1) = *&v109[112];
  *(&v131[9] + 1) = *&v109[128];
  *(&v131[2] + 1) = *&v109[16];
  *(&v131[3] + 1) = *&v109[32];
  *(&v131[4] + 1) = *&v109[48];
  *(&v131[5] + 1) = *&v109[64];
  v108[0] = 0;
  v131[0] = v60;
  LOBYTE(v131[1]) = v52;
  *(&v131[13] + 1) = *&v109[192];
  *(&v131[1] + 1) = *v109;
  LOBYTE(v131[14]) = v39;
  *(&v131[14] + 1) = v62;
  *&v131[15] = v63;
  *(&v131[15] + 1) = v64;
  *&v131[16] = v65;
  v66 = v94;
  v67 = *(v95 + 16) - 1;
  BYTE8(v131[16]) = 0;
  if (v67 != v96)
  {
    v68 = v77;
    sub_24B75C0B8();
    v69 = [objc_opt_self() separatorColor];
    v70 = sub_24B75BED8();
    v71 = sub_24B75B9A8();
    v72 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347C0, &qword_24B75FB68) + 36);
    *v72 = v70;
    *(v72 + 8) = v71;
    *(v68 + *(v66 + 36)) = 0;
    sub_24B6B8DE8(v68, v101, &qword_27F0347C8, &qword_24B75FB70);
    v61 = 0;
  }

  v73 = v101;
  (*(v97 + 56))(v101, v61, 1, v66);
  (*(v58 + 16))(v59, v57, v55);
  v107[0] = v59;
  memcpy(v106, v131, 0x109uLL);
  v107[1] = v106;
  v74 = v99;
  sub_24B6B9D34(v73, v99, &qword_27F034578, &qword_24B75F928);
  v107[2] = v74;
  sub_24B6B9D34(v131, v108, &qword_27F034570, &qword_24B75F920);
  v105[0] = v55;
  v105[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034570, &qword_24B75F920);
  v105[2] = v98;
  v102 = v91;
  v103 = sub_24B6E9ADC();
  v104 = sub_24B6E9B94(&qword_27F034880, &qword_27F034578, &qword_24B75F928, sub_24B6E94B0);
  sub_24B7386C4(v107, 3uLL, v105);
  sub_24B6B9CD4(v131, &qword_27F034570, &qword_24B75F920);
  sub_24B6B9CD4(v73, &qword_27F034578, &qword_24B75F928);
  v75 = v92;
  (v92)(v57, v55);
  sub_24B6B9CD4(v74, &qword_27F034578, &qword_24B75F928);
  memcpy(v108, v106, 0x109uLL);
  sub_24B6B9CD4(v108, &qword_27F034570, &qword_24B75F920);
  return v75(v59, v55);
}

uint64_t sub_24B6D28D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_24B75BAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24B75B6B8();
  LOBYTE(v76[0]) = 0;
  sub_24B6D2DBC(a1, &v86);
  v64 = *&v87[48];
  v65 = *&v87[64];
  v66 = *&v87[80];
  v60 = v86;
  v61 = *v87;
  v62 = *&v87[16];
  v63 = *&v87[32];
  v67[0] = v86;
  v67[1] = *v87;
  v67[2] = *&v87[16];
  v67[3] = *&v87[32];
  v67[4] = *&v87[48];
  v67[5] = *&v87[64];
  v68 = *&v87[80];
  sub_24B6B9D34(&v60, &v69, &qword_27F034888, &qword_24B75FC20);
  sub_24B6B9CD4(v67, &qword_27F034888, &qword_24B75FC20);
  *(&v59[3] + 7) = v63;
  *(&v59[4] + 7) = v64;
  *(&v59[5] + 7) = v65;
  *(v59 + 7) = v60;
  *(&v59[1] + 7) = v61;
  *(&v59[6] + 7) = v66;
  *(&v59[2] + 7) = v62;
  v42 = LOBYTE(v76[0]);
  v7 = *a1;
  v8 = a1[1];
  *&v86 = v7;
  *(&v86 + 1) = v8;
  sub_24B6E89B0();

  v9 = sub_24B75BC48();
  v11 = v10;
  v13 = v12;
  sub_24B75BB38();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  sub_24B75BB28();

  (*(v4 + 8))(v6, v3);
  v14 = sub_24B75BC18();
  v16 = v15;
  LOBYTE(v6) = v17;

  sub_24B6E89A0(v9, v11, v13 & 1);

  LODWORD(v86) = sub_24B75B848();
  v18 = sub_24B75BBE8();
  v20 = v19;
  LOBYTE(v3) = v21;
  v41 = v22;
  sub_24B6E89A0(v14, v16, v6 & 1);

  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  LOBYTE(v86) = v3 & 1;
  v25 = v43;
  *&v69 = v43;
  *(&v69 + 1) = 0x4010000000000000;
  LOBYTE(v8) = v42;
  LOBYTE(v70[0]) = v42;
  *(&v70[3] + 1) = v59[3];
  *(&v70[4] + 1) = v59[4];
  *(&v70[5] + 1) = v59[5];
  v70[6] = *(&v59[5] + 15);
  *(v70 + 1) = v59[0];
  *(&v70[1] + 1) = v59[1];
  *(&v70[2] + 1) = v59[2];
  v44 = v69;
  v45 = v70[0];
  v46 = v70[1];
  v47 = v70[2];
  v50 = v70[5];
  v51 = *(&v59[5] + 15);
  v48 = v70[3];
  v49 = v70[4];
  *&v71 = v18;
  v26 = v20;
  *(&v71 + 1) = v20;
  LOBYTE(v72) = v3 & 1;
  DWORD1(v72) = *&v58[3];
  *(&v72 + 1) = *v58;
  v27 = v41;
  *(&v72 + 1) = v41;
  *&v73 = KeyPath;
  *(&v73 + 1) = 3;
  LOBYTE(v74) = 0;
  DWORD1(v74) = *&v57[3];
  *(&v74 + 1) = *v57;
  *(&v74 + 1) = v24;
  v75 = 1;
  v56 = 1;
  v54 = v73;
  v55 = v74;
  v52 = v71;
  v53 = v72;
  v28 = v69;
  v29 = v70[0];
  v30 = v70[2];
  v31 = v40;
  *(v40 + 32) = v70[1];
  *(v31 + 48) = v30;
  *v31 = v28;
  *(v31 + 16) = v29;
  v32 = v48;
  v33 = v49;
  v34 = v51;
  *(v31 + 96) = v50;
  *(v31 + 112) = v34;
  *(v31 + 64) = v32;
  *(v31 + 80) = v33;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v38 = v55;
  *(v31 + 192) = v56;
  *(v31 + 160) = v37;
  *(v31 + 176) = v38;
  *(v31 + 128) = v35;
  *(v31 + 144) = v36;
  v76[0] = v18;
  v76[1] = v26;
  v77 = v3 & 1;
  *v78 = *v58;
  *&v78[3] = *&v58[3];
  v79 = v27;
  v80 = KeyPath;
  v81 = 3;
  v82 = 0;
  *v83 = *v57;
  *&v83[3] = *&v57[3];
  v84 = v24;
  v85 = 1;
  sub_24B6B9D34(&v69, &v86, &qword_27F034890, &qword_24B75FC28);
  sub_24B6B9D34(&v71, &v86, &qword_27F034858, &qword_24B75FC08);
  sub_24B6B9CD4(v76, &qword_27F034858, &qword_24B75FC08);
  *&v87[49] = v59[3];
  *&v87[65] = v59[4];
  *&v87[81] = v59[5];
  *&v87[96] = *(&v59[5] + 15);
  *&v87[1] = v59[0];
  *&v87[17] = v59[1];
  *&v86 = v25;
  *(&v86 + 1) = 0x4010000000000000;
  v87[0] = v8;
  *&v87[33] = v59[2];
  return sub_24B6B9CD4(&v86, &qword_27F034890, &qword_24B75FC28);
}

uint64_t sub_24B6D2DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v64 = a2;
  v3 = sub_24B75AFE8();
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B75BAE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for WorkoutDetailMusicTrack(0);
  v9 = (a1 + *(v57 + 36));
  v10 = v9[1];
  *&v71 = *v9;
  *(&v71 + 1) = v10;
  sub_24B6E89B0();

  v11 = sub_24B75BC48();
  v13 = v12;
  v15 = v14;
  sub_24B75BA38();
  v16 = *(v6 + 104);
  v54 = *MEMORY[0x277CE0A10];
  v53 = v16;
  v16(v8);
  sub_24B75BB28();

  v17 = *(v6 + 8);
  v56 = v5;
  v52 = v17;
  v17(v8, v5);
  v62 = sub_24B75BC18();
  v61 = v18;
  v20 = v19;
  v63 = v21;

  sub_24B6E89A0(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v65 = v20 & 1;
  LOBYTE(v71) = v20 & 1;
  LOBYTE(v76[0]) = 0;
  v59 = swift_getKeyPath();
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (*(v58 + *(v57 + 28)) == 1)
  {
    sub_24B6C0CB4(69, 0xE100000000000000);
    v26 = sub_24B75BC38();
    v28 = v27;
    v30 = v29;
    sub_24B75BB38();
    v31 = v56;
    v53(v8, v54, v56);
    sub_24B75BB28();

    v52(v8, v31);
    v32 = sub_24B75BC18();
    v34 = v33;
    v36 = v35;

    sub_24B6E89A0(v26, v28, v30 & 1);

    LODWORD(v71) = sub_24B75B848();
    v22 = sub_24B75BBE8();
    v23 = v37;
    v39 = v38;
    v25 = v40;
    sub_24B6E89A0(v32, v34, v36 & 1);

    v24 = v39 & 1;
    sub_24B6E8EF0(v22, v23, v39 & 1);
  }

  v41 = v62;
  *&v66 = v62;
  v42 = v61;
  *(&v66 + 1) = v61;
  LOBYTE(v67) = v65;
  *(&v67 + 1) = *v88;
  DWORD1(v67) = *&v88[3];
  v43 = v63;
  *(&v67 + 1) = v63;
  v44 = KeyPath;
  *&v68 = KeyPath;
  *(&v68 + 1) = 2;
  LOWORD(v69) = 0;
  BYTE2(v69) = 1;
  *(&v69 + 3) = v89;
  BYTE7(v69) = v90;
  v45 = v59;
  *(&v69 + 1) = v59;
  v70 = 1;
  v74 = v69;
  LOBYTE(v75) = 1;
  v71 = v66;
  v72 = v67;
  v73 = v68;
  sub_24B6B9D34(&v66, v76, &qword_27F034898, &qword_24B75FC30);
  sub_24B6E9A1C(v22, v23, v24, v25);
  sub_24B6E9A60(v22, v23, v24, v25);
  v46 = v72;
  v47 = v74;
  v48 = v64;
  *(v64 + 32) = v73;
  *(v48 + 48) = v47;
  v49 = v75;
  *v48 = v71;
  *(v48 + 16) = v46;
  *(v48 + 64) = v49;
  *(v48 + 72) = v22;
  *(v48 + 80) = v23;
  *(v48 + 88) = v24;
  *(v48 + 96) = v25;
  sub_24B6E9A60(v22, v23, v24, v25);
  v76[0] = v41;
  v76[1] = v42;
  v77 = v65;
  *v78 = *v88;
  *&v78[3] = *&v88[3];
  v79 = v43;
  v80 = v44;
  v81 = 2;
  v82 = 0;
  v83 = 1;
  v84 = v89;
  v85 = v90;
  v86 = v45;
  v87 = 1;
  return sub_24B6B9CD4(v76, &qword_27F034898, &qword_24B75FC30);
}

uint64_t sub_24B6D3398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = a7;
  v30 = a8;
  v27 = a5;
  v28 = a6;
  v31 = a2;
  v32 = a3;
  v13 = type metadata accessor for WorkoutDetailAction(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = sub_24B75B108();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6B9D34(a1, v18, &qword_27F034118, &qword_24B75E1D8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_24B6B9CD4(v18, &qword_27F034118, &qword_24B75E1D8);
  }

  (*(v20 + 32))(v22, v18, v19);
  v33[0] = a4;
  v33[1] = v27;
  v33[2] = v28;
  v33[3] = v29;
  v33[4] = v30;
  v33[5] = a9;
  v33[6] = a10;
  v33[7] = a11;
  type metadata accessor for WorkoutDetailView(0, v33);
  sub_24B6C7574();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347A8, &qword_24B75FB50) + 48);
  v25 = (v32 + *(type metadata accessor for WorkoutDetailMusicTrack(0) + 32));
  v26 = v25[1];
  *v15 = *v25;
  *(v15 + 1) = v26;
  (*(v20 + 16))(&v15[v24], v22, v19);
  swift_storeEnumTagMultiPayload();

  sub_24B75C228();

  sub_24B6E9694(v15, type metadata accessor for WorkoutDetailAction);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_24B6D3668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_24B75B788();
  *(a5 + 8) = 0x4024000000000000;
  *(a5 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034758, &qword_24B75FB20);
  return sub_24B6D3708(a1, v5, a2, a3, a4[2], a4[3], a4[4], a4[5], a5 + *(v11 + 44), *(a4 + 3), *(a4 + 4));
}

uint64_t sub_24B6D3708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11)
{
  *&v228 = a7;
  *(&v228 + 1) = a8;
  *&v227 = a5;
  *(&v227 + 1) = a6;
  v217 = a4;
  v210 = a3;
  v234 = a2;
  v225 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034760, &qword_24B75FB28);
  v223 = *(v12 - 8);
  v224 = v12;
  MEMORY[0x28223BE20](v12);
  v222 = &v193 - v13;
  v209 = sub_24B75B768();
  v203 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v202 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_24B75BAE8();
  v235 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v232 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v16 - 8);
  v230 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v18 - 8);
  v229 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034748, &qword_24B75FB10);
  MEMORY[0x28223BE20](v20 - 8);
  v221 = &v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v231 = &v193 - v23;
  v24 = sub_24B75AFC8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v193 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v193 - v29;
  v31 = sub_24B75AF28();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v193 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = a1;
  sub_24B75AF18();
  v35 = sub_24B6EAA80(&qword_27F034730, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  sub_24B75C468();
  v219 = v35;
  sub_24B75C498();
  v218 = sub_24B6EAA80(&qword_27F034738, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  LOBYTE(a1) = sub_24B75C2D8();
  v36 = *(v25 + 8);
  v214 = v27;
  v36(v27, v24);
  v213 = v30;
  v215 = v25 + 8;
  v216 = v24;
  v36(v30, v24);
  v37 = *(v32 + 8);
  v211 = v34;
  v212 = v31;
  v220 = v32 + 8;
  v37(v34, v31);
  if (a1)
  {
    return (*(v223 + 56))(v225, 1, 1, v224);
  }

  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v206 = ObjCClassFromMetadata;
  v205 = objc_opt_self();
  v40 = [v205 bundleForClass_];
  v207 = v37;
  v257 = v227;
  v258 = v228;
  v259 = a10;
  v260 = a11;
  *(&v228 + 1) = type metadata accessor for WorkoutDetailView(0, &v257);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v41 = sub_24B75BB58();
  v43 = v42;
  v45 = v44;
  v201 = v46;
  sub_24B75BAB8();
  sub_24B75BA78();
  sub_24B75BAD8();

  LODWORD(v228) = *MEMORY[0x277CE0A10];
  v47 = v235;
  *&v227 = *(v235 + 104);
  *(&v227 + 1) = v235 + 104;
  v48 = v232;
  v49 = v233;
  (v227)(v232);
  sub_24B75BB28();

  v50 = *(v47 + 8);
  v235 = v47 + 8;
  v226 = v50;
  v50(v48, v49);
  v51 = sub_24B75BC18();
  v53 = v52;
  LOBYTE(v47) = v54;
  v208 = v36;
  v56 = v55;

  sub_24B6E89A0(v41, v43, v45 & 1);

  *&v257 = v51;
  *(&v257 + 1) = v53;
  LOBYTE(v258) = v47 & 1;
  *(&v258 + 1) = v56;
  v57 = v202;
  sub_24B75B758();
  sub_24B75BDD8();
  (*(v203 + 8))(v57, v209);
  sub_24B6E89A0(v51, v53, v47 & 1);

  sub_24B75C2E8();
  v58 = [v205 bundleForClass_];
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v59 = sub_24B75BB58();
  v61 = v60;
  LOBYTE(v57) = v62;
  sub_24B75BB38();
  v64 = v232;
  v63 = v233;
  (v227)(v232, v228, v233);
  sub_24B75BB28();

  v226(v64, v63);
  v65 = sub_24B75BC18();
  v67 = v66;
  LOBYTE(v64) = v68;

  sub_24B6E89A0(v59, v61, v57 & 1);

  *&v257 = sub_24B75BF18();
  v69 = sub_24B75BBE8();
  v202 = v70;
  v203 = v69;
  v199 = v71;
  v209 = v72;
  sub_24B6E89A0(v65, v67, v64 & 1);

  v73 = sub_24B6C7864();
  v74 = v73(v204);
  v76 = v75;
  LOBYTE(v65) = v77;

  sub_24B75BB08();
  v78 = v232;
  v79 = v233;
  (v227)(v232, v228, v233);
  sub_24B75BB28();

  v226(v78, v79);
  v80 = sub_24B75BC18();
  v82 = v81;
  LOBYTE(v79) = v83;

  sub_24B6E89A0(v74, v76, v65 & 1);

  LODWORD(v257) = sub_24B75B848();
  v84 = sub_24B75BBE8();
  v200 = v85;
  v201 = v84;
  v198 = v86;
  v204 = v87;
  sub_24B6E89A0(v80, v82, v79 & 1);

  v88 = v211;
  sub_24B75AF18();
  v90 = v212;
  v89 = v213;
  sub_24B75C468();
  v91 = v214;
  sub_24B75C498();
  v92 = v216;
  LOBYTE(v59) = sub_24B75C2D8();
  v93 = v208;
  v208(v91, v92);
  v93(v89, v92);
  v207(v88, v90);
  if (v59)
  {
    v94 = 0;
    *&v260 = 0;
    v258 = 0u;
    v259 = 0u;
    v257 = 0u;
  }

  else
  {
    sub_24B75C2E8();
    v95 = [v205 bundleForClass_];
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v96 = sub_24B75BB58();
    v98 = v97;
    v100 = v99;
    sub_24B75BB38();
    v101 = v232;
    v102 = v233;
    (v227)(v232, v228, v233);
    sub_24B75BB28();

    v226(v101, v102);
    v103 = sub_24B75BC18();
    v105 = v104;
    v107 = v106;
    v193 = v108;

    sub_24B6E89A0(v96, v98, v100 & 1);

    *&v257 = sub_24B75BF18();
    v109 = sub_24B75BBE8();
    v195 = v110;
    v196 = v109;
    v194 = v111;
    v197 = v112;
    sub_24B6E89A0(v103, v105, v107 & 1);

    v113 = sub_24B6C7864();
    v114 = v113(v210);
    v116 = v115;
    LOBYTE(v103) = v117;

    sub_24B75BB08();
    v118 = v233;
    (v227)(v101, v228, v233);
    sub_24B75BB28();

    v226(v101, v118);
    v119 = sub_24B75BC18();
    v121 = v120;
    LOBYTE(v118) = v122;

    sub_24B6E89A0(v114, v116, v103 & 1);

    LODWORD(v257) = sub_24B75B848();
    v123 = sub_24B75BBE8();
    v125 = v124;
    LOBYTE(v103) = v126;
    v94 = v127;
    sub_24B6E89A0(v119, v121, v118 & 1);

    LOBYTE(v118) = v194 & 1;
    LOBYTE(v251[0]) = v194 & 1;
    LOBYTE(v253) = v194 & 1;
    LOBYTE(v119) = v103 & 1;
    LOBYTE(v252[0]) = v103 & 1;
    v128 = v195;
    v129 = v196;
    sub_24B6E8EF0(v196, v195, v194 & 1);
    v130 = v197;

    sub_24B6E8EF0(v123, v125, v119);

    sub_24B6E89A0(v123, v125, v119);

    sub_24B6E89A0(v129, v128, v251[0]);

    v131 = v253;
    LODWORD(v210) = LOBYTE(v252[0]);
    sub_24B6E8EF0(v129, v128, v118);

    sub_24B6E8EF0(v123, v125, v119);
    *&v257 = v129;
    *(&v257 + 1) = v128;
    LOBYTE(v258) = v131;
    *(&v258 + 1) = v130;
    *&v259 = v123;
    v92 = v216;
    *(&v259 + 1) = v125;
    v88 = v211;
    v90 = v212;
    LOBYTE(v260) = v210;
    v89 = v213;
    v91 = v214;
  }

  *(&v260 + 1) = v94;
  sub_24B75AF18();
  sub_24B75C468();
  sub_24B75C498();
  v132 = sub_24B75C2D8();
  v133 = v91;
  v134 = v208;
  v208(v133, v92);
  v134(v89, v92);
  v207(v88, v90);
  if (v132)
  {
    v135 = 0;
    *&v256 = 0;
    v254 = 0u;
    v255 = 0u;
    v253 = 0u;
  }

  else
  {
    sub_24B75C2E8();
    v136 = [v205 bundleForClass_];
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v137 = sub_24B75BB58();
    v139 = v138;
    v141 = v140;
    sub_24B75BB38();
    v142 = v232;
    v143 = v233;
    (v227)(v232, v228, v233);
    sub_24B75BB28();

    v226(v142, v143);
    v144 = sub_24B75BC18();
    v146 = v145;
    v148 = v147;
    v218 = v149;

    sub_24B6E89A0(v137, v139, v141 & 1);

    *&v253 = sub_24B75BF18();
    v229 = sub_24B75BBE8();
    v230 = v150;
    v220 = v151;
    LODWORD(v219) = v152;
    sub_24B6E89A0(v144, v146, v148 & 1);

    v153 = sub_24B6C7864();
    v154 = v153(v217);
    v156 = v155;
    LOBYTE(v146) = v157;

    sub_24B75BB08();
    v158 = v233;
    (v227)(v142, v228, v233);
    sub_24B75BB28();

    v226(v142, v158);
    v159 = sub_24B75BC18();
    v161 = v160;
    v163 = v162;

    sub_24B6E89A0(v154, v156, v146 & 1);

    LODWORD(v253) = sub_24B75B848();
    v164 = sub_24B75BBE8();
    v166 = v165;
    LOBYTE(v146) = v167;
    v135 = v168;
    sub_24B6E89A0(v159, v161, v163 & 1);

    LOBYTE(v161) = v219 & 1;
    LOBYTE(v247) = v219 & 1;
    LOBYTE(v252[0]) = v219 & 1;
    LOBYTE(v159) = v146 & 1;
    LOBYTE(v251[0]) = v146 & 1;
    v169 = v229;
    v170 = v220;
    sub_24B6E8EF0(v229, v220, v219 & 1);
    v171 = v230;

    sub_24B6E8EF0(v164, v166, v159);

    sub_24B6E89A0(v164, v166, v159);

    sub_24B6E89A0(v169, v170, v247);

    LOBYTE(v142) = v252[0];
    LODWORD(v235) = LOBYTE(v251[0]);
    sub_24B6E8EF0(v169, v170, v161);

    sub_24B6E8EF0(v164, v166, v159);
    *&v253 = v169;
    *(&v253 + 1) = v170;
    LOBYTE(v254) = v142;
    *(&v254 + 1) = v171;
    *&v255 = v164;
    *(&v255 + 1) = v166;
    LOBYTE(v256) = v235;
  }

  v173 = v221;
  v172 = v222;
  *(&v256 + 1) = v135;
  sub_24B6B9D34(v231, v221, &qword_27F034748, &qword_24B75FB10);
  v174 = v199 & 1;
  v245 = v199 & 1;
  v175 = v198 & 1;
  v244 = v198 & 1;
  v240 = v257;
  v241 = v258;
  v242 = v259;
  v243 = v260;
  v236 = v253;
  v237 = v254;
  v238 = v255;
  v239 = v256;
  sub_24B6B9D34(v173, v172, &qword_27F034748, &qword_24B75FB10);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034768, &qword_24B75FB30);
  v177 = v176[12];
  v178 = v240;
  v179 = v241;
  v246[0] = v240;
  v246[1] = v241;
  v180 = v242;
  v181 = v243;
  v246[2] = v242;
  v246[3] = v243;
  v182 = v172 + v177;
  v184 = v202;
  v183 = v203;
  *v182 = v203;
  *(v182 + 8) = v184;
  *(v182 + 16) = v174;
  *(v182 + 24) = v209;
  v185 = v172 + v176[16];
  v187 = v200;
  v186 = v201;
  *v185 = v201;
  *(v185 + 8) = v187;
  *(v185 + 16) = v175;
  *(v185 + 24) = v204;
  v188 = (v172 + v176[20]);
  *v188 = v178;
  v188[1] = v179;
  v188[2] = v180;
  v188[3] = v181;
  v189 = (v172 + v176[24]);
  v249 = v238;
  v250 = v239;
  v247 = v236;
  v248 = v237;
  LODWORD(v235) = v174;
  sub_24B6E8EF0(v183, v184, v174);

  sub_24B6E8EF0(v186, v187, v175);

  sub_24B6E8EF0(v183, v184, v174);

  sub_24B6E8EF0(v186, v187, v175);

  sub_24B6B9D34(v246, v252, &qword_27F034770, &qword_24B75FB38);
  sub_24B6B9D34(&v247, v252, &qword_27F034770, &qword_24B75FB38);
  sub_24B6B9CD4(&v257, &qword_27F034770, &qword_24B75FB38);
  sub_24B6B9CD4(&v253, &qword_27F034770, &qword_24B75FB38);
  sub_24B6E89A0(v186, v187, v175);

  sub_24B6E89A0(v183, v184, v235);
  v190 = v248;
  *v189 = v247;
  v189[1] = v190;
  v191 = v250;
  v189[2] = v249;
  v189[3] = v191;

  sub_24B6B9CD4(v231, &qword_27F034748, &qword_24B75FB10);
  v251[0] = v236;
  v251[1] = v237;
  v251[2] = v238;
  v251[3] = v239;
  sub_24B6B9CD4(v251, &qword_27F034770, &qword_24B75FB38);
  v252[0] = v240;
  v252[1] = v241;
  v252[2] = v242;
  v252[3] = v243;
  sub_24B6B9CD4(v252, &qword_27F034770, &qword_24B75FB38);
  sub_24B6E89A0(v186, v187, v244);

  sub_24B6E89A0(v183, v184, v245);

  sub_24B6B9CD4(v221, &qword_27F034748, &qword_24B75FB10);
  v192 = v225;
  sub_24B6B8DE8(v222, v225, &qword_27F034760, &qword_24B75FB28);
  return (*(v223 + 56))(v192, 0, 1, v224);
}

uint64_t sub_24B6D4D6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034728, &qword_24B75FB00);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v26 = (&v26 - v5);
  v6 = sub_24B75AFC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_24B75AF28();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_24B75AF18();
  sub_24B6EAA80(&qword_27F034730, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  sub_24B75C468();
  sub_24B75C498();
  sub_24B6EAA80(&qword_27F034738, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  LOBYTE(a1) = sub_24B75C2D8();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v17(v12, v6);
  (*(v14 + 8))(v16, v13);
  if (a1)
  {
    v18 = 1;
    v19 = v30;
  }

  else
  {
    v20 = sub_24B75B788();
    v21 = v26;
    *v26 = v20;
    v21[1] = 0x4024000000000000;
    *(v21 + 16) = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034740, &qword_24B75FB08);
    sub_24B6D50F4(v28, v27, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], v21 + *(v22 + 44), a2[8], a2[9]);
    v23 = v21;
    v24 = v30;
    sub_24B6B8DE8(v23, v30, &qword_27F034728, &qword_24B75FB00);
    v18 = 0;
    v19 = v24;
  }

  return (*(v29 + 56))(v19, v18, 1, v31);
}

uint64_t sub_24B6D50F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v68 = a8;
  v67 = a7;
  v66 = a6;
  v73 = a2;
  v65 = a1;
  v74 = a9;
  v14 = sub_24B75B768();
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x28223BE20](v14);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_24B75BAE8();
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034748, &qword_24B75FB10);
  MEMORY[0x28223BE20](v20 - 8);
  v72 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v76 = &v62 - v23;
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v81 = v66;
  v82 = v67;
  v83 = v68;
  v84 = a10;
  v85 = a11;
  v68 = type metadata accessor for WorkoutDetailView(0, &v78);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v26 = sub_24B75BB58();
  v28 = v27;
  LOBYTE(ObjCClassFromMetadata) = v29;
  sub_24B75BAB8();
  sub_24B75BA78();
  sub_24B75BAD8();

  LODWORD(v67) = *MEMORY[0x277CE0A10];
  v30 = v77;
  v66 = *(v77 + 104);
  v31 = v75;
  v66(v17);
  v63 = v17;
  sub_24B75BB28();

  v32 = *(v30 + 8);
  v77 = v30 + 8;
  v64 = v32;
  v32(v17, v31);
  v33 = sub_24B75BC18();
  v35 = v34;
  LOBYTE(v31) = v36;
  v38 = v37;

  sub_24B6E89A0(v26, v28, ObjCClassFromMetadata & 1);

  v78 = v33;
  v79 = v35;
  LOBYTE(v80) = v31 & 1;
  v81 = v38;
  v39 = v69;
  sub_24B75B758();
  sub_24B75BDD8();
  (*(v70 + 8))(v39, v71);
  sub_24B6E89A0(v33, v35, v31 & 1);

  v40 = sub_24B6C7864();
  v41 = v40(v73);
  v43 = v42;
  LOBYTE(v38) = v44;

  sub_24B75BB08();
  v45 = v63;
  v46 = v75;
  (v66)(v63, v67, v75);
  sub_24B75BB28();

  v64(v45, v46);
  v47 = sub_24B75BC18();
  v49 = v48;
  LOBYTE(v28) = v50;

  sub_24B6E89A0(v41, v43, v38 & 1);

  LODWORD(v78) = sub_24B75B848();
  v51 = sub_24B75BBE8();
  v53 = v52;
  LOBYTE(v38) = v54;
  v56 = v55;
  sub_24B6E89A0(v47, v49, v28 & 1);

  v57 = v76;
  v58 = v72;
  sub_24B6B9D34(v76, v72, &qword_27F034748, &qword_24B75FB10);
  v59 = v74;
  sub_24B6B9D34(v58, v74, &qword_27F034748, &qword_24B75FB10);
  v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034750, &qword_24B75FB18) + 48);
  *v60 = v51;
  *(v60 + 8) = v53;
  LOBYTE(v38) = v38 & 1;
  *(v60 + 16) = v38;
  *(v60 + 24) = v56;
  sub_24B6E8EF0(v51, v53, v38);

  sub_24B6B9CD4(v57, &qword_27F034748, &qword_24B75FB10);
  sub_24B6E89A0(v51, v53, v38);

  return sub_24B6B9CD4(v58, &qword_27F034748, &qword_24B75FB10);
}

uint64_t sub_24B6D57B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v54 = a3;
  v7 = type metadata accessor for WorkoutDetail(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v4, a2, v14);
  sub_24B6EA848(a1, v10, type metadata accessor for WorkoutDetail);
  v16 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v17 = (v12 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v20 = *(a2 + 16);
  v52 = *(a2 + 24);
  v19 = v52;
  *(v18 + 16) = v20;
  *(v18 + 24) = v19;
  v21 = *(a2 + 32);
  v22 = *(a2 + 40);
  *(v18 + 32) = v21;
  *(v18 + 40) = v22;
  v23 = *(a2 + 64);
  v48 = *(a2 + 48);
  v49 = v23;
  *(v18 + 48) = v48;
  *(v18 + 64) = v23;
  v24 = *(v11 + 32);
  v25 = v18 + v16;
  v26 = v18;
  v53 = v18;
  v24(v25, v15, a2);
  sub_24B6EA8B0(v10, v26 + v17, type metadata accessor for WorkoutDetail);
  v50 = sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v82 = WitnessTable;
  v83 = v28;
  swift_getWitnessTable();
  v51 = sub_24B75C088();
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v63 = v21;
  v64 = v49;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v78 = sub_24B75B558();
  *&v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  v30 = sub_24B75B558();
  v31 = sub_24B75B558();
  v75 = v48;
  v76 = MEMORY[0x277CE01B0];
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x277CDF678];
  v32 = swift_getWitnessTable();
  v71 = v32;
  v72 = v28;
  v33 = swift_getWitnessTable();
  v63 = v30;
  v64 = MEMORY[0x277CE1350];
  v65 = v31;
  v66 = v31;
  v67 = v32;
  v68 = MEMORY[0x277CE1340];
  v69 = v33;
  v70 = v33;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v61 = v34;
  v62 = v35;
  swift_getWitnessTable();
  v36 = sub_24B75C088();
  v37 = swift_getWitnessTable();
  v63 = v36;
  v64 = v37;
  swift_getOpaqueTypeMetadata2();
  v38 = sub_24B75B558();
  v63 = v36;
  v64 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v59 = OpaqueTypeConformance2;
  v60 = v40;
  v41 = swift_getWitnessTable();
  v63 = v38;
  v64 = v41;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v63 = v29;
  v64 = MEMORY[0x277D837D0];
  v65 = OpaqueTypeMetadata2;
  v66 = v43;
  v67 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  v79 = sub_24B75C4E8();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v80 = sub_24B75C4E8();
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x277CDF918];
  v57 = v44;
  v58 = MEMORY[0x277CDF918];
  v55 = swift_getWitnessTable();
  v56 = v45;
  swift_getWitnessTable();
  sub_24B75B3E8();
  swift_getWitnessTable();
  v77 = sub_24B75B4E8();
  v78 = v46;
  sub_24B75B4F8();
  swift_getWitnessTable();
  sub_24B6C7504();

  v77 = v63;
  v78 = v64;
  sub_24B6C7504();
}

uint64_t sub_24B6D6354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v47 = a9;
  v48 = a8;
  v41 = a7;
  v38 = a5;
  v39 = a6;
  v45 = a1;
  v46 = a3;
  v44 = a2;
  v43 = a12;
  v42 = a10;
  v40 = a11;
  v35 = sub_24B75B958();
  v37 = a4;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v33 = MEMORY[0x277CE1198];
  v49[41] = swift_getWitnessTable();
  v50 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  v36 = sub_24B75C088();
  v49[36] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v49[37] = sub_24B75B558();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v49[34] = v48;
  v49[35] = MEMORY[0x277CE01B0];
  v49[32] = swift_getWitnessTable();
  v49[33] = MEMORY[0x277CDF678];
  v49[30] = swift_getWitnessTable();
  v49[31] = v50;
  WitnessTable = swift_getWitnessTable();
  v49[27] = MEMORY[0x277CE1340];
  v49[28] = WitnessTable;
  v49[29] = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v49[20] = swift_getWitnessTable();
  v49[21] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  v49[18] = swift_getOpaqueTypeConformance2();
  v49[19] = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v49[22] = v32;
  v49[23] = MEMORY[0x277D837D0];
  v49[24] = OpaqueTypeMetadata2;
  v49[25] = v15;
  v49[26] = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  v49[38] = sub_24B75C4E8();
  v16 = v38;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v49[39] = sub_24B75C4E8();
  v49[40] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  v17 = sub_24B75B558();
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x277CDF918];
  v49[16] = v18;
  v49[17] = MEMORY[0x277CDF918];
  v49[14] = swift_getWitnessTable();
  v49[15] = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_24B75B3E8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v31 - v26;
  v28 = sub_24B75B988();
  v49[2] = v37;
  v49[3] = v16;
  v49[4] = v39;
  v49[5] = v41;
  v49[6] = v48;
  v49[7] = v42;
  v49[8] = v40;
  v49[9] = v43;
  v49[10] = v44;
  v49[11] = v46;
  v49[12] = v45;
  sub_24B738A84(v28, sub_24B6E8A1C, v49, v17, v20);
  swift_getWitnessTable();
  sub_24B6C7504();
  v29 = *(v22 + 8);
  v29(v24, v21);
  sub_24B6C7504();
  return (v29)(v27, v21);
}

uint64_t sub_24B6D6DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v62 = a1;
  v63 = a8;
  v60 = a6;
  v61 = a7;
  v59 = a5;
  v44[1] = a3;
  v56 = a2;
  v57 = a9;
  v55 = a12;
  v54 = a10;
  v53 = a11;
  v50 = sub_24B75B958();
  v52 = a4;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v58 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v102 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  v51 = sub_24B75C088();
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v97 = sub_24B75B558();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v94 = v63;
  v95 = MEMORY[0x277CE01B0];
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x277CDF678];
  v90 = swift_getWitnessTable();
  v91 = v102;
  v14 = swift_getWitnessTable();
  v83 = MEMORY[0x277CE1340];
  v84 = v14;
  v85 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v88 = swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v78 = v13;
  v79 = MEMORY[0x277D837D0];
  v80 = OpaqueTypeMetadata2;
  v81 = v16;
  v82 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  v98 = sub_24B75C4E8();
  v17 = v59;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v99 = sub_24B75C4E8();
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v44[2] = swift_getWitnessTable();
  v18 = sub_24B75C088();
  v45 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v44 - v19;
  v21 = sub_24B75B558();
  v48 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v44 - v22;
  v49 = v24;
  v25 = sub_24B75B558();
  v50 = *(v25 - 8);
  v51 = v25;
  MEMORY[0x28223BE20](v25);
  v46 = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v47 = v44 - v28;
  sub_24B75B788();
  v29 = v52;
  v30 = v53;
  v64 = v52;
  v65 = v17;
  v66 = v60;
  v67 = v61;
  v31 = v63;
  v32 = v54;
  v33 = v55;
  v68 = v63;
  v69 = v54;
  v70 = v53;
  v71 = v55;
  v72 = v62;
  v73 = v56;
  sub_24B75C078();
  sub_24B75B9C8();
  v34 = swift_getWitnessTable();
  v58 = v23;
  v56 = v34;
  sub_24B75BE48();
  (*(v45 + 8))(v20, v18);
  sub_24B75B9B8();
  v78 = v29;
  v79 = v59;
  v80 = v60;
  v81 = v61;
  v82 = v31;
  v83 = v32;
  v84 = v30;
  v85 = v33;
  type metadata accessor for WorkoutDetailView(0, &v78);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (BYTE1(v82) <= 6u)
  {
    sub_24B75B478();
  }

  v35 = MEMORY[0x277CDF918];
  v76 = v56;
  v77 = MEMORY[0x277CDF918];
  v36 = v49;
  v37 = swift_getWitnessTable();
  v38 = v46;
  v39 = v58;
  sub_24B75BE48();
  (*(v48 + 8))(v39, v36);
  v74 = v37;
  v75 = v35;
  v40 = v51;
  swift_getWitnessTable();
  v41 = v47;
  sub_24B6C7504();
  v42 = *(v50 + 8);
  v42(v38, v40);
  sub_24B6C7504();
  return (v42)(v41, v40);
}

uint64_t sub_24B6D79D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v111 = a6;
  v112 = a8;
  v101 = a7;
  v102 = a5;
  v109 = a4;
  v110 = a3;
  v105 = a2;
  v106 = a1;
  v107 = a9;
  v104 = a11;
  v103 = a10;
  v150 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v130 = a5;
  v131 = a10;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v13 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B75C088();
  v151 = sub_24B75B558();
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  v14 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v15 = sub_24B75B558();
  v148 = a7;
  v149 = MEMORY[0x277CE01B0];
  v16 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v147 = MEMORY[0x277CDF678];
  v17 = swift_getWitnessTable();
  v108 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v144 = v17;
  v145 = v108;
  v18 = v16;
  v19 = swift_getWitnessTable();
  v130 = v14;
  v131 = MEMORY[0x277CE1350];
  v132 = v15;
  v133 = v15;
  v134 = v17;
  v135 = MEMORY[0x277CE1340];
  v136 = v19;
  v137 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v20 = swift_getWitnessTable();
  v21 = MEMORY[0x277CE1198];
  v22 = swift_getWitnessTable();
  v142 = v20;
  v143 = v22;
  swift_getWitnessTable();
  v23 = sub_24B75C088();
  v88 = v21;
  v24 = swift_getWitnessTable();
  v130 = v23;
  v131 = v24;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B958();
  v25 = sub_24B75B558();
  v130 = v23;
  v131 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v140 = OpaqueTypeConformance2;
  v141 = v27;
  v86 = v18;
  v28 = swift_getWitnessTable();
  v130 = v25;
  v131 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v130 = v99;
  v131 = MEMORY[0x277D837D0];
  v132 = OpaqueTypeMetadata2;
  v133 = v30;
  v134 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v81 = v13;
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  v152 = sub_24B75C4E8();
  v31 = v109;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v153 = sub_24B75C4E8();
  v154 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  v90 = sub_24B75C178();
  v92 = sub_24B75BF88();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v79 - v32;
  sub_24B75B8E8();
  v96 = sub_24B75B558();
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v91 = &v79 - v33;
  v97 = sub_24B75B558();
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v100 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v93 = &v79 - v36;
  MEMORY[0x28223BE20](v37);
  v95 = &v79 - v38;
  v39 = v110;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  v40 = v111;
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v138 = swift_getWitnessTable();
  v139 = v108;
  swift_getWitnessTable();
  v41 = sub_24B75C088();
  v108 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v84 = &v79 - v45;
  v130 = v39;
  v131 = v31;
  v46 = v101;
  v47 = v102;
  v132 = v102;
  v133 = v40;
  v134 = v101;
  v135 = v112;
  v48 = v103;
  v49 = v104;
  v136 = v103;
  v137 = v104;
  v80 = type metadata accessor for WorkoutDetailView(0, &v130);
  v82 = v43;
  v51 = v105;
  v50 = v106;
  sub_24B6C7BEC(v105, v80, v43);
  v83 = v41;
  v85 = swift_getWitnessTable();
  sub_24B6C7504();
  v87 = *(v108 + 8);
  v88 = v108 + 8;
  v87(v43, v41);
  v113 = v110;
  v114 = v109;
  v115 = v47;
  v116 = v111;
  v117 = v46;
  v118 = v112;
  v119 = v48;
  v120 = v49;
  v121 = v50;
  v122 = v51;
  v52 = swift_getWitnessTable();
  v53 = v89;
  sub_24B75BF78();
  v54 = sub_24B75B9D8();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v55 = v134;
  if (v134)
  {
    v56 = 0;
  }

  else
  {
    v56 = v131;
  }

  v129 = v52;
  v57 = v92;
  v58 = swift_getWitnessTable();
  v59 = v91;
  sub_24B7274C0(v54, v56, v55, v57, v58);
  (*(v94 + 8))(v53, v57);
  v60 = sub_24B75B9F8();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v61 = v134;
  if (v134)
  {
    v62 = 0;
  }

  else
  {
    v62 = v133;
  }

  v63 = sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v127 = v58;
  v128 = v63;
  v64 = v96;
  v65 = swift_getWitnessTable();
  v66 = v93;
  sub_24B7274C0(v60, v62, v61, v64, v65);
  (*(v98 + 8))(v59, v64);
  v125 = v65;
  v126 = v63;
  v67 = v97;
  v68 = swift_getWitnessTable();
  v69 = v95;
  sub_24B6C7504();
  v70 = v99;
  v71 = *(v99 + 8);
  v71(v66, v67);
  v73 = v82;
  v72 = v83;
  v74 = v84;
  (*(v108 + 16))(v82, v84, v83);
  v130 = v73;
  v75 = *(v70 + 16);
  v76 = v100;
  v75(v100, v69, v67);
  v131 = v76;
  v150 = v72;
  v151 = v67;
  v123 = v85;
  v124 = v68;
  sub_24B7386C4(&v130, 2uLL, &v150);
  v71(v69, v67);
  v77 = v87;
  v87(v74, v72);
  v71(v76, v67);
  return v77(v73, v72);
}

uint64_t sub_24B6D8810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v193 = a4;
  v194 = a8;
  v181 = a7;
  v182 = a3;
  v213 = a6;
  v214 = a1;
  v185 = a5;
  v204 = a2;
  v192 = a9;
  v186 = a11;
  v183 = a10;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345A0, &qword_24B75F940);
  MEMORY[0x28223BE20](v190);
  v203 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v191 = &v162 - v14;
  v15 = sub_24B75B558();
  v16 = sub_24B75B558();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  v18 = sub_24B75C178();
  v188 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v170 = v17;
  v171 = &v162 - v19;
  MEMORY[0x28223BE20](v20);
  v169 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v168 = &v162 - v23;
  v165 = v15;
  v163 = *(v15 - 8);
  MEMORY[0x28223BE20](v24);
  v162 = &v162 - v25;
  v172 = v16;
  v164 = *(v16 - 8);
  MEMORY[0x28223BE20](v26);
  v167 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v166 = &v162 - v29;
  v205 = v30;
  v202 = sub_24B75C4E8();
  v187 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v189 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v201 = &v162 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  v35 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v36 = sub_24B75B558();
  v261 = a7;
  v262 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v260 = MEMORY[0x277CDF678];
  v37 = swift_getWitnessTable();
  v38 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v257 = v37;
  v258 = v38;
  v39 = swift_getWitnessTable();
  v249 = v35;
  v250 = MEMORY[0x277CE1350];
  v251 = v36;
  v252 = v36;
  v253 = v37;
  v254 = MEMORY[0x277CE1340];
  v255 = v39;
  v256 = v39;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v247 = v40;
  v248 = v41;
  swift_getWitnessTable();
  v42 = sub_24B75C088();
  v43 = swift_getWitnessTable();
  v249 = v42;
  v250 = v43;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B958();
  v44 = sub_24B75B558();
  v249 = v42;
  v250 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v245 = OpaqueTypeConformance2;
  v246 = v46;
  v47 = swift_getWitnessTable();
  v249 = v44;
  v250 = v47;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v249 = v34;
  v250 = MEMORY[0x277D837D0];
  v251 = OpaqueTypeMetadata2;
  v252 = v49;
  v253 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  v50 = sub_24B75C088();
  v174 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v173 = &v162 - v51;
  v200 = v52;
  v53 = sub_24B75B558();
  v176 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v175 = &v162 - v54;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  v199 = v53;
  v55 = sub_24B75B558();
  v180 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v178 = &v162 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v177 = &v162 - v58;
  v198 = v59;
  v60 = sub_24B75C4E8();
  v211 = *(v60 - 8);
  v212 = v60;
  MEMORY[0x28223BE20](v60);
  v210 = &v162 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v209 = &v162 - v63;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v64 = v185;
  v65 = v183;
  v249 = v185;
  v250 = v183;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v66 = sub_24B75C088();
  v179 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v68 = &v162 - v67;
  v208 = sub_24B75B558();
  v195 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v207 = &v162 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v206 = &v162 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v75 = &v162 - v74;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034538, &qword_24B7671C0);
  MEMORY[0x28223BE20](v184);
  v197 = &v162 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v79 = &v162 - v78;
  v249 = v182;
  v250 = v193;
  v251 = v64;
  v252 = v213;
  v253 = v181;
  v254 = v194;
  v255 = v65;
  v256 = v186;
  v80 = type metadata accessor for WorkoutDetailView(0, &v249);
  v81 = v204;
  v213 = v80;
  v82 = sub_24B6C7B08(v204);
  v83 = 1;
  if (!v82)
  {
    sub_24B6C86BC(v81, v75);
    sub_24B6B8DE8(v75, v79, &qword_27F0346C0, &qword_24B75FAC0);
    v83 = 0;
  }

  v84 = *(v73 + 56);
  v196 = v79;
  v84(v79, v83, 1, v72);
  sub_24B6C9BD8(v81, v213, v68);
  sub_24B75B9C8();
  v85 = swift_getWitnessTable();
  v86 = v207;
  sub_24B75BE48();
  (*(v179 + 8))(v68, v66);
  v87 = MEMORY[0x277CDF918];
  v243 = v85;
  v244 = MEMORY[0x277CDF918];
  v88 = v208;
  v183 = swift_getWitnessTable();
  sub_24B6C7504();
  v185 = *(v195 + 8);
  v186 = v195 + 8;
  v185(v86, v88);
  v89 = type metadata accessor for WorkoutDetail(0);
  v90 = v89;
  v91 = *(v81 + *(v89 + 76));
  if (*(v91 + 16))
  {
    v92 = *(v89 + 72);
    v93 = sub_24B75C128();
    v94 = v81 + v92;
    v95 = v173;
    v96 = v213;
    sub_24B6CC168(v91, v94, (v93 & 1) == 0, v213, v173);
    sub_24B75BA08();
    v97 = v200;
    v98 = swift_getWitnessTable();
    v99 = v175;
    sub_24B75BE48();
    (*(v174 + 8))(v95, v97);
    v100 = v96;
    if (qword_27F033CE8 != -1)
    {
      swift_once();
    }

    v249 = qword_27F034520;

    sub_24B75B9A8();
    v241 = v98;
    v242 = v87;
    v101 = v199;
    v102 = swift_getWitnessTable();
    v103 = v178;
    sub_24B75BCA8();

    (*(v176 + 8))(v99, v101);
    v104 = sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930, MEMORY[0x277CE0728]);
    v239 = v102;
    v240 = v104;
    v105 = v198;
    swift_getWitnessTable();
    v106 = v177;
    sub_24B6C7504();
    v107 = v180;
    v108 = *(v180 + 8);
    v108(v103, v105);
    sub_24B6C7504();
    v108(v106, v105);
    v109 = v210;
    (*(v107 + 32))(v210, v103, v105);
    (*(v107 + 56))(v109, 0, 1, v105);
  }

  else
  {
    v109 = v210;
    (*(v180 + 56))(v210, 1, 1, v198);
    v217 = swift_getWitnessTable();
    v218 = v87;
    v110 = swift_getWitnessTable();
    v111 = sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930, MEMORY[0x277CE0728]);
    v215 = v110;
    v216 = v111;
    swift_getWitnessTable();
    v100 = v213;
  }

  v113 = v211;
  v112 = v212;
  v180 = *(v211 + 16);
  v181 = v211 + 16;
  (v180)(v209, v109, v212);
  v114 = *(v113 + 8);
  v211 = v113 + 8;
  v182 = v114;
  v114(v109, v112);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (v249)
  {
    v115 = v189;
    (*(v188 + 56))(v189, 1, 1, v205);
  }

  else
  {
    sub_24B75B568();
    sub_24B75B998();
    v116 = v162;
    v117 = v194;
    sub_24B75BD68();
    sub_24B75B9C8();
    v237 = v117;
    v238 = MEMORY[0x277CE0880];
    v118 = v165;
    v119 = swift_getWitnessTable();
    v120 = v167;
    sub_24B75BE48();
    (*(v163 + 8))(v116, v118);
    v235 = v119;
    v236 = MEMORY[0x277CDF918];
    v121 = v172;
    v122 = swift_getWitnessTable();
    v123 = v166;
    sub_24B6C7504();
    v124 = v164;
    v194 = *(v164 + 8);
    v194(v120, v121);
    v125 = v204 + v90[7];
    v126 = v204 + v90[26];
    v127 = v204 + v90[6];
    v128 = v168;
    sub_24B6D3668(v125, v126, v127, v213, v168);
    v129 = sub_24B75B9C8();
    sub_24B75B3D8();
    v130 = v170;
    v131 = v128 + *(v170 + 36);
    *v131 = v129;
    *(v131 + 8) = v132;
    *(v131 + 16) = v133;
    *(v131 + 24) = v134;
    *(v131 + 32) = v135;
    *(v131 + 40) = 0;
    (*(v124 + 16))(v120, v123, v121);
    v249 = v120;
    v136 = v169;
    sub_24B6B9D34(v128, v169, &qword_27F034598, &qword_24B75F938);
    v250 = v136;
    v230 = v121;
    v231 = v130;
    v225 = v122;
    v226 = sub_24B6E8C14();
    v137 = v171;
    sub_24B7386C4(&v249, 2uLL, &v230);
    sub_24B6B9CD4(v128, &qword_27F034598, &qword_24B75F938);
    v138 = v194;
    v194(v123, v121);
    v100 = v213;
    sub_24B6B9CD4(v136, &qword_27F034598, &qword_24B75F938);
    v138(v120, v121);
    v139 = v188;
    v115 = v189;
    v140 = v137;
    v141 = v205;
    (*(v188 + 32))(v189, v140, v205);
    (*(v139 + 56))(v115, 0, 1, v141);
  }

  swift_getWitnessTable();
  v142 = v187;
  v143 = *(v187 + 16);
  v144 = v202;
  v143(v201, v115, v202);
  v145 = *(v142 + 8);
  v193 = (v142 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v194 = v145;
  v145(v115, v144);
  v146 = v196;
  v147 = v191;
  sub_24B6D4D6C(v204, v100, v191);
  v148 = v197;
  sub_24B6B9D34(v146, v197, &qword_27F034538, &qword_24B7671C0);
  v249 = v148;
  v149 = v207;
  v150 = v208;
  (*(v195 + 16))(v207, v206, v208);
  v250 = v149;
  v151 = v210;
  v152 = v212;
  (v180)(v210, v209);
  v251 = v151;
  v153 = v201;
  v143(v115, v201, v144);
  v252 = v115;
  v154 = v203;
  sub_24B6B9D34(v147, v203, &qword_27F0345A0, &qword_24B75F940);
  v253 = v154;
  v230 = v184;
  v231 = v150;
  v232 = v152;
  v233 = v144;
  v234 = v190;
  v225 = sub_24B6E9B94(&qword_27F0346E8, &qword_27F034538, &qword_24B7671C0, sub_24B6E8CCC);
  v226 = v183;
  v223 = swift_getWitnessTable();
  v224 = MEMORY[0x277CDF918];
  v155 = swift_getWitnessTable();
  v156 = sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930, MEMORY[0x277CE0728]);
  v221 = v155;
  v222 = v156;
  v220 = swift_getWitnessTable();
  v227 = swift_getWitnessTable();
  v219 = swift_getWitnessTable();
  v228 = swift_getWitnessTable();
  v229 = sub_24B6E8E40();
  sub_24B7386C4(&v249, 5uLL, &v230);
  sub_24B6B9CD4(v147, &qword_27F0345A0, &qword_24B75F940);
  v157 = v194;
  v194(v153, v144);
  v158 = v182;
  v182(v209, v152);
  v159 = v208;
  v160 = v185;
  v185(v206, v208);
  sub_24B6B9CD4(v196, &qword_27F034538, &qword_24B7671C0);
  sub_24B6B9CD4(v203, &qword_27F0345A0, &qword_24B75F940);
  v157(v115, v202);
  v158(v210, v212);
  v160(v207, v159);
  return sub_24B6B9CD4(v197, &qword_27F034538, &qword_24B7671C0);
}

uint64_t sub_24B6DA13C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A8, &qword_24B75F948);
  v25[4] = sub_24B75B958();
  v36 = a2[2];
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  v32 = a2[5];
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v25[2] = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v65 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v4 = a2[4];
  v30 = a2 + 7;
  v31 = a2 + 9;
  v5 = a2[8];
  v28 = v4;
  v29 = v5;
  v50 = v4;
  v51 = v5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v25[3] = sub_24B75C088();
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v26 = a2[6];
  v62 = v26;
  v63 = MEMORY[0x277CE01B0];
  v60 = swift_getWitnessTable();
  v61 = MEMORY[0x277CDF678];
  v58 = swift_getWitnessTable();
  v59 = v65;
  v7 = swift_getWitnessTable();
  v55 = MEMORY[0x277CE1340];
  v56 = v7;
  v57 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v48 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v50 = v6;
  v51 = MEMORY[0x277D837D0];
  v52 = OpaqueTypeMetadata2;
  v53 = v9;
  v54 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B6C743C(&qword_27F0345B8, &qword_27F0345A8, &qword_24B75F948, MEMORY[0x277CDF500]);
  sub_24B75B4C8();
  v10 = a2[3];
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345C0, &qword_24B75F958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  v11 = sub_24B75B558();
  v44 = swift_getWitnessTable();
  v45 = sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v42 = swift_getWitnessTable();
  v43 = v45;
  v40 = swift_getWitnessTable();
  v41 = v45;
  v12 = swift_getWitnessTable();
  v13 = sub_24B75B3E8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v25 - v18;
  v20 = sub_24B75B988();
  *&v21 = v36;
  *(&v21 + 1) = v10;
  *&v22 = v28;
  *(&v22 + 1) = v32;
  v37[1] = v21;
  v37[2] = v22;
  *&v21 = v26;
  *(&v21 + 1) = *v30;
  *&v22 = v29;
  *(&v22 + 1) = *v31;
  v37[3] = v21;
  v37[4] = v22;
  v38 = v34;
  v39 = v33;
  sub_24B738A84(v20, sub_24B6EAC5C, v37, v11, v12);
  swift_getWitnessTable();
  sub_24B6C7504();
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_24B6C7504();
  return (v23)(v19, v13);
}

uint64_t sub_24B6DABC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v73 = a7;
  v74 = a8;
  v63 = a6;
  v70 = a4;
  v71 = a5;
  v65 = a2;
  v66 = a9;
  v72 = a1;
  v64 = a11;
  v62 = a10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A8, &qword_24B75F948);
  v60 = sub_24B75B958();
  v61 = a3;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v68 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v110 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v69 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v59 = sub_24B75C088();
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v107 = v73;
  v108 = MEMORY[0x277CE01B0];
  v105 = swift_getWitnessTable();
  v106 = MEMORY[0x277CDF678];
  v103 = swift_getWitnessTable();
  v104 = v110;
  v13 = swift_getWitnessTable();
  v96 = MEMORY[0x277CE1340];
  v97 = v13;
  v98 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v101 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v91 = v12;
  v92 = MEMORY[0x277D837D0];
  v93 = OpaqueTypeMetadata2;
  v94 = v15;
  v95 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B6C743C(&qword_27F0345B8, &qword_27F0345A8, &qword_24B75F948, MEMORY[0x277CDF500]);
  sub_24B75B4C8();
  v16 = v70;
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345C0, &qword_24B75F958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v50[1] = swift_getWitnessTable();
  v50[0] = sub_24B75C088();
  v51 = *(v50[0] - 8);
  MEMORY[0x28223BE20](v50[0]);
  v18 = v50 - v17;
  sub_24B75B8E8();
  v53 = sub_24B75B558();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v67 = v50 - v19;
  v56 = sub_24B75B558();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = v50 - v20;
  v58 = sub_24B75B558();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v57 = v50 - v23;
  sub_24B75B788();
  v24 = v61;
  v75 = v61;
  v76 = v16;
  v25 = v62;
  v26 = v63;
  v77 = v71;
  v78 = v63;
  v27 = v73;
  v79 = v73;
  v80 = v74;
  v28 = v64;
  v81 = v62;
  v82 = v64;
  v83 = v72;
  v84 = v65;
  v29 = v18;
  sub_24B75C078();
  v30 = sub_24B75B9B8();
  v31 = v50[0];
  v65 = swift_getWitnessTable();
  sub_24B7274C0(v30, 0x4034000000000000, 0, v31, v65);
  (*(v51 + 8))(v29, v31);
  LODWORD(v68) = sub_24B75B9D8();
  v91 = v24;
  v92 = v70;
  v93 = v71;
  v94 = v26;
  v95 = v27;
  v96 = v74;
  v97 = v25;
  v98 = v28;
  type metadata accessor for WorkoutDetailView(0, &v91);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v32 = v95;
  if (v95)
  {
    v33 = 0;
  }

  else
  {
    v33 = v92;
  }

  v34 = sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v89 = v65;
  v90 = v34;
  v35 = v53;
  v36 = swift_getWitnessTable();
  v37 = v52;
  v38 = v32;
  v39 = v67;
  sub_24B7274C0(v68, v33, v38, v35, v36);
  (*(v55 + 8))(v39, v35);
  v40 = sub_24B75B9F8();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v41 = v95;
  if (v95)
  {
    v42 = 0;
  }

  else
  {
    v42 = v94;
  }

  v87 = v36;
  v88 = v34;
  v43 = v56;
  v44 = swift_getWitnessTable();
  v45 = v54;
  sub_24B7274C0(v40, v42, v41, v43, v44);
  (*(v59 + 8))(v37, v43);
  v85 = v44;
  v86 = v34;
  v46 = v58;
  swift_getWitnessTable();
  v47 = v57;
  sub_24B6C7504();
  v48 = *(v60 + 8);
  v48(v45, v46);
  sub_24B6C7504();
  return (v48)(v47, v46);
}

uint64_t sub_24B6DB918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10, uint64_t a11)
{
  v151 = a8;
  v147 = a6;
  v148 = a7;
  v138 = a5;
  v139 = a3;
  v144 = a4;
  v141 = a2;
  v136 = a1;
  v132 = a9;
  v146 = a11;
  v140 = a10;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345C0, &qword_24B75F958);
  MEMORY[0x28223BE20](v129);
  v131 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v130 = (&v122 - v14);
  v15 = sub_24B75B558();
  v128 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v123 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v122 - v18;
  v142 = v19;
  v143 = sub_24B75C4E8();
  v150 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v137 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v149 = &v122 - v22;
  v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A8, &qword_24B75F948);
  v135 = sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v23 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v133 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v25 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v173 = WitnessTable;
  v174 = v25;
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v154 = a5;
  v155 = a10;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v26 = v23;
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v134 = sub_24B75C088();
  v127 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v126 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  v27 = v139;
  sub_24B75B558();
  v28 = sub_24B75B558();
  v29 = COERCE_DOUBLE(sub_24B75B558());
  v171 = v148;
  v172 = MEMORY[0x277CE01B0];
  v169 = swift_getWitnessTable();
  v170 = MEMORY[0x277CDF678];
  v30 = swift_getWitnessTable();
  v167 = v30;
  v168 = v25;
  *&v31 = COERCE_DOUBLE(swift_getWitnessTable());
  v154 = v28;
  v155 = MEMORY[0x277CE1350];
  v156 = v29;
  v157 = v29;
  v158 = v30;
  v159 = MEMORY[0x277CE1340];
  v160 = *&v31;
  v161 = v31;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v125 = v26;
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v165 = v32;
  v166 = v33;
  swift_getWitnessTable();
  v34 = sub_24B75C088();
  v35 = COERCE_DOUBLE(swift_getWitnessTable());
  v154 = v34;
  v155 = v35;
  swift_getOpaqueTypeMetadata2();
  v36 = sub_24B75B558();
  v154 = v34;
  v155 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v163 = OpaqueTypeConformance2;
  v164 = v38;
  v39 = COERCE_DOUBLE(swift_getWitnessTable());
  v154 = v36;
  v155 = v39;
  *&v40 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v41 = COERCE_DOUBLE(sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]));
  v154 = v126;
  v155 = MEMORY[0x277D837D0];
  v156 = *&v40;
  v157 = v41;
  v158 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  v127 = sub_24B75C178();
  sub_24B6C743C(&qword_27F0345B8, &qword_27F0345A8, &qword_24B75F948, MEMORY[0x277CDF500]);
  v42 = sub_24B75B4C8();
  v134 = *(v42 - 8);
  v135 = v42;
  MEMORY[0x28223BE20](v42);
  v44 = &v122 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v145 = &v122 - v46;
  v47 = v27;
  v154 = v27;
  v155 = v144;
  v48 = v138;
  v50 = v147;
  v49 = v148;
  v156 = *&v138;
  v157 = v147;
  v158 = v148;
  v159 = v151;
  v51 = v140;
  v160 = v140;
  v161 = v146;
  v133 = type metadata accessor for WorkoutDetailView(0, &v154);
  v52 = v136;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (v158)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = v155 + v157;
  }

  if (v162 == 2)
  {
    v54 = 0.3;
  }

  else
  {
    v54 = 0.4;
  }

  v55 = qword_24B75F8C0[v162 == 2];
  v56 = swift_allocObject();
  v57 = v144;
  *(v56 + 16) = v47;
  *(v56 + 24) = v57;
  *(v56 + 32) = v48;
  *(v56 + 40) = v50;
  v58 = v49;
  v59 = v151;
  *(v56 + 48) = v58;
  *(v56 + 56) = v59;
  v60 = v51;
  v61 = v57;
  v62 = v146;
  *(v56 + 64) = v60;
  *(v56 + 72) = v62;
  *(v56 + 80) = v53;
  *(v56 + 88) = v55;
  *(v56 + 96) = v54;
  v152[2] = v47;
  *&v152[3] = v61;
  v152[4] = v48;
  *&v152[5] = v50;
  v152[6] = v58;
  v152[7] = v59;
  *&v152[8] = v60;
  v152[9] = v62;
  v152[10] = v52;
  v152[11] = v141;
  sub_24B6EAEF0(sub_24B6EAC8C, v152, v44);

  v63 = sub_24B6C743C(&qword_27F0349D8, &qword_27F0345A8, &qword_24B75F948, MEMORY[0x277CDF510]);
  v64 = swift_getWitnessTable();
  v153[5] = v63;
  v153[6] = v64;
  v65 = v135;
  v124 = swift_getWitnessTable();
  sub_24B6C7504();
  v66 = *(v134 + 8);
  v126 = v134 + 8;
  v127 = v44;
  v125 = v66;
  v66(v44, v65);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v67 = MEMORY[0x277CE0880];
  if (v154)
  {
    v68 = v137;
    v128[7](v137, 1, 1, v142);
    v152[13] = v59;
    v152[14] = v67;
    swift_getWitnessTable();
    v69 = v59;
  }

  else
  {
    sub_24B75B568();
    sub_24B75B998();
    v70 = v123;
    sub_24B75BD68();
    v153[3] = v59;
    v153[4] = v67;
    v71 = v142;
    swift_getWitnessTable();
    v72 = v122;
    sub_24B6C7504();
    v73 = v128;
    v74 = v128[1];
    v74(v70, v71);
    sub_24B6C7504();
    v74(v72, v71);
    v68 = v137;
    (v73[4])(v137, v70, v71);
    v73[7](v68, 0, 1, v71);
    v69 = v151;
  }

  v75 = v150;
  v76 = v143;
  v122 = *(v150 + 16);
  v123 = (v150 + 16);
  (v122)(v149, v68, v143);
  v77 = *(v75 + 8);
  v150 = v75 + 8;
  v128 = v77;
  (v77)(v68, v76);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v78 = v159;
  v79 = v160;
  v80 = v161;
  v81 = swift_allocObject();
  v133 = &v122;
  v83 = v138;
  v82 = v139;
  *(v81 + 2) = v139;
  v81[3] = v61;
  v84 = v147;
  v85 = v148;
  *(v81 + 4) = v83;
  v81[5] = v84;
  *(v81 + 6) = v85;
  *(v81 + 7) = v69;
  v86 = *&v140;
  v87 = v69;
  v88 = v146;
  v81[8] = v140;
  *(v81 + 9) = v88;
  *(v81 + 10) = v78;
  v81[11] = v79;
  *(v81 + 12) = v80;
  v89 = v130;
  *v130 = v78;
  v90 = v89;
  v89[1] = v79;
  *(v89 + 2) = v80;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034A10, &qword_24B75FD80);
  sub_24B6DE6F0(v141, v82, *&v144, v83, *&v147, v85, v87, v90 + *(v91 + 44), v86, v88);

  LOBYTE(v75) = sub_24B75B9B8();
  sub_24B75B3D8();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0349E0, &qword_24B75FD70) + 36);
  *v100 = v75;
  *(v100 + 8) = v93;
  *(v100 + 16) = v95;
  *(v100 + 24) = v97;
  *(v100 + 32) = v99;
  *(v100 + 40) = 0;
  LOBYTE(v75) = sub_24B75B9C8();
  sub_24B75B3D8();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0349E8, &qword_24B75FD78) + 36);
  *v109 = v75;
  *(v109 + 8) = v102;
  *(v109 + 16) = v104;
  *(v109 + 24) = v106;
  *(v109 + 32) = v108;
  *(v109 + 40) = 0;
  if (qword_27F033CE8 != -1)
  {
    swift_once();
  }

  v110 = qword_27F034520;
  v111 = sub_24B75B9A8();
  v112 = v129;
  v113 = v90 + *(v129 + 36);
  *v113 = v110;
  *(v113 + 8) = v111;
  v114 = v135;
  v115 = v127;
  (*(v134 + 16))(v127, v145, v135);
  v154 = v115;
  v116 = *&v137;
  v117 = v143;
  (v122)(v137, v149, v143);
  v155 = v116;
  v118 = v131;
  sub_24B6B9D34(v90, v131, &qword_27F0345C0, &qword_24B75F958);
  v156 = *&v118;

  v153[0] = v114;
  v153[1] = v117;
  v153[2] = v112;
  v152[18] = v124;
  v152[16] = v151;
  v152[17] = MEMORY[0x277CE0880];
  v152[15] = swift_getWitnessTable();
  v152[19] = swift_getWitnessTable();
  v152[20] = sub_24B6EACA4(&qword_27F0349F0, &qword_27F0345C0, &qword_24B75F958, sub_24B6EAD54);
  sub_24B7386C4(&v154, 3uLL, v153);
  sub_24B6B9CD4(v90, &qword_27F0345C0, &qword_24B75F958);
  v119 = v128;
  (v128)(v149, v117);
  v120 = v125;
  v125(v145, v114);
  sub_24B6B9CD4(v118, &qword_27F0345C0, &qword_24B75F958);
  v119(*&v116, v117);
  return v120(v115, v114);
}

uint64_t sub_24B6DCAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>, uint64_t a12)
{
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  swift_getWitnessTable();
  sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  swift_getOpaqueTypeConformance2();
  sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  v13 = sub_24B75C178();
  v14 = sub_24B6EAF2C();
  WitnessTable = swift_getWitnessTable();
  return sub_24B6DD274(a1, a2, &type metadata for TwoColumnHStack, v13, v14, WitnessTable, x8_0);
}

uint64_t sub_24B6DD274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B75B428();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_24B75B438();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_24B75B4D8();
}

uint64_t sub_24B6DD41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v58 = a2;
  v59 = a8;
  v67 = a4;
  v68 = a7;
  v64 = a6;
  v66 = a5;
  v69 = a1;
  v70 = a3;
  v60 = a9;
  v57 = a11;
  v65 = a10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v96 = a7;
  v97 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v95 = MEMORY[0x277CDF678];
  v12 = swift_getWitnessTable();
  v62 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v92 = v12;
  v93 = v62;
  v13 = swift_getWitnessTable();
  v89 = MEMORY[0x277CE1340];
  v90 = v13;
  v91 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v14 = swift_getWitnessTable();
  v63 = MEMORY[0x277CE1198];
  v83[6] = v14;
  v83[7] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B958();
  sub_24B75B558();
  v83[4] = swift_getOpaqueTypeConformance2();
  v83[5] = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v84 = v56;
  v85 = MEMORY[0x277D837D0];
  v86 = OpaqueTypeMetadata2;
  v87 = v16;
  v88 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  v17 = sub_24B75C088();
  v18 = *(v17 - 8);
  v55 = v17;
  v56 = v18;
  MEMORY[0x28223BE20](v17);
  v53 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v54 = &v49 - v21;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  v22 = v64;
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  v83[2] = swift_getWitnessTable();
  v83[3] = v62;
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v24 = v65;
  v23 = v66;
  v84 = v66;
  v85 = v65;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v25 = sub_24B75C088();
  v62 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v61 = &v49 - v29;
  sub_24B75B788();
  v71 = v70;
  v72 = v67;
  v73 = v23;
  v74 = v22;
  v31 = v58;
  v30 = v59;
  v75 = v68;
  v76 = v59;
  v32 = v57;
  v77 = v24;
  v78 = v57;
  v79 = v69;
  v80 = v58;
  sub_24B75C078();
  v49 = v25;
  v50 = swift_getWitnessTable();
  sub_24B6C7504();
  v51 = *(v62 + 8);
  v52 = v62 + 8;
  v33 = v27;
  v51(v27, v25);
  v34 = type metadata accessor for WorkoutDetail(0);
  v35 = *(v34 + 72);
  v36 = *(v31 + *(v34 + 76));
  v84 = v70;
  v85 = v67;
  v86 = v66;
  v87 = v64;
  v88 = v68;
  v89 = v30;
  v90 = v65;
  v91 = v32;
  v37 = type metadata accessor for WorkoutDetailView(0, &v84);
  v38 = v53;
  sub_24B6CC168(v36, v31 + v35, 0, v37, v53);
  v39 = v55;
  v40 = swift_getWitnessTable();
  v41 = v54;
  sub_24B6C7504();
  v42 = v56;
  v43 = *(v56 + 8);
  v43(v38, v39);
  v44 = v33;
  v45 = v33;
  v46 = v49;
  (*(v62 + 16))(v45, v61, v49);
  v84 = v44;
  (*(v42 + 16))(v38, v41, v39);
  v85 = v38;
  v83[0] = v46;
  v83[1] = v39;
  v81 = v50;
  v82 = v40;
  sub_24B7386C4(&v84, 2uLL, v83);
  v43(v41, v39);
  v47 = v51;
  v51(v61, v46);
  v43(v38, v39);
  return v47(v44, v46);
}

uint64_t sub_24B6DDEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v64 = a8;
  v63 = a7;
  v60 = a5;
  v61 = a4;
  v65 = a2;
  v67 = a1;
  v71 = a9;
  v62 = a11;
  v59 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v82 = a5;
  v83 = a10;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v69 = sub_24B75C088();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v55 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345B0, &qword_24B75F950);
  MEMORY[0x28223BE20](v77);
  v76 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v75 = &v55 - v19;
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v57 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v21 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v90 = WitnessTable;
  v91 = v21;
  v58 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  v22 = sub_24B75C088();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - v24;
  v26 = sub_24B75B558();
  v74 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v72 = &v55 - v30;
  v82 = a3;
  v83 = v61;
  v84 = v60;
  v85 = a6;
  v86 = v63;
  v87 = v64;
  v88 = v59;
  v89 = v62;
  v31 = type metadata accessor for WorkoutDetailView(0, &v82);
  v32 = v65;
  sub_24B6C7BEC(v65, v31, v25);
  sub_24B75B9C8();
  v33 = swift_getWitnessTable();
  sub_24B75BE48();
  (*(v23 + 8))(v25, v22);
  v81[3] = v33;
  v81[4] = MEMORY[0x277CDF918];
  v56 = v26;
  v63 = swift_getWitnessTable();
  v34 = v72;
  v73 = v28;
  sub_24B6C7504();
  v35 = *(v74 + 8);
  v62 = v74 + 8;
  v64 = v35;
  v35(v28, v26);
  v36 = v75;
  v37 = v32;
  sub_24B6C86BC(v32, v75);
  LOBYTE(v32) = sub_24B75B9C8();
  sub_24B75B3D8();
  v38 = v36 + *(v77 + 36);
  *v38 = v32;
  *(v38 + 8) = v39;
  *(v38 + 16) = v40;
  *(v38 + 24) = v41;
  *(v38 + 32) = v42;
  *(v38 + 40) = 0;
  v43 = v66;
  sub_24B6C9BD8(v37, v31, v66);
  v44 = v69;
  v45 = swift_getWitnessTable();
  v46 = v68;
  sub_24B6C7504();
  v47 = v70;
  v48 = *(v70 + 8);
  v48(v43, v44);
  v49 = v73;
  v50 = v56;
  (*(v74 + 16))(v73, v34, v56);
  v82 = v49;
  v51 = v75;
  v52 = v76;
  sub_24B6B9D34(v75, v76, &qword_27F0345B0, &qword_24B75F950);
  v83 = v52;
  (*(v47 + 16))(v43, v46, v44);
  v84 = v43;
  v81[0] = v50;
  v81[1] = v77;
  v81[2] = v44;
  v78 = v63;
  v79 = sub_24B6EABA8();
  v80 = v45;
  sub_24B7386C4(&v82, 3uLL, v81);
  v48(v46, v44);
  sub_24B6B9CD4(v51, &qword_27F0345B0, &qword_24B75F950);
  v53 = v64;
  v64(v72, v50);
  v48(v43, v44);
  sub_24B6B9CD4(v76, &qword_27F0345B0, &qword_24B75F950);
  return v53(v73, v50);
}

uint64_t sub_24B6DE6F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v41 = a6;
  v42 = a7;
  v39 = a4;
  v40 = a5;
  v44 = a8;
  v38 = a10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345A0, &qword_24B75F940);
  MEMORY[0x28223BE20](v13 - 8);
  v43 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v45 = &v38 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346E0, &qword_24B75FAE8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034A38, &qword_24B75FD98);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v38 - v25;
  v46[0] = a2;
  v46[1] = a3;
  v46[2] = v39;
  v46[3] = v40;
  v46[4] = v41;
  v46[5] = v42;
  v46[6] = a9;
  v46[7] = v38;
  v27 = type metadata accessor for WorkoutDetailView(0, v46);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (v46[0])
  {
    v28 = 1;
  }

  else
  {
    v29 = type metadata accessor for WorkoutDetail(0);
    sub_24B6D3668(a1 + v29[7], a1 + v29[26], a1 + v29[6], v27, v20);
    sub_24B6B8DE8(v20, v26, &qword_27F0346E0, &qword_24B75FAE8);
    v28 = 0;
  }

  (*(v18 + 56))(v26, v28, 1, v17);
  sub_24B6D4D6C(a1, v27, v45);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (LOBYTE(v46[0]) == 1)
  {
    v30 = sub_24B75BF08();
  }

  else
  {
    v30 = 0;
  }

  sub_24B6B9D34(v26, v23, &qword_27F034A38, &qword_24B75FD98);
  v31 = v26;
  v32 = v23;
  v33 = v45;
  v34 = v43;
  sub_24B6B9D34(v45, v43, &qword_27F0345A0, &qword_24B75F940);
  v35 = v44;
  sub_24B6B9D34(v32, v44, &qword_27F034A38, &qword_24B75FD98);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034A40, &qword_24B75FDA0);
  sub_24B6B9D34(v34, v35 + *(v36 + 48), &qword_27F0345A0, &qword_24B75F940);
  *(v35 + *(v36 + 64)) = v30;
  sub_24B6B9CD4(v33, &qword_27F0345A0, &qword_24B75F940);
  sub_24B6B9CD4(v31, &qword_27F034A38, &qword_24B75FD98);

  sub_24B6B9CD4(v34, &qword_27F0345A0, &qword_24B75F940);
  return sub_24B6B9CD4(v32, &qword_27F034A38, &qword_24B75FD98);
}

uint64_t sub_24B6DEAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v53 = a3;
  v7 = type metadata accessor for WorkoutDetail(0);
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v4, a2, v13);
  sub_24B6EA848(a1, v9, type metadata accessor for WorkoutDetail);
  v15 = (*(v10 + 80) + 80) & ~*(v10 + 80);
  v16 = (v11 + *(v52 + 80) + v15) & ~*(v52 + 80);
  v17 = swift_allocObject();
  v19 = *(a2 + 16);
  v51 = *(a2 + 24);
  v18 = v51;
  v52 = v17;
  *(v17 + 16) = v19;
  *(v17 + 24) = v18;
  v20 = *(a2 + 40);
  v46 = *(a2 + 32);
  v47 = v19;
  *(v17 + 32) = v46;
  *(v17 + 40) = v20;
  v21 = *(a2 + 64);
  v48 = *(a2 + 48);
  v45 = v21;
  *(v17 + 48) = v48;
  *(v17 + 64) = v21;
  v22 = v17 + v15;
  v23 = v17;
  (*(v10 + 32))(v22, v14, a2);
  sub_24B6EA8B0(v9, v23 + v16, type metadata accessor for WorkoutDetail);
  v50 = sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v49 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v25 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v82 = WitnessTable;
  v83 = v25;
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  v80 = swift_getWitnessTable();
  v81 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v66 = v46;
  v67 = v45;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v84 = sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  v27 = sub_24B75B558();
  v28 = sub_24B75B558();
  v78 = v48;
  v79 = MEMORY[0x277CE01B0];
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x277CDF678];
  v29 = swift_getWitnessTable();
  v74 = v29;
  v75 = v25;
  v30 = swift_getWitnessTable();
  v66 = v27;
  v67 = MEMORY[0x277CE1350];
  v68 = v28;
  v69 = v28;
  v70 = v29;
  v71 = MEMORY[0x277CE1340];
  v72 = v30;
  v73 = v30;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v64 = v31;
  v65 = v32;
  swift_getWitnessTable();
  v33 = sub_24B75C088();
  v34 = swift_getWitnessTable();
  v66 = v33;
  v67 = v34;
  swift_getOpaqueTypeMetadata2();
  v35 = sub_24B75B558();
  v66 = v33;
  v67 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v62 = OpaqueTypeConformance2;
  v63 = v37;
  v38 = swift_getWitnessTable();
  v66 = v35;
  v67 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v66 = v26;
  v67 = MEMORY[0x277D837D0];
  v68 = OpaqueTypeMetadata2;
  v69 = v40;
  v70 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  v85 = sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  v86 = sub_24B75C4E8();
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345D0, &unk_24B75F960);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v41 = swift_getWitnessTable();
  v42 = sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v60 = v41;
  v61 = v42;
  v58 = swift_getWitnessTable();
  v59 = v42;
  v56 = swift_getWitnessTable();
  v57 = v42;
  swift_getWitnessTable();
  sub_24B75B3E8();
  sub_24B75B558();
  v54 = swift_getWitnessTable();
  v55 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  v84 = sub_24B75B4E8();
  v85 = v43;
  sub_24B75B4F8();
  swift_getWitnessTable();
  sub_24B6C7504();

  v84 = v66;
  v85 = v67;
  sub_24B6C7504();
}

uint64_t sub_24B6DF6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a4;
  v51 = a8;
  v43 = a7;
  v40 = a5;
  v41 = a6;
  v47 = a1;
  v48 = a3;
  v46 = a2;
  v49 = a9;
  v45 = a12;
  v44 = a10;
  v42 = a11;
  v39 = sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v38 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v36 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  v74 = WitnessTable;
  v75 = v36;
  v13 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v76 = sub_24B75C088();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v70 = v51;
  v71 = MEMORY[0x277CE01B0];
  v68 = swift_getWitnessTable();
  v69 = MEMORY[0x277CDF678];
  v66 = swift_getWitnessTable();
  v67 = v36;
  v15 = swift_getWitnessTable();
  v63 = MEMORY[0x277CE1340];
  v64 = v15;
  v65 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  v58 = v14;
  v59 = MEMORY[0x277D837D0];
  v60 = OpaqueTypeMetadata2;
  v61 = v17;
  v62 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  v77 = sub_24B75C088();
  v18 = v40;
  sub_24B75B558();
  sub_24B75B558();
  v78 = sub_24B75C4E8();
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345D0, &unk_24B75F960);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  v19 = sub_24B75B558();
  v52[19] = swift_getWitnessTable();
  v53 = sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v52[17] = swift_getWitnessTable();
  v52[18] = v53;
  v35[1] = v13;
  v52[15] = swift_getWitnessTable();
  v52[16] = v53;
  v20 = swift_getWitnessTable();
  v21 = sub_24B75B3E8();
  v39 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v35 - v22;
  v24 = sub_24B75B558();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v35 - v29;
  v31 = sub_24B75B988();
  v52[2] = v50;
  v52[3] = v18;
  v52[4] = v41;
  v52[5] = v43;
  v52[6] = v51;
  v52[7] = v44;
  v52[8] = v42;
  v52[9] = v45;
  v52[10] = v46;
  v52[11] = v48;
  v52[12] = v47;
  sub_24B738A84(v31, sub_24B6EB794, v52, v19, v20);
  sub_24B75B568();
  sub_24B75BA08();
  v32 = swift_getWitnessTable();
  sub_24B75BD68();
  (*(v39 + 8))(v23, v21);
  v52[13] = v32;
  v52[14] = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  sub_24B6C7504();
  v33 = *(v25 + 8);
  v33(v27, v24);
  sub_24B6C7504();
  return (v33)(v30, v24);
}