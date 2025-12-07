__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_245B7434C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245B7436C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_245B743C0()
{
  v1 = *v0;
  sub_245B92FF0();
  MEMORY[0x245D7A680](v1);
  return sub_245B93010();
}

uint64_t sub_245B74434(uint64_t a1)
{
  v2 = *v1;
  sub_245B92FF0();
  MEMORY[0x245D7A680](v2);
  return sub_245B93010();
}

uint64_t sub_245B74478()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7942656C75646F6DLL;
  }
}

uint64_t sub_245B744C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7942656C75646F6DLL && a2 == 0xEE0065646F636574;
  if (v6 || (sub_245B92F50() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000245B93870 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_245B92F50();

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

uint64_t sub_245B745C8(uint64_t a1)
{
  v2 = sub_245B74D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245B74604(uint64_t a1)
{
  v2 = sub_245B74D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245B74640(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34748, &qword_245B94298);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245B74D84();
  sub_245B93030();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_245B74E78(a2, a3);
  sub_245B74EE0();
  sub_245B92F10();
  sub_245B74A54(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_245B92F20();
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_245B747DC(uint64_t a1, uint64_t a2)
{
  sub_245B74A54(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t sub_245B74814@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_245B74ABC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

_DWORD *sub_245B74864@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_245B748D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_245B74918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_245B7497C(uint64_t a1)
{
  *(a1 + 8) = sub_245B749AC();
  result = sub_245B74A00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_245B749AC()
{
  result = qword_27EE34720;
  if (!qword_27EE34720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34720);
  }

  return result;
}

unint64_t sub_245B74A00()
{
  result = qword_27EE34728;
  if (!qword_27EE34728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34728);
  }

  return result;
}

void sub_245B74A54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_245B74A68(a1, a2);
  }
}

void sub_245B74A68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_245B74ABC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34730, &qword_245B94290);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245B74D84();
  sub_245B93020();
  if (v1)
  {
    v8 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_245B74A54(0, 0xF000000000000000);
  }

  else
  {
    v11 = 0;
    sub_245B74E24();
    sub_245B92EE0();
    v8 = v10[0];
    v9 = v10[1];
    sub_245B74A54(0, 0xF000000000000000);
    LOBYTE(v10[0]) = 1;
    sub_245B92EF0();
    (*(v4 + 8))(v6, v3);
    sub_245B74E78(v8, v9);

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_245B74A54(v8, v9);
  }

  return v8;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_245B74D84()
{
  result = qword_27EE34738;
  if (!qword_27EE34738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34738);
  }

  return result;
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

unint64_t sub_245B74E24()
{
  result = qword_27EE34740;
  if (!qword_27EE34740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34740);
  }

  return result;
}

void sub_245B74E78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_245B74E8C(a1, a2);
  }
}

void sub_245B74E8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_245B74EE0()
{
  result = qword_27EE34750;
  if (!qword_27EE34750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34750);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreMLSegmenterInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreMLSegmenterInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_245B750C0()
{
  result = qword_27EE34760;
  if (!qword_27EE34760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34760);
  }

  return result;
}

unint64_t sub_245B75118()
{
  result = qword_27EE34768;
  if (!qword_27EE34768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34768);
  }

  return result;
}

unint64_t sub_245B75170()
{
  result = qword_27EE34770;
  if (!qword_27EE34770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34770);
  }

  return result;
}

uint64_t sub_245B751D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245B751F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_245B7522C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_245B75294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_245B75378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for E5MLCompilerInput(uint64_t a1)
{
  result = qword_27EE34788;
  if (!qword_27EE34788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_245B75490(uint64_t a1)
{
  sub_245B755CC(319, &qword_27EE34798, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_245B75574(319);
    if (v2 <= 0x3F)
    {
      sub_245B755CC(319, &qword_27EE347A8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_245B75574(uint64_t a1)
{
  if (!qword_27EE347A0)
  {
    sub_245B925E0();
    v1 = sub_245B92D70();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE347A0);
    }
  }
}

void sub_245B755CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_245B7561C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE347E8, &qword_245B944E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245B75F44();
  sub_245B93030();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_245B74E78(v14, v9);
  sub_245B74EE0();
  sub_245B92F10();
  sub_245B74A54(v14, v15);
  if (!v2)
  {
    v10 = type metadata accessor for E5MLCompilerInput(0);
    LOBYTE(v14) = 1;
    sub_245B925E0();
    sub_245B760A0(&qword_27EE347F0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_245B92F10();
    LOBYTE(v14) = 2;
    sub_245B92F20();
    v14 = *(v3 + *(v10 + 28));
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE347D8, &qword_245B944D8);
    sub_245B760E8(&qword_27EE347F8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_245B92F30();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_245B758A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v28 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE347C0, &qword_245B944D0);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v28 - v5;
  v7 = type metadata accessor for E5MLCompilerInput(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = xmmword_245B94430;
  v11 = v8[7];
  v12 = sub_245B925E0();
  v13 = *(*(v12 - 8) + 56);
  v32 = v11;
  v13(&v10[v11], 1, 1, v12);
  v14 = &v10[v8[8]];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v15 = v8[9];
  *&v10[v15] = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245B75F44();
  v35 = v6;
  v16 = v37;
  sub_245B93020();
  if (v16)
  {
    v27 = a1;
  }

  else
  {
    v29 = v15;
    v30 = v14;
    v37 = a1;
    v18 = v33;
    v17 = v34;
    v40 = 0;
    sub_245B74E24();
    v19 = v35;
    sub_245B92EE0();
    v21 = v38;
    v20 = v39;
    sub_245B74A54(*v10, *(v10 + 1));
    *v10 = v21;
    *(v10 + 1) = v20;
    v22 = v36;
    LOBYTE(v38) = 1;
    sub_245B760A0(&qword_27EE347D0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_245B92EE0();
    sub_245B75ED4(v17, &v10[v32]);
    LOBYTE(v38) = 2;
    v23 = sub_245B92EF0();
    v25 = v30;
    *v30 = v23;
    v25[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE347D8, &qword_245B944D8);
    v40 = 3;
    sub_245B760E8(&qword_27EE347E0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_245B92F00();
    (*(v18 + 8))(v19, v22);
    *&v10[v29] = v38;
    sub_245B7603C(v10, v31);
    v27 = v37;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_245B75F98(v10);
}

unint64_t sub_245B75CC4()
{
  v1 = 0x7942656C75646F6DLL;
  v2 = 0x6C50746567726174;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x694474757074756FLL;
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

uint64_t sub_245B75D68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_245B763B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_245B75D9C(uint64_t a1)
{
  v2 = sub_245B75F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245B75DD8(uint64_t a1)
{
  v2 = sub_245B75F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245B75E50(uint64_t a1)
{
  *(a1 + 8) = sub_245B760A0(&qword_27EE347B0, type metadata accessor for E5MLCompilerInput, &unk_245B9448C);
  result = sub_245B760A0(&qword_27EE347B8, type metadata accessor for E5MLCompilerInput, &unk_245B94464);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_245B75ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_245B75F44()
{
  result = qword_27EE347C8;
  if (!qword_27EE347C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE347C8);
  }

  return result;
}

uint64_t sub_245B75F98(uint64_t a1)
{
  v2 = type metadata accessor for E5MLCompilerInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_245B7603C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for E5MLCompilerInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245B760A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_245B760E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE347D8, &qword_245B944D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for E5MLCompilerInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for E5MLCompilerInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_245B762B0()
{
  result = qword_27EE34800;
  if (!qword_27EE34800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34800);
  }

  return result;
}

unint64_t sub_245B76308()
{
  result = qword_27EE34808;
  if (!qword_27EE34808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34808);
  }

  return result;
}

unint64_t sub_245B76360()
{
  result = qword_27EE34810;
  if (!qword_27EE34810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34810);
  }

  return result;
}

uint64_t sub_245B763B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7942656C75646F6DLL && a2 == 0xEE0065646F636574;
  if (v4 || (sub_245B92F50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694474757074756FLL && a2 == 0xEF79726F74636572 || (sub_245B92F50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C50746567726174 && a2 == 0xEE006D726F667461 || (sub_245B92F50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000245B93890 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_245B92F50();

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

uint64_t sub_245B76538()
{
  v0 = sub_245B926E0();
  __swift_allocate_value_buffer(v0, qword_27EE36010);
  __swift_project_value_buffer(v0, qword_27EE36010);
  return sub_245B926D0();
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

uint64_t sub_245B76660(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_245B925E0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B76754, 0, 0);
}

uint64_t sub_245B76754()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  sub_245B92900();
  sub_245B92580();
  v4 = *(v3 + 8);
  v4(v1, v2);
  v5 = [objc_opt_self() defaultManager];
  sub_245B925B0();
  v6 = sub_245B92BC0();

  v7 = [v5 fileExistsAtPath_];

  v8 = v0[8];
  if (v7)
  {
    v9 = v0[3];
    sub_245B925B0();
    sub_245B92C00();

    v10 = BNNSGraphContextMakeFromFile();
    v12 = v11;

    *(v9 + 16) = v10;
    *(v9 + 24) = v12;
    v13 = v0[8];
    v14 = v0[2];
    if (v10)
    {
      v15 = v0[5];
      v16 = sub_245B92910();
      (*(*(v16 - 8) + 8))(v14, v16);
      v4(v13, v15);

      v17 = v0[1];
      v18 = v0[3];

      return v17(v18);
    }

    v25 = v0[5];
    type metadata accessor for BNNSDelegate.BNNSError(0);
    sub_245B77270(&qword_27EE34820, 255, type metadata accessor for BNNSDelegate.BNNSError, &unk_245B9469C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v26 = sub_245B92910();
    (*(*(v26 - 8) + 8))(v14, v26);
    v4(v13, v25);
  }

  else
  {
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[2];
    type metadata accessor for BNNSDelegate.BNNSError(0);
    sub_245B77270(&qword_27EE34820, 255, type metadata accessor for BNNSDelegate.BNNSError, &unk_245B9469C);
    swift_allocError();
    (*(v20 + 16))(v23, v8, v21);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v24 = sub_245B92910();
    (*(*(v24 - 8) + 8))(v22, v24);
    v4(v8, v21);
    swift_deallocPartialClassInstance();
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_245B76B64()
{
  BNNSGraphContextDestroy_v2();

  return swift_deallocClassInstance();
}

uint64_t sub_245B76BC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_245B76C6C;

  return sub_245B76660(a2);
}

uint64_t sub_245B76C6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_245B76DA4()
{
  type metadata accessor for BNNSDelegate.BNNSError(0);
  sub_245B77270(&qword_27EE34820, 255, type metadata accessor for BNNSDelegate.BNNSError, &unk_245B9469C);
  swift_allocError();
  *v0 = 0xD000000000000023;
  v0[1] = 0x8000000245B93910;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t type metadata accessor for BNNSDelegate.BNNSError(uint64_t a1)
{
  result = qword_27EE34838;
  if (!qword_27EE34838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_245B76F78(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = sub_245B92BF0();
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245B92940();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245B92950();
  v20 = *(v7 + 16);
  if (v20)
  {
    v8 = 0;
    v18 = (v24 + 8);
    v19 = v24 + 16;
    while (v8 < *(v7 + 16))
    {
      v9 = v7;
      (*(v24 + 16))(v6, v7 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v8, v4);
      v10 = sub_245B92930();
      v12 = v11;
      sub_245B92BE0();
      v13 = sub_245B92BD0();
      v15 = v14;
      sub_245B74A68(v10, v12);
      if (!v15)
      {
        goto LABEL_8;
      }

      ++v8;
      v25 = 0x2E534E4E42;
      v26 = 0xE500000000000000;
      v30 = sub_245B92920();
      v16 = sub_245B92F40();
      MEMORY[0x245D7A2F0](v16);

      v27 = v21;
      v28 = v13;
      v29 = v15;
      sub_245B7721C();

      sub_245B92790();
      (*v18)(v6, v4);

      v7 = v9;
      if (v20 == v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

unint64_t sub_245B7721C()
{
  result = qword_27EE34828;
  if (!qword_27EE34828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34828);
  }

  return result;
}

uint64_t sub_245B77270(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245B77308(uint64_t a1)
{
  result = sub_245B925E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245B77384(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_245B773CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245B77424(uint64_t a1)
{
  v2 = sub_245B92A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_245B852B0(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_245B852B0((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      sub_245B77EDC(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_245B77658()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_245B776C0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_245B848B4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_245B777F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v48 = a6;
  v11 = sub_245B92A10();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_245B92A30();
  v14 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v60 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v61 = &v44 - v20;
  v21 = *(a5 + 16);
  v46 = *(a5 + 24);
  v47 = v21;
  v22 = *a2;

  v23 = sub_245B77424(a1);
  v62 = v22;
  v24 = &v62;
  sub_245B776C0(v23);
  v25 = v62;
  v26 = *(v62 + 16);
  if (v26)
  {
    v62 = MEMORY[0x277D84F90];
    sub_245B85290(0, v26, 0);
    v27 = v12;
    v28 = 0;
    v29 = v62;
    v56 = v25 + ((v17[80] + 32) & ~v17[80]);
    v64 = *MEMORY[0x277D36B10];
    v54 = (v27 + 88);
    v55 = (v14 + 8);
    v53 = *MEMORY[0x277D36AF8];
    v45 = v27;
    v50 = (v27 + 96);
    v51 = v17;
    v52 = v11;
    while (v28 < *(v25 + 16))
    {
      v30 = v26;
      v31 = v61;
      sub_245B77E04(v56 + *(v17 + 9) * v28, v61);
      v7 = v60;
      sub_245B77E04(v31, v60);
      v24 = sub_245B92A70();
      v26 = *(v24 - 1);
      if ((*(v26 + 48))(v7, 1, v24) == 1)
      {
        goto LABEL_20;
      }

      v32 = (*(v26 + 88))(v7, v24);
      v17 = v59;
      if (v32 != v64)
      {
        goto LABEL_22;
      }

      (*(v26 + 96))(v7, v24);
      v7 = *v7;
      v26 = v57;
      sub_245B92A40();
      v24 = v26;
      sub_245B92A20();
      (*v55)(v26, v58);
      v33 = (*v54)(v17, v11);
      if (v33 != v53)
      {
        goto LABEL_21;
      }

      (*v50)(v17, v11);
      v24 = *v17;
      v34 = sub_245B929F0();
      v36 = v35;

      sub_245B77E74(v61);
      if (v34)
      {
        v37 = v36 - v34;
      }

      else
      {
        v37 = 0;
      }

      v62 = v29;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      v7 = (v39 + 1);
      if (v39 >= v38 >> 1)
      {
        v24 = &v62;
        sub_245B85290((v38 > 1), v39 + 1, 1);
        v29 = v62;
      }

      ++v28;
      *(v29 + 16) = v7;
      v40 = v29 + 16 * v39;
      *(v40 + 32) = v34;
      *(v40 + 40) = v37;
      v26 = v30;
      v17 = v51;
      v11 = v52;
      if (v30 == v28)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    sub_245B77E74(v7);
    __break(1u);
LABEL_21:
    (*(v45 + 8))(v17, v11);
    __break(1u);
LABEL_22:
    (*(v26 + 8))(v7, v24);
    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
LABEL_15:
    v41 = *(v29 + 16);
    sub_245B92C00();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_245B847B0(0, v41, 0, v29);
    }

    LODWORD(v28) = BNNSGraphContextExecute_v2();

    if ((v28 & 0x80000000) == 0)
    {
    }
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  sub_245B92E50();

  v62 = 0xD000000000000029;
  v63 = 0x8000000245B93970;
  v65 = v28;
  v43 = sub_245B92F40();
  MEMORY[0x245D7A2F0](v43);

  result = sub_245B92E90();
  __break(1u);
  return result;
}

uint64_t sub_245B77E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245B77E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245B77EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245B77F4C(uint64_t a1)
{
  v2 = sub_245B92770();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D36A88])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D36A90])
  {
    v7 = 0xC00000000;
    goto LABEL_5;
  }

  if (v6 == *MEMORY[0x277D36A98])
  {
LABEL_2:
    v7 = 0;
LABEL_5:
    v8 = 1;
    return v7 | v8;
  }

  if (v6 == *MEMORY[0x277D36AA0])
  {
    v7 = 0x300000000;
    goto LABEL_5;
  }

  if (v6 == *MEMORY[0x277D36AA8])
  {
    v7 = 0x600000000;
    goto LABEL_5;
  }

  if (v6 == *MEMORY[0x277D36AB0])
  {
    v7 = 0x300000000;
LABEL_16:
    v8 = 4;
    return v7 | v8;
  }

  if (v6 == *MEMORY[0x277D36AB8])
  {
    v7 = 0x600000000;
    goto LABEL_16;
  }

  type metadata accessor for E5MLDelegate.E5MLError(0);
  sub_245B7C384();
  swift_allocError();
  v11 = v10;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_245B92E50();
  MEMORY[0x245D7A2F0](0xD000000000000019, 0x8000000245B93B80);
  sub_245B92E80();
  v12 = v14;
  *v11 = v13;
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_245B781CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_245B92A70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, a2, v7);
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D36B10])
  {
    v11 = (*(v8 + 96))(v10, v7);
    v12 = *v10;
    MEMORY[0x28223BE20](v11);
    *(&v15 - 4) = v12;
    *(&v15 - 3) = a3;
    *(&v15 - 2) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34870, &qword_245B94778);
    sub_245B929D0();
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B7C384();
    swift_allocError();
    *v14 = 0xD000000000000016;
    v14[1] = 0x8000000245B93A30;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_245B78418(uint64_t a1, uint64_t a2, uint64_t (**a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v163 = a6;
  v179 = a5;
  v177 = a4;
  v184 = a3;
  v207 = *MEMORY[0x277D85DE8];
  v155 = sub_245B92B90();
  v191 = *(v155 - 8);
  v9 = MEMORY[0x28223BE20](v155);
  v187 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v189 = &v144 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v156 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v162 = (&v144 - v13);
  v14 = sub_245B92800();
  MEMORY[0x28223BE20](v14 - 8);
  v160 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_245B92770();
  MEMORY[0x28223BE20](v16 - 8);
  v159 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_245B92780();
  v176 = *(v190 - 8);
  v18 = MEMORY[0x28223BE20](v190);
  v181 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v180 = &v144 - v21;
  MEMORY[0x28223BE20](v20);
  v178 = &v144 - v22;
  v192 = sub_245B92830();
  v182 = *(v192 - 8);
  v23 = MEMORY[0x28223BE20](v192);
  v157 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v158 = &v144 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v144 - v27;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34888, &unk_245B95100);
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v167 = (&v144 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34890, &unk_245B94790);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v188 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v186 = (&v144 - v33);
  v34 = sub_245B92A70();
  v35 = MEMORY[0x28223BE20](v34);
  v38 = &v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x277D84F90];
  v204 = MEMORY[0x277D84F90];
  v40 = *(a2 + 16);
  v198 = v35;
  v199 = v28;
  v200 = v36;
  v194 = v40;
  if (!v40)
  {
    v43 = MEMORY[0x277D84F90];
LABEL_18:
    v161 = v39;
    v34 = v43 >> 62;
    if (v43 >> 62)
    {
      goto LABEL_94;
    }

    for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245B92DB0())
    {
      v57 = v186;
      v202 = v43;
      if (i)
      {
        v205 = MEMORY[0x277D84F90];
        v58 = &v205;
        sub_245B852F0(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          goto LABEL_96;
        }

        v59 = 0;
        v60 = v205;
        v61 = v43 & 0xC000000000000001;
        do
        {
          if (v61)
          {
            v62 = MEMORY[0x245D7A4E0](v59, v43);
          }

          else
          {
          }

          v63 = *(v62 + 16);

          v205 = v60;
          v65 = *(v60 + 16);
          v64 = *(v60 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_245B852F0((v64 > 1), v65 + 1, 1);
            v60 = v205;
          }

          ++v59;
          *(v60 + 16) = v65 + 1;
          *(v60 + 8 * v65 + 32) = v63;
          v43 = v202;
        }

        while (i != v59);
        v28 = v199;
      }

      v6 = v57;
      if (v34)
      {
        sub_245B92DB0();
      }

      v66 = v161;
      v67 = (v161 + 32);
      v68 = e5rt_execution_stream_operation_reshape_operation();

      for (j = *(v66 + 2); j; --j)
      {
        v72 = *v67++;
        v71 = v72;
        if (v72)
        {
          free(v71);
        }
      }

      if (v68)
      {

        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B7C384();
        swift_allocError();
        strcpy(v70, "Reshape failed");
        v70[15] = -18;
LABEL_80:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      v58 = *v163;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v152 = v58;
        goto LABEL_41;
      }

LABEL_96:
      v152 = sub_245B7D678(v58);
LABEL_41:
      v74 = v190;
      v75 = v178;
      v76 = v185;
      v34 = 0;
      v77 = *(v177 + 16);
      *v163 = v152;
      v170 = (v176 + 16);
      v173 = (v183 + 56);
      v172 = (v183 + 48);
      v169 = (v176 + 32);
      v184 = (v176 + 88);
      LODWORD(v183) = *MEMORY[0x277D36AC8];
      v153 = *MEMORY[0x277D36AC0];
      v168 = (v176 + 96);
      v154 = (v176 + 8);
      v174 = (v182 + 16);
      v166 = (v182 + 8);
      v196 = v191 + 88;
      v197 = v191 + 16;
      v195 = *MEMORY[0x277D36B40];
      v193 = (v191 + 96);
      v194 = (v191 + 8);
      v150 = *MEMORY[0x277D36B10];
      v149 = (v200 + 104);
      v148 = (v200 + 56);
      v164 = v77;
LABEL_44:
      v78 = v6;
      v6 = v188;
      v79 = v34 >= v77;
      if (v34 == v77)
      {
LABEL_45:
        v80 = 1;
        v34 = v77;
        goto LABEL_49;
      }

      while (1)
      {
        if (v79)
        {
          goto LABEL_92;
        }

        if (__OFADD__(v34, 1))
        {
          goto LABEL_93;
        }

        v81 = v176;
        v82 = v177 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v34;
        v83 = *(v76 + 48);
        v84 = v167;
        *v167 = v34;
        (*(v81 + 16))(v84 + v83, v82, v74);
        v85 = v84;
        v6 = v188;
        sub_245B7CD64(v85, v188, &qword_27EE34888, &unk_245B95100);
        v80 = 0;
        ++v34;
        v78 = v186;
LABEL_49:
        (*v173)(v6, v80, 1, v76);
        sub_245B7CD64(v6, v78, &qword_27EE34890, &unk_245B94790);
        if ((*v172)(v78, 1, v76) == 1)
        {
        }

        v86 = v78;
        v87 = *v78;
        v6 = v86;
        (*v169)(v75, v86 + *(v76 + 48), v74);
        v88 = *v184;
        v89 = (*v184)(v75, v74);
        if (v89 == v183)
        {
          (*v168)(v75, v74);
          v90 = swift_projectBox();
          v165 = *v174;
          v165(v28, v90, v192);
        }

        else
        {
          v175 = v87;
          if (v89 != v153)
          {

            type metadata accessor for E5MLDelegate.E5MLError(0);
            sub_245B7C384();
            swift_allocError();
            v132 = v75;
            v134 = v133;
            v205 = 0;
            v206 = 0xE000000000000000;
            sub_245B92E50();
            MEMORY[0x245D7A2F0](0xD000000000000036, 0x8000000245B93B00);
            v203 = v175;
            v135 = sub_245B92F40();
            MEMORY[0x245D7A2F0](v135);

            v136 = v206;
            *v134 = v205;
            v134[1] = v136;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            (*v154)(v132, v74);
          }

          v171 = v34;
          v91 = *v168;
          (*v168)(v75, v74);
          v200 = *v75;
          v92 = swift_projectBox();
          v93 = v180;
          v94 = *v170;
          (*v170)(v180, v92, v74);
          v94(v181, v93, v74);
          v95 = v181;
          v96 = v88(v181, v74);
          if (v96 != v183)
          {

            v137 = *v154;
            (*v154)(v95, v74);
            type metadata accessor for E5MLDelegate.E5MLError(0);
            sub_245B7C384();
            swift_allocError();
            v138 = v74;
            v140 = v139;
            v205 = 0;
            v206 = 0xE000000000000000;
            sub_245B92E50();
            MEMORY[0x245D7A2F0](0xD000000000000036, 0x8000000245B93B00);
            v203 = v175;
            v141 = sub_245B92F40();
            MEMORY[0x245D7A2F0](v141);

            v142 = v206;
            *v140 = v205;
            v140[1] = v142;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v137(v180, v138);
          }

          (*v154)(v180, v74);
          v91(v95, v74);
          v97 = swift_projectBox();
          v165 = *v174;
          v165(v28, v97, v192);

          v75 = v178;
          v6 = v186;
          v34 = v171;
          v87 = v175;
        }

        if (sub_245B927D0())
        {
          (*v166)(v28, v192);
          v76 = v185;
LABEL_43:
          v77 = v164;
          goto LABEL_44;
        }

        if (!*(v179 + 16) || (v98 = sub_245B8BA34(v87), (v99 & 1) == 0))
        {

          type metadata accessor for E5MLDelegate.E5MLError(0);
          sub_245B7C384();
          swift_allocError();
          v129 = v128;
          v205 = 0;
          v206 = 0xE000000000000000;
          sub_245B92E50();

          v205 = 0xD00000000000001DLL;
          v206 = 0x8000000245B93B40;
          v203 = v87;
          v130 = sub_245B92F40();
          MEMORY[0x245D7A2F0](v130);

          v131 = v206;
          *v129 = v205;
          v129[1] = v131;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*v166)(v28, v192);
        }

        v100 = *(*(v179 + 56) + 8 * v98);
        LOBYTE(v205) = 0;

        if (e5rt_io_port_has_known_shape() || (v205 & 1) == 0)
        {

          v76 = v185;
          (*v166)(v28, v192);
          goto LABEL_43;
        }

        v147 = v100;
        type metadata accessor for E5RTTensorDescriptor();
        inited = swift_initStackObject();
        *(inited + 16) = 0;
        v205 = 0;
        if (e5rt_io_port_retain_tensor_desc() || (v102 = v205) == 0)
        {
          type metadata accessor for E5MLDelegate.E5MLError(0);
          sub_245B7C384();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
LABEL_88:

          (*v166)(v28, v192);
        }

        v175 = v87;
        *(inited + 16) = v205;
        v103 = v201;
        v151 = sub_245B83D14();
        if (v103)
        {
          swift_setDeallocating();
          v205 = v102;
          e5rt_tensor_desc_release();
          goto LABEL_88;
        }

        v145 = v102;
        v146 = inited;
        v171 = v34;
        v201 = 0;
        v104 = sub_245B927C0();
        v6 = *(v104 + 16);
        if (v6)
        {
          break;
        }

LABEL_71:

        sub_245B927F0();
        sub_245B92810();
        v116 = *(v151 + 16);
        v117 = sub_245B92D40();
        v117[2] = v116 + 1;
        v117[4] = 1;
        v43 = v202;
        if (v116)
        {
          memset_pattern16(v117 + 5, &unk_245B947A0, 8 * v116);
        }

        v118 = v199;
        sub_245B92820();
        v119 = v158;
        sub_245B927E0();
        v120 = v192;
        v165(v157, v119, v192);
        sub_245B92A60();
        swift_allocObject();
        v121 = v201;
        v122 = sub_245B929B0();
        if (v121)
        {
          swift_setDeallocating();
          v205 = v145;
          e5rt_tensor_desc_release();

          v143 = *v166;
          (*v166)(v119, v120);
          v143(v118, v120);
        }

        v201 = 0;
        v123 = v162;
        *v162 = v122;
        v124 = v198;
        (*v149)(v123, v150, v198);
        (*v148)(v123, 0, 1, v124);
        swift_setDeallocating();
        v205 = v145;
        e5rt_tensor_desc_release();

        v125 = *v166;
        (*v166)(v119, v120);
        v125(v118, v120);
        if ((v175 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_98:
          __break(1u);
        }

        v28 = v118;
        v126 = v152;
        v75 = v178;
        v76 = v185;
        v6 = v188;
        v78 = v186;
        if (v175 >= v152[2])
        {
          goto LABEL_98;
        }

        sub_245B7C498(v162, v152 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v175);
        *v163 = v126;
        v34 = v171;
        v77 = v164;
        v79 = v171 >= v164;
        if (v171 == v164)
        {
          goto LABEL_45;
        }
      }

      v205 = MEMORY[0x277D84F90];
      v105 = v104;
      sub_245B852D0(0, v6, 0);
      v106 = v105;
      v34 = 0;
      v107 = v205;
      v182 = v105 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
      v108 = v155;
      v28 = v189;
      v200 = v105;
      while (v34 < *(v106 + 16))
      {
        v109 = v191;
        v110 = *(v191 + 16);
        v43 = v197;
        v110(v28, v182 + *(v191 + 72) * v34, v108);
        v111 = v187;
        v110(v187, v28, v108);
        v112 = (*(v109 + 88))(v111, v108);
        if (v112 != v195)
        {
          goto LABEL_99;
        }

        (*v194)(v28, v108);
        (*v193)(v111, v108);
        v113 = *v111;
        v205 = v107;
        v115 = *(v107 + 16);
        v114 = *(v107 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_245B852D0((v114 > 1), v115 + 1, 1);
          v108 = v155;
          v107 = v205;
        }

        ++v34;
        *(v107 + 16) = v115 + 1;
        *(v107 + 8 * v115 + 32) = v113;
        v74 = v190;
        v28 = v189;
        v106 = v200;
        if (v6 == v34)
        {
          goto LABEL_71;
        }
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      ;
    }
  }

  v202 = a1;
  v41 = 0;
  v196 = v36 + 88;
  v197 = v36 + 16;
  v195 = *MEMORY[0x277D36B10];
  v193 = (v36 + 96);
  v42 = a2 + 40;
  v43 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v44 = sub_245B92C00();
    v45 = strdup((v44 + 32));

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_245B84AA4(0, *(v39 + 2) + 1, 1, v39);
    }

    v28 = *(v39 + 2);
    v46 = *(v39 + 3);
    v6 = v28 + 1;
    if (v28 >= v46 >> 1)
    {
      v39 = sub_245B84AA4((v46 > 1), v28 + 1, 1, v39);
    }

    *(v39 + 2) = v6;
    *&v39[8 * v28 + 32] = v45;
    if (v41 >= *(v202 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    v47 = v200;
    (*(v200 + 16))(v38, v202 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41, v34);
    v48 = (*(v47 + 88))(v38, v34);
    if (v48 != v195)
    {

      (*(v200 + 8))(v38, v34);
      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      *v127 = 0xD000000000000029;
      v127[1] = 0x8000000245B93A70;
      goto LABEL_80;
    }

    (*v193)(v38, v34);

    v50 = v201;
    v51 = sub_245B7C5DC(v49);
    v201 = v50;
    if (v50)
    {
    }

    v6 = v51;
    type metadata accessor for E5RTOperandDescriptor();
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    v205 = 0;
    if (!*(v6 + 16))
    {
      break;
    }

    v53 = v52;

    if (e5rt_operand_desc_retain_from_tensor_desc() || (v54 = v205) == 0)
    {

      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    *(v53 + 16) = v54;

    MEMORY[0x245D7A390](v55);
    if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v175 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_245B92D30();
    }

    ++v41;
    sub_245B92D50();

    v43 = v204;
    v42 += 16;
    v34 = v198;
    v28 = v199;
    if (v194 == v41)
    {
      goto LABEL_18;
    }
  }

LABEL_99:
  result = sub_245B92E90();
  __break(1u);
  return result;
}

uint64_t sub_245B79E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34880, &qword_245B94788);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v19 = v5;
      v12 = sub_245B92A70();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v7 = v17;
      result = v14(&v7[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_245B7CD64(v7, a1, &qword_27EE34880, &qword_245B94788);
        return (*(v19 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_245B7A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_245B7DAE8();
  if (!v3)
  {
    if (result)
    {
      type metadata accessor for E5RTTensorDescriptor();
      *(swift_initStackObject() + 16) = 0;
      e5rt_io_port_retain_tensor_desc();
      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      type metadata accessor for E5RTBufferObject();
      swift_allocObject();
      sub_245B7CDE4(a1, a2);
      if (e5rt_io_port_bind_buffer_object())
      {
        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B7C384();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_245B7A368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v59 = a5;
  v75 = a3;
  v60 = a2;
  v66 = sub_245B92A70();
  v6 = *(v66 - 8);
  v7 = MEMORY[0x28223BE20](v66);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v71 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v67 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34860, &qword_245B94770);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v70 = (&v51 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34868, &unk_245B95120);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v23 = (&v51 - v22);
  i = 0;
  v25 = *(a1 + 16);
  v72 = a1;
  v73 = (v15 + 56);
  v26 = (v15 + 48);
  v65 = (v6 + 48);
  v61 = (v6 + 32);
  v56 = (v6 + 16);
  v55 = (v6 + 88);
  v54 = *MEMORY[0x277D36B10];
  v52 = (v6 + 96);
  v53 = (v6 + 8);
  v27 = v74;
  v63 = (v15 + 48);
  v64 = v25;
  v28 = v25 == 0;
  if (v25)
  {
    goto LABEL_5;
  }

LABEL_4:
  v29 = 1;
  for (i = v25; ; ++i)
  {
    (*v73)(v20, v29, 1, v14);
    sub_245B7CD64(v20, v23, &qword_27EE34868, &unk_245B95120);
    result = (*v26)(v23, 1, v14);
    if (result == 1)
    {
      break;
    }

    v33 = *v23;
    sub_245B7CD64(v23 + *(v14 + 48), v27, &qword_27EE34848, &qword_245B94760);
    if (*(v75 + 16) && (v34 = sub_245B8BA34(v33), v27 = v74, (v35 & 1) != 0))
    {
      v36 = *(*(v75 + 56) + 8 * v34);
      v37 = v67;
      sub_245B77E04(v74, v67);
      v38 = v66;
      if ((*v65)(v37, 1, v66) == 1)
      {
        sub_245B77E74(v27);
        result = sub_245B77E74(v37);
      }

      else
      {
        result = (*v61)(v69, v37, v38);
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v33 >= *(v60 + 16))
        {
          goto LABEL_26;
        }

        v62 = &v51;
        MEMORY[0x28223BE20](result);
        v39 = v38;
        v40 = v36;
        v41 = v39;
        v43 = v58;
        v42 = v59;
        *(&v51 - 4) = v40;
        *(&v51 - 3) = v43;
        *(&v51 - 2) = v42;
        *(&v51 - 1) = v33;
        v44 = v57;
        (*v56)(v57, v69, v41);
        v45 = (*v55)(v44, v41);
        if (v45 != v54)
        {
          v49 = *v53;

          v49(v44, v41);
          type metadata accessor for E5MLDelegate.E5MLError(0);
          sub_245B7C384();
          swift_allocError();
          *v50 = 0xD000000000000016;
          v50[1] = 0x8000000245B93A30;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v49(v69, v41);
          return sub_245B77E74(v74);
        }

        v46 = (*v52)(v44, v41);
        v47 = *v44;
        MEMORY[0x28223BE20](v46);
        *(&v51 - 4) = v47;
        *(&v51 - 3) = sub_245B7C508;
        *(&v51 - 2) = (&v51 - 6);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34870, &qword_245B94778);
        v48 = v68;
        sub_245B929D0();
        if (v48)
        {

          (*v53)(v69, v41);
          return sub_245B77E74(v74);
        }

        v68 = 0;

        (*v53)(v69, v41);
        v27 = v74;
        result = sub_245B77E74(v74);
      }

      v26 = v63;
      v25 = v64;
      v28 = i >= v64;
      if (i == v64)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = sub_245B77E74(v27);
      v28 = i >= v25;
      if (i == v25)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    if (v28)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_24;
    }

    v30 = v70;
    v31 = v72 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * i;
    v32 = *(v14 + 48);
    *v70 = i;
    sub_245B77E04(v31, v30 + v32);
    sub_245B7CD64(v30, v20, &qword_27EE34860, &qword_245B94770);
    v29 = 0;
    v27 = v74;
  }

  return result;
}

uint64_t sub_245B7AAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  result = sub_245B7DAE8();
  if (!v6)
  {
    if (result)
    {
      type metadata accessor for E5RTTensorDescriptor();
      *(swift_initStackObject() + 16) = 0;
      e5rt_io_port_retain_tensor_desc();
      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      type metadata accessor for E5RTBufferObject();
      swift_allocObject();
      sub_245B7CDE4(a1, a2);
      if (e5rt_io_port_bind_buffer_object())
      {
        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B7C384();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_245B7AE50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v133 = a3;
  v121 = a2;
  v158 = *MEMORY[0x277D85DE8];
  v120 = sub_245B92A70();
  v8 = *(v120 - 8);
  v9 = MEMORY[0x28223BE20](v120);
  v103 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v101 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v114 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = (&v95 - v16);
  v17 = sub_245B92B90();
  v18 = *(v17 - 8);
  v153 = v17;
  v154 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v152 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v104 = &v95 - v21;
  v22 = sub_245B92800();
  MEMORY[0x28223BE20](v22 - 8);
  v118 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_245B92770();
  MEMORY[0x28223BE20](v24 - 8);
  v117 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_245B92780();
  v141 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_245B92830();
  v27 = *(v124 - 8);
  v28 = MEMORY[0x28223BE20](v124);
  v111 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v112 = &v95 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v95 - v32;
  v34 = *(a1 + 64);
  v137 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v123 = a4;
  v38 = *a4;
  v140 = a1;

  v134 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_4:
  v39 = 0;
  *v123 = v134;
  v40 = (v35 + 63) >> 6;
  v130 = v141 + 16;
  v129 = v141 + 88;
  v128 = *MEMORY[0x277D36AC8];
  v127 = (v141 + 96);
  v139 = (v27 + 2);
  v126 = v27 + 1;
  v102 = (v8 + 6);
  v100 = (v8 + 4);
  v98 = (v8 + 2);
  v97 = (v8 + 11);
  v113 = *MEMORY[0x277D36B10];
  v96 = (v8 + 12);
  v99 = (v8 + 1);
  v151 = v154 + 16;
  v150 = v154 + 88;
  v149 = *MEMORY[0x277D36B40];
  v148 = (v154 + 8);
  v147 = (v154 + 96);
  v109 = (v8 + 13);
  v108 = (v8 + 7);
  v41 = v137;
  v42 = v37;
  v43 = v33;
  v33 = v124;
  v119 = v40;
  if (!v37)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v44 = v39;
LABEL_9:
    v37 = v42;
    v138 = v44;
    v45 = (v44 << 9) | (8 * __clz(__rbit64(v42)));
    v35 = *(*(v140 + 48) + v45);
    v8 = *(*(v140 + 56) + v45);

    v27 = v133;
    v46 = sub_245B92850();
    if (v35 < 0)
    {
      goto LABEL_60;
    }

    v47 = v35;
    if (v35 >= *(v46 + 16))
    {
      goto LABEL_61;
    }

    v143 = v8;
    v35 = v141;
    v48 = v46 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v49 = *(v141 + 72);
    v136 = v47;
    v50 = v131;
    v51 = v132;
    (*(v141 + 16))(v131, v48 + v49 * v47, v132);

    v52 = (*(v35 + 88))(v50, v51);
    if (v52 != v128)
    {
      (*(v141 + 8))(v50, v51);
      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      v82 = v81;
      v156 = 0;
      v157 = 0xE000000000000000;
      sub_245B92E50();

      v156 = 0xD000000000000021;
      v157 = 0x8000000245B939A0;
      v155 = v136;
      v83 = sub_245B92F40();
      MEMORY[0x245D7A2F0](v83);

      v84 = v157;
      *v82 = v156;
      v82[1] = v84;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_51;
    }

    (*v127)(v50, v51);
    v53 = swift_projectBox();
    v122 = *v139;
    v122(v43, v53, v33);

    type metadata accessor for E5RTBufferObject();
    v142 = swift_allocObject();
    v156 = 0;
    if (e5rt_io_port_retain_buffer_object() || !v156)
    {
      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_deallocPartialClassInstance();
      goto LABEL_48;
    }

    v8 = v142;
    *(v142 + 16) = v156;
    v156 = 0;
    if (e5rt_buffer_object_get_data_ptr() || (v54 = v156) == 0 || (v156 = 0, e5rt_buffer_object_get_size()))
    {
LABEL_47:
      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_48;
    }

    v125 = v54;
    v37 &= v37 - 1;
    v135 = v37;
    v116 = v156;
    v27 = v143;
    if (!sub_245B7C280(v143, v121))
    {
      v68 = sub_245B7DAE8();
      if (!v5)
      {
        if ((v68 & 1) == 0)
        {
          (*v126)(v43, v33);

          goto LABEL_42;
        }

        v69 = v120;
        v70 = v103;
        if (v136 >= v134[2])
        {
          goto LABEL_64;
        }

        sub_245B77E04(v134 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v136, v15);
        if ((*v102)(v15, 1, v69) == 1)
        {
          sub_245B77E74(v15);
        }

        else
        {
          v71 = v101;
          (*v100)(v101, v15, v69);
          (*v98)(v70, v71, v69);
          v72 = (*v97)(v70, v69);
          if (v72 == v113)
          {
            v73 = (*v96)(v70, v69);
            v35 = &v95;
            v27 = *v70;
            MEMORY[0x28223BE20](v73);
            v8 = (&v95 - 4);
            v93 = v125;
            v94 = v27;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34858, &qword_245B94768);
            sub_245B929E0();

            (*v99)(v71, v120);
            (*v126)(v43, v33);
            goto LABEL_42;
          }

          v87 = v70;
          v88 = *v99;
          (*v99)(v71, v69);
          v88(v87, v69);
        }

        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B7C384();
        swift_allocError();
        v90 = v89;
        v156 = 0;
        v157 = 0xE000000000000000;
        sub_245B92E50();

        v156 = 0xD000000000000021;
        v157 = 0x8000000245B939A0;
        v155 = v136;
        v91 = sub_245B92F40();
        MEMORY[0x245D7A2F0](v91);

        v92 = v157;
        *v90 = v156;
        v90[1] = v92;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_48:

LABEL_49:

        return (*v126)(v43, v33);
      }

      (*v126)(v43, v33);

LABEL_51:
    }

    type metadata accessor for E5RTTensorDescriptor();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    v156 = 0;
    if (e5rt_io_port_retain_tensor_desc())
    {
      goto LABEL_47;
    }

    v56 = v156;
    if (!v156)
    {
      goto LABEL_47;
    }

    *(inited + 16) = v156;
    v107 = inited;
    v115 = sub_245B83D14();
    if (v5)
    {

      swift_setDeallocating();
      v156 = v56;
      e5rt_tensor_desc_release();

      goto LABEL_49;
    }

    v106 = v56;
    v105 = v43;
    v57 = sub_245B927C0();
    v58 = *(v57 + 16);
    if (v58)
    {
      break;
    }

LABEL_37:
    v43 = v105;
    sub_245B927F0();
    sub_245B92810();
    v74 = *(v115 + 16);
    v75 = sub_245B92D40();
    v75[2] = v74 + 1;
    v75[4] = 1;
    if (v74)
    {
      memset_pattern16(v75 + 5, &unk_245B947A0, 8 * v74);
    }

    sub_245B92820();
    v76 = v112;
    sub_245B927E0();
    v33 = v124;
    v122(v111, v76, v124);
    sub_245B92A60();
    swift_allocObject();
    v77 = sub_245B929B0();
    if (v5)
    {

      swift_setDeallocating();
      v156 = v106;
      e5rt_tensor_desc_release();

      v86 = *v126;
      (*v126)(v76, v33);
      return v86(v43, v33);
    }

    v78 = v77;
    MEMORY[0x28223BE20](v77);
    v93 = v125;
    v94 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34858, &qword_245B94768);
    sub_245B929E0();
    v35 = v110;
    *v110 = v78;
    v79 = v120;
    (*v109)(v35, v113, v120);
    (*v108)(v35, 0, 1, v79);

    swift_setDeallocating();
    v156 = v106;
    e5rt_tensor_desc_release();

    v27 = v126;
    v80 = *v126;
    (*v126)(v76, v33);
    v80(v43, v33);
    v8 = v134;
    if (v136 >= v134[2])
    {
      __break(1u);
LABEL_64:
      __break(1u);
    }

    sub_245B7C498(v35, v134 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v136);
    *v123 = v8;
LABEL_42:
    v39 = v138;
    v41 = v137;
    v42 = v135;
    v40 = v119;
    if (!v135)
    {
LABEL_6:
      while (1)
      {
        v44 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v44 >= v40)
        {
        }

        v42 = *(v41 + 8 * v44);
        ++v39;
        if (v42)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v134 = sub_245B7D678(v134);
      goto LABEL_4;
    }
  }

  v95 = 0;
  v156 = MEMORY[0x277D84F90];
  v27 = &v156;
  v59 = v57;
  sub_245B852D0(0, v58, 0);
  v60 = v59;
  v5 = 0;
  v8 = v156;
  v144 = v60 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
  v33 = v104;
  v145 = v15;
  v146 = v60;
  while (1)
  {
    if (v5 >= *(v60 + 16))
    {
      goto LABEL_59;
    }

    v61 = v153;
    v62 = v154;
    v27 = *(v154 + 16);
    v37 = v151;
    (v27)(v33, v144 + *(v154 + 72) * v5, v153);
    v63 = v152;
    (v27)(v152, v33, v61);
    v64 = (*(v62 + 88))(v63, v61);
    if (v64 != v149)
    {
      break;
    }

    (*v148)(v33, v61);
    (*v147)(v63, v61);
    v65 = *v63;
    v156 = v8;
    v67 = v8[2];
    v66 = v8[3];
    v35 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      v27 = &v156;
      sub_245B852D0((v66 > 1), v67 + 1, 1);
      v33 = v104;
      v8 = v156;
    }

    ++v5;
    v8[2] = v35;
    v8[v67 + 4] = v65;
    v15 = v145;
    v60 = v146;
    if (v58 == v5)
    {

      v5 = v95;
      goto LABEL_37;
    }
  }

  result = sub_245B92E90();
  __break(1u);
  return result;
}

BOOL sub_245B7C280(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_245B92DE0();

    return v2 & 1;
  }

  else if (*(a2 + 16) && (sub_245B92FF0(), v6 = *(a1 + 16), MEMORY[0x245D7A680](v6), v7 = sub_245B93010(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(*(a2 + 48) + 8 * v9) + 16);
      result = v11 == v6;
      if (v11 == v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_245B7C384()
{
  result = qword_27EE34850;
  if (!qword_27EE34850)
  {
    type metadata accessor for E5MLDelegate.E5MLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34850);
  }

  return result;
}

void *sub_245B7C3DC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_245B92970();
  v5 = sub_245B92A50();
  result = memcpy(v4, v3, v5);
  *a1 = v4;
  return result;
}

void *sub_245B7C440@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_245B92970();
  result = memcpy(v5, v3, v4);
  *a1 = v5;
  return result;
}

uint64_t sub_245B7C498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245B7C528(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5)
{
  result = sub_245B928F0();
  if (result)
  {
    v9 = result;
    v10 = sub_245B92A50();
    result = a3(v9, v10);
    if (v5)
    {
      *a5 = v5;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245B7C5DC(uint64_t a1)
{
  v2 = v1;
  v24 = *MEMORY[0x277D85DE8];
  v4 = sub_245B92770();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245B92A00();
  v9 = *(v8 + 16);
  if (v9)
  {
    v19 = v1;
    v20 = v4;
    v21 = a1;
    v22 = v8;
    v23 = MEMORY[0x277D84F90];
    sub_245B852D0(0, v9, 0);
    v10 = v22;
    v11 = v23;
    v12 = *(v23 + 16);
    v13 = 32;
    do
    {
      v14 = *(v10 + v13);
      v23 = v11;
      v15 = *(v11 + 24);
      if (v12 >= v15 >> 1)
      {
        sub_245B852D0((v15 > 1), v12 + 1, 1);
        v10 = v22;
        v11 = v23;
      }

      *(v11 + 16) = v12 + 1;
      *(v11 + 8 * v12 + 32) = v14;
      v13 += 8;
      ++v12;
      --v9;
    }

    while (v9);

    v4 = v20;
    a1 = v21;
    v2 = v19;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v16 = a1;
  sub_245B929C0();
  sub_245B77F4C(v7);
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v23 = 0;
    if (e5rt_tensor_desc_dtype_create() || (v18 = v23) == 0)
    {

      v16 = type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      type metadata accessor for E5RTTensorDescriptor();
      swift_allocObject();
      v16 = sub_245B83E74(v11, v18);
    }
  }

  return v16;
}

uint64_t sub_245B7C8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v42 = a2;
  v6 = sub_245B92A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &qword_27EE34878;
  v11 = &qword_245B94780;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34878, &qword_245B94780);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v54 = 0;
  v55 = 0;
  v48 = a4;
  v49 = (v7 + 32);
  v47 = a4 + 32;
  v44 = (v7 + 8);
  v53 = a1;

  v45 = v6;
  v46 = (v56 + 48);
  v43 = v9;
  v41 = v17;
  while (2)
  {
    sub_245B79E5C(v15);
    sub_245B7CD64(v15, v17, v10, v11);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34880, &qword_245B94788);
    if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
    {
    }

    v19 = v17;
    v20 = v15;
    v21 = v11;
    v22 = v10;
    v23 = *v19;
    result = (*v49)(v9, &v19[*(v18 + 48)], v6);
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    if (v23 >= *(v48 + 16))
    {
      goto LABEL_20;
    }

    v25 = v46;
    v26 = (v47 + 16 * v23);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v56 + 16) + 1;
    do
    {
      if (!--v29)
      {

        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B7C384();
        swift_allocError();
        v38 = v37;
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_245B92E50();

        v51 = 0xD000000000000014;
        v52 = 0x8000000245B93A50;
        MEMORY[0x245D7A2F0](v27, v28);

        v39 = v52;
        *v38 = v51;
        v38[1] = v39;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return (*v44)(v43, v45);
      }

      result = *(v25 - 2);
      v30 = *v25;
      if (result == v27 && *(v25 - 1) == v28)
      {
        break;
      }

      v25 += 3;
      result = sub_245B92F50();
    }

    while ((result & 1) == 0);
    v32 = v42;
    if (v23 >= *(v42 + 16))
    {
      goto LABEL_21;
    }

    v33 = *(sub_245B92780() - 8);
    v34 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23;

    v35 = v34;
    v9 = v43;
    v36 = v50;
    sub_245B781CC(v35, v43, sub_245B7CD48, v30);
    if (!v36)
    {
      v50 = 0;

      v6 = v45;
      (*v44)(v9, v45);
      v10 = v22;
      v11 = v21;
      v15 = v20;
      v17 = v41;
      continue;
    }

    break;
  }

  (*v44)(v9, v45);
}

uint64_t sub_245B7CD64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t *sub_245B7CDE4(uint64_t a1, uint64_t a2)
{
  e5rt_buffer_object_create_from_data_pointer();
  type metadata accessor for E5MLDelegate.E5MLError(0);
  sub_245B7C384();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t sub_245B7CEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    e5rt_tensor_desc_alloc_buffer_object();
    type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    swift_deallocPartialClassInstance();
    return v3;
  }

  else
  {
    result = sub_245B92E90();
    __break(1u);
  }

  return result;
}

uint64_t sub_245B7D16C()
{
  if (*(v0 + 16))
  {
    e5rt_execution_stream_release();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_245B7D288(unsigned int (*a1)(uint64_t, uint64_t *), uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, void *), uint64_t a6)
{
  v8 = sub_245B7D3BC(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    v9 = *(v8 + 2);
    if (v9)
    {
      v20 = MEMORY[0x277D84F90];
      v10 = v8;
      sub_245B85310(0, v9, 0);
      v6 = v20;
      type metadata accessor for E5IOPort();
      v11 = (v10 + 48);
      do
      {
        v13 = *(v11 - 2);
        v12 = *(v11 - 1);
        v14 = *v11;
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        v17 = *(v20 + 16);
        v16 = *(v20 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_245B85310((v16 > 1), v17 + 1, 1);
        }

        *(v20 + 16) = v17 + 1;
        v18 = (v20 + 24 * v17);
        v18[4] = v13;
        v18[5] = v12;
        v18[6] = v15;
        v11 += 3;
        --v9;
      }

      while (v9);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v6;
}

unsigned int (*sub_245B7D3BC(unsigned int (*a1)(uint64_t, uint64_t *), uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, void *), uint64_t a6))(uint64_t, uint64_t, uint64_t)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v27 = 0;
  v10 = *(v6 + 16);
  if (a1(v10, &v27))
  {
    type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return a3;
  }

  if ((v27 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = swift_slowAlloc();
  if (a3(v10, v27, v11))
  {
    goto LABEL_5;
  }

  v26 = v10;
  v13 = v27;
  if (v27 < 0)
  {
LABEL_23:
    __break(1u);
  }

  if (!v27)
  {
    a3 = MEMORY[0x277D84F90];
LABEL_20:
    MEMORY[0x245D7ADF0](v11, -1, -1);
    return a3;
  }

  v25 = a5;
  v14 = 0;
  a3 = MEMORY[0x277D84F90];
  v24 = v11;
  while (1)
  {
    v16 = *(v11 + 8 * v14);
    if (v16)
    {
      break;
    }

LABEL_11:
    if (v13 == ++v14)
    {
      goto LABEL_20;
    }
  }

  v17 = sub_245B92C80();
  v19 = v18;
  v28[0] = 0;
  v20 = a6;
  if (!v25(v26, v16, v28))
  {
    v21 = v28[0];
    if (v28[0])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_245B84BC8(0, *(a3 + 2) + 1, 1, a3);
      }

      v23 = *(a3 + 2);
      v22 = *(a3 + 3);
      if (v23 >= v22 >> 1)
      {
        a3 = sub_245B84BC8((v22 > 1), v23 + 1, 1, a3);
      }

      *(a3 + 2) = v23 + 1;
      v15 = (a3 + 24 * v23);
      v15[4] = v17;
      v15[5] = v19;
      v15[6] = v21;
      v11 = v24;
      a6 = v20;
      goto LABEL_11;
    }
  }

LABEL_5:
  type metadata accessor for E5MLDelegate.E5MLError(0);
  sub_245B7C384();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  MEMORY[0x245D7ADF0](v11, -1, -1);
  return a3;
}

void *sub_245B7D6A0(unint64_t a1, uint64_t a2)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v15 = a2;
    v16 = sub_245B92DB0();
    a2 = v15;
    v6 = v16;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != *(a2 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v41 = a2;
  v3 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v2 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v44 = MEMORY[0x277D84F90];
  sub_245B852F0(0, v6, 0);
  v2 = v44;
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(MEMORY[0x245D7A4E0](i, a1) + 16);
      swift_unknownObjectRelease();
      v10 = *(v44 + 16);
      v9 = *(v44 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_245B852F0((v9 > 1), v10 + 1, 1);
      }

      *(v44 + 16) = v10 + 1;
      *(v44 + 8 * v10 + 32) = v8;
    }
  }

  else
  {
    v11 = a1 + 32;
    v12 = *(v44 + 16);
    v13 = v6;
    do
    {
      v3 = *(*v11 + 16);
      v14 = *(v44 + 24);
      if (v12 >= v14 >> 1)
      {
        sub_245B852F0((v14 > 1), v12 + 1, 1);
      }

      *(v44 + 16) = v12 + 1;
      *(v44 + 8 * v12 + 32) = v3;
      v11 += 8;
      ++v12;
      --v13;
    }

    while (v13);
  }

  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34898, &qword_245B94860);
  v3 = sub_245B92D40();
  *(v3 + 16) = v6;
  bzero((v3 + 32), 8 * v6);
LABEL_18:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (!v5)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_24:
  sub_245B7D68C(v2);
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_25:
  sub_245B92DB0();
LABEL_26:
  resource_sharing_precompiled_compute_operations_with_multiple_options = e5rt_execution_stream_operation_create_resource_sharing_precompiled_compute_operations_with_multiple_options();

  if (resource_sharing_precompiled_compute_operations_with_multiple_options)
  {
LABEL_27:
    v18 = type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v18;
  }

  v18 = sub_245B8D970(MEMORY[0x277D84F90]);
  v43 = *(v3 + 16);
  if (!v43)
  {
LABEL_45:

    return v18;
  }

  v19 = 0;
  v20 = (v41 + 40);
  v42 = v6;
  while (v19 < *(v3 + 16))
  {
    v22 = *(v3 + 8 * v19 + 32);
    if (!v22)
    {

      goto LABEL_27;
    }

    if (v6 == v19)
    {
      goto LABEL_49;
    }

    v23 = v3;
    v25 = *(v20 - 1);
    v24 = *v20;
    type metadata accessor for E5RTExecutionStreamOperation();
    v26 = swift_allocObject();
    *(v26 + 16) = v22;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_245B8BA78(v25, v24);
    v30 = v18[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_50;
    }

    v34 = v29;
    if (v18[3] < v33)
    {
      sub_245B8BCC8(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_245B8BA78(v25, v24);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_52;
      }

LABEL_40:
      if (v34)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v39 = v28;
    sub_245B8C9D4();
    v28 = v39;
    if (v34)
    {
LABEL_30:
      v21 = v28;

      *(v18[7] + 8 * v21) = v26;

      goto LABEL_31;
    }

LABEL_41:
    v18[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v18[6] + 16 * v28);
    *v36 = v25;
    v36[1] = v24;
    *(v18[7] + 8 * v28) = v26;
    v37 = v18[2];
    v32 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v32)
    {
      goto LABEL_51;
    }

    v18[2] = v38;
LABEL_31:
    ++v19;
    v20 += 2;
    v3 = v23;
    v6 = v42;
    if (v43 == v19)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_245B92F80();
  __break(1u);
  return result;
}

uint64_t sub_245B7DAE8()
{
  e5rt_io_port_get_supported_buffer_types();
  type metadata accessor for E5MLDelegate.E5MLError(0);
  sub_245B7DDC0(&qword_27EE34850, 255, type metadata accessor for E5MLDelegate.E5MLError, &unk_245B95014);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v0 & 1;
}

uint64_t sub_245B7DCA0()
{
  v1 = *v0;
  sub_245B92FF0();
  MEMORY[0x245D7A680](*(v1 + 16));
  return sub_245B93010();
}

uint64_t sub_245B7DD18(uint64_t a1)
{
  v2 = *v1;
  sub_245B92FF0();
  MEMORY[0x245D7A680](*(v2 + 16));
  return sub_245B93010();
}

uint64_t sub_245B7DDC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245B7DE08()
{
  if (*(v0 + 16))
  {
    e5rt_operand_desc_release();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_245B7DE98()
{
  e5rt_program_function_release();

  return swift_deallocClassInstance();
}

uint64_t sub_245B7DF2C(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v4 = sub_245B7E060(a1, a2, v7);
  if (v3)
  {
    MEMORY[0x245D7ACB0](v3);
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v5 = v4;

    if (v5 || !v7[0])
    {
      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v2 + 16) = v7[0];
    }

    return v2;
  }

  return result;
}

void *sub_245B7E060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return e5rt_program_library_create();
  }

  type metadata accessor for e5rt_error_code_t(0);
  result = sub_245B92E40();
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_245B7E1A4()
{
  v1 = *(v0 + 16);
  if (!e5rt_program_library_get_num_functions())
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for E5MLDelegate.E5MLError(0);
  sub_245B7C384();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v1;
}

uint64_t sub_245B7E3C0@<X0>(_DWORD *a3@<X8>)
{
  result = e5rt_program_library_retain_program_function();
  *a3 = result;
  return result;
}

uint64_t sub_245B7E3FC@<X0>(_DWORD *a2@<X8>)
{
  result = e5rt_program_library_create();
  *a2 = result;
  return result;
}

uint64_t AllowedDelegates.MPSGraphOptions.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = *(type metadata accessor for AllowedDelegates.MPSGraphOptions(0) + 20);
  v3 = sub_245B925E0();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

Swift::Int_optional __swiftcall AllowedDelegates.MPSGraphOptions.getCore()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t AllowedDelegates.MPSGraphOptions.setURL(url:)(uint64_t a1)
{
  v3 = *(type metadata accessor for AllowedDelegates.MPSGraphOptions(0) + 20);
  sub_245B7E5BC(v1 + v3);
  v4 = sub_245B925E0();
  v7 = *(v4 - 8);
  (*(v7 + 16))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_245B7E5BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall AllowedDelegates.E5MLOptions.setEspressocOptions(options:)(Swift::OpaquePointer options)
{

  v1->_rawValue = options._rawValue;
}

uint64_t sub_245B7E798(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245B7E7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t AllowedDelegates.mpsGraphOptions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AllowedDelegates(0) + 24);

  return sub_245B7E87C(a1, v3);
}

uint64_t sub_245B7E87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE348A8, &qword_245B94978);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AllowedDelegates.e5mlOptions.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AllowedDelegates(0) + 28));
}

uint64_t AllowedDelegates.e5mlOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for AllowedDelegates(0) + 28);

  *(v1 + v3) = v2;
  return result;
}

uint64_t AllowedDelegates.targetDelegateOptionsString.getter()
{
  v1 = *(v0 + *(type metadata accessor for AllowedDelegates(0) + 32));

  return v1;
}

uint64_t AllowedDelegates.targetDelegateOptionsString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AllowedDelegates(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AllowedDelegates.init(target:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  a2[1] = 1;
  v4 = type metadata accessor for AllowedDelegates(0);
  v5 = v4[6];
  v6 = type metadata accessor for AllowedDelegates.MPSGraphOptions(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  *&a2[v4[7]] = 0;
  v8 = &a2[v4[8]];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *a2 = v3;
  return result;
}

uint64_t sub_245B7EB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE348A8, &qword_245B94978);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_245B7EC68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE348A8, &qword_245B94978);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_245B7ED34(uint64_t a1)
{
  sub_245B7F0E8(319, &qword_27EE348C0, &type metadata for AllowedDelegates.BNNSOptions);
  if (v1 <= 0x3F)
  {
    sub_245B7F134(319, &qword_27EE348C8, type metadata accessor for AllowedDelegates.MPSGraphOptions);
    if (v2 <= 0x3F)
    {
      sub_245B7F0E8(319, &qword_27EE348D0, &type metadata for AllowedDelegates.E5MLOptions);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AllowedDelegates.BNNSOptions(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AllowedDelegates.BNNSOptions(_WORD *result, int a2, int a3)
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

uint64_t sub_245B7EF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_245B7EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_245B7F038(uint64_t a1)
{
  sub_245B7F0E8(319, &qword_27EE348E8, MEMORY[0x277D83B88]);
  if (v1 <= 0x3F)
  {
    sub_245B7F134(319, &qword_27EE347A0, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_245B7F0E8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_245B92D70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_245B7F134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_245B92D70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_245B7F188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_245B7F1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BNNSCompiler.compile(moduleBytecode:to:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_245B92610();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = 0;
  v24 = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v17 = a3;
  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = &v23;
  v22 = v11 + 16;
  sub_245B7FAAC(sub_245B80214, v16, a1, a2);
  v12 = v23;
  if (v23)
  {
    v13 = v24;
    *v10 = sub_245B8028C;
    v10[1] = v11;
    (*(v8 + 104))(v10, *MEMORY[0x277CC92B8], v7);
    return sub_245B7FE28(v12, v13, v10);
  }

  else
  {
    sub_245B80238();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }
}

uint64_t sub_245B7F458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, uint64_t a8)
{
  v25 = a7;
  v24[0] = a5;
  v24[1] = a8;
  v28 = a4;
  v10 = sub_245B92530();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245B925E0();
  v15 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_14;
  }

  v26 = 0x72692E736E6E62;
  v27 = 0xE700000000000000;
  (*(v11 + 104))(v13, *MEMORY[0x277CC91D8], v10);
  sub_245B803A0();
  sub_245B925D0();
  (*(v11 + 8))(v13, v10);
  BNNSGraphCompileOptionsMakeDefault();
  sub_245B925C0();
  sub_245B92C00();

  BNNSGraphCompileOptionsSetOutputPathWithPermissionsAndProtectionClass();

  result = BNNSGraphCompileOptionsSetTarget();
  v19 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v19 != 2 || !__OFSUB__(*(v24[0] + 24), *(v24[0] + 16)))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v19)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(v24[0]), v24[0]))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_10:
  if (!BNNSGraphCompileMLIR())
  {
    return (*(v15 + 8))(v18, v14);
  }

  v20 = BNNSReplaceByDelegateOpsMLIR();
  v22 = v21;
  result = (*(v15 + 8))(v18, v14);
  v23 = v25;
  *v25 = v20;
  v23[1] = v22;
  return result;
}

void sub_245B7F7B8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v9)
    {
      goto LABEL_17;
    }

    v10 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_47;
      }

      v23 = *(a3 + 24);
      if (!__OFSUB__(v23, *(a3 + 16)))
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_31:
      if (v23 != 2)
      {
        goto LABEL_47;
      }

      v16 = *(a3 + 24);
      if (!__OFSUB__(v16, *(a3 + 16)))
      {
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_35;
    }

    if (!v10)
    {
      goto LABEL_47;
    }

    LODWORD(v9) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  if (v9 != 2)
  {
    v23 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (!v23 || !__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }

    goto LABEL_31;
  }

  v11 = *(a1 + 16);
  v12 = sub_245B924D0();
  if (!v12)
  {
    sub_245B924E0();
    goto LABEL_54;
  }

  v13 = v12;
  v14 = sub_245B924F0();
  if (__OFSUB__(v11, v14))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v15 = v11 - v14 + v13;
  a1 = sub_245B924E0();
  if (!v15)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v16 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
LABEL_35:
    if (v16 != 2)
    {
      goto LABEL_47;
    }

    v22 = *(a3 + 24);
    if (!__OFSUB__(v22, *(a3 + 16)))
    {
      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (!v16 || !__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_47;
  }

  __break(1u);
LABEL_17:
  v17 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_49;
  }

  v18 = sub_245B924D0();
  if (!v18)
  {
LABEL_55:
    sub_245B924E0();
    goto LABEL_56;
  }

  v19 = v18;
  v20 = sub_245B924F0();
  if (__OFSUB__(v17, v20))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v21 = v17 - v20 + v19;
  sub_245B924E0();
  if (v21)
  {
    v22 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (!v22 || !__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_47:
        BNNSGraphCompileOptionsMakeDefault();
        *a5 = BNNSSegmentCoreMLIR();
        a5[1] = v24;
        sub_245B74A68(a3, a4);
        return;
      }

LABEL_52:
      __break(1u);
    }

LABEL_39:
    if (v22 == 2 && __OFSUB__(*(a3 + 24), *(a3 + 16)))
    {
      __break(1u);
    }

    goto LABEL_47;
  }

LABEL_56:
  __break(1u);
}

uint64_t sub_245B7FAAC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_245B7FBE4(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_245B7FBE4(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_245B7FBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_245B924D0();
  v7 = result;
  if (result)
  {
    result = sub_245B924F0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_245B924E0();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_245B7FC8C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_245B7FD44(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_245B92620();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_245B924D0();
  if (v3)
  {
    result = sub_245B924F0();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_245B924E0();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_245B7FC8C(v3, v7);

  return v8;
}

uint64_t sub_245B7FE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_245B92610();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_245B92600();
  if (a2)
  {
    sub_245B92510();
    swift_allocObject();

    v10 = sub_245B924C0();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = sub_245B92500();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_245B7FD44(v10, a2);
  }

  else
  {
    v13 = sub_245B92600();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t sub_245B80060(uint64_t a1, unint64_t a2)
{
  v4 = sub_245B92610();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = 0;
  v14 = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  sub_245B74E8C(a1, a2);
  sub_245B7F7B8(a1, a2, a1, a2, &v13, v8 + 16);
  v9 = v13;
  if (v13)
  {
    v10 = v14;
    *v7 = sub_245B80524;
    v7[1] = v8;
    (*(v5 + 104))(v7, *MEMORY[0x277CC92B8], v4);
    return sub_245B7FE28(v9, v10, v7);
  }

  else
  {
    sub_245B803F4();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }
}

unint64_t sub_245B80238()
{
  result = qword_27EE348F0;
  if (!qword_27EE348F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE348F0);
  }

  return result;
}

unint64_t sub_245B80324()
{
  result = qword_27EE348F8;
  if (!qword_27EE348F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE348F8);
  }

  return result;
}

unint64_t sub_245B803A0()
{
  result = qword_27EE34900;
  if (!qword_27EE34900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34900);
  }

  return result;
}

unint64_t sub_245B803F4()
{
  result = qword_27EE34908;
  if (!qword_27EE34908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34908);
  }

  return result;
}

unint64_t sub_245B804A4()
{
  result = qword_27EE34910;
  if (!qword_27EE34910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34910);
  }

  return result;
}

uint64_t static Compiler.compile(compiling:for:outputPackageURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_245B92BF0();
  v4[6] = swift_task_alloc();
  v5 = sub_245B92AD0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B80628, 0, 0);
}

uint64_t sub_245B80628()
{
  v1 = sub_245B92540();
  v3 = v2;
  v4 = v1 == 1919511661 && v2 == 0xE400000000000000;
  if (v4 || (v5 = v1, (sub_245B92F50() & 1) != 0))
  {

    sub_245B925B0();
    sub_245B92BE0();
    v6 = sub_245B92BB0();
    v8 = v7;

    v9 = v0[9];
    *v9 = v6;
    v9[1] = v8;
    v10 = MEMORY[0x277D36B18];
  }

  else
  {
    if (v5 == 25442 && v3 == 0xE200000000000000)
    {
    }

    else
    {
      v21 = sub_245B92F50();

      if ((v21 & 1) == 0)
      {
        return sub_245B92E90();
      }
    }

    v22 = sub_245B925F0();
    v23 = v0[9];
    *v23 = v22;
    v23[1] = v24;
    v10 = MEMORY[0x277D36B20];
  }

  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[8];
  (*(v14 + 104))(v11, *v10, v13);
  (*(v14 + 32))(v12, v11, v13);
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_245B808E4;
  v16 = v0[10];
  v17 = v0[4];
  v18 = v0[3];

  return sub_245B80B2C(v16, v17, v18);
}

uint64_t sub_245B808E4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_245B80A94;
  }

  else
  {
    v2 = sub_245B809F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245B809F8()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_245B80A94()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_245B80B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34918, &qword_245B94D20);
  v4[10] = swift_task_alloc();
  v5 = sub_245B92B30();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_245B925E0();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B80CA8, 0, 0);
}

uint64_t sub_245B80CA8()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v17 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  TargetArchitecture.rawValue.getter();
  (*(v2 + 16))(v1, v5, v4);
  sub_245B92590();

  v7 = *(v2 + 8);
  v0[20] = v7;
  v0[21] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  (*(v2 + 32))(v1, v3, v4);
  sub_245B925A0();
  v7(v1, v4);
  sub_245B812E0(v6);
  sub_245B92B20();
  sub_245B92AE0();
  sub_245B92AF0();
  TargetArchitecture.rawValue.getter();
  sub_245B92AA0();
  v8 = sub_245B92AC0();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v17, 0, 1, v8);
  sub_245B92B10();
  v10 = sub_245B92B00();
  if (!(*(v9 + 48))(v11, 1, v8))
  {
    type metadata accessor for AllowedDelegates(0);

    sub_245B92AB0();
  }

  v10(v0 + 2, 0);
  (*(v0[12] + 16))(v0[13], v0[14], v0[11]);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_245B80FA4;
  v13 = v0[19];
  v14 = v0[13];
  v15 = v0[6];

  return MEMORY[0x282195DF8](v15, v13, v14);
}

uint64_t sub_245B80FA4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v2[23] = v0;

  v6 = *(v4 + 8);
  v2[24] = v6;
  v2[25] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_245B81204;
  }

  else
  {
    v7 = sub_245B81128;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_245B81128()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  (*(v0 + 192))(*(v0 + 112), *(v0 + 88));
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_245B81204()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  (*(v0 + 192))(*(v0 + 112), *(v0 + 88));
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

void *sub_245B812E0(char *a1)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34920, &qword_245B94D28);
  MEMORY[0x28223BE20](v101);
  v107 = v94 - v2;
  v106 = type metadata accessor for E5MLCompilerInput(0);
  MEMORY[0x28223BE20](v106);
  v4 = v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_245B926B0();
  v104 = *(v100 - 8);
  v5 = MEMORY[0x28223BE20](v100);
  v103 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  *&v111 = v94 - v7;
  v98 = sub_245B92680();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v102 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v110 = v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE348A8, &qword_245B94978);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v99 = v94 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v94 - v20;
  v22 = a1[1];
  v108 = v4;
  v96 = v12;
  if (v22)
  {
    v23 = a1;
LABEL_10:
    v112 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v23 = a1;
  v24 = *a1;
  v25 = type metadata accessor for BNNSCompiler();
  v26 = swift_allocObject();
  v113[0] = v24;
  v27 = sub_245B80378(v113);
  if ((v27 & 0x100000000) != 0)
  {
    swift_deallocPartialClassInstance();
    goto LABEL_10;
  }

  *(v26 + 16) = v27;

  v28 = sub_245B84E40(0, 1, 1, MEMORY[0x277D84F90]);
  v30 = v28[2];
  v29 = v28[3];
  if (v30 >= v29 >> 1)
  {
    v28 = sub_245B84E40((v29 > 1), v30 + 1, 1, v28);
  }

  v114 = v25;
  v115 = sub_245B82318(&qword_27EE34950, type metadata accessor for BNNSCompiler, &protocol conformance descriptor for BNNSCompiler);
  *v113 = v26;
  v28[2] = v30 + 1;
  v109 = v28;
  sub_245B821A0(v113, &v28[5 * v30 + 4]);
  v31 = type metadata accessor for BNNSSegmenter();
  v32 = swift_allocObject();
  v33 = sub_245B84E1C(0, 1, 1, MEMORY[0x277D84F90]);
  v35 = v33[2];
  v34 = v33[3];
  if (v35 >= v34 >> 1)
  {
    v33 = sub_245B84E1C((v34 > 1), v35 + 1, 1, v33);
  }

  v114 = v31;
  v115 = sub_245B82318(&qword_27EE34958, type metadata accessor for BNNSSegmenter, &protocol conformance descriptor for BNNSSegmenter);
  v112 = v33;
  *v113 = v32;
  v33[2] = v35 + 1;
  sub_245B821A0(v113, &v33[5 * v35 + 4]);
LABEL_11:
  v105 = type metadata accessor for AllowedDelegates(0);
  v36 = *(v105 + 24);
  v37 = v23;
  sub_245B7E7D0(&v23[v36], v21, &qword_27EE348A8, &qword_245B94978);
  v38 = type metadata accessor for AllowedDelegates.MPSGraphOptions(0);
  v39 = *(*(v38 - 8) + 48);
  v40 = v39(v21, 1, v38);
  sub_245B822B8(v21, &qword_27EE348A8, &qword_245B94978);
  if (v40 == 1)
  {
    v42 = v108;
    v41 = v109;
LABEL_31:
    v74 = v106;
    v75 = *(v105 + 28);
    v76 = v107;
    if (!*&v37[v75])
    {
      return v112;
    }

    v77 = 7629162;
    v111 = xmmword_245B94430;
    *v42 = xmmword_245B94430;
    v78 = v74[5];
    v79 = sub_245B925E0();
    (*(*(v79 - 8) + 56))(&v42[v78], 1, 1, v79);
    v113[0] = *v37;
    if (TargetArchitecture.rawValue.getter() == 0x6169636570736E75 && v80 == 0xED000064657A696CLL)
    {

      v81 = 0xE300000000000000;
    }

    else
    {
      v83 = sub_245B92F50();

      if (v83)
      {
        v81 = 0xE300000000000000;
      }

      else
      {
        v113[0] = *v37;
        result = TargetArchitecture.rawValue.getter();
        v77 = result;
      }
    }

    v84 = &v42[v74[6]];
    *v84 = v77;
    v84[1] = v81;
    v85 = *&v37[v75];
    v86 = v101;
    if (v85)
    {
      *&v42[v74[7]] = v85;
      sub_245B7603C(v42, v76 + *(v86 + 40));
      *v76 = 1280128325;
      v76[1] = 0xE400000000000000;
      v76[2] = 0xD00000000000001BLL;
      v76[3] = 0x8000000245B93DD0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_245B84E40(0, v41[2] + 1, 1, v41);
      }

      v88 = v41[2];
      v87 = v41[3];
      if (v88 >= v87 >> 1)
      {
        v41 = sub_245B84E40((v87 > 1), v88 + 1, 1, v41);
      }

      v114 = v86;
      v115 = sub_245B821B8(&qword_27EE34928, &qword_27EE34920, &qword_245B94D28, &unk_245B952A0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
      sub_245B7E7D0(v76, boxed_opaque_existential_1, &qword_27EE34920, &qword_245B94D28);
      v41[2] = v88 + 1;
      sub_245B821A0(v113, &v41[5 * v88 + 4]);
      sub_245B822B8(v76, &qword_27EE34920, &qword_245B94D28);

      sub_245B74E78(0, 0xF000000000000000);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_245B84E1C(0, v112[2] + 1, 1, v112);
      }

      v91 = v112[2];
      v90 = v112[3];
      if (v91 >= v90 >> 1)
      {
        v112 = sub_245B84E1C((v90 > 1), v91 + 1, 1, v112);
      }

      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34930, &qword_245B94D30);
      v115 = sub_245B821B8(&qword_27EE34938, &qword_27EE34930, &qword_245B94D30, "Y\ai<T\a");
      v92 = swift_allocObject();
      *v113 = v92;
      *(v92 + 16) = 0xD00000000000001ELL;
      *(v92 + 24) = 0x8000000245B93DF0;
      *(v92 + 32) = v111;
      *(v92 + 48) = 1280128325;
      *(v92 + 56) = 0xE400000000000000;
      v82 = v112;
      v93 = &v112[5 * v91];
      v112[2] = v91 + 1;
      sub_245B821A0(v113, (v93 + 4));

      sub_245B74E78(0, 0xF000000000000000);

      sub_245B74A54(0, 0xF000000000000000);

      sub_245B74A54(0, 0xF000000000000000);

      sub_245B82258(v42, type metadata accessor for E5MLCompilerInput);
      return v82;
    }

    __break(1u);
    goto LABEL_52;
  }

  v43 = v99;
  sub_245B7E7D0(&v37[v36], v99, &qword_27EE348A8, &qword_245B94978);
  result = v39(v43, 1, v38);
  if (result == 1)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_245B7E7D0(v43 + *(v38 + 20), v110, &qword_27EE34780, &unk_245B94440);
  sub_245B82258(v43, type metadata accessor for AllowedDelegates.MPSGraphOptions);
  sub_245B7E7D0(&v37[v36], v17, &qword_27EE348A8, &qword_245B94978);
  result = v39(v17, 1, v38);
  v45 = v109;
  v46 = v100;
  if (result != 1)
  {
    v47 = *v17;
    v48 = v17[8];
    sub_245B82258(v17, type metadata accessor for AllowedDelegates.MPSGraphOptions);
    v99 = v37;
    v113[0] = *v37;
    v49 = TargetArchitecture.rawValue.getter();
    sub_245B92670();
    v50 = v112;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_245B84E1C(0, v50[2] + 1, 1, v50);
    }

    v53 = v50[2];
    v52 = v50[3];
    v94[1] = v49;
    if (v53 >= v52 >> 1)
    {
      v50 = sub_245B84E1C((v52 > 1), v53 + 1, 1, v50);
    }

    v54 = v98;
    v114 = v98;
    v115 = sub_245B82318(&qword_27EE34940, MEMORY[0x277CD77F0], MEMORY[0x277CD77E8]);
    v55 = __swift_allocate_boxed_opaque_existential_1(v113);
    v56 = v97;
    v57 = v102;
    (*(v97 + 16))(v55, v102, v54);
    v50[2] = v53 + 1;
    v112 = v50;
    sub_245B821A0(v113, &v50[5 * v53 + 4]);
    (*(v56 + 8))(v57, v54);
    sub_245B926A0();
    if (v48 || (v58 = sub_245B925E0(), v59 = *(v58 - 8), v60 = *(v59 + 48), v61 = v110, v60(v110, 1, v58) == 1))
    {

      v37 = v99;
    }

    else
    {
      v62 = v61;
      v63 = v96;
      sub_245B7E7D0(v62, v96, &qword_27EE34780, &unk_245B94440);
      v64 = sub_245B92BC0();

      if (v60(v63, 1, v58) == 1)
      {
        v65 = 0;
      }

      else
      {
        v65 = sub_245B92560();
        (*(v59 + 8))(v63, v58);
      }

      v37 = v99;
      v66 = objc_allocWithZone(MEMORY[0x277CD7820]);
      [v66 initWithArchitecture:v64 gpuCoreCount:v95 aneOptionsURL:v65];

      sub_245B92690();
      v46 = v100;
    }

    v67 = *(v104 + 16);
    v67(v103, v111, v46);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_245B84E40(0, v45[2] + 1, 1, v45);
    }

    v69 = v45[2];
    v68 = v45[3];
    if (v69 >= v68 >> 1)
    {
      v70 = sub_245B84E40((v68 > 1), v69 + 1, 1, v45);
    }

    else
    {
      v70 = v45;
    }

    v71 = *(v104 + 8);
    v71(v111, v46);
    v114 = v46;
    v115 = sub_245B82318(&qword_27EE34948, MEMORY[0x277CD7800], MEMORY[0x277CD77F8]);
    v72 = __swift_allocate_boxed_opaque_existential_1(v113);
    v73 = v103;
    v67(v72, v103, v46);
    v70[2] = v69 + 1;
    sub_245B821A0(v113, &v70[5 * v69 + 4]);
    v71(v73, v46);
    v41 = v70;
    sub_245B822B8(v110, &qword_27EE34780, &unk_245B94440);
    v42 = v108;
    goto LABEL_31;
  }

LABEL_53:
  __break(1u);
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

uint64_t sub_245B821A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_245B821B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_245B82200()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_245B74A68(*(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_245B82258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245B822B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_245B82318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ProgramLibrary.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_245B925E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ProgramLibrary.init(compiling:for:outputPackageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_245B92B70();
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_245B82490;

  return static Compiler.compile(compiling:for:outputPackageURL:)(a2, a3, a4);
}

uint64_t sub_245B82490()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_245B82688;
  }

  else
  {
    v2 = sub_245B825A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245B825A4()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  sub_245B82754(v0[4]);
  v4 = sub_245B925E0();
  v5 = *(v4 - 8);
  (*(v5 + 8))(v2, v4);
  (*(v5 + 32))(v3, v1, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_245B82688()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = sub_245B925E0();
  v5 = *(*(v4 - 8) + 8);
  v5(v2, v4);
  sub_245B82754(v1);
  v5(v3, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_245B82754(uint64_t a1)
{
  v2 = type metadata accessor for AllowedDelegates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProgramLibrary.compiledProgram.getter()
{
  v0 = sub_245B925E0();
  MEMORY[0x28223BE20](v0 - 8);
  sub_245B828B0();
  return sub_245B92890();
}

uint64_t sub_245B828B0()
{
  v0 = sub_245B92BC0();
  v1 = MGGetSInt64Answer();

  sub_245B82F44(v1, &v9);
  v2 = TargetArchitecture.rawValue.getter();
  v4 = v3;
  v9 = v2;
  v10 = v3;

  MEMORY[0x245D7A2F0](0x6361707869646F2ELL, 0xEC0000006567616BLL);
  sub_245B92590();

  v5 = [objc_opt_self() defaultManager];
  sub_245B925C0();
  v6 = sub_245B92BC0();

  LODWORD(v1) = [v5 fileExistsAtPath_];

  if (v1)
  {
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_245B92E50();
    MEMORY[0x245D7A2F0](0xD000000000000017, 0x8000000245B93E40);
    sub_245B925E0();
    sub_245B82CA4();
    v8 = sub_245B92F40();
    MEMORY[0x245D7A2F0](v8);

    MEMORY[0x245D7A2F0](0xD00000000000003DLL, 0x8000000245B93E60);
    MEMORY[0x245D7A2F0](v2, v4);
    MEMORY[0x245D7A2F0](46, 0xE100000000000000);
    result = sub_245B92E90();
    __break(1u);
  }

  return result;
}

uint64_t sub_245B82AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245B925E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_245B82B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245B925E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ProgramLibrary(uint64_t a1)
{
  result = qword_27EE34960;
  if (!qword_27EE34960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245B82C38(uint64_t a1)
{
  result = sub_245B925E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_245B82CA4()
{
  result = qword_27EE34970;
  if (!qword_27EE34970)
  {
    sub_245B925E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34970);
  }

  return result;
}

void *static TargetArchitecture.currentArchitecture.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_245B92BC0();
  v3 = MGGetSInt64Answer();

  return sub_245B82F44(v3, a1);
}

uint64_t TargetArchitecture.rawValue.getter()
{
  result = 1731408232;
  switch(*v0)
  {
    case 1:
      result = 1882403176;
      break;
    case 2:
      result = 1932734824;
      break;
    case 3:
      result = 1664299368;
      break;
    case 4:
      result = 1681076584;
      break;
    case 5:
      result = 1664364904;
      break;
    case 6:
      result = 1731473768;
      break;
    case 7:
      result = 1882468712;
      break;
    case 8:
      result = 1932800360;
      break;
    case 9:
      result = 1681142120;
      break;
    case 0xA:
      result = 1664430440;
      break;
    case 0xB:
      result = 1731539304;
      break;
    case 0xC:
      result = 1882534248;
      break;
    case 0xD:
      result = 1932865896;
      break;
    case 0xE:
      result = 1681207656;
      break;
    case 0xF:
      result = 1832202600;
      break;
    case 0x10:
      result = 1664495976;
      break;
    case 0x11:
      result = 1731604840;
      break;
    case 0x12:
      result = 1882599784;
      break;
    case 0x13:
      result = 1932931432;
      break;
    case 0x14:
      result = 1731670376;
      break;
    case 0x15:
      result = 1882665320;
      break;
    case 0x16:
      result = 1882730856;
      break;
    case 0x17:
      result = 0x6169636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_245B82F44@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 24640)
  {
    if (result <= 24609)
    {
      if (result <= 24577)
      {
        if (result == 24576)
        {
          *a2 = 2;
          return result;
        }

        if (result == 24577)
        {
          *a2 = 3;
          return result;
        }
      }

      else
      {
        switch(result)
        {
          case 24578:
            *a2 = 4;
            return result;
          case 24608:
            *a2 = 8;
            return result;
          case 24609:
            *a2 = 5;
            return result;
        }
      }
    }

    else if (result > 24625)
    {
      switch(result)
      {
        case 24626:
          *a2 = 14;
          return result;
        case 24628:
          *a2 = 15;
          return result;
        case 24640:
          *a2 = 19;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case 24610:
          *a2 = 9;
          return result;
        case 24624:
          *a2 = 13;
          return result;
        case 24625:
          *a2 = 10;
          return result;
      }
    }
  }

  else if (result > 33057)
  {
    if (result > 33087)
    {
      switch(result)
      {
        case 33088:
          *a2 = 21;
          return result;
        case 33090:
          *a2 = 20;
          return result;
        case 33104:
          *a2 = 22;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case 33058:
          *a2 = 11;
          return result;
        case 33072:
          *a2 = 18;
          return result;
        case 33074:
          *a2 = 17;
          return result;
      }
    }
  }

  else if (result > 33039)
  {
    switch(result)
    {
      case 33040:
        *a2 = 7;
        return result;
      case 33042:
        *a2 = 6;
        return result;
      case 33056:
        *a2 = 12;
        return result;
    }
  }

  else
  {
    switch(result)
    {
      case 24641:
        *a2 = 16;
        return result;
      case 33025:
        *a2 = 1;
        return result;
      case 33027:
        *a2 = 0;
        return result;
    }
  }

  *a2 = 23;
  return result;
}

uint64_t static TargetArchitecture.getAllArchsInString()()
{
  v0 = 0;
  do
  {
    v2 = byte_2858B93B0[v0++ + 32];
    v3 = 0xE400000000000000;
    v1 = 1731408232;
    switch(v2)
    {
      case 1:
        v1 = 1882403176;
        break;
      case 2:
        v1 = 1932734824;
        break;
      case 3:
        v1 = 1664299368;
        break;
      case 4:
        v1 = 1681076584;
        break;
      case 5:
        v1 = 1664364904;
        break;
      case 6:
        v1 = 1731473768;
        break;
      case 7:
        v1 = 1882468712;
        break;
      case 8:
        v1 = 1932800360;
        break;
      case 9:
        v1 = 1681142120;
        break;
      case 10:
        v1 = 1664430440;
        break;
      case 11:
        v1 = 1731539304;
        break;
      case 12:
        v1 = 1882534248;
        break;
      case 13:
        v1 = 1932865896;
        break;
      case 14:
        v1 = 1681207656;
        break;
      case 15:
        v1 = 1832202600;
        break;
      case 16:
        v1 = 1664495976;
        break;
      case 17:
        v1 = 1731604840;
        break;
      case 18:
        v1 = 1882599784;
        break;
      case 19:
        v1 = 1932931432;
        break;
      case 20:
        v1 = 1731670376;
        break;
      case 21:
        v1 = 1882665320;
        break;
      case 22:
        v1 = 1882730856;
        break;
      case 23:
        v1 = 0x6169636570736E75;
        v3 = 0xED000064657A696CLL;
        break;
      default:
        break;
    }

    v13 = v1;

    MEMORY[0x245D7A2F0](44, 0xE100000000000000);

    MEMORY[0x245D7A2F0](v13, v3);
  }

  while (v0 != 24);
  v4 = sub_245B83A38(1, 0, 0xE000000000000000);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x245D7A290](v4, v6, v8, v10);

  return v11;
}

Swift::String __swiftcall TargetArchitecture.toPlatformString()()
{
  v1 = 0xE600000000000000;
  v2 = 0x313031387830;
  switch(*v0)
  {
    case 1:
      break;
    case 2:
      v2 = 0x303030367830;
      break;
    case 3:
      v2 = 0x313030367830;
      break;
    case 4:
      v2 = 0x323030367830;
      break;
    case 5:
      v2 = 0x313230367830;
      break;
    case 6:
      v2 = 0x323131387830;
      break;
    case 7:
      v2 = 0x303131387830;
      break;
    case 8:
      v2 = 0x303230367830;
      break;
    case 9:
      v2 = 0x323230367830;
      break;
    case 0xA:
      v2 = 0x313330367830;
      break;
    case 0xB:
      v2 = 0x323231387830;
      break;
    case 0xC:
      v2 = 0x303231387830;
      break;
    case 0xD:
      v2 = 0x303330367830;
      break;
    case 0xE:
      v2 = 0x323330367830;
      break;
    case 0xF:
      v2 = 0x343330367830;
      break;
    case 0x10:
      v2 = 0x313430367830;
      break;
    case 0x11:
      v2 = 0x323331387830;
      break;
    case 0x12:
      v2 = 0x303331387830;
      break;
    case 0x13:
      v2 = 0x303430367830;
      break;
    case 0x14:
      v2 = 0x323431387830;
      break;
    case 0x15:
      v2 = 0x303431387830;
      break;
    case 0x16:
      v2 = 0x303531387830;
      break;
    case 0x17:
      v1 = 0xED000064657A696CLL;
      v2 = 0x6169636570736E75;
      break;
    default:
      v2 = 0x333031387830;
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

CoreMLOdie::TargetArchitecture_optional __swiftcall TargetArchitecture.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_245B92F60();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
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
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_245B83828()
{
  v0 = TargetArchitecture.rawValue.getter();
  v2 = v1;
  if (v0 == TargetArchitecture.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_245B92F50();
  }

  return v5 & 1;
}

uint64_t sub_245B838C4()
{
  sub_245B92FF0();
  TargetArchitecture.rawValue.getter();
  sub_245B92C30();

  return sub_245B93010();
}

uint64_t sub_245B8392C(uint64_t a1)
{
  TargetArchitecture.rawValue.getter();
  sub_245B92C30();
}

uint64_t sub_245B83990(uint64_t a1)
{
  sub_245B92FF0();
  TargetArchitecture.rawValue.getter();
  sub_245B92C30();

  return sub_245B93010();
}

uint64_t sub_245B83A00@<X0>(uint64_t *a1@<X8>)
{
  result = TargetArchitecture.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_245B83A38(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = sub_245B92C40();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_245B92C60();

  return sub_245B92D00();
}

unint64_t sub_245B83B08()
{
  result = qword_27EE34978;
  if (!qword_27EE34978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34978);
  }

  return result;
}

unint64_t sub_245B83B60()
{
  result = qword_27EE34980;
  if (!qword_27EE34980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE34988, &qword_245B94E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetArchitecture(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetArchitecture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245B83D14()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    e5rt_tensor_desc_get_shape();
    v1 = 0;
  }

  type metadata accessor for E5MLDelegate.E5MLError(v1);
  sub_245B7C384();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_245B83E74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_245B852D0(0, v3, 0);
    v4 = a1;
    v5 = *(v12 + 16);
    v6 = 32;
    v7 = v3;
    do
    {
      v8 = *(v4 + v6);
      v9 = *(v12 + 24);
      if (v5 >= v9 >> 1)
      {
        sub_245B852D0((v9 > 1), v5 + 1, 1);
        v4 = a1;
      }

      *(v12 + 16) = v5 + 1;
      *(v12 + 8 * v5 + 32) = v8;
      v6 += 8;
      ++v5;
      --v7;
    }

    while (v7);
  }

  e5rt_tensor_desc_create();

  type metadata accessor for E5MLDelegate.E5MLError(0);
  sub_245B7C384();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return v2;
}

uint64_t sub_245B84028()
{
  if (*(v0 + 16))
  {
    e5rt_tensor_desc_release();
  }

  return swift_deallocClassInstance();
}

uint64_t *sub_245B840B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_245B8B884(a3, a4, a1, a2);
  if (v6)
  {
    type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B7C384();
    swift_allocError();
    v8 = v7;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_245B92E50();
    MEMORY[0x245D7A2F0](0x6574696D696C6544, 0xEB00000000272072);
    sub_245B92BA0();
    MEMORY[0x245D7A2F0](0xD000000000000011, 0x8000000245B93ED0);
    MEMORY[0x245D7A2F0](a1, a2);
    v9 = &v15;
    MEMORY[0x245D7A2F0](34, 0xE100000000000000);
    v10 = v16;
    *v8 = v15;
    v8[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v11 = sub_245B92D00();
    v9 = MEMORY[0x245D7A290](v11);

    v12 = sub_245B92C50();
    v13 = sub_245B8B974(v12, a1, a2);
    MEMORY[0x245D7A290](v13);
  }

  return v9;
}

uint64_t sub_245B84288(uint64_t a1, unint64_t a2)
{
  v21[0] = 44;
  v21[1] = 0xE100000000000000;
  v20[2] = v21;

  v5 = sub_245B843F0(0x7FFFFFFFFFFFFFFFLL, 1, sub_245B85AA0, v20, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v21[0] = MEMORY[0x277D84F90];
    sub_245B85330(0, v6, 0);
    v7 = v21[0];
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = MEMORY[0x245D7A290](v9, v10, v11, v12);
      v15 = v14;

      v21[0] = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_245B85330((v16 > 1), v17 + 1, 1);
        v7 = v21[0];
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

unint64_t sub_245B843F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_245B92D00();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_245B84FAC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_245B84FAC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_245B92CE0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_245B92C50();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_245B92C50();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_245B92D00();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_245B84FAC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_245B92D00();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_245B84FAC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_245B84FAC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_245B92C50();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_245B847B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349C8, &qword_245B94F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_245B848B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349D0, &qword_245B94F38);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_245B84ACC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_245B84BC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349F8, &qword_245B94F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A00, &qword_245B94F68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_245B84D10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34990, &qword_245B94EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_245B84E64(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_245B84FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34998, &qword_245B94F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_245B850B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A08, &qword_245B94F70);
  v10 = *(sub_245B92780() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_245B92780() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_245B85290(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245B85350(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_245B852B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245B85454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245B852D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245B85644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245B852F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245B85748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_245B85310(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245B8584C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245B85330(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245B85994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245B85350(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349C8, &qword_245B94F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_245B85454(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349D0, &qword_245B94F38);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_245B85644(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349D8, &qword_245B94F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_245B85748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349A0, &qword_245B94F08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_245B8584C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349E8, &qword_245B94F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349F0, &qword_245B94F58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_245B85994(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34990, &qword_245B94EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_245B85AA0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_245B92F50() & 1;
  }
}

uint64_t sub_245B85AFC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_245B925E0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B85C0C, 0, 0);
}

uint64_t sub_245B85C0C()
{
  v107 = v0;
  v106[1] = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  *(v4 + 16) = sub_245B8D970(MEMORY[0x277D84F90]);
  v98 = (v4 + 16);
  sub_245B92900();
  sub_245B92580();
  v5 = *(v3 + 8);
  v5(v1, v2);
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  sub_245B925C0();
  v8 = sub_245B92BC0();

  LODWORD(v4) = [v7 fileExistsAtPath_];

  v9 = v0[16];
  if (!v4)
  {
    v13 = v0[11];
    v14 = v0[12];
    v104 = v0[9];
    type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B871F8(&qword_27EE34850, 255, type metadata accessor for E5MLDelegate.E5MLError, &unk_245B95014);
    swift_allocError();
    (*(v14 + 16))(v15, v9, v13);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v16 = sub_245B92910();
    (*(*(v16 - 8) + 8))(v104, v16);
    v5(v9, v13);
LABEL_44:

    v79 = v0[1];

    return v79();
  }

  v103 = v5;
  v10 = sub_245B925C0();
  v12 = v11;
  type metadata accessor for E5RTProgramLibrary();
  swift_allocObject();
  v89 = sub_245B7DF2C(v10, v12);
  v17 = v0[15];
  v18 = v0[11];
  v19 = sub_245B8DA74(MEMORY[0x277D84F90]);
  sub_245B92900();
  sub_245B92580();
  v103(v17, v18);
  v20 = [v6 defaultManager];
  sub_245B925C0();
  v21 = sub_245B92BC0();

  v22 = [v20 fileExistsAtPath_];

  v100 = v0;
  if (v22)
  {
    v23 = [v6 defaultManager];
    v24 = sub_245B92560();
    v0[8] = 0;
    v25 = [v23 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:0 error:v0 + 8];

    v26 = v0[8];
    if (v25)
    {
      v27 = sub_245B92D20();
      v28 = v26;

      v96 = *(v27 + 16);
      if (v96)
      {
        v29 = 0;
        v91 = v27 + ((*(v0[12] + 80) + 32) & ~*(v0[12] + 80));
        v93 = v0[12];
        v90 = v27;
        do
        {
          if (v29 >= *(v27 + 16))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
          }

          v31 = v0[15];
          v32 = v0[13];
          v33 = v0[11];
          (*(v93 + 16))(v32, v91 + *(v93 + 72) * v29, v33);
          sub_245B92570();
          v34 = sub_245B92550();
          v36 = v35;
          v103(v31, v33);
          v37 = sub_245B925C0();
          v101 = v38;
          v103(v32, v33);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106[0] = v19;
          v41 = sub_245B8BA78(v34, v36);
          v42 = v19[2];
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_54;
          }

          v45 = v40;
          if (v19[3] >= v44)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v40)
              {
                goto LABEL_8;
              }
            }

            else
            {
              sub_245B8CB44();
              if (v45)
              {
                goto LABEL_8;
              }
            }
          }

          else
          {
            sub_245B8BF70(v44, isUniquelyReferenced_nonNull_native);
            v46 = sub_245B8BA78(v34, v36);
            if ((v45 & 1) != (v47 & 1))
            {

              return sub_245B92F80();
            }

            v41 = v46;
            if (v45)
            {
LABEL_8:

              v19 = v106[0];
              v30 = (*(v106[0] + 56) + 16 * v41);
              *v30 = v37;
              v30[1] = v101;

              goto LABEL_9;
            }
          }

          v19 = v106[0];
          *(v106[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v48 = (v19[6] + 16 * v41);
          *v48 = v34;
          v48[1] = v36;
          v49 = (v19[7] + 16 * v41);
          *v49 = v37;
          v49[1] = v101;
          v50 = v19[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          if (v51)
          {
            goto LABEL_55;
          }

          v19[2] = v52;
LABEL_9:
          ++v29;
          v0 = v100;
          v27 = v90;
        }

        while (v96 != v29);
      }
    }

    else
    {
      v53 = v26;
      v54 = sub_245B92520();

      swift_willThrow();
      MEMORY[0x245D7ACB0](v54);
    }
  }

  v105 = MEMORY[0x277D84F90];
  v55 = sub_245B7E1A4();
  v94 = *(v55 + 16);
  if (v94)
  {
    v56 = 0;
    v57 = (v55 + 40);
    v102 = MEMORY[0x277D84F90];
    v97 = v55;
    while (1)
    {
      if (v56 >= *(v55 + 16))
      {
        goto LABEL_56;
      }

      v59 = *(v57 - 1);
      v58 = *v57;
      v106[0] = 0;

      v60 = sub_245B86CE8(v59, v58, v89, v106);

      if (v60 || (v61 = v106[0]) == 0)
      {
        v0 = v100;
        v71 = v100[16];
        v72 = v100[14];
        v73 = v100[11];
        v74 = v100[9];

        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B871F8(&qword_27EE34850, 255, type metadata accessor for E5MLDelegate.E5MLError, &unk_245B95014);
        swift_allocError();
        *v75 = v59;
        v75[1] = v58;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v76 = sub_245B92910();
        (*(*(v76 - 8) + 8))(v74, v76);
        v103(v72, v73);
        v103(v71, v73);
        goto LABEL_43;
      }

      type metadata accessor for E5CreateOptions();
      v62 = swift_allocObject();
      v0 = v100;
      v100[5] = 0;

      if (e5rt_precompiled_compute_op_create_options_create_with_program_function())
      {
        break;
      }

      v63 = v100[5];
      if (!v63)
      {
        break;
      }

      *(v62 + 16) = v63;
      v64 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_245B84D10(0, *(v102 + 16) + 1, 1, v102);
      }

      v66 = *(v64 + 2);
      v65 = *(v64 + 3);
      if (v66 >= v65 >> 1)
      {
        v64 = sub_245B84D10((v65 > 1), v66 + 1, 1, v64);
      }

      *(v64 + 2) = v66 + 1;
      v102 = v64;
      v67 = &v64[16 * v66];
      *(v67 + 4) = v59;
      *(v67 + 5) = v58;

      MEMORY[0x245D7A390](v68);
      if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_245B92D30();
      }

      ++v56;
      sub_245B92D50();
      v0 = v100;
      v100[7] = v61;
      e5rt_program_function_release();

      v69 = v105;
      v57 += 2;
      v55 = v97;
      if (v94 == v56)
      {
        goto LABEL_40;
      }
    }

    v99 = v100[16];
    v77 = v100[11];
    v92 = v100[9];
    v95 = v100[14];

    type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B871F8(&qword_27EE34850, 255, type metadata accessor for E5MLDelegate.E5MLError, &unk_245B95014);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v100[6] = v61;
    e5rt_program_function_release();

    v78 = sub_245B92910();
    (*(*(v78 - 8) + 8))(v92, v78);
    v103(v95, v77);
    v103(v99, v77);
    swift_deallocPartialClassInstance();
LABEL_43:

    goto LABEL_44;
  }

  v69 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
LABEL_40:

  v70 = sub_245B7D6A0(v69, v102);
  v81 = v0[16];
  v82 = v0[14];
  v83 = v0[11];
  v84 = v0[9];
  v85 = v70;

  v86 = sub_245B92910();
  (*(*(v86 - 8) + 8))(v84, v86);
  v103(v82, v83);
  v103(v81, v83);
  swift_beginAccess();
  *v98 = v85;

  v87 = v0[1];
  v88 = v0[10];

  return v87(v88);
}

uint64_t sub_245B869E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_245B86A40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_245B76C6C;

  return sub_245B85AFC(a2);
}

uint64_t sub_245B86B14()
{
  type metadata accessor for E5MLDelegate.E5MLError(0);
  sub_245B871F8(&qword_27EE34850, 255, type metadata accessor for E5MLDelegate.E5MLError, &unk_245B95014);
  swift_allocError();
  *v0 = 0xD000000000000023;
  v0[1] = 0x8000000245B93910;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t type metadata accessor for E5MLDelegate.E5MLError(uint64_t a1)
{
  result = qword_27EE34A28;
  if (!qword_27EE34A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_245B86CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return e5rt_program_library_retain_program_function();
  }

  type metadata accessor for e5rt_error_code_t(0);
  result = sub_245B92E40();
  if (!v4)
  {
    return v6;
  }

  return result;
}

void sub_245B86DA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v4 = sub_245B92BF0();
  MEMORY[0x28223BE20](v4 - 8);
  v28 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245B92940();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245B92950();
  v25 = *(v9 + 16);
  if (v25)
  {
    v10 = 0;
    v24[1] = v7 + 16;
    v24[0] = v7 + 8;
    while (v10 < *(v9 + 16))
    {
      v11 = v3;
      v12 = v9;
      v13 = v7;
      v14 = v6;
      (*(v7 + 16))(v42, v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v6);
      v15 = sub_245B92930();
      v17 = v16;
      sub_245B92BE0();
      v18 = sub_245B92BD0();
      v20 = v19;
      sub_245B74A68(v15, v17);
      if (!v20)
      {
        goto LABEL_11;
      }

      sub_245B8DDA4(v18, v20, &v39);
      v3 = v11;
      if (v11)
      {
        (*v24[0])(v42, v14);

        goto LABEL_9;
      }

      ++v10;
      v21 = v39;

      *&v35 = 0x2E4C4D3545;
      *(&v35 + 1) = 0xE500000000000000;
      v22 = v42;
      *&v31 = sub_245B92920();
      v23 = sub_245B92F40();
      v30 = v40;
      v29 = v41;
      MEMORY[0x245D7A2F0](v23);

      *&v36 = v27;
      *(&v36 + 1) = v21;
      v37 = v30;
      v38 = v29;
      v31 = v35;
      v32 = v36;
      v33 = v30;
      v34 = v29;
      sub_245B87134();

      sub_245B92790();
      v6 = v14;
      (*v24[0])(v22, v14);
      sub_245B87188(&v35);
      v9 = v12;
      v7 = v13;
      if (v25 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

unint64_t sub_245B87134()
{
  result = qword_27EE34A18;
  if (!qword_27EE34A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34A18);
  }

  return result;
}

uint64_t sub_245B871F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245B87240(uint64_t a1)
{
  result = sub_245B925E0();
  if (v2 <= 0x3F)
  {
    result = sub_245B872BC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_245B872BC()
{
  result = qword_27EE34A38;
  if (!qword_27EE34A38)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EE34A38);
  }

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

uint64_t sub_245B87300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_245B87348(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_245B873A8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
      v4 = sub_245B92D40();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_245B77E04(v3, v4 + v6);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_245B77E04(v3, v9);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_245B77E74(v3);
    return v4;
  }

  return result;
}

uint64_t sub_245B874CC(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v163 = a2;
  v147 = a1;
  v183 = *MEMORY[0x277D85DE8];
  v152 = sub_245B92830();
  v149 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v151 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34888, &unk_245B95100);
  v148 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = (&v146 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34890, &unk_245B94790);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v156 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v155 = (&v146 - v9);
  v10 = sub_245B92780();
  v11 = *(v10 - 8);
  v177 = v10;
  v178 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v157 = (&v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = &v146 - v14;
  v168 = sub_245B92990();
  v171 = *(v168 - 1);
  v16 = MEMORY[0x28223BE20](v168);
  v170 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v169 = &v146 - v18;
  v19 = sub_245B92870();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v22);
  v24 = &v146 - v23;
  v25 = *(v20 + 16);
  v176 = a3;
  v25(&v146 - v23, a3, v19);
  v25(&v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v19);
  v26 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v27 = swift_allocObject();
  v161 = v20;
  v28 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v20 + 32);
  v160 = v27;
  v162 = v19;
  v29(v27 + v26, v24, v19);
  v150 = *v163;
  v30 = *(v150 + 16);
  if (v30)
  {
    v31 = 0;
    v167 = (v171 + 16);
    LODWORD(v166) = *MEMORY[0x277D36AE0];
    v164 = (v171 + 8);
    v165 = (v171 + 104);
    v173 = v178 + 88;
    v174 = v178 + 16;
    LODWORD(v172) = *MEMORY[0x277D36AC8];
    v175 = v178 + 8;
    do
    {
      v32 = *(sub_245B92860() + 16);

      if (v31 >= v32)
      {
        goto LABEL_8;
      }

      v33 = sub_245B92860();
      if (v31 >= *(v33 + 16))
      {
        goto LABEL_66;
      }

      v34 = v171;
      v35 = v169;
      v36 = v15;
      v37 = v168;
      (*(v171 + 16))(v169, v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, v168);

      v38 = v170;
      (*(v34 + 104))(v170, v166, v37);
      v39 = sub_245B92980();
      v40 = *(v34 + 8);
      v40(v38, v37);
      v41 = v37;
      v15 = v36;
      v40(v35, v41);
      if ((v39 & 1) == 0)
      {
LABEL_8:
        v42 = sub_245B92850();
        if (v31 >= *(v42 + 16))
        {
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v43 = v177;
        v44 = v178;
        (*(v178 + 16))(v15, v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v31, v177);

        v45 = (*(v44 + 88))(v15, v43);
        if (v45 != v172)
        {
          (*(v161 + 8))(v28, v162);
          (*v175)(v15, v43);
          type metadata accessor for E5MLDelegate.E5MLError(0);
          sub_245B7C384();
          swift_allocError();
          v47 = v46;
          v181 = 0;
          v182 = 0xE000000000000000;
          sub_245B92E50();

          v181 = 0xD000000000000026;
          v182 = 0x8000000245B93F30;
          v180 = v31;
          v48 = sub_245B92F40();
          MEMORY[0x245D7A2F0](v48);

          v49 = v182;
          *v47 = v181;
          v47[1] = v49;
LABEL_16:
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        (*v175)(v15, v43);
      }

      v31 = (v31 + 1);
    }

    while (v30 != v31);
  }

  (*(v161 + 8))(v28, v162);
  v51 = v159[2];
  v50 = v159[3];
  v53 = v159[4];
  v52 = v159[5];
  v55 = v159[6];
  v54 = v159[7];
  swift_beginAccess();
  v56 = *(v51 + 16);
  if (!*(v56 + 16) || (v57 = sub_245B8BA78(v50, v53), (v58 & 1) == 0))
  {
    swift_endAccess();
    type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B7C384();
    swift_allocError();
    v64 = v63;
    v181 = 0;
    v182 = 0xE000000000000000;
    sub_245B92E50();

    v181 = 0xD000000000000021;
    v182 = 0x8000000245B93F60;
    MEMORY[0x245D7A2F0](v50, v53);
    v65 = v182;
    *v64 = v181;
    v64[1] = v65;
    goto LABEL_16;
  }

  v59 = *(*(v56 + 56) + 8 * v57);
  swift_endAccess();
  swift_retain_n();
  v60 = v158;
  v61 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_inputs, 0, j__e5rt_execution_stream_operation_get_input_names, 0, j__e5rt_execution_stream_operation_retain_input_port, 0);
  if (v60)
  {
  }

  v66 = v61;
  v67 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_inouts, 0, j__e5rt_execution_stream_operation_get_inout_names, 0, j__e5rt_execution_stream_operation_retain_inout_port, 0);
  v68 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_outputs, 0, j__e5rt_execution_stream_operation_get_output_names, 0, j__e5rt_execution_stream_operation_retain_output_port, 0);
  v162 = v52;
  v175 = v66;
  v164 = v59;

  v69 = sub_245B8DC9C(MEMORY[0x277D84F90]);
  v170 = *(v150 + 16);
  if (!v170)
  {
    v90 = v154;
    goto LABEL_45;
  }

  v171 = v67;
  v172 = 0;
  v70 = 0;
  v167 = (v67 + 48);
  v168 = (v68 + 48);
  v169 = (v55 + 32);
  v173 = v68;
  do
  {
    if (v70 == 0x100000000)
    {
      goto LABEL_100;
    }

    v71 = *(v54 + 16);
    v174 = v69;
    if (v71)
    {
      v59 = v54;
      v72 = sub_245B8BAF0(v70);
      if (v73)
      {
        v74 = (*(v54 + 56) + 16 * v72);
        v76 = *v74;
        v75 = v74[1];
        v77 = *(v67 + 16) + 1;
        v78 = v167;
        while (--v77)
        {
          v79 = *v78;
          if (*(v78 - 2) != v76 || *(v78 - 1) != v75)
          {
            v78 += 3;
            if ((sub_245B92F50() & 1) == 0)
            {
              continue;
            }
          }

          v81 = v174;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181 = v81;
          v59 = &v181;
          sub_245B8C888(v79, v70, isUniquelyReferenced_nonNull_native);
          v69 = v181;
          goto LABEL_41;
        }

        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B7C384();
        swift_allocError();
        v92 = v126;
        v181 = 0;
        v182 = 0xE000000000000000;
        sub_245B92E50();

        v93 = 0x8000000245B93FD0;
        v94 = 0xD000000000000014;
LABEL_69:
        v181 = v94;
        v182 = v93;
        MEMORY[0x245D7A2F0](v76, v75);

        v127 = v182;
        *v92 = v181;
        v92[1] = v127;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_70;
      }
    }

    if (v172 >= *(v55 + 16))
    {

      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      *v143 = 0xD00000000000001ELL;
      v143[1] = 0x8000000245B93F90;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_70;
    }

    if ((v172 & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    v83 = v168;
    v84 = &v169[16 * v172];
    v76 = *v84;
    v75 = *(v84 + 1);
    v85 = *(v173 + 16) + 1;
    do
    {
      if (!--v85)
      {

        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B7C384();
        swift_allocError();
        v92 = v91;
        v181 = 0;
        v182 = 0xE000000000000000;
        sub_245B92E50();

        v93 = 0x8000000245B93FB0;
        v94 = 0xD000000000000015;
        goto LABEL_69;
      }

      v86 = *v83;
      if (*(v83 - 2) == v76 && *(v83 - 1) == v75)
      {
        break;
      }

      v83 += 3;
    }

    while ((sub_245B92F50() & 1) == 0);

    v88 = v174;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v181 = v88;
    v59 = &v181;
    sub_245B8C888(v86, v70, v89);
    v69 = v181;
    v172 = (v172 + 1);
LABEL_41:
    ++v70;
    v67 = v171;
    v90 = v154;
  }

  while (v70 != v170);
LABEL_45:
  v174 = v69;

  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_245B92DB0())
    {
      v95 = sub_245B8B5F0(MEMORY[0x277D84F90]);
    }

    else
    {
      v95 = MEMORY[0x277D84FA0];
    }

    v90 = v154;
  }

  else
  {
    v95 = MEMORY[0x277D84FA0];
  }

  v69 = v149;
  v96 = v148;
  v180 = v95;
  v97 = sub_245B92850();
  v98 = 0;
  v99 = *(v97 + 16);
  v169 = (v178 + 16);
  v170 = v97;
  v100 = (v96 + 56);
  v101 = (v96 + 48);
  v172 = (v178 + 32);
  v173 = v99;
  v102 = (v178 + 88);
  LODWORD(v171) = *MEMORY[0x277D36AC8];
  v167 = (v178 + 96);
  v168 = (v178 + 8);
  v165 = (v69 + 8);
  v166 = (v69 + 16);
  while (2)
  {
    v59 = v157;
    while (2)
    {
      if (v98 == v173)
      {
        v103 = 1;
        v98 = v173;
        v104 = v156;
        v105 = v155;
        goto LABEL_55;
      }

      v104 = v156;
      if ((v98 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v98 >= *(v170 + 2))
      {
        goto LABEL_99;
      }

      v106 = v177;
      v107 = v178;
      v108 = &v170[((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v98];
      v109 = *(v90 + 48);
      v110 = v153;
      *v153 = v98;
      (*(v107 + 16))(v110 + v109, v108, v106);
      sub_245B7CD64(v110, v104, &qword_27EE34888, &unk_245B95100);
      v103 = 0;
      ++v98;
      v105 = v155;
      v59 = v157;
LABEL_55:
      (*v100)(v104, v103, 1, v90);
      sub_245B7CD64(v104, v105, &qword_27EE34890, &unk_245B94790);
      if ((*v101)(v105, 1, v90) == 1)
      {

        v128 = *(v162 + 16);
        if (v128)
        {
          v129 = 0;
          v177 = v175 + 48;
          v178 = v162 + 32;
LABEL_75:
          v130 = (v178 + 16 * v129);
          v132 = *v130;
          v131 = v130[1];
          ++v129;
          v133 = *(v175 + 16);

          v134 = -1;
          v135 = v177;
          while (1)
          {
            if (v134 - v133 == -1)
            {

LABEL_74:
              if (v129 == v128)
              {
                goto LABEL_86;
              }

              goto LABEL_75;
            }

            if (++v134 >= *(v175 + 16))
            {
              break;
            }

            if (*(v135 - 16) != v132 || *(v135 - 8) != v131)
            {
              v135 += 24;
              if ((sub_245B92F50() & 1) == 0)
              {
                continue;
              }
            }

            LOBYTE(v181) = 0;

            if (e5rt_io_port_is_dynamic())
            {

              type metadata accessor for E5MLDelegate.E5MLError(0);
              sub_245B7C384();
              swift_allocError();
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
            }

            if (v181)
            {
              v137 = sub_245B92850();
              v138 = v147;
              v139 = v163;
              sub_245B78418(v147, v162, v164, v137, v174, v163);

              v144 = v160;
              goto LABEL_87;
            }

            goto LABEL_74;
          }

          __break(1u);
        }

        else
        {
LABEL_86:
          v144 = v160;
          v139 = v163;
          v138 = v147;
LABEL_87:
          v140 = sub_245B92840();
          sub_245B7C8AC(v138, v140, v175, v162);

          v141 = *v139;
          v142 = sub_245B92850();
          sub_245B7A368(v141, v142, v174, sub_245B8A9A4, v144);

          v181 = 0;
          if (e5rt_execution_stream_create())
          {
            goto LABEL_91;
          }
        }

        v69 = v181;
        if (v181)
        {
          if (e5rt_execution_stream_encode_operation() || (v145 = e5rt_execution_stream_execute_sync(), v59 = v180, v145))
          {

            type metadata accessor for E5MLDelegate.E5MLError(0);
            sub_245B7C384();
            swift_allocError();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
LABEL_97:

            v181 = v69;
            e5rt_execution_stream_release();
          }

LABEL_102:
          sub_245B7AE50(v174, v59, v176, v163);

          goto LABEL_97;
        }

LABEL_91:

        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B7C384();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      v30 = *v105;
      v111 = v105 + *(v90 + 48);
      v112 = v177;
      (*v172)(v59, v111, v177);
      v113 = (*v102)(v59, v112);
      if (v113 == v171)
      {
        (*v167)(v59, v112);
        v114 = swift_projectBox();
        v115 = v151;
        v116 = v152;
        (*v166)(v151, v114, v152);

        v69 = sub_245B927D0();
        v117 = v115;
        v59 = v157;
        v118 = v116;
        v90 = v154;
        (*v165)(v117, v118);
        if ((v69 & 1) == 0)
        {
          goto LABEL_60;
        }

        continue;
      }

      break;
    }

    (*v168)(v59, v112);
LABEL_60:
    v119 = v174;
    if (*(v174 + 16))
    {
      v120 = sub_245B8BA34(v30);
      if (v121)
      {
        v69 = *(*(v119 + 56) + 8 * v120);
        LOBYTE(v181) = 0;

        if (e5rt_io_port_has_known_shape() || (v181 & 1) == 0)
        {
          sub_245B8AA14(&v181, v69);
        }

        else
        {
        }

        continue;
      }
    }

    break;
  }

LABEL_67:

  type metadata accessor for E5MLDelegate.E5MLError(0);
  sub_245B7C384();
  swift_allocError();
  v123 = v122;
  v181 = 0;
  v182 = 0xE000000000000000;
  sub_245B92E50();

  v181 = 0xD00000000000001DLL;
  v182 = 0x8000000245B93B40;
  v179 = v30;
  v124 = sub_245B92F40();
  MEMORY[0x245D7A2F0](v124);

  v125 = v182;
  *v123 = v181;
  v123[1] = v125;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_70:
}