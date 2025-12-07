uint64_t sub_2178A7EE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_217967B8C();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB58, &unk_21796C8E8) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
  v5 = *MEMORY[0x277CE1050];
  v6 = sub_217967BCC();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  v7 = sub_217967B3C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB40, &qword_21796C8E0);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v7;
  return result;
}

uint64_t sub_2178A8004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a2;
  v47 = a1;
  v49 = a5;
  v41 = sub_21796595C();
  v58 = v41;
  v59 = a3;
  v43 = a3;
  v38 = sub_2178AA01C(&qword_27CB8B808);
  v60 = v38;
  v61 = a4;
  v44 = a4;
  v7 = _s17SearchContentViewVMa(0, &v58);
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v8;
  v50 = v9;
  v10 = sub_21796698C();
  v46 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8BB98, &qword_21796C948);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v19 = sub_21796944C();
  v48 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  sub_2179682FC();
  LOBYTE(a3) = sub_2178D2BD4();
  (*(v16 + 8))(v18, v15);
  v25 = MEMORY[0x277CDF918];
  if (a3)
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v10);
    WitnessTable = swift_getWitnessTable();
    v52 = v25;
    swift_getWitnessTable();
  }

  else
  {
    sub_2179682FC();
    v26 = *(v45 + 192);
    v27 = *(v45 + 200);
    v28 = *(v45 + 208);
    LOBYTE(v58) = *(v45 + 184);
    v59 = v26;
    v60 = v27;
    v61 = v28;
    v29 = v39;
    sub_2178CF3F0(v18, &v58, v41, v38, v39, v43, v44);

    sub_217863EC4(v28);
    sub_21796742C();
    v30 = v50;
    v31 = swift_getWitnessTable();
    sub_217967A0C();
    (*(v42 + 8))(v29, v30);
    v56 = v31;
    v57 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v32 = v40;
    sub_2179560E4();
    v33 = v46;
    v34 = *(v46 + 8);
    v34(v13, v10);
    sub_2179560E4();
    v34(v32, v10);
    (*(v33 + 32))(v22, v13, v10);
    v25 = MEMORY[0x277CDF918];
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v10);
  }

  sub_2178AEE20(v22, v24);
  v35 = *(v48 + 8);
  v35(v22, v19);
  v54 = swift_getWitnessTable();
  v55 = v25;
  v53 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4();
  return (v35)(v24, v19);
}

uint64_t sub_2178A86C4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v6);
  v7 = v0[6];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v7);
  v8 = v0[7];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v8);
  v9 = v0[8];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v9);
  v10 = v0[9];
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v10);
  v11 = v0[10];
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v11);
  v12 = v0[11];
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v12);
}

uint64_t sub_2178A87E4()
{
  sub_21796973C();
  sub_2178A86C4();
  return sub_21796977C();
}

BOOL sub_2178A882C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_2178A85F8(v4, __dst);
}

uint64_t sub_2178A8924(uint64_t a1)
{
  sub_21796973C();
  memcpy(__dst, v1, sizeof(__dst));
  sub_2178A86C4();
  return sub_21796977C();
}

unint64_t sub_2178A89B0()
{
  result = qword_27CB8B848;
  if (!qword_27CB8B848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B850, &qword_21796C688);
    sub_217898FF8(&unk_27CB8B858);
    sub_2178A8A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B848);
  }

  return result;
}

unint64_t sub_2178A8A68()
{
  result = qword_27CB8B868;
  if (!qword_27CB8B868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B870, &qword_21796C698);
    sub_217898FF8(&qword_27CB8B878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B868);
  }

  return result;
}

unint64_t sub_2178A8B34()
{
  result = qword_27CB8B8A8;
  if (!qword_27CB8B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B828, &qword_21796C670);
    sub_2178A8BEC(&unk_27CB8B8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B8A8);
  }

  return result;
}

unint64_t sub_2178A8BEC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2178A8C98()
{
  result = qword_27CB8B8D0;
  if (!qword_27CB8B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B8D8, &qword_21796C6D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B8E0, &qword_21796C6D8);
    sub_21796701C();
    sub_2178A8D80();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B8D0);
  }

  return result;
}

unint64_t sub_2178A8D80()
{
  result = qword_27CB8B8E8;
  if (!qword_27CB8B8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B8E0, &qword_21796C6D8);
    sub_217898FF8(&unk_27CB8B8F0);
    sub_2178AA01C(&qword_27CB8A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B8E8);
  }

  return result;
}

unint64_t sub_2178A8E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8B918;
  if (!qword_27CB8B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B918);
  }

  return result;
}

unint64_t sub_2178A8EC8()
{
  result = qword_27CB8B920;
  if (!qword_27CB8B920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B910, &qword_21796C730);
    sub_2178A8F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B920);
  }

  return result;
}

unint64_t sub_2178A8F4C()
{
  result = qword_27CB8B928;
  if (!qword_27CB8B928)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B930, &qword_21796C738);
    sub_2178A8E74(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_2178AA01C(&qword_27CB8A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B928);
  }

  return result;
}

unint64_t sub_2178A9048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8B948;
  if (!qword_27CB8B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B948);
  }

  return result;
}

uint64_t sub_2178A909C(uint64_t a1, uint64_t a2)
{
  v4 = _s12SearchColumnVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178A9100(uint64_t a1, uint64_t a2)
{
  v4 = _s12SearchColumnVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178A9170(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2178A91F8()
{
  result = qword_27CB8B970;
  if (!qword_27CB8B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B7F8, &qword_21796C650);
    sub_217898FF8(&unk_27CB8B978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B970);
  }

  return result;
}

unint64_t sub_2178A92BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    OUTLINED_FUNCTION_0_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2178A932C()
{
  result = qword_27CB8B9E8;
  if (!qword_27CB8B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B998, &qword_21796C780);
    sub_217898FF8(&unk_27CB8B9E0);
    sub_2178AA01C(&qword_27CB8A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B9E8);
  }

  return result;
}

uint64_t sub_2178A9414@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217966B9C();
  *a1 = result;
  return result;
}

unint64_t sub_2178A946C()
{
  result = qword_27CB8B9F8;
  if (!qword_27CB8B9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B9C0, &qword_21796C7A8);
    sub_2178A8BEC(&unk_27CB8BA00);
    sub_217898FF8(&qword_27CB8ADF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8B9F8);
  }

  return result;
}

unint64_t sub_2178A9550()
{
  result = qword_27CB8BA08;
  if (!qword_27CB8BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B9B0, &qword_21796C798);
    sub_2178A9608();
    sub_217898FF8(&unk_27CB8B4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BA08);
  }

  return result;
}

unint64_t sub_2178A9608()
{
  result = qword_27CB8BA10;
  if (!qword_27CB8BA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B9A8, &qword_21796C790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B998, &qword_21796C780);
    sub_21796707C();
    sub_2178A932C();
    sub_2178AA01C(&unk_27CB8B9F0);
    swift_getOpaqueTypeConformance2();
    sub_217898FF8(&qword_27CB8A8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BA10);
  }

  return result;
}

unint64_t sub_2178A977C()
{
  result = qword_27CB8BA50;
  if (!qword_27CB8BA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BA48, &qword_21796C860);
    sub_217898FF8(&unk_27CB8BA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BA50);
  }

  return result;
}

unint64_t sub_2178A982C()
{
  result = qword_27CB8BA70;
  if (!qword_27CB8BA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BA40, &qword_21796C858);
    sub_217898FF8(&unk_27CB8BA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BA70);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  if (*(v0 + 88))
  {
    if (*(v0 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 48));
    }
  }

  else
  {
  }

  sub_2178643E0(*(v0 + 136));

  sub_2178643E0(*(v0 + 176));

  sub_2178643E0(*(v0 + 208));

  sub_2178643E0(*(v0 + 240));

  return swift_deallocObject();
}

uint64_t sub_2178A999C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_21796843C() - 8);
  v4 = v0 + ((*(v3 + 80) + 344) & ~*(v3 + 80));

  return sub_2178A7510(v0 + 4, v4, v1, v2);
}

unint64_t sub_2178A9A58()
{
  result = qword_27CB8BAE0;
  if (!qword_27CB8BAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BAE8, &qword_21796C8B0);
    sub_217898FF8(&unk_27CB8BAF0);
    sub_217898FF8(&qword_27CB8BB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BAE0);
  }

  return result;
}

unint64_t sub_2178A9B3C()
{
  result = qword_27CB8BB18;
  if (!qword_27CB8BB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BAA8, &qword_21796C888);
    sub_217898FF8(&unk_27CB8BB10);
    sub_2178AA01C(&qword_27CB8A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BB18);
  }

  return result;
}

unint64_t sub_2178A9C24()
{
  result = qword_27CB8BB20;
  if (!qword_27CB8BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BAB0, &qword_21796C890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BAA8, &qword_21796C888);
    sub_2179669FC();
    sub_2178A9B3C();
    sub_2178AA01C(&qword_27CB8A708);
    swift_getOpaqueTypeConformance2();
    sub_217898FF8(&qword_27CB8ADF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BB20);
  }

  return result;
}

unint64_t sub_2178A9D74()
{
  result = qword_27CB8BB48;
  if (!qword_27CB8BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB40, &qword_21796C8E0);
    sub_2178A9E2C();
    sub_217898FF8(&qword_27CB8A8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BB48);
  }

  return result;
}

unint64_t sub_2178A9E2C()
{
  result = qword_27CB8BB50;
  if (!qword_27CB8BB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB58, &unk_21796C8E8);
    sub_217898FF8(&qword_27CB8B4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BB50);
  }

  return result;
}

uint64_t sub_2178A9F08(uint64_t a1)
{
  sub_217967BCC();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_217966B0C();
}

unint64_t sub_2178A9FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8BB80;
  if (!qword_27CB8BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BB80);
  }

  return result;
}

unint64_t sub_2178AA01C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2178AA060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2178AA0A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178AA0C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_30_1(void *a1)
{
  a1[2] = v2;
  a1[3] = v3;
  v5 = a1 + 4;

  return memcpy(v5, (v1 + 344), 0x138uLL);
}

BOOL sub_2178AA300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(0, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  v4 = sub_217966A9C();
  v5 = sub_2178DA794(v4);

  if (v5)
  {
    return 0;
  }

  v7 = sub_217966A9C();
  sub_2178DB500(v7, v8);
  v10 = v9;

  return sub_217872FB4(v10 & 1, 1);
}

double sub_2178AA400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2178AA91C(a1, a2, a3, a4);
  __src[14] = v44;
  __src[15] = v45;
  v48 = v46;
  (*(*(a1 - 8) + 16))(__src, v4, a1);
  v43 = swift_allocObject();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v43[2] = v6;
  v43[3] = v7;
  memcpy(v43 + 4, __src, 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
  v42 = sub_2179688CC();
  OUTLINED_FUNCTION_8_3();
  v41 = sub_2178AEB74(v9, v10, &unk_217971AF0);
  v49 = v42;
  v50 = v6;
  v51 = v41;
  v52 = v7;
  v11 = OUTLINED_FUNCTION_13_3();
  v13 = _s13ItemShelfCellVMa(v11, v12);
  OUTLINED_FUNCTION_24();
  v16 = sub_217864B2C(v14, &qword_27CB8B0A8, &unk_21796B760, v15);
  v19 = sub_21786438C(v16, v17, v18);
  v49 = v8;
  v50 = MEMORY[0x277CD7E90];
  v51 = v13;
  v52 = v16;
  v53 = v19;
  OUTLINED_FUNCTION_13_3();
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  sub_21796944C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
  _s15LibraryMenuViewVMa(255, v6, v7, v20);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
  v49 = v42;
  v50 = v6;
  v51 = v41;
  v52 = v7;
  v22 = OUTLINED_FUNCTION_13_3();
  v24 = _s9ItemShelfVMa(v22, v23);
  OUTLINED_FUNCTION_14_2();
  v27 = sub_217864B2C(v25, &qword_27CB8BCB0, &qword_21796CB90, v26);
  v30 = sub_2178AE958(v27, v28, v29);
  v49 = v21;
  v50 = &_s8ModuleIDON;
  v51 = v24;
  v52 = v27;
  v53 = v30;
  OUTLINED_FUNCTION_13_3();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CDC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_21796666C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_21796686C();
  v31 = sub_217966F9C();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20();
  WitnessTable = swift_getWitnessTable();
  sub_2178D0790(sub_2178AE94C, v43, v31, WitnessTable);

  sub_217873C88(v44, v45);
  v33 = v49;
  v34 = v50;
  v35 = sub_21796698C();
  sub_217864644(v35, v36, v37);
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  sub_2179560E4();
  sub_217873C88(v33, v34);

  v38 = __src[0];
  v39 = __src[1];
  v49 = __src[0];
  v50 = __src[1];
  LOBYTE(v51) = __src[2];
  v52 = __src[3];
  v53 = __src[4];
  v54 = __src[5];
  v55 = __src[6];
  sub_2179560E4();
  sub_217873C88(v38, v39);

  return result;
}

uint64_t sub_2178AA91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (sub_2178AA300(a1, a2, a3, a4))
  {
    sub_2178AB694(v4, &v65);
    v63 = v65;
    v64 = v66;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
    v57 = sub_2179688CC();
    v6 = *(v4 + 16);
    v55 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
    v7 = *(v4 + 24);
    *&v59 = v57;
    *(&v59 + 1) = v6;
    v60 = v55;
    v61 = v7;
    v8 = _s13ItemShelfCellVMa(255, &v59);
    v9 = sub_217864B2C(&qword_27CB8BCA0, &qword_27CB8B0A8, &unk_21796B760, MEMORY[0x277CD7CB0]);
    v12 = sub_21786438C(v9, v10, v11);
    *&v59 = v5;
    *(&v59 + 1) = MEMORY[0x277CD7E90];
    v60 = v8;
    v61 = v9;
    v62 = v12;
    sub_217967D9C();
    sub_21796698C();
    swift_getTupleTypeMetadata2();
    sub_217967E9C();
    sub_21796944C();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_217967CDC();
    swift_getWitnessTable();
    sub_21796666C();
    swift_getWitnessTable();
    sub_21796686C();
    swift_getWitnessTable();
    sub_2179560E4();

    v59 = v58;
    sub_2179560E4();
    v63 = v65;
    v64 = v66;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
    _s15LibraryMenuViewVMa(255, v6, v7, v13);
    sub_21796698C();
    sub_21796698C();
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
    *&v59 = v57;
    *(&v59 + 1) = v6;
    v60 = v55;
    v61 = v7;
    v15 = _s9ItemShelfVMa(255, &v59);
    v16 = sub_217864B2C(&qword_27CB8BCB8, &qword_27CB8BCB0, &qword_21796CB90, MEMORY[0x277D83980]);
    v19 = sub_2178AE958(v16, v17, v18);
    *&v59 = v14;
    *(&v59 + 1) = &_s8ModuleIDON;
    v60 = v15;
    v61 = v16;
    v62 = v19;
    sub_217967D9C();
    sub_21796698C();
    swift_getTupleTypeMetadata3();
    sub_217967E9C();
    swift_getWitnessTable();
    sub_217967CDC();
    swift_getWitnessTable();
    sub_21796666C();
    swift_getWitnessTable();
    sub_21796686C();
    swift_getWitnessTable();
    sub_217952EE8();
  }

  else
  {
    sub_2178AB938(v4, &v65);
    v63 = v65;
    v64 = v66;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
    v21 = *(v4 + 16);
    v20 = *(v4 + 24);
    _s15LibraryMenuViewVMa(255, v21, v20, v22);
    sub_21796698C();
    sub_21796698C();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
    v56 = v4;
    v24 = sub_2179688CC();
    v52 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
    *&v59 = v24;
    *(&v59 + 1) = v21;
    v60 = v52;
    v61 = v20;
    v25 = _s9ItemShelfVMa(255, &v59);
    v26 = sub_217864B2C(&qword_27CB8BCB8, &qword_27CB8BCB0, &qword_21796CB90, MEMORY[0x277D83980]);
    v29 = sub_2178AE958(v26, v27, v28);
    *&v59 = v23;
    *(&v59 + 1) = &_s8ModuleIDON;
    v60 = v25;
    v61 = v26;
    v62 = v29;
    sub_217967D9C();
    sub_21796698C();
    swift_getTupleTypeMetadata3();
    sub_217967E9C();
    swift_getWitnessTable();
    sub_217967CDC();
    swift_getWitnessTable();
    sub_21796666C();
    swift_getWitnessTable();
    sub_21796686C();
    swift_getWitnessTable();
    sub_2179560E4();

    v59 = v58;
    sub_2179560E4();
    v63 = v65;
    v64 = v66;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
    v57 = v24;
    *&v59 = v24;
    *(&v59 + 1) = v21;
    v4 = v56;
    v60 = v52;
    v61 = v20;
    v31 = _s13ItemShelfCellVMa(255, &v59);
    v32 = sub_217864B2C(&qword_27CB8BCA0, &qword_27CB8B0A8, &unk_21796B760, MEMORY[0x277CD7CB0]);
    v35 = sub_21786438C(v32, v33, v34);
    *&v59 = v30;
    *(&v59 + 1) = MEMORY[0x277CD7E90];
    v60 = v31;
    v61 = v32;
    v62 = v35;
    sub_217967D9C();
    sub_21796698C();
    swift_getTupleTypeMetadata2();
    sub_217967E9C();
    sub_21796944C();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_217967CDC();
    swift_getWitnessTable();
    sub_21796666C();
    swift_getWitnessTable();
    sub_21796686C();
    swift_getWitnessTable();
    sub_217952FA4();
  }

  v54 = v59;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
  sub_2179688CC();
  v37 = *(v4 + 16);
  v53 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v38 = *(v4 + 24);
  *&v59 = v57;
  *(&v59 + 1) = v37;
  v60 = v53;
  v61 = v38;
  v39 = _s13ItemShelfCellVMa(255, &v59);
  v40 = sub_217864B2C(&qword_27CB8BCA0, &qword_27CB8B0A8, &unk_21796B760, MEMORY[0x277CD7CB0]);
  v43 = sub_21786438C(v40, v41, v42);
  *&v59 = v36;
  *(&v59 + 1) = MEMORY[0x277CD7E90];
  v60 = v39;
  v61 = v40;
  v62 = v43;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217967CDC();
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  sub_21796686C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
  _s15LibraryMenuViewVMa(255, v37, v38, v44);
  sub_21796698C();
  sub_21796698C();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
  *&v59 = v57;
  *(&v59 + 1) = v37;
  v60 = v53;
  v61 = v38;
  v46 = _s9ItemShelfVMa(255, &v59);
  v47 = sub_217864B2C(&qword_27CB8BCB8, &qword_27CB8BCB0, &qword_21796CB90, MEMORY[0x277D83980]);
  v50 = sub_2178AE958(v47, v48, v49);
  *&v59 = v45;
  *(&v59 + 1) = &_s8ModuleIDON;
  v60 = v46;
  v61 = v47;
  v62 = v50;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  sub_21796686C();
  sub_217966F9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4();
  return sub_217873C88(v54, *(&v54 + 1));
}

uint64_t sub_2178AB5F4(uint64_t a1)
{
  sub_217956100();
  v1 = v6;
  if (!v6)
  {
    return sub_2178653BC(v5, &qword_27CB8A630, qword_21796A7B0);
  }

  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v4 = 0x8000000000000000;
  (*(v2 + 8))(&v4, v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_2178AB694@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*(a1 - 8) + 16))(__src, v2, a1);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v5[2] = v6;
  v5[3] = v7;
  memcpy(v5 + 4, __src, 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
  v9 = sub_2179688CC();
  v10 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  __src[0] = v9;
  __src[1] = v6;
  __src[2] = v10;
  __src[3] = v7;
  v11 = _s13ItemShelfCellVMa(255, __src);
  v12 = sub_217864B2C(&qword_27CB8BCA0, &qword_27CB8B0A8, &unk_21796B760, MEMORY[0x277CD7CB0]);
  v15 = sub_21786438C(v12, v13, v14);
  __src[0] = v8;
  __src[1] = MEMORY[0x277CD7E90];
  __src[2] = v11;
  __src[3] = v12;
  __src[4] = v15;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217967CDC();
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  result = sub_21796685C();
  *a2 = result;
  a2[1] = v17;
  return result;
}

uint64_t sub_2178AB938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*(a1 - 8) + 16))(__src, v2, a1);
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v4[2] = v5;
  v4[3] = v6;
  memcpy(v4 + 4, __src, 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
  _s15LibraryMenuViewVMa(255, v5, v6, v7);
  sub_21796698C();
  sub_21796698C();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
  v9 = sub_2179688CC();
  v10 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  __src[0] = v9;
  __src[1] = v5;
  __src[2] = v10;
  __src[3] = v6;
  v11 = _s9ItemShelfVMa(255, __src);
  v12 = sub_217864B2C(&qword_27CB8BCB8, &qword_27CB8BCB0, &qword_21796CB90, MEMORY[0x277D83980]);
  v15 = sub_2178AE958(v12, v13, v14);
  __src[0] = v8;
  __src[1] = &_s8ModuleIDON;
  __src[2] = v11;
  __src[3] = v12;
  __src[4] = v15;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  result = sub_21796685C();
  *a2 = result;
  a2[1] = v17;
  return result;
}

uint64_t sub_2178ABBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
  v30 = sub_2179688CC();
  v31 = a3;
  v32 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v33 = a4;
  v8 = _s13ItemShelfCellVMa(255, &v30);
  v9 = sub_217864B2C(&qword_27CB8BCA0, &qword_27CB8B0A8, &unk_21796B760, MEMORY[0x277CD7CB0]);
  v12 = sub_21786438C(v9, v10, v11);
  v30 = v7;
  v31 = MEMORY[0x277CD7E90];
  v32 = v8;
  v33 = v9;
  v34 = v12;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = sub_217967CDC();
  v14 = swift_getWitnessTable();
  v15 = sub_21796666C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v25[-v20];
  v22 = sub_2179673DC();
  v26 = a3;
  v27 = a4;
  v28 = a2;
  sub_21789AA60(v22, sub_2178AE9B8, v25, v13, v14);
  swift_getWitnessTable();
  sub_2179560E4();
  v23 = *(v16 + 8);
  v23(v19, v15);
  sub_2179560E4();
  return (v23)(v21, v15);
}

uint64_t sub_2178ABF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
  v26 = sub_2179688CC();
  v27 = a2;
  v28 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v29 = a3;
  v7 = _s13ItemShelfCellVMa(255, &v26);
  v8 = sub_217864B2C(&qword_27CB8BCA0, &qword_27CB8B0A8, &unk_21796B760, MEMORY[0x277CD7CB0]);
  v11 = sub_21786438C(v8, v9, v10);
  v26 = v6;
  v27 = MEMORY[0x277CD7E90];
  v28 = v7;
  v29 = v8;
  v30 = v11;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = sub_217967CDC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v21[-v17];
  sub_217966E6C();
  v22 = a2;
  v23 = a3;
  v24 = a1;
  sub_217967CCC();
  swift_getWitnessTable();
  sub_2179560E4();
  v19 = *(v13 + 8);
  v19(v16, v12);
  sub_2179560E4();
  return (v19)(v18, v12);
}

uint64_t sub_2178AC238@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a4;
  v94 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
  v101[0] = sub_2179688CC();
  v101[1] = a2;
  v101[2] = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v101[3] = a3;
  v9 = _s13ItemShelfCellVMa(255, v101);
  v10 = sub_217864B2C(&qword_27CB8BCA0, &qword_27CB8B0A8, &unk_21796B760, MEMORY[0x277CD7CB0]);
  v13 = sub_21786438C(v10, v11, v12);
  v101[0] = v8;
  v101[1] = MEMORY[0x277CD7E90];
  v79 = v9;
  v101[2] = v9;
  v76 = v10;
  v101[3] = v10;
  v101[4] = v13;
  v14 = sub_217967D9C();
  v15 = sub_21796698C();
  v86 = v7;
  swift_getTupleTypeMetadata2();
  v16 = sub_217967E9C();
  v85 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v84 = &v68 - v18;
  v80 = v14;
  v75 = *(v14 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v74 = &v68 - v20;
  v77 = *(v15 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v82 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = &v68 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v68 - v26;
  v88 = *(v8 - 8);
  v28 = MEMORY[0x28223BE20](v25);
  v73 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v87 = &v68 - v30;
  v92 = sub_21796944C();
  v90 = *(v92 - 8);
  v31 = MEMORY[0x28223BE20](v92);
  v89 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v91 = &v68 - v33;
  v83 = a1;
  v78 = a2;
  _s9ViewModelCMa(0, a2, v94, v34);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D852C();

  if (__swift_getEnumTagSinglePayload(v27, 1, v8) == 1)
  {
    sub_2178653BC(v27, &qword_27CB8B0A0, &qword_21796B758);
    v35 = v89;
    __swift_storeEnumTagSinglePayload(v89, 1, 1, v16);
  }

  else
  {
    v70 = v15;
    v71 = v16;
    v37 = v88;
    v38 = v87;
    v39 = v8;
    (*(v88 + 32))();
    sub_217966A9C();
    v69 = sub_2178DBA5C();
    v72 = v40;

    sub_217966A9C();
    v41 = sub_2178DBA5C();
    v43 = v42;

    v44 = v78;
    v45 = v94;
    v47 = _s15LandingPageViewVMa(0, v78, v94, v46);
    sub_2178ACC98(v41, v43, v47, v101);

    memcpy(v100, v101, 0xA9uLL);
    v48 = v38;
    v49 = v39;
    (*(v37 + 16))(v73, v48, v39);
    v50 = swift_allocObject();
    *(v50 + 16) = v44;
    *(v50 + 24) = v45;
    *(v50 + 32) = 1;
    *(v50 + 40) = v69;
    *(v50 + 48) = v72;
    *(v50 + 56) = 0x8000000000000000;

    sub_217863EC4(0x8000000000000000);
    WitnessTable = swift_getWitnessTable();
    sub_2178AEB74(&qword_27CB8BCC8, MEMORY[0x277CD8238], MEMORY[0x277CD8268]);
    v52 = v74;
    v53 = v49;
    sub_217967D8C();
    sub_21796742C();
    v99[4] = WitnessTable;
    v54 = v80;
    v55 = swift_getWitnessTable();
    v56 = v82;
    sub_217967A0C();
    (*(v75 + 8))(v52, v54);
    v99[2] = v55;
    v99[3] = MEMORY[0x277CDF918];
    v57 = v70;
    v58 = swift_getWitnessTable();
    v59 = v81;
    sub_2179560E4();
    v60 = v77;
    v61 = *(v77 + 8);
    v61(v56, v57);
    memcpy(v98, v100, 0xA9uLL);
    v99[0] = v98;
    (*(v60 + 16))(v56, v59, v57);
    v99[1] = v56;
    sub_2178AEC6C(v100, v101, &qword_27CB8AEC8, &qword_21796B618);
    v97[0] = v86;
    v97[1] = v57;
    v95 = sub_2178AE9E4(&qword_27CB8AED0, &qword_27CB8AEC8, &qword_21796B618, sub_21788CABC);
    v96 = v58;
    v62 = v84;
    sub_2178B9390(v99, 2, v97);
    sub_2178653BC(v100, &qword_27CB8AEC8, &qword_21796B618);

    sub_2178643E0(0x8000000000000000);
    v61(v59, v57);
    (*(v88 + 8))(v87, v53);
    v61(v56, v57);
    memcpy(v101, v98, 0xA9uLL);
    sub_2178653BC(v101, &qword_27CB8AEC8, &qword_21796B618);
    v35 = v89;
    v63 = v71;
    (*(v85 + 32))(v89, v62, v71);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v63);
  }

  swift_getWitnessTable();
  v36 = v91;
  sub_2178AEE20(v35, v91);
  v64 = *(v90 + 8);
  v65 = v35;
  v66 = v92;
  v64(v65, v92);
  v101[22] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4();
  return (v64)(v36, v66);
}

void sub_2178ACC98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_217873C34(a1, a2, a3);

  v5 = sub_21796763C();
  v7 = v6;
  v9 = v8;
  sub_21796747C();
  sub_21796748C();

  v10 = sub_2179675DC();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_21788C9B8(v5, v7, v9 & 1);

  LOBYTE(v5) = sub_21796740C();
  LOBYTE(v7) = sub_21796741C();
  sub_21796660C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_21796742C();
  sub_21796660C();
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
  *(a4 + 32) = v5;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 1;
  *(a4 + 80) = v7;
  *(a4 + 88) = v18;
  *(a4 + 96) = v20;
  *(a4 + 104) = v22;
  *(a4 + 112) = v24;
  *(a4 + 120) = 0;
  *(a4 + 128) = v25;
  *(a4 + 136) = v26;
  *(a4 + 144) = v27;
  *(a4 + 152) = v28;
  *(a4 + 160) = v29;
  *(a4 + 168) = 0;
}

uint64_t sub_2178ACE20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a7;
  v30 = a1;
  v32 = a3;
  v33 = a5;
  v31 = a2;
  v34 = a8;
  v11 = sub_2179688CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v35 = v11;
  v36 = a6;
  v37 = v15;
  v38 = a7;
  v16 = _s13ItemShelfCellVMa(0, &v35);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  (*(v12 + 16))(v14, v30, v11);
  LOBYTE(v35) = v31;
  v23 = v33;
  v36 = v32;
  v37 = a4;
  v38 = v33;

  sub_217863EC4(v23);
  v24 = sub_2178AA2C4();
  sub_21791B630(v14, &v35, 0, 0, 11, 0, 1, v24, v20, v25, v26, a6, v11, a6, v15, v29);
  swift_getWitnessTable();
  sub_2179560E4();
  v27 = *(v17 + 8);
  v27(v20, v16);
  sub_2179560E4();
  return (v27)(v22, v16);
}

uint64_t sub_2178AD0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[0] = a1;
  v27[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
  _s15LibraryMenuViewVMa(255, a3, a4, v8);
  sub_21796698C();
  sub_21796698C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
  v33 = sub_2179688CC();
  v34 = a3;
  v35 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v36 = a4;
  v10 = _s9ItemShelfVMa(255, &v33);
  v11 = sub_217864B2C(&qword_27CB8BCB8, &qword_27CB8BCB0, &qword_21796CB90, MEMORY[0x277D83980]);
  v14 = sub_2178AE958(v11, v12, v13);
  v33 = v9;
  v34 = &_s8ModuleIDON;
  v35 = v10;
  v36 = v11;
  v37 = v14;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  v15 = sub_217967CDC();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_21796666C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v27 - v22;
  v24 = sub_2179673DC();
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v32 = v27[0];
  sub_21789AA60(v24, sub_2178AEAC0, v28, v15, WitnessTable);
  swift_getWitnessTable();
  sub_2179560E4();
  v25 = *(v18 + 8);
  v25(v21, v17);
  sub_2179560E4();
  return (v25)(v23, v17);
}

uint64_t sub_2178AD41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[0] = a2;
  v24[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
  _s15LibraryMenuViewVMa(255, a3, a4, v8);
  sub_21796698C();
  sub_21796698C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
  v25 = sub_2179688CC();
  v26 = a3;
  v27 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v28 = a4;
  v10 = _s9ItemShelfVMa(255, &v25);
  v11 = sub_217864B2C(&qword_27CB8BCB8, &qword_27CB8BCB0, &qword_21796CB90, MEMORY[0x277D83980]);
  v14 = sub_2178AE958(v11, v12, v13);
  v25 = v9;
  v26 = &_s8ModuleIDON;
  v27 = v10;
  v28 = v11;
  v29 = v14;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  v15 = sub_217967CDC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v24 - v20;
  sub_217966E6C();
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = a1;
  v24[7] = v24[0];
  sub_217967CCC();
  swift_getWitnessTable();
  sub_2179560E4();
  v22 = *(v16 + 8);
  v22(v19, v15);
  sub_2179560E4();
  return (v22)(v21, v15);
}

uint64_t sub_2178AD73C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a2;
  v82 = a5;
  v8 = sub_21796681C();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = v9;
  v72 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
  v11 = sub_2179688CC();
  v12 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v97[0] = v11;
  v97[1] = a3;
  v97[2] = v12;
  v97[3] = a4;
  v13 = _s9ItemShelfVMa(255, v97);
  v14 = sub_217864B2C(&qword_27CB8BCB8, &qword_27CB8BCB0, &qword_21796CB90, MEMORY[0x277D83980]);
  v17 = sub_2178AE958(v14, v15, v16);
  v79 = v10;
  v97[0] = v10;
  v97[1] = &_s8ModuleIDON;
  v71 = v13;
  v97[2] = v13;
  v68 = v14;
  v97[3] = v14;
  v97[4] = v17;
  v18 = sub_217967D9C();
  v70 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v67 = &v59 - v19;
  v74 = v20;
  v81 = sub_21796698C();
  v78 = *(v81 - 8);
  v21 = MEMORY[0x28223BE20](v81);
  v77 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v59 - v23;
  if (*(a1 + 64) == 1)
  {
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v24 = sub_21796560C();
    v26 = v25;
    v28 = _s15LandingPageViewVMa(0, a3, a4, v27);
    sub_2178ACC98(v24, v26, v28, v97);

    memcpy(v96, v97, 0xA9uLL);
    nullsub_1();
    memcpy(v97, v96, 0xA9uLL);
  }

  else
  {
    sub_2178AEAD8(v97);
  }

  sub_2178B4CAC(v96, a3, a4, v29);
  v95[0] = v96[0];
  LOBYTE(v95[1]) = v96[1];
  *(&v95[1] + 1) = *(&v96[1] + 1);
  sub_21796742C();
  v61 = a4;
  _s15LibraryMenuViewVMa(0, a3, a4, v30);
  v60 = a3;
  WitnessTable = swift_getWitnessTable();
  sub_217967A0C();

  memcpy(v95, v88, 0x49uLL);
  sub_21796743C();
  v32 = sub_21796698C();
  v33 = MEMORY[0x277CDF918];
  v89[8] = WitnessTable;
  v89[9] = MEMORY[0x277CDF918];
  v62 = MEMORY[0x277CDFAD8];
  v34 = swift_getWitnessTable();
  sub_217967A0C();
  memcpy(v91, v95, 0x49uLL);
  (*(*(v32 - 8) + 8))(v91, v32);
  memcpy(v88, v96, 0x79uLL);
  v35 = sub_21796698C();
  v89[6] = v34;
  v89[7] = v33;
  v64 = swift_getWitnessTable();
  sub_2179560E4();
  memcpy(v92, v88, 0x79uLL);
  v63 = *(v35 - 8);
  v36 = *(v63 + 8);
  v65 = v63 + 8;
  v66 = v36;
  v36(v92, v35);
  v38 = v60;
  v37 = v61;
  _s9ViewModelCMa(0, v60, v61, v39);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178DB700();
  v41 = v40;

  *&v96[0] = v41;
  v43 = v75;
  v42 = v76;
  v44 = v72;
  (*(v75 + 16))(v72, v73, v76);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v38;
  *(v46 + 24) = v37;
  (*(v43 + 32))(v46 + v45, v44, v42);
  v47 = swift_getWitnessTable();
  sub_2178AEB74(&qword_27CB8BCD0, _s6ModuleVMa, &unk_2179729D4);
  v48 = v67;
  sub_217967D8C();
  sub_21796742C();
  v89[5] = v47;
  v49 = v74;
  v50 = swift_getWitnessTable();
  v51 = v77;
  sub_217967A0C();
  (*(v70 + 8))(v48, v49);
  v89[3] = v50;
  v89[4] = MEMORY[0x277CDF918];
  v52 = v81;
  v53 = swift_getWitnessTable();
  v54 = v80;
  sub_2179560E4();
  v55 = v78;
  v56 = *(v78 + 8);
  v56(v51, v52);
  memcpy(v88, v97, 0xA9uLL);
  v89[0] = v88;
  memcpy(v93, v90, 0x79uLL);
  memcpy(v87, v90, 0x79uLL);
  v89[1] = v87;
  (*(v55 + 16))(v51, v54, v52);
  v89[2] = v51;
  sub_2178AEC6C(v97, v96, &qword_27CB8BCA8, &qword_21796CB88);
  (*(v63 + 16))(v96, v93, v35);
  v86[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BCA8, &qword_21796CB88);
  v86[1] = v35;
  v86[2] = v52;
  v83 = sub_2178AEBBC();
  v84 = v64;
  v85 = v53;
  sub_2178B9390(v89, 3, v86);
  sub_2178653BC(v97, &qword_27CB8BCA8, &qword_21796CB88);
  v56(v54, v52);
  memcpy(v94, v90, 0x79uLL);
  v57 = v66;
  v66(v94, v35);
  v56(v51, v52);
  memcpy(v95, v87, 0x79uLL);
  v57(v95, v35);
  memcpy(v96, v88, 0xA9uLL);
  return sub_2178653BC(v96, &qword_27CB8BCA8, &qword_21796CB88);
}

uint64_t sub_2178AE104@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v37 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_2179688CC();
  v15 = sub_2178AEB74(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v38[0] = v14;
  v38[1] = a3;
  v35 = a4;
  v36 = a3;
  v33 = v15;
  v38[2] = v15;
  v38[3] = a4;
  v16 = _s9ItemShelfVMa(0, v38);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  v23 = *(a1 + 2);
  v32 = *(a1 + 1);
  v24 = _s6ModuleVMa(0);
  sub_2178AEC6C(&a1[*(v24 + 24)], v10, &qword_27CB8B0A0, &qword_21796B758);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {

    sub_2179680AC();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_2178653BC(v10, &qword_27CB8B0A0, &qword_21796B758);
    }
  }

  else
  {
    (*(v31 + 32))(v13, v10, v11);
  }

  v38[0] = 0x8000000000000000;
  sub_21796680C();
  v26 = v25;
  sub_21796747C();
  v27 = sub_21796748C();

  sub_217921248(v32, v23, v13, v38, v27, *a1, 0, 0, v20, v26, v36, v14, v36, v33, v35);
  swift_getWitnessTable();
  sub_2179560E4();
  v28 = *(v17 + 8);
  v28(v20, v16);
  sub_2179560E4();
  return (v28)(v22, v16);
}

uint64_t sub_2178AE540()
{
  sub_21796975C();
  v1 = v0[1];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[2];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[3];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[4];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[5];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v5);
}

uint64_t sub_2178AE5E0()
{
  sub_21796973C();
  sub_2178AE540();
  return sub_21796977C();
}

double sub_2178AE628@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>)
{
  _s9ViewModelCMa(0, a2, a3, a4);
  swift_getWitnessTable();
  *a1 = sub_217966ACC();
  *(a1 + 8) = v5;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = xmmword_21796CA30;
  result = 20.0;
  *(a1 + 88) = xmmword_21796A2F0;
  *(a1 + 104) = 0x4034000000000000;
  return result;
}

uint64_t sub_2178AE6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2178AE708(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2178AE75C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_2178AE828(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_2178AE4D4(v7, v8);
}

uint64_t sub_2178AE8F0(uint64_t a1)
{
  sub_21796973C();
  sub_2178AE540();
  return sub_21796977C();
}

unint64_t sub_2178AE958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8BCC0;
  if (!qword_27CB8BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BCC0);
  }

  return result;
}

uint64_t sub_2178AE9E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    OUTLINED_FUNCTION_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{

  if (*(v0 + 88))
  {
    if (*(v0 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 48));
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2178AEAE0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_21796681C() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_2178AE104(a1, v8, v5, v6, a2);
}

uint64_t sub_2178AEB74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2178AEBBC()
{
  result = qword_27CB8BCD8[0];
  if (!qword_27CB8BCD8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
    sub_2178AE9E4(&qword_27CB8AED0, &qword_27CB8AEC8, &qword_21796B618, sub_21788CABC);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8BCD8);
  }

  return result;
}

uint64_t sub_2178AEC6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2178AECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2178AED08(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[48])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2178AED54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2178AEE20@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_21796944C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_2178AEE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a3;
  v11 = sub_217968C2C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  v19 = type metadata accessor for ArtworkPlaceholder(0, a4, a5, v18);
  sub_2178AF160(sub_2178AF1E4, 0);
  sub_21796641C();
  v20 = sub_2179663BC();
  v21 = a6 + v19[9];
  *v21 = v20;
  *(v21 + 8) = v22 & 1;
  v23 = sub_21796640C();
  v24 = a6 + v19[10];
  *v24 = v23;
  *(v24 + 8) = v25 & 1;
  v26 = sub_21796637C();
  v27 = a6 + v19[11];
  *v27 = v26;
  *(v27 + 8) = v28 & 1;
  *(a6 + v19[12]) = sub_21796631C();
  v29 = sub_21796634C();
  v30 = (a6 + v19[13]);
  *v30 = v29;
  v30[1] = v31;
  v32 = sub_21796630C();
  v33 = (a6 + v19[14]);
  *v33 = v32;
  v33[1] = v34;
  sub_21796632C();
  *(a6 + v19[17]) = sub_21796638C() & 1;
  *(a6 + v19[16]) = sub_21796636C();
  v35 = sub_21796635C();
  v36 = a6 + v19[18];
  *v36 = v35;
  *(v36 + 8) = v37;
  *(v36 + 16) = v38 & 1;
  v39 = (a6 + v19[19]);
  v40 = v45;
  *v39 = a2;
  v39[1] = v40;
  sub_21796641C();
  LOBYTE(a5) = sub_217968BCC();
  (*(v12 + 8))(v14, v11);
  if (a5)
  {
    v41 = 1;
  }

  else
  {
    sub_21796641C();
    v41 = 0;
  }

  v42 = sub_21796643C();
  (*(*(v42 - 8) + 8))(a1, v42);
  __swift_storeEnumTagSinglePayload(v17, v41, 1, v11);
  return sub_2178B0264(v17, a6 + v19[20]);
}

uint64_t sub_2178AF160(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_2179664AC();

  return sub_21796661C();
}

uint64_t sub_2178AF1E4()
{
  sub_2179664AC();
  swift_allocObject();
  return sub_21796647C();
}

uint64_t sub_2178AF220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a2;
  v48 = sub_21796633C();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217968C2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v11;
  v56 = sub_21796643C();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v44 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8BD70, &qword_21796CCE8);
  MEMORY[0x28223BE20](v42);
  v46 = &v33 - v13;
  v47 = *(a1 + 16);
  v49 = sub_21796944C();
  v45 = *(a1 + 24);
  v63 = v45;
  WitnessTable = swift_getWitnessTable();
  v52 = sub_217966A7C();
  v53 = sub_21796698C();
  v55 = *(v53 - 8);
  v14 = MEMORY[0x28223BE20](v53);
  v43 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v33 - v16;
  (*(v9 + 16))(v11, v3, v8);
  v17 = *(a1 + 40);
  v18 = (v3 + *(a1 + 36));
  v40 = *v18;
  v39 = *(v18 + 8);
  v38 = *(v3 + v17);
  v37 = *(v3 + v17 + 8);
  v19 = *(a1 + 48);
  v20 = (v3 + *(a1 + 44));
  v36 = *v20;
  v35 = *(v20 + 8);
  v21 = *(a1 + 60);
  v33 = *(v3 + *(a1 + 52));
  v22 = *(v5 + 16);
  v34 = *(v3 + v19);
  v22(v7, v3 + v21, v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD68, &qword_21796CC68);
  sub_21796663C();
  v23 = v44;
  sub_21796642C();
  sub_21796662C();
  LOBYTE(v9) = sub_21796645C();

  if (v9)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = v46;
  (*(v54 + 32))(v46, v23, v56);
  *(v25 + *(v42 + 36)) = v24;
  v58 = v47;
  v59 = v45;
  v60 = v3;
  v26 = sub_2178B0110();
  sub_217967E3C();
  v27 = v43;
  sub_2179679DC();
  sub_217875F0C(v25, qword_27CB8BD70, &qword_21796CCE8);
  v28 = swift_getWitnessTable();
  v61 = v26;
  v62 = v28;
  v29 = v53;
  swift_getWitnessTable();
  v30 = v51;
  sub_2179560E4();
  v31 = *(v55 + 8);
  v31(v27, v29);
  sub_2179560E4();
  return (v31)(v30, v29);
}

uint64_t sub_2178AF890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v46[-v9];
  v52 = *(a2 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v51 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v46[-v14];
  MEMORY[0x28223BE20](v13);
  v50 = &v46[-v15];
  v16 = sub_21796944C();
  v54 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v46[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v53 = &v46[-v20];
  v55 = a3;
  v22 = type metadata accessor for ArtworkPlaceholder(0, a2, a3, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD68, &qword_21796CC68);
  sub_21796662C();
  LOBYTE(a3) = sub_21796645C();

  if (a3)
  {
    v23 = a1 + v22[19];
    v24 = *v23;
    v25 = *(v23 + 8);
    sub_2178B01F4(a1 + v22[20], v10);
    v29 = a1 + v22[18];
    if (*(v29 + 16))
    {
      v48 = v25;
      sub_21796662C();
      v30 = v24;
      v31 = sub_21796646C();
      v33 = v32;
      v47 = v34;

      v27.n128_u64[0] = 0;
      v26.n128_u64[0] = v31;
      v24 = v30;
      v28.n128_f64[0] = v33;
      if (v47)
      {
        v26.n128_f64[0] = 0.0;
      }

      else
      {
        v27.n128_f64[0] = v33;
      }
    }

    else
    {
      v26.n128_u64[0] = *v29;
      v27.n128_u64[0] = *(v29 + 8);
    }

    v37 = *(a1 + v22[16]);
    v38 = v49;
    v24(v10, v37, v26, v27, v28);
    sub_217875F0C(v10, &qword_27CB8BD60, &qword_21796CC60);
    v39 = v50;
    v36 = v55;
    sub_2179560E4();
    v40 = v52;
    v41 = *(v52 + 8);
    v41(v38, a2);
    v42 = v51;
    sub_2179560E4();
    v41(v39, a2);
    (*(v40 + 32))(v19, v42, a2);
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v36 = v55;
  }

  __swift_storeEnumTagSinglePayload(v19, v35, 1, a2);
  v43 = v53;
  sub_2178AEE20(v19, v53);
  v44 = *(v54 + 8);
  v44(v19, v16);
  v57 = v36;
  swift_getWitnessTable();
  sub_2179560E4();
  return (v44)(v43, v16);
}

uint64_t ArtworkImage.artworkPlaceholder<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_21796643C();
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5);

  return sub_2178AEE8C(v13, a1, a2, a3, a4, a5);
}

void sub_2178AFDDC(uint64_t a1)
{
  sub_217968C2C();
  if (v1 <= 0x3F)
  {
    sub_2178B0010(319, &unk_2811AD5F0, MEMORY[0x277D85048]);
    if (v2 <= 0x3F)
    {
      sub_2178B0010(319, &qword_2811AD480, MEMORY[0x277CDF400]);
      if (v3 <= 0x3F)
      {
        sub_2178B0010(319, &qword_2811AD308, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_21796633C();
          if (v5 <= 0x3F)
          {
            sub_2178B005C(319, &qword_2811AD2F0, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_217875494();
              if (v7 <= 0x3F)
              {
                sub_2178B005C(319, &qword_2811AD310, MEMORY[0x277CD8460], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_2178B005C(319, &qword_2811AD488, MEMORY[0x277CE43E8], MEMORY[0x277CDF338]);
                  if (v9 <= 0x3F)
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

void sub_2178B0010(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21796944C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2178B005C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2178B0110()
{
  result = qword_2811AD478;
  if (!qword_2811AD478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CB8BD70, &qword_21796CCE8);
    sub_2178B019C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD478);
  }

  return result;
}

unint64_t sub_2178B019C()
{
  result = qword_2811AD5E8;
  if (!qword_2811AD5E8)
  {
    sub_21796643C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD5E8);
  }

  return result;
}

uint64_t sub_2178B01F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178B0264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178B02D4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_2178B0304(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char *a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *a4;
  v32[0] = a10;
  v32[1] = a11;
  v32[2] = a12;
  v32[3] = a13;
  v18 = _s14ContainerShelfVMa(0, v32);
  v19 = &a8[v18[19]];
  _s9ViewModelCMa(0, a11, a13, v20);
  swift_getWitnessTable();
  *v19 = sub_217966ACC();
  *(v19 + 1) = v21;
  v22 = &a8[v18[20]];
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  v23 = &a8[v18[23]];
  *v23 = xmmword_21796CCF0;
  *(v23 + 1) = xmmword_21796CD00;
  *(v23 + 2) = xmmword_21796CD10;
  *(v23 + 6) = 0x4014000000000000;
  *a8 = a1;
  *(a8 + 1) = a2;
  v24 = v18[13];
  sub_21796810C();
  OUTLINED_FUNCTION_3();
  (*(v25 + 32))(&a8[v24], a3);
  *&a8[v18[14]] = v17;
  a8[v18[15]] = a5;
  *&a8[v18[16]] = a9;
  a8[v18[17]] = a6;
  a8[v18[18]] = a7;
  v26 = &a8[v18[21]];
  *v26 = 0;
  *(v26 + 1) = a1;
  *(v26 + 2) = a2;
  *(v26 + 3) = v17;
  v27 = &a8[v18[22]];
  *v27 = 3;
  *(v27 + 1) = a1;
  *(v27 + 2) = a2;
  *(v27 + 3) = v17;

  sub_217863EC4(v17);
  sub_217863EC4(v17);
}

void sub_2178B04FC(void *a1)
{
  v18 = 0;
  v25 = MEMORY[0x277D837D0];
  v2 = a1[2];
  v3 = a1[4];
  v4 = sub_21796810C();
  if (v5 <= 0x3F)
  {
    v19 = 0;
    v26 = v4;
    v27 = &type metadata for MusicPicker.PageID;
    sub_217876140();
    if (v8 <= 0x3F)
    {
      v28 = v6;
      v29 = MEMORY[0x277D839F8];
      v20 = 0;
      v30 = MEMORY[0x277D839B0];
      v31 = MEMORY[0x277D839B0];
      v9 = a1[3];
      v10 = a1[5];
      _s9ViewModelCMa(255, v9, v10, v7);
      swift_getWitnessTable();
      v11 = sub_217966ADC();
      if (v12 <= 0x3F)
      {
        v21 = 0;
        v32 = v11;
        sub_21788C1DC(319);
        if (v14 <= 0x3F)
        {
          v22 = 0;
          v33 = v13;
          v34 = &type metadata for MusicPicker.Click.SourceContext;
          v23 = 0;
          v35 = &type metadata for MusicPicker.Click.SourceContext;
          v17[0] = v2;
          v17[1] = v9;
          v17[2] = v3;
          v17[3] = v10;
          v15 = _s14ContainerShelfV9ConstantsVMa(319, v17);
          if (v16 <= 0x3F)
          {
            v24 = 0;
            v36 = v15;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2178B06B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2178B0708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BE78, &qword_21796CE80);
  v3 = a1[2];
  v4 = a1[4];
  v5 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v7 = v3;
  *(&v7 + 1) = a1[3];
  *&v8 = v4;
  *(&v8 + 1) = a1[5];
  v57 = v8;
  v78 = v7;
  v79 = v8;
  v58 = v7;
  _s9VItemCellVMa(255, &v78);
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_21796698C();
  v9 = sub_21796698C();
  OUTLINED_FUNCTION_6_1();
  v59 = v5;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v78 = v5;
  *(&v78 + 1) = AssociatedTypeWitness;
  *&v79 = v9;
  *(&v79 + 1) = WitnessTable;
  v80 = AssociatedConformanceWitness;
  sub_217967D9C();
  OUTLINED_FUNCTION_3_2();
  v12 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_4();
  v76 = v12;
  v77 = sub_2178B423C(v13, v14, MEMORY[0x277CDE458]);
  v15 = swift_getWitnessTable();
  v16 = MEMORY[0x277CDF918];
  v74 = v15;
  v75 = MEMORY[0x277CDF918];
  v72 = swift_getWitnessTable();
  v73 = v16;
  v71 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v17 = sub_217967CAC();
  OUTLINED_FUNCTION_9_2(v17, v18, v19);
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  v20 = sub_217967E9C();
  v54[1] = v9;
  v54[0] = OUTLINED_FUNCTION_30(v20, v21, v22);
  v23 = sub_217967CDC();
  OUTLINED_FUNCTION_2();
  v55 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = v54 - v26;
  v28 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v56 = v29;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = v54 - v34;
  v36 = sub_21796944C();
  OUTLINED_FUNCTION_2();
  v61 = v37;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = v54 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v60 = v54 - v42;
  swift_getWitnessTable();
  v43 = v62;
  if (sub_21796930C() < 1)
  {
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v28);
    OUTLINED_FUNCTION_7_1();
    v69 = swift_getWitnessTable();
    v70 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_1();
    swift_getWitnessTable();
  }

  else
  {
    v44 = sub_217966E6C();
    MEMORY[0x28223BE20](v44);
    v45 = v57;
    *&v54[-6] = v58;
    *&v54[-4] = v45;
    v54[-2] = v43;
    sub_217967CCC();
    sub_21796744C();
    OUTLINED_FUNCTION_7_1();
    v46 = swift_getWitnessTable();
    sub_217967A0C();
    (*(v55 + 8))(v27, v23);
    v64 = v46;
    v65 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_12_2();
    sub_2179560E4();
    v47 = v56;
    v48 = *(v56 + 8);
    v48(v33, v28);
    OUTLINED_FUNCTION_12_2();
    sub_2179560E4();
    v48(v35, v28);
    (*(v47 + 32))(v41, v33, v28);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v28);
  }

  v49 = v60;
  OUTLINED_FUNCTION_12_2();
  sub_2178AEE20(v50, v51);
  v52 = *(v61 + 8);
  v52(v41, v36);
  OUTLINED_FUNCTION_7_1();
  v67 = swift_getWitnessTable();
  v68 = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_1();
  v66 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  sub_2179560E4();
  return (v52)(v49, v36);
}

uint64_t sub_2178B0DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a5;
  v98 = a1;
  v99 = a3;
  v96 = a6;
  v10 = sub_21796810C();
  v100 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v110 = a2;
  v111 = a3;
  v112 = a4;
  v113 = a5;
  _s9VItemCellVMa(255, &v110);
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  v12 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v110 = v10;
  v111 = AssociatedTypeWitness;
  v112 = v12;
  v113 = WitnessTable;
  v114 = AssociatedConformanceWitness;
  sub_217967D9C();
  v109[17] = swift_getWitnessTable();
  v109[18] = sub_2178B423C(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v15 = swift_getWitnessTable();
  v16 = MEMORY[0x277CDF918];
  v109[15] = v15;
  v109[16] = MEMORY[0x277CDF918];
  v109[13] = swift_getWitnessTable();
  v109[14] = v16;
  v109[12] = swift_getWitnessTable();
  swift_getWitnessTable();
  v17 = sub_217967CAC();
  v80 = MEMORY[0x277CE1138];
  v90 = swift_getWitnessTable();
  v91 = v17;
  v87 = sub_21796666C();
  v92 = *(v87 - 8);
  v18 = MEMORY[0x28223BE20](v87);
  v94 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v93 = &v80 - v20;
  v21 = a2;
  v22 = v100;
  v24 = _s31AdditionalContentViewPropertiesVMa(255, a2, v100, v23);
  v25 = sub_21796944C();
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v80 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BE80, &qword_21796CE88);
  v85 = *(v28 - 8);
  v86 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BE88, &qword_21796CE90);
  MEMORY[0x28223BE20](v31 - 8);
  v84 = &v80 - v32;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BE90, &qword_21796CE98);
  MEMORY[0x28223BE20](v82);
  v83 = &v80 - v33;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BE78, &qword_21796CE80);
  v34 = MEMORY[0x28223BE20](v97);
  v89 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v81 = &v80 - v37;
  MEMORY[0x28223BE20](v36);
  v88 = &v80 - v38;
  v39 = v21;
  v40 = v99;
  v110 = v21;
  v111 = v99;
  v41 = v101;
  v112 = v22;
  v113 = v101;
  v42 = _s14ContainerShelfVMa(0, &v110);
  v43 = v98;
  sub_2178B17DC(v42, v27);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v24);
  v95 = v39;
  v102 = v39;
  v103 = v40;
  v44 = v22;
  v45 = v30;
  v104 = v44;
  v105 = v41;
  v106 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BE98, &qword_21796CEA0);
  sub_217864B2C(&qword_27CB8BEA0, &qword_27CB8BE98, &qword_21796CEA0, v80);
  swift_getWitnessTable();
  sub_21796687C();
  if (qword_27CB8A3E0 != -1)
  {
    swift_once();
  }

  v46 = qword_27CB979B0;
  v47 = *algn_27CB979B8;
  v48 = qword_27CB979C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 0x4449746E65726170;
  *(inited + 40) = 0xE800000000000000;
  v50 = *(v42 + 60);
  v51 = v98;
  v52 = *(v98 + v50);
  if (v52 == 11)
  {
    v53 = 0;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
  }

  else
  {
    *(inited + 48) = v52;
    v53 = &_s8ModuleIDON;
  }

  *(inited + 72) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v54 = sub_217968EAC();
  sub_2178ED924(v54, v46, v47, v48);
  v56 = v55;
  v58 = v57;
  v60 = v59;

  sub_2178EE0A8(v56, v58, v60);

  sub_217864B2C(&qword_27CB8BEA8, &qword_27CB8BE80, &qword_21796CE88, MEMORY[0x277CDD938]);
  v61 = v84;
  v62 = v86;
  sub_21796790C();

  (*(v85 + 8))(v45, v62);
  LOBYTE(v56) = sub_2179673EC();
  v63 = v83;
  sub_21789A7AC(v61, v83, &qword_27CB8BE88, &qword_21796CE90);
  v64 = v63 + *(v82 + 36);
  *v64 = v56;
  *(v64 + 8) = 0u;
  *(v64 + 24) = 0u;
  *(v64 + 40) = 1;
  LOBYTE(v56) = sub_21796741C();
  v65 = v63;
  v66 = v81;
  sub_21789A7AC(v65, v81, &qword_27CB8BE90, &qword_21796CE98);
  v67 = v66 + *(v97 + 36);
  *v67 = v56;
  *(v67 + 8) = 0u;
  *(v67 + 24) = 0u;
  *(v67 + 40) = 1;
  v68 = v88;
  sub_21789A7AC(v66, v88, &qword_27CB8BE78, &qword_21796CE80);
  v69 = sub_2179673CC();
  MEMORY[0x28223BE20](v69);
  v70 = v94;
  v72 = v99;
  v71 = v100;
  *(&v80 - 6) = v95;
  *(&v80 - 5) = v72;
  *(&v80 - 4) = v71;
  *(&v80 - 3) = v101;
  *(&v80 - 2) = v51;
  sub_21796667C();
  v73 = v87;
  v74 = swift_getWitnessTable();
  v75 = v93;
  sub_2179560E4();
  v76 = v92;
  v77 = *(v92 + 8);
  v77(v70, v73);
  v78 = v89;
  sub_21784D170(v68, v89);
  v110 = v78;
  (*(v76 + 16))(v70, v75, v73);
  v111 = v70;
  v109[0] = v97;
  v109[1] = v73;
  v107 = sub_2178B3EE4(&qword_27CB8BEB0, &qword_27CB8BE78, &qword_21796CE80, sub_2178B3EB4);
  v108 = v74;
  sub_2178B9390(&v110, 2, v109);
  v77(v75, v73);
  sub_21784D1D8(v68);
  v77(v70, v73);
  return sub_21784D1D8(v78);
}

unint64_t sub_2178B17DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = sub_21796810C();
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8];
  v10 = *v2;
  v11 = v2[1];
  (*(v12 + 16))(&v19[-v8], v2 + *(a1 + 52));
  v13 = v2 + *(a1 + 84);
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  v16 = *(v13 + 3);
  v17 = *(v2 + *(a1 + 60));
  v19[0] = *v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  sub_217876538(v10, v11, v9, v17, v19, *(v2 + *(a1 + 68)), *(v2 + *(a1 + 72)), v5, a2, v6);

  return sub_217863EC4(v16);
}

uint64_t sub_2178B193C@<X0>(uint64_t *a1@<X0>, uint64_t a6@<X8>)
{
  *a6 = sub_217966CFC();
  *(a6 + 8) = 0x4010000000000000;
  *(a6 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BEC8, &qword_21796CEA8);
  return sub_2178B19C4(a1, a6 + *(v8 + 44));
}

uint64_t sub_2178B19C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v66 = sub_217966FAC();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BED0, &qword_21796CEB0);
  MEMORY[0x28223BE20](v59);
  v60 = &v57[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BED8, &qword_21796CEB8);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v65 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v62 = &v57[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B600, &unk_21796BED0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v61 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v57[-v13];
  v14 = *a1;
  v15 = a1[1];
  v71 = v14;
  v72 = v15;
  sub_217873C34(v12, v16, v17);

  v18 = sub_21796763C();
  v20 = v19;
  v22 = v21;
  sub_21796753C();
  sub_21796748C();

  v23 = sub_2179675DC();
  v25 = v24;
  v27 = v26;

  sub_21788C9B8(v18, v20, v22 & 1);

  v71 = sub_217967B3C();
  v28 = sub_2179675BC();
  v30 = v29;
  v58 = v31;
  v33 = v32;
  sub_21788C9B8(v23, v25, v27 & 1);

  if (qword_27CB8A3E0 != -1)
  {
    swift_once();
  }

  v35 = qword_27CB979B0;
  v34 = *algn_27CB979B8;
  v36 = qword_27CB979C0;
  v71 = qword_27CB979B0;
  v72 = *algn_27CB979B8;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974, 0xE500000000000000);

  v37 = v71;
  v38 = v72;
  v71 = v28;
  v72 = v30;
  v39 = v58 & 1;
  v73 = v58 & 1;
  v74 = v33;
  sub_2178EE0A8(v37, v38, v36);

  sub_21796790C();
  sub_21788C9B8(v28, v30, v39);

  v71 = v35;
  v72 = v34;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x64726177726F66, 0xE700000000000000);

  sub_2178EE0A8(v71, v72, v36);

  sub_2178B412C(v40, v41, v42);
  v43 = v60;
  sub_21796790C();

  v44 = v63;
  sub_217966A8C();
  sub_2178B4180();
  sub_2178B423C(&qword_27CB8AE00, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v45 = v62;
  v46 = v66;
  sub_21796773C();
  (*(v64 + 8))(v44, v46);
  sub_2178653BC(v43, &qword_27CB8BED0, &qword_21796CEB0);
  v47 = v61;
  sub_2178B4284(v70, v61);
  v49 = v67;
  v48 = v68;
  v50 = *(v67 + 16);
  v51 = v65;
  v50(v65, v45, v68);
  v52 = v69;
  sub_2178B4284(v47, v69);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BEF0, &unk_21796CEC0);
  v50((v52 + *(v53 + 48)), v51, v48);
  v54 = v52 + *(v53 + 64);
  *v54 = 0;
  *(v54 + 8) = 1;
  v55 = *(v49 + 8);
  v55(v45, v48);
  sub_2178653BC(v70, &qword_27CB8B600, &unk_21796BED0);
  v55(v51, v48);
  return sub_2178653BC(v47, &qword_27CB8B600, &unk_21796BED0);
}

uint64_t sub_2178B2048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a5;
  v30 = a3;
  v32 = a1;
  v33 = a6;
  v10 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  _s9VItemCellVMa(255, &v46);
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  v12 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = v10;
  v47 = AssociatedTypeWitness;
  v48 = v12;
  v49 = WitnessTable;
  v50 = AssociatedConformanceWitness;
  v15 = sub_217967D9C();
  v44 = swift_getWitnessTable();
  v45 = sub_2178B423C(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v16 = swift_getWitnessTable();
  v17 = MEMORY[0x277CDF918];
  v42 = v16;
  v43 = MEMORY[0x277CDF918];
  v40 = swift_getWitnessTable();
  v41 = v17;
  v39 = swift_getWitnessTable();
  v29[1] = v15;
  swift_getWitnessTable();
  v18 = sub_217967CAC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v29 - v23;
  sub_217966D0C();
  v25 = v30;
  v46 = a2;
  v47 = v30;
  v26 = v31;
  v48 = a4;
  v49 = v31;
  _s14ContainerShelfVMa(0, &v46);
  v34 = a2;
  v35 = v25;
  v36 = a4;
  v37 = v26;
  v38 = v32;
  sub_217967C9C();
  swift_getWitnessTable();
  sub_2179560E4();
  v27 = *(v19 + 8);
  v27(v22, v18);
  sub_2179560E4();
  return (v27)(v24, v18);
}

uint64_t sub_2178B2414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a1;
  v55 = a6;
  v64 = a2;
  v65 = a3;
  v42 = a3;
  v66 = a4;
  v67 = a5;
  v43 = a5;
  v47 = _s14ContainerShelfVMa(0, &v64);
  v10 = *(v47 - 8);
  v52 = *(v10 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = v39 - v11;
  v12 = sub_21796810C();
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v56 = v39 - v13;
  v50 = *(a4 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v41 = _s9VItemCellVMa(255, &v64);
  sub_21796732C();
  v45 = sub_21796698C();
  v48 = sub_21796698C();
  v15 = sub_21796698C();
  v44 = v15;
  WitnessTable = swift_getWitnessTable();
  v49 = WitnessTable;
  v51 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = v12;
  v65 = AssociatedTypeWitness;
  v18 = v12;
  v39[1] = v12;
  v66 = v15;
  v67 = WitnessTable;
  v68 = AssociatedConformanceWitness;
  v19 = sub_217967D9C();
  v53 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v39 - v23;
  v25 = v47;
  v26 = v54;
  (*(v40 + 16))(v56, v54 + *(v47 + 52), v18);
  v27 = v46;
  (*(v10 + 16))(v46, v26, v25);
  v28 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v29 = swift_allocObject();
  v30 = v42;
  *(v29 + 2) = a2;
  *(v29 + 3) = v30;
  v31 = v43;
  *(v29 + 4) = a4;
  *(v29 + 5) = v31;
  (*(v10 + 32))(&v29[v28], v27, v25);
  v32 = swift_getWitnessTable();
  v33 = sub_2178B423C(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v62 = v32;
  v63 = v33;
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x277CDF918];
  v60 = v34;
  v61 = MEMORY[0x277CDF918];
  v58 = swift_getWitnessTable();
  v59 = v35;
  v36 = swift_getWitnessTable();
  sub_217967D8C();
  v57 = v36;
  swift_getWitnessTable();
  sub_2179560E4();
  v37 = *(v53 + 8);
  v37(v22, v19);
  sub_2179560E4();
  return (v37)(v24, v19);
}

uint64_t sub_2178B2970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v139 = a7;
  v13 = sub_21796944C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v137 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v138 = &v116[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v143 = &v116[-v17];
  v147 = v13;
  v150 = *(v13 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v120 = &v116[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v142 = &v116[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v134 = &v116[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v118 = &v116[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v140 = &v116[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v141 = &v116[-v29];
  v30 = *(a3 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v116[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v159 = a3;
  *(&v159 + 1) = a4;
  v160 = a5;
  v161 = a6;
  v33 = _s9VItemCellVMa(0, &v159);
  v125 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v116[-v34];
  sub_21796732C();
  v126 = v33;
  v36 = sub_21796698C();
  v127 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v146 = &v116[-v37];
  v128 = v38;
  v39 = sub_21796698C();
  v132 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v149 = &v116[-v40];
  v133 = v41;
  v136 = sub_21796698C();
  v135 = *(v136 - 8);
  v42 = MEMORY[0x28223BE20](v136);
  v129 = &v116[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42);
  v131 = &v116[-v44];
  v130 = v30;
  v45 = *(v30 + 16);
  v145 = v30 + 16;
  v144 = v45;
  v45(v32, a1, a3);
  *&v159 = a3;
  *(&v159 + 1) = a4;
  v160 = a5;
  v161 = a6;
  v46 = a6;
  v47 = _s14ContainerShelfVMa(0, &v159);
  v48 = a2 + *(v47 + 88);
  v50 = *(v48 + 8);
  v49 = *(v48 + 16);
  v51 = *(v48 + 24);
  LOBYTE(v159) = *v48;
  *(&v159 + 1) = v50;
  v160 = v49;
  v161 = v51;

  sub_217863EC4(v51);
  v52 = sub_2178B3AAC(a1, v47);
  v53 = sub_2178B3B48(a1, v47);
  v124 = v35;
  v119 = v32;
  sub_21790E3C4(v32, &v159, v53, v54, a3, a4, v35, v52, a5, v46);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v55 = xmmword_27CB979C8;
  v56 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796B330;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v121 = a5;
  v148 = a1;
  v58 = sub_21796849C();
  v59 = MEMORY[0x277CD7E90];
  *(inited + 48) = v58;
  *(inited + 56) = v60;
  *(inited + 72) = v59;
  *(inited + 80) = 0x4449746E65726170;
  *(inited + 88) = 0xE800000000000000;
  v61 = *(v47 + 60);
  v152 = a2;
  v62 = *(a2 + v61);
  v63 = v47;
  if (v62 == 11)
  {
    v64 = 0;
    *(inited + 96) = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  else
  {
    *(inited + 96) = v62;
    v64 = &_s8ModuleIDON;
  }

  v65 = v140;
  *(inited + 120) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v66 = sub_217968EAC();
  v159 = v55;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](1819043139, 0xE400000000000000);

  sub_2178ED924(v66, v159, *(&v159 + 1), v56);
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v73 = v126;
  WitnessTable = swift_getWitnessTable();
  v74 = v124;
  sub_2178ED854(v68, v70, v72, v73, WitnessTable);

  (*(v125 + 8))(v74, v73);
  LODWORD(v124) = sub_21796743C();
  v122 = v63;
  v75 = *(v63 + 52);
  v76 = sub_21796810C();
  swift_getWitnessTable();
  v126 = v75;
  v77 = v141;
  v125 = v76;
  sub_217968EEC();
  v144(v65, v148, a3);
  __swift_storeEnumTagSinglePayload(v65, 0, 1, a3);
  v78 = TupleTypeMetadata2;
  v79 = *(TupleTypeMetadata2 + 48);
  v80 = v150;
  v81 = *(v150 + 16);
  v82 = v143;
  v83 = v147;
  v81(v143, v77, v147);
  v81((v82 + v79), v65, v83);
  if (__swift_getEnumTagSinglePayload(v82, 1, a3) == 1)
  {
    v84 = v80;
    v85 = v82;
    v86 = *(v84 + 8);
    v86(v65, v83);
    v86(v77, v83);
    if (__swift_getEnumTagSinglePayload(v85 + v79, 1, a3) == 1)
    {
      v86(v85, v83);
      v87 = v81;
LABEL_15:
      v90 = TupleTypeMetadata2;
      goto LABEL_17;
    }

    v78 = TupleTypeMetadata2;
    v87 = v81;
LABEL_12:
    (*(v137 + 8))(v143, v78);
    v90 = v78;
    goto LABEL_17;
  }

  v88 = v118;
  v89 = v81;
  v81(v118, v82, v83);
  if (__swift_getEnumTagSinglePayload(v82 + v79, 1, a3) == 1)
  {
    v86 = *(v80 + 8);
    v86(v140, v83);
    v86(v141, v83);
    (*(v130 + 8))(v88, a3);
    v87 = v81;
    goto LABEL_12;
  }

  v91 = v130;
  v92 = v82 + v79;
  v93 = v119;
  (*(v130 + 32))(v119, v92, a3);
  v117 = sub_217968F1C();
  v94 = *(v91 + 8);
  v94(v93, a3);
  v86 = *(v80 + 8);
  v86(v140, v83);
  v86(v141, v83);
  v94(v88, a3);
  v86(v143, v83);
  if (v117)
  {
    v87 = v89;
    goto LABEL_15;
  }

  v90 = TupleTypeMetadata2;
  v87 = v89;
LABEL_17:
  v95 = sub_2178B423C(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v157 = WitnessTable;
  v158 = v95;
  v96 = v128;
  v143 = swift_getWitnessTable();
  v97 = v146;
  sub_217967A0C();
  (*(v127 + 8))(v97, v96);
  LODWORD(v146) = sub_21796742C();
  swift_getWitnessTable();
  v98 = v134;
  sub_21796931C();
  v99 = v142;
  v144(v142, v148, a3);
  __swift_storeEnumTagSinglePayload(v99, 0, 1, a3);
  v100 = *(v90 + 48);
  v101 = v138;
  v102 = v147;
  v87(v138, v98, v147);
  v87((v101 + v100), v99, v102);
  if (__swift_getEnumTagSinglePayload(v101, 1, a3) != 1)
  {
    v103 = v120;
    v87(v120, v101, v102);
    if (__swift_getEnumTagSinglePayload(v101 + v100, 1, a3) != 1)
    {
      v104 = v130;
      v105 = v119;
      (*(v130 + 32))(v119, v101 + v100, a3);
      sub_217968F1C();
      v106 = *(v104 + 8);
      v106(v105, a3);
      v86(v142, v102);
      v86(v98, v102);
      v106(v103, a3);
      v86(v101, v102);
      goto LABEL_24;
    }

    v86(v142, v102);
    v86(v98, v102);
    (*(v130 + 8))(v103, a3);
    goto LABEL_22;
  }

  v86(v99, v102);
  v86(v98, v102);
  if (__swift_getEnumTagSinglePayload(v101 + v100, 1, a3) != 1)
  {
LABEL_22:
    (*(v137 + 8))(v101, TupleTypeMetadata2);
    goto LABEL_24;
  }

  v86(v101, v102);
LABEL_24:
  v107 = MEMORY[0x277CDF918];
  v155 = v143;
  v156 = MEMORY[0x277CDF918];
  v108 = v133;
  v109 = swift_getWitnessTable();
  v110 = v129;
  v111 = v149;
  sub_217967A0C();
  (*(v132 + 8))(v111, v108);
  v153 = v109;
  v154 = v107;
  v112 = v136;
  swift_getWitnessTable();
  v113 = v131;
  sub_2179560E4();
  v114 = *(v135 + 8);
  v114(v110, v112);
  sub_2179560E4();
  return (v114)(v113, v112);
}

double sub_2178B3AAC(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 32) + 96))(&v7, *(a2 + 16));
  v4 = *(v2 + *(a2 + 64));
  v5 = v2 + *(a2 + 92);
  if (v7 == 1)
  {
    return (v4 - *(v5 + 32)) / 3.0;
  }

  else
  {
    return (v4 - *(v5 + 24)) * 0.5;
  }
}

uint64_t sub_2178B3B48(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0B0, &unk_21796BF60);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v5);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2179689AC();
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  if (*(v2 + *(a2 + 68)) == 1)
  {
    v17 = v13;
    (*(v9 + 16))(v11, v21, v8);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
      (*(v17 + 32))(v15, v7, v12);
      sub_217884808();
      v16 = v18;
      (*(v17 + 8))(v15, v12);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
      sub_2178653BC(v7, &qword_27CB8B0B0, &unk_21796BF60);
      return 0;
    }
  }

  return v16;
}

BOOL sub_2178B3DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_21788BD28(v5, v7);
}

uint64_t sub_2178B3EE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    OUTLINED_FUNCTION_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2178B3F58()
{
  result = qword_27CB8BEC0;
  if (!qword_27CB8BEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BE88, &qword_21796CE90);
    sub_217864B2C(&qword_27CB8BEA8, &qword_27CB8BE80, &qword_21796CE88, MEMORY[0x277CDD938]);
    sub_2178B423C(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BEC0);
  }

  return result;
}

uint64_t sub_2178B4070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(_s14ContainerShelfVMa(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_2178B2970(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_2178B412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8BEE0;
  if (!qword_27CB8BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BEE0);
  }

  return result;
}

unint64_t sub_2178B4180()
{
  result = qword_27CB8BEE8;
  if (!qword_27CB8BEE8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BED0, &qword_21796CEB0);
    sub_2178B412C(v1, v2, v3);
    sub_2178B423C(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8BEE8);
  }

  return result;
}

uint64_t sub_2178B423C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2178B4284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B600, &unk_21796BED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t *sub_2178B4378(uint64_t a1, uint64_t a2)
{
  if (qword_2811AD4A8 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_2811AD4A8);
  }

  if (objc_getAssociatedObject(v2, qword_2811AD4B0))
  {
    sub_2179694AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    _s4NodeCMa(0);
    if (swift_dynamicCast())
    {
      result = v16;
      if (v16)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_2178B4C30(v15, &qword_27CB8A7F0, &unk_21796B180);
  }

  v16 = 0;
LABEL_12:
  v6 = (*(a2 + 8))(a1, a2);
  v8 = v7;
  v9 = (*(a2 + 16))(a1, a2);
  v11 = v10;
  _s4NodeCMa(0);
  swift_allocObject();
  v12 = sub_217962BC4(v6, v8, v9, v11 & 1);
  v16 = v12;

  sub_2178B451C(v12);
  return v16;
}

double sub_2178B451C(id value)
{
  if (qword_2811AD4A8 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_2811AD4A8);
  }

  objc_setAssociatedObject(v1, qword_2811AD4B0, value, 1);

  return result;
}

uint64_t sub_2178B4588()
{
  result = swift_slowAlloc();
  qword_2811AD4B0 = result;
  return result;
}

double View.artworkCaching(owner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_unknownObjectRetain();
  sub_21796772C();
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_2178B4644(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_217956C9C(v2, v1, v3);
}

void static ArtworkImage.prefetch(artwork:pixelLength:width:height:cropStyle:imageFormat:cacheOwner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8)
{
  v33 = a3;
  v34 = a1;
  v36 = sub_21796633C();
  v10 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BEF8, &qword_21796CEF8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BF00, &unk_21796CF00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  ObjectType = swift_getObjectType();
  v19 = sub_2178B4378(ObjectType, a5);
  v20 = swift_allocObject();
  sub_2179664AC();
  swift_allocObject();
  v21 = sub_21796647C();
  *(v20 + 16) = v21;
  sub_2178B4B0C(a2, v17, &qword_27CB8BF00, &unk_21796CF00);
  v22 = sub_217968BAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v22);
  v31 = v21;

  if (EnumTagSinglePayload == 1)
  {
    sub_2178B4C30(v17, &qword_27CB8BF00, &unk_21796CF00);
    v32 = 0;
  }

  else
  {
    sub_217968B9C();
    v32 = v24;
    OUTLINED_FUNCTION_10();
    (*(v25 + 8))(v17, v22);
  }

  sub_2178B4B0C(v33, v14, &qword_27CB8BEF8, &qword_21796CEF8);
  v26 = sub_217968B5C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v26) == 1)
  {
    sub_2178B4C30(v14, &qword_27CB8BEF8, &qword_21796CEF8);
  }

  else
  {
    sub_217968B4C();
    OUTLINED_FUNCTION_10();
    (*(v27 + 8))(v14, v26);
  }

  v29 = v35;
  v28 = v36;
  (*(v10 + 104))(v35, *MEMORY[0x277CE43C0], v36);
  *(swift_allocObject() + 16) = v19;
  v30 = swift_allocObject();
  v30[2] = v20;
  v30[3] = nullsub_1;
  v30[4] = 0;

  sub_21796648C();

  (*(v10 + 8))(v29, v28);
}

uint64_t sub_2178B4B0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2178B4BCC()
{
  result = qword_2811AD450;
  if (!qword_2811AD450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BF08, &qword_21796CF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD450);
  }

  return result;
}

uint64_t sub_2178B4C30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

void *sub_2178B4CAC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>)
{
  _s9ViewModelCMa(0, a2, a3, a4);
  swift_getWitnessTable();
  *a1 = sub_217966ACC();
  *(a1 + 8) = v5;
  v8[0] = 6;
  result = sub_2178B4D38(v8);
  v7 = v9;
  *(a1 + 16) = v8[1];
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_2178B4D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2178B4DD4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2178B4E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2178B4F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_2179669FC();
  OUTLINED_FUNCTION_0_1();
  v67 = v4;
  MEMORY[0x28223BE20](v5);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217968AFC();
  v8 = *(a1 + 16);
  OUTLINED_FUNCTION_8_4();
  v11 = sub_2178B7FA4(v9, v10, &unk_2179717C8);
  v12 = *(a1 + 24);
  v79 = v7;
  v80 = v8;
  v13 = v8;
  v81 = MEMORY[0x277CD8408];
  v82 = v11;
  v83 = v12;
  v14 = v12;
  _s15LibraryMenuCellVMa(255, &v79);
  OUTLINED_FUNCTION_8();
  v79 = sub_21796944C();
  v15 = sub_2179689AC();
  OUTLINED_FUNCTION_4_5();
  v18 = sub_2178B7FA4(v16, v17, &unk_217971698);
  v75 = v15;
  v76 = v13;
  v77 = MEMORY[0x277CD82A8];
  v78 = v18;
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8();
  v80 = sub_21796944C();
  v19 = sub_2179688CC();
  OUTLINED_FUNCTION_3_3();
  v22 = sub_2178B7FA4(v20, v21, &unk_217971AF0);
  v75 = v19;
  v76 = v13;
  v77 = MEMORY[0x277CD8200];
  v78 = v22;
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8();
  v81 = sub_21796944C();
  v23 = sub_217968CFC();
  v24 = MEMORY[0x277D2B358];
  v25 = sub_2178B7FA4(&qword_27CB8BF98, MEMORY[0x277D2B358], MEMORY[0x277D2B340]);
  OUTLINED_FUNCTION_7_3();
  v28 = sub_2178B7FA4(v26, v24, v27);
  v75 = v23;
  v76 = v13;
  v64 = v13;
  v77 = v25;
  v78 = v28;
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8();
  v82 = sub_21796944C();
  v29 = sub_21796591C();
  v30 = MEMORY[0x277D2A350];
  v31 = sub_2178B7FA4(&qword_27CB8BFA8, MEMORY[0x277D2A350], MEMORY[0x277D2A340]);
  OUTLINED_FUNCTION_5_2();
  v34 = sub_2178B7FA4(v32, v30, v33);
  v75 = v29;
  v76 = v13;
  v77 = v31;
  v78 = v34;
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8();
  v83 = sub_21796944C();
  v84 = v83;
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  v35 = sub_217967B7C();
  OUTLINED_FUNCTION_0_1();
  v63 = v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v59 - v38;
  OUTLINED_FUNCTION_19_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  v40 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v60 = sub_2178B7FA4(v41, v42, MEMORY[0x277CDDB08]);
  v79 = v35;
  v80 = v3;
  v43 = v3;
  v81 = v40;
  v82 = v60;
  v61 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v62 = v45;
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v59 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = &v59 - v50;
  v52 = *(v66 + 16);
  v53 = *(v66 + 3);
  v69 = v64;
  v70 = v14;
  v71 = *v66;
  v72 = v52;
  v73 = v53;
  sub_217967B6C();
  v54 = v65;
  sub_2179669EC();
  v55 = v43;
  v56 = v60;
  sub_2179676FC();
  (*(v67 + 8))(v54, v55);
  (*(v63 + 8))(v39, v35);
  v79 = v35;
  v80 = v55;
  v81 = v40;
  v82 = v56;
  swift_getOpaqueTypeConformance2();
  sub_2179560E4();
  v57 = *(v62 + 8);
  v57(v49, OpaqueTypeMetadata2);
  sub_2179560E4();
  return (v57)(v51, OpaqueTypeMetadata2);
}

uint64_t sub_2178B54F0@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v332 = a4;
  v331 = a3;
  v337 = a2;
  v292 = a7;
  v10 = sub_21796591C();
  v11 = MEMORY[0x277D2A350];
  v295 = v10;
  v360 = v10;
  v361 = a5;
  v294 = sub_2178B7FA4(&qword_27CB8BFA8, MEMORY[0x277D2A350], MEMORY[0x277D2A340]);
  v362 = v294;
  v363 = sub_2178B7FA4(&qword_27CB8BFB0, v11, &unk_217971640);
  v293 = v363;
  v364 = a6;
  v12 = _s15LibraryMenuCellVMa(0, &v360);
  v298 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v297 = &v269 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v296 = &v269 - v15;
  v335 = v16;
  v311 = sub_21796944C();
  v307 = *(v311 - 8);
  v17 = MEMORY[0x28223BE20](v311);
  v310 = &v269 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v309 = &v269 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v336 = &v269 - v22;
  MEMORY[0x28223BE20](v21);
  v330 = &v269 - v23;
  v24 = sub_217968CFC();
  v25 = MEMORY[0x277D2B358];
  v26 = sub_2178B7FA4(&qword_27CB8BF98, MEMORY[0x277D2B358], MEMORY[0x277D2B340]);
  v27 = sub_2178B7FA4(&qword_27CB8BFA0, v25, &unk_2179714C0);
  v283 = v24;
  v360 = v24;
  v361 = a5;
  v282 = v26;
  v362 = v26;
  v363 = v27;
  v281 = v27;
  v364 = a6;
  v28 = _s15LibraryMenuCellVMa(0, &v360);
  v286 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v285 = &v269 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v284 = &v269 - v31;
  v306 = v32;
  v329 = sub_21796944C();
  v305 = *(v329 - 8);
  v33 = MEMORY[0x28223BE20](v329);
  v308 = &v269 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v328 = &v269 - v35;
  v36 = sub_2179688CC();
  v37 = sub_2178B7FA4(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
  v279 = v36;
  v360 = v36;
  v361 = a5;
  v362 = MEMORY[0x277CD8200];
  v363 = v37;
  v278 = v37;
  v364 = a6;
  v38 = _s15LibraryMenuCellVMa(0, &v360);
  v300 = *(v38 - 8);
  v39 = MEMORY[0x28223BE20](v38);
  v287 = (&v269 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v280 = &v269 - v41;
  v327 = sub_21796944C();
  v303 = *(v327 - 8);
  v42 = MEMORY[0x28223BE20](v327);
  v326 = &v269 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v325 = &v269 - v44;
  v45 = sub_2179689AC();
  v46 = sub_2178B7FA4(&qword_27CB8A6D0, MEMORY[0x277CD82C8], &unk_217971698);
  v276 = v45;
  v360 = v45;
  v361 = a5;
  v362 = MEMORY[0x277CD82A8];
  v363 = v46;
  v275 = v46;
  v364 = a6;
  v304 = _s15LibraryMenuCellVMa(0, &v360);
  v289 = *(v304 - 8);
  v47 = MEMORY[0x28223BE20](v304);
  v288 = (&v269 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v47);
  v277 = &v269 - v49;
  v324 = sub_21796944C();
  v302 = *(v324 - 8);
  v50 = MEMORY[0x28223BE20](v324);
  v323 = &v269 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v322 = &v269 - v52;
  v53 = sub_217968AFC();
  v54 = sub_2178B7FA4(&qword_27CB8AAF8, MEMORY[0x277CD8428], &unk_2179717C8);
  v274 = v53;
  v360 = v53;
  v361 = a5;
  v362 = MEMORY[0x277CD8408];
  v363 = v54;
  v273 = v54;
  v364 = a6;
  v55 = _s15LibraryMenuCellVMa(0, &v360);
  v291 = *(v55 - 8);
  v56 = MEMORY[0x28223BE20](v55);
  v58 = &v269 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v290 = &v269 - v59;
  v60 = sub_21796858C();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v63 = &v269 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_21796944C();
  v301 = *(v338 - 8);
  v64 = MEMORY[0x28223BE20](v338);
  v66 = &v269 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v321 = &v269 - v67;
  v334 = a5;
  v333 = a6;
  v69 = _s9ViewModelCMa(0, a5, a6, v68);
  WitnessTable = swift_getWitnessTable();
  v314 = a1;
  v340 = v69;
  v339 = WitnessTable;
  v71 = sub_217966A9C();
  sub_2178D860C(v71, v72, v73, v74, v75, v76, v77, v78, v269, v270, v271, v272, v273, v274);
  v80 = v79;

  v81 = *MEMORY[0x277D2AF58];
  v82 = *(v61 + 104);
  v318 = (v61 + 104);
  v316 = v82;
  v82(v63, v81, v60);
  v342 = v63;
  LOBYTE(v69) = sub_2178E42C0(sub_2178B7F74, v341, v80);

  v83 = *(v61 + 8);
  v315 = v63;
  v320 = v60;
  v319 = v61 + 8;
  v317 = v83;
  v83(v63, v60);
  v313 = v38;
  v312 = v66;
  v299 = v55;
  if (v69)
  {
    v272 = 0;
    v84 = v332;
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v271 = sub_21796560C();
    v270 = v85;
    v86 = sub_21796560C();
    v269 = v87;
    v88 = v314;
    v89 = v337;
    v360 = v314;
    v361 = v337;
    LOBYTE(v362) = v331;
    v363 = v84;
    sub_2178B4ED8();
    v348 = v354;
    v349 = v355;
    LOBYTE(v350) = v356;
    v366 = 0;
    v90 = v274;
    v91 = v334;
    v92 = MEMORY[0x277CD8408];
    v93 = v273;
    v94 = v333;
    sub_2178B7BB8(v274, v334, MEMORY[0x277CD8408], v273, v333);
    sub_2179426C8(v271, v270, 0x696D2E636973756DLL, 0xE900000000000063, v86, v269, 0, &v348, v58, &v366, sub_2178B7F94, v95, v90, v91, v92, v93, v94);

    v96 = v299;
    swift_getWitnessTable();
    v97 = v290;
    sub_2179560E4();
    v98 = v291;
    v99 = *(v291 + 8);
    v99(v58, v96);
    sub_2179560E4();
    v100 = v97;
    v101 = v96;
    v99(v100, v96);
    v66 = v312;
    (*(v98 + 32))(v312, v58, v101);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v101);
    v38 = v313;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v55);
    swift_getWitnessTable();
    v89 = v337;
    v88 = v314;
  }

  sub_2178AEE20(v66, v321);
  v102 = *(v301 + 8);
  v291 = v301 + 8;
  v290 = v102;
  (v102)(v66, v338);
  v103 = sub_217966A9C();
  sub_2178D860C(v103, v104, v105, v106, v107, v108, v109, v110, v269, v270, v271, v272, v273, v274);
  v112 = v111;

  v113 = v315;
  v114 = v320;
  v115 = v316(v315, *MEMORY[0x277D2AF40], v320);
  MEMORY[0x28223BE20](v115);
  v268 = v113;
  v116 = sub_2178E42C0(sub_2178B7FEC, &v267, v112);

  v317(v113, v114);
  v117 = v88;
  if (v116)
  {
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v268 = 0x8000000217974AD0;
    v118 = sub_21796560C();
    v120 = v119;
    v268 = 0x8000000217974B40;
    v121 = sub_21796560C();
    v123 = v122;
    v360 = v88;
    v124 = v337;
    v361 = v337;
    LOBYTE(v362) = v331;
    v363 = v332;
    sub_2178B4ED8();
    v348 = v354;
    v349 = v355;
    LOBYTE(v350) = v356;
    v366 = 1;
    v125 = v288;
    v126 = v121;
    v89 = v124;
    v127 = v123;
    v117 = v314;
    sub_2179426C8(v118, v120, 0x732E657261757173, 0xEC0000006B636174, v126, v127, 0, &v348, v288, &v366, sub_2178B7C30, 0, v276, v334, MEMORY[0x277CD82A8], v275, v333);
    v128 = v304;
    swift_getWitnessTable();
    v129 = v277;
    sub_2179560E4();
    v130 = v289;
    v131 = *(v289 + 8);
    v131(v125, v128);
    sub_2179560E4();
    v131(v129, v128);
    v132 = v323;
    (*(v130 + 32))(v323, v125, v128);
    __swift_storeEnumTagSinglePayload(v132, 0, 1, v128);
    v38 = v313;
  }

  else
  {
    v132 = v323;
    __swift_storeEnumTagSinglePayload(v323, 1, 1, v304);
    swift_getWitnessTable();
  }

  sub_2178AEE20(v132, v322);
  v133 = *(v302 + 8);
  v289 = v302 + 8;
  v288 = v133;
  (v133)(v132, v324);
  v134 = v89;
  v135 = sub_217966A9C();
  sub_2178D860C(v135, v136, v137, v138, v139, v140, v141, v142, v269, v270, v271, v272, v273, v274);
  v144 = v143;

  v145 = v315;
  v146 = v320;
  v147 = v316(v315, *MEMORY[0x277D2AF38], v320);
  MEMORY[0x28223BE20](v147);
  v268 = v145;
  v148 = sub_2178E42C0(sub_2178B7FEC, &v267, v144);

  v317(v145, v146);
  if (v148)
  {
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v268 = 0x8000000217974A30;
    v277 = sub_21796560C();
    v276 = v149;
    v268 = 0x8000000217974AA0;
    v150 = sub_21796560C();
    v275 = v151;
    v152 = v314;
    v360 = v314;
    v361 = v134;
    LOBYTE(v362) = v331;
    v363 = v332;
    sub_2178B4ED8();
    v348 = v354;
    v349 = v355;
    LOBYTE(v350) = v356;
    v366 = 2;
    v153 = v279;
    v154 = v334;
    v155 = MEMORY[0x277CD8200];
    v156 = v278;
    v157 = v333;
    sub_2178B7BB8(v279, v334, MEMORY[0x277CD8200], v278, v333);
    v268 = v156;
    v267 = v154;
    v134 = v337;
    v158 = v287;
    v159 = v152;
    sub_2179426C8(v277, v276, 0x6F6E2E636973756DLL, 0xEA00000000006574, v150, v275, 0, &v348, v287, &v366, sub_2178B7F94, v160, v153, v267, v155, v268, v157);

    v161 = v313;
    swift_getWitnessTable();
    v162 = v280;
    sub_2179560E4();
    v163 = v300;
    v164 = *(v300 + 8);
    v164(v158, v161);
    sub_2179560E4();
    v165 = v162;
    v117 = v159;
    v164(v165, v161);
    v166 = v326;
    (*(v163 + 32))(v326, v158, v161);
    __swift_storeEnumTagSinglePayload(v166, 0, 1, v161);
  }

  else
  {
    v166 = v326;
    __swift_storeEnumTagSinglePayload(v326, 1, 1, v38);
    swift_getWitnessTable();
  }

  sub_2178AEE20(v166, v325);
  v167 = *(v303 + 8);
  v300 = v303 + 8;
  v287 = v167;
  (v167)(v166, v327);
  v168 = sub_217966A9C();
  sub_2178D860C(v168, v169, v170, v171, v172, v173, v174, v175, v269, v270, v271, v272, v273, v274);
  v177 = v176;

  v178 = v315;
  v179 = v320;
  v180 = v316(v315, *MEMORY[0x277D2AF68], v320);
  MEMORY[0x28223BE20](v180);
  v268 = v178;
  v181 = sub_2178E42C0(sub_2178B7FEC, &v267, v177);

  v317(v178, v179);
  v182 = v134;
  if (v181)
  {
    v183 = v308;
    v184 = v332;
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v268 = 0x8000000217974970;
    v185 = sub_21796560C();
    v187 = v186;
    v268 = 0x80000002179749F0;
    v188 = sub_21796560C();
    v190 = v189;
    v360 = v117;
    v361 = v182;
    LOBYTE(v362) = v331;
    v363 = v184;
    sub_2178B4ED8();
    v348 = v354;
    v349 = v355;
    LOBYTE(v350) = v356;
    v366 = 3;
    v191 = v117;
    v192 = v285;
    sub_2179426C8(v185, v187, 0x6F6E2E636973756DLL, 0xEF7473696C2E6574, v188, v190, 0, &v348, v285, &v366, sub_2178B7CAC, 0, v283, v334, v282, v281, v333);
    v193 = v306;
    swift_getWitnessTable();
    v194 = v284;
    sub_2179560E4();
    v195 = v286;
    v196 = *(v286 + 8);
    v196(v192, v193);
    sub_2179560E4();
    v196(v194, v193);
    v197 = v192;
    v117 = v191;
    (*(v195 + 32))(v183, v197, v193);
    __swift_storeEnumTagSinglePayload(v183, 0, 1, v193);
  }

  else
  {
    v183 = v308;
    __swift_storeEnumTagSinglePayload(v308, 1, 1, v306);
    swift_getWitnessTable();
  }

  sub_2178AEE20(v183, v328);
  v198 = *(v305 + 8);
  v319 = v305 + 8;
  v318 = v198;
  v198(v183, v329);
  v199 = sub_217966A9C();
  sub_2178D860C(v199, v200, v201, v202, v203, v204, v205, v206, v269, v270, v271, v272, v273, v274);
  v208 = v207;

  v209 = *(v208 + 16);

  v210 = v336;
  v211 = v335;
  if (v209)
  {
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v268 = 0x80000002179747E0;
    v212 = sub_21796560C();
    v214 = v213;
    v268 = 0x8000000217974880;
    v215 = sub_21796560C();
    v217 = v216;
    v218 = v337;
    v360 = v117;
    v361 = v337;
    LOBYTE(v362) = v331;
    v363 = v332;
    sub_2178B4ED8();
    v348 = v354;
    v349 = v355;
    LOBYTE(v350) = v356;
    v366 = 4;
    v219 = v297;
    sub_2179426C8(v212, v214, 0xD000000000000011, 0x8000000217974830, v215, v217, 0, &v348, v297, &v366, sub_2178B7DBC, 0, v295, v334, v294, v293, v333);
    v211 = v335;
    swift_getWitnessTable();
    v220 = v296;
    sub_2179560E4();
    v221 = v298;
    v222 = *(v298 + 8);
    v222(v219, v211);
    sub_2179560E4();
    v222(v220, v211);
    v210 = v336;
    v223 = v219;
    v182 = v218;
    (*(v221 + 32))(v336, v223, v211);
    __swift_storeEnumTagSinglePayload(v210, 0, 1, v211);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v336, 1, 1, v335);
    swift_getWitnessTable();
  }

  sub_2178AEE20(v210, v330);
  v337 = *(v307 + 8);
  v320 = v307 + 8;
  v337(v210, v311);
  v224 = sub_217966A9C();
  sub_2178D860C(v224, v225, v226, v227, v228, v229, v230, v231, v269, v270, v271, v272, v273, v274);
  v233 = v232;

  v234 = *(v233 + 16);

  if (v234)
  {
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v268 = 0x80000002179748C0;
    v235 = sub_21796560C();
    v237 = v236;
    v268 = 0x8000000217974930;
    v238 = sub_21796560C();
    v240 = v239;
    v360 = v314;
    v361 = v182;
    LOBYTE(v362) = v331;
    v363 = v332;
    sub_2178B4ED8();
    v348 = v354;
    v349 = v355;
    LOBYTE(v350) = v356;
    v366 = 5;
    v241 = v297;
    sub_2179426C8(v235, v237, 0x6B636F6C63, 0xE500000000000000, v238, v240, 1, &v348, v297, &v366, sub_2178B7E8C, 0, v295, v334, v294, v293, v333);
    v242 = v335;
    swift_getWitnessTable();
    v243 = v296;
    sub_2179560E4();
    v244 = v298;
    v245 = *(v298 + 8);
    v245(v241, v242);
    sub_2179560E4();
    v245(v243, v242);
    v210 = v336;
    (*(v244 + 32))(v336, v241, v242);
    __swift_storeEnumTagSinglePayload(v210, 0, 1, v242);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v210, 1, 1, v211);
    swift_getWitnessTable();
  }

  sub_2178AEE20(v210, v309);
  v246 = v210;
  v247 = v210;
  v248 = v311;
  v337(v246, v311);
  v249 = v312;
  v250 = v338;
  (*(v301 + 16))(v312, v321);
  v360 = v249;
  v251 = v323;
  v252 = v324;
  (*(v302 + 16))(v323, v322);
  v361 = v251;
  v253 = v326;
  v254 = v327;
  (*(v303 + 16))();
  v362 = v253;
  v255 = v329;
  (*(v305 + 16))(v183, v328, v329);
  v363 = v183;
  v256 = *(v307 + 16);
  v256(v247, v330, v248);
  v364 = v247;
  v257 = v310;
  v258 = v309;
  v256(v310, v309, v248);
  v365 = v257;
  v354 = v250;
  v355 = v252;
  v259 = v254;
  v356 = v254;
  v357 = v255;
  v358 = v248;
  v359 = v248;
  v347 = swift_getWitnessTable();
  v348 = swift_getWitnessTable();
  v346 = swift_getWitnessTable();
  v349 = swift_getWitnessTable();
  v345 = swift_getWitnessTable();
  v350 = swift_getWitnessTable();
  v344 = swift_getWitnessTable();
  v351 = swift_getWitnessTable();
  v343 = swift_getWitnessTable();
  v260 = v248;
  v352 = swift_getWitnessTable();
  v353 = v352;
  sub_2178B9390(&v360, 6, &v354);
  v261 = v337;
  v337(v258, v248);
  v261(v330, v248);
  v262 = v318;
  v318(v328, v255);
  v263 = v287;
  (v287)(v325, v259);
  v264 = v288;
  (v288)(v322, v252);
  v265 = v290;
  (v290)(v321, v338);
  v261(v310, v260);
  v261(v336, v260);
  v262(v308, v329);
  v263(v326, v327);
  v264(v323, v324);
  return v265(v312, v338);
}

void (*sub_2178B7BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  return sub_2178B7F94;
}

double sub_2178B7C30()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BFB8, &qword_21796D008);
  sub_21796818C();

  return result;
}

double sub_2178B7CAC()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BFC0, &qword_217973A40);
  sub_2178B7FA4(&qword_27CB8BFC8, MEMORY[0x277D2B358], MEMORY[0x277D2B350]);
  sub_21796816C();

  return result;
}

uint64_t sub_2178B7D60@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, _BYTE *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result & 1;
  return result;
}

double sub_2178B7DBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BFD0, &qword_21796D038);
  sub_2179681AC();
  sub_2179681CC();
  swift_getKeyPath();
  sub_2179681BC();

  return result;
}

uint64_t sub_2178B7EE4(uint64_t a1, uint64_t a2)
{
  sub_21796858C();
  sub_2178B7FA4(&qword_27CB8BFE0, MEMORY[0x277D2AF70], MEMORY[0x277D2AF78]);
  return sub_217968F1C() & 1;
}

uint64_t sub_2178B7FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_9_3()
{
  *(v1 - 144) = v0;

  return _s15LibraryMenuCellVMa(255, v1 - 176);
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = v14;

  return _s15LibraryMenuCellVMa(255, &a10);
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return swift_getTupleTypeMetadata();
}

uint64_t _s14PreviewControlVMa(uint64_t a1)
{
  result = qword_27CB8BFE8;
  if (!qword_27CB8BFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2178B8164(uint64_t a1)
{
  sub_2179688CC();
  if (v1 <= 0x3F)
  {
    sub_2178B81FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2178B81FC(uint64_t a1)
{
  if (!qword_27CB8BFF8)
  {
    _s13PreviewPlayerCMa(255);
    sub_2178B8260();
    v1 = sub_2179668CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8BFF8);
    }
  }
}

unint64_t sub_2178B8260()
{
  result = qword_27CB8AFE0;
  if (!qword_27CB8AFE0)
  {
    _s13PreviewPlayerCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AFE0);
  }

  return result;
}

_BYTE *_s14PreviewControlV5StyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2178B8398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8C000;
  if (!qword_27CB8C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C000);
  }

  return result;
}

uint64_t sub_2178B83EC@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEC0, &qword_21796B610);
  OUTLINED_FUNCTION_48(v2);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v4);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C018, &qword_21796D198);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C020, &qword_21796D1A0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_52(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C028, &qword_21796D1A8);
  v12 = OUTLINED_FUNCTION_48(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_88();
  v146 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_4();
  v145 = v15;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C030, &qword_21796D1B0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v17);
  v18 = sub_2179658DC();
  v19 = OUTLINED_FUNCTION_8_5(v18, &v151);
  v120 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v22 - v21);
  v23 = sub_2179658EC();
  v24 = OUTLINED_FUNCTION_8_5(v23, &v155);
  v129 = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v27 - v26);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C038, &qword_21796D1B8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v29);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C040, &qword_21796D1C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_52(v33);
  v34 = sub_217966A2C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14();
  v38 = (v37 - v36);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C048, &qword_21796D1C8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v39);
  v41 = &v116 - v40;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C050, &qword_21796D1D0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_5_3();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v116 - v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_52(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v48);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v49);
  v51 = &v116 - v50;
  v52 = _s5StateVMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v55 - v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C060, &qword_21796D1E0);
  v57 = OUTLINED_FUNCTION_48(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_88();
  v143 = v58;
  MEMORY[0x28223BE20](v59);
  v61 = &v116 - v60;
  v140 = _s14PreviewControlVMa(0);
  v62 = sub_2178C93B0();
  v142 = v1;
  if (v62 & 1) != 0 && (sub_2178C9990(v1))
  {
    v117 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21796657C();

    if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
    {
      sub_2178653BC(v51, &qword_27CB8C058, &qword_21796D1D8);
      v63 = 1;
    }

    else
    {
      v64 = v134;
      sub_2178B9220(v51, v134, _s5StateVMa);
      if ((*(v64 + v52[5]) | 2) == 2)
      {
        *&v65 = 1.0 - *(v64 + v52[7]) / *(v64 + v52[6]);
        v116 = v65;
      }

      else
      {
        v116 = 0;
      }

      v66 = v140;
      v67 = v142;
      v68 = *(v142 + *(v140 + 24));
      v69 = *(v34 + 20);
      v70 = *MEMORY[0x277CE0118];
      sub_217966DAC();
      OUTLINED_FUNCTION_3();
      (*(v71 + 104))(&v38[v69], v70);
      *v38 = v68;
      *(v38 + 1) = v68;
      v72 = *(v67 + *(v66 + 28));
      if (v72)
      {
        v73 = v126;
        if (qword_27CB8A340 != -1)
        {
          swift_once();
        }

        v74 = qword_27CB977B8;
      }

      else
      {
        sub_217967AFC();
        v74 = sub_217967B2C();

        v73 = v126;
      }

      sub_2178B9220(v38, v41, MEMORY[0x277CDFC08]);
      OUTLINED_FUNCTION_10_5();
      *&v41[v75] = v74;
      sub_217967E3C();
      OUTLINED_FUNCTION_14_3();
      sub_217898E78(v41, v46, &qword_27CB8C048, &qword_21796D1C8);
      OUTLINED_FUNCTION_10_5();
      v77 = &v46[v76];
      v78 = v150;
      *v77 = v149;
      *(v77 + 1) = v78;
      *(v77 + 2) = v151;
      sub_217898E78(v46, v135, &qword_27CB8C050, &qword_21796D1D0);
      if (qword_27CB8A348 != -1)
      {
        swift_once();
      }

      (*(v120 + 104))(v122, *MEMORY[0x277D26A90], v121);

      LOBYTE(v152) = 0;
      sub_2179658CC();
      if (v72)
      {
        if (qword_27CB8A350 != -1)
        {
          OUTLINED_FUNCTION_3_4(&qword_27CB8A350);
        }

        v79 = qword_27CB977C8;
      }

      else
      {
        v79 = sub_217967B1C();
      }

      v80 = v128;
      (*(v129 + 32))(v128, v73, v130);
      OUTLINED_FUNCTION_10_5();
      *(v80 + v81) = v79;
      sub_217967E3C();
      OUTLINED_FUNCTION_14_3();
      v82 = v124;
      sub_217898E78(v80, v124, &qword_27CB8C038, &qword_21796D1B8);
      OUTLINED_FUNCTION_10_5();
      v84 = (v82 + v83);
      v85 = v153;
      *v84 = v152;
      v84[1] = v85;
      v84[2] = v154;
      v86 = v131;
      sub_217898E78(v82, v131, &qword_27CB8C040, &qword_21796D1C0);
      v87 = v135;
      v88 = v125;
      sub_21788D484(v135, v125, &qword_27CB8C050, &qword_21796D1D0);
      v89 = v132;
      sub_21788D484(v86, v132, &qword_27CB8C040, &qword_21796D1C0);
      v90 = v133;
      sub_21788D484(v88, v133, &qword_27CB8C050, &qword_21796D1D0);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C070, &qword_21796D298);
      sub_21788D484(v89, v90 + *(v91 + 48), &qword_27CB8C040, &qword_21796D1C0);
      sub_2178653BC(v86, &qword_27CB8C040, &qword_21796D1C0);
      sub_2178653BC(v87, &qword_27CB8C050, &qword_21796D1D0);
      sub_2178B927C(v134);
      sub_2178653BC(v89, &qword_27CB8C040, &qword_21796D1C0);
      sub_2178653BC(v88, &qword_27CB8C050, &qword_21796D1D0);
      sub_217898E78(v90, v61, &qword_27CB8C030, &qword_21796D1B0);
      v63 = 0;
    }

    v7 = v117;
  }

  else
  {
    v63 = 1;
  }

  v92 = 1;
  __swift_storeEnumTagSinglePayload(v61, v63, 1, v144);
  v93 = sub_2178C93B0();
  v94 = v145;
  if (v93)
  {
    v95 = v142;
    if (sub_2178C9990(v142))
    {
      v96 = v95;
      v97 = v7;
      v148 = sub_217967B8C();
      sub_2179674CC();
      v98 = v141;
      sub_2179676AC();

      v99 = sub_2179674BC();
      v100 = v136;
      __swift_storeEnumTagSinglePayload(v136, 1, 1, v99);
      v101 = sub_21796751C();
      sub_2178653BC(v100, &qword_27CB8AEC0, &qword_21796B610);
      swift_getKeyPath();
      OUTLINED_FUNCTION_10_5();
      v103 = (v98 + v102);
      *v103 = v104;
      v103[1] = v101;
      if (*(v96 + *(v140 + 28)))
      {
        if (qword_27CB8A350 != -1)
        {
          OUTLINED_FUNCTION_3_4(&qword_27CB8A350);
        }

        v105 = qword_27CB977C8;
      }

      else
      {
        v105 = sub_217967B1C();
      }

      KeyPath = swift_getKeyPath();
      v107 = v139;
      sub_217898E78(v141, v139, &qword_27CB8C018, &qword_21796D198);
      v108 = (v107 + *(v97 + 36));
      *v108 = KeyPath;
      v108[1] = v105;
      v109 = v107;
      v110 = v138;
      sub_217898E78(v109, v138, &qword_27CB8C020, &qword_21796D1A0);
      v7 = v97;
      sub_217898E78(v110, v94, &qword_27CB8C020, &qword_21796D1A0);
      v92 = 0;
    }

    else
    {
      v92 = 1;
    }
  }

  __swift_storeEnumTagSinglePayload(v94, v92, 1, v7);
  v111 = v143;
  sub_21788D484(v61, v143, &qword_27CB8C060, &qword_21796D1E0);
  v112 = v146;
  sub_21784DC20(v94, v146);
  v113 = v147;
  sub_21788D484(v111, v147, &qword_27CB8C060, &qword_21796D1E0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C068, &qword_21796D1E8);
  sub_21784DC20(v112, v113 + *(v114 + 48));
  sub_21784DC84(v94);
  sub_2178653BC(v61, &qword_27CB8C060, &qword_21796D1E0);
  sub_21784DC84(v112);
  return sub_2178653BC(v111, &qword_27CB8C060, &qword_21796D1E0);
}

uint64_t sub_2178B9220(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_63_0();
  v5(v4);
  return a2;
}

uint64_t sub_2178B927C(uint64_t a1)
{
  v2 = _s5StateVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_14_3()
{

  return sub_2179667FC();
}

uint64_t sub_2178B9390(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v13 = (v6 + 32);
    v14 = a2;
    do
    {
      if (a2 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v13;
      }

      v17 = *v12++;
      v16 = v17;
      v18 = *v5++;
      (*(*(v16 - 8) + 16))(&v11[v15], v18);
      v13 += 4;
      --v14;
    }

    while (v14);
  }

  return sub_217967EAC();
}

uint64_t sub_2178B9510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  return v1;
}

uint64_t sub_2178B9568()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C3C();
  return v1;
}

uint64_t sub_2178B95C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C3C();
  return v1;
}

uint64_t sub_2178B9620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = sub_2179668AC();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = OUTLINED_FUNCTION_11_3();
  _s11ContentViewVMa(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C130, &qword_21796D3F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C138, &unk_21796D3F8);
  v9 = OUTLINED_FUNCTION_11_3();
  _s15DoneToolbarItemVMa(v9, v10, v11, v12);
  OUTLINED_FUNCTION_12();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217966E8C();
  OUTLINED_FUNCTION_5_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_6();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v13 = OUTLINED_FUNCTION_11_3();
  _s18NavigationBarStyleVMa(v13, v14, v15, v16);
  sub_21796698C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  v65 = OpaqueTypeConformance2;
  WitnessTable = swift_getWitnessTable();
  v54 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v18 = OUTLINED_FUNCTION_7_4();
  v21 = sub_217873C34(v18, v19, v20);
  swift_getOpaqueTypeMetadata2();
  v69 = v18;
  v70 = v21;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7_4();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7_4();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7_4();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7_4();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = OUTLINED_FUNCTION_7_4();
  swift_getOpaqueTypeMetadata2();
  v53 = v3;
  _s34NavigationDestinationsViewModifierVMa(255, v3, v4, v24);
  sub_21796698C();
  v67 = OpaqueTypeMetadata2;
  v68 = v23;
  v25 = OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_1_2();
  v63 = v25;
  v64 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179669AC();
  sub_21796732C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B600, &unk_21796BED0);
  v26 = OUTLINED_FUNCTION_11_3();
  v27 = v4;
  _s20DismissAlertModifierVMa(v26, v28, v29, v30);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_12();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v31 = sub_217967E9C();
  OUTLINED_FUNCTION_30(v31, v32, v33);
  v34 = sub_217967CFC();
  OUTLINED_FUNCTION_2();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v52 - v38;
  v40 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v42 = v41;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v52 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v52 - v47;
  sub_217967E2C();
  v58 = v53;
  v59 = v27;
  v60 = v56;
  sub_217967CEC();
  sub_2179669BC();
  OUTLINED_FUNCTION_3_5();
  v49 = swift_getWitnessTable();
  sub_2179673FC();
  sub_2179677DC();
  (*(v36 + 8))(v39, v34);
  v61 = v49;
  v62 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  sub_2179560E4();
  v50 = *(v42 + 8);
  v50(v46, v40);
  sub_2179560E4();
  return (v50)(v48, v40);
}

uint64_t sub_2178B9C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a1;
  v101 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B600, &unk_21796BED0);
  MEMORY[0x28223BE20](v6);
  v93 = &v87 - v7;
  v9 = _s20DismissAlertModifierVMa(255, a2, a3, v8);
  v94 = v6;
  v92 = v9;
  v100 = sub_21796698C();
  v97 = *(v100 - 8);
  v10 = MEMORY[0x28223BE20](v100);
  v99 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v98 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C140, &qword_21796D408);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = (&v87 - v14);
  v104 = sub_2179668AC();
  v16 = _s11ContentViewVMa(255, a2, a3, v15);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C130, &qword_21796D3F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C138, &unk_21796D3F8);
  _s15DoneToolbarItemVMa(255, a2, a3, v17);
  swift_getTupleTypeMetadata3();
  v18 = sub_217966E8C();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v113 = v16;
  v114 = v18;
  v115 = WitnessTable;
  v116 = v20;
  swift_getOpaqueTypeMetadata2();
  _s18NavigationBarStyleVMa(255, a2, a3, v21);
  v22 = sub_21796698C();
  v113 = v16;
  v114 = v18;
  v115 = WitnessTable;
  v116 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = swift_getWitnessTable();
  v112[9] = OpaqueTypeConformance2;
  v112[10] = v24;
  v25 = swift_getWitnessTable();
  v113 = v22;
  v114 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v113 = v22;
  v114 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v30 = sub_217873C34(v27, v28, v29);
  v31 = MEMORY[0x277D837D0];
  v113 = OpaqueTypeMetadata2;
  v114 = MEMORY[0x277D837D0];
  v115 = v27;
  v116 = v30;
  v32 = swift_getOpaqueTypeMetadata2();
  v113 = OpaqueTypeMetadata2;
  v114 = v31;
  v115 = v27;
  v116 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v113 = v32;
  v114 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v113 = v32;
  v114 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v113 = v34;
  v114 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v113 = v34;
  v114 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v113 = v36;
  v114 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v113 = v36;
  v114 = v37;
  v39 = swift_getOpaqueTypeConformance2();
  v113 = v38;
  v114 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v113 = v38;
  v114 = v39;
  v41 = swift_getOpaqueTypeConformance2();
  v113 = v40;
  v114 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v113 = v40;
  v114 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v113 = v42;
  v114 = v43;
  swift_getOpaqueTypeMetadata2();
  _s34NavigationDestinationsViewModifierVMa(255, a2, a3, v44);
  sub_21796698C();
  v113 = v42;
  v114 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = swift_getWitnessTable();
  v112[7] = v45;
  v112[8] = v46;
  v87 = swift_getWitnessTable();
  v47 = sub_2179669AC();
  v88 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v49 = &v87 - v48;
  sub_21796732C();
  v90 = sub_21796698C();
  v102 = *(v90 - 8);
  v50 = MEMORY[0x28223BE20](v90);
  v104 = &v87 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v103 = &v87 - v52;
  v53 = v89;
  _s9ViewModelCMa(0, a2, a3, v54);
  swift_getWitnessTable();
  sub_217966AAC();
  v108 = a2;
  v109 = a3;
  swift_getKeyPath();
  sub_217966ABC();

  v95 = a2;
  v105 = a2;
  v96 = a3;
  v106 = a3;
  v107 = v53;
  sub_21796699C();
  if (qword_27CB8A398 != -1)
  {
    swift_once();
  }

  v55 = qword_27CB978D8;
  v56 = unk_27CB978E0;
  v57 = qword_27CB978E8;
  v58 = swift_getWitnessTable();
  v59 = v104;
  sub_2178ED854(v55, v56, v57, v47, v58);
  (*(v88 + 8))(v49, v47);
  v60 = sub_2178BD980();
  v112[5] = v58;
  v112[6] = v60;
  v87 = MEMORY[0x277CDFAD8];
  v61 = v90;
  v88 = swift_getWitnessTable();
  sub_2179560E4();
  v62 = *(v102 + 8);
  v89 = v102 + 8;
  v91 = v62;
  v62(v59, v61);
  sub_217966D8C();
  v63 = sub_21796761C();
  v65 = v64;
  LOBYTE(v57) = v66;
  v113 = sub_217967B0C();
  v67 = sub_2179675BC();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  sub_21788C9B8(v63, v65, v57 & 1);

  v113 = v67;
  v114 = v69;
  LOBYTE(v115) = v71 & 1;
  v116 = v73;
  v74 = v93;
  sub_21796789C();
  sub_21788C9B8(v67, v69, v71 & 1);

  v75 = sub_217898AE0();
  v76 = v99;
  sub_217960068(v95, v94, v95, v75, v96);
  sub_2178BE050(v74, &qword_27CB8B600, &unk_21796BED0);
  v77 = swift_getWitnessTable();
  v112[2] = v75;
  v112[3] = v77;
  v78 = v100;
  v79 = swift_getWitnessTable();
  v80 = v98;
  sub_2179560E4();
  v81 = v97;
  v82 = *(v97 + 8);
  v82(v76, v78);
  v83 = v104;
  v84 = v103;
  (*(v102 + 16))(v104, v103, v61);
  v113 = v83;
  (*(v81 + 16))(v76, v80, v78);
  v114 = v76;
  v112[0] = v61;
  v112[1] = v78;
  v110 = v88;
  v111 = v79;
  sub_2178B9390(&v113, 2, v112);
  v82(v80, v78);
  v85 = v91;
  v91(v84, v61);
  v82(v76, v78);
  return v85(v83, v61);
}

uint64_t sub_2178BA8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v212 = a4;
  v213 = a1;
  v209 = _s8MainViewVMa(0, a2, a3, a5);
  v207 = *(v209 - 8);
  v208 = *(v207 + 64);
  MEMORY[0x28223BE20](v209);
  v206 = &v133 - v7;
  v211 = sub_2179668EC();
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v205 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_21796673C();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v202 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_21796724C();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v199 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C148, &unk_217972DC0);
  MEMORY[0x28223BE20](v11 - 8);
  v198 = &v133 - v12;
  v197 = sub_21796738C();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v195 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_217966FEC();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v189 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_217966FFC();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v188 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_217966CEC();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v183 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s11ContentViewVMa(0, a2, a3, v17);
  v184 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v179 = &v133 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C130, &qword_21796D3F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C138, &unk_21796D3F8);
  _s15DoneToolbarItemVMa(255, a2, a3, v20);
  swift_getTupleTypeMetadata3();
  v21 = sub_217966E8C();
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v226 = v18;
  v227 = v21;
  v140 = v21;
  v228 = WitnessTable;
  v229 = v23;
  v24 = WitnessTable;
  v144 = WitnessTable;
  v25 = v23;
  v143 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v178 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v156 = &v133 - v26;
  _s18NavigationBarStyleVMa(255, a2, a3, v27);
  v28 = sub_21796698C();
  v177 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v149 = &v133 - v29;
  v226 = v18;
  v227 = v21;
  v228 = v24;
  v229 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v142 = OpaqueTypeConformance2;
  v31 = swift_getWitnessTable();
  v224 = OpaqueTypeConformance2;
  v225 = v31;
  v194 = MEMORY[0x277CDFAD8];
  v32 = swift_getWitnessTable();
  v226 = v28;
  v227 = v32;
  v33 = v32;
  v136 = v32;
  v34 = swift_getOpaqueTypeMetadata2();
  v185 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v214 = &v133 - v35;
  v226 = v28;
  v227 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v39 = sub_217873C34(v36, v37, v38);
  v226 = v34;
  v227 = MEMORY[0x277D837D0];
  v40 = v34;
  v173 = v34;
  v41 = MEMORY[0x277D837D0];
  v228 = v36;
  v229 = v39;
  v159 = v36;
  v158 = v39;
  v42 = swift_getOpaqueTypeMetadata2();
  v182 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v168 = &v133 - v43;
  v226 = v40;
  v227 = v41;
  v228 = v36;
  v229 = v39;
  v44 = swift_getOpaqueTypeConformance2();
  v226 = v42;
  v227 = v44;
  v45 = v42;
  v170 = v42;
  v46 = v44;
  v171 = v44;
  v47 = swift_getOpaqueTypeMetadata2();
  v181 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v169 = &v133 - v48;
  v226 = v45;
  v227 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v226 = v47;
  v227 = v49;
  v50 = v47;
  v163 = v47;
  v51 = v49;
  v164 = v49;
  v52 = swift_getOpaqueTypeMetadata2();
  v180 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v162 = &v133 - v53;
  v226 = v50;
  v227 = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v226 = v52;
  v227 = v54;
  v55 = v52;
  v152 = v52;
  v56 = v54;
  v153 = v54;
  v57 = swift_getOpaqueTypeMetadata2();
  v175 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v151 = &v133 - v58;
  v226 = v55;
  v227 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v226 = v57;
  v227 = v59;
  v60 = v57;
  v146 = v57;
  v61 = v59;
  v148 = v59;
  v62 = swift_getOpaqueTypeMetadata2();
  v166 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v147 = &v133 - v63;
  v226 = v60;
  v227 = v61;
  v64 = swift_getOpaqueTypeConformance2();
  v226 = v62;
  v227 = v64;
  v65 = v62;
  v138 = v62;
  v66 = v64;
  v139 = v64;
  v67 = swift_getOpaqueTypeMetadata2();
  v155 = v67;
  v176 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v137 = &v133 - v68;
  v226 = v65;
  v227 = v66;
  v154 = swift_getOpaqueTypeConformance2();
  v226 = v67;
  v227 = v154;
  v165 = MEMORY[0x277CDEF38];
  v150 = swift_getOpaqueTypeMetadata2();
  v172 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v141 = &v133 - v69;
  v161 = _s34NavigationDestinationsViewModifierVMa(255, a2, a3, v70);
  v167 = sub_21796698C();
  v174 = *(v167 - 8);
  v71 = MEMORY[0x28223BE20](v167);
  v145 = &v133 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v157 = &v133 - v73;
  v74 = v213;
  v75 = sub_2178B9568();
  v77 = v76;
  LOBYTE(v40) = v78;
  v79 = v74;
  v80 = sub_2178B95C4();
  v82 = v179;
  sub_21795305C(v75, v77, v40 & 1, v80, v83, v81 & 1, a2, a3, v179);
  v217 = a2;
  v218 = a3;
  v219 = v79;
  swift_checkMetadataState();
  v84 = v156;
  sub_217967A1C();
  (*(v184 + 8))(v82, v18);
  v85 = v149;
  v86 = OpaqueTypeMetadata2;
  v87 = sub_21792D7FC(0, a2, OpaqueTypeMetadata2, a2, v142, a3);
  (*(v178 + 8))(v84, v86, v87);
  v88 = v186;
  v89 = v183;
  v90 = v187;
  (*(v186 + 104))(v183, *MEMORY[0x277CDDDC0], v187);
  sub_21796794C();
  (*(v88 + 8))(v89, v90);
  (*(v177 + 8))(v85, v28);
  v134 = a2;
  v135 = a3;
  _s9ViewModelCMa(0, a2, a3, v91);
  swift_getWitnessTable();
  sub_217966AAC();
  v215 = a2;
  v216 = a3;
  swift_getKeyPath();
  sub_217966ABC();

  v92 = v189;
  sub_217966FCC();
  v93 = v188;
  sub_217966FBC();
  (*(v190 + 8))(v92, v191);
  sub_217966A9C();
  LOBYTE(v88) = sub_2178D86A8();

  v222 = sub_2178FF388(v88 & 1);
  v223 = v94;
  v95 = v168;
  v96 = v173;
  v97 = v214;
  sub_2179676DC();

  (*(v192 + 8))(v93, v193);
  (*(v185 + 8))(v97, v96);
  v98 = v195;
  sub_21796737C();
  v99 = v169;
  v100 = v170;
  sub_21796795C();
  (*(v196 + 8))(v98, v197);
  (*(v182 + 8))(v95, v100);
  v101 = v198;
  sub_21796725C();
  v102 = sub_21796727C();
  __swift_storeEnumTagSinglePayload(v101, 0, 1, v102);
  v103 = v162;
  v104 = v163;
  sub_21796793C();
  sub_2178BE050(v101, &qword_27CB8C148, &unk_217972DC0);
  (*(v181 + 8))(v99, v104);
  v105 = v199;
  sub_21796723C();
  v106 = v151;
  v107 = v152;
  sub_21796791C();
  (*(v200 + 8))(v105, v201);
  (*(v180 + 8))(v103, v107);
  v108 = v147;
  v109 = v146;
  MEMORY[0x21CEA6830](1, v146, v148);
  (*(v175 + 8))(v106, v109);
  v110 = v202;
  sub_21796672C();
  v111 = v137;
  v112 = v138;
  sub_21796777C();
  (*(v203 + 8))(v110, v204);
  (*(v166 + 8))(v108, v112);
  v113 = v205;
  sub_2179668DC();
  v114 = v207;
  v115 = v206;
  v116 = v209;
  (*(v207 + 16))(v206, v213, v209);
  v117 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v118 = swift_allocObject();
  v119 = v134;
  v120 = v135;
  *(v118 + 16) = v134;
  *(v118 + 24) = v120;
  (*(v114 + 32))(v118 + v117, v115, v116);
  v121 = v141;
  v122 = v155;
  v123 = v154;
  sub_217967A7C();

  (*(v210 + 8))(v113, v211);
  (*(v176 + 8))(v111, v122);
  v226 = v122;
  v227 = v123;
  v124 = swift_getOpaqueTypeConformance2();
  v125 = v145;
  v126 = v150;
  v127 = sub_2179110EC(v119, v150, v119, v124, v120);
  (*(v172 + 8))(v121, v126, v127);
  v128 = swift_getWitnessTable();
  v220 = v124;
  v221 = v128;
  v129 = v167;
  swift_getWitnessTable();
  v130 = v157;
  sub_2179560E4();
  v131 = *(v174 + 8);
  v131(v125, v129);
  sub_2179560E4();
  return (v131)(v130, v129);
}

uint64_t sub_2178BC06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C138, &unk_21796D3F8);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - v7;
  v9 = sub_21796705C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C130, &qword_21796D3F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  sub_21796703C();
  v29 = a2;
  v30 = a3;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C150, &qword_21796D488);
  sub_2178BDA08();
  sub_21796674C();
  sub_21796704C();
  v26 = a2;
  v27 = a3;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C1B0, &qword_21796D4B8);
  sub_2178BDC3C(&qword_27CB8C1B8, &qword_27CB8C1B0, &qword_21796D4B8, sub_2178BDCC0);
  sub_21796674C();
  *&v32 = sub_2178C3764(a2, a3, v14, v15);
  *(&v32 + 1) = v16;
  done = _s15DoneToolbarItemVMa(0, a2, a3, v17);
  swift_getWitnessTable();
  (*(*(done - 8) + 16))(&v33, &v32, done);

  v22 = v33;
  v32 = v33;
  v19 = MEMORY[0x277CDD7A8];
  sub_217864B2C(&qword_27CB8C1D0, &qword_27CB8C130, &qword_21796D3F0, MEMORY[0x277CDD7A8]);
  sub_217864B2C(&qword_27CB8C1D8, &qword_27CB8C138, &unk_21796D3F8, v19);
  v20 = v23;
  sub_2178BD3AC(v13, v8, &v32, v10, v23, done, v24);

  (*(v25 + 8))(v8, v20);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2178BC440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v67 = a4;
  v53 = sub_2179665FC();
  MEMORY[0x28223BE20](v53);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C1A8, &qword_21796D4B0);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C198, &qword_21796D4A8);
  MEMORY[0x28223BE20](v58);
  v59 = &v53 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C188, &qword_21796D4A0);
  MEMORY[0x28223BE20](v66);
  v60 = &v53 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C1E0, &unk_21796D500);
  MEMORY[0x28223BE20](v64);
  v65 = &v53 - v14;
  v61 = a2;
  v62 = a3;
  v16 = _s8MainViewVMa(0, a2, a3, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C178, &qword_21796D498);
  v54 = *(v23 - 8);
  v55 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C168, &qword_21796D490);
  MEMORY[0x28223BE20](v63);
  v27 = &v53 - v26;
  if (sub_2178B9510())
  {
    sub_2179665DC();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v53);
    (*(v17 + 16))(v19, a1, v16);
    v28 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v29 = swift_allocObject();
    v30 = v62;
    *(v29 + 16) = v61;
    *(v29 + 24) = v30;
    (*(v17 + 32))(v29 + v28, v19, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C1E8, &qword_21796D510);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C1F0, &qword_21796D518);
    v32 = sub_2178BDC3C(qword_27CB8C1F8, &qword_27CB8C1F0, &qword_21796D518, sub_2178981D0);
    v68 = v31;
    v69 = v32;
    swift_getOpaqueTypeConformance2();
    sub_217967C5C();
    sub_217966D8C();
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v33 = qword_27CB978B8;
    v34 = sub_21796761C();
    v36 = v35;
    v38 = v37;
    sub_217864B2C(&qword_27CB8C170, &qword_27CB8C178, &qword_21796D498, MEMORY[0x277CDF028]);
    v39 = v55;
    sub_21796783C();
    sub_21788C9B8(v34, v36, v38 & 1);

    (*(v54 + 8))(v25, v39);
    sub_21784DF0C(v27, v65);
    swift_storeEnumTagMultiPayload();
    sub_2178BDAC0();
    sub_2178BDC3C(&qword_27CB8C180, &qword_27CB8C188, &qword_21796D4A0, sub_2178BDB78);
    sub_217966F8C();
    return sub_21784DF7C(v27);
  }

  else
  {
    sub_2179665DC();
    (*(v17 + 16))(v19, a1, v16);
    v41 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v42 = swift_allocObject();
    v43 = v62;
    *(v42 + 16) = v61;
    *(v42 + 24) = v43;
    (*(v17 + 32))(v42 + v41, v19, v16);
    MEMORY[0x21CEA6BE0](v8, sub_2178BDD78, v42);
    if (qword_27CB8A3A8 != -1)
    {
      swift_once();
    }

    sub_2178EE0A8(qword_27CB97908, unk_27CB97910, qword_27CB97918);
    sub_217864B2C(&qword_27CB8C1A0, &qword_27CB8C1A8, &qword_21796D4B0, MEMORY[0x277CDF028]);
    v44 = v59;
    v45 = v57;
    sub_21796790C();

    (*(v56 + 8))(v11, v45);
    sub_217966D8C();
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v46 = qword_27CB978B8;
    v47 = sub_21796761C();
    v49 = v48;
    v51 = v50;
    sub_2178BDB78();
    v52 = v60;
    sub_21796783C();
    sub_21788C9B8(v47, v49, v51 & 1);

    sub_2178BE050(v44, &qword_27CB8C198, &qword_21796D4A8);
    sub_2178BDD90(v52, v65);
    swift_storeEnumTagMultiPayload();
    sub_2178BDAC0();
    sub_2178BDC3C(&qword_27CB8C180, &qword_27CB8C188, &qword_21796D4A0, sub_2178BDB78);
    sub_217966F8C();
    return sub_2178BE050(v52, &qword_27CB8C188, &qword_21796D4A0);
  }
}

double sub_2178BCDF8(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  sub_217967C2C();

  return result;
}

uint64_t sub_2178BCE90@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v11 = sub_21796722C();
  v1 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C1F0, &qword_21796D518);
  MEMORY[0x28223BE20](v10[0]);
  v5 = v10 - v4;
  v6 = sub_217967B8C();
  v7 = sub_21796756C();
  KeyPath = swift_getKeyPath();
  if (qword_27CB8A3A0 != -1)
  {
    swift_once();
  }

  v12 = v6;
  v13 = KeyPath;
  v14 = v7;
  sub_2178EE0A8(qword_27CB978F0, *algn_27CB978F8, qword_27CB97900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4D0, &qword_21796BD50);
  sub_2178981D0();
  sub_21796790C();

  sub_2179671FC();
  sub_2178BDC3C(qword_27CB8C1F8, &qword_27CB8C1F0, &qword_21796D518, sub_2178981D0);
  sub_2179678AC();
  (*(v1 + 8))(v3, v11);
  return sub_2178BE050(v5, &qword_27CB8C1F0, &qword_21796D518);
}

double sub_2178BD108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(0, a2, a3, a4);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_217862E84();
  sub_2178DC24C();

  return result;
}

uint64_t sub_2178BD1B0@<X0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  v26[1] = a2;
  v6 = sub_217966DFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9ViewModelCMa(0, x1_0, a3, v10);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178DA848();
  v12 = v11;
  v14 = v13;

  v27 = v12;
  v28 = v14;
  sub_217873C34(v15, v16, v17);
  v18 = sub_21796763C();
  v20 = v19;
  LOBYTE(a3) = v21;
  v23 = v22;
  KeyPath = swift_getKeyPath();
  v27 = v18;
  v28 = v20;
  v29 = a3 & 1;
  v30 = v23;
  v31 = KeyPath;
  v32 = 0x3FD999999999999ALL;
  sub_217966DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C1C8, &unk_21796D4C0);
  sub_2178BDCC0();
  sub_2179678FC();
  (*(v7 + 8))(v9, v6);
  sub_21788C9B8(v18, v20, a3 & 1);
}

uint64_t sub_2178BD3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[1] = a7;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v16 = v20 - v15;
  v17 = *(v14 + 48);
  v18 = *(v14 + 64);
  (*(*(a4 - 8) + 16))(v20 - v15, a1, a4);
  (*(*(a5 - 8) + 16))(&v16[v17], a2, a5);
  (*(*(a6 - 8) + 16))(&v16[v18], a3, a6);
  return sub_217966E9C();
}

uint64_t sub_2178BD5D8@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = sub_21785853C(0) & 1;
  *(a1 + 8) = v6;
  *(a1 + 16) = sub_21785853C(0) & 1;
  *(a1 + 24) = v7;
  _s9ViewModelCMa(0, a2, a3, v8);
  swift_getWitnessTable();
  *(a1 + 32) = sub_217966ACC();
  *(a1 + 40) = v9;
  v11 = *(_s8MainViewVMa(0, a2, a3, v10) + 48);
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C088, &qword_21796D2E0);

  return swift_storeEnumTagMultiPayload();
}

void sub_2178BD750(uint64_t a1)
{
  sub_21788C240();
  if (v3 <= 0x3F)
  {
    _s9ViewModelCMa(255, *(a1 + 16), *(a1 + 24), v2);
    swift_getWitnessTable();
    sub_217966ADC();
    if (v4 <= 0x3F)
    {
      sub_2178BD858(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2178BD858(uint64_t a1)
{
  if (!qword_27CB8C118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C120, qword_21796D300);
    v1 = sub_2179666CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8C118);
    }
  }
}

unint64_t sub_2178BD8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8C128;
  if (!qword_27CB8C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C128);
  }

  return result;
}

unint64_t sub_2178BD980()
{
  result = qword_27CB8A710;
  if (!qword_27CB8A710)
  {
    sub_21796732C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A710);
  }

  return result;
}

unint64_t sub_2178BDA08()
{
  result = qword_27CB8C158;
  if (!qword_27CB8C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C150, &qword_21796D488);
    sub_2178BDAC0();
    sub_2178BDC3C(&qword_27CB8C180, &qword_27CB8C188, &qword_21796D4A0, sub_2178BDB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C158);
  }

  return result;
}

unint64_t sub_2178BDAC0()
{
  result = qword_27CB8C160;
  if (!qword_27CB8C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C168, &qword_21796D490);
    sub_217864B2C(&qword_27CB8C170, &qword_27CB8C178, &qword_21796D498, MEMORY[0x277CDF028]);
    sub_2178BD980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C160);
  }

  return result;
}

unint64_t sub_2178BDB78()
{
  result = qword_27CB8C190;
  if (!qword_27CB8C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C198, &qword_21796D4A8);
    sub_217864B2C(&qword_27CB8C1A0, &qword_27CB8C1A8, &qword_21796D4B0, MEMORY[0x277CDF028]);
    sub_2178BD980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C190);
  }

  return result;
}

uint64_t sub_2178BDC3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2178BD980();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2178BDCC0()
{
  result = qword_27CB8C1C0;
  if (!qword_27CB8C1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C1C8, &unk_21796D4C0);
    sub_217864B2C(&qword_27CB8B608, &qword_27CB8B420, &qword_21796BCD8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C1C0);
  }

  return result;
}

uint64_t sub_2178BDD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C188, &qword_21796D4A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (_s8MainViewVMa(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));

  v7 = v6 + v5[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C088, &qword_21796D2E0);
  LODWORD(v6) = swift_getEnumCaseMultiPayload();

  if (v6 == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C120, qword_21796D300) + 32);
    sub_217966A0C();
    OUTLINED_FUNCTION_4_1();
    (*(v9 + 8))(v7 + v8);
  }

  return swift_deallocObject();
}

uint64_t sub_2178BDF60(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(_s8MainViewVMa(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_2178BDFF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217966C2C();
  *a1 = result;
  return result;
}

uint64_t sub_2178BE050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2178BE168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v81 = a8;
  v94 = a7;
  v99 = a12;
  v100 = a4;
  v97 = a2;
  v98 = a11;
  v19 = sub_21796944C();
  sub_217967D5C();
  OUTLINED_FUNCTION_0_1();
  v21 = v20;
  OUTLINED_FUNCTION_47();
  v86 = v22;
  MEMORY[0x28223BE20](v23);
  v87 = &v76 - v24;
  v79 = v19;
  v76 = *(v19 - 8);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_5(v26, v76);
  OUTLINED_FUNCTION_0_1();
  v77 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v78 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *a10;
  v95 = *(a10 + 8);
  v31 = v29;
  v32 = v97;
  *a9 = a1;
  *(a9 + 8) = v32;
  v84 = a3 & 1;
  *(a9 + 16) = a3;
  v90 = a14;
  v34 = _s17MainViewContainerVMa(0, a13, a14, v33);
  v35 = *(v34 + 36);
  v89 = v21;
  v36 = *(v21 + 16);
  v37 = v94;
  v91 = v31;
  v38 = v31;
  v39 = v81;
  v83 = v21 + 16;
  v82 = v36;
  (v36)(a9 + v35, v100, v38);
  v96 = v34;
  v40 = (a9 + *(v34 + 40));
  *v40 = a5;
  v40[1] = a6;
  v40[2] = v37;
  v92 = a5;

  v93 = a6;

  v88 = a1;

  v41 = sub_21796911C();
  if (v39)
  {

    v101[1] = v92;
    v101[2] = v93;
    v101[3] = v37;
    v42 = sub_21796919C();
    v43 = OUTLINED_FUNCTION_9_4(v42);
    v44 = a13;
    MEMORY[0x21CEA6C70](v101, v43);
    v41 = v101[0];
  }

  else
  {
    v45 = v80;
    MEMORY[0x21CEA6C70](v91);
    if (__swift_getEnumTagSinglePayload(v45, 1, a13) == 1)
    {
      (*(v76 + 8))(v45, v79);
    }

    else
    {

      v46 = *(v77 + 32);
      v47 = v78;
      v46(v78, v45, a13);
      sub_2178BF55C(a13, a13);
      swift_allocObject();
      v41 = sub_2179690EC();
      v46(v48, v47, a13);
      sub_21796919C();
    }

    v44 = a13;
  }

  v80 = v41;
  v49 = v96;
  v50 = v96[12];
  v81 = v39 & 1;
  *(a9 + v50) = v39 & 1;
  v51 = a9 + v49[13];
  v52 = v85;
  *v51 = v85;
  *(v51 + 8) = v95;
  *(a9 + v49[14]) = v41;
  v53 = (a9 + v49[15]);
  v54 = v99;
  *v53 = v98;
  v53[1] = v54;
  v55 = v87;
  v56 = v91;
  v82(v87, v100, v91);
  v57 = v89;
  v58 = (*(v89 + 80) + 49) & ~*(v89 + 80);
  v82 = ((v58 + v86 + 7) & 0xFFFFFFFFFFFFFFF8);
  v83 = (v58 + v86 + 39) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + v86 + 55) & 0xFFFFFFFFFFFFFFF8;
  v86 = a9;
  v60 = swift_allocObject();
  v61 = v90;
  *(v60 + 16) = v44;
  *(v60 + 24) = v61;
  v62 = v97;
  *(v60 + 32) = v88;
  *(v60 + 40) = v62;
  *(v60 + 48) = v84;
  (*(v57 + 32))(v60 + v58, v55, v56);
  v63 = v82 + v60;
  v64 = v93;
  *v63 = v92;
  *(v63 + 1) = v64;
  *(v63 + 2) = v94;
  v63[24] = v81;
  v65 = v60 + v83;
  *v65 = v52;
  v66 = v95;
  *(v65 + 8) = v95;
  *(v60 + v59) = v80;
  v67 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
  v68 = v99;
  *v67 = v98;
  v67[1] = v68;
  sub_2178BF534(v52, v66);
  _s9ViewModelCMa(0, v44, v61, v69);

  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  v70 = sub_2179666EC();
  v72 = v71;
  LOBYTE(v55) = v73;
  result = (*(v57 + 8))(v100, v56);
  v75 = v86 + v96[11];
  *v75 = v70;
  *(v75 + 8) = v72;
  *(v75 + 16) = v55 & 1;
  return result;
}

uint64_t sub_2178BE770(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v34 = a3;
  v35 = a8;
  v31 = a7;
  v32 = a2;
  v28 = a5;
  v29 = a6;
  v30 = a1;
  v33 = a12;
  sub_21796944C();
  v16 = sub_217967D5C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  v27 = _s9ViewModelCMa(0, a14, a15, v20);
  (*(v17 + 16))(v19, a4, v16);
  v36 = a9;
  v37 = a10;
  v21 = v28;

  v22 = v29;

  v23 = v31;

  v24 = v30;

  v25 = v32;

  sub_2178BF534(a9, a10);

  return sub_2178D38D0(v24, v25, v34, v19, v21, v22, v23, v35, &v36, a11, v33, a13);
}

uint64_t sub_2178BE934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v56 = a3;
  v50 = a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = _s8MainViewVMa(0, v3, v4, a2);
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v54 = v12;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v40 = &v39 - v14;
  _s9ViewModelCMa(255, v3, v4, v15);
  sub_21796944C();
  v49 = sub_21796731C();
  v45 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v55 = v16;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_5(v18, v39);
  v41 = v3;
  v42 = v4;
  v47 = _s33MainViewContainerDismissalWrapperVMa(255, v3, v4, v19);
  OUTLINED_FUNCTION_1_3();
  WitnessTable = swift_getWitnessTable();
  v51 = sub_217966F6C();
  v20 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v53 = v21;
  v23 = MEMORY[0x28223BE20](v22);
  v44 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v46 = &v39 - v25;
  sub_2178BD5D8(v10, v3, v4);
  sub_21796741C();
  OUTLINED_FUNCTION_3_6();
  v26 = swift_getWitnessTable();
  sub_2178C5464(v5);
  sub_2179677DC();
  (*(v7 + 8))(v10, v5);
  v27 = v52;
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  sub_2179666FC();
  v64 = v26;
  v65 = MEMORY[0x277CE0880];
  v28 = swift_getWitnessTable();
  v29 = v43;
  v30 = v40;
  sub_21796780C();

  (*(v54 + 8))(v30, v11);
  v57 = v41;
  v58 = v42;
  v59 = v27;
  OUTLINED_FUNCTION_2_1();
  v31 = swift_getWitnessTable();
  v62 = v28;
  v63 = v31;
  v32 = v45;
  v33 = swift_getWitnessTable();
  sub_217967E3C();
  v34 = v44;
  sub_21796767C();
  (*(v55 + 8))(v29, v32);
  OUTLINED_FUNCTION_4_7();
  v35 = swift_getWitnessTable();
  v60 = v33;
  v61 = v35;
  swift_getWitnessTable();
  v36 = v46;
  sub_2179560E4();
  v37 = *(v53 + 8);
  v37(v34, v20);
  sub_2179560E4();
  return (v37)(v36, v20);
}

uint64_t sub_2178BEE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v46 = a2;
  v8 = _s17MainViewContainerVMa(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v50 = *(v9 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v45 = a1;
  v44 = a3;
  _s9ViewModelCMa(0, a2, a3, v14);
  swift_getWitnessTable();
  v15 = sub_2179666FC();
  sub_2178D759C(v15, v16, v17, v18, v19, v20, v21, v22, v43, v44, v45, v46, v47, v48);
  v47 = v23;

  v24 = *(v9 + 16);
  v24(v13, a1, v8);
  v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v26 = swift_allocObject();
  v27 = v46;
  *(v26 + 16) = v46;
  *(v26 + 24) = a3;
  v28 = *(v9 + 32);
  v28(v26 + v25, v13, v8);
  v29 = v48;
  v24(v48, v45, v8);
  v30 = swift_allocObject();
  v31 = v27;
  *(v30 + 16) = v27;
  v32 = v44;
  *(v30 + 24) = v44;
  v28(v30 + v25, v29, v8);
  sub_21793558C(v47, sub_2178BFD0C, v26, sub_2178BFED0, v30, &v57);
  v33 = *(&v57 + 1);
  v34 = v58;
  v60 = v57;
  v51 = v57;
  v52 = v58;
  v35 = *(&v58 + 1);
  v36 = v59;
  v53 = v59;
  _s33MainViewContainerDismissalWrapperVMa(0, v31, v32, v37);
  swift_getWitnessTable();
  sub_2179560E4();
  v38 = sub_21796919C();
  (*(*(v38 - 8) + 8))(&v60, v38);
  sub_21789096C(v33, v34);
  sub_21789096C(v35, v36);
  v39 = *(&v54 + 1);
  v40 = v55;
  v41 = v56;
  v51 = v54;
  v52 = v55;
  v53 = v56;
  sub_2179560E4();

  sub_21789096C(v39, v40);
  return sub_21789096C(*(&v40 + 1), v41);
}

double sub_2178BF1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  _s17MainViewContainerVMa(0, a2, a3, v8);
  _s9ViewModelCMa(0, a2, a3, v9);
  swift_getWitnessTable();
  sub_2179666FC();
  if (qword_27CB8A438 != -1)
  {
    swift_once();
  }

  v10 = _s5AlertVMa(0);
  v11 = __swift_project_value_buffer(v10, qword_27CB97AC0);
  sub_217864EC8(v11, v7);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  sub_2178D8208(v7);

  return result;
}

double sub_2178BF364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s17MainViewContainerVMa(0, a2, a3, a4);
  _s9ViewModelCMa(0, a2, a3, v6);
  swift_getWitnessTable();
  sub_2179666FC();
  sub_2178DC24C();

  return result;
}

double sub_2178BF424(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2178BF438()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_21796944C();
  v4 = *(OUTLINED_FUNCTION_9_4(v3) - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + 55) & 0xFFFFFFFFFFFFFFF8;
  return sub_2178BE770(*(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v5, *(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16), *(v0 + v7 + 24), *(v0 + v8), *(v0 + v8 + 8), *(v0 + v9), *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v1, v2);
}

double sub_2178BF534(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2178BF548(a1, a2);
  }

  return result;
}

double sub_2178BF548(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2178BF55C(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2178BF600(uint64_t a1)
{
  sub_2178BFC6C(319, &qword_27CB8C280, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_21796944C();
    sub_217967D5C();
    if (v4 <= 0x3F)
    {
      sub_21796919C();
      v6 = v5;
      sub_217967D5C();
      if (v8 <= 0x3F)
      {
        _s9ViewModelCMa(255, v3, *(a1 + 24), v7);
        swift_getWitnessTable();
        sub_21796670C();
        if (v9 <= 0x3F)
        {
          sub_2178BFC6C(319, &qword_27CB8C288, &type metadata for MusicPicker.Reason, MEMORY[0x277D83D88]);
          if (v10 <= 0x3F && v6 <= 0x3F)
          {
            sub_217875494();
            if (v11 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2178BF7C0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  if (v6)
  {
    v11 = 5;
  }

  else
  {
    v11 = 6;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 | 7;
  if (v9 >= a2)
  {
LABEL_34:
    if (v9 == 0x7FFFFFFF)
    {
      v21 = *(result + 8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v10 + ((((result + v12 + 17) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v13 = ((((((((v11 + *(*(v4 - 8) + 64) - (((-17 - v10) | v10) + ((-18 - v12) | v12))) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v14 = a2 - v9;
    v15 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = v14 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        v19 = *(result + v13);
        if (!v19)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      case 2:
        v19 = *(result + v13);
        if (!v19)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      case 3:
        __break(1u);
        return result;
      case 4:
        v19 = *(result + v13);
        if (!v19)
        {
          goto LABEL_34;
        }

LABEL_30:
        v20 = v19 - 1;
        if (v15)
        {
          v20 = 0;
          LODWORD(v15) = *result;
        }

        result = v9 + (v15 | v20) + 1;
        break;
      default:
        goto LABEL_34;
    }
  }

  return result;
}

void sub_2178BF998(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  if (v10 >= 0)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = ((v13 + 16) & ~v13) + v14;
  v16 = ((((((((v15 + (((v13 | 7) + 17) & ~(v13 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 < a3)
  {
    v17 = a3 - v12;
    if (((((((((v15 + (((v13 | 7) + 17) & ~(v13 | 7)) + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v6 = v19;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v6)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_38;
      default:
LABEL_38:
        if (a2)
        {
LABEL_39:
          if (v12 == 0x7FFFFFFF)
          {
            if ((a2 & 0x80000000) != 0)
            {
              a1[16] = 0;
              *a1 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              *(a1 + 1) = a2 - 1;
            }
          }

          else
          {
            v22 = (&a1[(v13 | 7) + 17] & ~(v13 | 7));
            if (v11 >= a2)
            {
              v26 = a2 + 1;

              __swift_storeEnumTagSinglePayload((v13 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13, v26, v9, v7);
            }

            else
            {
              if (v15 <= 3)
              {
                v23 = ~(-1 << (8 * v15));
              }

              else
              {
                v23 = -1;
              }

              if (v15)
              {
                v24 = v23 & (~v11 + a2);
                if (v15 <= 3)
                {
                  v25 = v15;
                }

                else
                {
                  v25 = 4;
                }

                bzero(v22, v15);
                switch(v25)
                {
                  case 2:
                    *v22 = v24;
                    break;
                  case 3:
                    *v22 = v24;
                    v22[2] = BYTE2(v24);
                    break;
                  case 4:
                    *v22 = v24;
                    break;
                  default:
                    *v22 = v24;
                    break;
                }
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((v15 + (((v13 | 7) + 17) & ~(v13 | 7)) + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = a2 - v12;
    }

    else
    {
      v20 = 1;
    }

    if (((((((((v15 + (((v13 | 7) + 17) & ~(v13 | 7)) + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v21 = ~v12 + a2;
      bzero(a1, v16);
      *a1 = v21;
    }

    switch(v6)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

void sub_2178BFC6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_2Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = _s17MainViewContainerVMa(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));

  v8 = v7 + v6[9];

  v9 = sub_21796944C();
  v10 = *(OUTLINED_FUNCTION_9_4(v9) + 32);
  if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v8 + v10, v5);
  }

  sub_217873C88(*(v7 + v6[11]), *(v7 + v6[11] + 8));
  v11 = v7 + v6[13];
  v12 = *(v11 + 8);
  if (v12 != 255)
  {
    sub_2178BF424(*v11, v12);
  }

  return swift_deallocObject();
}

uint64_t sub_2178BFEE8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(_s17MainViewContainerVMa(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1)
{

  return sub_217967D5C();
}

uint64_t _s12SearchColumnVMa(uint64_t a1)
{
  result = qword_27CB8C290;
  if (!qword_27CB8C290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2178C0094(uint64_t a1)
{
  result = sub_217965A3C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2178C010C(char *a1@<X8>)
{
  v3 = _s12SearchColumnVMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217965A0C();
  v8 = v7;
  v9 = v6 == 7368564 && v7 == 0xE300000000000000;
  if (v9 || (v10 = v6, (OUTLINED_FUNCTION_0_6(7368564, 0xE300000000000000) & 1) != 0))
  {

    v11 = 0;
    goto LABEL_7;
  }

  v12 = v10 == 0x736D75626C61 && v8 == 0xE600000000000000;
  if (v12 || (OUTLINED_FUNCTION_0_6(0x736D75626C61, 0xE600000000000000) & 1) != 0)
  {

    v11 = 1;
    goto LABEL_7;
  }

  v13 = v10 == 0x747369747261 && v8 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_0_6(0x747369747261, 0xE600000000000000) & 1) != 0)
  {

    v11 = 2;
    goto LABEL_7;
  }

  v14 = v10 == 0x726F7461727563 && v8 == 0xE700000000000000;
  if (v14 || (OUTLINED_FUNCTION_0_6(0x726F7461727563, 0xE700000000000000) & 1) != 0)
  {

    v11 = 3;
    goto LABEL_7;
  }

  v15 = v10 == 1735290739 && v8 == 0xE400000000000000;
  if (v15 || (OUTLINED_FUNCTION_0_6(1735290739, 0xE400000000000000) & 1) != 0)
  {

    v11 = 4;
    goto LABEL_7;
  }

  v16 = v10 == 0x69765F636973756DLL && v8 == 0xEB000000006F6564;
  if (v16 || (OUTLINED_FUNCTION_0_6(0x69765F636973756DLL, 0xEB000000006F6564) & 1) != 0)
  {

    v11 = 5;
    goto LABEL_7;
  }

  v17 = v10 == 0x7473696C79616C70 && v8 == 0xE800000000000000;
  if (v17 || (OUTLINED_FUNCTION_0_6(0x7473696C79616C70, 0xE800000000000000) & 1) != 0)
  {

    v11 = 6;
    goto LABEL_7;
  }

  v18 = v10 == 0x68735F6F69646172 && v8 == 0xEA0000000000776FLL;
  if (v18 || (OUTLINED_FUNCTION_0_6(0x68735F6F69646172, 0xEA0000000000776FLL) & 1) != 0)
  {

    v11 = 7;
    goto LABEL_7;
  }

  v19 = v10 == 0x6C5F64726F636572 && v8 == 0xEC0000006C656261;
  if (v19 || (OUTLINED_FUNCTION_0_6(0x6C5F64726F636572, 0xEC0000006C656261) & 1) != 0)
  {

    v11 = 8;
    goto LABEL_7;
  }

  if (v10 == 0x6E6F6974617473 && v8 == 0xE700000000000000)
  {

    goto LABEL_66;
  }

  v21 = OUTLINED_FUNCTION_0_6(0x6E6F6974617473, 0xE700000000000000);

  if (v21)
  {
LABEL_66:
    v11 = 9;
    goto LABEL_7;
  }

  if (qword_27CB8A480 != -1)
  {
    swift_once();
  }

  v22 = sub_21796653C();
  __swift_project_value_buffer(v22, qword_27CB97B00);
  sub_2178A9100(v1, v5);
  v23 = sub_21796651C();
  v24 = sub_21796938C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    v27 = sub_217965A0C();
    v29 = v28;
    sub_2178C07DC(v5);
    v30 = sub_217957F4C(v27, v29, &v32);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_217846000, v23, v24, "Unable to convert a search result group with an ID of %{public}s to a valid searchGroupID.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x21CEA8ED0](v26, -1, -1);
    MEMORY[0x21CEA8ED0](v25, -1, -1);
  }

  else
  {

    sub_2178C07DC(v5);
  }

  v11 = 10;
LABEL_7:
  *a1 = v11;
}

uint64_t sub_2178C055C(uint64_t a1)
{
  sub_217965A3C();
  OUTLINED_FUNCTION_1_4();
  sub_2178C0794(v1, v2, MEMORY[0x277D2A528]);

  return sub_217968ECC();
}

uint64_t sub_2178C05D0()
{
  sub_21796973C();
  sub_217965A3C();
  OUTLINED_FUNCTION_1_4();
  sub_2178C0794(v0, v1, MEMORY[0x277D2A528]);
  sub_217968ECC();
  return sub_21796977C();
}

uint64_t sub_2178C0654(uint64_t a1)
{
  sub_21796973C();
  sub_217965A3C();
  sub_2178C0794(&qword_27CB8C2B0, MEMORY[0x277D2A520], MEMORY[0x277D2A528]);
  sub_217968ECC();
  return sub_21796977C();
}

uint64_t sub_2178C06D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2178C0550(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2178C0794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2178C07DC(uint64_t a1)
{
  v2 = _s12SearchColumnVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, uint64_t a2)
{

  return sub_21796969C();
}

void Artwork.loadImage(width:height:pixelLength:cropStyle:format:cacheOwner:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v46 = a6;
  v45 = a5;
  v43 = a2;
  v47 = sub_21796633C();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BEF8, &qword_21796CEF8);
  v19 = OUTLINED_FUNCTION_48(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BF00, &unk_21796CF00);
  v23 = OUTLINED_FUNCTION_48(v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v27 = sub_2178B4378(ObjectType, a4);
  }

  else
  {
    v27 = 0;
  }

  v28 = swift_allocObject();
  sub_2179664AC();
  swift_allocObject();
  v29 = sub_21796647C();
  v30 = v28;
  *(v28 + 16) = v29;
  sub_2178C2D60(a1, v25, &qword_27CB8BF00, &unk_21796CF00);
  v31 = sub_217968BAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v31);
  v44 = v29;

  if (EnumTagSinglePayload == 1)
  {
    sub_2178653BC(v25, &qword_27CB8BF00, &unk_21796CF00);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v41 = sub_217968B9C();
    v42 = v33;
    (*(*(v31 - 8) + 8))(v25, v31);
  }

  sub_2178C2D60(v43, v21, &qword_27CB8BEF8, &qword_21796CEF8);
  v34 = sub_217968B5C();
  if (__swift_getEnumTagSinglePayload(v21, 1, v34) == 1)
  {
    sub_2178653BC(v21, &qword_27CB8BEF8, &qword_21796CEF8);
  }

  else
  {
    sub_217968B4C();
    (*(*(v34 - 8) + 8))(v21, v34);
  }

  v35 = v17;
  v36 = v17;
  v37 = v47;
  (*(v13 + 104))(v36, *MEMORY[0x277CE43C0], v47);
  *(swift_allocObject() + 16) = v27;
  v38 = swift_allocObject();
  v39 = v45;
  v40 = v46;
  v38[2] = v30;
  v38[3] = v39;
  v38[4] = v40;

  sub_21796648C();

  (*(v13 + 8))(v35, v37);
}

uint64_t sub_2178C0CF0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  *(v8 + 72) = a4;
  *(v8 + 80) = v7;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  *(v8 + 48) = a1;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 24) = a5;
  OUTLINED_FUNCTION_17_4();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2178C0DB8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v10 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = *(v0 + 48);
  *(v5 + 16) = v1;
  *(v5 + 24) = v10;
  *(v5 + 40) = v4;
  *(v5 + 48) = v6;
  *(v5 + 64) = v3;
  *(v5 + 72) = v2;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  sub_2178C2C34(0, &qword_2811AD2E8, 0x277D755B8);
  *v7 = v0;
  v7[1] = sub_2178C0EF8;
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x2822008A0](v8);
}

uint64_t sub_2178C0EF8()
{
  OUTLINED_FUNCTION_62();
  v2 = *v1;
  OUTLINED_FUNCTION_11_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_4();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2178C1020()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_39();

  return v0();
}

void sub_2178C107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, double a7, double a8, double a9)
{
  v39 = a6;
  v40 = a4;
  v37 = a3;
  v41 = a2;
  v11 = sub_21796633C();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BEF8, &qword_21796CEF8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BF00, &unk_21796CF00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2D8, &qword_21796D6D8);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  (*(v21 + 16))(&v36 - v22, a1, v20);
  v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v25 = swift_allocObject();
  v26 = *(v21 + 32);
  v38 = v25;
  v26(v25 + v24, v23, v20);
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v39 = sub_2178B4378(ObjectType, v39);
  }

  else
  {
    v39 = 0;
  }

  v28 = swift_allocObject();
  sub_2179664AC();
  swift_allocObject();
  v29 = sub_21796647C();
  *(v28 + 16) = v29;
  sub_2178C2D60(v37, v19, &qword_27CB8BF00, &unk_21796CF00);
  v30 = sub_217968BAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v30);
  v37 = v29;

  if (EnumTagSinglePayload == 1)
  {
    sub_2178653BC(v19, &qword_27CB8BF00, &unk_21796CF00);
    v36 = 0;
  }

  else
  {
    sub_217968B9C();
    v36 = v32;
    (*(*(v30 - 8) + 8))(v19, v30);
  }

  sub_2178C2D60(v40, v16, &qword_27CB8BEF8, &qword_21796CEF8);
  v33 = sub_217968B5C();
  if (__swift_getEnumTagSinglePayload(v16, 1, v33) == 1)
  {
    sub_2178653BC(v16, &qword_27CB8BEF8, &qword_21796CEF8);
    v40 = 0;
  }

  else
  {
    v40 = sub_217968B4C();
    (*(*(v33 - 8) + 8))(v16, v33);
  }

  v34 = v42;
  (*(v42 + 104))(v13, *MEMORY[0x277CE43C0], v43);
  *(swift_allocObject() + 16) = v39;
  v35 = swift_allocObject();
  v35[2] = v28;
  v35[3] = sub_2178C2E80;
  v35[4] = v38;

  sub_21796648C();

  (*(v34 + 8))(v13, v43);
}

uint64_t sub_2178C1618(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2D8, &qword_21796D6D8);
    return sub_2179691DC();
  }

  else
  {
    if (!a2)
    {
      v5 = sub_217968B0C();
      sub_2178C2F48(&qword_2811AD318, MEMORY[0x277CE4408], MEMORY[0x277CE4410]);
      swift_allocError();
      (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277CE4400], v5);
    }

    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2D8, &qword_21796D6D8);
    return sub_2179691CC();
  }
}

void sub_2178C1754(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_217968B0C();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  v14 = sub_217968B1C();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14();
  v20 = v19 - v18;
  (*(v16 + 16))(v19 - v18, a2, v14);
  v21 = (*(v16 + 88))(v20, v14);
  if (v21 == *MEMORY[0x277CE4428])
  {
    swift_beginAccess();
    if (*(a3 + 16) && (, v22 = sub_21796649C(), , v22))
    {
      v23 = v22;
      (a4)(v22, 0);
    }

    else
    {
      OUTLINED_FUNCTION_0_7();
      v33 = sub_2178C2F48(v31, v32, MEMORY[0x277CE4410]);
      v34 = OUTLINED_FUNCTION_3_7(v33);
      (*(v9 + 104))(v35, *MEMORY[0x277CE4400], v7);
      v36 = OUTLINED_FUNCTION_7_6();
      a4(v36);
    }

    goto LABEL_11;
  }

  if (v21 == *MEMORY[0x277CE4418])
  {
    (*(v16 + 96))(v20, v14);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2E0, &unk_21796D6E0);
    (*(v9 + 32))(v13, v20 + *(v24 + 48), v7);
    OUTLINED_FUNCTION_0_7();
    v27 = sub_2178C2F48(v25, v26, MEMORY[0x277CE4410]);
    v28 = OUTLINED_FUNCTION_3_7(v27);
    (*(v9 + 16))(v29, v13, v7);
    v30 = OUTLINED_FUNCTION_7_6();
    a4(v30);

    (*(v9 + 8))(v13, v7);
LABEL_11:
    swift_beginAccess();
    *(a3 + 16) = 0;

    return;
  }

  if (v21 == *MEMORY[0x277CE4430])
  {
    OUTLINED_FUNCTION_0_7();
    v39 = sub_2178C2F48(v37, v38, MEMORY[0x277CE4410]);
    v40 = OUTLINED_FUNCTION_3_7(v39);
    (*(v9 + 104))(v41, *MEMORY[0x277CE4400], v7);
    v42 = OUTLINED_FUNCTION_7_6();
    a4(v42);

    goto LABEL_11;
  }

  if (v21 != *MEMORY[0x277CE4420])
  {
    OUTLINED_FUNCTION_0_7();
    v45 = sub_2178C2F48(v43, v44, MEMORY[0x277CE4410]);
    v46 = OUTLINED_FUNCTION_3_7(v45);
    (*(v9 + 104))(v47, *MEMORY[0x277CE4400], v7);
    (a4)(0, v46);

    swift_beginAccess();
    *(a3 + 16) = 0;

    (*(v16 + 8))(v20, v14);
  }
}

uint64_t Artwork.image(width:height:cropStyle:format:)()
{
  OUTLINED_FUNCTION_62();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[24] = v5;
  v6 = sub_21796588C();
  OUTLINED_FUNCTION_48(v6);
  v1[29] = OUTLINED_FUNCTION_16_2();
  v7 = sub_2179658AC();
  v1[30] = v7;
  OUTLINED_FUNCTION_64_0(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_16_2();
  v9 = sub_21796557C();
  v1[33] = v9;
  OUTLINED_FUNCTION_64_0(v9);
  v1[34] = v10;
  v1[35] = OUTLINED_FUNCTION_16_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  OUTLINED_FUNCTION_48(v11);
  v1[36] = OUTLINED_FUNCTION_16_2();
  v12 = sub_21796572C();
  v1[37] = v12;
  OUTLINED_FUNCTION_64_0(v12);
  v1[38] = v13;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2178C1D88()
{
  v29 = v0;
  sub_217968B2C();
  if (v0[21])
  {
    sub_2178C2C34(0, &qword_2811AD300, 0x277CD5D50);
    if (swift_dynamicCast())
    {
      v1 = v0[22];
      v0[41] = v1;
      v2 = [v1 dataSource];
      if (v2)
      {
        v3 = v2;
        v4 = [v1 token];
        sub_2179694AC();
        swift_unknownObjectRelease();
        v5 = objc_allocWithZone(MEMORY[0x277CD5D50]);
        v6 = sub_2178C29B4(v28, v3);
      }

      else
      {
        v6 = v1;
      }

      v0[42] = v6;
      v21 = v0[24];
      v22 = v0[25];
      v23 = v6;
      [v23 setFittingSize_];
      v0[2] = v0;
      v0[7] = v0 + 23;
      v0[3] = sub_2178C21E4;
      v24 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2C0, &qword_21796D6C0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2178C28AC;
      v0[13] = &block_descriptor_0;
      v0[14] = v24;
      [v23 requestImageWithCompletion_];
      OUTLINED_FUNCTION_15_3();

      return MEMORY[0x282200938](v25);
    }
  }

  else
  {
    sub_2178653BC((v0 + 18), &qword_27CB8A7F0, &unk_21796B180);
  }

  v8 = v0[36];
  v7 = v0[37];
  sub_217968B6C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v7) == 1)
  {
    v10 = v0[31];
    v9 = v0[32];
    v11 = v0[30];
    sub_2178653BC(v0[36], &qword_27CB8B218, &unk_217970AE0);
    sub_21796587C();
    sub_2178C2A30(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_2();
    sub_2178C2F48(v12, v13, MEMORY[0x277CC9AE0]);
    sub_2179656BC();
    sub_21796589C();
    (*(v10 + 8))(v9, v11);
    swift_willThrow();
    OUTLINED_FUNCTION_1_5();

    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_15_3();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[38] + 32))(v0[40], v0[36], v0[37]);
  v16 = OUTLINED_FUNCTION_63_0();
  v17(v16);
  sub_21796556C();
  v0[44] = [objc_opt_self() sharedSession];
  v18 = swift_task_alloc();
  v0[45] = v18;
  *v18 = v0;
  v18[1] = sub_2178C238C;
  OUTLINED_FUNCTION_15_3();

  return MEMORY[0x28211ECF8](v19);
}

uint64_t sub_2178C21E4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_11_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2178C22E8()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);

  OUTLINED_FUNCTION_1_5();

  v3 = OUTLINED_FUNCTION_13_6();

  return v4(v3);
}

uint64_t sub_2178C238C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  OUTLINED_FUNCTION_11_4();
  *v8 = v7;
  v9 = *v4;
  OUTLINED_FUNCTION_11_4();
  *v10 = v9;
  v13[46] = v11;
  v13[47] = v12;
  v13[48] = v3;

  v14 = *(v6 + 352);
  if (!v3)
  {
  }

  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2178C24CC()
{
  sub_2178C2C34(0, &qword_2811AD2E8, 0x277D755B8);
  v1 = OUTLINED_FUNCTION_63_0();
  sub_2178C2B84(v1, v2);
  v3 = OUTLINED_FUNCTION_63_0();
  v5 = sub_2178C293C(v3, v4);
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[40];
  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[34];
  v12 = v0[35];
  v13 = v0[33];
  if (v5)
  {
    v14 = sub_2178C2BDC(v0[46], v0[47]);
    (*(v11 + 8))(v12, v13, v14);
    (*(v9 + 8))(v8, v10);
    OUTLINED_FUNCTION_1_5();

    v15 = OUTLINED_FUNCTION_13_6();

    return v16(v15);
  }

  else
  {
    v26 = v0[37];
    v27 = v0[40];
    v19 = v0[31];
    v18 = v0[32];
    v25 = v0[35];
    v20 = v0[30];
    sub_21796586C();
    sub_2178C2A30(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_2();
    sub_2178C2F48(v21, v22, MEMORY[0x277CC9AE0]);
    sub_2179656BC();
    sub_21796589C();
    (*(v19 + 8))(v18, v20);
    swift_willThrow();
    v23 = sub_2178C2BDC(v7, v6);
    (*(v11 + 8))(v25, v13, v23);
    (*(v9 + 8))(v27, v26);
    OUTLINED_FUNCTION_1_5();

    OUTLINED_FUNCTION_39();

    return v24();
  }
}

uint64_t sub_2178C272C(uint64_t a1)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 328);
  swift_willThrow();

  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_39();

  return v4();
}

uint64_t sub_2178C27E0()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  (*(v0[34] + 8))(v0[35], v0[33]);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_39();

  return v4();
}

uint64_t *sub_2178C28AC(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_2178C0CF0(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_2178C0D5C(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2178C293C(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_21796573C();
  v6 = [v4 initWithData_];

  sub_2178C2BDC(a1, a2);
  return v6;
}

id sub_2178C29B4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithToken:sub_21796968C() dataSource:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

unint64_t sub_2178C2A30(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2C8, &qword_21796D6C8);
  v2 = sub_2179695BC();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2178C2D60(v6, &v15, &qword_27CB8C2D0, &qword_21796D6D0);
    v7 = v15;
    v8 = v16;
    result = sub_2178C2CE8(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_2178C2DBC(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

double sub_2178C2B84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double sub_2178C2BDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_2178C2C34(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2178C2C84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2178C2CE8(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  sub_217968FCC();
  v4 = sub_21796977C();

  return sub_2178C2DCC(a1, a2, v4);
}

uint64_t sub_2178C2D60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return a2;
}

_OWORD *sub_2178C2DBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2178C2DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21796969C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2178C2E80(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2D8, &qword_21796D6D8);
  OUTLINED_FUNCTION_48(v4);

  return sub_2178C1618(a1, a2);
}

uint64_t objectdestroy_5Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2178C2F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_5()
{
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_task_alloc();
}

uint64_t sub_2178C30A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_217967B8C();
  v3 = sub_21796756C();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4C0, &qword_217973770) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
  v7 = *MEMORY[0x277CE1058];
  v8 = sub_217967BCC();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  v9 = sub_217967B4C();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2E8, &unk_217973810);
  v12 = (a1 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

unint64_t sub_2178C31EC()
{
  result = qword_27CB8C2F0;
  if (!qword_27CB8C2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C2E8, &unk_217973810);
    sub_217898118();
    sub_21786615C(&qword_27CB8A8A0, qword_27CB8A8A8, &qword_21796BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C2F0);
  }

  return result;
}

uint64_t _s5StateVMa(uint64_t a1)
{
  result = qword_27CB8C2F8;
  if (!qword_27CB8C2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2178C3304(uint64_t a1)
{
  sub_2179688CC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TimeControlStatus(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_2178C33E0(uint64_t a1, uint64_t a2)
{
  if ((sub_21796889C() & 1) != 0 && (v4 = _s5StateVMa(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178C3458(uint64_t a1)
{
  sub_2179688CC();
  sub_2178C371C(qword_27CB8C310, MEMORY[0x277CD8238], MEMORY[0x277CD8250]);
  sub_217968ECC();
  v2 = _s5StateVMa(0);
  MEMORY[0x21CEA86B0](*(v1 + v2[5]));
  v3 = *(v1 + v2[6]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = *(v1 + v2[7]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v4);
}

uint64_t sub_2178C352C()
{
  sub_21796973C();
  sub_2178C3458(v1);
  return sub_21796977C();
}

uint64_t sub_2178C3578(uint64_t a1)
{
  sub_21796973C();
  sub_2178C3458(v2);
  return sub_21796977C();
}

unint64_t sub_2178C35B4()
{
  strcpy(v3, "\n  song: ");
  BYTE3(v3[1]) = 0;
  HIDWORD(v3[1]) = -369098752;
  v0 = sub_21796885C();
  MEMORY[0x21CEA7F50](v0);

  MEMORY[0x21CEA7F50](34, 0xE100000000000000);
  MEMORY[0x21CEA7F50](v3[0], v3[1]);

  sub_21796950C();

  strcpy(v3, ",\n  status: ");
  HIWORD(v3[1]) = -4864;
  _s5StateVMa(0);
  v1 = sub_21796966C();
  MEMORY[0x21CEA7F50](v1);

  MEMORY[0x21CEA7F50](34, 0xE100000000000000);
  MEMORY[0x21CEA7F50](v3[0], v3[1]);

  MEMORY[0x21CEA7F50](10506, 0xE200000000000000);
  return 0xD000000000000022;
}

uint64_t sub_2178C371C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2178C3764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s9ViewModelCMa(0, a1, a2, a4);
  OUTLINED_FUNCTION_2_3(v4, v5, v6);

  return sub_217966ACC();
}

uint64_t sub_2178C37AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2178C37E8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2178C383C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2178C38E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v9 = sub_21796705C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C398, &qword_21796D918);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3A0, &qword_21796D920);
  OUTLINED_FUNCTION_2();
  v39 = v17;
  v40 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  sub_21796702C();
  v42[2] = a3;
  v42[3] = a4;
  v42[4] = a1;
  v42[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3A8, &qword_21796D928);
  sub_2178C46E8();
  sub_21796674C();
  v21 = _s9ViewModelCMa(0, a3, a4, v20);
  OUTLINED_FUNCTION_2_3(v21, v22, v23);
  v24 = sub_217966A9C();
  sub_2178DA64C(v24, v25, v26, v27, v28, v29, v30, v31, v38, v39, v40, v41, v42[0], v42[1], SWORD2(v42[1]), SBYTE6(v42[1]), HIBYTE(v42[1]));

  OUTLINED_FUNCTION_1_6();
  v34 = sub_217864B2C(v32, &qword_27CB8C398, &qword_21796D918, v33);
  sub_21796691C();
  (*(v12 + 8))(v15, v10);
  v42[6] = v10;
  v42[7] = v34;
  OUTLINED_FUNCTION_0_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v40;
  MEMORY[0x21CEA6000](v19, v40, OpaqueTypeConformance2);
  return (*(v39 + 8))(v19, v36);
}

uint64_t sub_2178C3BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v74 = a5;
  v63 = sub_2179665FC();
  MEMORY[0x28223BE20](v63);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C1A8, &qword_21796D4B0);
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v62 = &v61 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C410, &qword_21796D950);
  MEMORY[0x28223BE20](v73);
  v65 = &v61 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C430, &qword_21796D960);
  MEMORY[0x28223BE20](v71);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3F0, &qword_21796D948);
  v18 = *(v17 - 8);
  v66 = v17;
  v67 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3C0, &qword_21796D930);
  MEMORY[0x28223BE20](v70);
  v22 = &v61 - v21;
  v23 = a3;
  v24 = a4;
  _s9ViewModelCMa(0, a3, a4, v25);
  swift_getWitnessTable();
  v26 = a1;
  v27 = a2;
  v28 = sub_217966A9C();
  sub_2178DA64C(v28, v29, v30, v31, v32, v33, v34, v35, v61, v62, v63, v64, v65, v66, SWORD2(v66), SBYTE6(v66), HIBYTE(v66));
  LOBYTE(a2) = v36;

  if (a2)
  {
    sub_2179665EC();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ABA0, &qword_21796B190);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AB98, &qword_21796BD70);
    v38 = sub_2179671EC();
    v39 = sub_217864B2C(&qword_27CB8ABA8, &qword_27CB8AB98, &qword_21796BD70, MEMORY[0x277CDD7F8]);
    v40 = sub_2178C4CC0(&qword_27CB8ABB0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v75 = v37;
    v76 = v38;
    v77 = v39;
    v78 = v40;
    swift_getOpaqueTypeConformance2();
    sub_217967C5C();
    if (qword_27CB8A3B0 != -1)
    {
      swift_once();
    }

    sub_2178EE0A8(qword_27CB97920, *algn_27CB97928, qword_27CB97930);
    sub_217864B2C(&qword_27CB8C3E8, &qword_27CB8C3F0, &qword_21796D948, MEMORY[0x277CDF028]);
    v41 = v66;
    sub_21796790C();

    (*(v67 + 8))(v20, v41);
    KeyPath = swift_getKeyPath();
    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    v44 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3D0, &qword_21796D938) + 36)];
    *v44 = KeyPath;
    v44[1] = sub_2178C4D08;
    v44[2] = v43;
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }

    v45 = qword_27CB977C8;
    v46 = swift_getKeyPath();
    v47 = &v22[*(v70 + 36)];
    *v47 = v46;
    v47[1] = v45;
    sub_21784EAC8(v22, v72);
    swift_storeEnumTagMultiPayload();
    sub_2178C4774();
    sub_2178C49CC();

    sub_217966F8C();
    return sub_21784EB38(v22);
  }

  else
  {
    v49 = v64;
    sub_2179665EC();
    v50 = swift_allocObject();
    v50[2] = v23;
    v50[3] = v24;
    v50[4] = v26;
    v50[5] = v27;

    v51 = v62;
    MEMORY[0x21CEA6BE0](v49, sub_2178C4B3C, v50);
    if (qword_27CB8A3B0 != -1)
    {
      swift_once();
    }

    sub_2178EE0A8(qword_27CB97920, *algn_27CB97928, qword_27CB97930);
    sub_217864B2C(&qword_27CB8C1A0, &qword_27CB8C1A8, &qword_21796D4B0, MEMORY[0x277CDF028]);
    v52 = v65;
    v53 = v69;
    sub_21796790C();

    (*(v68 + 8))(v51, v53);
    v54 = swift_getKeyPath();
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    v56 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C420, &qword_21796D958) + 36));
    *v56 = v54;
    v56[1] = sub_2178C4BAC;
    v56[2] = v55;
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }

    v57 = qword_27CB977C8;
    v58 = swift_getKeyPath();
    v59 = v72;
    v60 = (v52 + *(v73 + 36));
    *v60 = v58;
    v60[1] = v57;
    sub_2178C4BE8(v52, v59);
    swift_storeEnumTagMultiPayload();
    sub_2178C4774();
    sub_2178C49CC();

    sub_217966F8C();
    return sub_2178C4C58(v52);
  }
}

uint64_t sub_2178C442C()
{
  v0 = sub_2179671EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB98, &qword_21796BD70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_21796677C();
  sub_2179671DC();
  sub_217864B2C(&qword_27CB8ABA8, &qword_27CB8AB98, &qword_21796BD70, MEMORY[0x277CDD7F8]);
  sub_2178C4CC0(&qword_27CB8ABB0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  sub_21796766C();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

double sub_2178C4630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(0, a3, a4, a4);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178DC24C();

  return result;
}

unint64_t sub_2178C46E8()
{
  result = qword_27CB8C3B0;
  if (!qword_27CB8C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3A8, &qword_21796D928);
    sub_2178C4774();
    sub_2178C49CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C3B0);
  }

  return result;
}

unint64_t sub_2178C4774()
{
  result = qword_27CB8C3B8;
  if (!qword_27CB8C3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3C0, &qword_21796D930);
    sub_2178C482C();
    sub_217864B2C(&qword_27CB8A8A0, qword_27CB8A8A8, &qword_21796BDA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C3B8);
  }

  return result;
}

unint64_t sub_2178C482C()
{
  result = qword_27CB8C3C8;
  if (!qword_27CB8C3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3D0, &qword_21796D938);
    sub_2178C48E4();
    sub_217864B2C(&qword_27CB8C3F8, &qword_27CB8C400, &unk_21796F480, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C3C8);
  }

  return result;
}

unint64_t sub_2178C48E4()
{
  result = qword_27CB8C3D8;
  if (!qword_27CB8C3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3E0, &qword_21796D940);
    sub_217864B2C(&qword_27CB8C3E8, &qword_27CB8C3F0, &qword_21796D948, MEMORY[0x277CDF028]);
    sub_2178C4CC0(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C3D8);
  }

  return result;
}

unint64_t sub_2178C49CC()
{
  result = qword_27CB8C408;
  if (!qword_27CB8C408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C410, &qword_21796D950);
    sub_2178C4A84();
    sub_217864B2C(&qword_27CB8A8A0, qword_27CB8A8A8, &qword_21796BDA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C408);
  }

  return result;
}

unint64_t sub_2178C4A84()
{
  result = qword_27CB8C418;
  if (!qword_27CB8C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C420, &qword_21796D958);
    sub_2178BDB78();
    sub_217864B2C(&qword_27CB8C3F8, &qword_27CB8C400, &unk_21796F480, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C418);
  }

  return result;
}

uint64_t sub_2178C4B48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217966C4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2178C4BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C410, &qword_21796D950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178C4C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C410, &qword_21796D950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2178C4CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t sub_2178C4D74(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_2179682DC() == a4 || sub_21796831C() == a4 || sub_21796595C() == a4)
  {
    v12 = (*(a5 + 80))(a4, a5);
  }

  else
  {
    v9 = (*(a5 + 72))(a4, a5);
    v11 = 32;
    if (a2)
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }
  }

  (*(*(a4 - 8) + 8))(a1, a4);
  return v12;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2178C4EA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2178C4EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_2178C4F54@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = a3;
    *&v18 = a1;
    *(&v18 + 1) = a2;
    sub_217873C34(a1, a2, a3);

    v7 = sub_21796763C();
    v9 = v8;
    v11 = v10;
    sub_217967B4C();
    if ((v6 & 0x100) != 0)
    {
      sub_217967B2C();
    }

    v12 = sub_2179675AC();
    v14 = v13;
    v16 = v15;

    sub_21788C9B8(v7, v9, v11 & 1);

    sub_21796755C();
    sub_2179675DC();

    sub_21788C9B8(v12, v14, v16 & 1);

    swift_getKeyPath();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEA0, &unk_21796DA80);
  sub_21788C8AC();
  sub_217966F8C();
  *a4 = v18;
  *(a4 + 16) = v19;
  result = *&v20;
  *(a4 + 32) = v20;
  *(a4 + 48) = v21;
  return result;
}

double sub_2178C515C@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2178C4F54(*v1, *(v1 + 8), v2 | *(v1 + 16), a1);
}

unint64_t sub_2178C517C()
{
  result = qword_27CB8C438;
  if (!qword_27CB8C438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C440, &qword_21796DA90);
    sub_21788C8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C438);
  }

  return result;
}

id sub_2178C5208()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
  }

  OUTLINED_FUNCTION_3_9(0x8000000217974CF0);
  return OUTLINED_FUNCTION_4_8(v0, v1);
}

id sub_2178C527C()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
  }

  OUTLINED_FUNCTION_3_9(0x8000000217974D80);
  return OUTLINED_FUNCTION_4_8(v0, v1);
}

id sub_2178C52F0()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
  }

  OUTLINED_FUNCTION_1_7();
  return OUTLINED_FUNCTION_2_4(v0, v1);
}

id sub_2178C5350()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
  }

  OUTLINED_FUNCTION_1_7();
  return OUTLINED_FUNCTION_2_4(v0, v1);
}

void OUTLINED_FUNCTION_1_7()
{
  *v0 = 0x4F435F53474E4F53;
  v0[1] = 0xEB00000000544E55;
  v0[2] = 0x636950636973754DLL;
  v0[3] = 0xEB0000000072656BLL;
}

id OUTLINED_FUNCTION_2_4@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v2[4] = a1;
  v2[5] = v3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  v2[6] = a2;

  return a1;
}

void OUTLINED_FUNCTION_3_9(unint64_t a1@<X8>)
{
  *v1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  v1[1] = a1;
  v1[2] = 0x636950636973754DLL;
  v1[3] = 0xEB0000000072656BLL;
}

id OUTLINED_FUNCTION_4_8@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v3[4] = a1;
  v3[5] = v2;
  v3[6] = a2;

  return a1;
}

uint64_t sub_2178C5468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = *a10;
  v19 = *(a10 + 8);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v20 = type metadata accessor for MusicPicker.SheetPresentationModifier(0, a13, a14, a4);
  v21 = v20[9];
  sub_21796944C();
  v22 = sub_217967D5C();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a4, v22);
  v24 = (a9 + v20[10]);
  *v24 = a5;
  v24[1] = a6;
  v24[2] = a7;
  *(a9 + v20[11]) = a8;
  v25 = a9 + v20[12];
  *v25 = v18;
  *(v25 + 8) = v19;
  v26 = (a9 + v20[13]);
  *v26 = a11;
  v26[1] = a12;
  return result;
}

uint64_t sub_2178C5588()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C448, &unk_21796DB30);
  sub_217967D3C();
  return v1;
}

void *sub_2178C55E4()
{
  sub_21796944C();
  sub_217967D5C();
  return sub_217967D3C();
}

uint64_t sub_2178C5634(uint64_t a1)
{
  sub_21796919C();
  sub_217967D5C();
  sub_217967D3C();
  return v2;
}

uint64_t sub_2178C569C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a1;
  v42 = a3;
  v6 = *(a2 - 8);
  v40 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_2179670BC();
  v10 = *(a2 + 16);
  v36 = *(a2 + 24);
  v37 = v10;
  _s17MainViewContainerVMa(255, v10, v36, v11);
  v12 = sub_21796698C();
  v13 = v9;
  v33 = v9;
  WitnessTable = swift_getWitnessTable();
  v35 = WitnessTable;
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CE0880];
  v34 = swift_getWitnessTable();
  v43 = v13;
  v44 = v12;
  v45 = WitnessTable;
  v46 = v34;
  v38 = MEMORY[0x277CDEE28];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v32 = v31 - v19;
  sub_2178C5588();
  v31[1] = v20;
  (*(v6 + 16))(v8, v4, a2);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v36;
  *(v22 + 16) = v37;
  *(v22 + 24) = v23;
  (*(v6 + 32))(v22 + v21, v8, a2);
  v24 = swift_checkMetadataState();
  v25 = swift_checkMetadataState();
  v26 = v34;
  v27 = v35;
  sub_2179679BC();

  v43 = v24;
  v44 = v25;
  v45 = v27;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_2179560E4();
  v29 = *(v39 + 8);
  v29(v18, OpaqueTypeMetadata2);
  sub_2179560E4();
  return (v29)(v28, OpaqueTypeMetadata2);
}

uint64_t sub_2178C5A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  sub_21796944C();
  v7 = sub_217967D5C();
  MEMORY[0x28223BE20](v7 - 8);
  v39 = a3;
  v40 = &v37[-v8];
  v10 = _s17MainViewContainerVMa(0, a2, a3, v9);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v37[-v11];
  v13 = sub_21796698C();
  v46 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v43 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v44 = &v37[-v16];
  v18 = type metadata accessor for MusicPicker.SheetPresentationModifier(0, a2, a3, v17);
  v19 = sub_2178C5588();
  v41 = v20;
  v42 = v19;
  v38 = v21;
  sub_2178C55E4();
  v22 = sub_2178C5634(v18);
  v24 = v23;
  v26 = v25;
  v27 = v18[12];
  v28 = *(a1 + v18[11]);
  LOBYTE(v23) = *(a1 + v27 + 8);
  v50 = *(a1 + v27);
  v51 = v23;
  v29 = (a1 + v18[13]);
  v31 = *v29;
  v30 = v29[1];
  sub_2178BF534(v50, v23);

  sub_2178BE168(v42, v41, v38 & 1, v40, v22, v24, v26, v28, v12, &v50, v31, v30, a2, v39);
  sub_21796741C();
  WitnessTable = swift_getWitnessTable();
  sub_2179669BC();
  v33 = v43;
  sub_2179677DC();
  (*(v45 + 8))(v12, v10);
  v48 = WitnessTable;
  v49 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  v34 = v44;
  sub_2179560E4();
  v35 = *(v46 + 8);
  v35(v33, v13);
  sub_2179560E4();
  return (v35)(v34, v13);
}

uint64_t View.musicPicker<A>(isPresented:selection:reason:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v39 = a8;
  v34 = a7;
  v35 = a6;
  v32 = a4;
  v33 = a2;
  v36 = a3;
  v37 = a9;
  v31 = a12;
  v38 = a11;
  sub_21796944C();
  v14 = sub_217967D5C();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v21 = type metadata accessor for MusicPicker.SheetPresentationModifier(0, a10, a12, v20);
  OUTLINED_FUNCTION_2();
  v23 = v22;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v24);
  v26 = &v30 - v25;
  v27 = *a5;
  LOBYTE(a5) = *(a5 + 8);
  (*(v16 + 16))(v19, v32, v14);

  v28 = v33;

  v40 = sub_217968E7C();
  sub_21796919C();
  sub_217967D4C();

  v40 = v27;
  v41 = a5;
  sub_2178C5468(a1, v28, v36, v19, v42, v43, v44, 0, v26, &v40, v35, v34, a10, v31);
  sub_2178BF534(v27, a5);

  MEMORY[0x21CEA69A0](v26, v39, v21, v38);
  return (*(v23 + 8))(v26, v21);
}

uint64_t View.musicPicker<A>(isPresented:selection:reason:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v42 = a3;
  v47 = a9;
  v40 = a10;
  v41 = a8;
  v36 = a14;
  v37 = a2;
  v46 = a13;
  v16 = sub_21796944C();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  sub_217967D5C();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - v23;
  type metadata accessor for MusicPicker.SheetPresentationModifier(0, a12, a14, v25);
  OUTLINED_FUNCTION_2();
  v38 = v26;
  v39 = v27;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v28);
  v30 = &v35 - v29;
  v31 = *a7;
  LOBYTE(a7) = *(a7 + 8);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, a12);

  v32 = v37;

  sub_217967D4C();
  (*(v18 + 8))(v21, v16);
  v49 = v31;
  v50 = a7;
  sub_2178C5468(a1, v32, v42, v24, v43, v44, v45, 1, v30, &v49, v41, v40, a12, v36);

  sub_2178BF534(v31, a7);

  v33 = v38;
  MEMORY[0x21CEA69A0](v30, v48, v38, v46);
  return (*(v39 + 8))(v30, v33);
}

uint64_t _s5ClickVwet(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MusicPicker(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_2178C63F8(uint64_t a1)
{
  sub_2178BFC6C(319, &qword_27CB8C280, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_21796944C();
    sub_217967D5C();
    if (v2 <= 0x3F)
    {
      sub_21796919C();
      sub_217967D5C();
      if (v3 <= 0x3F)
      {
        sub_2178BFC6C(319, &qword_27CB8C288, &type metadata for MusicPicker.Reason, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_217875494();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2178C653C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  if (v6)
  {
    v11 = 53;
  }

  else
  {
    v11 = 54;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 | 7;
  if (v9 >= a2)
  {
LABEL_34:
    if (v9 == 0x7FFFFFFF)
    {
      v21 = *(result + 8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v10 + ((((result + v12 + 17) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v13 = ((v11 + *(*(v4 - 8) + 64) - (((-17 - v10) | v10) + ((-18 - v12) | v12))) & 0xFFFFFFFFFFFFFFF8) + 16;
    v14 = a2 - v9;
    v15 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = v14 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        v19 = *(result + v13);
        if (!v19)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      case 2:
        v19 = *(result + v13);
        if (!v19)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      case 3:
        __break(1u);
        return result;
      case 4:
        v19 = *(result + v13);
        if (!v19)
        {
          goto LABEL_34;
        }

LABEL_30:
        v20 = v19 - 1;
        if (v15)
        {
          v20 = 0;
          LODWORD(v15) = *result;
        }

        result = v9 + (v15 | v20) + 1;
        break;
      default:
        goto LABEL_34;
    }
  }

  return result;
}