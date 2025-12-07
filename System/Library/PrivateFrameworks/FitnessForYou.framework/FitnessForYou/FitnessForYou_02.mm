uint64_t sub_20C328D2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C328DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou0bC14SummaryFeatureV14TaskIdentifier33_639753F80728DE6975B8961204DAAA87LLOyxq__G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_20C328E2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_20C328E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_20C328EB8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_20C329090(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 296);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C329164;

  return sub_20C3185AC(a1, (v1 + 48), v8, v1 + 304, v4, v5, v6, v7);
}

uint64_t sub_20C329164()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_20C32932C()
{
  result = qword_27C79E4E0;
  if (!qword_27C79E4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79E4D8, &qword_20C372728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E4E0);
  }

  return result;
}

uint64_t sub_20C3293C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4F0, &qword_20C372738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C32942C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E4F8;
  if (!qword_27C79E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E4F8);
  }

  return result;
}

uint64_t sub_20C329480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4F0, &qword_20C372738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C32952C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C3295C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
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

uint64_t sub_20C3295F8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

uint64_t sub_20C32962C()
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

uint64_t sub_20C329660()
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

uint64_t sub_20C329694()
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

uint64_t sub_20C3296E0()
{
  if (*v0)
  {
    return 0x7061547473616F74;
  }

  else
  {
    return 0x6977537473616F74;
  }
}

uint64_t sub_20C32971C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6977537473616F74 && a2 == 0xEB00000000646570;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7061547473616F74 && a2 == 0xEB00000000646570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

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

uint64_t sub_20C3297FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C329C88(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C329838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C329C88(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C329874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C329D30(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3298B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C329D30(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C3298EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C329CDC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C329928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C329CDC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ForYouToastAction.hashValue.getter()
{
  v1 = *v0;
  sub_20C36D314();
  MEMORY[0x20F2F7E60](v1);
  return sub_20C36D354();
}

uint64_t ForYouToastAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E508, &qword_20C372750);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E510, &qword_20C372758);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E518, &qword_20C372760);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C329C88(v13, v14, v15);
  v16 = sub_20C36D374();
  v19 = (v9 + 8);
  if (v12)
  {
    v28 = 1;
    sub_20C329CDC(v16, v17, v18);
    v20 = v24;
    sub_20C36D1B4();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_20C329D30(v16, v17, v18);
    sub_20C36D1B4();
    (*(v22 + 8))(v7, v23);
  }

  return (*v19)(v11, v8);
}

unint64_t sub_20C329C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E520;
  if (!qword_27C79E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E520);
  }

  return result;
}

unint64_t sub_20C329CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E528;
  if (!qword_27C79E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E528);
  }

  return result;
}

unint64_t sub_20C329D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E530;
  if (!qword_27C79E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E530);
  }

  return result;
}

uint64_t ForYouToastAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E538, &qword_20C372768);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E540, &qword_20C372770);
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E548, &unk_20C372778);
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C329C88(v13, v14, v15);
  v16 = v36;
  sub_20C36D364();
  if (v16)
  {
    goto LABEL_7;
  }

  v30 = v7;
  v36 = a1;
  v18 = v34;
  v17 = v35;
  v19 = v12;
  v20 = sub_20C36D194();
  if (*(v20 + 16) != 1)
  {
    v24 = sub_20C36D064();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
    *v26 = &type metadata for ForYouToastAction;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v18 + 8))(v19, v10);
    swift_unknownObjectRelease();
    a1 = v36;
LABEL_7:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v29 = v20;
  v23 = *(v20 + 32);
  if (v23)
  {
    v38 = 1;
    sub_20C329CDC(v20, v21, v22);
    sub_20C36D0F4();
    (*(v33 + 8))(v6, v32);
  }

  else
  {
    v37 = 0;
    sub_20C329D30(v20, v21, v22);
    sub_20C36D0F4();
    (*(v31 + 8))(v9, v30);
  }

  (*(v18 + 8))(v19, v10);
  swift_unknownObjectRelease();
  *v17 = v23;
  v27 = v36;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

unint64_t sub_20C32A1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E550;
  if (!qword_27C79E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E550);
  }

  return result;
}

unint64_t sub_20C32A2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E558;
  if (!qword_27C79E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E558);
  }

  return result;
}

unint64_t sub_20C32A2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E560;
  if (!qword_27C79E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E560);
  }

  return result;
}

unint64_t sub_20C32A354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E568;
  if (!qword_27C79E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E568);
  }

  return result;
}

unint64_t sub_20C32A3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E570;
  if (!qword_27C79E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E570);
  }

  return result;
}

unint64_t sub_20C32A404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E578;
  if (!qword_27C79E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E578);
  }

  return result;
}

unint64_t sub_20C32A45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E580;
  if (!qword_27C79E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E580);
  }

  return result;
}

unint64_t sub_20C32A4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E588;
  if (!qword_27C79E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E588);
  }

  return result;
}

uint64_t sub_20C32A518()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_20C32A55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377E50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

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

uint64_t sub_20C32A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32BD14(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32A684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32BD14(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C32A6C0()
{
  if (*v0)
  {
    return 0x657669746361;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_20C32A6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

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

uint64_t sub_20C32A7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32BC5C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32A804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32BC5C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C32A840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32BD68(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32A87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32BD68(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t PlanMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E590, &qword_20C372B00);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v35 - v3;
  v4 = sub_20C36C124();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E598, &qword_20C372B08);
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v35 - v7;
  v9 = type metadata accessor for PlanMetadata(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5A0, &unk_20C372B10);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32BC5C(v16, v17, v18);
  sub_20C36D374();
  sub_20C32BCB0(v42, v11);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  v20 = (*(*(v19 - 8) + 48))(v11, 1, v19);
  if (v20 == 1)
  {
    v45 = 0;
    sub_20C32BD68(v20, v21, v22);
    sub_20C36D1B4();
    (*(v6 + 8))(v8, v36);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v42 = v13;
    v24 = v37;
    v25 = v38;
    v26 = (*(v37 + 32))(v43, v11, v38);
    v48 = 1;
    sub_20C32BD14(v26, v27, v28);
    v29 = v39;
    sub_20C36D1B4();
    v47 = 0;
    sub_20C32BE04(&qword_27C79E258, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v30 = v41;
    v31 = v44;
    sub_20C36D234();
    v32 = v24;
    v33 = v12;
    if (v31)
    {
      (*(v40 + 8))(v29, v30);
      (*(v32 + 8))(v43, v25);
    }

    else
    {
      v34 = v43;
      v46 = 1;
      sub_20C36D204();
      (*(v40 + 8))(v29, v30);
      (*(v32 + 8))(v34, v25);
    }

    return (*(v42 + 8))(v15, v33);
  }
}

uint64_t PlanMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5B0, &qword_20C372B20);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v57 = &v50 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5B8, &qword_20C372B28);
  v56 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5C0, &unk_20C372B30);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for PlanMetadata(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = a1[3];
  v61 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_20C32BC5C(v18, v19, v20);
  v21 = v60;
  sub_20C36D364();
  if (!v21)
  {
    v60 = v11;
    v23 = v56;
    v22 = v57;
    v51 = v16;
    v52 = v14;
    v24 = v58;
    v25 = sub_20C36D194();
    v26 = (2 * *(v25 + 16)) | 1;
    v62 = v25;
    v63 = v25 + 32;
    v64 = 0;
    v65 = v26;
    v27 = sub_20C32A508();
    v30 = v10;
    if (v27 == 2 || v64 != v65 >> 1)
    {
      v35 = sub_20C36D064();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
      *v37 = v60;
      sub_20C36D104();
      sub_20C36D054();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v59 + 8))(v10, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27)
      {
        v66 = 1;
        sub_20C32BD14(v27, v28, v29);
        v31 = v22;
        sub_20C36D0F4();
        v32 = v24;
        sub_20C36C124();
        v66 = 0;
        sub_20C32BE04(&qword_27C79E268, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
        v33 = v54;
        sub_20C36D184();
        v34 = v59;
        v66 = 1;
        v40 = sub_20C36D154();
        v60 = 0;
        v41 = v55;
        v42 = v40;
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
        v44 = v41;
        v45 = v30;
        v46 = *(v43 + 48);
        (*(v44 + 8))(v31, v33);
        (*(v34 + 8))(v45, v8);
        swift_unknownObjectRelease();
        v47 = v52;
        v52[v46] = v42 & 1;
        (*(*(v43 - 8) + 56))(v47, 0, 1, v43);
        v48 = v47;
        v49 = v51;
        sub_20C2FB2D8(v48, v51);
      }

      else
      {
        v66 = 0;
        sub_20C32BD68(v27, v28, v29);
        sub_20C36D0F4();
        v32 = v24;
        (*(v23 + 8))(v7, v53);
        (*(v59 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
        v49 = v51;
        (*(*(v39 - 8) + 56))(v51, 1, 1, v39);
      }

      sub_20C2FB2D8(v49, v32);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t PlanMetadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C36C124();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlanMetadata(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C32BCB0(v2, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    return MEMORY[0x20F2F7E60](0);
  }

  (*(v4 + 32))(v6, v9, v3);
  MEMORY[0x20F2F7E60](1);
  sub_20C32BE04(&qword_27C79D7B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20C36CD34();
  sub_20C36D334();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PlanMetadata.hashValue.getter()
{
  v1 = v0;
  v2 = sub_20C36C124();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlanMetadata(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C36D314();
  sub_20C32BCB0(v1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    MEMORY[0x20F2F7E60](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2F7E60](1);
    sub_20C32BE04(&qword_27C79D7B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_20C36CD34();
    sub_20C36D334();
    (*(v3 + 8))(v5, v2);
  }

  return sub_20C36D354();
}

uint64_t sub_20C32B940(uint64_t a1)
{
  sub_20C36D314();
  PlanMetadata.hash(into:)(v2);
  return sub_20C36D354();
}

uint64_t _s13FitnessForYou12PlanMetadataO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C36C124();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PlanMetadata(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5E0, &qword_20C372F08);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24[-v13];
  v15 = &v24[*(v12 + 56) - v13];
  sub_20C32BCB0(a1, &v24[-v13]);
  sub_20C32BCB0(a2, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v14, 1, v16) == 1)
  {
    if (v17(v15, 1, v16) == 1)
    {
      sub_20C32C1CC(v14);
      return 1;
    }

    goto LABEL_6;
  }

  sub_20C32BCB0(v14, v10);
  v19 = *(v16 + 48);
  v25 = v10[v19];
  if (v17(v15, 1, v16) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_20C32C164(v14);
    return 0;
  }

  v20 = v15[v19];
  (*(v5 + 32))(v7, v15, v4);
  v21 = sub_20C36C114();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  if (v21)
  {
    v23 = v25 ^ v20;
    sub_20C32C1CC(v14);
    return v23 ^ 1u;
  }

  sub_20C32C1CC(v14);
  return 0;
}

unint64_t sub_20C32BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9018;
  if (!qword_2810E9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9018);
  }

  return result;
}

uint64_t sub_20C32BCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C32BD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E5A8;
  if (!qword_27C79E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E5A8);
  }

  return result;
}

unint64_t sub_20C32BD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9000;
  if (!qword_2810E9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9000);
  }

  return result;
}

uint64_t sub_20C32BE04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20C32BEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E5D0;
  if (!qword_27C79E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E5D0);
  }

  return result;
}

unint64_t sub_20C32BF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E5D8;
  if (!qword_27C79E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E5D8);
  }

  return result;
}

unint64_t sub_20C32BF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8FF0;
  if (!qword_2810E8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8FF0);
  }

  return result;
}

unint64_t sub_20C32BFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8FF8;
  if (!qword_2810E8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8FF8);
  }

  return result;
}

unint64_t sub_20C32C008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8FE0;
  if (!qword_2810E8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8FE0);
  }

  return result;
}

unint64_t sub_20C32C060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8FE8;
  if (!qword_2810E8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8FE8);
  }

  return result;
}

unint64_t sub_20C32C0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9008;
  if (!qword_2810E9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9008);
  }

  return result;
}

unint64_t sub_20C32C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9010;
  if (!qword_2810E9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9010);
  }

  return result;
}

uint64_t sub_20C32C164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5E0, &qword_20C372F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C32C1CC(uint64_t a1)
{
  v2 = type metadata accessor for PlanMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C32C23C()
{
  v1 = 0x726F727265;
  v2 = 0x676E69636E7973;
  if (*v0 != 2)
  {
    v2 = 0x616C696176616E75;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_20C32C2C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C32CBF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C32C2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32C97C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32C324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32C97C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C32C360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32CACC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32C39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32CACC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C32C3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32CA78(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32C414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32CA78(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C32C450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32CA24(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32C48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32CA24(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C32C4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32C9D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32C504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32C9D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ForYouSummaryLoadFailureReason.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5E8, &qword_20C372F10);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5F0, &qword_20C372F18);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v29 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5F8, &qword_20C372F20);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E600, &qword_20C372F28);
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E608, &qword_20C372F30);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32C97C(v17, v18, v19);
  v20 = sub_20C36D374();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_20C32CA24(v20, v21, v22);
      v9 = v29;
      sub_20C36D1B4();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_20C32C9D0(v20, v21, v22);
      v9 = v32;
      sub_20C36D1B4();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_20C32CA78(v20, v21, v22);
    sub_20C36D1B4();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v9, v23);
    return (*(v14 + 8))(v16, v13);
  }

  v36 = 0;
  sub_20C32CACC(v20, v21, v22);
  sub_20C36D1B4();
  (*(v26 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_20C32C97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E610;
  if (!qword_27C79E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E610);
  }

  return result;
}

unint64_t sub_20C32C9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E618;
  if (!qword_27C79E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E618);
  }

  return result;
}

unint64_t sub_20C32CA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E620;
  if (!qword_27C79E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E620);
  }

  return result;
}

unint64_t sub_20C32CA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E628;
  if (!qword_27C79E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E628);
  }

  return result;
}

unint64_t sub_20C32CACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E630;
  if (!qword_27C79E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E630);
  }

  return result;
}

void *sub_20C32CB38@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C32CD5C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t ForYouSummaryLoadFailureReason.hashValue.getter(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C32CBF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C377E70 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69636E7973 && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

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

void *sub_20C32CD5C(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E698, &qword_20C373420);
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v36 - v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6A0, &qword_20C373428);
  v41 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6A8, &qword_20C373430);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6B0, &qword_20C373438);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6B8, &unk_20C373440);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = a1[3];
  v49 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C32C97C(v15, v16, v17);
  v18 = v48;
  sub_20C36D364();
  if (v18)
  {
    goto LABEL_11;
  }

  v19 = v9;
  v37 = v7;
  v38 = 0;
  v20 = v46;
  v21 = v47;
  v48 = v11;
  v22 = v13;
  v23 = sub_20C36D194();
  v24 = (2 * *(v23 + 16)) | 1;
  v50 = v23;
  v51 = v23 + 32;
  v52 = 0;
  v53 = v24;
  v25 = sub_20C32A50C();
  if (v25 != 4 && v52 == v53 >> 1)
  {
    v11 = v25;
    if (v25 <= 1u)
    {
      if (v25)
      {
        v54 = 1;
        sub_20C32CA78(v25, v26, v27);
        v34 = v38;
        sub_20C36D0F4();
        if (!v34)
        {
          (*(v42 + 8))(v6, v43);
          goto LABEL_18;
        }
      }

      else
      {
        v54 = 0;
        sub_20C32CACC(v25, v26, v27);
        v28 = v38;
        sub_20C36D0F4();
        if (!v28)
        {
          (*(v40 + 8))(v19, v37);
LABEL_18:
          (v48[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v49);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v32 = v48;
    if (v25 == 2)
    {
      v54 = 2;
      sub_20C32CA24(v25, v26, v27);
      v33 = v38;
      sub_20C36D0F4();
      if (!v33)
      {
        (*(v41 + 8))(v20, v45);
LABEL_22:
        (v32[1])(v22, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v54 = 3;
      sub_20C32C9D0(v25, v26, v27);
      v35 = v38;
      sub_20C36D0F4();
      if (!v35)
      {
        (*(v39 + 8))(v21, v44);
        goto LABEL_22;
      }
    }

    (v32[1])(v22, v10);
    goto LABEL_10;
  }

  v29 = sub_20C36D064();
  swift_allocError();
  v11 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
  *v11 = &type metadata for ForYouSummaryLoadFailureReason;
  sub_20C36D104();
  sub_20C36D054();
  (*(*(v29 - 8) + 104))(v11, *MEMORY[0x277D84160], v29);
  swift_willThrow();
LABEL_9:
  (v48[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v11;
}

unint64_t sub_20C32D3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E638;
  if (!qword_27C79E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E638);
  }

  return result;
}

unint64_t sub_20C32D458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E640;
  if (!qword_27C79E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E640);
  }

  return result;
}

unint64_t sub_20C32D4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E648;
  if (!qword_27C79E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E648);
  }

  return result;
}

unint64_t sub_20C32D508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E650;
  if (!qword_27C79E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E650);
  }

  return result;
}

unint64_t sub_20C32D560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E658;
  if (!qword_27C79E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E658);
  }

  return result;
}

unint64_t sub_20C32D5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E660;
  if (!qword_27C79E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E660);
  }

  return result;
}

unint64_t sub_20C32D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E668;
  if (!qword_27C79E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E668);
  }

  return result;
}

unint64_t sub_20C32D668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E670;
  if (!qword_27C79E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E670);
  }

  return result;
}

unint64_t sub_20C32D6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E678;
  if (!qword_27C79E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E678);
  }

  return result;
}

unint64_t sub_20C32D718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E680;
  if (!qword_27C79E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E680);
  }

  return result;
}

unint64_t sub_20C32D770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E688;
  if (!qword_27C79E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E688);
  }

  return result;
}

unint64_t sub_20C32D7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E690;
  if (!qword_27C79E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E690);
  }

  return result;
}

uint64_t sub_20C32D82C()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_20C32D860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

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

uint64_t sub_20C32D934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32DD58(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32DD58(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C32D9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32DE00(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32D9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32DE00(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C32DA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32DDAC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32DA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32DDAC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t BrowsingIdentity.encode(to:)(void *a1, int a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6C0, &qword_20C373450);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6C8, &qword_20C373458);
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6D0, &qword_20C373460);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32DD58(v13, v14, v15);
  v16 = sub_20C36D374();
  v19 = (v10 + 8);
  if (v24)
  {
    v26 = 1;
    sub_20C32DDAC(v16, v17, v18);
    sub_20C36D1B4();
    (*(v22 + 8))(v5, v23);
  }

  else
  {
    v25 = 0;
    sub_20C32DE00(v16, v17, v18);
    sub_20C36D1B4();
    (*(v6 + 8))(v8, v21);
  }

  return (*v19)(v12, v9);
}

unint64_t sub_20C32DD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E6D8;
  if (!qword_27C79E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6D8);
  }

  return result;
}

unint64_t sub_20C32DDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E6E0;
  if (!qword_27C79E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6E0);
  }

  return result;
}

unint64_t sub_20C32DE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E6E8;
  if (!qword_27C79E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6E8);
  }

  return result;
}

uint64_t sub_20C32DE70@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C32DF2C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t BrowsingIdentity.hashValue.getter(char a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1 & 1);
  return sub_20C36D354();
}

uint64_t sub_20C32DF2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E730, &qword_20C3737C0);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E738, &qword_20C3737C8);
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E740, &unk_20C3737D0);
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32DD58(v11, v12, v13);
  v14 = v31;
  sub_20C36D364();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v15 = v29;
  v16 = sub_20C36D194();
  v17 = (2 * *(v16 + 16)) | 1;
  v32 = v16;
  v33 = v16 + 32;
  v34 = 0;
  v35 = v17;
  v18 = sub_20C32A508();
  if (v18 == 2 || v34 != v35 >> 1)
  {
    v22 = sub_20C36D064();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
    *v24 = &type metadata for BrowsingIdentity;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v30 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v18;
  if (v18)
  {
    v37 = 1;
    sub_20C32DDAC(v18, v19, v20);
    sub_20C36D0F4();
    v21 = v30;
    (*(v28 + 8))(v4, v15);
  }

  else
  {
    v37 = 0;
    sub_20C32DE00(v18, v19, v20);
    sub_20C36D0F4();
    v21 = v30;
    (*(v27 + 8))(v7, v5);
  }

  (*(v21 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v36 & 1;
}

unint64_t sub_20C32E3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E6F0;
  if (!qword_27C79E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6F0);
  }

  return result;
}

unint64_t sub_20C32E484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E6F8;
  if (!qword_27C79E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6F8);
  }

  return result;
}

unint64_t sub_20C32E4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E700;
  if (!qword_27C79E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E700);
  }

  return result;
}

unint64_t sub_20C32E534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E708;
  if (!qword_27C79E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E708);
  }

  return result;
}

unint64_t sub_20C32E58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E710;
  if (!qword_27C79E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E710);
  }

  return result;
}

unint64_t sub_20C32E5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E718;
  if (!qword_27C79E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E718);
  }

  return result;
}

unint64_t sub_20C32E63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E720;
  if (!qword_27C79E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E720);
  }

  return result;
}

unint64_t sub_20C32E694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E728;
  if (!qword_27C79E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E728);
  }

  return result;
}

uint64_t CanvasSectionDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CanvasSectionDescriptor.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CanvasSectionDescriptor.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CanvasSectionDescriptor.detail.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CanvasSectionDescriptor.recoId.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void __swiftcall CanvasSectionDescriptor.init(identifier:title:subtitle:subtitleType:detail:items:displayStyle:recoId:)(FitnessForYou::CanvasSectionDescriptor *__return_ptr retstr, Swift::String identifier, Swift::String_optional title, Swift::String_optional subtitle, FitnessForYou::SubtitleTextType subtitleType, Swift::String_optional detail, Swift::OpaquePointer items, FitnessForYou::DisplayStyle displayStyle, Swift::String recoId)
{
  retstr->identifier = identifier;
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->subtitleType = subtitleType & 1;
  retstr->detail = detail;
  retstr->items = items;
  retstr->displayStyle = displayStyle;
  retstr->recoId = recoId;
}

uint64_t sub_20C32E824()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x5379616C70736964;
  if (v1 != 6)
  {
    v3 = 0x64496F636572;
  }

  v4 = 0x6C6961746564;
  if (v1 != 4)
  {
    v4 = 0x736D657469;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = 0x656C746974627573;
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

uint64_t sub_20C32E920@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C32FCA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C32E948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32ED00(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C32E984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C32ED00(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CanvasSectionDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E748, &unk_20C3737E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = *(v1 + 16);
  v37 = *(v1 + 24);
  v38 = v7;
  v8 = *(v1 + 32);
  v35 = *(v1 + 40);
  v36 = v8;
  v41 = *(v1 + 48);
  v9 = *(v1 + 56);
  v33 = *(v1 + 64);
  v34 = v9;
  v10 = *(v1 + 72);
  v30 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v31 = v10;
  v32 = v11;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  v17 = __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_20C32ED00(v17, v18, v19);
  sub_20C36D374();
  LOBYTE(v40) = 0;
  v20 = v39;
  sub_20C36D1F4();
  if (v20)
  {
    return (*(v4 + 8))(v6, v16);
  }

  v21 = v41;
  v39 = v12;
  LOBYTE(v40) = 1;
  sub_20C36D1C4();
  LOBYTE(v40) = 2;
  v22 = sub_20C36D1C4();
  LOBYTE(v40) = v21;
  v42 = 3;
  sub_20C32ED54(v22, v23, v24);
  sub_20C36D234();
  LOBYTE(v40) = 4;
  sub_20C36D1C4();
  v40 = v31;
  v42 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D8, &qword_20C372728);
  sub_20C32F42C(&qword_2810E8C10, &qword_2810E8F00, &protocol conformance descriptor for CanvasPlaceholder, MEMORY[0x277D83948]);
  v25 = sub_20C36D234();
  LOBYTE(v40) = v30;
  v42 = 6;
  sub_20C2FBA48(v25, v26, v27);
  sub_20C36D234();
  LOBYTE(v40) = 7;
  sub_20C36D1F4();
  return (*(v4 + 8))(0, v16);
}

unint64_t sub_20C32ED00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8D08;
  if (!qword_2810E8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D08);
  }

  return result;
}

unint64_t sub_20C32ED54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8F30;
  if (!qword_2810E8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8F30);
  }

  return result;
}

uint64_t CanvasSectionDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E750, &qword_20C3737F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32ED00(v9, v10, v11);
  sub_20C36D364();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v60[0]) = 0;
  v13 = sub_20C36D144();
  v52 = v14;
  LOBYTE(v60[0]) = 1;
  v15 = sub_20C36D114();
  v51 = v16;
  v49 = v15;
  LOBYTE(v60[0]) = 2;
  v48 = sub_20C36D114();
  v50 = v17;
  LOBYTE(v53) = 3;
  sub_20C32F3D8(v48, v17, v18);
  sub_20C36D184();
  v19 = LOBYTE(v60[0]);
  LOBYTE(v60[0]) = 4;
  v20 = sub_20C36D114();
  v46 = v21;
  v44 = v20;
  v68 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D8, &qword_20C372728);
  LOBYTE(v53) = 5;
  sub_20C32F42C(&qword_27C79E760, &qword_27C79E768, &protocol conformance descriptor for CanvasPlaceholder, MEMORY[0x277D83978]);
  v45 = 0;
  v22 = sub_20C36D184();
  v47 = 0;
  v43 = v60[0];
  LOBYTE(v53) = 6;
  sub_20C2FC0B0(v22, v23, v24);
  v25 = v47;
  sub_20C36D184();
  if (v25)
  {
    v47 = v25;
    (*(v6 + 8))(v8, v5);
    v30 = v45;
    __swift_destroy_boxed_opaque_existential_1(a1);

    if (!v30)
    {
    }
  }

  else
  {
    v26 = v46;
    v27 = LOBYTE(v60[0]);
    v69 = 7;
    v28 = sub_20C36D144();
    v42 = v29;
    v47 = 0;
    v31 = v28;
    (*(v6 + 8))(v8, v5);
    *&v53 = v13;
    *(&v53 + 1) = v52;
    *&v54 = v49;
    v32 = v51;
    *(&v54 + 1) = v51;
    *&v55 = v48;
    v33 = v50;
    *(&v55 + 1) = v50;
    LOBYTE(v56) = v68;
    *(&v56 + 1) = v44;
    *&v57 = v26;
    v34 = v27;
    v41 = v27;
    v35 = v43;
    *(&v57 + 1) = v43;
    LOBYTE(v58) = v34;
    v36 = v42;
    *(&v58 + 1) = v31;
    v59 = v42;
    *(a2 + 96) = v42;
    v37 = v58;
    *(a2 + 64) = v57;
    *(a2 + 80) = v37;
    v38 = v54;
    *a2 = v53;
    *(a2 + 16) = v38;
    v39 = v56;
    *(a2 + 32) = v55;
    *(a2 + 48) = v39;
    sub_20C329258(&v53, v60);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v60[0] = v13;
    v60[1] = v52;
    v60[2] = v49;
    v60[3] = v32;
    v60[4] = v48;
    v60[5] = v33;
    v61 = v68;
    v62 = v44;
    v63 = v26;
    v64 = v35;
    v65 = v41;
    v66 = v31;
    v67 = v36;
    return sub_20C3292B4(v60);
  }
}

unint64_t sub_20C32F3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E758;
  if (!qword_27C79E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E758);
  }

  return result;
}

uint64_t sub_20C32F42C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79E4D8, &qword_20C372728);
    sub_20C32F4B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C32F4B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CanvasPlaceholder(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CanvasSectionDescriptor.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  sub_20C36CDC4();
  if (v3)
  {
    sub_20C36D334();
    sub_20C36CDC4();
    if (v4)
    {
LABEL_3:
      sub_20C36D334();
      sub_20C36CDC4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_20C36D334();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_20C36D334();
LABEL_6:
  sub_20C36CDC4();

  sub_20C36D334();
  if (v5)
  {
    sub_20C36CDC4();
  }

  sub_20C303294(a1, v6);
  DisplayStyle.rawValue.getter(v7);
  sub_20C36CDC4();

  return sub_20C36CDC4();
}

uint64_t CanvasSectionDescriptor.hashValue.getter()
{
  sub_20C36D314();
  CanvasSectionDescriptor.hash(into:)(v1);
  return sub_20C36D354();
}

uint64_t sub_20C32F6F8()
{
  sub_20C36D314();
  CanvasSectionDescriptor.hash(into:)(v1);
  return sub_20C36D354();
}

uint64_t sub_20C32F73C(uint64_t a1)
{
  sub_20C36D314();
  CanvasSectionDescriptor.hash(into:)(v2);
  return sub_20C36D354();
}

uint64_t _s13FitnessForYou23CanvasSectionDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v34 = a1[8];
  v32 = a1[9];
  v28 = *(a1 + 80);
  v25 = a1[12];
  v26 = a1[11];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v29 = *(a2 + 56);
  v30 = a1[7];
  v33 = *(a2 + 64);
  v31 = *(a2 + 72);
  v27 = *(a2 + 80);
  v23 = *(a2 + 96);
  v24 = *(a2 + 88);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v2 != v7 || v4 != v8) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    v12 = 1954047348;
  }

  else
  {
    v12 = 0x657069636572;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v11)
  {
    v14 = 1954047348;
  }

  else
  {
    v14 = 0x657069636572;
  }

  if (v11)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v16 = sub_20C36D264();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v34)
  {
    if (!v33 || (v30 != v29 || v34 != v33) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  if ((sub_20C3324C0(v32, v31) & 1) == 0)
  {
    return 0;
  }

  v17 = DisplayStyle.rawValue.getter(v28);
  v19 = v18;
  if (v17 != DisplayStyle.rawValue.getter(v27) || v19 != v20)
  {
    v21 = sub_20C36D264();

    if (v21)
    {
      goto LABEL_46;
    }

    return 0;
  }

LABEL_46:
  if (v26 == v24 && v25 == v23)
  {
    return 1;
  }

  return sub_20C36D264();
}

unint64_t sub_20C32FA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E770;
  if (!qword_27C79E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E770);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20C32FAD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_20C32FB20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20C32FB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E778;
  if (!qword_27C79E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E778);
  }

  return result;
}

unint64_t sub_20C32FBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CF8;
  if (!qword_2810E8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CF8);
  }

  return result;
}

unint64_t sub_20C32FC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8D00;
  if (!qword_2810E8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D00);
  }

  return result;
}

uint64_t sub_20C32FCA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEC00000065707954 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64496F636572 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_20C36D264();

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

BOOL sub_20C32FF48(uint64_t a1, char a2)
{
  if (!a2)
  {
    return (a1 & 0xFE) == 0;
  }

  if (a2 == 1)
  {
    return 0;
  }

  return a1 == 0;
}

uint64_t sub_20C32FF7C()
{
  v1 = 0x726F727265;
  v2 = 0x676E69636E7973;
  if (*v0 != 2)
  {
    v2 = 0x616C696176616E75;
  }

  if (*v0)
  {
    v1 = 0x6F70707553746F6ELL;
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

uint64_t sub_20C330004@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C330E74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C33002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3307F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C330068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3307F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C3300A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C33099C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3300E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C33099C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C330138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C3301C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3308F4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C330204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3308F4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C330240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3308A0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C33027C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3308A0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C3302B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C33084C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3302F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C33084C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t LoadFailureReason.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v46 = a2;
  v45 = a4;
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E780, &qword_20C373A50);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E788, &qword_20C373A58);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v35 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E790, &qword_20C373A60);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E798, &qword_20C373A68);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E7A0, &qword_20C373A70);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3307F8(v19, v20, v21);
  v22 = sub_20C36D374();
  if (!v45)
  {
    v47 = 0;
    sub_20C33099C(v22, v23, v24);
    sub_20C36D1B4();
    sub_20C36D1F4();
    (*(v41 + 8))(v14, v12);
    return (*(v16 + 8))(v18, v15);
  }

  if (v45 == 1)
  {
    v49 = 1;
    sub_20C3308F4(v22, v23, v24);
    v25 = sub_20C36D1B4();
    v48 = v46;
    sub_20C330948(v25, v26, v27);
    v28 = v43;
    sub_20C36D1E4();
    (*(v42 + 8))(v11, v28);
    return (*(v16 + 8))(v18, v15);
  }

  v30 = (v16 + 8);
  if (v46 | v44)
  {
    v51 = 3;
    sub_20C33084C(v22, v23, v24);
    v31 = v38;
    sub_20C36D1B4();
    v33 = v39;
    v32 = v40;
  }

  else
  {
    v50 = 2;
    sub_20C3308A0(v22, v23, v24);
    v31 = v35;
    sub_20C36D1B4();
    v33 = v36;
    v32 = v37;
  }

  (*(v33 + 8))(v31, v32);
  return (*v30)(v18, v15);
}

unint64_t sub_20C3307F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E48[0];
  if (!qword_2810E8E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E8E48);
  }

  return result;
}

unint64_t sub_20C33084C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E7A8;
  if (!qword_27C79E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7A8);
  }

  return result;
}

unint64_t sub_20C3308A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E7B0;
  if (!qword_27C79E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7B0);
  }

  return result;
}

unint64_t sub_20C3308F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E7B8;
  if (!qword_27C79E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7B8);
  }

  return result;
}

unint64_t sub_20C330948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E7C0;
  if (!qword_27C79E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7C0);
  }

  return result;
}

unint64_t sub_20C33099C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E30;
  if (!qword_2810E8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E30);
  }

  return result;
}

uint64_t LoadFailureReason.init(from:)(void *a1)
{
  result = sub_20C330FDC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_20C330A14@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_20C330FDC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t LoadFailureReason.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x20F2F7E60](1, a2, a3);
      if (v4 == 4)
      {
        return sub_20C36D334();
      }

      sub_20C36D334();
      v6 = v4;
    }

    else if (a2 | a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    return MEMORY[0x20F2F7E60](v6);
  }

  else
  {
    MEMORY[0x20F2F7E60](0);

    return sub_20C36CDC4();
  }
}

uint64_t LoadFailureReason.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_20C36D314();
  if (!a3)
  {
    MEMORY[0x20F2F7E60](0);
    sub_20C36CDC4();
    return sub_20C36D354();
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_10;
  }

  MEMORY[0x20F2F7E60](1);
  if (a1 != 4)
  {
    sub_20C36D334();
    v6 = a1;
LABEL_10:
    MEMORY[0x20F2F7E60](v6);
    return sub_20C36D354();
  }

  sub_20C36D334();
  return sub_20C36D354();
}

uint64_t sub_20C330C00(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x20F2F7E60](1);
      if (v2 == 4)
      {
        return sub_20C36D334();
      }

      sub_20C36D334();
      v4 = v2;
    }

    else if (*v1 == 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    return MEMORY[0x20F2F7E60](v4);
  }

  else
  {
    MEMORY[0x20F2F7E60](0);

    return sub_20C36CDC4();
  }
}

uint64_t sub_20C330CBC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_20C36D314();
  if (!v4)
  {
    MEMORY[0x20F2F7E60](0);
    sub_20C36CDC4();
    return sub_20C36D354();
  }

  if (v4 != 1)
  {
    if (v2 | v3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    goto LABEL_10;
  }

  MEMORY[0x20F2F7E60](1);
  if (v2 != 4)
  {
    sub_20C36D334();
    v5 = v2;
LABEL_10:
    MEMORY[0x20F2F7E60](v5);
    return sub_20C36D354();
  }

  sub_20C36D334();
  return sub_20C36D354();
}

uint64_t _s13FitnessForYou17LoadFailureReasonO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == 4)
        {
          if (a4 == 4)
          {
            return 1;
          }
        }

        else if (a4 != 4 && a4 == a1)
        {
          return 1;
        }
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_20C36D264();
  }
}

uint64_t sub_20C330E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69636E7973 && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

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

uint64_t sub_20C330FDC(void *a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E7E8, &qword_20C374080);
  v58 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v57 = &v47 - v2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E7F0, &qword_20C374088);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E7F8, &qword_20C374090);
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E800, &qword_20C374098);
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E808, &unk_20C3740A0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = a1[3];
  v60 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_20C3307F8(v16, v17, v18);
  v19 = v59;
  sub_20C36D364();
  if (!v19)
  {
    v47 = v8;
    v48 = v10;
    v21 = v56;
    v20 = v57;
    v49 = 0;
    v22 = v58;
    v59 = v12;
    v23 = sub_20C36D194();
    v24 = (2 * *(v23 + 16)) | 1;
    v61 = v23;
    v62 = v23 + 32;
    v63 = 0;
    v64 = v24;
    v25 = sub_20C32A50C();
    v28 = v11;
    if (v25 == 4 || v63 != v64 >> 1)
    {
      v32 = sub_20C36D064();
      swift_allocError();
      v33 = v28;
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
      v16 = v14;
      *v35 = &type metadata for LoadFailureReason;
      sub_20C36D104();
      sub_20C36D054();
      (*(*(v32 - 8) + 104))(v35, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v59 + 8))(v14, v33);
      goto LABEL_9;
    }

    if (v25 <= 1u)
    {
      if (v25)
      {
        v65 = 1;
        sub_20C3308F4(v25, v26, v27);
        v16 = v14;
        v39 = v49;
        v40 = sub_20C36D0F4();
        if (!v39)
        {
          sub_20C331CB4(v40, v41, v42);
          v45 = v54;
          sub_20C36D134();
          v46 = v59;
          (*(v55 + 8))(v7, v45);
          (*(v46 + 8))(v14, v28);
          swift_unknownObjectRelease();
          v16 = v65;
          goto LABEL_10;
        }
      }

      else
      {
        v65 = 0;
        sub_20C33099C(v25, v26, v27);
        v30 = v48;
        v29 = v49;
        v16 = v14;
        sub_20C36D0F4();
        if (!v29)
        {
          v31 = v47;
          v16 = sub_20C36D144();
          (*(v50 + 8))(v30, v31);
          (*(v59 + 8))(v14, v11);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      (*(v59 + 8))(v14, v11);
LABEL_9:
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    if (v25 == 2)
    {
      v65 = 2;
      sub_20C3308A0(v25, v26, v27);
      v16 = v14;
      v37 = v49;
      sub_20C36D0F4();
      v38 = v59;
      if (!v37)
      {
        (*(v51 + 8))(v21, v53);
        (*(v38 + 8))(v14, v28);
        swift_unknownObjectRelease();
        v16 = 0;
        goto LABEL_10;
      }

      (*(v59 + 8))(v14, v28);
      goto LABEL_9;
    }

    v65 = 3;
    sub_20C33084C(v25, v26, v27);
    v43 = v49;
    sub_20C36D0F4();
    v44 = v59;
    if (v43)
    {
      v16 = v59 + 8;
      (*(v59 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v22 + 8))(v20, v52);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 1;
    }
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v60);
  return v16;
}

unint64_t sub_20C331788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E7C8;
  if (!qword_27C79E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7C8);
  }

  return result;
}

unint64_t sub_20C331840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E7D0;
  if (!qword_27C79E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7D0);
  }

  return result;
}

unint64_t sub_20C331898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E7D8;
  if (!qword_27C79E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7D8);
  }

  return result;
}

unint64_t sub_20C3318F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E7E0;
  if (!qword_27C79E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7E0);
  }

  return result;
}

unint64_t sub_20C331948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E20;
  if (!qword_2810E8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E20);
  }

  return result;
}

unint64_t sub_20C3319A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E28;
  if (!qword_2810E8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E28);
  }

  return result;
}

unint64_t sub_20C3319F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8DF0;
  if (!qword_2810E8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8DF0);
  }

  return result;
}

unint64_t sub_20C331A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8DF8;
  if (!qword_2810E8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8DF8);
  }

  return result;
}

unint64_t sub_20C331AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E10;
  if (!qword_2810E8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E10);
  }

  return result;
}

unint64_t sub_20C331B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E18;
  if (!qword_2810E8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E18);
  }

  return result;
}

unint64_t sub_20C331B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E00;
  if (!qword_2810E8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E00);
  }

  return result;
}

unint64_t sub_20C331BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E08;
  if (!qword_2810E8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E08);
  }

  return result;
}

unint64_t sub_20C331C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E38;
  if (!qword_2810E8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E38);
  }

  return result;
}

unint64_t sub_20C331C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8E40;
  if (!qword_2810E8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E40);
  }

  return result;
}

unint64_t sub_20C331CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E810;
  if (!qword_27C79E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E810);
  }

  return result;
}

uint64_t ForYouToastEnvironment.init(requestToastDismissal:navigateToForYou:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ForYouToastEnvironment.requestToastDismissal.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ForYouToastEnvironment.navigateToForYou.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_20C331D74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20C331DBC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_20C331E0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE500000000000000;
    v11 = 0x6169726F74696465;
    v12 = 0xEF736D6574692D6CLL;
    if (a1 != 2)
    {
      v11 = 0x7974696C61646F6DLL;
      v12 = 0xE800000000000000;
    }

    v13 = 0x6169726F74696465;
    if (a1)
    {
      v10 = 0xEF73647261632D6CLL;
    }

    else
    {
      v13 = 0x6472617761;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0x2D72656E69617274;
    v4 = 0xEC00000073706974;
    v5 = 0x72656E69617274;
    if (a1 != 7)
    {
      v5 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = 0xE700000000000000;
    }

    v6 = 0xE800000000000000;
    v7 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v7 = 0x6D6172676F7270;
      v6 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v14 = 0xE800000000000000;
        if (v8 != 0x7974696C61646F6DLL)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x6D6574692D6CLL;
    }

    else
    {
      if (!a2)
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x6472617761)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x647261632D6CLL;
    }

    v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
    if (v8 != 0x6169726F74696465)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE800000000000000;
      if (v8 != 0x7473696C79616C70)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6D6172676F7270)
      {
LABEL_52:
        v16 = sub_20C36D264();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xEC00000073706974;
    if (v8 != 0x2D72656E69617274)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    if (a2 == 7)
    {
      if (v8 != 0x72656E69617274)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x74756F6B726F77)
    {
      goto LABEL_52;
    }
  }

LABEL_50:
  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_20C3320F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v7 = *(a1 + v5 + 48);
      v8 = *(a1 + v5 + 56);
      v9 = *(a1 + v5 + 64);
      v10 = *(a2 + v5 + 48);
      v11 = *(a2 + v5 + 56);
      v12 = *(a2 + v5 + 64);
      v13 = *(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40);
      if (!v13 && (sub_20C36D264() & 1) == 0)
      {
        return 0;
      }

      if (v7 <= 3)
      {
        if (v7 <= 1)
        {
          if (!v7)
          {
            v14 = 0xE500000000000000;
            v15 = 0x6472617761;
            if (v10 > 3)
            {
              goto LABEL_39;
            }

            goto LABEL_31;
          }

          v15 = 0x6169726F74696465;
          v16 = 0x647261632D6CLL;
          goto LABEL_38;
        }

        if (v7 == 2)
        {
          v15 = 0x6169726F74696465;
          v16 = 0x6D6574692D6CLL;
LABEL_38:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
          if (v10 > 3)
          {
            goto LABEL_39;
          }

          goto LABEL_31;
        }

        v14 = 0xE800000000000000;
        v15 = 0x7974696C61646F6DLL;
        if (v10 > 3)
        {
          goto LABEL_39;
        }
      }

      else if (v7 <= 5)
      {
        if (v7 == 4)
        {
          v14 = 0xE800000000000000;
          v15 = 0x7473696C79616C70;
          if (v10 > 3)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v14 = 0xE700000000000000;
          v15 = 0x6D6172676F7270;
          if (v10 > 3)
          {
LABEL_39:
            if (v10 <= 5)
            {
              if (v10 == 4)
              {
                v17 = 0xE800000000000000;
                if (v15 != 0x7473696C79616C70)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v17 = 0xE700000000000000;
                if (v15 != 0x6D6172676F7270)
                {
                  goto LABEL_65;
                }
              }
            }

            else if (v10 == 6)
            {
              v17 = 0xEC00000073706974;
              if (v15 != 0x2D72656E69617274)
              {
                goto LABEL_65;
              }
            }

            else if (v10 == 7)
            {
              v17 = 0xE700000000000000;
              if (v15 != 0x72656E69617274)
              {
                goto LABEL_65;
              }
            }

            else
            {
              v17 = 0xE700000000000000;
              if (v15 != 0x74756F6B726F77)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_63;
          }
        }
      }

      else if (v7 == 6)
      {
        v15 = 0x2D72656E69617274;
        v14 = 0xEC00000073706974;
        if (v10 > 3)
        {
          goto LABEL_39;
        }
      }

      else if (v7 == 7)
      {
        v14 = 0xE700000000000000;
        v15 = 0x72656E69617274;
        if (v10 > 3)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v14 = 0xE700000000000000;
        v15 = 0x74756F6B726F77;
        if (v10 > 3)
        {
          goto LABEL_39;
        }
      }

LABEL_31:
      if (v10 > 1)
      {
        if (v10 != 2)
        {
          v17 = 0xE800000000000000;
          if (v15 != 0x7974696C61646F6DLL)
          {
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        v18 = 0x6D6574692D6CLL;
        goto LABEL_52;
      }

      if (v10)
      {
        v18 = 0x647261632D6CLL;
LABEL_52:
        v17 = v18 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v15 != 0x6169726F74696465)
        {
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      v17 = 0xE500000000000000;
      if (v15 != 0x6472617761)
      {
        goto LABEL_65;
      }

LABEL_63:
      if (v14 == v17)
      {

        goto LABEL_66;
      }

LABEL_65:
      v19 = sub_20C36D264();

      if ((v19 & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      if (v9)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == v11)
        {
          v6 = v12;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_20C3324C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasPlaceholder(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_20C333830(v13, v10);
        sub_20C333830(v14, v7);
        v16 = _s13FitnessForYou17CanvasPlaceholderV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_20C2FC16C(v7);
        sub_20C2FC16C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_20C332634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v14 = *i;
      v10 = *(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3);
      if (!v10 && (sub_20C36D264() & 1) == 0)
      {
        break;
      }

      v11 = v6 == v9 && v5 == v8;
      if (!v11 && (sub_20C36D264() & 1) == 0)
      {
        break;
      }

      v12 = sub_20C3320F4(v7, v14);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_20C33279C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    sub_20C329258(v31, v16);
    sub_20C329258(v37, v16);
    v14 = _s13FitnessForYou23CanvasSectionDescriptorV2eeoiySbAC_ACtFZ_0(&v24, &v17);
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_20C3292B4(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_20C3292B4(v45);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

uint64_t AwardCanvasSectionDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AwardCanvasSectionDescriptor.templateUniqueName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall AwardCanvasSectionDescriptor.init(identifier:templateUniqueName:items:)(FitnessForYou::AwardCanvasSectionDescriptor *__return_ptr retstr, Swift::String identifier, Swift::String templateUniqueName, Swift::OpaquePointer items)
{
  retstr->identifier = identifier;
  retstr->templateUniqueName = templateUniqueName;
  retstr->items = items;
}

unint64_t sub_20C332984()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x736D657469;
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

uint64_t sub_20C3329E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C33370C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C332A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C332CC4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C332A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C332CC4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t AwardCanvasSectionDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E818, "V[");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v15 = v1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C332CC4(v8, v9, v10);
  sub_20C36D374();
  v22 = 0;
  v11 = v18;
  sub_20C36D1F4();
  if (!v11)
  {
    v13 = v15;
    v21 = 1;
    sub_20C36D1F4();
    v19 = v13;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E820, &qword_20C374108);
    sub_20C333038(&qword_2810E8C08, sub_20C332D18, MEMORY[0x277D83948]);
    sub_20C36D234();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20C332CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CD8;
  if (!qword_2810E8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CD8);
  }

  return result;
}

unint64_t sub_20C332D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8D10;
  if (!qword_2810E8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D10);
  }

  return result;
}

uint64_t AwardCanvasSectionDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E828, &qword_20C374110);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C332CC4(v9, v10, v11);
  sub_20C36D364();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v12 = sub_20C36D144();
  v14 = v13;
  v21 = v12;
  v24 = 1;
  v19 = sub_20C36D144();
  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E820, &qword_20C374108);
  v23 = 2;
  sub_20C333038(&qword_27C79E830, sub_20C3330B0, MEMORY[0x277D83978]);
  sub_20C36D184();
  (*(v6 + 8))(v8, v5);
  v16 = v22;
  *a2 = v21;
  a2[1] = v14;
  v17 = v20;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_20C333038(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79E820, &qword_20C374108);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C3330B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E838;
  if (!qword_27C79E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E838);
  }

  return result;
}

uint64_t static AwardCanvasSectionDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  return sub_20C3320F4(v3, v7);
}

uint64_t AwardCanvasSectionDescriptor.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_20C36CDC4();
  sub_20C36CDC4();

  return sub_20C3030B8(a1, v3);
}

uint64_t AwardCanvasSectionDescriptor.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_20C36D314();
  sub_20C36CDC4();
  sub_20C36CDC4();
  sub_20C3030B8(v3, v1);
  return sub_20C36D354();
}

uint64_t sub_20C3332D0()
{
  v1 = *(v0 + 32);
  sub_20C36D314();
  sub_20C36CDC4();
  sub_20C36CDC4();
  sub_20C3030B8(v3, v1);
  return sub_20C36D354();
}

uint64_t sub_20C333350(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_20C36CDC4();
  sub_20C36CDC4();

  return sub_20C3030B8(a1, v3);
}

uint64_t sub_20C3333B0(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_20C36D314();
  sub_20C36CDC4();
  sub_20C36CDC4();
  sub_20C3030B8(v4, v2);
  return sub_20C36D354();
}

uint64_t sub_20C33342C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  return sub_20C3320F4(v3, v7);
}

unint64_t sub_20C3334EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E840;
  if (!qword_27C79E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E840);
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

uint64_t sub_20C333554(uint64_t a1, int a2)
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

uint64_t sub_20C33359C(uint64_t result, int a2, int a3)
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

unint64_t sub_20C333608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E848;
  if (!qword_27C79E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E848);
  }

  return result;
}

unint64_t sub_20C333660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CC8;
  if (!qword_2810E8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CC8);
  }

  return result;
}

unint64_t sub_20C3336B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CD0;
  if (!qword_2810E8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CD0);
  }

  return result;
}

uint64_t sub_20C33370C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C377E90 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

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

uint64_t sub_20C333830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasPlaceholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ForYouState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C36C144();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ForYouState.awardLoadStates.getter()
{
  type metadata accessor for ForYouState(0);
}

uint64_t type metadata accessor for ForYouState(uint64_t a1)
{
  result = qword_2810E92F8;
  if (!qword_2810E92F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ForYouState.awardLoadStates.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ForYouState(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ForYouState.isShowingCreatePlanAlert.setter(char a1)
{
  result = type metadata accessor for ForYouState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

__n128 ForYouState.layout.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ForYouState(0) + 40);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t ForYouState.loadState.getter()
{
  v1 = v0 + *(type metadata accessor for ForYouState(0) + 44);
  v2 = *v1;
  sub_20C3047D4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

void ForYouState.loadState.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for ForYouState(0) + 44);
  sub_20C3048B4(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24));
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

__n128 ForYouState.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ForYouState(0) + 48);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 57) = *(v3 + 57);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 ForYouState.metrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ForYouState(0) + 48);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t ForYouState.networkConditions.setter(char a1)
{
  result = type metadata accessor for ForYouState(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ForYouState.retryCount.setter(uint64_t a1)
{
  result = type metadata accessor for ForYouState(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ForYouState.sizeClass.setter(char a1)
{
  result = type metadata accessor for ForYouState(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t ForYouState.subscriptionState.setter(char a1)
{
  result = type metadata accessor for ForYouState(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

__n128 ForYouState.init(activeStorefrontLocale:awardLoadStates:hasExistingDescriptors:isFixedWidth:isInternalBuild:isShowingCreatePlanAlert:layout:loadState:metrics:maxRetryCount:networkConditions:shouldShowExploreButton:sizeClass:subscriptionState:supportsLocalDataSource:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, char a16, char a17, char a18, char a19)
{
  v25 = *(a7 + 4);
  v26 = *(a7 + 5);
  v27 = type metadata accessor for ForYouState(0);
  *(a9 + v27[15]) = 0;
  v28 = sub_20C36C144();
  v34 = a7[1];
  v35 = *a7;
  (*(*(v28 - 8) + 32))(a9, a1, v28);
  *(a9 + v27[5]) = a2;
  *(a9 + v27[6]) = a3;
  *(a9 + v27[7]) = a4;
  *(a9 + v27[8]) = a5;
  *(a9 + v27[9]) = a6;
  v29 = a9 + v27[10];
  *v29 = v35;
  *(v29 + 16) = v34;
  *(v29 + 32) = v25;
  *(v29 + 40) = v26;
  v30 = a9 + v27[11];
  *v30 = a8;
  *(v30 + 8) = a10;
  *(v30 + 16) = a11;
  *(v30 + 24) = a12;
  v31 = a9 + v27[12];
  v32 = *(a13 + 48);
  *(v31 + 32) = *(a13 + 32);
  *(v31 + 48) = v32;
  *(v31 + 57) = *(a13 + 57);
  result = *(a13 + 16);
  *v31 = *a13;
  *(v31 + 16) = result;
  *(a9 + v27[13]) = a14;
  *(a9 + v27[14]) = a15;
  *(a9 + v27[16]) = a16;
  *(a9 + v27[17]) = a17;
  *(a9 + v27[18]) = a18;
  *(a9 + v27[19]) = a19;
  return result;
}

unint64_t sub_20C3341E0(char a1)
{
  result = 0x616F4C6472617761;
  switch(a1)
  {
    case 1:
      return result;
    case 3:
      result = 0x5764657869467369;
      break;
    case 4:
      result = 0x6E7265746E497369;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x74756F79616CLL;
      break;
    case 7:
      result = 0x7461745364616F6CLL;
      break;
    case 8:
      result = 0x7363697274656DLL;
      break;
    case 9:
      result = 0x797274655278616DLL;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x756F437972746572;
      break;
    case 12:
    case 15:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x73616C43657A6973;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_20C3343C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C335DFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C3343F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3349A8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C334434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3349A8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ForYouState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E850, &qword_20C374340);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3349A8(v9, v10, v11);
  sub_20C36D374();
  LOBYTE(v42) = 0;
  sub_20C36C144();
  sub_20C307EC8(&qword_27C79DD70, MEMORY[0x277CC9790]);
  sub_20C36D234();
  if (!v2)
  {
    v12 = type metadata accessor for ForYouState(0);
    *&v42 = *(v3 + v12[5]);
    LOBYTE(v47) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E860, &qword_20C374348);
    sub_20C335294(&qword_27C79E868, sub_20C3349FC, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_20C36D234();
    LOBYTE(v42) = 2;
    sub_20C36D204();
    LOBYTE(v42) = 3;
    sub_20C36D204();
    LOBYTE(v42) = 4;
    sub_20C36D204();
    LOBYTE(v42) = 5;
    v13 = sub_20C36D204();
    v14 = (v3 + v12[10]);
    v15 = v14[1];
    v42 = *v14;
    v43 = v15;
    v44 = v14[2];
    LOBYTE(v47) = 6;
    sub_20C334A50(v13, v16, v17);
    v18 = sub_20C36D234();
    v21 = (v3 + v12[11]);
    v22 = *(v21 + 2);
    v23 = *(v21 + 24);
    v47 = *v21;
    v48 = v22;
    v49 = v23;
    v46 = 7;
    sub_20C304D60(v18, v19, v20);
    v24 = sub_20C36D234();
    v27 = (v3 + v12[12]);
    v28 = v27[3];
    v44 = v27[2];
    *v45 = v28;
    *&v45[9] = *(v27 + 57);
    v29 = v27[1];
    v42 = *v27;
    v43 = v29;
    v41 = 8;
    sub_20C334AA4(v24, v25, v26);
    sub_20C36D234();
    LOBYTE(v42) = 9;
    v30 = sub_20C36D224();
    LOBYTE(v42) = *(v3 + v12[14]);
    v41 = 10;
    sub_20C30A438(v30, v31, v32);
    sub_20C36D234();
    LOBYTE(v42) = 11;
    sub_20C36D224();
    LOBYTE(v42) = 12;
    v33 = sub_20C36D204();
    LOBYTE(v42) = *(v3 + v12[17]);
    v41 = 13;
    sub_20C312DF0(v33, v34, v35);
    v36 = sub_20C36D234();
    LOBYTE(v42) = *(v3 + v12[18]);
    v41 = 14;
    sub_20C30A294(v36, v37, v38);
    sub_20C36D234();
    LOBYTE(v42) = 15;
    sub_20C36D204();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20C3349A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E858;
  if (!qword_27C79E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E858);
  }

  return result;
}

unint64_t sub_20C3349FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E870;
  if (!qword_27C79E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E870);
  }

  return result;
}

unint64_t sub_20C334A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E878;
  if (!qword_27C79E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E878);
  }

  return result;
}

unint64_t sub_20C334AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E880;
  if (!qword_27C79E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E880);
  }

  return result;
}

void ForYouState.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = sub_20C36C144();
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E888, &qword_20C374350);
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v7 = v48 - v6;
  v8 = type metadata accessor for ForYouState(0);
  MEMORY[0x28223BE20](v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3349A8(v11, v12, v13);
  v55 = v7;
  sub_20C36D364();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v49 = v8;
    v50 = v10;
    v15 = v52;
    v14 = v53;
    LOBYTE(v57) = 0;
    sub_20C307EC8(&qword_27C79DD80, MEMORY[0x277CC97A8]);
    v16 = v54;
    sub_20C36D184();
    v17 = v50;
    (*(v14 + 32))(v50, v16, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E860, &qword_20C374348);
    v63 = 1;
    sub_20C335294(&qword_27C79E890, sub_20C335318, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_20C36D184();
    v54 = 0;
    v18 = v49;
    *&v17[v49[5]] = v57;
    LOBYTE(v57) = 2;
    v19 = sub_20C36D154();
    v48[1] = a1;
    v17[v18[6]] = v19 & 1;
    LOBYTE(v57) = 3;
    v17[v18[7]] = sub_20C36D154() & 1;
    LOBYTE(v57) = 4;
    v17[v18[8]] = sub_20C36D154() & 1;
    LOBYTE(v57) = 5;
    v20 = sub_20C36D154();
    v17[v18[9]] = v20 & 1;
    v63 = 6;
    sub_20C33536C(v20, v21, v22);
    v23 = sub_20C36D184();
    v24 = &v17[v18[10]];
    v25 = v58;
    *v24 = v57;
    *(v24 + 1) = v25;
    *(v24 + 2) = v59;
    v63 = 7;
    sub_20C305020(v23, v26, v27);
    v28 = sub_20C36D184();
    v29 = v58;
    v30 = BYTE8(v58);
    v31 = &v17[v18[11]];
    *v31 = v57;
    *(v31 + 2) = v29;
    v31[24] = v30;
    v63 = 8;
    sub_20C3353C0(v28, v32, v33);
    sub_20C36D184();
    v34 = &v17[v18[12]];
    v35 = v60[0];
    *(v34 + 2) = v59;
    *(v34 + 3) = v35;
    *(v34 + 57) = *(v60 + 9);
    v36 = v58;
    *v34 = v57;
    *(v34 + 1) = v36;
    v62 = 9;
    v37 = sub_20C36D174();
    *&v50[v49[13]] = v37;
    v61 = 10;
    sub_20C30D9B8(v37, v38, v39);
    sub_20C36D184();
    v50[v49[14]] = v62;
    v62 = 11;
    *&v50[v49[15]] = sub_20C36D174();
    v62 = 12;
    v40 = sub_20C36D154();
    v50[v49[16]] = v40 & 1;
    v61 = 13;
    sub_20C312D98(v40, v41, v42);
    v43 = sub_20C36D184();
    v50[v49[17]] = v62;
    v61 = 14;
    sub_20C30D964(v43, v44, v45);
    sub_20C36D184();
    v50[v49[18]] = v62;
    v62 = 15;
    v46 = sub_20C36D154();
    (*(v15 + 8))(v55, v56);
    v47 = v50;
    v50[v49[19]] = v46 & 1;
    sub_20C335414(v47, v51);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_20C335478(v47);
  }
}

uint64_t sub_20C335294(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79E860, &qword_20C374348);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C335318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E898;
  if (!qword_27C79E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E898);
  }

  return result;
}

unint64_t sub_20C33536C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E8A0;
  if (!qword_27C79E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8A0);
  }

  return result;
}

unint64_t sub_20C3353C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E8A8;
  if (!qword_27C79E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8A8);
  }

  return result;
}

uint64_t sub_20C335414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C335478(uint64_t a1)
{
  v2 = type metadata accessor for ForYouState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C335508(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    sub_20C336328(v17);
    v18 = sub_20C35A4F4(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
LABEL_42:
      sub_20C336338(v17);
      return 0;
    }

    v21 = *(*(v2 + 56) + 8 * v18);
    if (v21)
    {
      if (v21 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v17 < 2)
        {
          goto LABEL_42;
        }

        v22 = *(v21 + 16);
        if (v22 != *(v17 + 16))
        {
          goto LABEL_42;
        }

        if (v22)
        {
          v23 = v21 == v17;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v33 = v9;
          v34 = v5;
          v35 = v2;

          v24 = 0;
          v25 = (v21 + 64);
          v26 = (v17 + 64);
          v37 = v8;
          v38 = v21;
          v39 = v17;
          v36 = v22;
          while (v24 < *(v21 + 16))
          {
            if (v24 >= *(v17 + 16))
            {
              goto LABEL_46;
            }

            v27 = *(v25 - 2);
            v28 = *(v25 - 1);
            v29 = *v25;
            v30 = *(v26 - 2);
            v31 = *(v26 - 1);
            v40 = *v26;
            if ((*(v25 - 4) != *(v26 - 4) || *(v25 - 3) != *(v26 - 3)) && (v31 = *(v26 - 1), (sub_20C36D264() & 1) == 0) || (v27 != v30 || v28 != v31) && (sub_20C36D264() & 1) == 0 || (, , , , , , v32 = sub_20C3320F4(v29, v40), , , , , , result = , (v32 & 1) == 0))
            {
              sub_20C336338(v39);
              v17 = v38;
              goto LABEL_42;
            }

            ++v24;
            v25 += 5;
            v26 += 5;
            v8 = v37;
            v21 = v38;
            v17 = v39;
            if (v36 == v24)
            {
              sub_20C336338(v39);
              v2 = v35;
              v9 = v33;
              v5 = v34;
              goto LABEL_28;
            }
          }

          goto LABEL_45;
        }

        v21 = v17;
LABEL_28:
        result = sub_20C336338(v21);
      }
    }

    else if (v17)
    {
      goto LABEL_42;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t _s13FitnessForYou0bC5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x20F2F6C70]() & 1) != 0 && (v4 = type metadata accessor for ForYouState(0), (sub_20C335508(*(a1 + v4[5]), *(a2 + v4[5]))) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && (v5 = a1 + v4[10], v6 = *(v5 + 16), v23 = *v5, v24 = v6, v25 = *(v5 + 32), v7 = a2 + v4[10], v8 = *(v7 + 16), v19 = *v7, v20 = v8, v21 = *(v7 + 32), _s13FitnessForYou6LayoutV2eeoiySbAC_ACtFZ_0(&v23, &v19)) && (v9 = v4[11], (_s13FitnessForYou9LoadStateO2eeoiySbAC_ACtFZ_0(*(a1 + v9), *(a1 + v9 + 8), *(a1 + v9 + 16), *(a1 + v9 + 24), *(a2 + v9), *(a2 + v9 + 8), *(a2 + v9 + 16), *(a2 + v9 + 24))) && (v10 = a1 + v4[12], v11 = *(v10 + 57), v12 = *(v10 + 48), v25 = *(v10 + 32), v26[0] = v12, *(v26 + 9) = v11, v13 = *(v10 + 16), v23 = *v10, v24 = v13, v14 = a2 + v4[12], v15 = *(v14 + 48), v21 = *(v14 + 32), v22[0] = v15, *(v22 + 9) = *(v14 + 57), v16 = *(v14 + 16), v19 = *v14, v20 = v16, _s13FitnessForYou0bC17PerformanceMetricV2eeoiySbAC_ACtFZ_0(&v23, &v19)) && *(a1 + v4[13]) == *(a2 + v4[13]) && *(a1 + v4[14]) == *(a2 + v4[14]) && *(a1 + v4[15]) == *(a2 + v4[15]) && *(a1 + v4[16]) == *(a2 + v4[16]) && *(a1 + v4[17]) == *(a2 + v4[17]) && *(a1 + v4[18]) == *(a2 + v4[18]))
  {
    v17 = *(a1 + v4[19]) ^ *(a2 + v4[19]) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_20C335A54(uint64_t a1)
{
  sub_20C36C144();
  if (v1 <= 0x3F)
  {
    sub_20C335B44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C335B44()
{
  if (!qword_2810E8C28)
  {
    v0 = sub_20C36CD24();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E8C28);
    }
  }
}

uint64_t getEnumTagSinglePayload for ForYouState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C335CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E8B0;
  if (!qword_27C79E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8B0);
  }

  return result;
}

unint64_t sub_20C335D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E8B8;
  if (!qword_27C79E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8B8);
  }

  return result;
}

unint64_t sub_20C335DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E8C0;
  if (!qword_27C79E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8C0);
  }

  return result;
}

uint64_t sub_20C335DFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000020C377D80 == a2;
  if (v3 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616F4C6472617761 && a2 == 0xEF73657461745364 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C377EB0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5764657869467369 && a2 == 0xEC00000068746469 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377ED0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_20C36D264() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x797274655278616DLL && a2 == 0xED0000746E756F43 || (sub_20C36D264() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377DC0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL || (sub_20C36D264() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377EF0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073 || (sub_20C36D264() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377F10 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377F30 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

unint64_t sub_20C336328(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_20C336338(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_20C33634C()
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (*v0 != 2)
  {
    v2 = 0x676E696863746566;
  }

  if (*v0)
  {
    v1 = 0x6F5464656C696166;
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

uint64_t sub_20C3363C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C2FFDA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3363F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C336F9C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C33642C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C336F9C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C336468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C3364EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C337098(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C336528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C337098(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C336564()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x64496F636572;
  }
}

uint64_t sub_20C3365A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496F636572 && a2 == 0xE600000000000000;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C377CE0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

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

uint64_t sub_20C336680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C337044(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3366BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C337044(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C3366F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C336FF0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C336734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C336FF0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C336770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3370EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3367AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3370EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t LoadState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v49 = a5;
  v41 = a4;
  v42 = a2;
  v43 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8C8, &qword_20C374580);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8D0, &qword_20C374588);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8D8, &qword_20C374590);
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8E0, &qword_20C374598);
  v33 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8E8, &unk_20C3745A0);
  v44 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C336F9C(v19, v20, v21);
  v22 = sub_20C36D374();
  if (!v49)
  {
    LOBYTE(v46) = 1;
    sub_20C337098(v22, v23, v24);
    v29 = sub_20C36D1B4();
    v46 = v42;
    v47 = v43;
    v48 = v41;
    sub_20C30A750(v29, v30, v31);
    sub_20C36D234();
    (*(v37 + 8))(v12, v10);
    return (*(v44 + 8))(v18, v16);
  }

  if (v49 != 1)
  {
    if (v41 | v43 | v42)
    {
      LOBYTE(v46) = 3;
      sub_20C336FF0(v22, v23, v24);
      v32 = v34;
      sub_20C36D1B4();
      (*(v35 + 8))(v32, v36);
    }

    else
    {
      LOBYTE(v46) = 0;
      sub_20C3370EC(v22, v23, v24);
      sub_20C36D1B4();
      (*(v33 + 8))(v15, v13);
    }

    return (*(v44 + 8))(v18, v16);
  }

  LOBYTE(v46) = 2;
  sub_20C337044(v22, v23, v24);
  v25 = v38;
  sub_20C36D1B4();
  LOBYTE(v46) = 0;
  v26 = v40;
  v27 = v45;
  sub_20C36D1F4();
  if (!v27)
  {
    v46 = v41;
    v50 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
    sub_20C30DA0C(&qword_2810E8C00, sub_20C3029B0, MEMORY[0x277D83948]);
    sub_20C36D234();
  }

  (*(v39 + 8))(v25, v26);
  return (*(v44 + 8))(v18, v16);
}

uint64_t LoadState.init(from:)(void *a1)
{
  result = sub_20C337140(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_20C336D84@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_20C337140(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t _s13FitnessForYou9LoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    if (a8)
    {
      return 0;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        if (a7 != 1)
        {
          return 0;
        }

        if (a1 == 4)
        {
          if (a5 != 4)
          {
            return 0;
          }
        }

        else if (a5 == 4 || a5 != a1)
        {
          return 0;
        }
      }

      else if (a1 | a2)
      {
        if (a7 != 2 || a5 != 1 || a6)
        {
          return 0;
        }
      }

      else if (a7 != 2 || a6 | a5)
      {
        return 0;
      }
    }

    else if (a7 || (a1 != a5 || a2 != a6) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (a4 != 1)
  {
    if (a3 | a2 | a1)
    {
      if (a8 != 2 || a5 != 1 || a7 | a6)
      {
        return 0;
      }
    }

    else if (a8 != 2 || a6 | a5 | a7)
    {
      return 0;
    }

    return 1;
  }

  if (a8 != 1)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6 || (v8 = a3, v9 = a7, v10 = sub_20C36D264(), a3 = v8, a7 = v9, v11 = v10, result = 0, (v11 & 1) != 0))
  {

    return sub_20C33279C(a3, a7);
  }

  return result;
}

unint64_t sub_20C336F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E8F0;
  if (!qword_27C79E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8F0);
  }

  return result;
}

unint64_t sub_20C336FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E8F8;
  if (!qword_27C79E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8F8);
  }

  return result;
}

unint64_t sub_20C337044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E900;
  if (!qword_27C79E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E900);
  }

  return result;
}

unint64_t sub_20C337098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E908;
  if (!qword_27C79E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E908);
  }

  return result;
}

unint64_t sub_20C3370EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E910;
  if (!qword_27C79E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E910);
  }

  return result;
}

uint64_t sub_20C337140(void *a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E980, &qword_20C374BD0);
  v41 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v49 = &v39 - v2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E988, &qword_20C374BD8);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E990, &qword_20C374BE0);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E998, &qword_20C374BE8);
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9A0, &qword_20C374BF0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = a1[3];
  v51 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C336F9C(v15, v16, v17);
  v18 = v50;
  sub_20C36D364();
  if (v18)
  {
    goto LABEL_10;
  }

  v19 = v9;
  v39 = v7;
  v40 = 0;
  v20 = v48;
  v7 = v49;
  v21 = v47;
  v50 = v11;
  v22 = sub_20C36D194();
  v23 = (2 * *(v22 + 16)) | 1;
  v53 = v22;
  v54 = v22 + 32;
  v55 = 0;
  v56 = v23;
  v24 = sub_20C32A50C();
  if (v24 == 4 || v55 != v56 >> 1)
  {
    v7 = sub_20C36D064();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
    *v29 = &type metadata for LoadState;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v7 - 8) + 104))(v29, *MEMORY[0x277D84160], v7);
    swift_willThrow();
    (*(v50 + 8))(v13, v10);
    goto LABEL_9;
  }

  if (v24 > 1u)
  {
    v31 = v50;
    if (v24 == 2)
    {
      LOBYTE(v52) = 2;
      sub_20C337044(v24, v25, v26);
      v32 = v40;
      sub_20C36D0F4();
      if (!v32)
      {
        LOBYTE(v52) = 0;
        v7 = sub_20C36D144();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
        v57 = 1;
        sub_20C30DA0C(&qword_27C79DC00, sub_20C302E84, MEMORY[0x277D83978]);
        sub_20C36D184();
        (*(v46 + 8))(v21, v20);
      }

      (*(v31 + 8))(v13, v10);
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    LOBYTE(v52) = 3;
    sub_20C336FF0(v24, v25, v26);
    v37 = v40;
    sub_20C36D0F4();
    if (!v37)
    {
      (*(v41 + 8))(v7, v45);
      (*(v31 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v7 = 1;
      goto LABEL_10;
    }

    (*(v31 + 8))(v13, v10);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (!v24)
  {
    LOBYTE(v52) = 0;
    sub_20C3370EC(v24, v25, v26);
    v27 = v40;
    sub_20C36D0F4();
    if (!v27)
    {
      (*(v42 + 8))(v19, v39);
      (*(v50 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v7 = 0;
      goto LABEL_10;
    }

    (*(v50 + 8))(v13, v10);
    goto LABEL_9;
  }

  LOBYTE(v52) = 1;
  sub_20C337098(v24, v25, v26);
  v33 = v40;
  v34 = sub_20C36D0F4();
  v7 = v33;
  if (v33)
  {
    (*(v50 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20C30DAD8(v34, v35, v36);
    v38 = v44;
    sub_20C36D184();
    (*(v43 + 8))(v6, v38);
    (*(v50 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v7 = v52;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v7;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_20C3379D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_20C337A20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C337A68(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_20C337AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E918;
  if (!qword_27C79E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E918);
  }

  return result;
}

unint64_t sub_20C337B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E920;
  if (!qword_27C79E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E920);
  }

  return result;
}

unint64_t sub_20C337B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E928;
  if (!qword_27C79E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E928);
  }

  return result;
}

unint64_t sub_20C337BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E930;
  if (!qword_27C79E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E930);
  }

  return result;
}

unint64_t sub_20C337C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E938;
  if (!qword_27C79E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E938);
  }

  return result;
}

unint64_t sub_20C337CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E940;
  if (!qword_27C79E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E940);
  }

  return result;
}

unint64_t sub_20C337CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E948;
  if (!qword_27C79E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E948);
  }

  return result;
}

unint64_t sub_20C337D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E950;
  if (!qword_27C79E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E950);
  }

  return result;
}

unint64_t sub_20C337DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E958;
  if (!qword_27C79E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E958);
  }

  return result;
}

unint64_t sub_20C337E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E960;
  if (!qword_27C79E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E960);
  }

  return result;
}

unint64_t sub_20C337E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E968;
  if (!qword_27C79E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E968);
  }

  return result;
}

unint64_t sub_20C337EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E970;
  if (!qword_27C79E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E970);
  }

  return result;
}

unint64_t sub_20C337F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E978;
  if (!qword_27C79E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E978);
  }

  return result;
}

id sub_20C337F74()
{
  type metadata accessor for AssetBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27C79E9A8 = result;
  return result;
}

id static NSBundle.asset.getter()
{
  if (qword_27C79D760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27C79E9A8;

  return v0;
}

void static NSBundle.asset.setter(uint64_t a1)
{
  if (qword_27C79D760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27C79E9A8;
  qword_27C79E9A8 = a1;
}

uint64_t (*static NSBundle.asset.modify(uint64_t a1))()
{
  if (qword_27C79D760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

__n128 Layout.contentMargins.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

_OWORD *Layout.init(contentMargins:imageSequenceViewSize:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = result[1];
  *a2 = *result;
  *(a2 + 16) = v4;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  return result;
}

uint64_t sub_20C3381B8()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x4D746E65746E6F63;
  }
}

uint64_t sub_20C338204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020C377F80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

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

uint64_t sub_20C3382F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3387A8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C33832C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3387A8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Layout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9B0, &qword_20C374C20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3387A8(v11, v12, v13);
  v14 = sub_20C36D374();
  v15 = v3[1];
  v21 = *v3;
  v22 = v15;
  v20 = 0;
  sub_20C2FD43C(v14, v16, v17);
  sub_20C36D234();
  if (!v2)
  {
    *&v21 = v9;
    *(&v21 + 1) = v10;
    v20 = 1;
    type metadata accessor for CGSize(0);
    sub_20C3387FC(&qword_27C79E9C0, MEMORY[0x277CBF288]);
    sub_20C36D234();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Layout.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9C8, &qword_20C374C28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3387A8(v9, v10, v11);
  v12 = sub_20C36D364();
  if (!v2)
  {
    v22 = 0;
    sub_20C2FD718(v12, v13, v14);
    sub_20C36D184();
    v18 = v21;
    v19 = v20;
    type metadata accessor for CGSize(0);
    v22 = 1;
    sub_20C3387FC(&qword_27C79E9D0, MEMORY[0x277CBF2A0]);
    sub_20C36D184();
    (*(v6 + 8))(v8, v5);
    v15 = v18;
    v16 = v20;
    *a2 = v19;
    a2[1] = v15;
    a2[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s13FitnessForYou6LayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[2].f64[0] == a2[2].f64[0];
  }

  return 0;
}

unint64_t sub_20C3387A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E9B8;
  if (!qword_27C79E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E9B8);
  }

  return result;
}

uint64_t sub_20C3387FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C338864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E9D8;
  if (!qword_27C79E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E9D8);
  }

  return result;
}

unint64_t sub_20C3388BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E9E0;
  if (!qword_27C79E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E9E0);
  }

  return result;
}

unint64_t sub_20C338914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E9E8;
  if (!qword_27C79E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E9E8);
  }

  return result;
}

uint64_t sub_20C33898C()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_20C3389F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C33919C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C338A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C338F7C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C338A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C338F7C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C338A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C339024(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C338AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C339024(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C338B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C339078(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C338B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C339078(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C338B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C338FD0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C338BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C338FD0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SubscriptionState.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9F0, &qword_20C374E10);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9F8, &qword_20C374E18);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA00, &qword_20C374E20);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA08, &qword_20C374E28);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C338F7C(v15, v16, v17);
  v18 = sub_20C36D374();
  v21 = (v12 + 8);
  if (v31)
  {
    if (v31 == 1)
    {
      v33 = 1;
      sub_20C339024(v18, v19, v20);
      sub_20C36D1B4();
      (*(v26 + 8))(v7, v27);
    }

    else
    {
      v34 = 2;
      sub_20C338FD0(v18, v19, v20);
      v22 = v28;
      sub_20C36D1B4();
      (*(v29 + 8))(v22, v30);
    }
  }

  else
  {
    v32 = 0;
    sub_20C339078(v18, v19, v20);
    sub_20C36D1B4();
    (*(v25 + 8))(v10, v8);
  }

  return (*v21)(v14, v11);
}

unint64_t sub_20C338F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA10;
  if (!qword_27C79EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA10);
  }

  return result;
}

unint64_t sub_20C338FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA18;
  if (!qword_27C79EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA18);
  }

  return result;
}

unint64_t sub_20C339024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA20;
  if (!qword_27C79EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA20);
  }

  return result;
}

unint64_t sub_20C339078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA28;
  if (!qword_27C79EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA28);
  }

  return result;
}

uint64_t sub_20C3390E4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C3392C0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SubscriptionState.hashValue.getter(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C33919C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEC00000064656269)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

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

uint64_t sub_20C3392C0(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA78, &qword_20C375250);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v31 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA80, &qword_20C375258);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA88, &qword_20C375260);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA90, &qword_20C375268);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = a1[3];
  v40 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_20C338F7C(v13, v14, v15);
  v16 = v39;
  sub_20C36D364();
  if (!v16)
  {
    v32 = v5;
    v17 = v38;
    v39 = v9;
    v18 = v11;
    v19 = sub_20C36D194();
    v20 = (2 * *(v19 + 16)) | 1;
    v41 = v19;
    v42 = v19 + 32;
    v43 = 0;
    v44 = v20;
    v21 = sub_20C32A510();
    if (v21 != 3 && v43 == v44 >> 1)
    {
      v9 = v21;
      if (v21)
      {
        if (v21 == 1)
        {
          v45 = 1;
          sub_20C339024(v21, v22, v23);
          sub_20C36D0F4();
          v24 = v39;
          (*(v35 + 8))(v4, v37);
          (*(v24 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v9;
        }

        v45 = 2;
        sub_20C338FD0(v21, v22, v23);
        v29 = v11;
        sub_20C36D0F4();
        v30 = v39;
        (*(v33 + 8))(v17, v36);
      }

      else
      {
        v45 = 0;
        sub_20C339078(v21, v22, v23);
        v29 = v11;
        sub_20C36D0F4();
        (*(v34 + 8))(v7, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v8);
      goto LABEL_13;
    }

    v25 = sub_20C36D064();
    swift_allocError();
    v27 = v26;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
    *v27 = &type metadata for SubscriptionState;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v39 + 8))(v18, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v9;
}

unint64_t sub_20C339834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8DE0;
  if (!qword_2810E8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8DE0);
  }

  return result;
}

unint64_t sub_20C3398DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA30;
  if (!qword_27C79EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA30);
  }

  return result;
}

unint64_t sub_20C339934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA38;
  if (!qword_27C79EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA38);
  }

  return result;
}

unint64_t sub_20C33998C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA40;
  if (!qword_27C79EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA40);
  }

  return result;
}

unint64_t sub_20C3399E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA48;
  if (!qword_27C79EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA48);
  }

  return result;
}

unint64_t sub_20C339A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA50;
  if (!qword_27C79EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA50);
  }

  return result;
}

unint64_t sub_20C339A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA58;
  if (!qword_27C79EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA58);
  }

  return result;
}

unint64_t sub_20C339AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA60;
  if (!qword_27C79EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA60);
  }

  return result;
}

unint64_t sub_20C339B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA68;
  if (!qword_27C79EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA68);
  }

  return result;
}

unint64_t sub_20C339B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79EA70;
  if (!qword_27C79EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA70);
  }

  return result;
}

uint64_t sub_20C339BF0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_20C36CC84();
}

uint64_t sub_20C339DF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAD0, &qword_20C375318);
  sub_20C3077A8(&qword_2810E8C38, &qword_27C79EAD0, &qword_20C375318, MEMORY[0x277D04410]);

  return sub_20C36C494();
}

uint64_t sub_20C339E98(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB90, &qword_20C3754B0);
  sub_20C36CB64();
  return v2;
}

uint64_t sub_20C339F5C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA0, &qword_20C377650);
  sub_20C36CB64();
  return v2;
}

uint64_t sub_20C33A020(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB98, &qword_20C3754B8);
  sub_20C36CB64();
  return v2;
}

uint64_t ForYouView.init(store:canvasViewBuilder:marketingForYouViewBuilder:imageSequenceViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a5)(uint64_t)@<X4>, void (*a7)(uint64_t)@<X6>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v18 = type metadata accessor for ForYouView(0, &v31);
  v19 = a9 + v18[20];
  v35 = sub_20C36CC34();
  v36 = v20;
  sub_20C36CB54();
  v21 = v32;
  *v19 = v31;
  *(v19 + 16) = v21;
  v22 = a9 + v18[21];
  LOBYTE(v35) = 1;
  sub_20C36CB54();
  v23 = *(&v31 + 1);
  *v22 = v31;
  *(v22 + 8) = v23;
  v24 = v18[22];
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAD8, qword_20C375320);
  sub_20C36CB54();
  *(a9 + v24) = v31;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *a9 = sub_20C305E60;
  *(a9 + 8) = v25;
  *(a9 + 16) = 0;

  v27 = a3(v26);
  v28 = a5(v27);
  a7(v28);
}

uint64_t sub_20C33A2A0(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAF0, &qword_20C3753A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAB0, &qword_20C375290);
  sub_20C3077A8(&qword_2810E8C40, &qword_27C79EAF0, &qword_20C3753A8, MEMORY[0x277CE14C0]);
  sub_20C34155C();
  return sub_20C36C774();
}

uint64_t sub_20C33A3EC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_20C36C144();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_20C36CD64();
  MEMORY[0x28223BE20](v16 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v17 = qword_2810ED6B0;
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  type metadata accessor for ForYouView(0, v22);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  result = sub_20C36C934();
  *a8 = result;
  *(a8 + 8) = v19;
  *(a8 + 16) = v20 & 1;
  *(a8 + 24) = v21;
  return result;
}

uint64_t sub_20C33A5B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v14 = sub_20C36C144();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_20C36CD64();
  MEMORY[0x28223BE20](v15 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v16 = qword_2810ED6B0;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a9;
  type metadata accessor for ForYouView(0, &v38);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  v17 = sub_20C36C934();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (v38 == 1)
  {
    v38 = a1;
    v39 = a2;
    sub_20C343EA0(v24, v25, v26);

    v27 = sub_20C36C984();
    v28 = v31;
    v30 = v32;
    v29 = v33 & 1;
    sub_20C3078C8(v27, v31, v33 & 1);
  }

  sub_20C3078C8(v17, v19, v21 & 1);

  sub_20C343EF4(v27, v28, v29, v30);
  sub_20C343F38(v27, v28, v29, v30);
  LOBYTE(v38) = v21 & 1;
  *a8 = v17;
  *(a8 + 8) = v19;
  *(a8 + 16) = v21 & 1;
  *(a8 + 24) = v23;
  *(a8 + 32) = v27;
  *(a8 + 40) = v28;
  *(a8 + 48) = v29;
  *(a8 + 56) = v30;
  sub_20C343F38(v27, v28, v29, v30);
  sub_20C3078B8(v17, v19, v21 & 1);
}

uint64_t sub_20C33A8A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_20C36C144();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_20C36CD64();
  MEMORY[0x28223BE20](v16 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v17 = qword_2810ED6B0;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  type metadata accessor for ForYouView(0, &v24);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  v24 = sub_20C36CDB4();
  v25 = v18;
  sub_20C343EA0(v24, v18, v19);
  result = sub_20C36C984();
  *a8 = result;
  *(a8 + 8) = v21;
  *(a8 + 16) = v22 & 1;
  *(a8 + 24) = v23;
  return result;
}

uint64_t sub_20C33AA90(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAC8, &qword_20C3752A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  v9 = a2[3];
  v24 = a2[2];
  v25 = v9;
  v10 = a2[5];
  v26 = a2[4];
  v27 = v10;
  v11 = a2[7];
  v28 = a2[6];
  v29 = v11;
  v30 = v2;
  v31 = a1;
  v16 = v24;
  v17 = v9;
  v18 = v26;
  v19 = v10;
  v20 = v28;
  v21 = v11;
  v22 = v2;
  v23 = a1;
  v14 = nullsub_1;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAF8, &qword_20C3753F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB00, &qword_20C375400);
  sub_20C344024();
  sub_20C3442A0();
  sub_20C36C774();
  sub_20C3077A8(&qword_2810E8C80, &qword_27C79EAC8, &qword_20C3752A8, MEMORY[0x277CDE158]);
  sub_20C36CAD4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20C33ACBC@<X0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB78, &qword_20C375438);
  MEMORY[0x28223BE20](v33);
  v35 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB80, &qword_20C375440);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB88, &qword_20C375448);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB28, &qword_20C375410);
  MEMORY[0x28223BE20](v32);
  v13 = &v29 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB18, &qword_20C375408);
  MEMORY[0x28223BE20](v34);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB38, &qword_20C375418);
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  if (a1 <= 1u)
  {
    v21 = v18;
    v30 = v18;
    v29 = &v29;
    MEMORY[0x28223BE20](v17);
    v22 = a2[2];
    *(&v29 - 4) = a2[1];
    *(&v29 - 3) = v22;
    *(&v29 - 2) = a2[3];
    *(&v29 - 2) = v31;
    sub_20C36CB44();
    (*(v21 + 16))(v11, v20, v16);
    swift_storeEnumTagMultiPayload();
    sub_20C3077A8(&qword_27C79EB30, &qword_27C79EB38, &qword_20C375418, MEMORY[0x277CDEFF0]);
    sub_20C36C724();
    sub_20C3077F0(v13, v8, &qword_27C79EB28, &qword_20C375410);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB48, &qword_20C375420);
    sub_20C344188();
    sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420, MEMORY[0x277CE0F70]);
    sub_20C36C724();
    sub_20C307858(v13, &qword_27C79EB28, &qword_20C375410);
    sub_20C3077F0(v15, v35, &qword_27C79EB18, &qword_20C375408);
    swift_storeEnumTagMultiPayload();
    sub_20C3440DC();
    sub_20C36C724();
    sub_20C307858(v15, &qword_27C79EB18, &qword_20C375408);
    return (*(v30 + 8))(v20, v16);
  }

  if (a1 == 2)
  {
    v37 = sub_20C36CAF4();
    v38 = 0;
    goto LABEL_7;
  }

  if (a1 == 3)
  {
    v37 = sub_20C36CAF4();
    v38 = 1;
LABEL_7:

    v23 = MEMORY[0x277CE0F70];
    sub_20C36C724();
    v24 = v40;
    *v8 = v39;
    v8[8] = v24;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB48, &qword_20C375420);
    sub_20C344188();
    sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420, v23);
    sub_20C36C724();
    sub_20C3077F0(v15, v35, &qword_27C79EB18, &qword_20C375408);
    swift_storeEnumTagMultiPayload();
    sub_20C3440DC();
    sub_20C3077A8(&qword_27C79EB30, &qword_27C79EB38, &qword_20C375418, MEMORY[0x277CDEFF0]);
    sub_20C36C724();

    return sub_20C307858(v15, &qword_27C79EB18, &qword_20C375408);
  }

  MEMORY[0x28223BE20](v17);
  v25 = a2[2];
  *(&v29 - 4) = a2[1];
  *(&v29 - 3) = v25;
  *(&v29 - 2) = a2[3];
  *(&v29 - 2) = v31;
  v27 = v26;
  sub_20C36CB44();
  (*(v27 + 16))(v35, v20, v16);
  swift_storeEnumTagMultiPayload();
  sub_20C3440DC();
  sub_20C3077A8(&qword_27C79EB30, &qword_27C79EB38, &qword_20C375418, MEMORY[0x277CDEFF0]);
  sub_20C36C724();
  return (*(v27 + 8))(v20, v16);
}

double sub_20C33B51C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v8 = a1;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  *&v15 = a4;
  *(&v15 + 1) = a5;
  v16 = a6;
  v17 = a7;
  type metadata accessor for ForYouView(0, &v14);
  sub_20C33B594(v8, &v14);
  v10 = v16;
  v11 = BYTE2(v16);
  result = *&v14;
  v13 = v15;
  *a8 = v14;
  *(a8 + 16) = v13;
  *(a8 + 32) = v10;
  *(a8 + 34) = v11;
  return result;
}

double sub_20C33B594@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_20C36C144();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_20C36CD64();
  MEMORY[0x28223BE20](v5 - 8);
  if (a1 <= 1u)
  {
    if (a1)
    {
      sub_20C36CD54();
      if (qword_2810E8BF0 == -1)
      {
LABEL_13:
        v8 = qword_2810ED6B0;
        sub_20C339DF8();
        swift_getKeyPath();
        sub_20C36CCE4();

        v9 = sub_20C36C934();
        v11 = v10;
        v13 = v12 & 1;
        sub_20C3078C8(v9, v10, v12 & 1);

        sub_20C36C724();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB70, &qword_20C375430);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB48, &qword_20C375420);
        sub_20C344238(&qword_27C79EB68, &qword_27C79EB70, &qword_20C375430, MEMORY[0x277CE0BC8]);
        sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420, MEMORY[0x277CE0F70]);
        sub_20C36C724();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB60, &qword_20C375428);
        sub_20C34432C();
        sub_20C36C724();
        sub_20C3078B8(v9, v11, v13);

        goto LABEL_14;
      }
    }

    else
    {
      sub_20C36CD54();
      if (qword_2810E8BF0 == -1)
      {
        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  if (a1 == 2 || a1 == 3)
  {
    sub_20C36CAF4();

    v6 = MEMORY[0x277CE0F70];
    sub_20C36C724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB70, &qword_20C375430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB48, &qword_20C375420);
    sub_20C344238(&qword_27C79EB68, &qword_27C79EB70, &qword_20C375430, MEMORY[0x277CE0BC8]);
    sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420, v6);
    sub_20C36C724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB60, &qword_20C375428);
    sub_20C34432C();
    sub_20C36C724();
  }

  else
  {
    sub_20C36CD54();
    if (qword_2810E8BF0 != -1)
    {
      swift_once();
    }

    v7 = qword_2810ED6B0;
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C36C934();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB60, &qword_20C375428);
    sub_20C34432C();
    sub_20C36C724();
  }

LABEL_14:
  result = *&v15;
  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 32) = v17;
  *(a2 + 34) = v18;
  return result;
}

uint64_t sub_20C33BC2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = *(a1 + 32);
  v30 = a1;
  v31 = v3;
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA0, &qword_20C375280);
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA8, &qword_20C375288);
  sub_20C36C734();
  sub_20C36CB24();
  v29[1] = sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  v4 = *(a1 + 56);
  v64 = v4;
  v65 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277CDF678];
  v62 = WitnessTable;
  v63 = MEMORY[0x277CDF678];
  v60 = swift_getWitnessTable();
  v61 = sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280, MEMORY[0x277CE01A0]);
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x277CDF748];
  v56 = swift_getWitnessTable();
  v57 = v6;
  v7 = swift_getWitnessTable();
  sub_20C341484(v7, v8, v9);
  swift_getOpaqueTypeMetadata2();
  sub_20C36C734();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = sub_20C3414D8();
  swift_getWitnessTable();
  sub_20C36C504();
  sub_20C36C544();
  sub_20C36C734();
  v10 = MEMORY[0x277CE0BD8];
  swift_getTupleTypeMetadata2();
  v11 = sub_20C36CC74();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAB0, &qword_20C375290);
  v13 = swift_getWitnessTable();
  v14 = sub_20C34155C();
  v48 = v11;
  v49 = v10;
  v50 = v12;
  v51 = v13;
  v52 = MEMORY[0x277CE0BC8];
  v53 = v14;
  v15 = sub_20C36C784();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v29 - v20;
  v46 = v4;
  v47 = v32;
  v22 = *(v30 + 16);
  v23.i64[0] = v31;
  v42 = v32;
  v34 = v22;
  v35 = v31;
  v24 = *(v30 + 40);
  v45 = *(v30 + 48);
  v43 = v22;
  v44 = vzip1q_s64(v23, v24);
  *&v25 = vdupq_laneq_s64(v24, 1).u64[0];
  *(&v25 + 1) = v4;
  v39 = v22;
  v40 = v44;
  v41 = v25;
  v36 = v24;
  v37 = v4;
  v38 = v32;
  sub_20C36C774();
  swift_getWitnessTable();
  v26 = *(v16 + 16);
  v26(v21, v19, v15);
  v27 = *(v16 + 8);
  v27(v19, v15);
  v26(v33, v21, v15);
  return (v27)(v21, v15);
}

uint64_t sub_20C33C1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v133 = a1;
  v117 = a8;
  v14 = sub_20C36C144();
  MEMORY[0x28223BE20](v14 - 8);
  v116 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C36CD64();
  MEMORY[0x28223BE20](v16 - 8);
  v115 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a2;
  v107 = a3;
  *&v201 = a2;
  *(&v201 + 1) = a3;
  *&v202 = a4;
  *(&v202 + 1) = a5;
  v109 = a5;
  v110 = a6;
  *&v203 = a6;
  *(&v203 + 1) = a7;
  v126 = type metadata accessor for ForYouView(0, &v201);
  v100 = *(v126 - 8);
  v98 = *(v100 + 64);
  MEMORY[0x28223BE20](v126);
  v99 = &v98 - v18;
  v108 = a4;
  sub_20C36C544();
  v128 = sub_20C36C544();
  v19 = sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA0, &qword_20C375280);
  v130 = v19;
  v127 = sub_20C36C544();
  v129 = sub_20C36C544();
  v20 = sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA8, &qword_20C375288);
  v132 = v20;
  v131 = sub_20C36C734();
  v21 = sub_20C36CB24();
  v102 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v101 = &v98 - v22;
  v121 = v23;
  v24 = sub_20C36C544();
  v105 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v104 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v103 = &v98 - v27;
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  v28 = sub_20C36C544();
  v111 = a7;
  v215 = a7;
  v216 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  v30 = MEMORY[0x277CDF678];
  v122 = WitnessTable;
  v213 = WitnessTable;
  v214 = MEMORY[0x277CDF678];
  v31 = swift_getWitnessTable();
  v32 = sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280, MEMORY[0x277CE01A0]);
  v211 = v31;
  v212 = v32;
  v123 = v32;
  v209 = swift_getWitnessTable();
  v210 = MEMORY[0x277CDF748];
  v207 = swift_getWitnessTable();
  v208 = v30;
  v33 = swift_getWitnessTable();
  v36 = sub_20C341484(v33, v34, v35);
  v37 = MEMORY[0x277D85048];
  *&v201 = v28;
  *(&v201 + 1) = MEMORY[0x277D85048];
  *&v202 = v33;
  *(&v202 + 1) = v36;
  swift_getOpaqueTypeMetadata2();
  sub_20C36C734();
  *&v201 = v28;
  *(&v201 + 1) = v37;
  v38 = v133;
  *&v202 = v33;
  *(&v202 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_20C3414D8();
  v205 = OpaqueTypeConformance2;
  v206 = v40;
  v41 = v126;
  swift_getWitnessTable();
  v119 = sub_20C36C504();
  v42 = sub_20C36C544();
  v125 = v24;
  v120 = v42;
  v43 = sub_20C36C734();
  v113 = *(v43 - 8);
  v114 = v43;
  v44 = MEMORY[0x28223BE20](v43);
  v124 = &v98 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v118 = &v98 - v46;
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  v112 = v40;
  if (v201 == 1)
  {
    MEMORY[0x28223BE20](v47);
    v48 = v107;
    *(&v98 - 8) = v106;
    *(&v98 - 7) = v48;
    v49 = v109;
    *(&v98 - 6) = v108;
    *(&v98 - 5) = v49;
    v50 = v111;
    *(&v98 - 4) = v110;
    *(&v98 - 3) = v50;
    *(&v98 - 2) = v38;
    v149 = v122;
    v150 = MEMORY[0x277CE0790];
    v147 = swift_getWitnessTable();
    v148 = MEMORY[0x277CDF678];
    v51 = MEMORY[0x277CDF678];
    v145 = swift_getWitnessTable();
    v146 = v123;
    v143 = swift_getWitnessTable();
    v144 = MEMORY[0x277CDF748];
    v141 = swift_getWitnessTable();
    v142 = v51;
    v139 = swift_getWitnessTable();
    v140 = v40;
    v52 = swift_getWitnessTable();
    v53 = v101;
    sub_20C36CB14();
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C36CC24();
    v138 = v52;
    v54 = v121;
    v55 = swift_getWitnessTable();
    v56 = v104;
    sub_20C36CA54();
    (*(v102 + 8))(v53, v54);
    v136 = v55;
    v137 = MEMORY[0x277CDF678];
    v57 = v125;
    v111 = swift_getWitnessTable();
    v58 = v105;
    v59 = *(v105 + 16);
    v60 = v103;
    v59(v103, v56, v57);
    v61 = *(v58 + 8);
    v61(v56, v57);
    v59(v56, v60, v57);
    v134 = swift_getWitnessTable();
    v62 = v120;
    v135 = MEMORY[0x277CDF678];
    v63 = swift_getWitnessTable();
    sub_20C3607A4(v56, v57, v62, v111, v63);
    v61(v56, v57);
    v61(v60, v57);
    v64 = MEMORY[0x277CE0790];
  }

  else
  {
    v66 = v99;
    v65 = v100;
    (*(v100 + 16))(v99, v38, v41);
    v67 = (*(v65 + 80) + 64) & ~*(v65 + 80);
    v68 = swift_allocObject();
    v69 = v107;
    *(v68 + 2) = v106;
    *(v68 + 3) = v69;
    v70 = v109;
    *(v68 + 4) = v108;
    *(v68 + 5) = v70;
    v71 = v111;
    *(v68 + 6) = v110;
    *(v68 + 7) = v71;
    (*(v65 + 32))(&v68[v67], v66, v41);
    *&v196[0] = sub_20C36C4F4();
    *(&v196[0] + 1) = v72;
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C36CC24();
    v73 = swift_getWitnessTable();
    sub_20C36CA54();

    v196[0] = v201;
    v196[1] = v202;
    v196[2] = v203;
    v196[3] = v204;
    v197 = v201;
    v198 = v202;
    v199 = v203;
    v200 = v204;
    v190 = v73;
    v74 = MEMORY[0x277CDF678];
    v191 = MEMORY[0x277CDF678];
    v75 = v120;
    v76 = swift_getWitnessTable();
    v77 = *(v75 - 8);
    v78 = *(v77 + 16);
    v78(&v192, &v197, v75);
    v79 = *(v77 + 8);
    v79(v196, v75);
    v197 = v192;
    v198 = v193;
    v199 = v194;
    v200 = v195;
    v201 = v192;
    v202 = v193;
    v203 = v194;
    v204 = v195;
    v78(&v186, &v201, v75);
    v201 = v186;
    v202 = v187;
    v203 = v188;
    v204 = v189;
    v185[0] = v186;
    v185[1] = v187;
    v185[2] = v188;
    v185[3] = v189;
    v183 = v122;
    v64 = MEMORY[0x277CE0790];
    v184 = MEMORY[0x277CE0790];
    v181 = swift_getWitnessTable();
    v182 = v74;
    v179 = swift_getWitnessTable();
    v180 = v123;
    v177 = swift_getWitnessTable();
    v178 = MEMORY[0x277CDF748];
    v175 = swift_getWitnessTable();
    v176 = v74;
    v173 = swift_getWitnessTable();
    v174 = v40;
    v172 = swift_getWitnessTable();
    v170 = swift_getWitnessTable();
    v171 = v74;
    v80 = v125;
    v81 = swift_getWitnessTable();
    sub_20C36089C(v185, v80, v75, v81, v76);
    v79(&v201, v75);
    v79(&v197, v75);
  }

  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v82 = qword_2810ED6B0;
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  v83 = sub_20C36C934();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v133 = v88;
  v90 = v113;
  v91 = v124;
  v92 = v114;
  (*(v113 + 16))();
  *&v201 = v83;
  *(&v201 + 1) = v85;
  LOBYTE(v202) = v87 & 1;
  *(&v202 + 1) = v89;
  *&v197 = v91;
  *(&v197 + 1) = &v201;
  sub_20C3078C8(v83, v85, v87 & 1);

  *&v196[0] = v92;
  *(&v196[0] + 1) = MEMORY[0x277CE0BD8];
  v168 = v122;
  v169 = v64;
  v166 = swift_getWitnessTable();
  v93 = MEMORY[0x277CDF678];
  v167 = MEMORY[0x277CDF678];
  v164 = swift_getWitnessTable();
  v165 = v123;
  v162 = swift_getWitnessTable();
  v163 = MEMORY[0x277CDF748];
  v160 = swift_getWitnessTable();
  v161 = v93;
  v158 = swift_getWitnessTable();
  v159 = v112;
  v157 = swift_getWitnessTable();
  v155 = swift_getWitnessTable();
  v156 = v93;
  v94 = swift_getWitnessTable();
  v153 = swift_getWitnessTable();
  v154 = v93;
  v95 = swift_getWitnessTable();
  v151 = v94;
  v152 = v95;
  *&v192 = swift_getWitnessTable();
  *(&v192 + 1) = MEMORY[0x277CE0BC8];
  sub_20C339BF0(&v197, 2uLL, v196);
  sub_20C3078B8(v83, v85, v87 & 1);

  v96 = *(v90 + 8);
  v96(v118, v92);
  sub_20C3078B8(v201, *(&v201 + 1), v202);

  return (v96)(v124, v92);
}

uint64_t sub_20C33D1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double (*a3)()@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v131 = a8;
  v134 = a2;
  v135 = a3;
  v183 = a2;
  v184 = a3;
  v185 = a4;
  v186 = a5;
  v136 = a5;
  v137 = a6;
  v187 = a6;
  v188 = a7;
  v144 = a7;
  v10 = type metadata accessor for ForYouView(0, &v183);
  v11 = *(v10 - 8);
  v132 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v110 - v12;
  v133 = a4;
  v14 = sub_20C36C544();
  v118 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v126 = &v110 - v15;
  v143 = v16;
  v17 = sub_20C36C544();
  v120 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v119 = &v110 - v18;
  v142 = v19;
  v20 = sub_20C36C544();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v121 = &v110 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA0, &qword_20C375280);
  v141 = v20;
  v23 = sub_20C36C544();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v122 = &v110 - v25;
  v140 = v26;
  v27 = sub_20C36C544();
  v124 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v123 = &v110 - v28;
  v139 = v29;
  v30 = sub_20C36C544();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v125 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v110 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA8, &qword_20C375288);
  v138 = v30;
  v127 = v36;
  v37 = sub_20C36C734();
  v129 = *(v37 - 8);
  v130 = v37;
  MEMORY[0x28223BE20](v37);
  v128 = &v110 - v38;
  if (sub_20C339F5C(v10))
  {
    v113 = v24;
    v111 = *(v11 + 16);
    v116 = v10;
    v111(v13, a1, v10);
    v112 = v21;
    v39 = *(v11 + 80);
    v114 = v31;
    v115 = v35;
    v40 = (v39 + 64) & ~v39;
    v41 = swift_allocObject();
    v117 = a1;
    v42 = v135;
    *(v41 + 2) = v134;
    *(v41 + 3) = v42;
    v43 = v136;
    v44 = v137;
    *(v41 + 4) = v133;
    *(v41 + 5) = v43;
    v45 = v144;
    *(v41 + 6) = v44;
    *(v41 + 7) = v45;
    v110 = *(v11 + 32);
    v46 = v13;
    v110(&v41[v40], v13, v10);
    v47 = v117;
    v48 = v133;
    sub_20C36CA94();

    v49 = v116;
    v111(v46, v47, v116);
    v50 = swift_allocObject();
    v51 = v135;
    *(v50 + 2) = v134;
    *(v50 + 3) = v51;
    v52 = v136;
    v53 = v137;
    *(v50 + 4) = v48;
    *(v50 + 5) = v52;
    v54 = v144;
    *(v50 + 6) = v53;
    *(v50 + 7) = v54;
    v110(&v50[v40], v46, v49);
    v155 = v144;
    v55 = MEMORY[0x277CE0790];
    v156 = MEMORY[0x277CE0790];
    v137 = MEMORY[0x277CDFAD8];
    WitnessTable = swift_getWitnessTable();
    v57 = v119;
    v58 = v126;
    sub_20C36C9B4();

    (*(v118 + 8))(v58, v143);
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C36CC24();
    v153 = WitnessTable;
    v154 = v55;
    v59 = swift_getWitnessTable();
    v60 = v121;
    v61 = v142;
    sub_20C36CA54();
    (*(v120 + 8))(v57, v61);
    v62 = v116;
    sub_20C33A020(v116);
    v183 = sub_20C339E98(v62);
    v184 = v63;
    v151 = v59;
    v152 = MEMORY[0x277CDF678];
    v64 = v141;
    v65 = swift_getWitnessTable();
    sub_20C34484C(v65, v66, v67);
    v68 = v122;
    sub_20C36CAC4();

    (*(v112 + 8))(v60, v64);
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    v69 = sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280, MEMORY[0x277CE01A0]);
    v149 = v65;
    v150 = v69;
    v70 = v140;
    v71 = swift_getWitnessTable();
    v72 = v123;
    sub_20C36CA64();
    (*(v113 + 8))(v68, v70);
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C339E98(v62);
    v147 = v71;
    v148 = MEMORY[0x277CDF748];
    v73 = v139;
    v74 = swift_getWitnessTable();
    v75 = v125;
    sub_20C36CA54();
    v76 = v73;
    v77 = v138;
    (*(v124 + 8))(v72, v76);
    v145 = v74;
    v146 = MEMORY[0x277CDF678];
    v78 = swift_getWitnessTable();
    v79 = v114;
    v80 = v115;
    v81 = *(v114 + 16);
    v81(v115, v75, v77);
    v82 = *(v79 + 8);
    v82(v75, v77);
    v81(v75, v80, v77);
    v83 = sub_20C3414D8();
    v84 = v128;
    sub_20C3607A4(v75, v77, v127, v78, v83);
    v82(v75, v77);
    v82(v80, v77);
  }

  else
  {
    v85 = sub_20C36CAF4();
    (*(v11 + 16))(v13, a1, v10);
    v86 = (*(v11 + 80) + 64) & ~*(v11 + 80);
    v87 = swift_allocObject();
    v88 = v10;
    v89 = v87;
    v90 = v135;
    v87[2] = v134;
    v87[3] = v90;
    v92 = v136;
    v91 = v137;
    v87[4] = v133;
    v87[5] = v92;
    v93 = v144;
    v87[6] = v91;
    v87[7] = v93;
    (*(v11 + 32))(v87 + v86, v13, v88);
    v183 = v85;
    v184 = sub_20C3445F0;
    v185 = v89;
    v186 = 0;
    v187 = 0;
    v181 = v93;
    v94 = MEMORY[0x277CE0790];
    v182 = MEMORY[0x277CE0790];
    v179 = swift_getWitnessTable();
    v180 = v94;
    v177 = swift_getWitnessTable();
    v95 = MEMORY[0x277CDF678];
    v178 = MEMORY[0x277CDF678];
    v96 = swift_getWitnessTable();
    v97 = sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280, MEMORY[0x277CE01A0]);
    v175 = v96;
    v176 = v97;
    v173 = swift_getWitnessTable();
    v174 = MEMORY[0x277CDF748];
    v171 = swift_getWitnessTable();
    v172 = v95;
    v98 = v138;
    v99 = swift_getWitnessTable();
    v100 = sub_20C3414D8();
    v84 = v128;
    sub_20C36089C(&v183, v98, v127, v99, v100);
  }

  v169 = v144;
  v101 = MEMORY[0x277CE0790];
  v170 = MEMORY[0x277CE0790];
  v167 = swift_getWitnessTable();
  v168 = v101;
  v165 = swift_getWitnessTable();
  v102 = MEMORY[0x277CDF678];
  v166 = MEMORY[0x277CDF678];
  v103 = swift_getWitnessTable();
  v104 = sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280, MEMORY[0x277CE01A0]);
  v163 = v103;
  v164 = v104;
  v161 = swift_getWitnessTable();
  v162 = MEMORY[0x277CDF748];
  v159 = swift_getWitnessTable();
  v160 = v102;
  v105 = swift_getWitnessTable();
  v106 = sub_20C3414D8();
  v157 = v105;
  v158 = v106;
  v107 = v130;
  swift_getWitnessTable();
  v108 = v129;
  (*(v129 + 16))(v131, v84, v107);
  return (*(v108 + 8))(v84, v107);
}

uint64_t sub_20C33DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v7 = type metadata accessor for ForYouView(0, v12);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  sub_20C36CC64();
  v8 = sub_20C36CC54();

  sub_20C33A074(v8, v7);
  sub_20C339FBC(1, v7);
  v9 = sub_20C36CC44();
  return sub_20C339EF8(v9, v10, v7);
}

uint64_t sub_20C33E0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v14;
  v8[14] = v15;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_20C36D094();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  sub_20C36CEF4();
  v8[18] = sub_20C36CEE4();
  v11 = sub_20C36CEC4();
  v8[19] = v11;
  v8[20] = v10;

  return MEMORY[0x2822009F8](sub_20C33E1C0, v11, v10);
}

uint64_t sub_20C33E1C0()
{
  v1 = sub_20C36D384();
  v3 = v2;
  sub_20C36D2B4();
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_20C33E2A0;

  return sub_20C344ACC(v1, v3, 0, 0, 1);
}

uint64_t sub_20C33E2A0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_20C33E4EC;
  }

  else
  {
    v8 = sub_20C33E438;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20C33E438()
{
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v4 = *(v0 + 104);

  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v1 = type metadata accessor for ForYouView(0, v0 + 16);
  sub_20C339FBC(1, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C33E4EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C33E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA8, &qword_20C3754C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20C3077F0(a3, v22 - v9, &qword_27C79EBA8, &qword_20C3754C0);
  v11 = sub_20C36CF24();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20C307858(v10, &qword_27C79EBA8, &qword_20C3754C0);
  }

  else
  {
    sub_20C36CF14();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20C36CEC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_20C36CDA4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_20C307858(a3, &qword_27C79EBA8, &qword_20C3754C0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20C307858(a3, &qword_27C79EBA8, &qword_20C3754C0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_20C33E804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double (*a4)()@<X3>, void *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v148 = a2;
  v144 = a1;
  v147 = a9;
  v125 = sub_20C36C4E4();
  v122 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v121 = v15;
  v139 = v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = a3;
  v174 = a3;
  v175 = a4;
  v151 = a4;
  v176 = a5;
  v177 = a6;
  v152 = a6;
  v153 = a7;
  v178 = a7;
  v179 = a8;
  v16 = type metadata accessor for ForYouView(0, &v174);
  OpaqueTypeConformance2 = *(v16 - 8);
  v138 = *(OpaqueTypeConformance2 + 64);
  MEMORY[0x28223BE20](v16);
  v149 = v108 - v17;
  v146 = a5;
  v18 = sub_20C36C544();
  v126 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v123 = v108 - v19;
  v20 = sub_20C36C544();
  v128 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v127 = v108 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA0, &qword_20C375280);
  v22 = sub_20C36C544();
  v131 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v130 = v108 - v23;
  v24 = sub_20C36C544();
  v134 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v133 = v108 - v25;
  v26 = sub_20C36C544();
  v137 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v136 = v108 - v27;
  v154 = a8;
  v172 = a8;
  v173 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  v29 = MEMORY[0x277CDF678];
  v118 = WitnessTable;
  v170 = WitnessTable;
  v171 = MEMORY[0x277CDF678];
  v129 = v20;
  v30 = swift_getWitnessTable();
  v31 = sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280, MEMORY[0x277CE01A0]);
  v119 = v30;
  v168 = v30;
  v169 = v31;
  v132 = v22;
  v32 = v148;
  v33 = swift_getWitnessTable();
  v166 = v33;
  v167 = MEMORY[0x277CDF748];
  v135 = v24;
  v124 = swift_getWitnessTable();
  v164 = v124;
  v165 = v29;
  v34 = swift_getWitnessTable();
  v37 = sub_20C341484(v34, v35, v36);
  v145 = v26;
  v174 = v26;
  v175 = MEMORY[0x277D85048];
  v155 = v34;
  v176 = v34;
  v177 = v37;
  v143 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = *(OpaqueTypeMetadata2 - 8);
  v39 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v41 = v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = v108 - v42;
  v140 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA8, &qword_20C375288);
  v142 = sub_20C36C734();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v156 = v108 - v44;
  v45 = v32;
  if (sub_20C339F5C(v16))
  {
    v108[1] = *(v16 + 76);
    v109 = v18;
    v46 = OpaqueTypeConformance2;
    v47 = *(OpaqueTypeConformance2 + 16);
    v115 = OpaqueTypeConformance2 + 16;
    v116 = v47;
    v48 = v149;
    v47(v149, v45, v16);
    v49 = v122;
    v50 = *(v122 + 16);
    v110 = v33;
    v117 = v41;
    v51 = v125;
    v50(v139, v144, v125);
    v52 = *(v46 + 80);
    v114 = ((v52 + 64) & ~v52) + v138;
    v53 = (v52 + 64) & ~v52;
    v112 = v53;
    v113 = v52 | 7;
    v54 = *(v49 + 80);
    v138 = OpaqueTypeMetadata2;
    v55 = (v114 + v54) & ~v54;
    v56 = swift_allocObject();
    v121 = v43;
    v57 = v56;
    v58 = v151;
    v56[2] = v150;
    v56[3] = v58;
    v59 = v146;
    v60 = v152;
    v56[4] = v146;
    v56[5] = v60;
    v61 = v154;
    v56[6] = v153;
    v56[7] = v61;
    v111 = *(v46 + 32);
    OpaqueTypeConformance2 = v46 + 32;
    v111(v56 + v53, v48, v16);
    v62 = v57 + v55;
    v63 = v155;
    (*(v49 + 32))(v62, v139, v51);
    v64 = v148;
    v65 = v123;
    sub_20C36CA94();

    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C36CC24();
    v66 = v127;
    v67 = v109;
    sub_20C36CA54();
    (*(v126 + 8))(v65, v67);
    sub_20C33A020(v16);
    v174 = sub_20C339E98(v16);
    v175 = v68;
    sub_20C34484C(v174, v68, v69);
    v70 = v130;
    v71 = v129;
    sub_20C36CAC4();

    (*(v128 + 8))(v66, v71);
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    v72 = v133;
    v73 = v132;
    sub_20C36CA64();
    (*(v131 + 8))(v70, v73);
    sub_20C36C4D4();
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C339E98(v16);
    v74 = v136;
    v75 = v135;
    sub_20C36CA54();
    (*(v134 + 8))(v72, v75);
    sub_20C36C4D4();
    v174 = v76;
    v77 = v149;
    v116(v149, v64, v16);
    v78 = swift_allocObject();
    v79 = v151;
    *(v78 + 2) = v150;
    *(v78 + 3) = v79;
    v80 = v152;
    *(v78 + 4) = v59;
    *(v78 + 5) = v80;
    v81 = v154;
    *(v78 + 6) = v153;
    *(v78 + 7) = v81;
    v111(&v78[v112], v77, v16);
    v82 = v117;
    v83 = v145;
    v84 = MEMORY[0x277D85048];
    v85 = v143;
    sub_20C36CAA4();

    (*(v137 + 8))(v74, v83);
    v174 = v83;
    v175 = v84;
    v176 = v63;
    v177 = v85;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v86 = v120;
    v87 = *(v120 + 16);
    v88 = v121;
    v89 = v138;
    v87(v121, v82, v138);
    v90 = *(v86 + 8);
    v90(v82, v89);
    v87(v82, v88, v89);
    v91 = sub_20C3414D8();
    sub_20C3607A4(v82, v89, v140, OpaqueTypeConformance2, v91);
    v90(v82, v89);
    v90(v88, v89);
  }

  else
  {
    v92 = sub_20C36CAF4();
    v93 = OpaqueTypeConformance2;
    v94 = v149;
    (*(OpaqueTypeConformance2 + 16))(v149, v45, v16);
    v95 = (*(v93 + 80) + 64) & ~*(v93 + 80);
    v96 = swift_allocObject();
    v97 = v151;
    *(v96 + 2) = v150;
    *(v96 + 3) = v97;
    v98 = v152;
    *(v96 + 4) = v146;
    *(v96 + 5) = v98;
    v99 = v154;
    *(v96 + 6) = v153;
    *(v96 + 7) = v99;
    (*(v93 + 32))(&v96[v95], v94, v16);
    v174 = v92;
    v175 = sub_20C344FCC;
    v176 = v96;
    v177 = 0;
    v178 = 0;
    v83 = v145;
    v160 = v145;
    v84 = MEMORY[0x277D85048];
    v161 = MEMORY[0x277D85048];
    v162 = v155;
    v85 = v143;
    v163 = v143;
    v100 = swift_getOpaqueTypeConformance2();
    v101 = sub_20C3414D8();
    sub_20C36089C(&v174, OpaqueTypeMetadata2, v140, v100, v101);
  }

  v174 = v83;
  v175 = v84;
  v176 = v155;
  v177 = v85;
  v102 = swift_getOpaqueTypeConformance2();
  v103 = sub_20C3414D8();
  v158 = v102;
  v159 = v103;
  v104 = v142;
  swift_getWitnessTable();
  v105 = v141;
  v106 = v156;
  (*(v141 + 16))(v147, v156, v104);
  return (*(v105 + 8))(v106, v104);
}

uint64_t sub_20C33F888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_20C36C4D4();
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v14 = type metadata accessor for ForYouView(0, v19);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  sub_20C36CC64();
  v15 = sub_20C36CC54();

  sub_20C33A074(v15, v14);
  sub_20C339FBC(1, v14);
  v16 = sub_20C36CC44();
  return sub_20C339EF8(v16, v17, v14);
}

double sub_20C33F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v36 = a9;
  v37[0] = a2;
  v37[1] = a3;
  v37[2] = a4;
  v37[3] = a5;
  v37[4] = a6;
  v37[5] = a7;
  v13 = type metadata accessor for ForYouView(0, v37);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA8, &qword_20C3754C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31 - v18;
  v20 = sub_20C36CC34();
  sub_20C339EF8(v20, v21, v13);
  v22 = sub_20C36CF24();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  (*(v14 + 16))(v16, a1, v13);
  sub_20C36CEF4();
  v23 = sub_20C36CEE4();
  v24 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 2) = v23;
  *(v25 + 3) = v26;
  *(v25 + 4) = a2;
  *(v25 + 5) = a3;
  v27 = v32;
  v28 = v33;
  *(v25 + 6) = a4;
  *(v25 + 7) = v27;
  v29 = v34;
  *(v25 + 8) = v28;
  *(v25 + 9) = v29;
  (*(v14 + 32))(&v25[v24], v16, v13);
  sub_20C33E558(0, 0, v19, v36, v25);

  return result;
}

uint64_t sub_20C33FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v14;
  v8[14] = v15;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_20C36D094();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  sub_20C36CEF4();
  v8[18] = sub_20C36CEE4();
  v11 = sub_20C36CEC4();
  v8[19] = v11;
  v8[20] = v10;

  return MEMORY[0x2822009F8](sub_20C33FCDC, v11, v10);
}

uint64_t sub_20C33FCDC()
{
  v1 = sub_20C36D384();
  v3 = v2;
  sub_20C36D2B4();
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_20C33FDBC;

  return sub_20C344ACC(v1, v3, 0, 0, 1);
}

uint64_t sub_20C33FDBC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_20C345598;
  }

  else
  {
    v8 = sub_20C345594;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20C33FF54@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_20C36C144();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_20C36CD64();
  MEMORY[0x28223BE20](v16 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v17 = qword_2810ED6B0;
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  type metadata accessor for ForYouView(0, v22);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  result = sub_20C36C934();
  *a8 = result;
  *(a8 + 8) = v19;
  *(a8 + 16) = v20 & 1;
  *(a8 + 24) = v21;
  return result;
}

uint64_t sub_20C340118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a9;
  v51[0] = a2;
  v45 = a2;
  v46 = a4;
  v51[1] = a3;
  v51[2] = a4;
  v48 = a7;
  v49 = a5;
  v51[3] = a5;
  v51[4] = a6;
  v47 = a6;
  v51[5] = a7;
  v14 = type metadata accessor for ForYouView(0, v51);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAB8, &qword_20C375298);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v44 = &v38 - v20;
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  if (LOBYTE(v51[0]) == 1)
  {
    v42 = a11;
    v43 = a12;
    (*(v15 + 16))(v17, a1, v14);
    v21 = (*(v15 + 80) + 64) & ~*(v15 + 80);
    v22 = swift_allocObject();
    v40 = a1;
    v41 = v18;
    v23 = v45;
    *(v22 + 2) = v45;
    *(v22 + 3) = a3;
    v39 = a3;
    v24 = v46;
    v25 = v47;
    v27 = v48;
    v26 = v49;
    *(v22 + 4) = v46;
    *(v22 + 5) = v26;
    *(v22 + 6) = v25;
    *(v22 + 7) = v27;
    v28 = (*(v15 + 32))(&v22[v21], v17, v14);
    MEMORY[0x28223BE20](v28);
    v29 = v39;
    *(&v38 - 8) = v23;
    *(&v38 - 7) = v29;
    v30 = v49;
    *(&v38 - 6) = v24;
    *(&v38 - 5) = v30;
    *(&v38 - 4) = v25;
    *(&v38 - 3) = v27;
    *(&v38 - 2) = v40;
    v31 = v44;
    sub_20C36CBA4();
    v32 = v50;
    v33 = v41;
    (*(v19 + 32))(v50, v31, v41);
    v34 = 0;
    v35 = v32;
    v36 = v33;
  }

  else
  {
    v34 = 1;
    v35 = v50;
    v36 = v18;
  }

  return (*(v19 + 56))(v35, v34, 1, v36);
}

uint64_t sub_20C34040C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_20C36C144();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_20C36CD64();
  MEMORY[0x28223BE20](v16 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v17 = qword_2810ED6B0;
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  type metadata accessor for ForYouView(0, v22);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  result = sub_20C36C934();
  *a8 = result;
  *(a8 + 8) = v19;
  *(a8 + 16) = v20 & 1;
  *(a8 + 24) = v21;
  return result;
}

uint64_t sub_20C3405D0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_20C36C144();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_20C36CD64();
  MEMORY[0x28223BE20](v16 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v17 = qword_2810ED6B0;
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  type metadata accessor for ForYouView(0, v22);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  result = sub_20C36C934();
  *a8 = result;
  *(a8 + 8) = v19;
  *(a8 + 16) = v20 & 1;
  *(a8 + 24) = v21;
  return result;
}

uint64_t sub_20C340794@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C36CB34();
  *a1 = result;
  return result;
}

uint64_t sub_20C3407CC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_20C36C144();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_20C36CD64();
  MEMORY[0x28223BE20](v16 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v17 = qword_2810ED6B0;
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  type metadata accessor for ForYouView(0, v22);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  result = sub_20C36C934();
  *a8 = result;
  *(a8 + 8) = v19;
  *(a8 + 16) = v20 & 1;
  *(a8 + 24) = v21;
  return result;
}

uint64_t sub_20C340990@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C36CB34();
  *a1 = result;
  return result;
}

uint64_t sub_20C3409D0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_20C36C144();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_20C36CD64();
  MEMORY[0x28223BE20](v16 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v17 = qword_2810ED6B0;
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  type metadata accessor for ForYouView(0, v22);
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  result = sub_20C36C934();
  *a8 = result;
  *(a8 + 8) = v19;
  *(a8 + 16) = v20 & 1;
  *(a8 + 24) = v21;
  return result;
}

uint64_t sub_20C340B94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C36CB34();
  *a1 = result;
  return result;
}

uint64_t ForYouView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v72 = *(a1 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](a1);
  v71 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v77 = sub_20C36C1C4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EA98, &qword_20C375278);
  v5 = *(a1 + 32);
  v67 = v4;
  *&v68 = v5;
  v75 = a1;
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA0, &qword_20C375280);
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA8, &qword_20C375288);
  sub_20C36C734();
  sub_20C36CB24();
  v66 = sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  v6 = sub_20C36C544();
  v76 = *(a1 + 56);
  v112 = v76;
  v113 = MEMORY[0x277CE0790];
  v7 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277CDF678];
  v110 = WitnessTable;
  v111 = MEMORY[0x277CDF678];
  v69 = v7;
  v10 = swift_getWitnessTable();
  v11 = sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280, MEMORY[0x277CE01A0]);
  v108 = v10;
  v109 = v11;
  v106 = swift_getWitnessTable();
  v107 = MEMORY[0x277CDF748];
  v104 = swift_getWitnessTable();
  v105 = v9;
  v12 = swift_getWitnessTable();
  v15 = sub_20C341484(v12, v13, v14);
  v16 = MEMORY[0x277D85048];
  v96 = v6;
  v97 = MEMORY[0x277D85048];
  v98 = v12;
  v99 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_20C36C734();
  v96 = v6;
  v97 = v16;
  v98 = v12;
  v99 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_20C3414D8();
  v102 = OpaqueTypeConformance2;
  v103 = v18;
  swift_getWitnessTable();
  sub_20C36C504();
  sub_20C36C544();
  sub_20C36C734();
  v19 = MEMORY[0x277CE0BD8];
  swift_getTupleTypeMetadata2();
  v20 = sub_20C36CC74();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAB0, &qword_20C375290);
  v22 = swift_getWitnessTable();
  v23 = sub_20C34155C();
  v96 = v20;
  v97 = v19;
  v98 = v21;
  v99 = v22;
  v100 = MEMORY[0x277CE0BC8];
  v101 = v23;
  sub_20C36C784();
  sub_20C36C734();
  v59[0] = sub_20C36C734();
  v59[1] = sub_20C36C734();
  v24 = v75;
  v77 = *(v75 + 16);
  v62 = sub_20C36C734();
  v63 = sub_20C36C734();
  v60 = sub_20C36CB24();
  v67 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v61 = v59 - v25;
  v26 = sub_20C36C544();
  v66 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v64 = v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v65 = v59 - v29;
  *&v30 = v68;
  v31 = v24;
  v32 = *(v24 + 40);
  v33 = *(v31 + 48);
  *(&v30 + 1) = v32;
  v68 = v30;
  v78 = v77;
  v79 = v30;
  v80 = v33;
  v81 = v76;
  v34 = v70;
  v82 = v70;
  v35 = sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
  v36 = sub_20C34323C();
  v37 = swift_getWitnessTable();
  v94 = v35;
  v95 = v37;
  v38 = swift_getWitnessTable();
  v92 = v36;
  v93 = v38;
  v39 = swift_getWitnessTable();
  v90 = v35;
  v91 = v39;
  v88 = swift_getWitnessTable();
  v89 = v32;
  v40 = swift_getWitnessTable();
  v86 = v33;
  v87 = v40;
  v41 = swift_getWitnessTable();
  v42 = v61;
  sub_20C36CB14();
  v44 = v71;
  v43 = v72;
  v45 = v75;
  (*(v72 + 16))(v71, v34, v75);
  v46 = v43;
  v47 = (*(v43 + 80) + 64) & ~*(v43 + 80);
  v48 = swift_allocObject();
  *&v49 = v33;
  *(&v49 + 1) = v76;
  *(v48 + 3) = v49;
  v50 = v68;
  *(v48 + 1) = v77;
  *(v48 + 2) = v50;
  (*(v46 + 32))(&v48[v47], v44, v45);
  v85 = v41;
  v51 = v60;
  v52 = swift_getWitnessTable();
  v53 = v64;
  sub_20C36CA94();

  (*(v67 + 8))(v42, v51);
  v83 = v52;
  v84 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v54 = v65;
  v55 = v66;
  v56 = *(v66 + 16);
  v56(v65, v53, v26);
  v57 = *(v55 + 8);
  v57(v53, v26);
  v56(v74, v54, v26);
  return (v57)(v54, v26);
}