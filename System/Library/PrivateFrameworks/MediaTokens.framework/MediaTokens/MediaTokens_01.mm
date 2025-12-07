unint64_t sub_2587804F4()
{
  result = qword_27F959390;
  if (!qword_27F959390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959390);
  }

  return result;
}

uint64_t sub_258780568(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2587805E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EndMediaSession(uint64_t a1)
{
  result = qword_27F959398;
  if (!qword_27F959398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587806A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_258783704();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9593B8, &qword_2587855D8);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for EndMediaSession(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258780BC4();
  sub_258783AA4();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_258780C7C(&qword_27F959118, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2587839B4();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_258780C18(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25878092C(uint64_t a1)
{
  v2 = sub_258780BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258780968(uint64_t a1)
{
  v2 = sub_258780BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2587809BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9593C8, &qword_2587855E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258780BC4();
  sub_258783AB4();
  sub_258783704();
  sub_258780C7C(&qword_27F9590E0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2587839D4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_258780BC4()
{
  result = qword_27F9593C0;
  if (!qword_27F9593C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593C0);
  }

  return result;
}

uint64_t sub_258780C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndMediaSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258780C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258780CD8()
{
  result = qword_27F9593D0;
  if (!qword_27F9593D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593D0);
  }

  return result;
}

unint64_t sub_258780D30()
{
  result = qword_27F9593D8;
  if (!qword_27F9593D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593D8);
  }

  return result;
}

unint64_t sub_258780D88()
{
  result = qword_27F9593E0;
  if (!qword_27F9593E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593E0);
  }

  return result;
}

uint64_t sub_258780DEC(uint64_t a1)
{
  v2 = sub_2587810D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258780E28(uint64_t a1)
{
  v2 = sub_2587810D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258780E64(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959408, &qword_2587857D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2587810D8();
  sub_258783AB4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_258780F7C()
{
  result = qword_27F9593E8;
  if (!qword_27F9593E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593E8);
  }

  return result;
}

unint64_t sub_258780FD4()
{
  result = qword_27F9593F0;
  if (!qword_27F9593F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593F0);
  }

  return result;
}

unint64_t sub_25878102C()
{
  result = qword_27F9593F8;
  if (!qword_27F9593F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593F8);
  }

  return result;
}

unint64_t sub_258781084()
{
  result = qword_27F959400;
  if (!qword_27F959400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959400);
  }

  return result;
}

unint64_t sub_2587810D8()
{
  result = qword_27F959410;
  if (!qword_27F959410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959410);
  }

  return result;
}

unint64_t sub_258781140()
{
  result = qword_27F959418;
  if (!qword_27F959418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959418);
  }

  return result;
}

unint64_t sub_258781198()
{
  result = qword_27F959420;
  if (!qword_27F959420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959420);
  }

  return result;
}

uint64_t sub_2587811FC(uint64_t a1)
{
  v2 = sub_258781388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258781238(uint64_t a1)
{
  v2 = sub_258781388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258781274(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959428, &qword_258785958);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258781388();
  sub_258783AB4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_258781388()
{
  result = qword_27F959430;
  if (!qword_27F959430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959430);
  }

  return result;
}

unint64_t sub_2587813F0()
{
  result = qword_27F959438;
  if (!qword_27F959438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959438);
  }

  return result;
}

unint64_t sub_258781448()
{
  result = qword_27F959440;
  if (!qword_27F959440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959440);
  }

  return result;
}

uint64_t sub_2587814B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258783704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25878157C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258783704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for RequestMediaToken(uint64_t a1)
{
  result = qword_27F959448;
  if (!qword_27F959448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258781680(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959478, &qword_258785AF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258781CE8();
  sub_258783AB4();
  v10[15] = 0;
  sub_258783704();
  sub_258781DFC(&qword_27F9590E0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2587839D4();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for RequestMediaToken(0) + 20));
    v10[13] = 1;
    sub_2587745D8();
    sub_2587839D4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_258781850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_258783704();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959468, &qword_258785AF0);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RequestMediaToken(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258781CE8();
  sub_258783AA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_258781DFC(&qword_27F959118, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v15 = v27;
  v16 = v25;
  sub_2587839B4();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_2587750C8();
  sub_2587839B4();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_258781D3C(v18, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_258781DA0(v18);
}

uint64_t sub_258781BB0(uint64_t a1)
{
  v2 = sub_258781CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258781BEC(uint64_t a1)
{
  v2 = sub_258781CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_258781CE8()
{
  result = qword_27F959470;
  if (!qword_27F959470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959470);
  }

  return result;
}

uint64_t sub_258781D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestMediaToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258781DA0(uint64_t a1)
{
  v2 = type metadata accessor for RequestMediaToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258781DFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258781E58()
{
  result = qword_27F959480;
  if (!qword_27F959480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959480);
  }

  return result;
}

unint64_t sub_258781EB0()
{
  result = qword_27F959488;
  if (!qword_27F959488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959488);
  }

  return result;
}

unint64_t sub_258781F08()
{
  result = qword_27F959490;
  if (!qword_27F959490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959490);
  }

  return result;
}

uint64_t sub_258781F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258781FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ValidateMediaSession(uint64_t a1)
{
  result = qword_27F959498;
  if (!qword_27F959498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587820AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_258783704();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9594B8, &qword_258785D00);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ValidateMediaSession(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2587825E4();
  sub_258783AA4();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_25878269C(&qword_27F959118, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2587839B4();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_258782638(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_258782334(uint64_t a1)
{
  v2 = sub_2587825E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258782370(uint64_t a1)
{
  v2 = sub_2587825E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2587823C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9594C8, &qword_258785D08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2587825E4();
  sub_258783AB4();
  sub_258783704();
  sub_25878269C(&qword_27F9590E0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2587839D4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2587825E4()
{
  result = qword_27F9594C0;
  if (!qword_27F9594C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9594C0);
  }

  return result;
}

uint64_t sub_258782638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidateMediaSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25878269C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2587826F8()
{
  result = qword_27F9594D0;
  if (!qword_27F9594D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9594D0);
  }

  return result;
}

unint64_t sub_258782750()
{
  result = qword_27F9594D8;
  if (!qword_27F9594D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9594D8);
  }

  return result;
}

unint64_t sub_2587827A8()
{
  result = qword_27F9594E0;
  if (!qword_27F9594E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9594E0);
  }

  return result;
}

uint64_t sub_258782810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258783704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2587828DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258783704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for ValidateMediaToken(uint64_t a1)
{
  result = qword_27F9594E8;
  if (!qword_27F9594E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587829E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959518, &qword_258785F18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258783048();
  sub_258783AB4();
  v10[15] = 0;
  sub_258783704();
  sub_25878315C(&qword_27F9590E0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2587839D4();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ValidateMediaToken(0) + 20));
    v10[13] = 1;
    sub_2587745D8();
    sub_2587839D4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_258782BB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_258783704();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959508, &qword_258785F10);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ValidateMediaToken(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258783048();
  sub_258783AA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_25878315C(&qword_27F959118, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v15 = v27;
  v16 = v25;
  sub_2587839B4();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_2587750C8();
  sub_2587839B4();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_25878309C(v18, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_258783100(v18);
}

uint64_t sub_258782F10(uint64_t a1)
{
  v2 = sub_258783048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258782F4C(uint64_t a1)
{
  v2 = sub_258783048();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_258783048()
{
  result = qword_27F959510;
  if (!qword_27F959510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959510);
  }

  return result;
}

uint64_t sub_25878309C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidateMediaToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258783100(uint64_t a1)
{
  v2 = type metadata accessor for ValidateMediaToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25878315C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2587831B8()
{
  result = qword_27F959520;
  if (!qword_27F959520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959520);
  }

  return result;
}

unint64_t sub_258783210()
{
  result = qword_27F959528;
  if (!qword_27F959528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959528);
  }

  return result;
}

unint64_t sub_258783268()
{
  result = qword_27F959530;
  if (!qword_27F959530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959530);
  }

  return result;
}

uint64_t sub_2587832BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783934();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 7104878;
  }

  else
  {
    (*(v9 + 32))(v14, v8, a2);
    (*(v9 + 16))(v12, v14, a2);
    v16 = sub_258783884();
    (*(v9 + 8))(v14, a2);
    return v16;
  }
}

uint64_t sub_258783510(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_258783764();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_258783754();
}