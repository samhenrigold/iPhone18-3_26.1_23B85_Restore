uint64_t sub_23D8AB904(void *a1, void *a2, _OWORD *a3)
{
  v28 = sub_23D8DE750();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DE780();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D8DE7A0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  result = sub_23D8DE1E0();
  if ((result & 1) == 0)
  {
    v31[0] = a3[3];
    LOBYTE(aBlock[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
    v27 = v4;
    sub_23D8DE330();
    sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
    v25 = sub_23D8DEAF0();
    sub_23D8DE790();
    sub_23D8DE7B0();
    v18 = *(v11 + 8);
    v26 = v10;
    v18(v14, v10);
    v19 = swift_allocObject();
    v20 = a3[1];
    v19[1] = *a3;
    v19[2] = v20;
    v21 = a3[3];
    v19[3] = a3[2];
    v19[4] = v21;
    aBlock[4] = sub_23D8AC764;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D876358;
    aBlock[3] = &block_descriptor_4;
    v22 = _Block_copy(aBlock);
    sub_23D8ABD50(a3, v31);

    sub_23D8DE770();
    *&v31[0] = MEMORY[0x277D84F90];
    sub_23D8AC784(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
    sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
    v23 = v28;
    sub_23D8DEBF0();
    v24 = v25;
    MEMORY[0x23EEF0C20](v16, v9, v6, v22);
    _Block_release(v22);

    (*(v27 + 8))(v6, v23);
    (*(v29 + 8))(v9, v30);
    return (v18)(v16, v26);
  }

  return result;
}

unint64_t sub_23D8ABD88()
{
  result = qword_27E2EF968;
  if (!qword_27E2EF968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF960, &unk_23D8E46D0);
    sub_23D8ABE40();
    sub_23D835AD0(&qword_27E2EFA30, &qword_27E2EFA38, &qword_23D8E4748, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF968);
  }

  return result;
}

unint64_t sub_23D8ABE40()
{
  result = qword_27E2EF970;
  if (!qword_27E2EF970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF958, &qword_23D8E46C8);
    sub_23D8ABECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF970);
  }

  return result;
}

unint64_t sub_23D8ABECC()
{
  result = qword_27E2EF978;
  if (!qword_27E2EF978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF950, &qword_23D8E46C0);
    sub_23D8ABF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF978);
  }

  return result;
}

unint64_t sub_23D8ABF50()
{
  result = qword_27E2EF980;
  if (!qword_27E2EF980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF988, &qword_23D8E46E0);
    sub_23D8ABFDC();
    sub_23D8AC2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF980);
  }

  return result;
}

unint64_t sub_23D8ABFDC()
{
  result = qword_27E2EF990;
  if (!qword_27E2EF990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF998, &qword_23D8E46E8);
    sub_23D8AC0C0(&qword_27E2EF9A0, &qword_27E2EF9A8, &qword_23D8E46F0, sub_23D8AC144);
    sub_23D835AD0(&qword_27E2EF9E0, &qword_27E2EF9E8, &qword_23D8E4718, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF990);
  }

  return result;
}

uint64_t sub_23D8AC0C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D8AC144()
{
  result = qword_27E2EF9B0;
  if (!qword_27E2EF9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF9B8, &qword_23D8E46F8);
    sub_23D8AC1FC();
    sub_23D835AD0(&qword_27E2EF9D0, &qword_27E2EF9D8, &qword_23D8E4710, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF9B0);
  }

  return result;
}

unint64_t sub_23D8AC1FC()
{
  result = qword_27E2EF9C0;
  if (!qword_27E2EF9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF9C8, &unk_23D8E4700);
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF9C0);
  }

  return result;
}

unint64_t sub_23D8AC2B4()
{
  result = qword_27E2EF9F0;
  if (!qword_27E2EF9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF9F8, &qword_23D8E4720);
    sub_23D8AC36C();
    sub_23D835AD0(&qword_27E2EF9E0, &qword_27E2EF9E8, &qword_23D8E4718, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF9F0);
  }

  return result;
}

unint64_t sub_23D8AC36C()
{
  result = qword_27E2EFA00;
  if (!qword_27E2EFA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFA08, &qword_23D8E4728);
    sub_23D8AC0C0(&qword_27E2EFA10, &qword_27E2EFA18, &qword_23D8E4730, sub_23D8AC450);
    sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFA00);
  }

  return result;
}

unint64_t sub_23D8AC450()
{
  result = qword_27E2EFA20;
  if (!qword_27E2EFA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFA28, &unk_23D8E4738);
    sub_23D835AD0(&qword_27E2EF9D0, &qword_27E2EF9D8, &qword_23D8E4710, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFA20);
  }

  return result;
}

unint64_t sub_23D8AC508()
{
  result = qword_27E2EFA40;
  if (!qword_27E2EFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFA40);
  }

  return result;
}

double sub_23D8AC578(uint64_t a1)
{
  sub_23D8DE660();
  sub_23D8DCE60();

  return result;
}

uint64_t sub_23D8AC5F4(uint64_t a1, int a2)
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

uint64_t sub_23D8AC63C(uint64_t result, int a2, int a3)
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

uint64_t sub_23D8AC69C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF960, &unk_23D8E46D0);
  sub_23D8ABD88();
  sub_23D8AC508();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D8AC784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D8AC834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF998, &qword_23D8E46E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_23D8AC8D4@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_23D8DD560();
  sub_23D8AC958(a1, a3, v11);
  v8 = v12;
  result = v11[0];
  v10 = v11[1];
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = result;
  *(a4 + 40) = v10;
  *(a4 + 56) = v8;
  return result;
}

double sub_23D8AC958@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3)
  {
    sub_23D83CB18();
    swift_retain_n();

    v6 = sub_23D8DDCB0();
    v8 = v7;
    v10 = v9;
    v12 = v11 & 1;
    sub_23D834028(v6, v7, v11 & 1);
  }

  else
  {
    swift_retain_n();
    v6 = 0;
    v8 = 0;
    v12 = 0;
    v10 = 0;
  }

  sub_23D89D4FC(v6, v8, v12, v10);

  sub_23D89D540(v6, v8, v12, v10);
  *a4 = a1;
  a4[1] = v6;
  a4[2] = v8;
  a4[3] = v12;
  a4[4] = v10;
  sub_23D89D540(v6, v8, v12, v10);

  return result;
}

uint64_t sub_23D8ACA70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFAE0, &qword_23D8E4A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFAE8, &unk_23D8E4A90);
  sub_23D835AD0(&qword_27E2EFAF0, &qword_27E2EFAE0, &qword_23D8E4A88, MEMORY[0x277CE04B0]);
  sub_23D835AD0(&qword_27E2EFAF8, &qword_27E2EFAE8, &unk_23D8E4A90, MEMORY[0x277CE1198]);
  return sub_23D8DDF70();
}

uint64_t sub_23D8ACB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFAD8, &qword_23D8E4A80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_23D8ACC04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_23D8DD770();
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFA50, &qword_23D8E48E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFA58, &qword_23D8E48F0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = swift_allocObject();
  v15 = *(v2 + 16);
  v14[1] = *v2;
  v14[2] = v15;
  v16 = *(v2 + 48);
  v14[3] = *(v2 + 32);
  v14[4] = v16;
  v27 = v2;
  sub_23D8AD388(v2, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFA60, &qword_23D8E48F8);
  sub_23D8AD3C0();
  sub_23D8DE360();
  v17 = *(v2 + 24);
  v28[0] = *(v2 + 16);
  v18 = v28[0];
  v28[1] = v17;
  sub_23D835AD0(&qword_27E2EFAA8, &qword_27E2EFA50, &qword_23D8E48E8, MEMORY[0x277CDF028]);
  sub_23D83CB18();
  sub_23D8DDE10();
  (*(v8 + 8))(v10, v7);

  v19 = sub_23D8DE2C0();
  v20 = &v13[*(v11 + 36)];
  *v20 = v19;
  v20[1] = v18;
  v20[2] = v17;

  sub_23D8DD760();
  sub_23D8AD5E4();
  sub_23D8AD814(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v21 = v24;
  sub_23D8DDD10();
  (*(v25 + 8))(v6, v21);
  return sub_23D8AD7AC(v13);
}

uint64_t sub_23D8ACF60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v3 = sub_23D8DE740();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D8DE720();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D8DE2D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_23D8DE2C0();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v14 = sub_23D8DE300();

  (*(v11 + 8))(v13, v10);
  sub_23D8DE710();
  sub_23D8DE730();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFA88, &qword_23D8E4908);
  v16 = v23;
  v17 = (v23 + *(v15 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFA98, &qword_23D8E4910);
  sub_23D8AD814(&qword_27E2EFAD0, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
  sub_23D8DD0F0();
  (*(v24 + 8))(v5, v25);
  (*(v7 + 8))(v9, v6);
  *v17 = swift_getKeyPath();
  *v16 = v14;
  v18 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFA78, &qword_23D8E4900) + 36);
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1[4];
  LOBYTE(v7) = *(a1 + 40);
  v20 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFA60, &qword_23D8E48F8) + 36);
  *v20 = v19;
  v20[8] = v7;
}

uint64_t sub_23D8AD308()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_23D8AD3C0()
{
  result = qword_27E2EFA68;
  if (!qword_27E2EFA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFA60, &qword_23D8E48F8);
    sub_23D8AD44C();
    sub_23D8AD590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFA68);
  }

  return result;
}

unint64_t sub_23D8AD44C()
{
  result = qword_27E2EFA70;
  if (!qword_27E2EFA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFA78, &qword_23D8E4900);
    sub_23D8AD4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFA70);
  }

  return result;
}

unint64_t sub_23D8AD4D8()
{
  result = qword_27E2EFA80;
  if (!qword_27E2EFA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFA88, &qword_23D8E4908);
    sub_23D835AD0(&qword_27E2EFA90, &qword_27E2EFA98, &qword_23D8E4910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFA80);
  }

  return result;
}

unint64_t sub_23D8AD590()
{
  result = qword_27E2EFAA0;
  if (!qword_27E2EFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFAA0);
  }

  return result;
}

unint64_t sub_23D8AD5E4()
{
  result = qword_27E2EFAB0;
  if (!qword_27E2EFAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFA58, &qword_23D8E48F0);
    sub_23D8AD670();
    sub_23D8AD758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFAB0);
  }

  return result;
}

unint64_t sub_23D8AD670()
{
  result = qword_27E2EFAB8;
  if (!qword_27E2EFAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFAC0, &qword_23D8E4918);
    sub_23D835AD0(&qword_27E2EFAA8, &qword_27E2EFA50, &qword_23D8E48E8, MEMORY[0x277CDF028]);
    sub_23D8AD814(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFAB8);
  }

  return result;
}

unint64_t sub_23D8AD758()
{
  result = qword_27E2EFAC8;
  if (!qword_27E2EFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFAC8);
  }

  return result;
}

uint64_t sub_23D8AD7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFA58, &qword_23D8E48F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D8AD814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D8AD880(uint64_t a1)
{
  v2 = sub_23D8DD100();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD270();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23D8AD960(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_23D8AD9BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23D8ADA34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_23D8ADA90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23D8ADAF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFA58, &qword_23D8E48F0);
  sub_23D8DD770();
  sub_23D8AD5E4();
  sub_23D8AD814(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D8ADC30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFAE0, &qword_23D8E4A88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFAE8, &unk_23D8E4A90);
  sub_23D835AD0(&qword_27E2EFAF0, &qword_27E2EFAE0, &qword_23D8E4A88, MEMORY[0x277CE04B0]);
  sub_23D835AD0(&qword_27E2EFAF8, &qword_27E2EFAE8, &unk_23D8E4A90, MEMORY[0x277CE1198]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t SSSpeedMenu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = sub_23D8DD560();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB08, &qword_23D8E4AA0);
  sub_23D8ADF5C(v4, v5, (a2 + *(v7 + 44)), v6);
  v8 = sub_23D8DDA40();
  sub_23D8DCC20();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB10, &qword_23D8E4AA8) + 36);
  *v17 = v8;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = sub_23D8DD9D0();
  sub_23D8DCC20();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB18, &qword_23D8E4AB0) + 36);
  *v27 = v18;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB20, &unk_23D8E4AB8) + 36);
  sub_23D8DE590();
  LOBYTE(v4) = sub_23D8DD9E0();
  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED8C8, &qword_23D8E1260) + 36)) = v4;
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB28, &qword_23D8E4AC8) + 36));
  v30 = *(sub_23D8DD090() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_23D8DD4E0();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #20.0 }

  *v29 = _Q0;
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE30, &qword_23D8E4AD0) + 36)] = 256;
  sub_23D8DE220();
  v38 = sub_23D8DE250();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB30, &qword_23D8E4AD8);
  v40 = (a2 + *(result + 36));
  *v40 = v38;
  v40[1] = 0x4020000000000000;
  v40[2] = 0;
  v40[3] = 0;
  return result;
}

uint64_t sub_23D8ADF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, float a4@<S0>)
{
  v36 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB70, &qword_23D8E4B80);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v34 = &v33 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3E0, &qword_23D8E3890);
  sub_23D897B5C();
  sub_23D8DE360();
  *&v44 = a1;
  *(&v44 + 1) = a2;
  *&v45 = a4;
  sub_23D8AE310(&v37);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a4;

  sub_23D8DE360();
  v20 = *(v8 + 16);
  v21 = v34;
  v20(v34, v17, v7);
  v22 = v35;
  v20(v35, v15, v7);
  v23 = v36;
  v20(v36, v21, v7);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB78, &qword_23D8E4B88);
  v25 = &v23[*(v24 + 48)];
  v26 = v41;
  v27 = v42;
  v43[4] = v41;
  v43[5] = v42;
  v28 = v40;
  v43[2] = v39;
  v43[3] = v40;
  v29 = v37;
  v30 = v38;
  v43[0] = v37;
  v43[1] = v38;
  *(v25 + 2) = v39;
  *(v25 + 3) = v28;
  *(v25 + 4) = v26;
  *(v25 + 5) = v27;
  *v25 = v29;
  *(v25 + 1) = v30;
  v20(&v23[*(v24 + 64)], v22, v7);
  sub_23D8AEBAC(v43, &v44);
  v31 = *(v8 + 8);
  v31(v15, v7);
  v31(v17, v7);
  v31(v22, v7);
  v46 = v39;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v44 = v37;
  v45 = v38;
  sub_23D8AEC1C(&v44);
  return (v31)(v21, v7);
}

double sub_23D8AE310@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v27._countAndFlagsBits = *v1;
  v27._object = v3;
  LODWORD(v28) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB88, &qword_23D8E4B98);
  MEMORY[0x23EEF05A0](&speed, v5);
  v27 = localizedNameFor(speed:)(speed);
  sub_23D83CB18();
  v6 = sub_23D8DDCB0();
  v8 = v7;
  v10 = v9;
  v27._countAndFlagsBits = sub_23D8DE220();
  v11 = sub_23D8DDC10();
  v13 = v12;
  v15 = v14;
  sub_23D83CB6C(v6, v8, v10 & 1);

  sub_23D8DDB60();
  sub_23D8DDAC0();
  sub_23D8DDB70();

  v16 = sub_23D8DDC40();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_23D83CB6C(v11, v13, v15 & 1);

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v26[6] = v27;
  *&v26[22] = v28;
  *&v26[38] = v29;
  v23 = *&v26[16];
  *(a1 + 42) = *v26;
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 58) = v23;
  result = *&v26[32];
  *(a1 + 74) = *&v26[32];
  *(a1 + 88) = *&v26[46];
  return result;
}

void sub_23D8AE4F4(uint64_t a1, uint64_t a2, float a3)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB88, &qword_23D8E4B98);
  MEMORY[0x23EEF05A0](v7);
  if (*v7 < 2.0)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;

    MEMORY[0x23EEF05A0](&v9, v6);
    v7[0] = a1;
    v7[1] = a2;
    v8 = a3;
    sub_23D8DE460();
  }
}

uint64_t sub_23D8AE5D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  result = sub_23D8DE220();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_23D8AE620(uint64_t a1, uint64_t a2, float a3)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB88, &qword_23D8E4B98);
  MEMORY[0x23EEF05A0](v7);
  if (*v7 > 0.6)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;

    MEMORY[0x23EEF05A0](&v9, v6);
    v7[0] = a1;
    v7[1] = a2;
    v8 = a3;
    sub_23D8DE460();
  }
}

uint64_t sub_23D8AE70C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  result = sub_23D8DE220();
  *a1 = v2;
  a1[1] = result;
  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23D8AE774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_23D8AE7BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D8AE810()
{
  result = qword_27E2EFB38;
  if (!qword_27E2EFB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFB30, &qword_23D8E4AD8);
    sub_23D8AE89C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFB38);
  }

  return result;
}

unint64_t sub_23D8AE89C()
{
  result = qword_27E2EFB40;
  if (!qword_27E2EFB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFB28, &qword_23D8E4AC8);
    sub_23D8AE954();
    sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFB40);
  }

  return result;
}

unint64_t sub_23D8AE954()
{
  result = qword_27E2EFB48;
  if (!qword_27E2EFB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFB20, &unk_23D8E4AB8);
    sub_23D8AEA0C();
    sub_23D835AD0(&qword_27E2ED8C0, &qword_27E2ED8C8, &qword_23D8E1260, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFB48);
  }

  return result;
}

unint64_t sub_23D8AEA0C()
{
  result = qword_27E2EFB50;
  if (!qword_27E2EFB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFB18, &qword_23D8E4AB0);
    sub_23D8AEA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFB50);
  }

  return result;
}

unint64_t sub_23D8AEA98()
{
  result = qword_27E2EFB58;
  if (!qword_27E2EFB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFB10, &qword_23D8E4AA8);
    sub_23D835AD0(&qword_27E2EFB60, &qword_27E2EFB68, &qword_23D8E4B78, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFB58);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_23D8AEBAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB80, &qword_23D8E4B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8AEC1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFB80, &qword_23D8E4B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.colorPickerSheet(isPresented:isLightMode:isDynamic:selection:supportsAlpha:title:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  LOBYTE(v15) = a3;
  *(&v15 + 1) = a6;
  *&v16 = a7;
  *(&v16 + 1) = a8;
  LOBYTE(v17) = a4;
  BYTE1(v17) = a5;
  BYTE2(v17) = a9;
  *(&v17 + 1) = a10;

  sub_23D8DE5F0();
  sub_23D8AED9C();
  sub_23D8DDD00();
  v18[2] = v16;
  v18[3] = v17;
  v19 = a11;
  v18[0] = v14;
  v18[1] = v15;
  return sub_23D8AEDF0(v18);
}

unint64_t sub_23D8AED9C()
{
  result = qword_27E2EFB90;
  if (!qword_27E2EFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFB90);
  }

  return result;
}

id sub_23D8AEE20()
{
  v15 = *(v0 + 24);
  v16 = *(v0 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EFCA0, &unk_23D8E4CF8);
  sub_23D8DE470();
  v11 = v13;
  v1 = v14;
  v15 = *v0;
  LOBYTE(v16) = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  sub_23D8DE470();
  v2 = v13;
  v3 = v14;
  v4 = *(v0 + 48);
  v5 = *(v0 + 49);
  v6 = type metadata accessor for AXRColorPickerView.Coordinator();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator_didPresent] = 0;
  v8 = &v7[OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator__selection];
  *v8 = v11;
  *(v8 + 2) = v1;
  v9 = &v7[OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator__isPresented];
  *v9 = v2;
  v9[16] = v3;
  v7[OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator_isLightMode] = v4;
  v7[OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator_isDynamic] = v5;
  v12.receiver = v7;
  v12.super_class = v6;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_23D8AEFD0(_BYTE *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  sub_23D8DE460();
  v1[OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator_didPresent] = 0;
}

id sub_23D8AF080()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXRColorPickerView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D8AF154(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDEB8, &qword_23D8E1888);
  sub_23D8DD020();
  sub_23D8AF1CC();
  return swift_getWitnessTable();
}

unint64_t sub_23D8AF1CC()
{
  result = qword_27E2EFC90;
  if (!qword_27E2EFC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDEB8, &qword_23D8E1888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFC90);
  }

  return result;
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

uint64_t sub_23D8AF254(uint64_t a1, int a2)
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

uint64_t sub_23D8AF29C(uint64_t result, int a2, int a3)
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

void sub_23D8AF300(void *a1)
{
  v2 = v1;
  v26 = *v1;
  LOBYTE(v27) = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  MEMORY[0x23EEF05A0](&v25, v4);
  if (v25 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFCB0, &qword_23D8E4D08);
    sub_23D8DD920();
    v5 = *(v26 + OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator_didPresent);

    if ((v5 & 1) == 0)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D75360]) init];
      v26 = *(v2 + 24);
      v27 = *(v2 + 5);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EFCA0, &unk_23D8E4CF8);
      MEMORY[0x23EEF05A0](&v25, v7);
      if (v25)
      {
        sub_23D8380E8();

        v8 = sub_23D8DEB80();
        [v6 setSelectedColor_];
      }

      [v6 setSupportsAlpha_];
      v9 = *(v2 + 8);
      v10 = v6;
      if (v9)
      {
        v9 = sub_23D8DE830();
      }

      [v6 setTitle_];

      sub_23D8DD920();
      v11 = v26;
      [v6 setDelegate_];

      if (AXDeviceIsPad())
      {
        v12 = 2;
      }

      else
      {
        v12 = 7;
      }

      [v6 setModalPresentationStyle_];
      v13 = [v6 presentationController];
      if (v13)
      {
        v14 = v13;
        sub_23D8DD920();
        v15 = v26;
        [v14 setDelegate_];
      }

      if (*(v2 + 49))
      {
        v16 = [v6 selectedColor];
        v17 = sub_23D8DEB70();
      }

      else
      {
        v17 = *(v2 + 48);
      }

      if (v17)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      [v6 setOverrideUserInterfaceStyle_];

      v19 = [a1 window];
      if (v19 && (v20 = v19, v21 = [v19 rootViewController], v20, v21))
      {
        v22 = [v21 presentedViewController];
        if (v22)
        {
          do
          {
            v23 = v22;

            v22 = [v23 presentedViewController];
            v21 = v23;
          }

          while (v22);
        }

        else
        {
          v23 = v21;
        }

        [v23 presentViewController:v6 animated:1 completion:0];
      }

      else
      {
        v23 = 0;
      }

      sub_23D8DD920();

      v24 = v26;
      *(v26 + OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator_didPresent) = 1;
    }
  }
}

id sub_23D8AF678()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setHidden_];
  return v0;
}

id sub_23D8AF708@<X0>(void *a1@<X8>)
{
  result = sub_23D8AEE20();
  *a1 = result;
  return result;
}

uint64_t sub_23D8AF754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D8AF844();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23D8AF7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D8AF844();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23D8AF81C(uint64_t a1)
{
  sub_23D8AF844();
  sub_23D8DD680();
  __break(1u);
}

unint64_t sub_23D8AF844()
{
  result = qword_27E2EFC98;
  if (!qword_27E2EFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFC98);
  }

  return result;
}

id sub_23D8AF898(void *a1, void *a2)
{
  a2;
  v4 = sub_23D8DE130();
  v9 = *(v2 + OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator__selection);
  v10 = *(v2 + OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator__selection + 16);
  v8 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EFCA0, &unk_23D8E4CF8);
  sub_23D8DE460();
  if (*(v2 + OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator_isDynamic) == 1)
  {
    v5 = sub_23D8DEB70();
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator_isLightMode);
  }

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return [a1 setOverrideUserInterfaceStyle_];
}

void AXRRootView.init(readerManager:presetsManager:dismiss:)(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for AXRRootView(0);
  v10 = a5 + v9[5];
  sub_23D8DE310();
  *v10 = v19;
  *(v10 + 1) = v20;
  v11 = (a5 + v9[8]);
  v12 = (a5 + v9[6]);
  sub_23D8DC430();
  sub_23D8B0A0C(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v13 = a1;
  *v12 = sub_23D8DCEF0();
  v12[1] = v14;
  v15 = (a5 + v9[7]);
  sub_23D8DC9F0();
  sub_23D8B0A0C(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v16 = sub_23D8DCEF0();
  v18 = v17;

  *v15 = v16;
  v15[1] = v18;
  *v11 = a3;
  v11[1] = a4;
}

uint64_t type metadata accessor for AXRRootView(uint64_t a1)
{
  result = qword_27E2EFCE8;
  if (!qword_27E2EFCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D8AFB60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t AXRRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v19[0] = sub_23D8DCCB0();
  v2 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXRRootView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFCB8, &qword_23D8E4D48);
  MEMORY[0x28223BE20](v8);
  v10 = (v19 - v9);
  *v10 = sub_23D8DE5F0();
  v10[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFCC0, &qword_23D8E4D50);
  sub_23D8B0054(v1, (v10 + *(v12 + 44)));
  sub_23D8AA1B0(v1, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_23D8B055C(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (v10 + *(v8 + 36));
  *v15 = sub_23D8B05C0;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  sub_23D8AFB60(v4);
  sub_23D8AA1B0(v1, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_23D8B055C(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13);
  sub_23D8B091C();
  sub_23D8B0A0C(&qword_27E2EFCE0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F8]);
  v17 = v19[0];
  sub_23D8DE060();

  (*(v2 + 8))(v4, v17);
  return sub_23D83C6E4(v10, &qword_27E2EFCB8, &qword_23D8E4D48);
}

uint64_t sub_23D8B0054@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFCF8, &qword_23D8E4DE0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v28 = sub_23D8DE230();
  sub_23D8DE5F0();
  sub_23D8DD0D0();
  v11 = type metadata accessor for AXRRootView(0);
  v12 = (a1 + v11[8]);
  v13 = *v12;
  v14 = v12[1];
  sub_23D83BCC8(*v12, v14);
  AXRFullScreenView.init(dismiss:)(v13, v14, v10);
  v15 = *(a1 + v11[6] + 8);
  sub_23D8DC430();
  sub_23D8B0A0C(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v16 = sub_23D8DCB10();
  v17 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD00, &qword_23D8E4DE8) + 36)];
  *v17 = v16;
  v17[1] = v15;
  v18 = *(a1 + v11[7] + 8);
  sub_23D8DC9F0();
  sub_23D8B0A0C(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v19 = v15;
  v20 = sub_23D8DCB10();
  v21 = &v10[*(v5 + 44)];
  *v21 = v20;
  v21[1] = v18;
  sub_23D83C67C(v10, v8, &qword_27E2EFCF8, &qword_23D8E4DE0);
  *(&v36[4] + 8) = v33;
  *(&v36[3] + 8) = v32;
  *(&v36[6] + 8) = v35;
  v22 = v28;
  *&v36[0] = v28;
  *(&v36[5] + 8) = v34;
  *(&v36[2] + 8) = v31;
  *(&v36[1] + 8) = v30;
  *(v36 + 8) = v29;
  BYTE8(v36[7]) = 0;
  v23 = v36[5];
  a2[4] = v36[4];
  a2[5] = v23;
  a2[6] = v36[6];
  *(a2 + 105) = *(&v36[6] + 9);
  v24 = v36[1];
  *a2 = v36[0];
  a2[1] = v24;
  v25 = v36[3];
  a2[2] = v36[2];
  a2[3] = v25;
  v26 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD08, &qword_23D8E4DF0) + 48);
  sub_23D83C67C(v8, v26, &qword_27E2EFCF8, &qword_23D8E4DE0);

  sub_23D83C67C(v36, &v37, &qword_27E2EFD10, &qword_23D8E4DF8);
  sub_23D83C6E4(v10, &qword_27E2EFCF8, &qword_23D8E4DE0);
  sub_23D83C6E4(v8, &qword_27E2EFCF8, &qword_23D8E4DE0);
  v41 = v32;
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v38 = v29;
  v39 = v30;
  v37 = v22;
  v40 = v31;
  v45 = 0;
  return sub_23D83C6E4(&v37, &qword_27E2EFD10, &qword_23D8E4DF8);
}

uint64_t sub_23D8B03F8()
{
  v0 = sub_23D8DCCB0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  type metadata accessor for AXRRootView(0);
  sub_23D8AFB60(v6);
  (*(v1 + 104))(v4, *MEMORY[0x277CDF3C0], v0);
  sub_23D8DCCA0();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  return sub_23D8DC9A0();
}

uint64_t sub_23D8B055C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRRootView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8B05C0()
{
  type metadata accessor for AXRRootView(0);

  return sub_23D8B03F8();
}

uint64_t sub_23D8B0620(uint64_t a1, uint64_t a2)
{
  v2 = sub_23D8DCCB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AXRRootView(0);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
  sub_23D8DCCA0();
  (*(v3 + 8))(v5, v2);
  return sub_23D8DC9A0();
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for AXRRootView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCCB0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 32)) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8B089C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AXRRootView(0);

  return sub_23D8B0620(a1, a2);
}

unint64_t sub_23D8B091C()
{
  result = qword_27E2EFCC8;
  if (!qword_27E2EFCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFCB8, &qword_23D8E4D48);
    sub_23D8B09A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFCC8);
  }

  return result;
}

unint64_t sub_23D8B09A8()
{
  result = qword_27E2EFCD0;
  if (!qword_27E2EFCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFCD8, &qword_23D8E4D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFCD0);
  }

  return result;
}

uint64_t sub_23D8B0A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D8B0A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D8B0B68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D8B0C30(uint64_t a1)
{
  sub_23D87D1E0(319);
  if (v1 <= 0x3F)
  {
    sub_23D8368CC();
    if (v2 <= 0x3F)
    {
      sub_23D86FEE0(319);
      if (v3 <= 0x3F)
      {
        sub_23D86FE4C(319);
        if (v4 <= 0x3F)
        {
          sub_23D8B0CFC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23D8B0CFC(uint64_t a1)
{
  if (!qword_27E2ED268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED270, &qword_23D8E0900);
    v1 = sub_23D8DEBD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED268);
    }
  }
}

uint64_t sub_23D8B0D60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFCB8, &qword_23D8E4D48);
  sub_23D8DCCB0();
  sub_23D8B091C();
  sub_23D8B0A0C(&qword_27E2EFCE0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D8B0E44@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v110 = sub_23D8DC4D0();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_23D8DCCB0();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23D8DCF90();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23D8DD820();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD80, &qword_23D8E50F0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = v81 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD88, &qword_23D8E50F8);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = v81 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD90, &qword_23D8E5100);
  MEMORY[0x28223BE20](v88);
  v97 = v81 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD98, &qword_23D8E5108);
  MEMORY[0x28223BE20](v95);
  v96 = v81 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFDA0, &qword_23D8E5110);
  MEMORY[0x28223BE20](v102);
  v103 = v81 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFDA8, &qword_23D8E5118);
  v11 = MEMORY[0x28223BE20](v107);
  v104 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v105 = v81 - v14;
  MEMORY[0x28223BE20](v13);
  v106 = v81 - v15;
  v16 = *(v1 + 8);
  sub_23D8DC430();
  sub_23D8B3CD4(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);

  v17 = sub_23D8DD140();
  v19 = v18;
  v20 = sub_23D8DC9F0();
  v21 = sub_23D8B3CD4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v81[1] = v20;
  v81[0] = v21;
  v22 = sub_23D8DD140();
  v24 = v23;
  sub_23D8DC900();
  sub_23D8B3CD4(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  v101 = v16;
  v25 = sub_23D8DCEF0();
  v112 = v1;
  v27 = *(v1 + 16);
  if (!v27)
  {
    sub_23D8DD120();
    __break(1u);
    goto LABEL_14;
  }

  v28 = v25;
  v29 = v26;
  v30 = v27;
  v31 = sub_23D8DCB10();
  v113._countAndFlagsBits = v28;
  v113._object = v29;
  *&v114 = v17;
  *(&v114 + 1) = v19;
  *&v115 = v22;
  *(&v115 + 1) = v24;
  *&v116 = v31;
  *(&v116 + 1) = v27;
  v32 = v82;
  sub_23D8DD810();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFDB0, &unk_23D8E5120);
  v34 = sub_23D8B384C();
  v35 = v85;
  sub_23D8DDF30();
  (*(v83 + 8))(v32, v84);
  v117[0] = v113;
  v117[1] = v114;
  v117[2] = v115;
  v117[3] = v116;
  sub_23D83C6E4(v117, &qword_27E2EFDB0, &unk_23D8E5120);
  v36 = v90;
  v37 = v89;
  v38 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x277CDFA00], v91);
  v113._countAndFlagsBits = v33;
  v113._object = v34;
  swift_getOpaqueTypeConformance2();
  v39 = v92;
  v40 = v87;
  sub_23D8DDDC0();
  (*(v36 + 8))(v37, v38);
  (*(v86 + 8))(v35, v40);
  if (!*(v112 + 32))
  {
LABEL_14:
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  sub_23D8380E8();

  sub_23D8DC960();
  sub_23D8DC7E0();

  v41 = sub_23D8DEB80();
  v42 = sub_23D8DEB70();

  v43 = v99;
  v44 = MEMORY[0x277CDF3D0];
  if ((v42 & 1) == 0)
  {
    v44 = MEMORY[0x277CDF3C0];
  }

  v45 = v98;
  v46 = v100;
  (*(v99 + 104))(v98, *v44, v100);
  KeyPath = swift_getKeyPath();
  v48 = v97;
  v49 = &v97[*(v88 + 36)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
  (*(v43 + 32))(v49 + *(v50 + 28), v45, v46);
  *v49 = KeyPath;
  (*(v93 + 32))(v48, v39, v94);
  sub_23D8DC960();

  sub_23D8DC7E0();

  v51 = sub_23D8DEB80();
  LOBYTE(KeyPath) = sub_23D8DEB70();

  v52 = v103;
  v53 = v102;
  if (KeyPath)
  {
    v54 = sub_23D8DE220();
  }

  else
  {
    v54 = sub_23D8DE240();
  }

  v55 = v54;
  v56 = swift_getKeyPath();
  v57 = v96;
  sub_23D83C744(v48, v96, &qword_27E2EFD90, &qword_23D8E5100);
  v58 = (v57 + *(v95 + 36));
  *v58 = v56;
  v58[1] = v55;
  v59 = swift_getKeyPath();
  sub_23D83C744(v57, v52, &qword_27E2EFD98, &qword_23D8E5108);
  v60 = v52 + *(v53 + 36);
  *v60 = v59;
  *(v60 + 8) = 2;
  v61 = 0x800000023D8E6910;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v62 = 0xD00000000000001ALL;
  if (qword_27E2F3C80)
  {
    v63 = qword_27E2F3C80;
    v64 = sub_23D8DE830();
    v65 = sub_23D8DE830();
    v66 = [v63 localizedStringForKey:v64 value:0 table:v65];

    v62 = sub_23D8DE870();
    v61 = v67;
  }

  v113._countAndFlagsBits = v62;
  v113._object = v61;
  sub_23D83CB18();
  v68 = sub_23D8DDCB0();
  v70 = v69;
  v72 = v71;
  sub_23D8B3968();
  v73 = v104;
  sub_23D8DDE00();
  sub_23D83CB6C(v68, v70, v72 & 1);

  sub_23D83C6E4(v52, &qword_27E2EFDA0, &qword_23D8E5110);
  v74 = v108;
  sub_23D8DC8D0();
  sub_23D8DC490();
  v76 = v75;
  (*(v109 + 8))(v74, v110);
  v113 = localizedNameFor(speed:)(v76);
  v77 = v105;
  sub_23D8DCFE0();

  sub_23D83C6E4(v73, &qword_27E2EFDA8, &qword_23D8E5118);
  v78 = v106;
  sub_23D8DD000();
  v79 = sub_23D83C6E4(v77, &qword_27E2EFDA8, &qword_23D8E5118);
  MEMORY[0x28223BE20](v79);
  v81[-2] = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC50, &unk_23D8E5190);
  sub_23D8B3C18();
  sub_23D835AD0(&qword_27E2EDC60, &qword_27E2EDC50, &unk_23D8E5190, MEMORY[0x277CE1198]);
  sub_23D8DDF70();
  return sub_23D83C6E4(v78, &qword_27E2EFDA8, &qword_23D8E5118);
}

uint64_t AXRPlaybackSpeedPicker.init(speechFormatterModel:)@<X0>(uint64_t *a2@<X8>)
{
  sub_23D8DC430();
  sub_23D8B3CD4(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  a2[2] = sub_23D8DD140();
  a2[3] = v3;
  sub_23D8DC9F0();
  sub_23D8B3CD4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  a2[4] = sub_23D8DD140();
  a2[5] = v4;
  sub_23D8DC900();
  sub_23D8B3CD4(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  result = sub_23D8DCEF0();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_23D8B1D04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DC4D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D8DD470();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23D8DD560();
  sub_23D8DD450();
  sub_23D8DD440();
  sub_23D8DC8D0();
  sub_23D8DC490();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  localizedNameFor(speed:)(v9);
  sub_23D8DD430();

  sub_23D8DD440();
  sub_23D8DD490();
  result = sub_23D8DDC90();
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12 & 1;
  *(a1 + 48) = v13;
  return result;
}

uint64_t AXRPlaybackSpeedPicker.currentModel.getter()
{
  if (*(v0 + 32))
  {

    v1 = sub_23D8DC960();

    return v1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8B3CD4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t AXRPlaybackSpeedPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DCCB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD18, &qword_23D8E4E00);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = v1[1];
  v24[0] = *v1;
  v24[1] = v11;
  v25 = v1[2];
  *v10 = sub_23D8DD560();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD20, &unk_23D8E4E08);
  sub_23D8B2314(v24, &v10[*(v12 + 44)]);
  v13 = &v10[*(v8 + 44)];
  v14 = *(sub_23D8DD090() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_23D8DD4E0();
  (*(*(v16 - 8) + 104))(&v13->i8[v14], v15, v16);
  *v13 = vdupq_n_s64(0x4041000000000000uLL);
  *(v13->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE30, &qword_23D8E4AD0) + 36)) = 256;
  if (v25)
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v17 = sub_23D8DEB80();
    v18 = sub_23D8DEB70();

    v19 = MEMORY[0x277CDF3D0];
    if ((v18 & 1) == 0)
    {
      v19 = MEMORY[0x277CDF3C0];
    }

    (*(v4 + 104))(v6, *v19, v3);
    KeyPath = swift_getKeyPath();
    v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD28, &unk_23D8E4E48) + 36));
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v4 + 32))(v21 + *(v22 + 28), v6, v3);
    *v21 = KeyPath;
    return sub_23D83C744(v10, a1, &qword_27E2EFD18, &qword_23D8E4E00);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8B3CD4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8B2314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v50 = sub_23D8DC4D0();
  v56 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v54 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23D8DCFC0();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_23D8DD080();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF448, &qword_23D8E4F50);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD50, &qword_23D8E4F58);
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD58, &qword_23D8E4F60);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v17 = v39 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD60, &qword_23D8E4F68);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v39[0] = v39 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFD68, &qword_23D8E4F70);
  MEMORY[0x28223BE20](v43);
  v41 = v39 - v19;
  v46 = a1;
  v39[1] = a1[1];
  sub_23D8DC900();
  sub_23D8B3CD4(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  sub_23D8DCF00();
  swift_getKeyPath();
  sub_23D8DCF10();

  sub_23D8B347C(v12, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF470, &qword_23D8E3980);
  v20 = MEMORY[0x277CE7250];
  sub_23D8B3CD4(&qword_27E2EF478, MEMORY[0x277CE7250], MEMORY[0x277CE7258]);
  sub_23D898080();
  v21 = v50;
  sub_23D8DE3A0();
  sub_23D83C6E4(v12, &qword_27E2EF448, &qword_23D8E4F50);
  sub_23D8DD070();
  v22 = sub_23D835AD0(&qword_27E2EFD70, &qword_27E2EFD50, &qword_23D8E4F58, MEMORY[0x277CDF038]);
  v23 = sub_23D8B3CD4(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v24 = v48;
  sub_23D8DDD10();
  (*(v49 + 8))(v6, v24);
  (*(v40 + 8))(v15, v13);
  v25 = v51;
  sub_23D8DCFB0();
  *&v58 = v13;
  *(&v58 + 1) = v24;
  *&v59 = v22;
  *(&v59 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v39[0];
  v27 = v42;
  v28 = v52;
  sub_23D8DDD30();
  (*(v53 + 8))(v25, v28);
  (*(v44 + 8))(v17, v27);
  sub_23D8DE5F0();
  sub_23D8DD0D0();
  v29 = v41;
  (*(v45 + 32))(v41, v26, v47);
  v30 = (v29 + *(v43 + 36));
  v31 = v63;
  v30[4] = v62;
  v30[5] = v31;
  v30[6] = v64;
  v32 = v59;
  *v30 = v58;
  v30[1] = v32;
  v33 = v61;
  v30[2] = v60;
  v30[3] = v33;
  v34 = v54;
  sub_23D8DC8D0();
  v35 = swift_allocObject();
  v36 = v46;
  v37 = v46[1];
  v35[1] = *v46;
  v35[2] = v37;
  v35[3] = *(v36 + 32);
  sub_23D8B353C(v36, v57);
  sub_23D8B3574();
  sub_23D8B3CD4(&qword_27E2EF240, v20, MEMORY[0x277CE7260]);
  sub_23D8DE060();

  (*(v56 + 8))(v34, v21);
  return sub_23D83C6E4(v29, &qword_27E2EFD68, &qword_23D8E4F70);
}

uint64_t sub_23D8B2C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D8DC4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = v8;
    sub_23D8DC8D0();
    sub_23D8DC2B0();

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_23D8DC430();
    sub_23D8B3CD4(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8B2D58(uint64_t a1)
{
  v2 = sub_23D8DC4D0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DC8E0();
}

uint64_t sub_23D8B2E24()
{
  sub_23D8DC4A0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4A8, &qword_23D8E39E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4B0, &qword_23D8E39E8);
  sub_23D835AD0(&qword_27E2EF4B8, &qword_27E2EF4A8, &qword_23D8E39E0, MEMORY[0x277D83980]);
  sub_23D8DC4D0();
  sub_23D8B3CD4(&qword_27E2EF478, MEMORY[0x277CE7250], MEMORY[0x277CE7258]);
  swift_getOpaqueTypeConformance2();
  return sub_23D8DE4C0();
}

uint64_t sub_23D8B2FB8(uint64_t a1)
{
  v2 = sub_23D8DCCB0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD190();
}

unint64_t sub_23D8B30B4()
{
  result = qword_27E2EFD30;
  if (!qword_27E2EFD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFD28, &unk_23D8E4E48);
    sub_23D8B316C();
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFD30);
  }

  return result;
}

unint64_t sub_23D8B316C()
{
  result = qword_27E2EFD38;
  if (!qword_27E2EFD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFD18, &qword_23D8E4E00);
    sub_23D835AD0(&qword_27E2EFD40, &qword_27E2EFD48, &qword_23D8E4F18, MEMORY[0x277CE1198]);
    sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFD38);
  }

  return result;
}

uint64_t sub_23D8B3250@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_23D8DC430();
  sub_23D8B3CD4(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v6 = sub_23D8DD140();
  v8 = v7;
  sub_23D8DC9F0();
  sub_23D8B3CD4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v9 = sub_23D8DD140();
  v11 = v10;
  KeyPath = swift_getKeyPath();
  sub_23D8DE310();
  sub_23D8DC900();
  sub_23D8B3CD4(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  result = sub_23D8DCEF0();
  *a5 = result;
  *(a5 + 8) = v14;
  *(a5 + 16) = v6;
  *(a5 + 24) = v8;
  *(a5 + 32) = v9;
  *(a5 + 40) = v11;
  *(a5 + 48) = KeyPath;
  *(a5 + 56) = 0;
  *(a5 + 64) = a2;
  *(a5 + 72) = a3;
  *(a5 + 80) = a4;
  *(a5 + 88) = v18;
  *(a5 + 96) = v19;
  return result;
}

uint64_t sub_23D8B347C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF448, &qword_23D8E4F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8B34EC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_23D8B3574()
{
  result = qword_27E2EFD78;
  if (!qword_27E2EFD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFD68, &qword_23D8E4F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFD58, &qword_23D8E4F60);
    sub_23D8DCFC0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFD50, &qword_23D8E4F58);
    sub_23D8DD080();
    sub_23D835AD0(&qword_27E2EFD70, &qword_27E2EFD50, &qword_23D8E4F58, MEMORY[0x277CDF038]);
    sub_23D8B3CD4(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFD78);
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

uint64_t sub_23D8B3780(uint64_t a1, int a2)
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

uint64_t sub_23D8B37C8(uint64_t result, int a2, int a3)
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

unint64_t sub_23D8B384C()
{
  result = qword_27E2EFDB8;
  if (!qword_27E2EFDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFDB0, &unk_23D8E5120);
    sub_23D8B3904();
    sub_23D835AD0(&qword_27E2EDAE8, &qword_27E2EDAF0, &qword_23D8E1408, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFDB8);
  }

  return result;
}

unint64_t sub_23D8B3904()
{
  result = qword_27E2EFDC0;
  if (!qword_27E2EFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFDC0);
  }

  return result;
}

unint64_t sub_23D8B3968()
{
  result = qword_27E2EFDC8;
  if (!qword_27E2EFDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFDA0, &qword_23D8E5110);
    sub_23D8B3A20();
    sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFDC8);
  }

  return result;
}

unint64_t sub_23D8B3A20()
{
  result = qword_27E2EFDD0;
  if (!qword_27E2EFDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFD98, &qword_23D8E5108);
    sub_23D8B3AD8();
    sub_23D835AD0(&qword_27E2ED4B8, &qword_27E2ED4C0, &qword_23D8E0C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFDD0);
  }

  return result;
}

unint64_t sub_23D8B3AD8()
{
  result = qword_27E2EFDD8;
  if (!qword_27E2EFDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFD90, &qword_23D8E5100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFD80, &qword_23D8E50F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFDB0, &unk_23D8E5120);
    sub_23D8B384C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFDD8);
  }

  return result;
}

unint64_t sub_23D8B3C18()
{
  result = qword_27E2EFDE0;
  if (!qword_27E2EFDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFDA8, &qword_23D8E5118);
    sub_23D8B3968();
    sub_23D8B3CD4(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFDE0);
  }

  return result;
}

uint64_t sub_23D8B3CD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D8B3D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFDA8, &qword_23D8E5118);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC50, &unk_23D8E5190);
  sub_23D8B3C18();
  sub_23D835AD0(&qword_27E2EDC60, &qword_27E2EDC50, &unk_23D8E5190, MEMORY[0x277CE1198]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t SSMoreMenuRow.body.getter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v10 = *(v1 + 32);
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v5;
  v6 = *(v1 + 16);
  *(v4 + 32) = *v1;
  *(v4 + 48) = v6;
  *(v4 + 64) = *(v1 + 32);
  (*(*(a1 - 8) + 16))(v8, v9, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFDE8, &qword_23D8E51A0);
  sub_23D835AD0(qword_27E2EFDF0, &qword_27E2EFDE8, &qword_23D8E51A0, MEMORY[0x277CE14C0]);
  return sub_23D8DE360();
}

double sub_23D8B3F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v11[0]) = *(a1 + 16);
  v6 = LOBYTE(v11[0]);
  v7 = swift_unknownObjectRetain();
  sub_23D8DA51C(v7, v11);
  swift_unknownObjectRelease();
  if (v6 == 6)
  {
    type metadata accessor for SSMoreMenuRow(0, a2, a3, v8);
    v10 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v10;
    v12 = *(a1 + 32);
    sub_23D8B4434();

    sub_23D861AB4();
  }

  return result;
}

uint64_t sub_23D8B3FD4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23D8B4020@<X0>(uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  SSActions.title.getter(a3);
  sub_23D83CB18();
  v4 = sub_23D8DDCB0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_23D8DE2C0();
  *a2 = v4;
  *(a2 + 8) = v6;
  v8 &= 1u;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v11;
  sub_23D834028(v4, v6, v8);

  sub_23D83CB6C(v4, v6, v8);
}

uint64_t sub_23D8B4290@<X0>(char *a1@<X0>, uint64_t a5@<X8>)
{
  v6 = *a1;
  type metadata accessor for SSStore(0);
  sub_23D8AA7DC();
  *a5 = sub_23D8DD140();
  *(a5 + 8) = v7;
  *(a5 + 16) = v6;
  result = sub_23D8DCEF0();
  *(a5 + 24) = result;
  *(a5 + 32) = v9;
  return result;
}

uint64_t sub_23D8B430C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D8B4348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D8B4390(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_23D8B4434()
{
  result = *v0;
  if (!*v0)
  {
    type metadata accessor for SSStore(0);
    sub_23D8AA7DC();
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8B4480@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D8B4680@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AXRTextFormatterSheet(0);
  sub_23D83C67C(v1 + *(v10 + 24), v9, &qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23D83C744(v9, a1, &qword_27E2EE9E0, &qword_23D8E26D0);
  }

  sub_23D8DEAB0();
  v12 = sub_23D8DD990();
  sub_23D8DCAD0();

  sub_23D8DD3B0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void (*sub_23D8B4868(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 1) + 64));
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for AXRTextFormatterSheet(0);
  sub_23D83C67C(v1 + *(v9 + 56), v8, &qword_27E2EFE90, &unk_23D8E52C0);
  MEMORY[0x23EEF05A0](v6);
  return sub_23D8B49A8;
}

void sub_23D8B49A8(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_23D83C67C(*(a1 + 8), v3, &qword_27E2ED260, &qword_23D8E08F8);
    sub_23D8DE460();
    sub_23D83C6E4(v2, &qword_27E2EFE90, &unk_23D8E52C0);
    v5 = v4;
    v6 = &qword_27E2ED260;
    v7 = &qword_23D8E08F8;
  }

  else
  {
    sub_23D8DE460();
    v6 = &qword_27E2EFE90;
    v7 = &unk_23D8E52C0;
    v5 = v2;
  }

  sub_23D83C6E4(v5, v6, v7);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_23D8B4A80()
{
  v1 = sub_23D8DC510();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48)))
  {
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC970();
    sub_23D8DC9D0();

    (*(v2 + 8))(v4, v1);
    sub_23D8DC7E0();

    v5 = sub_23D8DEB80();
    v6 = sub_23D8DEB70();

    return v6 & 1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8B4C28()
{
  v0 = sub_23D8DC590();
  v68 = *(v0 - 8);
  v69 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v67 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v66 = &v65 - v3;
  v73 = sub_23D8DC610();
  v70 = *(v73 - 8);
  v4 = MEMORY[0x28223BE20](v73);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v65 - v6;
  v7 = sub_23D8DCA70();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v75 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v65 - v10;
  v11 = sub_23D8DCF90();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v65 - v19;
  v21 = sub_23D8DC140();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AXRTextFormatterSheet(0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
  MEMORY[0x23EEF05A0](v25);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_23D83C6E4(v20, &qword_27E2ED260, &qword_23D8E08F8);
    return 0;
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v27 = sub_23D8DC000();
    v28 = *(v12 + 8);
    v28(v15, v11);
    v28(v17, v11);
    if (v27 & 1) != 0 || (sub_23D8DC0C0(), v30 = v29, , , (v30) || (sub_23D8DC0D0(), v32 = v31, , , (v32) || (v34 = v74, v33 = v75, v35 = sub_23D8DC0F0(), v36 = *(v76 + 8), v37 = v33, v38 = v77, v36(v37, v77), v36(v34, v38), (v35) || (v40 = v71, v39 = v72, v41 = sub_23D8DC020(), v42 = *(v70 + 8), v43 = v73, v42(v39, v73), v42(v40, v43), (v41) || (v45 = v71, v44 = v72, v46 = sub_23D8DC040(), v47 = v73, v42(v44, v73), v42(v45, v47), (v46) || (v49 = v71, v48 = v72, v50 = sub_23D8DBFD0(), v51 = v73, v42(v48, v73), v42(v49, v51), (v50) || (v53 = v71, v52 = v72, v54 = sub_23D8DC060(), v55 = v73, v42(v52, v73), v42(v53, v55), (v54) || (sub_23D8DC110() & 0x10000) != 0 || (sub_23D8DC0A0() & 0x10000) != 0 || (sub_23D8DC070(), v57 = v56, , , (v57) || (v59 = v66, v58 = v67, v60 = sub_23D8DC090(), v61 = *(v68 + 8), v62 = v58, v63 = v69, v61(v62, v69), v61(v59, v63), (v60) || (sub_23D8DC0B0() & 0x10000) != 0 || (sub_23D8DC100() & 0x10000) != 0)
    {
      (*(v22 + 8))(v24, v21);
      return 1;
    }

    else
    {
      sub_23D8DC130();
      v64 = v78;
      (*(v22 + 8))(v24, v21);

      return v64;
    }
  }
}

uint64_t sub_23D8B5340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for AXRTextFormatterSheet(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v21 = v6;
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFEC8, &qword_23D8E5350);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFED0, &unk_23D8E5358);
  sub_23D835AD0(&qword_27E2EFED8, &qword_27E2EFED0, &unk_23D8E5358, MEMORY[0x277CE14C0]);
  sub_23D8DDBC0();
  sub_23D8CB4EC(a1, v7, type metadata accessor for AXRTextFormatterSheet);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_23D8CBE8C(v7, v12 + v11, type metadata accessor for AXRTextFormatterSheet);
  v13 = &v10[*(v8 + 36)];
  *v13 = sub_23D8C7D48;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v14 = (a1 + *(v4 + 40));
  v15 = *v14;
  v16 = *(v14 + 1);
  v25 = v15;
  v26 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  v25 = v24;
  sub_23D8C7D74();
  v17 = v22;
  sub_23D8DE060();
  sub_23D83C6E4(v10, &qword_27E2EFEC8, &qword_23D8E5350);
  sub_23D8CB4EC(a1, v7, type metadata accessor for AXRTextFormatterSheet);
  v18 = swift_allocObject();
  sub_23D8CBE8C(v7, v18 + v11, type metadata accessor for AXRTextFormatterSheet);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFEF8, &qword_23D8E5370);
  v20 = (v17 + *(result + 36));
  *v20 = 0;
  v20[1] = 0;
  v20[2] = sub_23D8C82FC;
  v20[3] = v18;
  return result;
}

uint64_t sub_23D8B565C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v345 = a2;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFA0, &qword_23D8E53C8);
  v346 = *(v385 - 8);
  v3 = MEMORY[0x28223BE20](v385);
  v384 = v305 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v378 = v305 - v5;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFA8, &qword_23D8E53D0);
  v389 = *(v383 - 8);
  v6 = MEMORY[0x28223BE20](v383);
  v382 = v305 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v354 = v305 - v8;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFB0, &qword_23D8E53D8);
  v388 = *(v381 - 8);
  v9 = MEMORY[0x28223BE20](v381);
  v380 = v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v376 = v305 - v11;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFB8, &qword_23D8E53E0);
  v387 = *(v379 - 8);
  v12 = MEMORY[0x28223BE20](v379);
  v377 = v305 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v375 = v305 - v14;
  v329 = sub_23D8DCEB0();
  v327 = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v324 = v305 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_23D8DD3F0();
  v323 = *(v326 - 8);
  MEMORY[0x28223BE20](v326);
  v320 = v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFC0, &qword_23D8E53E8);
  v325 = *(v328 - 8);
  v17 = MEMORY[0x28223BE20](v328);
  v321 = v305 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v322 = v305 - v19;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFC8, &qword_23D8E53F0);
  v311 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v309 = v305 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFD0, &qword_23D8E53F8);
  MEMORY[0x28223BE20](v21 - 8);
  v310 = v305 - v22;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFD8, &qword_23D8E5400);
  MEMORY[0x28223BE20](v308);
  v307 = v305 - v23;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFE0, &qword_23D8E5408);
  MEMORY[0x28223BE20](v306);
  v314 = v305 - v24;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFE8, &qword_23D8E5410);
  MEMORY[0x28223BE20](v313);
  v318 = v305 - v25;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFF0, &qword_23D8E5418);
  MEMORY[0x28223BE20](v315);
  v319 = v305 - v26;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFFF8, &unk_23D8E5420);
  v343 = *(v344 - 8);
  v27 = MEMORY[0x28223BE20](v344);
  v317 = v305 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v316 = v305 - v29;
  v342 = sub_23D8DD850();
  v30 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v305[0] = v305 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  MEMORY[0x28223BE20](v339);
  v341 = v305 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v330 = v305 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v348 = v305 - v37;
  MEMORY[0x28223BE20](v36);
  v349 = v305 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0000, &qword_23D8E5430);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v374 = v305 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v373 = v305 - v42;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0008, &qword_23D8E5438);
  v43 = *(v362 - 8);
  v44 = MEMORY[0x28223BE20](v362);
  v338 = v305 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v335 = v305 - v47;
  MEMORY[0x28223BE20](v46);
  v332 = v305 - v48;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0010, &qword_23D8E5440);
  v49 = MEMORY[0x28223BE20](v360);
  v337 = v305 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v334 = v305 - v52;
  MEMORY[0x28223BE20](v51);
  v331 = v305 - v53;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0018, &qword_23D8E5448);
  v54 = MEMORY[0x28223BE20](v359);
  v372 = v305 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v371 = v305 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v370 = v305 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v336 = v305 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v367 = v305 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v333 = v305 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v366 = v305 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v70 = v305 - v69;
  MEMORY[0x28223BE20](v68);
  v365 = v305 - v71;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0020, &qword_23D8E5450);
  v386 = *(v369 - 8);
  v72 = MEMORY[0x28223BE20](v369);
  v368 = v305 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v364 = v305 - v74;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0028, &qword_23D8E5458);
  v352 = *(v353 - 8);
  v75 = MEMORY[0x28223BE20](v353);
  v351 = v305 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v363 = v305 - v77;
  v78 = 0x800000023D8E6BB0;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v361 = v43;
  v79 = qword_27E2F3C80;
  v80 = 0xD000000000000011;
  v340 = v30;
  v305[1] = 0xD000000000000011;
  if (qword_27E2F3C80)
  {
    v81 = qword_27E2F3C80;
    v82 = sub_23D8DE830();
    v83 = sub_23D8DE830();
    v84 = [v81 localizedStringForKey:v82 value:0 table:v83];

    v80 = sub_23D8DE870();
    v78 = v85;
  }

  v399 = v80;
  v400 = v78;
  v390 = sub_23D83CB18();
  v399 = sub_23D8DDCB0();
  v400 = v86;
  LOBYTE(v401) = v87 & 1;
  v402 = v88;
  MEMORY[0x28223BE20](v399);
  v391 = a1;
  v305[-2] = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0030, &qword_23D8E5460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0038, &qword_23D8E5468);
  v90 = sub_23D8C9E50();
  sub_23D835AD0(&qword_27E2F0050, &qword_27E2F0038, &qword_23D8E5468, MEMORY[0x277CE14C0]);
  v358 = v89;
  v355 = v90;
  sub_23D8DE510();
  v91 = 0x800000023D8E6BD0;
  v92 = 0xD000000000000010;
  if (v79)
  {
    v93 = v79;
    v94 = sub_23D8DE830();
    v95 = sub_23D8DE830();
    v96 = [v93 localizedStringForKey:v94 value:0 table:v95];

    v92 = sub_23D8DE870();
    v91 = v97;
  }

  v98 = 0xEF656E696C2E6E6FLL;
  v399 = v92;
  v400 = v91;
  v399 = sub_23D8DDCB0();
  v400 = v99;
  LOBYTE(v401) = v100 & 1;
  v402 = v101;
  MEMORY[0x28223BE20](v399);
  v305[-2] = v391;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0058, &qword_23D8E5470);
  sub_23D835AD0(&qword_27E2F0060, &qword_27E2F0058, &qword_23D8E5470, MEMORY[0x277CE14C0]);
  sub_23D8DE510();
  if (v79)
  {
    v102 = v79;
    v103 = sub_23D8DE830();
    v104 = sub_23D8DE830();
    v105 = [v102 localizedStringForKey:v103 value:0 table:v104];

    v106 = sub_23D8DE870();
    v98 = v107;
  }

  else
  {
    v106 = 0x6974706F2E727861;
  }

  v108 = v79;
  v109 = 0xEF64726F772E6E6FLL;
  v399 = v106;
  v400 = v98;
  v110 = sub_23D8DDCB0();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = sub_23D8DDA10();
  v118 = sub_23D8DCC20();
  v410 = v114 & 1;
  v409 = 0;
  v399 = v110;
  v400 = v112;
  LOBYTE(v401) = v114 & 1;
  v402 = v116;
  v403 = v117;
  v404 = v119;
  v405 = v120;
  v406 = v121;
  v407 = v122;
  v408 = 0;
  MEMORY[0x28223BE20](v118);
  v305[-2] = v391;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0068, &qword_23D8E5478);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0070, &unk_23D8E5480);
  v125 = sub_23D8C9F40();
  sub_23D8C9FCC();
  v126 = v332;
  v357 = v123;
  v350 = v124;
  v356 = v125;
  sub_23D8DE510();
  v399 = sub_23D8DE230();
  v127 = sub_23D8DE440();
  v128 = *(v361 + 4);
  v129 = v331;
  v361 += 32;
  v128(v331, v126, v362);
  *(v129 + *(v360 + 36)) = v127;
  sub_23D83C744(v129, v70, &qword_27E2F0010, &qword_23D8E5440);
  v130 = &v70[*(v359 + 36)];
  v130[32] = 0;
  *v130 = 0u;
  *(v130 + 1) = 0u;
  sub_23D83C744(v70, v365, &qword_27E2F0018, &qword_23D8E5448);
  if (v108)
  {
    v131 = v108;
    v132 = sub_23D8DE830();
    v133 = sub_23D8DE830();
    v134 = [v131 localizedStringForKey:v132 value:0 table:v133];

    v135 = sub_23D8DE870();
    v109 = v136;
  }

  else
  {
    v135 = 0x6974706F2E727861;
  }

  v137 = 0xEF726168632E6E6FLL;
  v399 = v135;
  v400 = v109;
  v138 = sub_23D8DDCB0();
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v145 = sub_23D8DDA10();
  v146 = sub_23D8DCC20();
  v398 = v142 & 1;
  v397 = 0;
  v399 = v138;
  v400 = v140;
  LOBYTE(v401) = v142 & 1;
  v402 = v144;
  v403 = v145;
  v404 = v147;
  v405 = v148;
  v406 = v149;
  v407 = v150;
  v408 = 0;
  MEMORY[0x28223BE20](v146);
  v305[-2] = v391;
  v151 = v335;
  sub_23D8DE510();
  v399 = sub_23D8DE230();
  v152 = sub_23D8DE440();
  v153 = v334;
  v128(v334, v151, v362);
  *(v153 + *(v360 + 36)) = v152;
  v154 = v333;
  sub_23D83C744(v153, v333, &qword_27E2F0010, &qword_23D8E5440);
  v155 = v154 + *(v359 + 36);
  *(v155 + 32) = 0;
  *v155 = 0u;
  *(v155 + 16) = 0u;
  sub_23D83C744(v154, v366, &qword_27E2F0018, &qword_23D8E5448);
  v347 = v108;
  if (v108)
  {
    v156 = sub_23D8DE830();
    v157 = sub_23D8DE830();
    v158 = [v108 localizedStringForKey:v156 value:0 table:v157];

    v159 = sub_23D8DE870();
    v137 = v160;

    v161 = v348;
  }

  else
  {
    v161 = v348;
    v159 = 0x6974706F2E727861;
  }

  v399 = v159;
  v400 = v137;
  v162 = sub_23D8DDCB0();
  v164 = v163;
  v166 = v165;
  v168 = v167;
  v169 = sub_23D8DDA10();
  v170 = sub_23D8DCC20();
  v396 = v166 & 1;
  v395 = 0;
  v399 = v162;
  v400 = v164;
  LOBYTE(v401) = v166 & 1;
  v402 = v168;
  v403 = v169;
  v404 = v171;
  v405 = v172;
  v406 = v173;
  v407 = v174;
  v408 = 0;
  MEMORY[0x28223BE20](v170);
  v175 = v391;
  v305[-2] = v391;
  v176 = v338;
  sub_23D8DE510();
  v399 = sub_23D8DE230();
  v177 = sub_23D8DE440();
  v178 = v337;
  v128(v337, v176, v362);
  *(v178 + *(v360 + 36)) = v177;
  v179 = v336;
  sub_23D83C744(v178, v336, &qword_27E2F0010, &qword_23D8E5440);
  v180 = v179 + *(v359 + 36);
  *(v180 + 32) = 0;
  *v180 = 0u;
  *(v180 + 16) = 0u;
  sub_23D83C744(v179, v367, &qword_27E2F0018, &qword_23D8E5448);
  v362 = type metadata accessor for AXRTextFormatterSheet(0);
  v181 = &v175[*(v362 + 28)];
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8);
  v183 = v349;
  v360 = v182;
  v361 = v181;
  sub_23D8DE320();
  v184 = v340;
  v185 = v342;
  (*(v340 + 104))(v161, *MEMORY[0x277CE0560], v342);
  (*(v184 + 56))(v161, 0, 1, v185);
  v186 = *(v339 + 48);
  v187 = v341;
  sub_23D83C67C(v183, v341, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v161, v187 + v186, &qword_27E2EE9E0, &qword_23D8E26D0);
  v188 = *(v184 + 48);
  if (v188(v187, 1, v185) == 1)
  {
    sub_23D83C6E4(v161, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v183, &qword_27E2EE9E0, &qword_23D8E26D0);
    v189 = v188(v187 + v186, 1, v185);
    v190 = v347;
    if (v189 == 1)
    {
      sub_23D83C6E4(v187, &qword_27E2EE9E0, &qword_23D8E26D0);
      goto LABEL_26;
    }
  }

  else
  {
    v191 = v330;
    sub_23D83C67C(v187, v330, &qword_27E2EE9E0, &qword_23D8E26D0);
    v192 = v188(v187 + v186, 1, v185);
    v190 = v347;
    if (v192 != 1)
    {
      v198 = v305[0];
      (*(v184 + 32))(v305[0], v187 + v186, v185);
      sub_23D8C67FC(&qword_27E2EEA10, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v199 = sub_23D8DE820();
      v200 = *(v184 + 8);
      v200(v198, v185);
      sub_23D83C6E4(v348, &qword_27E2EE9E0, &qword_23D8E26D0);
      sub_23D83C6E4(v349, &qword_27E2EE9E0, &qword_23D8E26D0);
      v200(v191, v185);
      sub_23D83C6E4(v187, &qword_27E2EE9E0, &qword_23D8E26D0);
      if (v199)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    sub_23D83C6E4(v348, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v349, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v184 + 8))(v191, v185);
  }

  sub_23D83C6E4(v187, &qword_27E2EDDB8, &qword_23D8E26E0);
LABEL_22:
  v193 = [objc_opt_self() currentDevice];
  v194 = [v193 userInterfaceIdiom];

  if (v194 || (v195 = &v391[*(v362 + 32)], v196 = *v195, v197 = *(v195 + 1), LOBYTE(v399) = v196, v400 = v197, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0), sub_23D8DE320(), v394 != 1))
  {
    (*(v343 + 56))(v373, 1, 1, v344);
    goto LABEL_29;
  }

LABEL_26:
  v201 = 0x800000023D8E6C30;
  v202 = 0xD000000000000012;
  if (v190)
  {
    v203 = v190;
    v204 = sub_23D8DE830();
    v205 = sub_23D8DE830();
    v206 = [v203 localizedStringForKey:v204 value:0 table:v205];

    v202 = sub_23D8DE870();
    v201 = v207;
  }

  v399 = v202;
  v400 = v201;
  v208 = sub_23D8DDCB0();
  v210 = v209;
  v212 = v211;
  v214 = v213;
  v215 = sub_23D8DDA10();
  v216 = sub_23D8DCC20();
  LOBYTE(v394) = v212 & 1;
  v393 = 0;
  v399 = v208;
  v400 = v210;
  LOBYTE(v401) = v212 & 1;
  v402 = v214;
  v403 = v215;
  v404 = v217;
  v405 = v218;
  v406 = v219;
  v407 = v220;
  v408 = 0;
  MEMORY[0x28223BE20](v216);
  v221 = v391;
  v305[-2] = v391;
  type metadata accessor for AXRSegmentedPicker(0);
  sub_23D8C67FC(&qword_27E2F0088, type metadata accessor for AXRSegmentedPicker, &protocol conformance descriptor for AXRSegmentedPicker);
  v222 = v309;
  sub_23D8DE510();
  sub_23D8CA530();
  v223 = v310;
  v224 = v312;
  sub_23D8DDEE0();
  (*(v311 + 8))(v222, v224);
  v399 = sub_23D8DE230();
  v225 = sub_23D8DE440();
  v226 = v307;
  sub_23D83C744(v223, v307, &qword_27E2EFFD0, &qword_23D8E53F8);
  *(v226 + *(v308 + 36)) = v225;
  v227 = v314;
  sub_23D83C744(v226, v314, &qword_27E2EFFD8, &qword_23D8E5400);
  v228 = v227 + *(v306 + 36);
  *(v228 + 32) = 0;
  *v228 = 0u;
  *(v228 + 16) = 0u;
  v229 = v320;
  sub_23D8DD3E0();
  v230 = v324;
  sub_23D8DCEA0();
  v231 = sub_23D8C67FC(&qword_27E2F0118, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v232 = sub_23D8C67FC(&qword_27E2F0120, MEMORY[0x277CDF858], MEMORY[0x277CDF850]);
  v233 = v322;
  v234 = v326;
  v235 = v329;
  sub_23D8DCC90();
  (*(v327 + 8))(v230, v235);
  (*(v323 + 8))(v229, v234);
  v236 = v325;
  v237 = v328;
  (*(v325 + 16))(v321, v233, v328);
  v399 = v234;
  v400 = v235;
  v401 = v231;
  v402 = v232;
  swift_getOpaqueTypeConformance2();
  v238 = sub_23D8DCDD0();
  (*(v236 + 8))(v233, v237);
  v239 = v318;
  sub_23D83C744(v227, v318, &qword_27E2EFFE0, &qword_23D8E5408);
  *(v239 + *(v313 + 36)) = v238;
  v240 = sub_23D8DE670();
  v241 = &v221[*(v362 + 32)];
  v242 = *v241;
  v243 = *(v241 + 1);
  LOBYTE(v399) = v242;
  v400 = v243;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  LOBYTE(v238) = v392;
  v244 = v239;
  v245 = v319;
  sub_23D83C744(v244, v319, &qword_27E2EFFE8, &qword_23D8E5410);
  v246 = v245 + *(v315 + 36);
  *v246 = v240;
  *(v246 + 8) = v238;
  v247 = sub_23D8DE670();
  v248 = v344;
  v249 = v317;
  v250 = &v317[*(v344 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0128, &qword_23D8E54E8);
  sub_23D8DE320();
  *v250 = v247;
  sub_23D83C744(v245, v249, &qword_27E2EFFF0, &qword_23D8E5418);
  v251 = v249;
  v252 = v316;
  sub_23D83C744(v251, v316, &qword_27E2EFFF8, &unk_23D8E5420);
  v253 = v252;
  v254 = v373;
  sub_23D83C744(v253, v373, &qword_27E2EFFF8, &unk_23D8E5420);
  (*(v343 + 56))(v254, 0, 1, v248);
  v190 = v347;
LABEL_29:
  v255 = 0x800000023D8E6BF0;
  if (v190)
  {
    v256 = v190;
    v257 = sub_23D8DE830();
    v258 = sub_23D8DE830();
    v259 = [v256 localizedStringForKey:v257 value:0 table:v258];

    v260 = sub_23D8DE870();
    v255 = v261;
  }

  else
  {
    v260 = 0xD000000000000016;
  }

  v399 = v260;
  v400 = v255;
  v399 = sub_23D8DDCB0();
  v400 = v262;
  LOBYTE(v401) = v263 & 1;
  v402 = v264;
  MEMORY[0x28223BE20](v399);
  v305[-2] = v391;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0090, &qword_23D8E5490);
  sub_23D835AD0(&qword_27E2F0098, &qword_27E2F0090, &qword_23D8E5490, MEMORY[0x277CE14C0]);
  sub_23D8DE510();
  v265 = 0x800000023D8E6C10;
  v266 = 0xD000000000000014;
  if (v190)
  {
    v267 = v190;
    v268 = sub_23D8DE830();
    v269 = sub_23D8DE830();
    v270 = [v267 localizedStringForKey:v268 value:0 table:v269];

    v266 = sub_23D8DE870();
    v265 = v271;
  }

  v272 = 0xEA0000000000656DLL;
  v273 = 0x616E65722E727861;
  v399 = v266;
  v400 = v265;
  v399 = sub_23D8DDCB0();
  v400 = v274;
  LOBYTE(v401) = v275 & 1;
  v402 = v276;
  MEMORY[0x28223BE20](v399);
  v305[-2] = v391;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F00A0, &qword_23D8E5498);
  sub_23D835AD0(&qword_27E2F00A8, &qword_27E2F00A0, &qword_23D8E5498, MEMORY[0x277CE14C0]);
  sub_23D8DE510();
  if (v190)
  {
    v277 = sub_23D8DE830();
    v278 = sub_23D8DE830();
    v279 = [v190 localizedStringForKey:v277 value:0 table:v278];

    v273 = sub_23D8DE870();
    v272 = v280;
  }

  v399 = v273;
  v400 = v272;
  v399 = sub_23D8DDCB0();
  v400 = v281;
  LOBYTE(v401) = v282 & 1;
  v402 = v283;
  MEMORY[0x28223BE20](v399);
  v284 = v391;
  v305[-2] = v391;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F00B0, &qword_23D8E54A0);
  sub_23D8CA134();
  v285 = v354;
  v286 = sub_23D8DE510();
  MEMORY[0x28223BE20](v286);
  v305[-2] = v284;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F00D8, &qword_23D8E54C0);
  sub_23D8CA388();
  sub_23D8DE520();
  v359 = *(v352 + 16);
  v287 = v351;
  v288 = v353;
  (v359)(v351, v363, v353);
  v361 = *(v386 + 16);
  (v361)(v368, v364, v369);
  sub_23D83C67C(v365, v370, &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C67C(v366, v371, &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C67C(v367, v372, &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C67C(v373, v374, &qword_27E2F0000, &qword_23D8E5430);
  v391 = *(v387 + 16);
  (v391)(v377, v375, v379);
  v390 = *(v388 + 16);
  v390(v380, v376, v381);
  v362 = *(v389 + 16);
  (v362)(v382, v285, v383);
  v289 = v346;
  v360 = *(v346 + 16);
  (v360)(v384, v378, v385);
  v290 = v345;
  (v359)(v345, v287, v288);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0108, &qword_23D8E54E0);
  (v361)(v290 + v291[12], v368, v369);
  sub_23D83C67C(v370, v290 + v291[16], &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C67C(v371, v290 + v291[20], &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C67C(v372, v290 + v291[24], &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C67C(v374, v290 + v291[28], &qword_27E2F0000, &qword_23D8E5430);
  v292 = v379;
  (v391)(v290 + v291[32], v377, v379);
  v293 = v381;
  v390((v290 + v291[36]), v380, v381);
  v294 = v383;
  (v362)(v290 + v291[40], v382, v383);
  v295 = v385;
  (v360)(v290 + v291[44], v384, v385);
  v296 = *(v289 + 8);
  v296(v378, v295);
  v297 = *(v389 + 8);
  v389 += 8;
  v297(v354, v294);
  v298 = *(v388 + 8);
  v388 += 8;
  v298(v376, v293);
  v299 = *(v387 + 8);
  v387 += 8;
  v299(v375, v292);
  sub_23D83C6E4(v373, &qword_27E2F0000, &qword_23D8E5430);
  sub_23D83C6E4(v367, &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C6E4(v366, &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C6E4(v365, &qword_27E2F0018, &qword_23D8E5448);
  v300 = *(v386 + 8);
  v386 += 8;
  v301 = v369;
  v300(v364, v369);
  v302 = *(v352 + 8);
  v303 = v353;
  v302(v363, v353);
  v296(v384, v385);
  v297(v382, v383);
  v298(v380, v381);
  v299(v377, v379);
  sub_23D83C6E4(v374, &qword_27E2F0000, &qword_23D8E5430);
  sub_23D83C6E4(v372, &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C6E4(v371, &qword_27E2F0018, &qword_23D8E5448);
  sub_23D83C6E4(v370, &qword_27E2F0018, &qword_23D8E5448);
  v300(v368, v301);
  return (v302)(v351, v303);
}

uint64_t sub_23D8B84A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0170, &qword_23D8E5560);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0178, &qword_23D8E5568);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v25 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v24 = &v23 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v29 = 1;
  v28 = a1;
  type metadata accessor for AXRColorDisplayRowView(0);
  sub_23D8C67FC(&qword_27E2F0198, type metadata accessor for AXRColorDisplayRowView, &unk_23D8E5800);
  sub_23D83CAC4();
  sub_23D8DCEC0();
  sub_23D835AD0(&qword_27E2F01A0, &qword_27E2F0170, &qword_23D8E5560, MEMORY[0x277CDD938]);
  sub_23D8DDEE0();
  v17 = *(v4 + 8);
  v17(v6, v3);
  v29 = 2;
  v27 = v23;
  sub_23D8DCEC0();
  sub_23D8DDEE0();
  v17(v6, v3);
  v18 = v24;
  sub_23D83C67C(v16, v24, &qword_27E2F0178, &qword_23D8E5568);
  v19 = v25;
  sub_23D83C67C(v14, v25, &qword_27E2F0178, &qword_23D8E5568);
  v20 = v26;
  sub_23D83C67C(v18, v26, &qword_27E2F0178, &qword_23D8E5568);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02D8, &qword_23D8E5738);
  sub_23D83C67C(v19, v20 + *(v21 + 48), &qword_27E2F0178, &qword_23D8E5568);
  sub_23D83C6E4(v14, &qword_27E2F0178, &qword_23D8E5568);
  sub_23D83C6E4(v16, &qword_27E2F0178, &qword_23D8E5568);
  sub_23D83C6E4(v19, &qword_27E2F0178, &qword_23D8E5568);
  return sub_23D83C6E4(v18, &qword_27E2F0178, &qword_23D8E5568);
}

uint64_t sub_23D8B8884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D8DC510();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v8 = 0xED0000726F6C6F43;
  v9 = 0x747865742E727861;
  if (qword_27E2F3C80)
  {
    v10 = qword_27E2F3C80;
    v11 = sub_23D8DE830();
    v12 = sub_23D8DE830();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v9 = sub_23D8DE870();
    v8 = v14;
  }

  if (*(a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48)))
  {

    sub_23D8DC970();
    sub_23D8DC9D0();

    (*(v5 + 8))(v7, v4);
    v15 = sub_23D8DC810();

    if (!v15)
    {
      v15 = sub_23D8DE220();
    }

    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v17 = type metadata accessor for AXRColorDisplayRowView(0);
    *(a2 + v17[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    result = swift_storeEnumTagMultiPayload();
    v19 = (a2 + v17[6]);
    *v19 = v9;
    v19[1] = v8;
    *(a2 + v17[7]) = v15;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8B8B80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D8DC510();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0x800000023D8E5FA0;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v9 = 0xD000000000000013;
  if (qword_27E2F3C80)
  {
    v10 = qword_27E2F3C80;
    v11 = sub_23D8DE830();
    v12 = sub_23D8DE830();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v9 = sub_23D8DE870();
    v8 = v14;
  }

  if (*(a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48)))
  {

    sub_23D8DC970();
    sub_23D8DC9D0();

    (*(v5 + 8))(v7, v4);
    v15 = sub_23D8DC650();

    if (!v15)
    {
      v15 = sub_23D8DE220();
    }

    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v17 = type metadata accessor for AXRColorDisplayRowView(0);
    *(a2 + v17[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    result = swift_storeEnumTagMultiPayload();
    v19 = (a2 + v17[6]);
    *v19 = v9;
    v19[1] = v8;
    *(a2 + v17[7]) = v15;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8B8E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0188, &qword_23D8E5578);
  v157 = *(v159 - 8);
  v3 = MEMORY[0x28223BE20](v159);
  v165 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v163 = &v135 - v6;
  MEMORY[0x28223BE20](v5);
  v136 = &v135 - v7;
  v156 = sub_23D8DCA70();
  v155 = *(v156 - 8);
  v8 = MEMORY[0x28223BE20](v156);
  v153 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v154 = &v135 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0228, &qword_23D8E5660);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v162 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v168 = &v135 - v14;
  v152 = sub_23D8DD8D0();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0230, &qword_23D8E5668);
  MEMORY[0x28223BE20](v16 - 8);
  v137 = &v135 - v17;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0238, &qword_23D8E5670);
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v139 = &v135 - v18;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0240, &qword_23D8E5678);
  MEMORY[0x28223BE20](v145);
  v141 = &v135 - v19;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0248, &qword_23D8E5680);
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v143 = &v135 - v20;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0250, &qword_23D8E5688);
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v144 = &v135 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0258, &qword_23D8E5690);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v161 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v167 = &v135 - v25;
  v138 = type metadata accessor for AXRTextFormatterSheet(0);
  v26 = *(v138 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v138);
  v166 = type metadata accessor for AXRListDynamicSizeTextSlider(0) - 8;
  v28 = MEMORY[0x28223BE20](v166);
  v160 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v135 - v30;
  sub_23D8CB4EC(a1, &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v32 = sub_23D8DE9D0();
  v33 = sub_23D8DE9C0();
  v34 = *(v26 + 80);
  v35 = (v34 + 32) & ~v34;
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  *(v36 + 16) = v33;
  *(v36 + 24) = v37;
  v38 = v37;
  sub_23D8CBE8C(&v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for AXRTextFormatterSheet);
  v174 = a1;
  sub_23D8CB4EC(a1, &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v170 = v32;
  v39 = sub_23D8DE9C0();
  v172 = v34;
  v173 = v27;
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v38;
  v171 = v35;
  v169 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8CBE8C(v169, v40 + v35, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DCF90();
  sub_23D8DE480();
  v41 = *(v166 + 28);
  v158 = v31;
  v42 = &v31[v41];
  v182 = 0;
  sub_23D8DE310();
  v43 = v176;
  *v42 = v175;
  *(v42 + 1) = v43;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v44 = 0xED0000656D616E2ELL;
  v45 = 0x746E6F662E727861;
  v166 = qword_27E2F3C80;
  if (qword_27E2F3C80)
  {
    v46 = qword_27E2F3C80;
    v47 = sub_23D8DE830();
    v48 = sub_23D8DE830();
    v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

    v45 = sub_23D8DE870();
    v44 = v50;
  }

  v182 = v45;
  v183 = v44;
  v51 = v174;
  v52 = v169;
  sub_23D8CB4EC(v174, v169, type metadata accessor for AXRTextFormatterSheet);
  v53 = sub_23D8DE9C0();
  v54 = v171;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v56 = MEMORY[0x277D85700];
  *(v55 + 24) = MEMORY[0x277D85700];
  sub_23D8CBE8C(v52, v55 + v54, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8CB4EC(v51, v52, type metadata accessor for AXRTextFormatterSheet);
  v57 = sub_23D8DE9C0();
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  *(v58 + 24) = v56;
  sub_23D8CBE8C(v52, v58 + v54, type metadata accessor for AXRTextFormatterSheet);
  v59 = v156;
  v60 = sub_23D8DE480();
  MEMORY[0x28223BE20](v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0260, &qword_23D8E5698);
  sub_23D8C67FC(&qword_27E2F0268, MEMORY[0x277CE7400], MEMORY[0x277CE7408]);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0270, &qword_23D8E56A0);
  v62 = sub_23D8CB2EC(&qword_27E2F0278, &qword_27E2F0270, &qword_23D8E56A0);
  v175 = v61;
  v176 = MEMORY[0x277CE0F78];
  v177 = v62;
  v178 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  sub_23D83CB18();
  v63 = v139;
  sub_23D8DE3C0();
  v64 = v174;
  if (sub_23D8B4A80())
  {
    v65 = sub_23D8DE220();
  }

  else
  {
    v65 = sub_23D8DE240();
  }

  v66 = v65;
  v67 = v153;
  KeyPath = swift_getKeyPath();
  v69 = v141;
  (*(v140 + 32))(v141, v63, v142);
  v70 = v145;
  v71 = (v69 + *(v145 + 36));
  *v71 = KeyPath;
  v71[1] = v66;
  v72 = v150;
  sub_23D8DD8C0();
  v73 = sub_23D8CB3B0();
  v74 = MEMORY[0x277CDE370];
  v75 = v143;
  v76 = v152;
  sub_23D8DDD30();
  (*(v151 + 8))(v72, v76);
  sub_23D83C6E4(v69, &qword_27E2F0240, &qword_23D8E5678);
  v175 = v70;
  v176 = v76;
  v177 = v73;
  v178 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = v144;
  v79 = v148;
  sub_23D8DDEF0();
  (*(v146 + 8))(v75, v79);
  v175 = v79;
  v176 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v80 = v149;
  sub_23D8DDEE0();
  (*(v147 + 8))(v78, v80);
  if (!*(v64 + *(v138 + 48)))
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  sub_23D8DC960();

  v81 = v154;
  sub_23D8DC840();

  sub_23D8DCA40();
  sub_23D8C67FC(qword_27E2EF150, MEMORY[0x277CE7400], MEMORY[0x277CE7418]);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v175 == v182 && v176 == v183)
  {
    v82 = *(v155 + 8);
    v82(v67, v59);
    v82(v81, v59);

    v83 = v166;
LABEL_13:
    if (v83)
    {
      v86 = v83;
      v87 = sub_23D8DE830();
      v88 = sub_23D8DE830();
      v89 = [v86 localizedStringForKey:v87 value:0 table:v88];

      v156 = sub_23D8DE870();
      v155 = v90;

      v91 = sub_23D8DE830();
      v92 = sub_23D8DE830();
      v93 = [v86 localizedStringForKey:v91 value:0 table:v92];

      v153 = sub_23D8DE870();
      v154 = v94;
    }

    else
    {
      v154 = 0x800000023D8E6E90;
      v156 = 0xD000000000000013;
      v153 = 0xD00000000000001CLL;
      v155 = 0x800000023D8E6E70;
    }

    v95 = v174;
    v96 = v169;
    sub_23D8CB4EC(v174, v169, type metadata accessor for AXRTextFormatterSheet);
    v97 = sub_23D8DE9C0();
    v98 = v171;
    v99 = swift_allocObject();
    *(v99 + 16) = v97;
    v100 = MEMORY[0x277D85700];
    *(v99 + 24) = MEMORY[0x277D85700];
    sub_23D8CBE8C(v96, v99 + v98, type metadata accessor for AXRTextFormatterSheet);
    sub_23D8CB4EC(v95, v96, type metadata accessor for AXRTextFormatterSheet);
    v101 = sub_23D8DE9C0();
    v102 = swift_allocObject();
    *(v102 + 16) = v101;
    *(v102 + 24) = v100;
    sub_23D8CBE8C(v96, v102 + v98, type metadata accessor for AXRTextFormatterSheet);
    sub_23D8DE480();
    v103 = v175;
    v104 = v176;
    v105 = v177;
    v175 = v156;
    v176 = v155;
    v177 = v153;
    v178 = v154;
    v179 = v103;
    v180 = v104;
    v181 = v105;
    sub_23D8CAE6C();
    v106 = v136;
    sub_23D8DDEE0();

    v107 = v168;
    sub_23D83C744(v106, v168, &qword_27E2F0188, &qword_23D8E5578);
    v108 = 0;
    v83 = v166;
    goto LABEL_18;
  }

  v84 = sub_23D8DED20();
  v85 = *(v155 + 8);
  v85(v67, v59);
  v85(v81, v59);

  v83 = v166;
  if (v84)
  {
    goto LABEL_13;
  }

  v108 = 1;
  v107 = v168;
  v95 = v174;
LABEL_18:
  (*(v157 + 56))(v107, v108, 1, v159);
  if (v83)
  {
    v109 = v83;
    v110 = sub_23D8DE830();
    v111 = sub_23D8DE830();
    v112 = [v109 localizedStringForKey:v110 value:0 table:v111];

    v166 = sub_23D8DE870();
    v174 = v113;
  }

  else
  {
    v174 = 0xE800000000000000;
    v166 = 0x646C6F622E727861;
  }

  v114 = v169;
  sub_23D8CB4EC(v95, v169, type metadata accessor for AXRTextFormatterSheet);
  v115 = sub_23D8DE9C0();
  v116 = v171;
  v117 = swift_allocObject();
  *(v117 + 16) = v115;
  v118 = MEMORY[0x277D85700];
  *(v117 + 24) = MEMORY[0x277D85700];
  sub_23D8CBE8C(v114, v117 + v116, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8CB4EC(v95, v114, type metadata accessor for AXRTextFormatterSheet);
  v119 = sub_23D8DE9C0();
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  *(v120 + 24) = v118;
  sub_23D8CBE8C(v114, v120 + v116, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE480();
  v121 = v175;
  v122 = v176;
  v123 = v177;
  v175 = v166;
  v176 = v174;
  v177 = 0;
  v178 = 0;
  v179 = v121;
  v180 = v122;
  v181 = v123;
  sub_23D8CAE6C();
  v124 = v163;
  sub_23D8DDEE0();

  v125 = v158;
  v126 = v160;
  sub_23D8CB4EC(v158, v160, type metadata accessor for AXRListDynamicSizeTextSlider);
  v127 = v167;
  v128 = v161;
  sub_23D83C67C(v167, v161, &qword_27E2F0258, &qword_23D8E5690);
  v129 = v168;
  v130 = v162;
  sub_23D83C67C(v168, v162, &qword_27E2F0228, &qword_23D8E5660);
  v131 = v165;
  sub_23D83C67C(v124, v165, &qword_27E2F0188, &qword_23D8E5578);
  v132 = v164;
  sub_23D8CB4EC(v126, v164, type metadata accessor for AXRListDynamicSizeTextSlider);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0290, &qword_23D8E56E0);
  sub_23D83C67C(v128, v132 + v133[12], &qword_27E2F0258, &qword_23D8E5690);
  sub_23D83C67C(v130, v132 + v133[16], &qword_27E2F0228, &qword_23D8E5660);
  sub_23D83C67C(v131, v132 + v133[20], &qword_27E2F0188, &qword_23D8E5578);
  sub_23D83C6E4(v124, &qword_27E2F0188, &qword_23D8E5578);
  sub_23D83C6E4(v129, &qword_27E2F0228, &qword_23D8E5660);
  sub_23D83C6E4(v127, &qword_27E2F0258, &qword_23D8E5690);
  sub_23D8CB554(v125, type metadata accessor for AXRListDynamicSizeTextSlider);
  sub_23D83C6E4(v131, &qword_27E2F0188, &qword_23D8E5578);
  sub_23D83C6E4(v130, &qword_27E2F0228, &qword_23D8E5660);
  sub_23D83C6E4(v128, &qword_27E2F0258, &qword_23D8E5690);
  return sub_23D8CB554(v126, type metadata accessor for AXRListDynamicSizeTextSlider);
}

void sub_23D8BA4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02C0, &qword_23D8E5720);
  MEMORY[0x28223BE20](v74);
  v77 = &v67 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02C8, &qword_23D8E5728);
  MEMORY[0x28223BE20](v82);
  v70 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02D0, &qword_23D8E5730);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = &v67 - v14;
  v15 = sub_23D8DC510();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D8DCF90();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v72 = type metadata accessor for AXRTextFormatterSheet(0);
  if (*(a4 + *(v72 + 48)))
  {

    v25 = sub_23D8DC960();

    v26 = *(v20 + 16);
    v73 = v20 + 16;
    v78 = v26;
    v26(v24, v85, v19);
    v84 = v24;
    sub_23D8DC730();

    sub_23D8DC970();
    v83 = v25;
    sub_23D8DC950();

    (*(v16 + 8))(v18, v15);
    v27 = sub_23D8B4868(v87);
    v29 = v28;
    v30 = sub_23D8DC140();
    v31 = *(*(v30 - 8) + 48);
    v32 = v31(v29, 1, v30);
    v81 = v20;
    v79 = v19;
    if (!v32)
    {
      v33 = sub_23D8DBFF0();
      (*(v20 + 24))(v34 + *(v82 + 48), v85, v19);
      v33(v86, 0);
    }

    v27(v87, 0);
    v35 = sub_23D8B4868(v87);
    v37 = v36;
    v38 = v31(v36, 1, v30);
    v39 = v84;
    if (v38)
    {
      v35(v87, 0);
LABEL_16:

      return;
    }

    v67 = v37;
    v68 = v35;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    v41 = v80;
    MEMORY[0x23EEF05A0](v40);
    v42 = 1;
    v43 = v31(v41, 1, v30);
    v44 = v76;
    if (!v43)
    {
      v45 = v69;
      LODWORD(v72) = sub_23D8DC000();
      v46 = *(v82 + 48);
      v47 = *(v82 + 64);
      v48 = *(v81 + 32);
      v49 = v70;
      v50 = v79;
      v48(v70, v39, v79);
      v48((v49 + v46), v45, v50);
      *(v49 + v47) = v72 & 1;
      v51 = v50;
      v41 = v80;
      v78(v44, v49, v51);
      sub_23D83C6E4(v49, &qword_27E2F02C8, &qword_23D8E5728);
      v42 = 0;
    }

    sub_23D83C6E4(v41, &qword_27E2ED260, &qword_23D8E08F8);
    v52 = v81;
    v53 = *(v81 + 56);
    v54 = v79;
    v53(v44, v42, 1, v79);
    v55 = v75;
    v78(v75, v85, v54);
    v53(v55, 0, 1, v54);
    v56 = *(v74 + 48);
    v57 = v77;
    sub_23D83C67C(v44, v77, &qword_27E2F02D0, &qword_23D8E5730);
    sub_23D83C67C(v55, v57 + v56, &qword_27E2F02D0, &qword_23D8E5730);
    v58 = *(v52 + 48);
    if (v58(v57, 1, v54) == 1)
    {
      sub_23D83C6E4(v55, &qword_27E2F02D0, &qword_23D8E5730);
      sub_23D83C6E4(v44, &qword_27E2F02D0, &qword_23D8E5730);
      if (v58(v57 + v56, 1, v54) == 1)
      {
        sub_23D83C6E4(v57, &qword_27E2F02D0, &qword_23D8E5730);
        v59 = 0;
LABEL_15:
        v65 = sub_23D8DBFF0();
        *(v66 + *(v82 + 64)) = v59 & 1;
        v65(v86, 0);
        v68(v87, 0);
        goto LABEL_16;
      }
    }

    else
    {
      v60 = v71;
      sub_23D83C67C(v57, v71, &qword_27E2F02D0, &qword_23D8E5730);
      if (v58(v57 + v56, 1, v54) != 1)
      {
        v61 = v81;
        v62 = v84;
        (*(v81 + 32))(v84, v57 + v56, v54);
        sub_23D8C67FC(&qword_27E2EDD70, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
        v63 = sub_23D8DE820();
        v64 = *(v61 + 8);
        v64(v62, v54);
        sub_23D83C6E4(v55, &qword_27E2F02D0, &qword_23D8E5730);
        sub_23D83C6E4(v44, &qword_27E2F02D0, &qword_23D8E5730);
        v64(v60, v54);
        sub_23D83C6E4(v57, &qword_27E2F02D0, &qword_23D8E5730);
        v59 = v63 ^ 1;
        goto LABEL_15;
      }

      sub_23D83C6E4(v55, &qword_27E2F02D0, &qword_23D8E5730);
      sub_23D83C6E4(v44, &qword_27E2F02D0, &qword_23D8E5730);
      (*(v81 + 8))(v60, v54);
    }

    sub_23D83C6E4(v57, &qword_27E2F02C0, &qword_23D8E5720);
    v59 = 1;
    goto LABEL_15;
  }

  sub_23D8DC9F0();
  sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  sub_23D8DD120();
  __break(1u);
}

void sub_23D8BAEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02A8, &qword_23D8E5708);
  MEMORY[0x28223BE20](v74);
  v77 = &v67 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02B0, &qword_23D8E5710);
  MEMORY[0x28223BE20](v82);
  v70 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02B8, &qword_23D8E5718);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = &v67 - v14;
  v15 = sub_23D8DC510();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D8DCA70();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v72 = type metadata accessor for AXRTextFormatterSheet(0);
  if (*(a4 + *(v72 + 48)))
  {

    v25 = sub_23D8DC960();

    v26 = *(v20 + 16);
    v73 = v20 + 16;
    v78 = v26;
    v26(v24, v85, v19);
    v84 = v24;
    sub_23D8DC850();

    sub_23D8DC970();
    v83 = v25;
    sub_23D8DC950();

    (*(v16 + 8))(v18, v15);
    v27 = sub_23D8B4868(v87);
    v29 = v28;
    v30 = sub_23D8DC140();
    v31 = *(*(v30 - 8) + 48);
    v32 = v31(v29, 1, v30);
    v81 = v20;
    v79 = v19;
    if (!v32)
    {
      v33 = sub_23D8DC0E0();
      (*(v20 + 24))(v34 + *(v82 + 48), v85, v19);
      v33(v86, 0);
    }

    v27(v87, 0);
    v35 = sub_23D8B4868(v87);
    v37 = v36;
    v38 = v31(v36, 1, v30);
    v39 = v84;
    if (v38)
    {
      v35(v87, 0);
LABEL_16:

      return;
    }

    v67 = v37;
    v68 = v35;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    v41 = v80;
    MEMORY[0x23EEF05A0](v40);
    v42 = 1;
    v43 = v31(v41, 1, v30);
    v44 = v76;
    if (!v43)
    {
      v45 = v69;
      LODWORD(v72) = sub_23D8DC0F0();
      v46 = *(v82 + 48);
      v47 = *(v82 + 64);
      v48 = *(v81 + 32);
      v49 = v70;
      v50 = v79;
      v48(v70, v39, v79);
      v48((v49 + v46), v45, v50);
      *(v49 + v47) = v72 & 1;
      v51 = v50;
      v41 = v80;
      v78(v44, v49, v51);
      sub_23D83C6E4(v49, &qword_27E2F02B0, &qword_23D8E5710);
      v42 = 0;
    }

    sub_23D83C6E4(v41, &qword_27E2ED260, &qword_23D8E08F8);
    v52 = v81;
    v53 = *(v81 + 56);
    v54 = v79;
    v53(v44, v42, 1, v79);
    v55 = v75;
    v78(v75, v85, v54);
    v53(v55, 0, 1, v54);
    v56 = *(v74 + 48);
    v57 = v77;
    sub_23D83C67C(v44, v77, &qword_27E2F02B8, &qword_23D8E5718);
    sub_23D83C67C(v55, v57 + v56, &qword_27E2F02B8, &qword_23D8E5718);
    v58 = *(v52 + 48);
    if (v58(v57, 1, v54) == 1)
    {
      sub_23D83C6E4(v55, &qword_27E2F02B8, &qword_23D8E5718);
      sub_23D83C6E4(v44, &qword_27E2F02B8, &qword_23D8E5718);
      if (v58(v57 + v56, 1, v54) == 1)
      {
        sub_23D83C6E4(v57, &qword_27E2F02B8, &qword_23D8E5718);
        v59 = 0;
LABEL_15:
        v65 = sub_23D8DC0E0();
        *(v66 + *(v82 + 64)) = v59 & 1;
        v65(v86, 0);
        v68(v87, 0);
        goto LABEL_16;
      }
    }

    else
    {
      v60 = v71;
      sub_23D83C67C(v57, v71, &qword_27E2F02B8, &qword_23D8E5718);
      if (v58(v57 + v56, 1, v54) != 1)
      {
        v61 = v81;
        v62 = v84;
        (*(v81 + 32))(v84, v57 + v56, v54);
        sub_23D8C67FC(&qword_27E2EFF88, MEMORY[0x277CE7400], MEMORY[0x277CE7410]);
        v63 = sub_23D8DE820();
        v64 = *(v61 + 8);
        v64(v62, v54);
        sub_23D83C6E4(v55, &qword_27E2F02B8, &qword_23D8E5718);
        sub_23D83C6E4(v44, &qword_27E2F02B8, &qword_23D8E5718);
        v64(v60, v54);
        sub_23D83C6E4(v57, &qword_27E2F02B8, &qword_23D8E5718);
        v59 = v63 ^ 1;
        goto LABEL_15;
      }

      sub_23D83C6E4(v55, &qword_27E2F02B8, &qword_23D8E5718);
      sub_23D83C6E4(v44, &qword_27E2F02B8, &qword_23D8E5718);
      (*(v81 + 8))(v60, v54);
    }

    sub_23D83C6E4(v57, &qword_27E2F02A8, &qword_23D8E5708);
    v59 = 1;
    goto LABEL_15;
  }

  sub_23D8DC9F0();
  sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  sub_23D8DD120();
  __break(1u);
}

uint64_t sub_23D8BB880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v16 = sub_23D8DD950();
  v15[0] = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXRTextFormatterSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0270, &qword_23D8E56A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  v17 = sub_23D8DCA00();
  swift_getKeyPath();
  sub_23D8CB4EC(a1, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_23D8CBE8C(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AXRTextFormatterSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0298, &qword_23D8E5700);
  sub_23D835AD0(&qword_27E2F02A0, &qword_27E2F0298, &qword_23D8E5700, MEMORY[0x277D83980]);
  sub_23D8C67FC(&qword_27E2F0268, MEMORY[0x277CE7400], MEMORY[0x277CE7408]);
  sub_23D8DE4C0();
  v17 = sub_23D8DE230();
  sub_23D8DD940();
  sub_23D8CB2EC(&qword_27E2F0278, &qword_27E2F0270, &qword_23D8E56A0);
  sub_23D8DDE60();
  (*(v15[0] + 8))(v4, v16);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23D8BBC08@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23D8DD470();
  MEMORY[0x28223BE20](v3 - 8);
  sub_23D8DD450();
  sub_23D8DD440();
  sub_23D8DCA30();
  sub_23D8DD430();

  sub_23D8DD440();
  sub_23D8DD490();
  v4 = sub_23D8DDC90();
  v6 = v5;
  v8 = v7;
  sub_23D8DCA10();
  v9 = sub_23D8DDC40();
  v11 = v10;
  v13 = v12;

  sub_23D83CB6C(v4, v6, v8 & 1);

  if (sub_23D8B4A80())
  {
    sub_23D8DE220();
  }

  else
  {
    sub_23D8DE240();
  }

  v14 = sub_23D8DDC00();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_23D83CB6C(v9, v11, v13 & 1);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  return result;
}

uint64_t sub_23D8BBDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for AXRTextFormatterSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v18[0] = type metadata accessor for AXRSegmentedPicker(0);
  MEMORY[0x28223BE20](v18[0]);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CE7340];
  v9 = sub_23D8DC620();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_23D8CB4EC(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE9D0();
  v10 = sub_23D8DE9C0();
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  v14 = v13;
  sub_23D8CBE8C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8CB4EC(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v15 = sub_23D8DE9C0();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_23D8CBE8C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v11, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DC610();
  sub_23D8DE480();
  sub_23D8C67FC(&qword_27E2F0088, type metadata accessor for AXRSegmentedPicker, &protocol conformance descriptor for AXRSegmentedPicker);
  sub_23D8DDEE0();
  return sub_23D8CB554(v7, type metadata accessor for AXRSegmentedPicker);
}

void sub_23D8BC0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0130, &qword_23D8E54F0);
  MEMORY[0x28223BE20](v74);
  v77 = &v67 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0138, &qword_23D8E54F8);
  MEMORY[0x28223BE20](v82);
  v70 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0140, &qword_23D8E5500);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = &v67 - v14;
  v15 = sub_23D8DC510();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D8DC610();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v72 = type metadata accessor for AXRTextFormatterSheet(0);
  if (*(a4 + *(v72 + 48)))
  {

    v25 = sub_23D8DC960();

    v26 = *(v20 + 16);
    v73 = v20 + 16;
    v78 = v26;
    v26(v24, v85, v19);
    v84 = v24;
    sub_23D8DC780();

    sub_23D8DC970();
    v83 = v25;
    sub_23D8DC950();

    (*(v16 + 8))(v18, v15);
    v27 = sub_23D8B4868(v87);
    v29 = v28;
    v30 = sub_23D8DC140();
    v31 = *(*(v30 - 8) + 48);
    v32 = v31(v29, 1, v30);
    v81 = v20;
    v79 = v19;
    if (!v32)
    {
      v33 = sub_23D8DC010();
      (*(v20 + 24))(v34 + *(v82 + 48), v85, v19);
      v33(v86, 0);
    }

    v27(v87, 0);
    v35 = sub_23D8B4868(v87);
    v37 = v36;
    v38 = v31(v36, 1, v30);
    v39 = v84;
    if (v38)
    {
      v35(v87, 0);
LABEL_16:

      return;
    }

    v67 = v37;
    v68 = v35;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    v41 = v80;
    MEMORY[0x23EEF05A0](v40);
    v42 = 1;
    v43 = v31(v41, 1, v30);
    v44 = v76;
    if (!v43)
    {
      v45 = v69;
      LODWORD(v72) = sub_23D8DC020();
      v46 = *(v82 + 48);
      v47 = *(v82 + 64);
      v48 = *(v81 + 32);
      v49 = v70;
      v50 = v79;
      v48(v70, v39, v79);
      v48((v49 + v46), v45, v50);
      *(v49 + v47) = v72 & 1;
      v51 = v50;
      v41 = v80;
      v78(v44, v49, v51);
      sub_23D83C6E4(v49, &qword_27E2F0138, &qword_23D8E54F8);
      v42 = 0;
    }

    sub_23D83C6E4(v41, &qword_27E2ED260, &qword_23D8E08F8);
    v52 = v81;
    v53 = *(v81 + 56);
    v54 = v79;
    v53(v44, v42, 1, v79);
    v55 = v75;
    v78(v75, v85, v54);
    v53(v55, 0, 1, v54);
    v56 = *(v74 + 48);
    v57 = v77;
    sub_23D83C67C(v44, v77, &qword_27E2F0140, &qword_23D8E5500);
    sub_23D83C67C(v55, v57 + v56, &qword_27E2F0140, &qword_23D8E5500);
    v58 = *(v52 + 48);
    if (v58(v57, 1, v54) == 1)
    {
      sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
      sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
      if (v58(v57 + v56, 1, v54) == 1)
      {
        sub_23D83C6E4(v57, &qword_27E2F0140, &qword_23D8E5500);
        v59 = 0;
LABEL_15:
        v65 = sub_23D8DC010();
        *(v66 + *(v82 + 64)) = v59 & 1;
        v65(v86, 0);
        v68(v87, 0);
        goto LABEL_16;
      }
    }

    else
    {
      v60 = v71;
      sub_23D83C67C(v57, v71, &qword_27E2F0140, &qword_23D8E5500);
      if (v58(v57 + v56, 1, v54) != 1)
      {
        v61 = v81;
        v62 = v84;
        (*(v81 + 32))(v84, v57 + v56, v54);
        sub_23D8C67FC(&qword_27E2EFF90, MEMORY[0x277CE7328], MEMORY[0x277CE7338]);
        v63 = sub_23D8DE820();
        v64 = *(v61 + 8);
        v64(v62, v54);
        sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
        sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
        v64(v60, v54);
        sub_23D83C6E4(v57, &qword_27E2F0140, &qword_23D8E5500);
        v59 = v63 ^ 1;
        goto LABEL_15;
      }

      sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
      sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
      (*(v81 + 8))(v60, v54);
    }

    sub_23D83C6E4(v57, &qword_27E2F0130, &qword_23D8E54F0);
    v59 = 1;
    goto LABEL_15;
  }

  sub_23D8DC9F0();
  sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  sub_23D8DD120();
  __break(1u);
}

uint64_t sub_23D8BCA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for AXRTextFormatterSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v18[0] = type metadata accessor for AXRSegmentedPicker(0);
  MEMORY[0x28223BE20](v18[0]);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CE7348];
  v9 = sub_23D8DC620();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_23D8CB4EC(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE9D0();
  v10 = sub_23D8DE9C0();
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  v14 = v13;
  sub_23D8CBE8C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8CB4EC(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v15 = sub_23D8DE9C0();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_23D8CBE8C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v11, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DC610();
  sub_23D8DE480();
  sub_23D8C67FC(&qword_27E2F0088, type metadata accessor for AXRSegmentedPicker, &protocol conformance descriptor for AXRSegmentedPicker);
  sub_23D8DDEE0();
  return sub_23D8CB554(v7, type metadata accessor for AXRSegmentedPicker);
}

void sub_23D8BCD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0130, &qword_23D8E54F0);
  MEMORY[0x28223BE20](v74);
  v77 = &v67 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0138, &qword_23D8E54F8);
  MEMORY[0x28223BE20](v82);
  v70 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0140, &qword_23D8E5500);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = &v67 - v14;
  v15 = sub_23D8DC510();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D8DC610();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v72 = type metadata accessor for AXRTextFormatterSheet(0);
  if (*(a4 + *(v72 + 48)))
  {

    v25 = sub_23D8DC960();

    v26 = *(v20 + 16);
    v73 = v20 + 16;
    v78 = v26;
    v26(v24, v85, v19);
    v84 = v24;
    sub_23D8DC7A0();

    sub_23D8DC970();
    v83 = v25;
    sub_23D8DC950();

    (*(v16 + 8))(v18, v15);
    v27 = sub_23D8B4868(v87);
    v29 = v28;
    v30 = sub_23D8DC140();
    v31 = *(*(v30 - 8) + 48);
    v32 = v31(v29, 1, v30);
    v81 = v20;
    v79 = v19;
    if (!v32)
    {
      v33 = sub_23D8DC030();
      (*(v20 + 24))(v34 + *(v82 + 48), v85, v19);
      v33(v86, 0);
    }

    v27(v87, 0);
    v35 = sub_23D8B4868(v87);
    v37 = v36;
    v38 = v31(v36, 1, v30);
    v39 = v84;
    if (v38)
    {
      v35(v87, 0);
LABEL_16:

      return;
    }

    v67 = v37;
    v68 = v35;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    v41 = v80;
    MEMORY[0x23EEF05A0](v40);
    v42 = 1;
    v43 = v31(v41, 1, v30);
    v44 = v76;
    if (!v43)
    {
      v45 = v69;
      LODWORD(v72) = sub_23D8DC040();
      v46 = *(v82 + 48);
      v47 = *(v82 + 64);
      v48 = *(v81 + 32);
      v49 = v70;
      v50 = v79;
      v48(v70, v39, v79);
      v48((v49 + v46), v45, v50);
      *(v49 + v47) = v72 & 1;
      v51 = v50;
      v41 = v80;
      v78(v44, v49, v51);
      sub_23D83C6E4(v49, &qword_27E2F0138, &qword_23D8E54F8);
      v42 = 0;
    }

    sub_23D83C6E4(v41, &qword_27E2ED260, &qword_23D8E08F8);
    v52 = v81;
    v53 = *(v81 + 56);
    v54 = v79;
    v53(v44, v42, 1, v79);
    v55 = v75;
    v78(v75, v85, v54);
    v53(v55, 0, 1, v54);
    v56 = *(v74 + 48);
    v57 = v77;
    sub_23D83C67C(v44, v77, &qword_27E2F0140, &qword_23D8E5500);
    sub_23D83C67C(v55, v57 + v56, &qword_27E2F0140, &qword_23D8E5500);
    v58 = *(v52 + 48);
    if (v58(v57, 1, v54) == 1)
    {
      sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
      sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
      if (v58(v57 + v56, 1, v54) == 1)
      {
        sub_23D83C6E4(v57, &qword_27E2F0140, &qword_23D8E5500);
        v59 = 0;
LABEL_15:
        v65 = sub_23D8DC030();
        *(v66 + *(v82 + 64)) = v59 & 1;
        v65(v86, 0);
        v68(v87, 0);
        goto LABEL_16;
      }
    }

    else
    {
      v60 = v71;
      sub_23D83C67C(v57, v71, &qword_27E2F0140, &qword_23D8E5500);
      if (v58(v57 + v56, 1, v54) != 1)
      {
        v61 = v81;
        v62 = v84;
        (*(v81 + 32))(v84, v57 + v56, v54);
        sub_23D8C67FC(&qword_27E2EFF90, MEMORY[0x277CE7328], MEMORY[0x277CE7338]);
        v63 = sub_23D8DE820();
        v64 = *(v61 + 8);
        v64(v62, v54);
        sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
        sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
        v64(v60, v54);
        sub_23D83C6E4(v57, &qword_27E2F0140, &qword_23D8E5500);
        v59 = v63 ^ 1;
        goto LABEL_15;
      }

      sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
      sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
      (*(v81 + 8))(v60, v54);
    }

    sub_23D83C6E4(v57, &qword_27E2F0130, &qword_23D8E54F0);
    v59 = 1;
    goto LABEL_15;
  }

  sub_23D8DC9F0();
  sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  sub_23D8DD120();
  __break(1u);
}

uint64_t sub_23D8BD740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for AXRTextFormatterSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v18[0] = type metadata accessor for AXRSegmentedPicker(0);
  MEMORY[0x28223BE20](v18[0]);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CE7358];
  v9 = sub_23D8DC620();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_23D8CB4EC(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE9D0();
  v10 = sub_23D8DE9C0();
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  v14 = v13;
  sub_23D8CBE8C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8CB4EC(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v15 = sub_23D8DE9C0();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_23D8CBE8C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v11, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DC610();
  sub_23D8DE480();
  sub_23D8C67FC(&qword_27E2F0088, type metadata accessor for AXRSegmentedPicker, &protocol conformance descriptor for AXRSegmentedPicker);
  sub_23D8DDEE0();
  return sub_23D8CB554(v7, type metadata accessor for AXRSegmentedPicker);
}

void sub_23D8BDA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0130, &qword_23D8E54F0);
  MEMORY[0x28223BE20](v74);
  v77 = &v67 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0138, &qword_23D8E54F8);
  MEMORY[0x28223BE20](v82);
  v70 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0140, &qword_23D8E5500);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = &v67 - v14;
  v15 = sub_23D8DC510();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D8DC610();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v72 = type metadata accessor for AXRTextFormatterSheet(0);
  if (*(a4 + *(v72 + 48)))
  {

    v25 = sub_23D8DC960();

    v26 = *(v20 + 16);
    v73 = v20 + 16;
    v78 = v26;
    v26(v24, v85, v19);
    v84 = v24;
    sub_23D8DC760();

    sub_23D8DC970();
    v83 = v25;
    sub_23D8DC950();

    (*(v16 + 8))(v18, v15);
    v27 = sub_23D8B4868(v87);
    v29 = v28;
    v30 = sub_23D8DC140();
    v31 = *(*(v30 - 8) + 48);
    v32 = v31(v29, 1, v30);
    v81 = v20;
    v79 = v19;
    if (!v32)
    {
      v33 = sub_23D8DBFC0();
      (*(v20 + 24))(v34 + *(v82 + 48), v85, v19);
      v33(v86, 0);
    }

    v27(v87, 0);
    v35 = sub_23D8B4868(v87);
    v37 = v36;
    v38 = v31(v36, 1, v30);
    v39 = v84;
    if (v38)
    {
      v35(v87, 0);
LABEL_16:

      return;
    }

    v67 = v37;
    v68 = v35;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    v41 = v80;
    MEMORY[0x23EEF05A0](v40);
    v42 = 1;
    v43 = v31(v41, 1, v30);
    v44 = v76;
    if (!v43)
    {
      v45 = v69;
      LODWORD(v72) = sub_23D8DBFD0();
      v46 = *(v82 + 48);
      v47 = *(v82 + 64);
      v48 = *(v81 + 32);
      v49 = v70;
      v50 = v79;
      v48(v70, v39, v79);
      v48((v49 + v46), v45, v50);
      *(v49 + v47) = v72 & 1;
      v51 = v50;
      v41 = v80;
      v78(v44, v49, v51);
      sub_23D83C6E4(v49, &qword_27E2F0138, &qword_23D8E54F8);
      v42 = 0;
    }

    sub_23D83C6E4(v41, &qword_27E2ED260, &qword_23D8E08F8);
    v52 = v81;
    v53 = *(v81 + 56);
    v54 = v79;
    v53(v44, v42, 1, v79);
    v55 = v75;
    v78(v75, v85, v54);
    v53(v55, 0, 1, v54);
    v56 = *(v74 + 48);
    v57 = v77;
    sub_23D83C67C(v44, v77, &qword_27E2F0140, &qword_23D8E5500);
    sub_23D83C67C(v55, v57 + v56, &qword_27E2F0140, &qword_23D8E5500);
    v58 = *(v52 + 48);
    if (v58(v57, 1, v54) == 1)
    {
      sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
      sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
      if (v58(v57 + v56, 1, v54) == 1)
      {
        sub_23D83C6E4(v57, &qword_27E2F0140, &qword_23D8E5500);
        v59 = 0;
LABEL_15:
        v65 = sub_23D8DBFC0();
        *(v66 + *(v82 + 64)) = v59 & 1;
        v65(v86, 0);
        v68(v87, 0);
        goto LABEL_16;
      }
    }

    else
    {
      v60 = v71;
      sub_23D83C67C(v57, v71, &qword_27E2F0140, &qword_23D8E5500);
      if (v58(v57 + v56, 1, v54) != 1)
      {
        v61 = v81;
        v62 = v84;
        (*(v81 + 32))(v84, v57 + v56, v54);
        sub_23D8C67FC(&qword_27E2EFF90, MEMORY[0x277CE7328], MEMORY[0x277CE7338]);
        v63 = sub_23D8DE820();
        v64 = *(v61 + 8);
        v64(v62, v54);
        sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
        sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
        v64(v60, v54);
        sub_23D83C6E4(v57, &qword_27E2F0140, &qword_23D8E5500);
        v59 = v63 ^ 1;
        goto LABEL_15;
      }

      sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
      sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
      (*(v81 + 8))(v60, v54);
    }

    sub_23D83C6E4(v57, &qword_27E2F0130, &qword_23D8E54F0);
    v59 = 1;
    goto LABEL_15;
  }

  sub_23D8DC9F0();
  sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  sub_23D8DD120();
  __break(1u);
}

void *sub_23D8BE3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v4 = type metadata accessor for AXRTextFormatterSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *MEMORY[0x277CE7350];
  v8 = sub_23D8DC620();
  (*(*(v8 - 8) + 104))(a2, v7, v8);
  sub_23D8CB4EC(a1, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE9D0();
  v9 = sub_23D8DE9C0();
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_23D8CBE8C(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8CB4EC(a1, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v13 = sub_23D8DE9C0();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  sub_23D8CBE8C(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10, type metadata accessor for AXRTextFormatterSheet);
  type metadata accessor for AXRSegmentedPicker(0);
  sub_23D8DC610();
  return sub_23D8DE480();
}

void sub_23D8BE5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0130, &qword_23D8E54F0);
  MEMORY[0x28223BE20](v74);
  v77 = &v67 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0138, &qword_23D8E54F8);
  MEMORY[0x28223BE20](v82);
  v70 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0140, &qword_23D8E5500);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = &v67 - v14;
  v15 = sub_23D8DC510();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D8DC610();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v72 = type metadata accessor for AXRTextFormatterSheet(0);
  if (*(a4 + *(v72 + 48)))
  {

    v25 = sub_23D8DC960();

    v26 = *(v20 + 16);
    v73 = v20 + 16;
    v78 = v26;
    v26(v24, v85, v19);
    v84 = v24;
    sub_23D8DC7D0();

    sub_23D8DC970();
    v83 = v25;
    sub_23D8DC950();

    (*(v16 + 8))(v18, v15);
    v27 = sub_23D8B4868(v87);
    v29 = v28;
    v30 = sub_23D8DC140();
    v31 = *(*(v30 - 8) + 48);
    v32 = v31(v29, 1, v30);
    v81 = v20;
    v79 = v19;
    if (!v32)
    {
      v33 = sub_23D8DC050();
      (*(v20 + 24))(v34 + *(v82 + 48), v85, v19);
      v33(v86, 0);
    }

    v27(v87, 0);
    v35 = sub_23D8B4868(v87);
    v37 = v36;
    v38 = v31(v36, 1, v30);
    v39 = v84;
    if (v38)
    {
      v35(v87, 0);
LABEL_16:

      return;
    }

    v67 = v37;
    v68 = v35;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    v41 = v80;
    MEMORY[0x23EEF05A0](v40);
    v42 = 1;
    v43 = v31(v41, 1, v30);
    v44 = v76;
    if (!v43)
    {
      v45 = v69;
      LODWORD(v72) = sub_23D8DC060();
      v46 = *(v82 + 48);
      v47 = *(v82 + 64);
      v48 = *(v81 + 32);
      v49 = v70;
      v50 = v79;
      v48(v70, v39, v79);
      v48((v49 + v46), v45, v50);
      *(v49 + v47) = v72 & 1;
      v51 = v50;
      v41 = v80;
      v78(v44, v49, v51);
      sub_23D83C6E4(v49, &qword_27E2F0138, &qword_23D8E54F8);
      v42 = 0;
    }

    sub_23D83C6E4(v41, &qword_27E2ED260, &qword_23D8E08F8);
    v52 = v81;
    v53 = *(v81 + 56);
    v54 = v79;
    v53(v44, v42, 1, v79);
    v55 = v75;
    v78(v75, v85, v54);
    v53(v55, 0, 1, v54);
    v56 = *(v74 + 48);
    v57 = v77;
    sub_23D83C67C(v44, v77, &qword_27E2F0140, &qword_23D8E5500);
    sub_23D83C67C(v55, v57 + v56, &qword_27E2F0140, &qword_23D8E5500);
    v58 = *(v52 + 48);
    if (v58(v57, 1, v54) == 1)
    {
      sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
      sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
      if (v58(v57 + v56, 1, v54) == 1)
      {
        sub_23D83C6E4(v57, &qword_27E2F0140, &qword_23D8E5500);
        v59 = 0;
LABEL_15:
        v65 = sub_23D8DC050();
        *(v66 + *(v82 + 64)) = v59 & 1;
        v65(v86, 0);
        v68(v87, 0);
        goto LABEL_16;
      }
    }

    else
    {
      v60 = v71;
      sub_23D83C67C(v57, v71, &qword_27E2F0140, &qword_23D8E5500);
      if (v58(v57 + v56, 1, v54) != 1)
      {
        v61 = v81;
        v62 = v84;
        (*(v81 + 32))(v84, v57 + v56, v54);
        sub_23D8C67FC(&qword_27E2EFF90, MEMORY[0x277CE7328], MEMORY[0x277CE7338]);
        v63 = sub_23D8DE820();
        v64 = *(v61 + 8);
        v64(v62, v54);
        sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
        sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
        v64(v60, v54);
        sub_23D83C6E4(v57, &qword_27E2F0140, &qword_23D8E5500);
        v59 = v63 ^ 1;
        goto LABEL_15;
      }

      sub_23D83C6E4(v55, &qword_27E2F0140, &qword_23D8E5500);
      sub_23D83C6E4(v44, &qword_27E2F0140, &qword_23D8E5500);
      (*(v81 + 8))(v60, v54);
    }

    sub_23D83C6E4(v57, &qword_27E2F0130, &qword_23D8E54F0);
    v59 = 1;
    goto LABEL_15;
  }

  sub_23D8DC9F0();
  sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  sub_23D8DD120();
  __break(1u);
}

uint64_t sub_23D8BEFC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0170, &qword_23D8E5560);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0178, &qword_23D8E5568);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v41 - v8;
  v9 = type metadata accessor for AXRTextFormatterSheet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0188, &qword_23D8E5578);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v41 - v15;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v16 = qword_27E2F3C80;
    v17 = sub_23D8DE830();
    v18 = sub_23D8DE830();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    v20 = sub_23D8DE870();
    v42 = v21;
    v43 = v20;
  }

  else
  {
    v42 = 0x800000023D8E6D90;
    v43 = 0xD000000000000013;
  }

  sub_23D8CB4EC(v2, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE9D0();
  v22 = sub_23D8DE9C0();
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  sub_23D8CBE8C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8CB4EC(v2, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v26 = sub_23D8DE9C0();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  sub_23D8CBE8C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v23, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE480();
  v28 = v52;
  v29 = v53;
  v30 = v54;
  v52 = v43;
  v53 = v42;
  v54 = 0;
  v55 = 0;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  sub_23D8CAE6C();
  v31 = v44;
  sub_23D8DDEE0();

  LOBYTE(v52) = 4;
  MEMORY[0x28223BE20](v32);
  *(&v41 - 2) = v2;
  type metadata accessor for AXRColorDisplayRowView(0);
  sub_23D8C67FC(&qword_27E2F0198, type metadata accessor for AXRColorDisplayRowView, &unk_23D8E5800);
  sub_23D83CAC4();
  v33 = v46;
  sub_23D8DCEC0();
  sub_23D835AD0(&qword_27E2F01A0, &qword_27E2F0170, &qword_23D8E5560, MEMORY[0x277CDD938]);
  v34 = v48;
  v35 = v49;
  sub_23D8DDEE0();
  (*(v47 + 8))(v33, v34);
  v36 = v45;
  sub_23D83C67C(v31, v45, &qword_27E2F0188, &qword_23D8E5578);
  v37 = v50;
  sub_23D83C67C(v35, v50, &qword_27E2F0178, &qword_23D8E5568);
  v38 = v51;
  sub_23D83C67C(v36, v51, &qword_27E2F0188, &qword_23D8E5578);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0220, &qword_23D8E5658);
  sub_23D83C67C(v37, v38 + *(v39 + 48), &qword_27E2F0178, &qword_23D8E5568);
  sub_23D83C6E4(v35, &qword_27E2F0178, &qword_23D8E5568);
  sub_23D83C6E4(v31, &qword_27E2F0188, &qword_23D8E5578);
  sub_23D83C6E4(v37, &qword_27E2F0178, &qword_23D8E5568);
  return sub_23D83C6E4(v36, &qword_27E2F0188, &qword_23D8E5578);
}

uint64_t sub_23D8BF660@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0170, &qword_23D8E5560);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0178, &qword_23D8E5568);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0180, &qword_23D8E5570);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v48 - v12;
  v13 = type metadata accessor for AXRTextFormatterSheet(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0188, &qword_23D8E5578);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v50 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v58 = &v48 - v19;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v20 = qword_27E2F3C80;
    v21 = sub_23D8DE830();
    v22 = sub_23D8DE830();
    v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

    v24 = sub_23D8DE870();
    v48 = v25;
    v49 = v24;
  }

  else
  {
    v48 = 0x800000023D8E6CD0;
    v49 = 0xD000000000000010;
  }

  sub_23D8CB4EC(v2, &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE9D0();
  v26 = sub_23D8DE9C0();
  v27 = v2;
  v28 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v26;
  *(v29 + 24) = v30;
  sub_23D8CBE8C(&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8CB4EC(v27, &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v31 = sub_23D8DE9C0();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v30;
  sub_23D8CBE8C(&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v28, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE480();
  v33 = v60;
  v34 = v61;
  v35 = v62;
  v60 = v49;
  v61 = v48;
  v62 = 0;
  v63 = 0;
  v64 = v33;
  v65 = v34;
  v66 = v35;
  sub_23D8CAE6C();
  v36 = v58;
  sub_23D8DDEE0();

  v37 = v59;
  v38 = sub_23D8C4170(v59);
  LOBYTE(v60) = 3;
  MEMORY[0x28223BE20](v38);
  *(&v48 - 2) = v27;
  type metadata accessor for AXRColorDisplayRowView(0);
  sub_23D8C67FC(&qword_27E2F0198, type metadata accessor for AXRColorDisplayRowView, &unk_23D8E5800);
  sub_23D83CAC4();
  v39 = v51;
  sub_23D8DCEC0();
  sub_23D835AD0(&qword_27E2F01A0, &qword_27E2F0170, &qword_23D8E5560, MEMORY[0x277CDD938]);
  v41 = v53;
  v40 = v54;
  sub_23D8DDEE0();
  (*(v52 + 8))(v39, v41);
  v42 = v50;
  sub_23D83C67C(v36, v50, &qword_27E2F0188, &qword_23D8E5578);
  v43 = v55;
  sub_23D83C67C(v37, v55, &qword_27E2F0180, &qword_23D8E5570);
  v44 = v56;
  sub_23D83C67C(v40, v56, &qword_27E2F0178, &qword_23D8E5568);
  v45 = v57;
  sub_23D83C67C(v42, v57, &qword_27E2F0188, &qword_23D8E5578);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F01A8, &qword_23D8E5580);
  sub_23D83C67C(v43, v45 + *(v46 + 48), &qword_27E2F0180, &qword_23D8E5570);
  sub_23D83C67C(v44, v45 + *(v46 + 64), &qword_27E2F0178, &qword_23D8E5568);
  sub_23D83C6E4(v40, &qword_27E2F0178, &qword_23D8E5568);
  sub_23D83C6E4(v59, &qword_27E2F0180, &qword_23D8E5570);
  sub_23D83C6E4(v58, &qword_27E2F0188, &qword_23D8E5578);
  sub_23D83C6E4(v44, &qword_27E2F0178, &qword_23D8E5568);
  sub_23D83C6E4(v43, &qword_27E2F0180, &qword_23D8E5570);
  return sub_23D83C6E4(v42, &qword_27E2F0188, &qword_23D8E5578);
}

uint64_t sub_23D8BFDF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_23D8DCF40();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXRTextFormatterSheet(0);
  v6 = v5 - 8;
  v52 = *(v5 - 8);
  v50 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE1C0, &qword_23D8E1C80);
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F00D0, &unk_23D8E54B0);
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v43 = &v41 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F00C0, &qword_23D8E54A8);
  MEMORY[0x28223BE20](v54);
  v45 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0168, &unk_23D8E5550);
  v14 = *(v13 - 8);
  v59 = v13;
  v60 = v14;
  MEMORY[0x28223BE20](v13);
  v56 = &v41 - v15;
  sub_23D8DD480();
  v16 = (v1 + *(v6 + 72));
  v17 = v16[1];
  v49 = *v16;
  v48 = v17;
  v47 = v16[2];
  v67 = v49;
  v68 = v17;
  v69 = v47;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE340();
  sub_23D8DE6C0();
  v18 = v1 + *(v6 + 76);
  v42 = v1;
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v18) = *(v18 + 16);
  LOBYTE(v63) = v19;
  v64 = v20;
  LOBYTE(v65) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE228, &qword_23D8E1D28);
  sub_23D8DCC40();
  v21 = sub_23D835AD0(&qword_27E2EE1B8, &qword_27E2EE1C0, &qword_23D8E1C80, MEMORY[0x277CDF1A8]);
  v22 = v43;
  sub_23D8DDFF0();

  (*(v44 + 8))(v10, v8);
  v23 = v62;
  sub_23D8CB4EC(v2, v62, type metadata accessor for AXRTextFormatterSheet);
  v24 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v25 = swift_allocObject();
  sub_23D8CBE8C(v23, v25 + v24, type metadata accessor for AXRTextFormatterSheet);
  v26 = v55;
  sub_23D8DCF30();
  v63 = v8;
  v64 = v21;
  swift_getOpaqueTypeConformance2();
  v27 = v45;
  v28 = v51;
  sub_23D8DE080();

  (*(v57 + 8))(v26, v58);
  (*(v53 + 8))(v22, v28);
  v29 = v42;
  v30 = v62;
  sub_23D8CB4EC(v42, v62, type metadata accessor for AXRTextFormatterSheet);
  v31 = swift_allocObject();
  sub_23D8CBE8C(v30, v31 + v24, type metadata accessor for AXRTextFormatterSheet);
  v32 = v54;
  v33 = (v27 + *(v54 + 36));
  *v33 = 0;
  v33[1] = 0;
  v33[2] = sub_23D8CAC44;
  v33[3] = v31;
  v63 = v49;
  v64 = v48;
  v65 = v47;
  sub_23D8DE320();
  v63 = v67;
  v64 = v68;
  sub_23D8CB4EC(v29, v30, type metadata accessor for AXRTextFormatterSheet);
  v34 = swift_allocObject();
  sub_23D8CBE8C(v30, v34 + v24, type metadata accessor for AXRTextFormatterSheet);
  v35 = sub_23D8CA240();
  v36 = MEMORY[0x277D837D0];
  v37 = MEMORY[0x277D837F8];
  v38 = v56;
  sub_23D8DE060();

  sub_23D83C6E4(v27, &qword_27E2F00C0, &qword_23D8E54A8);
  v63 = v32;
  v64 = v36;
  v65 = v35;
  v66 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v59;
  sub_23D8DDEE0();
  return (*(v60 + 8))(v38, v39);
}

uint64_t sub_23D8C0598(uint64_t a1)
{
  v2 = type metadata accessor for AXRTextFormatterSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F00F0, &qword_23D8E54C8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  sub_23D8CB4EC(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_23D8CBE8C(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AXRTextFormatterSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0148, &qword_23D8E5508);
  sub_23D835AD0(&qword_27E2F0150, &qword_27E2F0148, &qword_23D8E5508, MEMORY[0x277CE1138]);
  sub_23D8DE360();
  LOBYTE(a1) = sub_23D8B4C28();
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = (a1 & 1) == 0;
  v12 = &v7[*(v5 + 36)];
  *v12 = KeyPath;
  v12[1] = sub_23D8CAC00;
  v12[2] = v11;
  sub_23D8CA444();
  sub_23D8DDEE0();
  return sub_23D83C6E4(v7, &qword_27E2F00F0, &qword_23D8E54C8);
}

uint64_t sub_23D8C0824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_23D8DC510();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48)))
  {

    sub_23D8DC960();
    sub_23D8DC830();

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    MEMORY[0x23EEF05A0](v9);
    sub_23D8DC9C0();

    sub_23D83C6E4(v4, &qword_27E2ED260, &qword_23D8E08F8);
    (*(v6 + 8))(v8, v5);
    return sub_23D8C0A34();
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8C0A34()
{
  v154 = sub_23D8DC590();
  v153 = *(v154 - 8);
  v1 = MEMORY[0x28223BE20](v154);
  v152 = v122 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v151 = v122 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v173 = v122 - v6;
  MEMORY[0x28223BE20](v5);
  v172 = v122 - v7;
  v142 = sub_23D8DC610();
  v175 = *(v142 - 8);
  v8 = MEMORY[0x28223BE20](v142);
  v171 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v170 = v122 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v169 = v122 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v168 = v122 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v167 = v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v166 = v122 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v141 = v122 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v140 = v122 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v165 = v122 - v25;
  MEMORY[0x28223BE20](v24);
  v163 = v122 - v26;
  v178 = sub_23D8DCA70();
  v174 = *(v178 - 8);
  v27 = MEMORY[0x28223BE20](v178);
  v159 = v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v139 = v122 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v161 = v122 - v32;
  MEMORY[0x28223BE20](v31);
  v160 = v122 - v33;
  v149 = sub_23D8DCF90();
  v148 = *(v149 - 8);
  v34 = MEMORY[0x28223BE20](v149);
  v147 = v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v146 = v122 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v164 = v122 - v39;
  MEMORY[0x28223BE20](v38);
  v162 = v122 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v156 = v122 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v157 = v122 - v44;
  v179 = sub_23D8DC510();
  v45 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v47 = v122 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AXRTextFormatterSheet(0);
  if (!*(v0 + *(v48 + 48)))
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v49 = v48;

  sub_23D8DC970();
  sub_23D8DC9D0();

  v50 = *(v45 + 8);
  v50(v47, v179);
  v51 = sub_23D8DC870();
  v53 = v52;

  v155 = v49;
  v54 = *(v49 + 64);
  v158 = v0;
  v55 = (v0 + v54);
  v56 = *v55;
  v57 = *(v55 + 2);
  v182 = v56;
  v183 = v57;
  v180 = v51;
  v181 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE330();

  sub_23D8DC970();
  v58 = sub_23D8DC9B0();

  v59 = v179;
  v50(v47, v179);
  sub_23D8DC720();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v50(v47, v59);
  sub_23D8DC720();

  v60 = v146;
  sub_23D8DC720();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v50(v47, v59);
  v61 = v147;
  sub_23D8DC720();

  sub_23D8C67FC(&qword_27E2EDD70, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  v62 = v149;
  v150 = sub_23D8DE820();
  v63 = *(v148 + 8);
  v63(v61, v62);
  v63(v60, v62);
  v149 = sub_23D8DC810();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v64 = v179;
  v50(v47, v179);
  v148 = sub_23D8DC810();

  v65 = v58;
  v66 = sub_23D8DC810();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v176 = v45 + 8;
  v177 = v50;
  v50(v47, v64);
  v67 = sub_23D8DC810();

  if (v66)
  {
    if (v67)
    {
      v68 = sub_23D8DE1E0();

      v69 = v68 ^ 1;
LABEL_7:
      LODWORD(v147) = v69;
      goto LABEL_8;
    }

LABEL_6:

    v69 = 1;
    goto LABEL_7;
  }

  if (v67)
  {
    goto LABEL_6;
  }

  LODWORD(v147) = 0;
LABEL_8:
  v146 = sub_23D8DC650();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v70 = v179;
  v71 = v177;
  v177(v47, v179);
  v145 = sub_23D8DC650();

  v72 = sub_23D8DC650();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v71(v47, v70);
  v73 = sub_23D8DC650();

  if (v72)
  {
    if (v73)
    {
      v74 = sub_23D8DE1E0();

      v75 = v74 ^ 1;
LABEL_13:
      v144 = v75;
      goto LABEL_14;
    }

LABEL_12:

    v75 = 1;
    goto LABEL_13;
  }

  if (v73)
  {
    goto LABEL_12;
  }

  v144 = 0;
LABEL_14:
  v76 = v65;
  sub_23D8DC840();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v77 = v179;
  v78 = v177;
  v177(v47, v179);
  sub_23D8DC840();

  v79 = v139;
  sub_23D8DC840();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v78(v47, v77);
  v80 = v159;
  sub_23D8DC840();

  sub_23D8C67FC(&qword_27E2EFF88, MEMORY[0x277CE7400], MEMORY[0x277CE7410]);
  v81 = v178;
  v143 = sub_23D8DE820();
  v82 = *(v174 + 8);
  v82(v80, v81);
  v82(v79, v81);
  sub_23D8DC770();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v83 = v179;
  v78(v47, v179);
  sub_23D8DC770();

  v84 = v140;
  sub_23D8DC770();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v78(v47, v83);
  v85 = v78;
  v178 = v76;
  v86 = v141;
  sub_23D8DC770();

  v174 = sub_23D8C67FC(&qword_27E2EFF90, MEMORY[0x277CE7328], MEMORY[0x277CE7338]);
  v87 = v142;
  LODWORD(v139) = sub_23D8DE820();
  v88 = v175 + 8;
  v89 = *(v175 + 8);
  v159 = v89;
  (v89)(v86, v87);
  (v89)(v84, v87);
  sub_23D8DC790();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v85(v47, v83);
  sub_23D8DC790();

  sub_23D8DC790();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v85(v47, v83);
  sub_23D8DC790();

  v138 = sub_23D8DE820();
  v90 = v159;
  (v159)(v86, v87);
  v90(v84, v87);
  sub_23D8DC750();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v91 = v83;
  v85(v47, v83);
  sub_23D8DC750();

  sub_23D8DC750();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v85(v47, v83);
  sub_23D8DC750();

  v137 = sub_23D8DE820();
  v92 = v159;
  v175 = v88;
  (v159)(v86, v87);
  v93 = v84;
  v92(v84, v87);
  sub_23D8DC7C0();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v94 = v91;
  v95 = v91;
  v96 = v177;
  v177(v47, v95);
  sub_23D8DC7C0();

  sub_23D8DC7C0();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v96(v47, v94);
  sub_23D8DC7C0();

  LODWORD(v174) = sub_23D8DE820();
  v92(v86, v87);
  v92(v93, v87);
  LODWORD(v175) = sub_23D8DC890();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v97 = v94;
  v98 = v94;
  v99 = v177;
  v177(v47, v98);
  LODWORD(v159) = sub_23D8DC890();

  LODWORD(v142) = sub_23D8DC890();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v99(v47, v97);
  LODWORD(v140) = sub_23D8DC890();

  v141 = sub_23D8DC700();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v99(v47, v97);
  v136 = sub_23D8DC700();

  v100 = sub_23D8DC700();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v99(v47, v97);
  v101 = sub_23D8DC700();

  if (v100)
  {
    if (v101)
    {
      v102 = sub_23D8DE1E0();

      v103 = v102 ^ 1;
LABEL_19:
      v135 = v103;
      goto LABEL_20;
    }

LABEL_18:

    v103 = 1;
    goto LABEL_19;
  }

  if (v101)
  {
    goto LABEL_18;
  }

  v135 = 0;
LABEL_20:
  v134 = sub_23D8DC740();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v104 = v179;
  v105 = v177;
  v177(v47, v179);
  v133 = sub_23D8DC740();

  v132 = sub_23D8DC740();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v105(v47, v104);
  v130 = sub_23D8DC740();

  v131 = sub_23D8DC6B0();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v105(v47, v104);
  v129 = sub_23D8DC6B0();

  sub_23D8DC6B0();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v105(v47, v104);
  sub_23D8DC6B0();

  v128 = sub_23D8DE1E0();

  sub_23D8DC6D0();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v105(v47, v104);
  sub_23D8DC6D0();

  v106 = v151;
  sub_23D8DC6D0();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v105(v47, v104);
  v107 = v152;
  sub_23D8DC6D0();

  sub_23D8C67FC(&qword_27E2EFF98, MEMORY[0x277CE72E8], MEMORY[0x277CE72F8]);
  v108 = v154;
  v127 = sub_23D8DE820();
  v109 = *(v153 + 8);
  v109(v107, v108);
  v109(v106, v108);
  LODWORD(v154) = sub_23D8DC6A0();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v110 = v177;
  v177(v47, v104);
  LODWORD(v153) = sub_23D8DC6A0();

  LODWORD(v152) = sub_23D8DC6A0();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v110(v47, v104);
  v126 = sub_23D8DC6A0();

  LODWORD(v151) = sub_23D8DC860();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v110(v47, v104);
  v125 = sub_23D8DC860();

  v124 = sub_23D8DC860();

  sub_23D8DC970();
  sub_23D8DC9D0();

  v110(v47, v104);
  v123 = sub_23D8DC860();

  v122[3] = sub_23D8DC870();
  v122[2] = v111;

  sub_23D8DC970();
  sub_23D8DC9D0();

  v110(v47, v104);
  v122[1] = sub_23D8DC870();

  v112 = sub_23D8DC870();
  v114 = v113;

  sub_23D8DC970();
  sub_23D8DC9D0();

  v110(v47, v104);
  v115 = sub_23D8DC870();
  v117 = v116;

  if (v112 == v115 && v114 == v117)
  {
  }

  else
  {
    sub_23D8DED20();
  }

  v118 = v157;
  v119 = v156;

  sub_23D8DBFE0();
  v120 = sub_23D8DC140();
  (*(*(v120 - 8) + 56))(v118, 0, 1, v120);
  sub_23D83C67C(v118, v119, &qword_27E2ED260, &qword_23D8E08F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
  sub_23D8DE460();

  return sub_23D83C6E4(v118, &qword_27E2ED260, &qword_23D8E08F8);
}

double sub_23D8C25EC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_23D8DD420();
  v22 = 1;
  sub_23D8C27E8(&v12);
  v29 = v18;
  v30 = v19;
  v31[0] = v20[0];
  *(v31 + 9) = *(v20 + 9);
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v33[0] = v20[0];
  *(v33 + 9) = *(v20 + 9);
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v32[0] = v12;
  v32[1] = v13;
  sub_23D83C67C(&v23, &v11, &qword_27E2F0158, &qword_23D8E5540);
  sub_23D83C6E4(v32, &qword_27E2F0158, &qword_23D8E5540);
  *(&v21[3] + 7) = v26;
  *(&v21[2] + 7) = v25;
  *(&v21[6] + 7) = v29;
  *(&v21[7] + 7) = v30;
  *(&v21[8] + 7) = v31[0];
  v21[9] = *(v31 + 9);
  *(&v21[4] + 7) = v27;
  *(&v21[5] + 7) = v28;
  *(v21 + 7) = v23;
  *(&v21[1] + 7) = v24;
  v4 = v21[7];
  *(a2 + 113) = v21[6];
  *(a2 + 129) = v4;
  v5 = v21[9];
  *(a2 + 145) = v21[8];
  *(a2 + 161) = v5;
  v6 = v21[3];
  *(a2 + 49) = v21[2];
  *(a2 + 65) = v6;
  v7 = v21[5];
  *(a2 + 81) = v21[4];
  *(a2 + 97) = v7;
  result = *v21;
  v9 = v21[1];
  *(a2 + 17) = v21[0];
  v10 = v22;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 33) = v9;
  return result;
}

uint64_t sub_23D8C27E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_23D8DE5F0();
  sub_23D8DD0D0();
  *&v35 = v7;
  *(&v35 + 1) = v9;
  LOBYTE(v36) = v11 & 1;
  *(&v36 + 1) = v13;
  v14 = v31;
  v15 = v32;
  v41 = v32;
  v42 = v33;
  v16 = v33;
  v43 = v34;
  v37 = v28;
  v38 = v29;
  v18 = v28;
  v17 = v29;
  v19 = v30;
  v39 = v30;
  v40 = v31;
  v20 = v36;
  v21 = v28;
  v22 = v34;
  *a1 = v35;
  *(a1 + 16) = v20;
  v23 = v43;
  *(a1 + 112) = v42;
  *(a1 + 128) = v23;
  v24 = v41;
  *(a1 + 80) = v40;
  *(a1 + 96) = v24;
  v25 = v39;
  *(a1 + 48) = v38;
  *(a1 + 64) = v25;
  *(a1 + 32) = v21;
  v51 = v15;
  v52 = v16;
  v53 = v22;
  v47 = v18;
  v48 = v17;
  v54 = v11 & 1;
  v27[144] = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  v44[0] = v7;
  v44[1] = v9;
  v45 = v11 & 1;
  v46 = v13;
  v49 = v19;
  v50 = v14;
  sub_23D83C67C(&v35, v27, &qword_27E2F0160, &qword_23D8E5548);
  return sub_23D83C6E4(v44, &qword_27E2F0160, &qword_23D8E5548);
}

uint64_t sub_23D8C2A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFF08, &qword_23D8E5388);
  v3 = *(v2 - 8);
  v92 = v2;
  v93 = v3;
  MEMORY[0x28223BE20](v2);
  v91 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFF10, &qword_23D8E5390);
  MEMORY[0x28223BE20](v5 - 8);
  v101 = &v72 - v6;
  v102 = sub_23D8DEBC0();
  v106 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v89 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AXRTextFormatterSheet(0);
  v9 = v8 - 8;
  v98 = *(v8 - 8);
  v97 = *(v98 + 64);
  MEMORY[0x28223BE20](v8);
  v104 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_23D8DEB20();
  v105 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFF18, &qword_23D8E5398);
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v72 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFF20, &qword_23D8E53A0);
  v82 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v14 = &v72 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFF28, &qword_23D8E53A8);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v16 = &v72 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFF30, &qword_23D8E53B0);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v80 = &v72 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFF38, &unk_23D8E53B8);
  v90 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v72 - v23;
  sub_23D8C0A34();
  sub_23D856774(0, &qword_27E2EFF40, 0x277D75BB8);
  v25 = [swift_getObjCClassFromMetadata() appearance];
  [v25 setClearButtonMode_];

  sub_23D8B4680(v24);
  v79 = v9;
  sub_23D83C67C(v24, v22, &qword_27E2EE9E0, &qword_23D8E26D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8);
  sub_23D8DE330();
  sub_23D83C6E4(v24, &qword_27E2EE9E0, &qword_23D8E26D0);
  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 orientation];

  IsLandscape = UIDeviceOrientationIsLandscape(v27);
  v29 = (a1 + *(v9 + 40));
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v108) = v30;
  *(&v108 + 1) = v31;
  LOBYTE(v107) = IsLandscape;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  v73 = a1;
  sub_23D8B4680(v24);
  sub_23D8DCB50();
  v77 = objc_opt_self();
  v32 = [v77 defaultCenter];
  v76 = *MEMORY[0x277D76878];
  v33 = v96;
  sub_23D8DEB30();

  v34 = v104;
  v94 = type metadata accessor for AXRTextFormatterSheet;
  sub_23D8CB4EC(a1, v104, type metadata accessor for AXRTextFormatterSheet);
  v98 = *(v98 + 80);
  v35 = (v98 + 16) & ~v98;
  v95 = v35;
  v36 = swift_allocObject();
  sub_23D8CBE8C(v34, v36 + v35, type metadata accessor for AXRTextFormatterSheet);
  v74 = sub_23D8C67FC(&qword_27E2ECF08, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v37 = v78;
  v38 = v99;
  sub_23D8DCBA0();

  v39 = *(v105 + 8);
  v105 += 8;
  v75 = v39;
  v39(v33, v38);
  sub_23D835AD0(&qword_27E2EFF48, &qword_27E2EFF20, &qword_23D8E53A0, MEMORY[0x277CBCE80]);
  sub_23D835AD0(&qword_27E2EFF50, &qword_27E2EFF18, &qword_23D8E5398, MEMORY[0x277CBCC08]);
  v40 = v81;
  v41 = v85;
  sub_23D8DCBB0();
  (v86)[1](v37, v41);
  (*(v82 + 8))(v14, v40);
  sub_23D835AD0(&qword_27E2EFF58, &qword_27E2EFF28, &qword_23D8E53A8, MEMORY[0x277CBCC60]);
  sub_23D868340();
  v42 = v80;
  v43 = v83;
  sub_23D8DCBE0();
  (*(v84 + 8))(v16, v43);
  v44 = v89;
  sub_23D8DEBB0();
  v86 = objc_opt_self();
  v45 = [v86 mainRunLoop];
  *&v108 = v45;
  v46 = sub_23D8DEBA0();
  v47 = *(v46 - 8);
  v84 = *(v47 + 56);
  v85 = v47 + 56;
  v48 = v101;
  (v84)(v101, 1, 1, v46);
  v83 = sub_23D856774(0, &qword_27E2EFF60, 0x277CBEB88);
  sub_23D835AD0(&qword_27E2EFF68, &qword_27E2EFF30, &qword_23D8E53B0, MEMORY[0x277CBCBE0]);
  v82 = sub_23D8C9D2C();
  v49 = v87;
  sub_23D8DCBD0();
  sub_23D83C6E4(v48, &qword_27E2EFF10, &qword_23D8E5390);

  v50 = *(v106 + 8);
  v106 += 8;
  v81 = v50;
  (v50)(v44, v102);
  (*(v88 + 8))(v42, v49);
  v51 = v73;
  v52 = v104;
  v53 = v94;
  sub_23D8CB4EC(v73, v104, v94);
  v54 = v95;
  v55 = swift_allocObject();
  sub_23D8CBE8C(v52, v55 + v54, v53);
  v88 = MEMORY[0x277CBCCF8];
  sub_23D835AD0(&qword_27E2EFF78, &qword_27E2EFF38, &unk_23D8E53B8, MEMORY[0x277CBCCF8]);
  v56 = sub_23D8DCBF0();

  v57 = v79;
  v108 = *(v51 + *(v79 + 44));
  v107 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFF00, &unk_23D8E5378);
  sub_23D8DE330();
  v58 = [v77 defaultCenter];
  v59 = v96;
  sub_23D8DEB30();

  v60 = v44;
  sub_23D8DEBB0();
  v61 = [v86 mainRunLoop];
  *&v108 = v61;
  v62 = v101;
  (v84)(v101, 1, 1, v46);
  v63 = v91;
  v64 = v99;
  sub_23D8DCBD0();
  sub_23D83C6E4(v62, &qword_27E2EFF10, &qword_23D8E5390);

  (v81)(v60, v102);
  v75(v59, v64);
  v65 = v104;
  v66 = v94;
  sub_23D8CB4EC(v51, v104, v94);
  v67 = v95;
  v68 = swift_allocObject();
  sub_23D8CBE8C(v65, v68 + v67, v66);
  sub_23D835AD0(&qword_27E2EFF80, &qword_27E2EFF08, &qword_23D8E5388, v88);
  v69 = v92;
  v70 = sub_23D8DCBF0();

  v108 = *(v51 + *(v57 + 48));
  v107 = v70;
  sub_23D8DE330();
  (*(v93 + 8))(v63, v69);
  return (*(v90 + 8))(v100, v103);
}

uint64_t sub_23D8C38D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for AXRTextFormatterSheet(0);
  sub_23D83C67C(a1 + *(v11 + 24), v10, &qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23D83C744(v10, a2, &qword_27E2EE9E0, &qword_23D8E26D0);
  }

  sub_23D8DEAB0();
  v13 = sub_23D8DD990();
  sub_23D8DCAD0();

  sub_23D8DD3B0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23D8C3AC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for AXRTextFormatterSheet(0);
  sub_23D83C67C(a1, v4, &qword_27E2EE9E0, &qword_23D8E26D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8);
  return sub_23D8DE330();
}

uint64_t sub_23D8C3B90(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 orientation];

  UIDeviceOrientationIsLandscape(v3);
  type metadata accessor for AXRTextFormatterSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  return sub_23D8DE330();
}

void sub_23D8C3C4C()
{
  v0 = sub_23D8DE750();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23D8DE780();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DE7A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (!v15)
  {
    sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
    v24 = sub_23D8DEAF0();
    sub_23D8DE790();
    sub_23D8DE7B0();
    v16 = *(v8 + 8);
    v26 = v8 + 8;
    v27 = v16;
    v25 = v7;
    v16(v11, v7);
    aBlock[4] = sub_23D8C4040;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D876358;
    aBlock[3] = &block_descriptor_5;
    v23 = _Block_copy(aBlock);
    sub_23D8DE770();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D8C67FC(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v17 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
    v19 = v28;
    v18 = v29;
    v22 = v3;
    sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
    sub_23D8DEBF0();
    v21 = v23;
    v20 = v24;
    MEMORY[0x23EEF0C20](v13, v17, v2, v23);
    _Block_release(v21);

    (*(v19 + 8))(v2, v18);
    (*(v4 + 8))(v17, v22);
    v27(v13, v25);
  }
}

double sub_23D8C4040(uint64_t a1)
{
  sub_23D8DE660();
  sub_23D8DCE60();

  return result;
}

double sub_23D8C40C0(uint64_t a1)
{
  type metadata accessor for AXRTextFormatterSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFF00, &unk_23D8E5378);
  sub_23D8DE320();
  if (v2)
  {
    sub_23D8DCB00();
  }

  sub_23D8DE320();
  if (v2)
  {
    sub_23D8DCB00();
  }

  return result;
}

uint64_t sub_23D8C4170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_23D8DD8D0();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXRTextFormatterSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F01B0, &qword_23D8E55E8);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v41 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F01B8, &qword_23D8E55F0);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v42 = &v41 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F01C0, &qword_23D8E55F8);
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v44 = &v41 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F01C8, &qword_23D8E5600);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v41 - v12;
  v13 = 0x800000023D8E6D50;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v14 = 0xD000000000000013;
  if (qword_27E2F3C80)
  {
    v15 = qword_27E2F3C80;
    v16 = sub_23D8DE830();
    v17 = sub_23D8DE830();
    v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

    v14 = sub_23D8DE870();
    v13 = v19;
  }

  v60 = v14;
  v61 = v13;
  sub_23D8CB4EC(v2, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DE9D0();
  v20 = sub_23D8DE9C0();
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  sub_23D8CBE8C(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8CB4EC(v2, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v24 = sub_23D8DE9C0();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  sub_23D8CBE8C(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v21, type metadata accessor for AXRTextFormatterSheet);
  sub_23D8DC590();
  v26 = sub_23D8DE480();
  MEMORY[0x28223BE20](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F01D0, &qword_23D8E5608);
  sub_23D8C67FC(&qword_27E2F01D8, MEMORY[0x277CE72E8], MEMORY[0x277CE72F0]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F01E0, &unk_23D8E5610);
  v28 = sub_23D8CB2EC(&qword_27E2F01E8, &qword_27E2F01E0, &unk_23D8E5610);
  v56 = v27;
  v57 = MEMORY[0x277CE0F78];
  v58 = v28;
  v59 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  sub_23D83CB18();
  v29 = v42;
  sub_23D8DE3C0();
  v30 = v52;
  sub_23D8DD8C0();
  v31 = sub_23D835AD0(&qword_27E2F01F0, &qword_27E2F01B8, &qword_23D8E55F0, MEMORY[0x277CDF038]);
  v32 = MEMORY[0x277CDE370];
  v33 = v44;
  v34 = v48;
  v35 = v54;
  sub_23D8DDD30();
  (*(v53 + 8))(v30, v35);
  (*(v45 + 8))(v29, v34);
  v56 = v34;
  v57 = v35;
  v58 = v31;
  v59 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v46;
  v38 = v50;
  sub_23D8DDEF0();
  (*(v47 + 8))(v33, v38);
  v56 = v38;
  v57 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v51;
  sub_23D8DDEE0();
  return (*(v49 + 8))(v37, v39);
}

void sub_23D8C491C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_23D8DC510();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48)))
  {

    sub_23D8DC970();
    sub_23D8DC9D0();

    v10 = (*(v7 + 8))(v9, v6);
    a4(v10);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

void sub_23D8C4AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0208, &qword_23D8E5640);
  MEMORY[0x28223BE20](v74);
  v77 = &v67 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0210, &qword_23D8E5648);
  MEMORY[0x28223BE20](v82);
  v70 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0218, &qword_23D8E5650);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = &v67 - v14;
  v15 = sub_23D8DC510();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D8DC590();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v72 = type metadata accessor for AXRTextFormatterSheet(0);
  if (*(a4 + *(v72 + 48)))
  {

    v25 = sub_23D8DC960();

    v26 = *(v20 + 16);
    v73 = v20 + 16;
    v78 = v26;
    v26(v24, v85, v19);
    v84 = v24;
    sub_23D8DC6E0();

    sub_23D8DC970();
    v83 = v25;
    sub_23D8DC950();

    (*(v16 + 8))(v18, v15);
    v27 = sub_23D8B4868(v87);
    v29 = v28;
    v30 = sub_23D8DC140();
    v31 = *(*(v30 - 8) + 48);
    v32 = v31(v29, 1, v30);
    v81 = v20;
    v79 = v19;
    if (!v32)
    {
      v33 = sub_23D8DC080();
      (*(v20 + 24))(v34 + *(v82 + 48), v85, v19);
      v33(v86, 0);
    }

    v27(v87, 0);
    v35 = sub_23D8B4868(v87);
    v37 = v36;
    v38 = v31(v36, 1, v30);
    v39 = v84;
    if (v38)
    {
      v35(v87, 0);
LABEL_16:

      return;
    }

    v67 = v37;
    v68 = v35;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    v41 = v80;
    MEMORY[0x23EEF05A0](v40);
    v42 = 1;
    v43 = v31(v41, 1, v30);
    v44 = v76;
    if (!v43)
    {
      v45 = v69;
      LODWORD(v72) = sub_23D8DC090();
      v46 = *(v82 + 48);
      v47 = *(v82 + 64);
      v48 = *(v81 + 32);
      v49 = v70;
      v50 = v79;
      v48(v70, v39, v79);
      v48((v49 + v46), v45, v50);
      *(v49 + v47) = v72 & 1;
      v51 = v50;
      v41 = v80;
      v78(v44, v49, v51);
      sub_23D83C6E4(v49, &qword_27E2F0210, &qword_23D8E5648);
      v42 = 0;
    }

    sub_23D83C6E4(v41, &qword_27E2ED260, &qword_23D8E08F8);
    v52 = v81;
    v53 = *(v81 + 56);
    v54 = v79;
    v53(v44, v42, 1, v79);
    v55 = v75;
    v78(v75, v85, v54);
    v53(v55, 0, 1, v54);
    v56 = *(v74 + 48);
    v57 = v77;
    sub_23D83C67C(v44, v77, &qword_27E2F0218, &qword_23D8E5650);
    sub_23D83C67C(v55, v57 + v56, &qword_27E2F0218, &qword_23D8E5650);
    v58 = *(v52 + 48);
    if (v58(v57, 1, v54) == 1)
    {
      sub_23D83C6E4(v55, &qword_27E2F0218, &qword_23D8E5650);
      sub_23D83C6E4(v44, &qword_27E2F0218, &qword_23D8E5650);
      if (v58(v57 + v56, 1, v54) == 1)
      {
        sub_23D83C6E4(v57, &qword_27E2F0218, &qword_23D8E5650);
        v59 = 0;
LABEL_15:
        v65 = sub_23D8DC080();
        *(v66 + *(v82 + 64)) = v59 & 1;
        v65(v86, 0);
        v68(v87, 0);
        goto LABEL_16;
      }
    }

    else
    {
      v60 = v71;
      sub_23D83C67C(v57, v71, &qword_27E2F0218, &qword_23D8E5650);
      if (v58(v57 + v56, 1, v54) != 1)
      {
        v61 = v81;
        v62 = v84;
        (*(v81 + 32))(v84, v57 + v56, v54);
        sub_23D8C67FC(&qword_27E2EFF98, MEMORY[0x277CE72E8], MEMORY[0x277CE72F8]);
        v63 = sub_23D8DE820();
        v64 = *(v61 + 8);
        v64(v62, v54);
        sub_23D83C6E4(v55, &qword_27E2F0218, &qword_23D8E5650);
        sub_23D83C6E4(v44, &qword_27E2F0218, &qword_23D8E5650);
        v64(v60, v54);
        sub_23D83C6E4(v57, &qword_27E2F0218, &qword_23D8E5650);
        v59 = v63 ^ 1;
        goto LABEL_15;
      }

      sub_23D83C6E4(v55, &qword_27E2F0218, &qword_23D8E5650);
      sub_23D83C6E4(v44, &qword_27E2F0218, &qword_23D8E5650);
      (*(v81 + 8))(v60, v54);
    }

    sub_23D83C6E4(v57, &qword_27E2F0208, &qword_23D8E5640);
    v59 = 1;
    goto LABEL_15;
  }

  sub_23D8DC9F0();
  sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  sub_23D8DD120();
  __break(1u);
}

uint64_t sub_23D8C546C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v16 = sub_23D8DD950();
  v15[0] = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXRTextFormatterSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F01E0, &unk_23D8E5610);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  v17 = sub_23D8DC580();
  swift_getKeyPath();
  sub_23D8CB4EC(a1, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRTextFormatterSheet);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_23D8CBE8C(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AXRTextFormatterSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F01F8, &qword_23D8E5638);
  sub_23D835AD0(&qword_27E2F0200, &qword_27E2F01F8, &qword_23D8E5638, MEMORY[0x277D83980]);
  sub_23D8C67FC(&qword_27E2F01D8, MEMORY[0x277CE72E8], MEMORY[0x277CE72F0]);
  sub_23D8DE4C0();
  v17 = sub_23D8DE230();
  sub_23D8DD940();
  sub_23D8CB2EC(&qword_27E2F01E8, &qword_27E2F01E0, &unk_23D8E5610);
  sub_23D8DDE60();
  (*(v15[0] + 8))(v4, v16);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23D8C57F4@<X0>(uint64_t a1@<X8>)
{
  v33[0] = a1;
  v1 = sub_23D8DCCB0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - v6;
  v8 = sub_23D8DC570();
  v10 = v9;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v11 = qword_27E2F3C80;
    v12 = sub_23D8DE830();

    v13 = sub_23D8DE830();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v8 = sub_23D8DE870();
    v10 = v15;
  }

  v34 = v8;
  v35 = v10;
  sub_23D83CB18();
  v16 = sub_23D8DDCB0();
  v18 = v17;
  v20 = v19;
  sub_23D8B4480(v7);
  (*(v2 + 104))(v5, *MEMORY[0x277CDF3C0], v1);
  v21 = sub_23D8DCCA0();
  v22 = *(v2 + 8);
  v22(v5, v1);
  v22(v7, v1);
  if (v21)
  {
    v23 = sub_23D8DE240();
  }

  else
  {
    v23 = sub_23D8DE220();
  }

  v34 = v23;
  v24 = sub_23D8DDC10();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_23D83CB6C(v16, v18, v20 & 1);

  v32 = v33[0];
  *v33[0] = v24;
  *(v32 + 8) = v26;
  *(v32 + 16) = v28 & 1;
  *(v32 + 24) = v30;
  return result;
}

uint64_t AXRTypeSpacingOption.title.getter()
{
  v1 = v0;
  v2 = sub_23D8DC620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CE7340])
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v7 = 0x6974706F2E727861;
    if (qword_27E2F3C80)
    {
LABEL_20:
      v8 = qword_27E2F3C80;
      v9 = sub_23D8DE830();
      v10 = sub_23D8DE830();
      v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

      v7 = sub_23D8DE870();
    }
  }

  else if (v6 == *MEMORY[0x277CE7348])
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v7 = 0x6974706F2E727861;
    if (qword_27E2F3C80)
    {
      goto LABEL_20;
    }
  }

  else if (v6 == *MEMORY[0x277CE7358])
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v7 = 0x6974706F2E727861;
    if (qword_27E2F3C80)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v6 != *MEMORY[0x277CE7350])
    {
      (*(v3 + 8))(v5, v2);
      return 0x746C7561666564;
    }

    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v7 = 0xD000000000000011;
    if (qword_27E2F3C80)
    {
      goto LABEL_20;
    }
  }

  return v7;
}

uint64_t sub_23D8C5F48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + a3[13] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[14];
      goto LABEL_9;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED380, &unk_23D8E0B10);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[20];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_23D8C61F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13] + 8) = (a2 - 1);
    return result;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[14];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED380, &unk_23D8E0B10);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[20];

  return v20(v21, a2, a2, v19);
}

void sub_23D8C64AC(uint64_t a1)
{
  sub_23D8CB954(319, &qword_27E2ED618, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23D8CB954(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23D8C6844(319, &qword_27E2ED608, &qword_27E2EE9E0, &qword_23D8E26D0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23D8C6844(319, &qword_27E2EFEA8, &qword_27E2EE9E0, &qword_23D8E26D0, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_23D851F1C(319, &qword_27E2ED018, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_23D8C6844(319, &qword_27E2EFEB0, &qword_27E2EDB90, &qword_23D8E52F0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_23D83675C(319);
              if (v7 <= 0x3F)
              {
                sub_23D8366C8(319);
                if (v8 <= 0x3F)
                {
                  sub_23D836838(319);
                  if (v9 <= 0x3F)
                  {
                    sub_23D8C6844(319, &qword_27E2EFEB8, &qword_27E2ED260, &qword_23D8E08F8, MEMORY[0x277CE11F8]);
                    if (v10 <= 0x3F)
                    {
                      sub_23D851F1C(319, &qword_27E2EE030, MEMORY[0x277D837D0]);
                      if (v11 <= 0x3F)
                      {
                        sub_23D85B5A8();
                        if (v12 <= 0x3F)
                        {
                          sub_23D8C6844(319, &qword_27E2ED268, &qword_27E2ED270, &qword_23D8E0900, MEMORY[0x277D83D88]);
                          if (v13 <= 0x3F)
                          {
                            sub_23D8CB954(319, &qword_27E2ED398, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                            if (v14 <= 0x3F)
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
  }
}

uint64_t sub_23D8C67FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23D8C6844(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23D8C68C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D8DC510();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0x800000023D8E6DF0;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v9 = 0xD000000000000012;
  if (qword_27E2F3C80)
  {
    v10 = qword_27E2F3C80;
    v11 = sub_23D8DE830();
    v12 = sub_23D8DE830();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v9 = sub_23D8DE870();
    v8 = v14;
  }

  if (*(a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48)))
  {

    sub_23D8DC970();
    sub_23D8DC9D0();

    (*(v5 + 8))(v7, v4);
    v15 = sub_23D8DC6F0();

    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v17 = type metadata accessor for AXRColorDisplayRowView(0);
    *(a2 + v17[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    result = swift_storeEnumTagMultiPayload();
    v19 = (a2 + v17[6]);
    *v19 = v9;
    v19[1] = v8;
    *(a2 + v17[7]) = v15;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D8C6BAC(uint64_t a1@<X2>, uint64_t (*a2)(uint64_t)@<X3>, _BYTE *a3@<X8>)
{
  v6 = sub_23D8DC510();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48)))
  {

    sub_23D8DC970();
    sub_23D8DC9D0();

    v10 = (*(v7 + 8))(v9, v6);
    v11 = a2(v10);

    *a3 = v11 & 1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

void sub_23D8C6D38(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(_BYTE *), uint64_t (*a7)(void))
{
  v35 = a7;
  v37 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v33[-v11];
  v12 = sub_23D8DC510();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  if (*(a4 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48)))
  {

    sub_23D8DC960();

    a5(v16);

    sub_23D8DC970();
    sub_23D8DC950();

    (*(v13 + 8))(v15, v12);
    v17 = sub_23D8B4868(v39);
    v19 = v18;
    v20 = sub_23D8DC140();
    v21 = *(*(v20 - 8) + 48);
    v22 = v21(v19, 1, v20);
    v34 = v16;
    if (!v22)
    {
      v23 = v37(v38);
      *(v24 + 1) = v16;
      v23(v38, 0);
    }

    v17(v39, 0);
    v25 = sub_23D8B4868(v39);
    if (v21(v26, 1, v20))
    {
      v25(v39, 0);
    }

    else
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
      v28 = v36;
      MEMORY[0x23EEF05A0](v27);
      if (v21(v28, 1, v20))
      {
        sub_23D83C6E4(v28, &qword_27E2ED260, &qword_23D8E08F8);
        v29 = 1;
      }

      else
      {
        v30 = v35();
        sub_23D83C6E4(v28, &qword_27E2ED260, &qword_23D8E08F8);
        v29 = v34 ^ v30;
      }

      v31 = v37(v38);
      *(v32 + 2) = v29 & 1;
      v31(v38, 0);
      v25(v39, 0);
    }
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D8C7120@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D8DC510();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0x800000023D8E6D30;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v9 = 0xD000000000000018;
  if (qword_27E2F3C80)
  {
    v10 = qword_27E2F3C80;
    v11 = sub_23D8DE830();
    v12 = sub_23D8DE830();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v9 = sub_23D8DE870();
    v8 = v14;
  }

  if (*(a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 48)))
  {

    sub_23D8DC970();
    sub_23D8DC9D0();

    (*(v5 + 8))(v7, v4);
    v15 = sub_23D8DC6B0();

    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v17 = type metadata accessor for AXRColorDisplayRowView(0);
    *(a2 + v17[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    result = swift_storeEnumTagMultiPayload();
    v19 = (a2 + v17[6]);
    *v19 = v9;
    v19[1] = v8;
    *(a2 + v17[7]) = v15;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8C7408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  sub_23D8C7764();
  v5 = sub_23D8B4868(&v33);
  v7 = v6;
  v8 = sub_23D8DC140();
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v7, 1, v8))
  {
    v10 = (a1 + *(type metadata accessor for AXRTextFormatterSheet(0) + 64));
    v11 = *v10;
    v12 = *(v10 + 2);
    v37 = v11;
    v38 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
    sub_23D8DE320();
    v14 = v35;
    v13 = v36;
    v15 = sub_23D8DC120();
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;

    v15(&v37, 0);
  }

  v5(&v33, 0);
  v17 = sub_23D8B4868(&v37);
  if (v9(v18, 1, v8))
  {
    return (v17)(&v37, 0);
  }

  v20 = type metadata accessor for AXRTextFormatterSheet(0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0);
  MEMORY[0x23EEF05A0](v21);
  v22 = v9(v4, 1, v8);
  v23 = 0;
  v24 = 0;
  if (!v22)
  {
    sub_23D8DC130();
    v24 = *(&v33 + 1);
    v23 = v33;
  }

  sub_23D83C6E4(v4, &qword_27E2ED260, &qword_23D8E08F8);
  v25 = (a1 + *(v20 + 64));
  v26 = *v25;
  v27 = *(v25 + 2);
  v33 = v26;
  v34 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE320();
  if (v24)
  {
    if (v23 == v35 && v24 == v36)
    {

      v28 = 0;
    }

    else
    {
      v29 = sub_23D8DED20();

      v28 = v29 ^ 1;
    }
  }

  else
  {

    v28 = 1;
  }

  v30 = sub_23D8DC120();
  *(v31 + 32) = v28 & 1;
  v30(&v33, 0);
  return (v17)(&v37, 0);
}

void sub_23D8C7764()
{
  v1 = v0;
  v2 = sub_23D8DC510();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXRTextFormatterSheet(0);
  v6 = (v0 + v5[16]);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v21 = *v6;
  v22 = v7;
  v23 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE320();
  v11 = v19;
  v10 = v20;

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v17 = v2;
    if (*(v1 + v5[12]))
    {

      sub_23D8DC960();

      v21 = v8;
      v22 = v7;
      v23 = v9;
      sub_23D8DE320();
      sub_23D8DC880();

      sub_23D8DC970();
      sub_23D8DC950();

      (*(v18 + 8))(v4, v17);
      v13 = (v1 + v5[17]);
      v14 = *v13;
      v15 = *(v13 + 1);
      LOBYTE(v13) = v13[16];
      LOBYTE(v21) = v14;
      v22 = v15;
      LOBYTE(v23) = v13;
      LOBYTE(v19) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE228, &qword_23D8E1D28);
      sub_23D8DCC30();
    }

    else
    {
      sub_23D8DC9F0();
      sub_23D8C67FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
      sub_23D8DD120();
      __break(1u);
    }
  }
}

uint64_t sub_23D8C79DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = sub_23D8DE8F0();
  result = type metadata accessor for AXRTextFormatterSheet(0);
  v8 = *(a3 + *(result + 72));
  if (v8 < v6)
  {

    v10 = sub_23D8CAD78(v8, v5, v4, v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    MEMORY[0x23EEF09F0](v10, v12, v14, v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
    return sub_23D8DE330();
  }

  return result;
}

uint64_t sub_23D8C7AE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXRColorDisplayRowView(0);
  sub_23D83C67C(v1 + *(v10 + 20), v9, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCF90();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D8C7CE8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23D8DD560();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFEC0, &qword_23D8E5348);
  return sub_23D8B5340(v2, a2 + *(v4 + 44));
}

unint64_t sub_23D8C7D74()
{
  result = qword_27E2EFEE0;
  if (!qword_27E2EFEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFEC8, &qword_23D8E5350);
    sub_23D835AD0(&qword_27E2EFEE8, &qword_27E2EFEF0, &qword_23D8E5368, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFEE0);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for AXRTextFormatterSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCCB0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D8DCF90();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DD850();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v5 + v1[7];
  v13 = sub_23D8DD850();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8);

  v15 = v5 + v1[14];

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0) + 32);
  v17 = sub_23D8DC140();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v15 + v16, 1, v17))
  {
    (*(v18 + 8))(v15 + v16, v17);
  }

  if (*(v5 + v1[19]) >= 2uLL)
  {
  }

  v19 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_23D8DCDE0();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8C8328(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_23D8C83A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = sub_23D8DD470();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23D8DCF90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0348, &qword_23D8E58B8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v46 - v11;
  v12 = type metadata accessor for AXRColorDisplayRowView(0);
  v13 = (a1 + *(v12 + 24));
  v14 = v13[1];
  *&v70[0] = *v13;
  *(&v70[0] + 1) = v14;
  sub_23D83CB18();

  v15 = sub_23D8DDCB0();
  v54 = v16;
  v55 = v15;
  v53 = v17;
  v56 = v18;
  sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);
  sub_23D8DEB40();
  v52 = sub_23D8DE130();
  sub_23D8DCD60();
  v19 = v72;
  v20 = v73;
  v21 = v74;
  v51 = v75;
  v22 = v76;
  v23 = sub_23D8DE5F0();
  v49 = v24;
  v50 = v23;
  v25 = *(a1 + *(v12 + 28));
  v26 = sub_23D8DE5F0();
  v47 = v27;
  v48 = v26;

  sub_23D8C7AE0(v7);
  LOBYTE(v14) = sub_23D8DCF80();
  v28 = *(v5 + 8);
  v28(v7, v4);
  if (v14)
  {
    v29 = [objc_opt_self() 0x1FBB5E328];
    [v29 bounds];
  }

  sub_23D8C7AE0(v7);
  v30 = sub_23D8DCF80();
  v28(v7, v4);
  if (v30)
  {
    v31 = [objc_opt_self() mainScreen];
    [v31 bounds];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v60 = v25;
  WORD4(v60) = 256;
  *&v61 = v19;
  *(&v61 + 1) = v20;
  *&v62 = v21;
  *(&v62 + 1) = v51;
  *&v63 = v22;
  *(&v63 + 1) = v52;
  LOWORD(v64) = 256;
  *(&v64 + 1) = v50;
  *&v65 = v49;
  *(&v65 + 1) = v48;
  *&v66 = v47;
  sub_23D8DD450();
  sub_23D8DD440();
  sub_23D8DD460();
  sub_23D8DD440();
  sub_23D8DD490();
  v32 = sub_23D8DDC90();
  v34 = v33;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0350, &qword_23D8E58C0);
  sub_23D8CBDD0();
  v37 = v57;
  sub_23D8DDE00();
  sub_23D83CB6C(v32, v34, v36 & 1);

  v70[6] = v66;
  v70[7] = v67;
  v70[8] = v68;
  v71 = v69;
  v70[2] = v62;
  v70[3] = v63;
  v70[4] = v64;
  v70[5] = v65;
  v70[0] = v60;
  v70[1] = v61;
  sub_23D83C6E4(v70, &qword_27E2F0350, &qword_23D8E58C0);
  v38 = v37;
  v39 = v58;
  sub_23D83C67C(v37, v58, &qword_27E2F0348, &qword_23D8E58B8);
  v40 = v59;
  v42 = v54;
  v41 = v55;
  *v59 = v55;
  v40[1] = v42;
  v43 = v53 & 1;
  *(v40 + 16) = v53 & 1;
  v40[3] = v56;
  v40[4] = 0;
  *(v40 + 40) = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0370, &qword_23D8E58D0);
  sub_23D83C67C(v39, v40 + *(v44 + 64), &qword_27E2F0348, &qword_23D8E58B8);
  sub_23D834028(v41, v42, v43);

  sub_23D83C6E4(v38, &qword_27E2F0348, &qword_23D8E58B8);
  sub_23D83C6E4(v39, &qword_27E2F0348, &qword_23D8E58B8);
  sub_23D83CB6C(v41, v42, v43);
}

uint64_t sub_23D8C8964()
{
  v1 = sub_23D8DD910();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0330, &qword_23D8E58A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_23D8DD420();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0338, &qword_23D8E58B0);
  sub_23D8C83A4(v0, &v7[*(v8 + 44)]);
  sub_23D8DD900();
  sub_23D835AD0(&qword_27E2F0340, &qword_27E2F0330, &qword_23D8E58A8, MEMORY[0x277CE1138]);
  sub_23D8DDEB0();
  (*(v2 + 8))(v4, v1);
  return sub_23D83C6E4(v7, &qword_27E2F0330, &qword_23D8E58A8);
}

uint64_t sub_23D8C8B24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18 = a1;
  v3 = type metadata accessor for AXRListDynamicSizeTextSlider(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_23D8DD910();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0378, &qword_23D8E58D8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  *v11 = sub_23D8DD420();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0380, &qword_23D8E58E0);
  sub_23D8C8DEC(v2, &v11[*(v12 + 44)]);
  sub_23D8DD900();
  sub_23D835AD0(&qword_27E2F0388, &qword_27E2F0378, &qword_23D8E58D8, MEMORY[0x277CE1138]);
  v13 = v18;
  sub_23D8DDEB0();
  (*(v6 + 8))(v8, v5);
  sub_23D83C6E4(v11, &qword_27E2F0378, &qword_23D8E58D8);
  sub_23D8CB4EC(v2, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRListDynamicSizeTextSlider);
  v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v15 = swift_allocObject();
  sub_23D8CBE8C(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AXRListDynamicSizeTextSlider);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0390, &qword_23D8E58E8);
  v17 = (v13 + *(result + 36));
  *v17 = sub_23D8CBEF4;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t sub_23D8C8DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v78 = a2;
  v2 = type metadata accessor for AXRListDynamicSizeTextSlider(0);
  v3 = v2 - 8;
  v72 = *(v2 - 8);
  v71 = *(v72 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03A0, &qword_23D8E58F8);
  MEMORY[0x28223BE20](v67);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03A8, &qword_23D8E5900);
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  MEMORY[0x28223BE20](v7);
  v68 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03B0, &unk_23D8E5908);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v77 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03B8, &qword_23D8E5918);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v76 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v73 = &v61 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v70 = &v61 - v23;
  MEMORY[0x28223BE20](v22);
  v66 = &v61 - v24;
  v25 = sub_23D8DE2C0();
  sub_23D8DDB00();
  v63 = sub_23D8DDAB0();
  v26 = *(v63 - 8);
  v64 = *(v26 + 56);
  v65 = v26 + 56;
  v64(v16, 1, 1, v63);
  v27 = sub_23D8DDB30();
  sub_23D83C6E4(v16, &qword_27E2ED4F8, &qword_23D8E0C40);
  KeyPath = swift_getKeyPath();
  v29 = sub_23D8DE210();
  v82 = v25;
  v83 = KeyPath;
  v84 = v27;
  v85 = v29;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03C0, &unk_23D8E5950);
  sub_23D8CBF28();
  sub_23D8DDE40();

  v30 = v62;
  v31 = (v62 + *(v3 + 28));
  v33 = v31[1];
  *&v81 = *v31;
  v32 = v81;
  *(&v81 + 1) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0398, &qword_23D8E58F0);
  sub_23D8DE340();
  v81 = xmmword_23D8E5280;
  v80 = 0x3FF0000000000000;
  sub_23D8CBFE0();
  v34 = MEMORY[0x277D839F8];
  sub_23D8DE3E0();
  v35 = sub_23D8DE200();
  v36 = swift_getKeyPath();
  v37 = v67;
  v38 = &v6[*(v67 + 36)];
  *v38 = v36;
  v38[1] = v35;
  v82 = v32;
  v83 = v33;
  sub_23D8DE320();
  v39 = v69;
  sub_23D8CB4EC(v30, v69, type metadata accessor for AXRListDynamicSizeTextSlider);
  v40 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v41 = swift_allocObject();
  sub_23D8CBE8C(v39, v41 + v40, type metadata accessor for AXRListDynamicSizeTextSlider);
  v42 = sub_23D8CC1D8();
  v43 = MEMORY[0x277D83A28];
  v44 = v68;
  sub_23D8DE060();

  sub_23D83C6E4(v6, &qword_27E2F03A0, &qword_23D8E58F8);
  v82 = v37;
  v83 = v34;
  v84 = v42;
  v85 = v43;
  swift_getOpaqueTypeConformance2();
  v45 = v79;
  v46 = v74;
  sub_23D8DDEE0();
  (*(v75 + 8))(v44, v46);
  v47 = sub_23D8DE2C0();
  sub_23D8DDB00();
  v64(v16, 1, 1, v63);
  v48 = sub_23D8DDB30();
  sub_23D83C6E4(v16, &qword_27E2ED4F8, &qword_23D8E0C40);
  v49 = swift_getKeyPath();
  v50 = sub_23D8DE210();
  v82 = v47;
  v83 = v49;
  v84 = v48;
  v85 = v50;
  v51 = v70;
  sub_23D8DDE40();

  v52 = v66;
  v53 = v73;
  sub_23D83C67C(v66, v73, &qword_27E2F03B8, &qword_23D8E5918);
  v54 = v77;
  sub_23D83C67C(v45, v77, &qword_27E2F03B0, &unk_23D8E5908);
  v55 = v51;
  v56 = v51;
  v57 = v76;
  sub_23D83C67C(v55, v76, &qword_27E2F03B8, &qword_23D8E5918);
  v58 = v78;
  sub_23D83C67C(v53, v78, &qword_27E2F03B8, &qword_23D8E5918);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F03E0, &qword_23D8E5998);
  sub_23D83C67C(v54, v58 + *(v59 + 48), &qword_27E2F03B0, &unk_23D8E5908);
  sub_23D83C67C(v57, v58 + *(v59 + 64), &qword_27E2F03B8, &qword_23D8E5918);
  sub_23D83C6E4(v56, &qword_27E2F03B8, &qword_23D8E5918);
  sub_23D83C6E4(v79, &qword_27E2F03B0, &unk_23D8E5908);
  sub_23D83C6E4(v52, &qword_27E2F03B8, &qword_23D8E5918);
  sub_23D83C6E4(v57, &qword_27E2F03B8, &qword_23D8E5918);
  sub_23D83C6E4(v54, &qword_27E2F03B0, &unk_23D8E5908);
  return sub_23D83C6E4(v53, &qword_27E2F03B8, &qword_23D8E5918);
}

void *sub_23D8C96B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = (a3 + *(type metadata accessor for AXRListDynamicSizeTextSlider(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  v14 = v8;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0398, &qword_23D8E58F0);
  result = sub_23D8DE320();
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 9.22337204e18)
  {
    v11 = v13;
    sub_23D8DE470();
    sub_23D8CC2BC(v11);
    return sub_23D83C6E4(v6, &qword_27E2F02E0, &unk_23D8E5740);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_23D8C9800(uint64_t a1)
{
  v2 = sub_23D8DCF90();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  sub_23D8DE470();
  MEMORY[0x23EEF05A0](v9);
  sub_23D83C6E4(v11, &qword_27E2F02E0, &unk_23D8E5740);
  (*(v3 + 32))(v6, v8, v2);
  v12 = (*(v3 + 88))(v6, v2);
  v13 = 0.0;
  if (v12 != *MEMORY[0x277CDF9F8])
  {
    v13 = 1.0;
    if (v12 != *MEMORY[0x277CDF9E0])
    {
      v13 = 2.0;
      if (v12 != *MEMORY[0x277CDF9E8])
      {
        v13 = 3.0;
        if (v12 != *MEMORY[0x277CDF9D8])
        {
          v13 = 4.0;
          if (v12 != *MEMORY[0x277CDF9F0])
          {
            v13 = 5.0;
            if (v12 != *MEMORY[0x277CDFA00])
            {
              v13 = 6.0;
              if (v12 != *MEMORY[0x277CDFA10])
              {
                v13 = 7.0;
                if (v12 != *MEMORY[0x277CDF988])
                {
                  v13 = 8.0;
                  if (v12 != *MEMORY[0x277CDF998])
                  {
                    v13 = 9.0;
                    if (v12 != *MEMORY[0x277CDF9A8])
                    {
                      v13 = 10.0;
                      if (v12 != *MEMORY[0x277CDF9B8])
                      {
                        v13 = 11.0;
                        if (v12 != *MEMORY[0x277CDF9D0])
                        {
                          (*(v3 + 8))(v6, v2);
                          v13 = 7.0;
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

  v14 = (a1 + *(type metadata accessor for AXRListDynamicSizeTextSlider(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  *&v18[1] = v13;
  v18[2] = v15;
  v18[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0398, &qword_23D8E58F0);
  return sub_23D8DE330();
}

uint64_t sub_23D8C9B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0328, &qword_23D8E58A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_23D8C9BCC(uint64_t a1)
{
  v2 = sub_23D8DCF90();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD210();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D8C9CAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D8C38D4(v4, a1);
}

unint64_t sub_23D8C9D2C()
{
  result = qword_27E2EFF70;
  if (!qword_27E2EFF70)
  {
    sub_23D856774(255, &qword_27E2EFF60, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EFF70);
  }

  return result;
}

uint64_t sub_23D8C9DC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_23D8C9E50()
{
  result = qword_27E2F0040;
  if (!qword_27E2F0040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0030, &qword_23D8E5460);
    sub_23D8C9EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0040);
  }

  return result;
}

unint64_t sub_23D8C9EDC()
{
  result = qword_27E2F0048;
  if (!qword_27E2F0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0048);
  }

  return result;
}

unint64_t sub_23D8C9F40()
{
  result = qword_27E2F0078;
  if (!qword_27E2F0078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0068, &qword_23D8E5478);
    sub_23D86052C();
    sub_23D8C9EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0078);
  }

  return result;
}

unint64_t sub_23D8C9FCC()
{
  result = qword_27E2F0080;
  if (!qword_27E2F0080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0070, &unk_23D8E5480);
    sub_23D8C67FC(&qword_27E2F0088, type metadata accessor for AXRSegmentedPicker, &protocol conformance descriptor for AXRSegmentedPicker);
    sub_23D8C67FC(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0080);
  }

  return result;
}

unint64_t sub_23D8CA134()
{
  result = qword_27E2F00B8;
  if (!qword_27E2F00B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00B0, &qword_23D8E54A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00C0, &qword_23D8E54A8);
    sub_23D8CA240();
    swift_getOpaqueTypeConformance2();
    sub_23D8C67FC(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F00B8);
  }

  return result;
}

unint64_t sub_23D8CA240()
{
  result = qword_27E2F00C8;
  if (!qword_27E2F00C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00C0, &qword_23D8E54A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00D0, &unk_23D8E54B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE1C0, &qword_23D8E1C80);
    sub_23D835AD0(&qword_27E2EE1B8, &qword_27E2EE1C0, &qword_23D8E1C80, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F00C8);
  }

  return result;
}

unint64_t sub_23D8CA388()
{
  result = qword_27E2F00E0;
  if (!qword_27E2F00E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00D8, &qword_23D8E54C0);
    sub_23D8CA444();
    sub_23D8C67FC(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F00E0);
  }

  return result;
}

unint64_t sub_23D8CA444()
{
  result = qword_27E2F00E8;
  if (!qword_27E2F00E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F00F0, &qword_23D8E54C8);
    sub_23D835AD0(&qword_27E2F00F8, &qword_27E2F0100, &unk_23D8E54D0, MEMORY[0x277CDF028]);
    sub_23D835AD0(&qword_27E2EF7E8, &qword_27E2EF7F0, &qword_23D8E4250, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F00E8);
  }

  return result;
}

unint64_t sub_23D8CA530()
{
  result = qword_27E2F0110;
  if (!qword_27E2F0110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EFFC8, &qword_23D8E53F0);
    sub_23D8C9F40();
    sub_23D8C67FC(&qword_27E2F0088, type metadata accessor for AXRSegmentedPicker, &protocol conformance descriptor for AXRSegmentedPicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0110);
  }

  return result;
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = type metadata accessor for AXRTextFormatterSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCCB0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D8DCF90();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DD850();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v5 + v1[7];
  v13 = sub_23D8DD850();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE88, &qword_23D8E52B8);

  v15 = v5 + v1[14];

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFE90, &unk_23D8E52C0) + 32);
  v17 = sub_23D8DC140();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v15 + v16, 1, v17))
  {
    (*(v18 + 8))(v15 + v16, v17);
  }

  if (*(v5 + v1[19]) >= 2uLL)
  {
  }

  v19 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_23D8DCDE0();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8CAB2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D8DD370();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D8CAB5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D8DD370();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D8CACA0(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D8C79DC(a1, a2, v6);
}

uint64_t sub_23D8CAD20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DD220();
  *a1 = result;
  return result;
}

uint64_t sub_23D8CAD78(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_23D8DE900();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_23D8CAE6C()
{
  result = qword_27E2F0190;
  if (!qword_27E2F0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0190);
  }

  return result;
}

uint64_t sub_23D8CB25C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_23D8CB2EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D8CB358@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DD220();
  *a1 = result;
  return result;
}

unint64_t sub_23D8CB3B0()
{
  result = qword_27E2F0280;
  if (!qword_27E2F0280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0240, &qword_23D8E5678);
    sub_23D835AD0(&qword_27E2F0288, &qword_27E2F0238, &qword_23D8E5670, MEMORY[0x277CDF038]);
    sub_23D835AD0(&qword_27E2ED4B8, &qword_27E2ED4C0, &qword_23D8E0C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0280);
  }

  return result;
}

uint64_t sub_23D8CB4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D8CB554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D8CB624(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXRTextFormatterSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_23D8CB6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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
}

uint64_t sub_23D8CB7C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_23D8CB890(uint64_t a1)
{
  sub_23D8CB954(319, &qword_27E2F02F8, MEMORY[0x277CDFA28], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_23D851F1C(319, &qword_27E2F0300, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23D8CB954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23D8CB9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23D8CBB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23D8CBC2C(uint64_t a1)
{
  sub_23D8CB954(319, &qword_27E2ED618, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23D8CB954(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23D8CBDD0()
{
  result = qword_27E2F0358;
  if (!qword_27E2F0358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0350, &qword_23D8E58C0);
    sub_23D835AD0(&qword_27E2F0360, &qword_27E2F0368, &qword_23D8E58C8, MEMORY[0x277CDF6D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0358);
  }

  return result;
}

uint64_t sub_23D8CBE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23D8CBF28()
{
  result = qword_27E2F03C8;
  if (!qword_27E2F03C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F03C0, &unk_23D8E5950);
    sub_23D8986D8();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F03C8);
  }

  return result;
}

unint64_t sub_23D8CBFE0()
{
  result = qword_27E2F03D0;
  if (!qword_27E2F03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F03D0);
  }

  return result;
}

uint64_t objectdestroy_144Tm()
{
  v1 = *(type metadata accessor for AXRListDynamicSizeTextSlider(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740) + 32);
  v6 = sub_23D8DCF90();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_23D8CC158(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXRListDynamicSizeTextSlider(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D8C96B4(a1, a2, v6);
}

unint64_t sub_23D8CC1D8()
{
  result = qword_27E2F03D8;
  if (!qword_27E2F03D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F03A0, &qword_23D8E58F8);
    sub_23D835AD0(&qword_27E2EE4B8, &qword_27E2EE4C0, &unk_23D8E2240, MEMORY[0x277CDF048]);
    sub_23D835AD0(&qword_27E2ED4B8, &qword_27E2ED4C0, &qword_23D8E0C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F03D8);
  }

  return result;
}

uint64_t sub_23D8CC2BC(unint64_t a1)
{
  v2 = sub_23D8DCF90();
  result = MEMORY[0x28223BE20](v2);
  if (a1 <= 0xB)
  {
    (*(v5 + 104))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_278BEC878 + a1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F02E0, &unk_23D8E5740);
    return sub_23D8DE460();
  }

  return result;
}

uint64_t sub_23D8CC3F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0330, &qword_23D8E58A8);
  sub_23D835AD0(&qword_27E2F0340, &qword_27E2F0330, &qword_23D8E58A8, MEMORY[0x277CE1138]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D8CC490()
{
  result = qword_27E2F03F0;
  if (!qword_27E2F03F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0390, &qword_23D8E58E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0378, &qword_23D8E58D8);
    sub_23D835AD0(&qword_27E2F0388, &qword_27E2F0378, &qword_23D8E58D8, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F03F0);
  }

  return result;
}

double sub_23D8CC60C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_23D8CC660()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v4 = *(v0 + 32);
    *(v0 + 32) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t AXRCoordinator.__allocating_init(withService:)(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t AXRCoordinator.init(withService:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_23D8CC790()
{
  result = sub_23D8DE830();
  qword_27E2F0400 = result;
  return result;
}

id static AXRCoordinator.readerContentNeedsRefreshNotification.getter(__n128 a1)
{
  if (qword_27E2ECEE0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E2F0400;

  return v2;
}

id sub_23D8CC824()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_23D8CC880(v0);
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_23D8CC880(uint64_t a1)
{
  v1 = sub_23D8DCAF0();
  MEMORY[0x28223BE20](v1 - 8);
  swift_weakInit();
  swift_weakInit();
  swift_weakDestroy();
  swift_weakDestroy();
  sub_23D878CCC(&unk_284FD4D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F0450, &qword_23D8E5A80);
  swift_arrayDestroy();
  sub_23D8DCAC0();
  v2 = [objc_opt_self() mainRunLoop];
  v3 = objc_allocWithZone(sub_23D8DC480());
  return sub_23D8DC470();
}

uint64_t sub_23D8CC9A0()
{
  sub_23D8DE9D0();
  *(v0 + 16) = sub_23D8DE9C0();
  v2 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8CF86C, v2, v1);
}

uint64_t sub_23D8CCA34()
{
  sub_23D8DE9D0();
  *(v0 + 16) = sub_23D8DE9C0();
  v2 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8CCAC8, v2, v1);
}

uint64_t sub_23D8CCAC8()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_27E2ECEE0 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_27E2F0400 object:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AXRCoordinator.start()()
{
  v1[6] = v0;
  v2 = sub_23D8DCAF0();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_23D8DE9D0();
  v1[11] = sub_23D8DE9C0();
  v4 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8CCC9C, v4, v3);
}

uint64_t sub_23D8CCC9C()
{

  sub_23D8DCAC0();

  v1 = sub_23D8DCAE0();
  v2 = sub_23D8DEA80();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 48);

    _os_log_impl(&dword_23D82C000, v1, v2, "Coordinator asked to start Accessibility Reader. isRunning: %{BOOL}d", v5, 8u);
    MEMORY[0x23EEF15F0](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[6];
  (*(v0[8] + 8))(v0[10], v0[7]);
  if ((*(v6 + 48) & 1) == 0)
  {
    v7 = sub_23D8CC824();
    sub_23D8DC440();

    *(v6 + 48) = 1;
  }

  v8 = v0[1];

  return v8();
}

uint64_t AXRCoordinator.stop()()
{
  v1[6] = v0;
  v2 = sub_23D8DCAF0();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_23D8DE9D0();
  v1[11] = sub_23D8DE9C0();
  v4 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8CD064, v4, v3);
}

uint64_t sub_23D8CD064()
{

  sub_23D8DCAC0();

  v1 = sub_23D8DCAE0();
  v2 = sub_23D8DEA80();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 48);

    _os_log_impl(&dword_23D82C000, v1, v2, "Coordinator asked to stop Accessibility Reader. isRunning=%{BOOL}d", v5, 8u);
    MEMORY[0x23EEF15F0](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[6];
  (*(v0[8] + 8))(v0[10], v0[7]);
  if (*(v6 + 48) == 1)
  {
    v7 = sub_23D8CC824();
    sub_23D8DC450();

    *(v6 + 48) = 0;
  }

  v8 = v0[1];

  return v8();
}

uint64_t AXRCoordinator.showReaderView()()
{
  v1[27] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF848, &qword_23D8E4530);
  v1[28] = swift_task_alloc();
  v2 = type metadata accessor for AXRRootView(0);
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v3 = sub_23D8DC4D0();
  v1[32] = v3;
  v1[33] = *(v3 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F0410, &unk_23D8E1540);
  v1[36] = swift_task_alloc();
  v4 = sub_23D8DC170();
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = sub_23D8DCAF0();
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  sub_23D8DE9D0();
  v1[47] = sub_23D8DE9C0();
  v7 = sub_23D8DE9B0();
  v1[48] = v7;
  v1[49] = v6;

  return MEMORY[0x2822009F8](sub_23D8CD5E0, v7, v6);
}

uint64_t sub_23D8CD5E0(uint64_t a1)
{
  sub_23D8DCAC0();

  v2 = sub_23D8DCAE0();
  v3 = sub_23D8DEA80();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 216);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = *(v5 + 48);

    _os_log_impl(&dword_23D82C000, v2, v3, "Coordinator asked to Show Accessibility Reader View. is Accessibility Reader running: %{BOOL}d", v6, 8u);
    MEMORY[0x23EEF15F0](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + 368);
  v8 = *(v1 + 328);
  v9 = *(v1 + 336);
  v10 = *(v9 + 8);
  *(v1 + 400) = v10;
  *(v1 + 408) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  *(v1 + 416) = sub_23D8DEA70();
  v11 = MEMORY[0x23EEF0BB0]();
  v12 = *MEMORY[0x277CE7930];
  swift_beginAccess();
  v13 = *(v11 + v12);

  LOBYTE(v11) = sub_23D8DEA50();
  if ((v11 & 1) == 0)
  {

    sub_23D8DCAC0();
    v15 = sub_23D8DCAE0();
    v16 = sub_23D8DEAA0();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v1 + 352);
    v19 = *(v1 + 328);
    if (v17)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23D82C000, v15, v16, "Accessibility Reader is not enabled", v20, 2u);
      MEMORY[0x23EEF15F0](v20, -1, -1);
    }

    v10(v18, v19);
    goto LABEL_13;
  }

  v14 = sub_23D8CC824();
  sub_23D8DC460();
  v21 = *(v1 + 296);
  v22 = *(v1 + 304);
  v23 = *(v1 + 288);

  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    v24 = *(v1 + 288);

    sub_23D83C6E4(v24, &unk_27E2F0410, &unk_23D8E1540);
LABEL_13:

    v29 = *(v1 + 8);

    return v29();
  }

  v25 = *(v1 + 216);
  (*(*(v1 + 304) + 32))(*(v1 + 320), *(v1 + 288), *(v1 + 296));
  v26 = *(v1 + 320);
  if (*(v25 + 24))
  {
    v28 = *(v1 + 296);
    v27 = *(v1 + 304);

    (*(v27 + 8))(v26, v28);
    goto LABEL_13;
  }

  v31 = *(v1 + 304);
  v32 = *(v1 + 312);
  v33 = *(v1 + 280);
  v62 = *(v1 + 296);
  v63 = *(v1 + 272);
  v34 = *(v1 + 264);
  v35 = *(v1 + 248);
  v66 = *(v1 + 240);
  v64 = *(v1 + 256);
  v65 = *(v1 + 224);
  v67 = *(v1 + 232);
  v68 = *(v1 + 216);
  sub_23D8DC900();
  swift_allocObject();
  v69 = v25;
  sub_23D8DC8F0();
  sub_23D8DC8D0();

  (*(v31 + 16))(v32, v26, v62);
  (*(v34 + 16))(v63, v33, v64);
  v36 = objc_allocWithZone(sub_23D8DC430());
  v37 = sub_23D8DC400();
  *(v1 + 424) = v37;
  objc_allocWithZone(type metadata accessor for AXRRootViewController(0));
  sub_23D8DC9F0();
  swift_allocObject();

  v38 = v37;
  sub_23D8DC9E0();
  *v35 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  swift_storeEnumTagMultiPayload();
  v39 = v35 + v67[5];
  *(v1 + 464) = 0;
  sub_23D8DE310();
  v40 = *(v1 + 200);
  *v39 = *(v1 + 192);
  *(v39 + 1) = v40;
  v41 = (v35 + v67[8]);
  v42 = (v35 + v67[6]);
  sub_23D8CF700(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v43 = v38;
  *v42 = sub_23D8DCEF0();
  v42[1] = v44;
  v45 = (v35 + v67[7]);
  sub_23D8CF700(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v46 = sub_23D8DCEF0();
  v48 = v47;

  *v45 = v46;
  v45[1] = v48;
  *v41 = sub_23D8CF6DC;
  v41[1] = v68;
  sub_23D8AA1B0(v35, v65);
  (*(v66 + 56))(v65, 0, 1, v67);
  v49 = sub_23D8DD5E0();
  sub_23D8AA214(v35);
  v50 = *(v69 + 24);
  *(v69 + 24) = v49;

  sub_23D8DCAC0();
  v51 = sub_23D8DCAE0();
  v52 = sub_23D8DEA90();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_23D82C000, v51, v52, "Show Accessibility Reader UI View", v53, 2u);
    MEMORY[0x23EEF15F0](v53, -1, -1);
  }

  v54 = *(v1 + 360);
  v55 = *(v1 + 328);

  v10(v54, v55);
  v56 = sub_23D8CC660();
  *(v1 + 432) = v56;
  v57 = *(v69 + 24);
  *(v1 + 440) = v57;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 448) = Strong;
  v59 = v57;
  v60 = sub_23D8DE830();
  *(v1 + 456) = v60;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 465;
  *(v1 + 24) = sub_23D8CDF70;
  v61 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0430, &qword_23D8E5A00);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_23D8CE778;
  *(v1 + 104) = &block_descriptor_6;
  *(v1 + 112) = v61;
  [v56 addContentViewController:v59 withUserInteractionEnabled:1 forService:Strong forSceneClientIdentifier:v60 context:0 userInterfaceStyle:1 forWindowScene:0 completion:v1 + 80];

  return MEMORY[0x282200938](v1 + 16);
}