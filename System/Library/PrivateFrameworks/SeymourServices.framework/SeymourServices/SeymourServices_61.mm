double sub_2274EAC5C()
{
  v0 = sub_22766B3B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B3F0();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B3C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  (*(v8 + 104))(v10, *MEMORY[0x277D851D0], v7);
  v11 = sub_22766C980();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_2274EB390;
  aBlock[5] = v14[1];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_36;
  v12 = _Block_copy(aBlock);

  sub_22766B3D0();
  v16 = MEMORY[0x277D84F90];
  sub_226E9D3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v6, v3, v12);
  _Block_release(v12);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v15);

  return result;
}

uint64_t sub_2274EAF88(uint64_t a1)
{
  v2 = sub_22766B3B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B3F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2274EAB54();
  sub_226EA1CF4();
  v11 = sub_22766C950();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v10 & 1;
  aBlock[4] = sub_2274EB398;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_9_0;
  v13 = _Block_copy(aBlock);

  sub_22766B3D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_226E9D3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_2274EB224(void *a1, char a2)
{
  v4 = a1[8];
  v5 = sub_22766BFD0();
  v9 = v5;
  if (a2)
  {
    [v4 setBool:1 forKey:v5];
  }

  else
  {
    [v4 removeObjectForKey_];

    v6 = a1[9];
    if (v6)
    {
      v7 = a1[10];

      v6(v8);

      sub_226EA9E3C(v6, v7);
    }
  }
}

uint64_t sub_2274EB324()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_226EA9E3C(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

void sub_2274EB3AC(void *a1)
{
  v2 = [a1 version];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    [a1 state];
    sub_22717ADEC();
    sub_227663AE0();
    sub_2274EB8DC();
    sub_227663AE0();
    sub_2276689B0();
  }

  else
  {
    v4 = sub_227664DD0();
    sub_2274EB9C8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51028], v4);
    swift_willThrow();
  }
}

void *static PersonalizationPrivacyPreference.representativeSamples()()
{
  v16 = sub_227668A00();
  v0 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2274EB834();
  sub_22717ADEC();
  v3 = sub_227663B50();
  sub_2274EB888();
  sub_2274EB8DC();
  v22 = sub_227663B50();
  v23[0] = v3;
  v23[1] = v23;
  v23[2] = &v22;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE138, &qword_227688C48);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE140, &qword_227688C50);
  v18 = sub_226F5BF60(&qword_27D7BE148, &qword_27D7BE138, &qword_227688C48);
  v19 = sub_226F5BF60(&qword_27D7BE150, &qword_27D7BE140, &qword_227688C50);
  v4 = sub_2276638E0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    result = sub_226F20788(0, v5, 0);
    v7 = 0;
    v8 = v17;
    v13[1] = v0 + 32;
    v14 = v5;
    v9 = (v4 + 64);
    v15 = v4;
    while (v7 < *(v4 + 16))
    {
      v10 = v2;
      sub_226EB396C(*(v9 - 2), *(v9 - 1), *v9);
      sub_2276689B0();
      v17 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_226F20788((v11 > 1), v12 + 1, 1);
        v8 = v17;
      }

      ++v7;
      *(v8 + 16) = v12 + 1;
      result = (*(v0 + 32))(v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v12, v10, v16);
      v9 += 40;
      v2 = v10;
      v4 = v15;
      if (v14 == v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2274EB834()
{
  result = qword_27D7BE128;
  if (!qword_27D7BE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE128);
  }

  return result;
}

unint64_t sub_2274EB888()
{
  result = qword_27D7BE130;
  if (!qword_27D7BE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE130);
  }

  return result;
}

unint64_t sub_2274EB8DC()
{
  result = qword_28139B458;
  if (!qword_28139B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B458);
  }

  return result;
}

uint64_t sub_2274EB970(uint64_t a1)
{
  result = sub_2274EB9C8(&qword_2813A5550, MEMORY[0x277D53708], &protocol conformance descriptor for PersonalizationPrivacyPreference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274EB9C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2274EBA10(void *a1)
{
  sub_2276689C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE158, &unk_227688CA0);
  sub_227663AD0();
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    [a1 setState_];
    v2 = sub_2276689F0();
    v4 = v3;
    v6 = v5 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE990, &qword_22768B6F0);
    sub_227663AD0();
    v7 = sub_22766BFD0();
    sub_226EB2DFC(v2, v4, v6);

    [a1 setVersion_];

    return;
  }

  __break(1u);
}

uint64_t sub_2274EBB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE160, qword_227688CF8);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v35[0] = a1;
  v35[1] = a2;
  sub_226F06498();

  v15 = sub_22766C820();
  sub_226ED25F8(v35, v33);
  v16 = v34;
  if (v34)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v33, v34);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE168 &qword_227688D40))];

  sub_226EBC888(v35);
  swift_beginAccess();
  v25 = v24;
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v35, 0);
  swift_endAccess();

  v29 = MEMORY[0x22AA99A00]();
  sub_227544F0C(a4);
  objc_autoreleasePoolPop(v29);
  swift_setDeallocating();

  v30 = qword_2813B2078;
  v31 = sub_22766A100();
  (*(*(v31 - 8) + 8))(v12 + v30, v31);
  return swift_deallocClassInstance();
}

uint64_t sub_2274EBF64@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE170, qword_227688D48);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_227662390();
  v12 = v11;
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v33[0] = v10;
  v33[1] = v12;
  sub_226F06498();

  v13 = sub_22766C820();
  sub_226ED25F8(v33, v31);
  v14 = v32;
  if (v32)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v31, v32);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v22 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE178 &qword_227688D88))];

  sub_226EBC888(v33);
  swift_beginAccess();
  v23 = v22;
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v33, 0);
  swift_endAccess();

  v27 = MEMORY[0x22AA99A00]();
  sub_227544EA4(v34);
  objc_autoreleasePoolPop(v27);
  swift_setDeallocating();

  v28 = qword_2813B2078;
  v29 = sub_22766A100();
  (*(*(v29 - 8) + 8))(v7 + v28, v29);
  return swift_deallocClassInstance();
}

uint64_t sub_2274EC368(uint64_t a1)
{
  sub_2274EC5DC(v1, v7);
  v2 = v8;
  if (v10)
  {
    v4 = v9;
    sub_226E92AB8(v7, v5);
    sub_22766C100();
    __swift_project_boxed_opaque_existential_0(v5, v6);
    sub_22766BF60();
    sub_22766C100();
    MEMORY[0x22AA996B0](v2);
    sub_22766D3A0();

    sub_22766D3A0();
    sub_22766C100();
    MEMORY[0x22AA996B0](v4);
  }

  else
  {
    sub_226E92AB8(v7, v5);
    sub_22766C100();
    __swift_project_boxed_opaque_existential_0(v5, v6);
    sub_22766BF60();
    sub_22766C100();
    MEMORY[0x22AA996B0](v2);
  }

  sub_22766D3A0();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_2274EC500()
{
  sub_22766D370();
  sub_2274EC368(v1);
  return sub_22766D3F0();
}

uint64_t sub_2274EC544(uint64_t a1)
{
  sub_22766D370();
  sub_2274EC368(v2);
  return sub_22766D3F0();
}

unint64_t sub_2274EC588()
{
  result = qword_27D7BE180;
  if (!qword_27D7BE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE180);
  }

  return result;
}

BOOL sub_2274EC614(uint64_t a1, uint64_t a2)
{
  sub_2274EC5DC(a2, v7);
  sub_22766D400();
  sub_2274EC368(v6);
  sub_22766D400();
  sub_2274EC368(v5);
  v2 = sub_22766D3E0();
  v3 = sub_22766D3E0();
  sub_2274EC6A0(v7);
  return v2 == v3;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2274EC708(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 114))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 113);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2274EC744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 113) = -a2;
    }
  }

  return result;
}

uint64_t sub_2274EC79C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 113) = a2;
  return result;
}

uint64_t sub_2274EC7E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1A0, &qword_227688F70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2274ED794();
  sub_22766D480();
  v16 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_2274ED820(&v16, v11);
  sub_2273A486C();
  sub_22766D120();
  if (v2)
  {
    sub_226EDC420(v13, *(&v13 + 1));
  }

  else
  {
    sub_226EDC420(v13, *(&v13 + 1));
    v15 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_2274ED820(&v15, v11);
    sub_22766D120();
    sub_226EDC420(v13, *(&v13 + 1));
    v13 = v3[2];
    v14 = v13;
    v12 = 2;
    sub_2274ED820(&v14, v11);
    sub_22766D120();
    sub_226EDC420(v13, *(&v13 + 1));
    LOBYTE(v13) = 3;
    sub_22766D0F0();
    LOBYTE(v13) = 4;
    sub_22766D0F0();
    LOBYTE(v13) = 5;
    sub_22766D0F0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2274ECA84()
{
  v1 = *v0;
  v2 = 0x666F6F7270;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x6E4963696C627570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x5365746176697270;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_2274ECB58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2274ED05C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2274ECB80(uint64_t a1)
{
  v2 = sub_2274ED794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2274ECBBC(uint64_t a1)
{
  v2 = sub_2274ED794();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2274ECBF8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2274ED270(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_2274ECC5C()
{
  sub_22766D370();
  sub_2276625A0();
  sub_2276625A0();
  sub_2276625A0();
  sub_22766C100();
  sub_22766C100();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2274ECD30(uint64_t a1)
{
  sub_2276625A0();
  sub_2276625A0();
  sub_2276625A0();
  sub_22766C100();
  sub_22766C100();

  return sub_22766C100();
}

uint64_t sub_2274ECDF4(uint64_t a1)
{
  sub_22766D370();
  sub_2276625A0();
  sub_2276625A0();
  sub_2276625A0();
  sub_22766C100();
  sub_22766C100();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2274ECEC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_2274ECF78(v9, v10) & 1;
}

unint64_t sub_2274ECF24()
{
  result = qword_27D7BE188;
  if (!qword_27D7BE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE188);
  }

  return result;
}

uint64_t sub_2274ECF78(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_227130B5C(*a1, a1[1], *a2, a2[1]) || !sub_227130B5C(a1[2], a1[3], a2[2], a2[3]) || !sub_227130B5C(a1[4], a1[5], a2[4], a2[5]) || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_22766D190() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  if (a1[10] == a2[10] && a1[11] == a2[11])
  {
    return 1;
  }

  return sub_22766D190();
}

uint64_t sub_2274ED05C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022769B8F0 == a2 || (sub_22766D190() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666F6F7270 && a2 == 0xE500000000000000 || (sub_22766D190() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5365746176697270 && a2 == 0xEB00000000646565 || (sub_22766D190() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002276A2C10 == a2 || (sub_22766D190() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002276A2C30 == a2 || (sub_22766D190() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E4963696C627570 && a2 == 0xEA00000000006F66)
  {

    return 5;
  }

  else
  {
    v5 = sub_22766D190();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2274ED270@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE190, &qword_227688F68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2274ED794();
  sub_22766D460();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v34 = a2;
  LOBYTE(v35) = 0;
  sub_2273A4818();
  sub_22766D0B0();
  v9 = v41[0];
  LOBYTE(v35) = 1;
  sub_22766D0B0();
  v33 = *(&v9 + 1);
  v32 = v41[0];
  LOBYTE(v35) = 2;
  sub_22766D0B0();
  v31 = v41[0];
  LOBYTE(v41[0]) = 3;
  v10 = sub_22766D080();
  v30 = v11;
  LOBYTE(v41[0]) = 4;
  *&v29 = sub_22766D080();
  *(&v29 + 1) = v12;
  v47 = 5;
  v13 = sub_22766D080();
  v14 = *(v6 + 8);
  v15 = v13;
  v28 = v16;
  v14(v8, v5);
  *&v35 = v9;
  *(&v35 + 1) = v33;
  v17 = v32;
  v36 = v32;
  v20 = v31;
  v18 = v20 >> 64;
  v19 = v20;
  v37 = v31;
  *&v38 = v10;
  *(&v38 + 1) = v30;
  v39 = v29;
  *&v40 = v15;
  v21 = v28;
  *(&v40 + 1) = v28;
  sub_2274ED7E8(&v35, v41);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v41[0] = v9;
  *(&v41[0] + 1) = v33;
  v41[1] = __PAIR128__(*(&v32 + 1), v17);
  v41[2] = __PAIR128__(v18, v19);
  v42 = v10;
  v43 = v30;
  v44 = v29;
  v45 = v15;
  v46 = v21;
  result = sub_227215CCC(v41);
  v23 = v38;
  v24 = v34;
  v34[2] = v37;
  v24[3] = v23;
  v25 = v40;
  v24[4] = v39;
  v24[5] = v25;
  v26 = v36;
  *v24 = v35;
  v24[1] = v26;
  return result;
}

unint64_t sub_2274ED794()
{
  result = qword_27D7BE198;
  if (!qword_27D7BE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EvaluatedElementContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EvaluatedElementContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2274ED9CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2274EDA14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2274EDA80()
{
  result = qword_27D7BE1A8;
  if (!qword_27D7BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1A8);
  }

  return result;
}

unint64_t sub_2274EDAD8()
{
  result = qword_27D7BE1B0;
  if (!qword_27D7BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1B0);
  }

  return result;
}

unint64_t sub_2274EDB30()
{
  result = qword_27D7BE1B8;
  if (!qword_27D7BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1B8);
  }

  return result;
}

void *sub_2274EDB84(uint64_t a1)
{
  v60 = sub_227662B60();
  v2 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227665440();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  MEMORY[0x28223BE20](v65);
  v64 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v54 - v10;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v61 = v6 + 32;
  v62 = v6 + 16;
  v66 = v6;
  v70 = v6 + 8;
  v54 = v2 + 16;
  v55 = v2;
  v57 = (v2 + 8);

  v16 = 0;
  v17 = MEMORY[0x277D84F98];
  v73 = v4;
  v58 = a1 + 64;
  v59 = v5;
  v63 = v15;
  v56 = a1;
  if (v14)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v18 >= v15)
    {

      return v17;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
  }

  while (!v14);
  v69 = v17;
  while (1)
  {
    v19 = __clz(__rbit64(v14)) | (v18 << 6);
    v20 = v66;
    v21 = v71;
    (*(v66 + 16))(v71, *(a1 + 48) + *(v66 + 72) * v19, v5);
    v22 = *(*(a1 + 56) + 8 * v19);
    v23 = a1;
    v25 = v64;
    v24 = v65;
    *(v21 + *(v65 + 48)) = v22;
    sub_2274EE198(v21, v25);

    (*(v20 + 32))(v72, v25, v5);
    sub_2274EE198(v21, v25);
    v26 = *(v25 + *(v24 + 48));
    v68 = *(v20 + 8);
    v68(v25, v5);
    sub_227665400();
    sub_227665410();
    sub_227665420();
    sub_227665430();
    v27 = v73;
    sub_227662B40();
    v28 = *(v26 + 16);
    if (v28)
    {
      v74 = MEMORY[0x277D84F90];
      sub_226F1F748(0, v28, 0);
      v29 = v74;
      v67 = v26;
      v30 = (v26 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v74 = v29;
        v34 = v29[2];
        v33 = v29[3];

        if (v34 >= v33 >> 1)
        {
          sub_226F1F748((v33 > 1), v34 + 1, 1);
          v29 = v74;
        }

        v29[2] = v34 + 1;
        v35 = &v29[2 * v34];
        v35[4] = v31;
        v35[5] = v32;
        v30 += 2;
        --v28;
      }

      while (v28);

      a1 = v56;
      v36 = v73;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
      a1 = v23;
      v36 = v27;
    }

    v37 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v37;
    v39 = sub_226F3A7D0(v36);
    v41 = v37[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    v15 = v63;
    if (v43)
    {
      break;
    }

    v45 = v40;
    if (v37[3] >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = v39;
        sub_226FF0A6C();
        v39 = v52;
        v36 = v73;
      }
    }

    else
    {
      sub_226FE2FFC(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_226F3A7D0(v36);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_32;
      }
    }

    v11 = v58;
    v14 &= v14 - 1;
    v17 = v74;
    if (v45)
    {
      *(v74[7] + 8 * v39) = v29;

      (*v57)(v36, v60);
      v5 = v59;
      v68(v72, v59);
      sub_2274EE208(v71);
      v16 = v18;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v74[(v39 >> 6) + 8] |= 1 << v39;
      v47 = v55;
      v48 = v39;
      v49 = v60;
      (*(v55 + 16))(v17[6] + *(v55 + 72) * v39, v73, v60);
      *(v17[7] + 8 * v48) = v29;
      (*(v47 + 8))(v73, v49);
      v5 = v59;
      v68(v72, v59);
      sub_2274EE208(v71);
      v50 = v17[2];
      v43 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v43)
      {
        goto LABEL_31;
      }

      v17[2] = v51;
      v16 = v18;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v69 = v17;
    v18 = v16;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2274EE198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274EE208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2274EE270(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1C0, &qword_227689240);
  if (swift_dynamicCast())
  {
    sub_226E92AB8(__src, &v43);
    __swift_project_boxed_opaque_existential_0(&v43, v44);
    sub_2276621A0();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2274F14A0(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22766CEC0();
  }

  sub_2274F0B5C(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2274F1300(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  sub_2274F0C24(sub_2274F1508, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_227662530();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2274F117C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22766C160();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22766C190();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22766CEC0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2274F117C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22766C170();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_227662540();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_227662540();
    sub_226FB1424(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_226FB1424(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_226F5E0B4(*&__src[0], *(&__src[0] + 1));

  sub_226EDC420(v32, *(&v32 + 1));
  return v32;
}

void *sub_2274EE780(char a1)
{
  v2 = sub_22766B390();
  v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v9;
  v10 = sub_2276624A0();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BFD0();
  v14 = [objc_opt_self() bundleWithIdentifier_];

  if (v14)
  {
    v48 = v2;
    strcpy(v53, "CatalogModel ");
    HIWORD(v53[1]) = -4864;
    v15 = sub_2274E2FEC(a1);
    MEMORY[0x22AA98450](v15);

    v16 = v53[1];
    v17 = v53[0];
    v18 = sub_22766BFD0();
    v19 = v14;
    v20 = sub_22766BFD0();
    v21 = sub_22766BFD0();
    v50 = v19;
    v22 = [v19 URLForResource:v18 withExtension:v20 subdirectory:v21];

    if (v22)
    {
      sub_227662430();

      v23 = objc_allocWithZone(MEMORY[0x277CBE450]);
      v24 = sub_2276623E0();
      v25 = [v23 initWithContentsOfURL_];

      if (v25)
      {
        v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v27 = sub_22766BFD0();

        v28 = [v26 initWithName:v27 managedObjectModel:v25];

        (*(v51 + 8))(v12, v52);
      }

      else
      {

        v40 = v49;
        sub_22766A770();
        v41 = sub_22766B380();
        v42 = sub_22766C890();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_226E8E000, v41, v42, "Failed to load managed object model", v43, 2u);
          MEMORY[0x22AA9A450](v43, -1, -1);
        }

        (*(v54 + 8))(v40, v48);
        v28 = sub_227664DD0();
        sub_2274F1590(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v28 - 1) + 104))(v44, *MEMORY[0x277D51020], v28);
        swift_willThrow();

        (*(v51 + 8))(v12, v52);
      }
    }

    else
    {
      sub_22766A770();

      v34 = sub_22766B380();
      v35 = sub_22766C890();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v53[0] = v37;
        *v36 = 136446210;
        v38 = sub_226E97AE8(v17, v16, v53);

        *(v36 + 4) = v38;
        _os_log_impl(&dword_226E8E000, v34, v35, "Error loading model with filename: '%{public}s'", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x22AA9A450](v37, -1, -1);
        MEMORY[0x22AA9A450](v36, -1, -1);
      }

      else
      {
      }

      (*(v54 + 8))(v7, v48);
      v45 = v50;
      v28 = sub_227664DD0();
      sub_2274F1590(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v28 - 1) + 104))(v46, *MEMORY[0x277D51020], v28);
      swift_willThrow();
    }
  }

  else
  {
    sub_22766A770();
    v29 = sub_22766B380();
    v30 = sub_22766C890();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v2;
      v33 = swift_slowAlloc();
      v53[0] = v33;
      *v31 = 136446210;
      *(v31 + 4) = sub_226E97AE8(0xD000000000000019, 0x800000022769A030, v53);
      _os_log_impl(&dword_226E8E000, v29, v30, "Error loading bundle with name: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v31, -1, -1);

      (*(v54 + 8))(v4, v32);
    }

    else
    {

      (*(v54 + 8))(v4, v2);
    }

    v28 = sub_227664DD0();
    sub_2274F1590(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v28 - 1) + 104))(v39, *MEMORY[0x277D51020], v28);
    swift_willThrow();
  }

  return v28;
}

unint64_t sub_2274EEF88(uint64_t a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v11 = [v1 persistentStoreCoordinator];
  v12 = [v11 metadataForPersistentStore_];

  v13 = sub_22766BEB0();
  sub_22766A770();

  v14 = sub_22766B380();
  v15 = sub_22766C880();

  v16 = os_log_type_enabled(v14, v15);
  v49 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v50 = v18;
    *v17 = 136315138;
    if (*(v13 + 16) && (v19 = sub_226E92000(0xD000000000000013, 0x80000002276A1760), (v20 & 1) != 0))
    {
      sub_226E97CC0(*(v13 + 56) + 32 * v19, v52);
      if (swift_dynamicCast())
      {
        v21 = v51;
      }

      else
      {
        v21 = 0uLL;
        v51 = 0u;
      }

      v23 = v4;
    }

    else
    {
      v23 = v4;
      v21 = 0uLL;
      v51 = 0u;
    }

    v52[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v24 = sub_22766CB80();
    v26 = v25;

    v27 = sub_226E97AE8(v24, v26, &v50);

    *(v17 + 4) = v27;
    _os_log_impl(&dword_226E8E000, v14, v15, "Data Version: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    v22 = *(v23 + 8);
    v3 = v49;
    v22(v10, v49);
  }

  else
  {

    v22 = *(v4 + 8);
    v22(v10, v3);
  }

  sub_22766A770();

  v28 = sub_22766B380();
  v29 = sub_22766C880();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v50 = v31;
    *v30 = 136315138;
    if (*(v13 + 16) && (v32 = sub_226E92000(0xD000000000000012, 0x80000002276A2C50), (v33 & 1) != 0))
    {
      sub_226E97CC0(*(v13 + 56) + 32 * v32, v52);
      v34 = swift_dynamicCast();
      if (v34)
      {
        v35 = v51;
      }

      else
      {
        v35 = 0;
        *&v51 = 0;
      }

      v38 = v34 ^ 1;
    }

    else
    {
      v35 = 0;
      *&v51 = 0;
      v38 = 1;
    }

    BYTE8(v51) = v38;
    *&v52[0] = v35;
    BYTE8(v52[0]) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
    v39 = sub_22766CB80();
    v41 = sub_226E97AE8(v39, v40, &v50);

    *(v30 + 4) = v41;
    _os_log_impl(&dword_226E8E000, v28, v29, "Old Data Version: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v30, -1, -1);

    v36 = v6;
    v37 = v49;
  }

  else
  {

    v36 = v6;
    v37 = v3;
  }

  v22(v36, v37);
  if (*(v13 + 16) && (v42 = sub_226E92000(0xD000000000000013, 0x80000002276A1760), (v43 & 1) != 0) && (sub_226E97CC0(*(v13 + 56) + 32 * v42, v52), (swift_dynamicCast() & 1) != 0) && (v44 = sub_2275E0994(v51, *(&v51 + 1)), v44 != 56))
  {
    v48 = v44;

    return v48;
  }

  else
  {
    if (*(v13 + 16) && (v45 = sub_226E92000(0xD000000000000012, 0x80000002276A2C50), (v46 & 1) != 0))
    {
      sub_226E97CC0(*(v13 + 56) + 32 * v45, v52);

      if (swift_dynamicCast())
      {
        return sub_2275E09E8(v51);
      }
    }

    else
    {
    }

    return 56;
  }
}

void sub_2274EF574(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_2274EF600()
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = sub_22766B460();
  v38 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766B5A0();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766B590();
  v6 = [v0 entityVersionHashesByName];
  v7 = sub_22766BEB0();

  v8 = *(v7 + 16);
  v40 = v5;
  if (v8)
  {
    v9 = sub_2274CDBA4(v8, 0);
    v43 = sub_2274CF2F4(v45, (v9 + 4), v8, v7);
    v10 = v45[0];

    sub_226EBB21C(v10);
    if (v43 != v8)
    {
      goto LABEL_46;
    }

    v5 = v40;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v35 = v1;
  v45[0] = v9;
  sub_2274F0114(v45);
  v34 = 0;

  v43 = v45[0];
  v42 = *(v45[0] + 16);
  if (v42)
  {
    v11 = 0;
    v12 = v43 + 7;
    v39 = v3;
    do
    {
      if (v11 >= v43[2])
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
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
LABEL_46:
        __break(1u);
      }

      v14 = *(v12 - 1);
      v13 = *v12;
      v15 = *(v12 - 3);
      v16 = *(v12 - 2);
      swift_bridgeObjectRetain_n();
      sub_226F5E0B4(v14, v13);
      v17 = sub_2274EE270(v15, v16);
      v19 = v17;
      v20 = v18;
      v21 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v21 == 2)
        {
          v41 = v16;
          v23 = *(v17 + 16);
          v22 = *(v17 + 24);
          if (sub_227662060() && __OFSUB__(v23, sub_227662090()))
          {
            goto LABEL_42;
          }

          if (__OFSUB__(v22, v23))
          {
            goto LABEL_39;
          }

LABEL_21:
          sub_227662080();
          sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          v3 = v39;
          v5 = v40;
          sub_22766B450();
          sub_226EDC420(v19, v20);
          goto LABEL_24;
        }

        sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        memset(v45, 0, 14);
      }

      else
      {
        if (v21)
        {
          if (v17 >> 32 < v17)
          {
            goto LABEL_38;
          }

          v41 = v16;
          if (sub_227662060() && __OFSUB__(v19, sub_227662090()))
          {
            goto LABEL_44;
          }

          goto LABEL_21;
        }

        v45[0] = v17;
        LOWORD(v45[1]) = v18;
        BYTE2(v45[1]) = BYTE2(v18);
        BYTE3(v45[1]) = BYTE3(v18);
        BYTE4(v45[1]) = BYTE4(v18);
        BYTE5(v45[1]) = BYTE5(v18);
        sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      }

      sub_22766B450();
      sub_226EDC420(v19, v20);
LABEL_24:
      v24 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v25 = *(v14 + 16);
          v26 = *(v14 + 24);

          if (sub_227662060() && __OFSUB__(v25, sub_227662090()))
          {
            goto LABEL_43;
          }

          if (__OFSUB__(v26, v25))
          {
            goto LABEL_41;
          }

          sub_227662080();
          sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          v3 = v39;
        }

        else
        {
          sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          memset(v45, 0, 14);
        }
      }

      else if (v24)
      {
        if (v14 >> 32 < v14)
        {
          goto LABEL_40;
        }

        if (sub_227662060() && __OFSUB__(v14, sub_227662090()))
        {
          goto LABEL_45;
        }

        sub_227662080();
        sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        v5 = v40;
      }

      else
      {
        v45[0] = v14;
        LOWORD(v45[1]) = v13;
        BYTE2(v45[1]) = BYTE2(v13);
        BYTE3(v45[1]) = BYTE3(v13);
        BYTE4(v45[1]) = BYTE4(v13);
        BYTE5(v45[1]) = BYTE5(v13);
        sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      }

      sub_22766B450();
      sub_226EDC420(v14, v13);

      sub_226EDC420(v14, v13);
      ++v11;
      v12 += 4;
    }

    while (v42 != v11);
  }

  v27 = v36;
  sub_22766B580();
  v28 = v35;
  v46 = v35;
  v47 = sub_2274F1590(&qword_2813991E8, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  v30 = v5;
  v31 = v38;
  (*(v38 + 16))(boxed_opaque_existential_0, v27, v28);
  __swift_project_boxed_opaque_existential_0(v45, v46);
  sub_2276621A0();
  (*(v31 + 8))(v27, v28);
  v32 = v44;
  __swift_destroy_boxed_opaque_existential_0(v45);
  (*(v37 + 8))(v30, v3);
  return v32;
}

void sub_2274EFEFC(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_227670B30;
  *(v5 + 32) = a1;
  sub_227431D60();
  v6 = a1;
  v7 = sub_22766C2B0();

  [v2 setPersistentStoreDescriptions_];

  v11[4] = sub_2274F15D8;
  v11[5] = v4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2274EF574;
  v11[3] = &block_descriptor_37;
  v8 = _Block_copy(v11);

  [v2 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v4 + 16);
  if (v9)
  {
    swift_willThrow();
    v10 = v9;
  }
}

void sub_2274F00B4(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;
}

void sub_2274F0114(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227117AC8(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_2274F0180(v4);
  *a1 = v2;
}

void sub_2274F0180(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABB8, &qword_2276795B0);
        v5 = sub_22766C380();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_2274F0358(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2274F0288(0, v2, 1, a1);
  }
}

uint64_t sub_2274F0288(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_22766D190(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v15;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2274F0358(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v7 = sub_2271171D0(v7);
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_2274F0934((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v8);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v94 < v92)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_141;
    }

LABEL_114:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        v12 = sub_22766D190();
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (v13[3] == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else if ((v12 ^ sub_22766D190()))
          {
            goto LABEL_23;
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = 32 * v8;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *v22;
              v25 = v22[1];
              v26 = *(v22 + 1);
              v27 = *v23;
              *v22 = *(v23 - 1);
              *(v22 + 1) = v27;
              *(v23 - 2) = v24;
              *(v23 - 1) = v25;
              *v23 = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + a4;
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2273A4F9C(0, *(v7 + 2) + 1, 1, v7);
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v7 = sub_2273A4F9C((v43 > 1), v44 + 1, 1, v7);
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_74:
          if (v52)
          {
            goto LABEL_120;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_123;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_127;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_88:
        if (v70)
        {
          goto LABEL_122;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v48 - 1;
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v86 = *&v7[16 * v8 + 32];
        v87 = *&v7[16 * v48 + 40];
        sub_2274F0934((*a3 + 32 * v86), (*a3 + 32 * *&v7[16 * v48 + 32]), (*a3 + 32 * v87), v47);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2271171D0(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v7[16 * v8];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        sub_227117144(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_118;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_119;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_121;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v96 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (sub_22766D190() & 1) == 0)
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v96;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v41;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

uint64_t sub_2274F0934(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_22766D190() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_22766D190() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t *sub_2274F0B5C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2274F1248(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2276620A0();
      swift_allocObject();
      v8 = sub_227662050();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_227662520();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_2274F0C24(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v17, 0, 15);
      a1(&v15, v17, v17);
      return;
    }

    sub_226EDC420(v7, v6);
    v15 = v7;
    v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_227689230;
    sub_226EDC420(0, 0xC000000000000000);
    sub_2276624B0();
    sub_2274F10C8(*(v15 + 16), *(v15 + 24), a1);
    v10 = v16 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v15;
      v4[1] = v10;
      return;
    }

    *v4 = v15;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_226EDC420(v7, v6);
    v17[0] = v7;
    LOWORD(v17[1]) = v6;
    BYTE2(v17[1]) = BYTE2(v6);
    BYTE3(v17[1]) = BYTE3(v6);
    BYTE4(v17[1]) = BYTE4(v6);
    BYTE5(v17[1]) = BYTE5(v6);
    BYTE6(v17[1]) = BYTE6(v6);
    a1(&v15, v17, v17 + BYTE6(v6));
    v9 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
    *v4 = v17[0];
    v4[1] = v9;
    return;
  }

  v11 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_226EDC420(v7, v6);
  *v4 = xmmword_227689230;
  sub_226EDC420(0, 0xC000000000000000);
  v12 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_227662060() && __OFSUB__(v7, sub_227662090()))
    {
LABEL_22:
      __break(1u);
    }

    sub_2276620A0();
    swift_allocObject();
    v13 = sub_227662040();

    v11 = v13;
  }

  if (v12 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_2274F10C8(v7, v7 >> 32, a1);

  v10 = v11 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v10;
    return;
  }

  *v4 = v7;
  v4[1] = v10;
}

_BYTE *sub_2274F0FC8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2274F1248(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2274F13A0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2274F141C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2274F105C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2274F10C8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_227662060();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_227662090();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_227662080();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_2274F117C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22766C1A0();
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
    v5 = MEMORY[0x22AA984A0](15, a1 >> 16);
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

uint64_t sub_2274F11F8@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_22766CE30();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2274F1248(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2274F1300(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2276620A0();
      swift_allocObject();
      sub_227662070();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_227662520();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2274F13A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2276620A0();
  swift_allocObject();
  result = sub_227662050();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_227662520();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2274F141C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2276620A0();
  swift_allocObject();
  result = sub_227662050();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2274F14A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1C8, &qword_227689248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2274F1508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2274F105C(sub_2274F1570, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2274F1590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2274F15E0(uint64_t a1)
{
  result = sub_2274F1608();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274F1608()
{
  result = qword_27D7BE1D0;
  if (!qword_27D7BE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1D0);
  }

  return result;
}

uint64_t sub_2274F165C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v54 = v10;
  v12 = *MEMORY[0x277D4E320];
  v46 = *(v3 + 104);
  v46(v5, v12, v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v52 = v11;
  sub_227669E80();

  v13 = *(v3 + 8);
  v48 = v3 + 8;
  v49 = v13;
  v53 = v2;
  v13(v5, v2);
  swift_unknownObjectRelease();
  v54 = v10;
  v14 = v46;
  v46(v5, *MEMORY[0x277D4EAF8], v2);
  swift_allocObject();
  v51 = v1;
  swift_weakInit();
  sub_227667D20();
  swift_unknownObjectRetain();
  sub_227669E90();

  v15 = v53;
  v49(v5, v53);
  swift_unknownObjectRelease();
  v54 = v10;
  v14(v5, *MEMORY[0x277D4E828], v15);
  v47 = v3 + 104;
  swift_allocObject();
  swift_weakInit();
  sub_2276624A0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v16 = v53;
  v17 = v49;
  v49(v5, v53);
  swift_unknownObjectRelease();
  v54 = v10;
  v18 = v46;
  v46(v5, *MEMORY[0x277D4E600], v16);
  swift_allocObject();
  swift_weakInit();
  v45 = sub_2276646D0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v17(v5, v16);
  swift_unknownObjectRelease();
  v54 = v10;
  v18(v5, *MEMORY[0x277D4E5E0], v16);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v17(v5, v16);
  swift_unknownObjectRelease();
  v54 = v10;
  v19 = v10;
  v20 = v46;
  v46(v5, *MEMORY[0x277D4E768], v16);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v21 = v53;
  v17(v5, v53);

  swift_unknownObjectRelease();
  v54 = v10;
  v20(v5, *MEMORY[0x277D4EDD8], v21);
  swift_allocObject();
  swift_weakInit();
  v45 = sub_227669040();
  swift_unknownObjectRetain();
  sub_227669E90();

  v22 = v53;
  v49(v5, v53);
  swift_unknownObjectRelease();
  v54 = v10;
  v23 = v5;
  v20(v5, *MEMORY[0x277D4E628], v22);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1D8, &qword_2276893A8);
  sub_2274F3EE4();
  sub_2274F3FE0(&qword_281398E08, &qword_27D7BE1D8, &qword_2276893A8, sub_2274F3F68);
  sub_227669E90();

  v24 = v22;
  v25 = v22;
  v26 = v49;
  v49(v5, v25);
  swift_unknownObjectRelease();
  v54 = v19;
  v27 = v46;
  v46(v5, *MEMORY[0x277D4E968], v24);
  swift_allocObject();
  swift_weakInit();
  sub_227667000();
  swift_unknownObjectRetain();
  sub_227669E90();

  v28 = v53;
  v26(v5, v53);
  swift_unknownObjectRelease();
  v54 = v19;
  v27(v5, *MEMORY[0x277D4E438], v28);
  swift_allocObject();
  swift_weakInit();
  sub_2276631A0();
  swift_unknownObjectRetain();
  sub_227669E90();

  v29 = v53;
  v30 = v49;
  v49(v5, v53);
  swift_unknownObjectRelease();
  v54 = v19;
  v27(v5, *MEMORY[0x277D4E518], v29);
  swift_allocObject();
  swift_weakInit();
  sub_227664170();
  swift_unknownObjectRetain();
  sub_227669E90();

  v31 = v53;
  v30(v5, v53);
  swift_unknownObjectRelease();
  v54 = v19;
  v27(v5, *MEMORY[0x277D4ED68], v31);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226FA712C();
  sub_2274F3FE0(&qword_281398BC0, &qword_27D7B94F0, &unk_227670BA0, sub_226F62704);
  sub_227669E90();

  v32 = v49;
  v49(v23, v53);
  swift_unknownObjectRelease();
  v54 = v19;
  v43 = *MEMORY[0x277D4E948];
  v33 = v46;
  (v46)(v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v32(v23, v53);
  swift_unknownObjectRelease();
  v54 = v19;
  v44 = *MEMORY[0x277D4EDE8];
  v33(v23);
  swift_allocObject();
  v34 = v51;
  swift_weakInit();
  sub_227669EA0();

  v35 = v53;
  v32(v23, v53);
  swift_unknownObjectRelease();
  v36 = *(v34 + 80);
  v42[2] = *(v34 + 96);
  v42[1] = swift_getObjectType();
  v54 = v36;
  (v33)(v23, v43, v35);
  v37 = v33;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EA0();

  v38 = v53;
  v39 = v49;
  v49(v23, v53);
  swift_unknownObjectRelease();
  v54 = v19;
  (v37)(v23, *MEMORY[0x277D4EAE8], v38);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v40 = v53;
  v39(v23, v53);

  swift_unknownObjectRelease();
  v54 = v36;
  (v37)(v23, v44, v40);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v39(v23, v40);
  return swift_unknownObjectRelease();
}

uint64_t sub_2274F2610@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_226F576C0(v5, v4, a3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_2274F274C@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v4 + 56))(a2, 1, 1, v3);
  }

  sub_226E91B50(Strong + 40, v22);

  __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v21 = a2;
  sub_22766A600();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  sub_2274E27F0(v9);
  (*(v4 + 16))(v6, v9, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v6, v3);
  v17 = (v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_226F57DF8;
  v17[1] = 0;
  sub_227667D20();
  v18 = v21;
  sub_227669270();
  (*(v4 + 8))(v9, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_2274F2A88@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v6 = off_283A97B40;
    type metadata accessor for EngagementSystem(0);
    v6(a1);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_2274F2BEC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[37];
    v10 = v8[38];
    __swift_project_boxed_opaque_existential_0(v8 + 34, v9);
    v11 = sub_227669040();

    sub_226ECF5D8(sub_2274F4110, v8, v9, v11, v10, a2);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC658, &qword_22767E3A8);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC658, &qword_22767E3A8);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_2274F2E44@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[37];
    v10 = v8[38];
    __swift_project_boxed_opaque_existential_0(v8 + 34, v9);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1D8, &qword_2276893A8);
    sub_226ECF5D8(sub_2274F40F4, v8, v9, v11, v10, a2);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1E0, &unk_2276893B0);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1E0, &unk_2276893B0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_2274F30A4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v11);

    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    sub_226E93C5C(a2);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C0, &unk_22767E4C0);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C0, &unk_22767E4C0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_2274F32A8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v11);

    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    sub_2274E29D0(a2);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_2274F34AC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v11);

    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    sub_2274E2BB0(a2);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_2274F36B0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[37];
    v10 = v8[38];
    __swift_project_boxed_opaque_existential_0(v8 + 34, v9);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    sub_226ECF5D8(sub_2274F40D8, v8, v9, v11, v10, a2);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_2274F3910@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_227662750();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_227666170();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v13);

    __swift_project_boxed_opaque_existential_0(v13, v13[3]);

    sub_227662740();
    sub_227666140();
    sub_226F59E38(v8, a3);
    (*(v6 + 8))(v8, v5);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t sub_2274F3B50@<X0>(void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v9);

    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    a2();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

uint64_t sub_2274F3C80@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v11);

    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    a3(a1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v10 - 8) + 56))(a4, 1, 1, v10);
  }
}

uint64_t sub_2274F3DC0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_2274F3EE4()
{
  result = qword_281398E10;
  if (!qword_281398E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE1D8, &qword_2276893A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E10);
  }

  return result;
}

unint64_t sub_2274F3F68()
{
  result = qword_28139B960;
  if (!qword_28139B960)
  {
    sub_2276646D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B960);
  }

  return result;
}

uint64_t sub_2274F3FE0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_2274F412C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2272B2484(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_2274F4204()
{
  result = qword_27D7BE1E8;
  if (!qword_27D7BE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1E8);
  }

  return result;
}

double sub_2274F4258(uint64_t a1)
{
  sub_2274F43E0(v1, &v7);
  if (v15)
  {
    v5[4] = v11;
    v5[5] = v12;
    v5[6] = v13;
    v5[0] = v7;
    v5[1] = v8;
    v6 = v14;
    v5[2] = v9;
    v5[3] = v10;
    sub_22766C100();
    sub_2274EC368(a1);
    sub_2274EC6A0(v5);
  }

  else
  {
    v4 = v8;
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v4);
    sub_22766D3A0();
  }

  return result;
}

uint64_t sub_2274F4358()
{
  sub_22766D370();
  sub_2274F4258(v1);
  return sub_22766D3F0();
}

uint64_t sub_2274F439C(uint64_t a1)
{
  sub_22766D370();
  sub_2274F4258(v2);
  return sub_22766D3F0();
}

BOOL sub_2274F4418(uint64_t a1, uint64_t a2)
{
  sub_2274F43E0(a2, v7);
  sub_22766D400();
  sub_2274F4258(v6);
  sub_22766D400();
  sub_2274F4258(v5);
  v2 = sub_22766D3E0();
  v3 = sub_22766D3E0();
  sub_2274F44A4(v7);
  return v2 == v3;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2274F450C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 115))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 114);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2274F4548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 111) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 115) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 115) = 0;
    }

    if (a2)
    {
      *(result + 114) = -a2;
    }
  }

  return result;
}

uint64_t sub_2274F45A0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 114) = a2;
  return result;
}

unint64_t sub_2274F45F8()
{
  result = qword_27D7BE1F0;
  if (!qword_27D7BE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1F0);
  }

  return result;
}

unint64_t sub_2274F464C(uint64_t a1)
{
  result = sub_2274F4674();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274F4674()
{
  result = qword_27D7BE1F8;
  if (!qword_27D7BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1F8);
  }

  return result;
}

uint64_t sub_2274F46C8(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EE10(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EE10((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_2274F47D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22766C7B0();
  if (!v19)
  {
    return sub_22766C370();
  }

  v41 = v19;
  v45 = sub_22766CF70();
  v32 = sub_22766CF80();
  sub_22766CF20();
  result = sub_22766C760();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_22766C7D0();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_22766CF60();
      result = sub_22766C7C0();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_2274F4BF0(int a1, void *a2, char *a3, char *a4)
{
  v53 = a1;
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  MEMORY[0x28223BE20](v7);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v10);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v56 = v12;
  v57 = v13;
  MEMORY[0x28223BE20](v12);
  v58 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  v15 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *v15;
  v17 = v15[1];
  v19 = v15[3];
  v20 = *(v15 + 16);
  v60 = a4;
  v62 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_226FC5B44(AssociatedTypeWitness, v18, v17, v20, v19, AssociatedTypeWitness, *(AssociatedConformanceWitness + 24), *(AssociatedConformanceWitness + 32));
  v22 = v63;
  v23 = sub_226FDD228(0x64);

  if (!v22)
  {
    v64 = v23;
    MEMORY[0x28223BE20](v24);
    v26 = v62;
    v27 = v60;
    *(&v50 - 4) = v62;
    *(&v50 - 3) = v27;
    *(&v50 - 16) = v53 & 1;
    v28 = v54;
    *(&v50 - 1) = v54;
    v29 = sub_22766C730();
    v30 = sub_227664140();
    WitnessTable = swift_getWitnessTable();
    v33 = sub_2274F47D0(sub_2274F6DDC, (&v50 - 6), v29, v30, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v32);

    v34 = v58;
    sub_22766A6B0();
    v35 = v55;
    (*(v55 + 16))(v61, v28, v26);
    swift_bridgeObjectRetain_n();
    v36 = sub_22766B380();
    v37 = sub_22766C870();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      LODWORD(v54) = v37;
      v39 = v38;
      v40 = swift_slowAlloc();
      v64 = v40;
      *v39 = 136446466;
      v41 = v50;
      v63 = 0;
      v42 = v62;
      sub_2274F5148(v62, v60);
      (*(v35 + 8))(v61, v42);
      sub_2274F6FC4();
      v43 = v51;
      v44 = sub_22766D140();
      v46 = v45;
      (*(v52 + 8))(v41, v43);
      v47 = sub_226E97AE8(v44, v46, &v64);

      *(v39 + 4) = v47;
      *(v39 + 12) = 2050;
      v48 = v33[2];

      *(v39 + 14) = v48;

      _os_log_impl(&dword_226E8E000, v36, v54, "Bootstrapping %{public}s with %{public}ld operations inserting.", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AA9A450](v40, -1, -1);
      MEMORY[0x22AA9A450](v39, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v61, v62);
    }

    (*(v57 + 8))(v34, v56);
    v49 = __swift_project_boxed_opaque_existential_0(v59, v59[3]);
    sub_227554D6C(v33, v49[1], *(v49 + 16), v49[3]);
  }

  return result;
}

uint64_t sub_2274F5148(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2274F51E4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_2274F5208, 0, 0);
}

uint64_t sub_2274F5208()
{
  (*(v0[8] + 24))(v0[7]);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v5 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_2274F534C;

  return v5(v1, v2);
}

uint64_t sub_2274F534C(char a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_2274F544C, 0, 0);
}

uint64_t sub_2274F544C()
{
  sub_2274F6EC0(v0[7], v0[8]);
  v1 = sub_227669C10();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2((v1 & 1) == 0);
}

void sub_2274F54D0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v132 = a3;
  v141 = a2;
  v9 = sub_2276694E0();
  v128 = *(v9 - 8);
  v129 = v9;
  MEMORY[0x28223BE20](v9);
  v127 = &v111[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v123 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v140 = &v111[-v14];
  v15 = sub_22766B390();
  v136 = *(v15 - 8);
  v137 = v15;
  MEMORY[0x28223BE20](v15);
  v125 = &v111[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v111[-v18];
  v133 = a1;
  v145 = a1;
  v143 = a4;
  v144 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v138 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v124 = *(AssociatedConformanceWitness + 32);
  v22 = sub_22766C730();
  v23 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v119 = v22;
  v118 = WitnessTable;
  v26 = sub_2274F47D0(sub_2274F72DC, v142, v22, v23, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v25);
  v130 = v5;
  v145 = v26;
  v27 = sub_22766C3D0();
  v114 = AssociatedConformanceWitness;
  v126 = AssociatedTypeWitness;
  v28 = v135;
  v29 = swift_getAssociatedConformanceWitness();
  v30 = swift_getWitnessTable();
  v117 = v27;
  v115 = v30;
  v31 = sub_22766C740();
  sub_22766A6B0();
  v32 = *(v28 + 16);
  v33 = v141;
  v139 = a4;
  v122 = v28 + 16;
  v121 = v32;
  v32(v140, v134, a4);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v131 = v19;
  v34 = sub_22766B380();
  v35 = sub_22766C8B0();
  v36 = os_log_type_enabled(v34, v35);
  v120 = v23;
  v116 = v29;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v145 = v113;
    *v37 = 136447234;
    v38 = v127;
    v39 = v31;
    v40 = v139;
    sub_2274F5148(v139, v138);
    v41 = v140;
    v42 = v40;
    v31 = v39;
    v140 = *(v28 + 8);
    (v140)(v41, v42);
    sub_2274F6FC4();
    v112 = v35;
    v43 = v129;
    v44 = sub_22766D140();
    v45 = v34;
    v47 = v46;
    (*(v128 + 8))(v38, v43);
    v48 = sub_226E97AE8(v44, v47, &v145);

    *(v37 + 4) = v48;
    *(v37 + 12) = 2048;
    v49 = sub_22766C6B0();

    *(v37 + 14) = v49;

    *(v37 + 22) = 2048;
    v50 = sub_22766C6B0();

    *(v37 + 24) = v50;

    *(v37 + 32) = 2082;
    v51 = sub_22766C610();
    v53 = v52;
    swift_bridgeObjectRelease_n();
    v54 = sub_226E97AE8(v51, v53, &v145);

    *(v37 + 34) = v54;
    *(v37 + 42) = 2082;
    v55 = v137;
    v56 = sub_22766C610();
    v58 = v57;
    swift_bridgeObjectRelease_n();
    v59 = sub_226E97AE8(v56, v58, &v145);

    *(v37 + 44) = v59;
    v60 = v139;
    _os_log_impl(&dword_226E8E000, v45, v112, "%{public}s: (+%ld, -%ld) Inserting %{public}s, Deleting %{public}s", v37, 0x34u);
    v61 = v113;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v61, -1, -1);
    v62 = v37;
    v33 = v141;
    v63 = v136;
    MEMORY[0x22AA9A450](v62, -1, -1);

    v64 = *(v63 + 8);
    v65 = v131;
    v66 = v55;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v60 = v139;
    v67 = v140;
    v140 = *(v28 + 8);
    (v140)(v67, v139);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v66 = v137;
    v64 = *(v136 + 8);
    v65 = v131;
  }

  v131 = v64;
  (v64)(v65, v66);
  v68 = v132;
  v69 = v138;
  v70 = v130;
  v71 = sub_2274F701C(v31, v132, v60, v138, sub_226FDD228);
  v72 = v133;
  if (v70)
  {
  }

  else
  {
    v73 = v71;
    v74 = sub_2274F701C(v33, v68, v60, v69, sub_226FDD488);
    sub_2274F716C(v72, v68, v60, v69);
    v141 = v73;
    v145 = v73;
    MEMORY[0x28223BE20](v75);
    *&v111[-16] = v60;
    *&v111[-8] = v69;
    v132 = v74;
    v76 = v60;
    v145 = sub_2274F47D0(sub_2274F7274, &v111[-32], v119, v120, MEMORY[0x277D84A98], v118, MEMORY[0x277D84AC0], v77);
    v78 = sub_22766C640();

    MEMORY[0x28223BE20](v79);
    *&v111[-32] = v76;
    *&v111[-24] = v69;
    *&v111[-16] = v78;

    v80 = sub_22766C6D0();
    MEMORY[0x28223BE20](v80);
    *&v111[-32] = v76;
    *&v111[-24] = v69;
    *&v111[-16] = v78;

    sub_22766C6D0();
    v133 = 0;

    v81 = sub_22766C620();

    v82 = v125;
    sub_22766A6B0();
    v83 = v123;
    v121(v123, v134, v76);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v84 = sub_22766B380();
    LODWORD(v134) = sub_22766C8B0();
    if (os_log_type_enabled(v84, v134))
    {
      v85 = v83;
      v86 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v145 = v131;
      *v86 = 136447746;
      v141 = v81;
      v87 = v127;
      v88 = v139;
      sub_2274F5148(v139, v138);
      (v140)(v85, v88);
      sub_2274F6FC4();
      v140 = v84;
      v89 = v129;
      v90 = sub_22766D140();
      v92 = v91;
      (*(v128 + 8))(v87, v89);
      v93 = sub_226E97AE8(v90, v92, &v145);

      *(v86 + 4) = v93;
      *(v86 + 12) = 2048;
      v94 = sub_22766C6B0();

      *(v86 + 14) = v94;

      *(v86 + 22) = 2048;
      v95 = sub_22766C6B0();

      *(v86 + 24) = v95;

      *(v86 + 32) = 2048;
      v96 = sub_22766C6B0();

      *(v86 + 34) = v96;

      *(v86 + 42) = 2082;
      v97 = sub_22766C610();
      v99 = v98;
      swift_bridgeObjectRelease_n();
      v100 = sub_226E97AE8(v97, v99, &v145);

      *(v86 + 44) = v100;
      *(v86 + 52) = 2082;
      v101 = sub_22766C610();
      v103 = v102;
      swift_bridgeObjectRelease_n();
      v104 = sub_226E97AE8(v101, v103, &v145);

      *(v86 + 54) = v104;
      *(v86 + 62) = 2082;
      v105 = sub_22766C610();
      v107 = v106;
      swift_bridgeObjectRelease_n();
      v108 = sub_226E97AE8(v105, v107, &v145);

      *(v86 + 64) = v108;
      v109 = v140;
      _os_log_impl(&dword_226E8E000, v140, v134, "%{public}s: (+%ld, %ld, -%ld) Inserted %{public}s, Updated: %{public}s, Deleted: %{public}s", v86, 0x48u);
      v110 = v131;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v110, -1, -1);
      MEMORY[0x22AA9A450](v86, -1, -1);

      (*(v136 + 8))(v125, v137);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      (v140)(v83, v139);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      (v131)(v82, v137);
    }

    if (sub_22766C6F0() & 1) != 0 && (sub_22766C6F0() & 1) != 0 && (sub_22766C6F0())
    {
    }

    else
    {
      nullsub_1();
    }
  }
}

uint64_t sub_2274F62D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_2274F72F4;

  return sub_2274F51E4(a1, WitnessTable);
}

uint64_t sub_2274F6394(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  WitnessTable = swift_getWitnessTable();
  return sub_2274F63E4(v3, a2, WitnessTable) & 1;
}

uint64_t sub_2274F63E4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1 == 1;
  }

  else
  {
    v12 = v8;
    sub_2274F5148(a2, a3);
    v13 = sub_2276694A0();
    (*(v7 + 8))(v10, v12);
    v11 = v13 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_2274F658C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_2274F664C;

  return sub_2274F51E4(a1, WitnessTable);
}

uint64_t sub_2274F664C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2274F6798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 104);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

BOOL sub_2274F6858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v12 - v7;
  v9 = *(AssociatedConformanceWitness + 104);
  swift_checkMetadataState();
  v9();
  swift_getAssociatedConformanceWitness();
  v10 = sub_22766C710();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return (v10 & 1) == 0;
}

uint64_t sub_2274F6A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v12 - v7;
  v9 = *(AssociatedConformanceWitness + 104);
  swift_checkMetadataState();
  v9();
  swift_getAssociatedConformanceWitness();
  v10 = sub_22766C710();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t sub_2274F6BB4@<X0>(int a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v12 = a2;
  v13 = a3;
  v15 = a1;
  v14 = a4;
  v4 = sub_2276694E0();
  MEMORY[0x28223BE20](v4 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  v10 = *(AssociatedConformanceWitness + 104);
  swift_checkMetadataState();
  v10();
  swift_getAssociatedConformanceWitness();
  sub_22766D140();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  sub_2274F5148(v12, v13);
  sub_2276625E0();
  return sub_227664100();
}

BOOL sub_2274F6E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v7 = sub_22718C6F4(a1, v6);

  return v7;
}

uint64_t sub_2274F6EC0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2274F6F4C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  return sub_22766C060();
}

unint64_t sub_2274F6FC4()
{
  result = qword_28139B258;
  if (!qword_28139B258)
  {
    sub_2276694E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B258);
  }

  return result;
}

uint64_t sub_2274F701C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *v6;
  v8 = v6[1];
  v10 = v6[3];
  v11 = *(v6 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_226FC5B44(AssociatedTypeWitness, v9, v8, v11, v10, AssociatedTypeWitness, *(AssociatedConformanceWitness + 24), *(AssociatedConformanceWitness + 32));
  v13 = (*(AssociatedConformanceWitness + 112))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_226FDE3D4(v13);

  v14 = a5(100);

  return v14;
}

void sub_2274F716C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v12 = a1;
  v6 = v5[1];
  v7 = v5[3];
  v8 = *(v5 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_22766C730();
  WitnessTable = swift_getWitnessTable();
  sub_226FC5BC8(&v12, v6, v8, v7, v10, WitnessTable, *(AssociatedConformanceWitness + 24));
}

unint64_t PersistenceEntityName.rawValue.getter()
{
  result = 0x42646567616E614DLL;
  switch(*v0)
  {
    case 1:
    case 0x35:
    case 0x62:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
    case 0x28:
    case 0x2E:
    case 0x44:
    case 0x58:
    case 0x5B:
    case 0x5D:
    case 0x61:
      result = 0xD000000000000016;
      break;
    case 5:
    case 0x63:
      result = 0xD000000000000021;
      break;
    case 6:
    case 0x2B:
    case 0x3A:
    case 0x60:
      result = 0xD000000000000012;
      break;
    case 7:
    case 0x17:
    case 0x18:
    case 0x24:
    case 0x3B:
    case 0x42:
    case 0x47:
      result = 0xD00000000000001DLL;
      break;
    case 8:
    case 0x3E:
    case 0x40:
    case 0x50:
      result = 0xD000000000000011;
      break;
    case 9:
    case 0x37:
    case 0x4A:
    case 0x5C:
      result = 0xD000000000000017;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xB:
      result = 0xD000000000000026;
      break;
    case 0xC:
    case 0x2C:
    case 0x32:
      result = 0xD00000000000001CLL;
      break;
    case 0xD:
    case 0x39:
    case 0x3D:
      result = 0xD000000000000019;
      break;
    case 0xE:
      result = 0xD000000000000031;
      break;
    case 0xF:
      result = 0xD00000000000001ELL;
      break;
    case 0x10:
    case 0x43:
      result = 0xD000000000000027;
      break;
    case 0x11:
    case 0x2F:
      result = 0xD000000000000010;
      break;
    case 0x12:
    case 0x23:
    case 0x26:
    case 0x30:
    case 0x68:
      result = 0xD00000000000001ALL;
      break;
    case 0x13:
      return result;
    case 0x14:
    case 0x1A:
    case 0x3C:
    case 0x65:
    case 0x67:
      result = 0xD00000000000001FLL;
      break;
    case 0x16:
    case 0x34:
    case 0x49:
      result = 0xD000000000000020;
      break;
    case 0x19:
      result = 0xD00000000000001ELL;
      break;
    case 0x1B:
    case 0x38:
    case 0x4B:
      result = 0xD000000000000015;
      break;
    case 0x1C:
      result = 0xD00000000000001ELL;
      break;
    case 0x1D:
    case 0x22:
    case 0x31:
    case 0x48:
    case 0x52:
    case 0x53:
    case 0x56:
    case 0x5A:
    case 0x5F:
      result = 0xD000000000000018;
      break;
    case 0x1E:
    case 0x46:
    case 0x4E:
    case 0x59:
      result = 0xD000000000000013;
      break;
    case 0x1F:
    case 0x3F:
    case 0x51:
    case 0x55:
    case 0x64:
      result = 0xD00000000000001BLL;
      break;
    case 0x20:
    case 0x41:
    case 0x4D:
    case 0x69:
      result = 0xD000000000000023;
      break;
    case 0x25:
      result = 0xD00000000000001ELL;
      break;
    case 0x27:
    case 0x2A:
    case 0x2D:
    case 0x4F:
    case 0x54:
    case 0x57:
      result = 0xD000000000000014;
      break;
    case 0x29:
      result = 0xD00000000000001ELL;
      break;
    case 0x33:
      result = 0xD00000000000001ELL;
      break;
    case 0x36:
      result = 0xD00000000000002BLL;
      break;
    case 0x45:
      result = 0x50646567616E614DLL;
      break;
    case 0x4C:
      result = 0xD000000000000025;
      break;
    case 0x5E:
      result = 0xD00000000000001ELL;
      break;
    case 0x66:
      result = 0xD000000000000028;
      break;
    default:
      result = 0xD000000000000022;
      break;
  }

  return result;
}

SeymourServices::PersistenceEntityName_optional __swiftcall PersistenceEntityName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22766D1E0();

  v5 = 0;
  v6 = 88;
  switch(v3)
  {
    case 0:
      goto LABEL_100;
    case 1:
      v5 = 1;
      goto LABEL_100;
    case 2:
      v5 = 2;
      goto LABEL_100;
    case 3:
      v5 = 3;
      goto LABEL_100;
    case 4:
      v5 = 4;
      goto LABEL_100;
    case 5:
      v5 = 5;
      goto LABEL_100;
    case 6:
      v5 = 6;
      goto LABEL_100;
    case 7:
      v5 = 7;
      goto LABEL_100;
    case 8:
      v5 = 8;
      goto LABEL_100;
    case 9:
      v5 = 9;
      goto LABEL_100;
    case 10:
      v5 = 10;
      goto LABEL_100;
    case 11:
      v5 = 11;
      goto LABEL_100;
    case 12:
      v5 = 12;
      goto LABEL_100;
    case 13:
      v5 = 13;
      goto LABEL_100;
    case 14:
      v5 = 14;
      goto LABEL_100;
    case 15:
      v5 = 15;
      goto LABEL_100;
    case 16:
      v5 = 16;
      goto LABEL_100;
    case 17:
      v5 = 17;
      goto LABEL_100;
    case 18:
      v5 = 18;
      goto LABEL_100;
    case 19:
      v5 = 19;
      goto LABEL_100;
    case 20:
      v5 = 20;
      goto LABEL_100;
    case 21:
      v5 = 21;
      goto LABEL_100;
    case 22:
      v5 = 22;
      goto LABEL_100;
    case 23:
      v5 = 23;
      goto LABEL_100;
    case 24:
      v5 = 24;
      goto LABEL_100;
    case 25:
      v5 = 25;
      goto LABEL_100;
    case 26:
      v5 = 26;
      goto LABEL_100;
    case 27:
      v5 = 27;
      goto LABEL_100;
    case 28:
      v5 = 28;
      goto LABEL_100;
    case 29:
      v5 = 29;
      goto LABEL_100;
    case 30:
      v5 = 30;
      goto LABEL_100;
    case 31:
      v5 = 31;
      goto LABEL_100;
    case 32:
      v5 = 32;
      goto LABEL_100;
    case 33:
      v5 = 33;
      goto LABEL_100;
    case 34:
      v5 = 34;
      goto LABEL_100;
    case 35:
      v5 = 35;
      goto LABEL_100;
    case 36:
      v5 = 36;
      goto LABEL_100;
    case 37:
      v5 = 37;
      goto LABEL_100;
    case 38:
      v5 = 38;
      goto LABEL_100;
    case 39:
      v5 = 39;
      goto LABEL_100;
    case 40:
      v5 = 40;
      goto LABEL_100;
    case 41:
      v5 = 41;
      goto LABEL_100;
    case 42:
      v5 = 42;
      goto LABEL_100;
    case 43:
      v5 = 43;
      goto LABEL_100;
    case 44:
      v5 = 44;
      goto LABEL_100;
    case 45:
      v5 = 45;
      goto LABEL_100;
    case 46:
      v5 = 46;
      goto LABEL_100;
    case 47:
      v5 = 47;
      goto LABEL_100;
    case 48:
      v5 = 48;
      goto LABEL_100;
    case 49:
      v5 = 49;
      goto LABEL_100;
    case 50:
      v5 = 50;
      goto LABEL_100;
    case 51:
      v5 = 51;
      goto LABEL_100;
    case 52:
      v5 = 52;
      goto LABEL_100;
    case 53:
      v5 = 53;
      goto LABEL_100;
    case 54:
      v5 = 54;
      goto LABEL_100;
    case 55:
      v5 = 55;
      goto LABEL_100;
    case 56:
      v5 = 56;
      goto LABEL_100;
    case 57:
      v5 = 57;
      goto LABEL_100;
    case 58:
      v5 = 58;
      goto LABEL_100;
    case 59:
      v5 = 59;
      goto LABEL_100;
    case 60:
      v5 = 60;
      goto LABEL_100;
    case 61:
      v5 = 61;
      goto LABEL_100;
    case 62:
      v5 = 62;
      goto LABEL_100;
    case 63:
      v5 = 63;
      goto LABEL_100;
    case 64:
      v5 = 64;
      goto LABEL_100;
    case 65:
      v5 = 65;
      goto LABEL_100;
    case 66:
      v5 = 66;
      goto LABEL_100;
    case 67:
      v5 = 67;
      goto LABEL_100;
    case 68:
      v5 = 68;
      goto LABEL_100;
    case 69:
      v5 = 69;
      goto LABEL_100;
    case 70:
      v5 = 70;
      goto LABEL_100;
    case 71:
      v5 = 71;
      goto LABEL_100;
    case 72:
      v5 = 72;
      goto LABEL_100;
    case 73:
      v5 = 73;
      goto LABEL_100;
    case 74:
      v5 = 74;
      goto LABEL_100;
    case 75:
      v5 = 75;
      goto LABEL_100;
    case 76:
      v5 = 76;
      goto LABEL_100;
    case 77:
      v5 = 77;
      goto LABEL_100;
    case 78:
      v5 = 78;
      goto LABEL_100;
    case 79:
      v5 = 79;
      goto LABEL_100;
    case 80:
      v5 = 80;
      goto LABEL_100;
    case 81:
      v5 = 81;
      goto LABEL_100;
    case 82:
      v5 = 82;
      goto LABEL_100;
    case 83:
      v5 = 83;
      goto LABEL_100;
    case 84:
      v5 = 84;
      goto LABEL_100;
    case 85:
      v5 = 85;
      goto LABEL_100;
    case 86:
      v5 = 86;
      goto LABEL_100;
    case 87:
      v5 = 87;
LABEL_100:
      v6 = v5;
      break;
    case 88:
      break;
    case 89:
      v6 = 89;
      break;
    case 90:
      v6 = 90;
      break;
    case 91:
      v6 = 91;
      break;
    case 92:
      v6 = 92;
      break;
    case 93:
      v6 = 93;
      break;
    case 94:
      v6 = 94;
      break;
    case 95:
      v6 = 95;
      break;
    case 96:
      v6 = 96;
      break;
    case 97:
      v6 = 97;
      break;
    case 98:
      v6 = 98;
      break;
    case 99:
      v6 = 99;
      break;
    case 100:
      v6 = 100;
      break;
    case 101:
      v6 = 101;
      break;
    case 102:
      v6 = 102;
      break;
    case 103:
      v6 = 103;
      break;
    case 104:
      v6 = 104;
      break;
    case 105:
      v6 = 105;
      break;
    default:
      v6 = 106;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2274F7E80()
{
  v0 = PersistenceEntityName.rawValue.getter();
  v2 = v1;
  if (v0 == PersistenceEntityName.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22766D190();
  }

  return v5 & 1;
}

unint64_t sub_2274F7F20()
{
  result = qword_27D7BE200;
  if (!qword_27D7BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE200);
  }

  return result;
}

uint64_t sub_2274F7F74()
{
  sub_22766D370();
  PersistenceEntityName.rawValue.getter();
  sub_22766C100();

  return sub_22766D3F0();
}

double sub_2274F7FDC(uint64_t a1)
{
  PersistenceEntityName.rawValue.getter();
  sub_22766C100();

  return result;
}

uint64_t sub_2274F8040(uint64_t a1)
{
  sub_22766D370();
  PersistenceEntityName.rawValue.getter();
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_2274F80B0@<X0>(unint64_t *a1@<X8>)
{
  result = PersistenceEntityName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2274F80DC()
{
  result = qword_27D7BE208;
  if (!qword_27D7BE208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE210, &qword_2276897E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistenceEntityName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x97)
  {
    goto LABEL_17;
  }

  if (a2 + 105 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 105) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 105;
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

      return (*a1 | (v4 << 8)) - 105;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 105;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x6A;
  v8 = v6 - 106;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceEntityName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 105 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 105) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x97)
  {
    v4 = 0;
  }

  if (a2 > 0x96)
  {
    v5 = ((a2 - 151) >> 8) + 1;
    *result = a2 + 105;
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
    *result = a2 + 105;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2274F82A0(void *a1)
{
  v2 = [a1 referenceIdentifier];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 referenceType];
  if (!v4)
  {
LABEL_11:

LABEL_12:
    v12 = sub_227664470();
    sub_2274F8F54(&qword_27D7BA250, MEMORY[0x277D50940], MEMORY[0x277D50948]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D50908], v12);
    swift_willThrow();
    goto LABEL_13;
  }

  v5 = v4;
  sub_22766C000();

  v6 = [a1 shelfMarker];
  if (!v6)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = v6;
  sub_22766C000();

  v8 = [a1 source];
  if (!v8)
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = v8;
  sub_22766C000();

  v10 = [a1 reason];
  if (!v10)
  {

    goto LABEL_9;
  }

  v11 = v10;
  sub_22766C000();

  [a1 index];
  sub_227125DE8();
  sub_227663AE0();
  sub_2274F8B70();
  sub_227663AE0();
  sub_2274F8C18();
  sub_227663AE0();
  sub_2276643D0();
LABEL_13:
}

void *static Recommendation.representativeSamples()()
{
  v31 = sub_227664410();
  v0 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F05E24();
  sub_22766CFA0();

  sub_2274F8B1C();
  sub_2274F8B70();
  v2 = sub_227663B50();
  v3 = sub_22766C090();
  sub_22732D5AC();
  sub_227125DE8();
  v4 = sub_227663B50();
  sub_2274F8BC4();
  sub_2274F8C18();
  v5 = sub_227663B50();
  v59[0] = sub_22766CFA0();
  v59[1] = v59;
  v6 = sub_22766C090();
  v57 = v3;
  v58 = v6;
  v59[2] = &v58;
  v59[3] = &v57;
  v55 = v2;
  v56 = v4;
  v59[4] = &v56;
  v59[5] = &v55;
  v54 = v5;
  v59[6] = &v54;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v50 = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBD0, &qword_227680910);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE238, &qword_2276899F0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE240, &qword_2276899F8);
  v42 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v43 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v44 = v43;
  v45 = sub_226F5BF60(&qword_27D7BCBD8, &qword_27D7BCBD0, &qword_227680910);
  v46 = sub_226F5BF60(&qword_27D7BE248, &qword_27D7BE238, &qword_2276899F0);
  v47 = sub_226F5BF60(&qword_27D7BE250, &qword_27D7BE240, &qword_2276899F8);
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_226F20108(0, v8, 0);
    v10 = 0;
    v11 = v41;
    v26[1] = v0 + 32;
    v12 = v7 + 72;
    v29 = v0;
    v28 = v7;
    v27 = v8;
    while (v10 < *(v7 + 16))
    {
      v13 = *(v12 - 32);
      v39 = *(v12 - 40);
      v38 = v13;
      v36 = *(v12 - 24);
      v14 = *(v12 - 8);
      v37 = *(v12 - 16);
      v35 = v14;
      v16 = *v12;
      v34 = *(v12 + 8);
      v15 = v34;
      v17 = *(v12 + 16);
      v18 = *(v12 + 32);
      v33 = *(v12 + 24);
      v32 = v18;
      v19 = *(v12 + 40);
      v40 = v11;
      v21 = *(v12 + 48);
      v20 = *(v12 + 56);
      v22 = *(v12 + 64);

      sub_226EB396C(v16, v15, v17);
      sub_226EB396C(v33, v32, v19);
      sub_226EB396C(v21, v20, v22);
      v11 = v40;
      v23 = v30;
      sub_2276643D0();
      v41 = v11;
      v25 = *(v11 + 16);
      v24 = *(v11 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F20108((v24 > 1), v25 + 1, 1);
        v11 = v41;
      }

      ++v10;
      *(v11 + 16) = v25 + 1;
      result = (*(v29 + 32))(v11 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, v23, v31);
      v12 += 112;
      v7 = v28;
      if (v27 == v10)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2274F8B1C()
{
  result = qword_27D7BE218;
  if (!qword_27D7BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE218);
  }

  return result;
}

unint64_t sub_2274F8B70()
{
  result = qword_27D7BE220;
  if (!qword_27D7BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE220);
  }

  return result;
}

unint64_t sub_2274F8BC4()
{
  result = qword_27D7BE228;
  if (!qword_27D7BE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE228);
  }

  return result;
}

unint64_t sub_2274F8C18()
{
  result = qword_27D7BE230;
  if (!qword_27D7BE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE230);
  }

  return result;
}

uint64_t sub_2274F8CAC(uint64_t a1)
{
  result = sub_2274F8F54(&qword_28139B990, MEMORY[0x277D508B0], &protocol conformance descriptor for Recommendation);
  *(a1 + 8) = result;
  return result;
}

void sub_2274F8D04(void *a1)
{
  v2 = sub_2276643E0();
  v3 = 0x7FFFFFFFLL;
  if (v2 < 0x7FFFFFFF)
  {
    v3 = v2;
  }

  if (v3 <= 0xFFFFFFFF80000000)
  {
    v4 = 0xFFFFFFFF80000000;
  }

  else
  {
    v4 = v3;
  }

  [a1 setIndex_];
  v5 = sub_2276643A0();
  v7 = v6;
  v9 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE258, &qword_227689A48);
  sub_227663AD0();
  v10 = sub_22766BFD0();
  sub_226EB2DFC(v5, v7, v9);

  [a1 setShelfMarker_];

  sub_2276643C0();
  v11 = sub_22766BFD0();

  [a1 setReferenceIdentifier_];

  v12 = sub_2276643B0();
  v14 = v13;
  v16 = v15 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
  sub_227663AD0();
  v17 = sub_22766BFD0();
  sub_226EB2DFC(v12, v14, v16);

  [a1 setReferenceType_];

  sub_2276643F0();
  v18 = sub_22766BFD0();

  [a1 setReason_];

  v19 = sub_227664400();
  v21 = v20;
  LOBYTE(v14) = v22 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE260, &qword_227689A50);
  sub_227663AD0();
  v23 = sub_22766BFD0();
  sub_226EB2DFC(v19, v21, v14);

  [a1 setSource_];
}

uint64_t sub_2274F8F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2274F8F9C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  v15 = [a1 term];
  if (!v15)
  {
    goto LABEL_6;
  }

  v21[3] = a2;
  v16 = v15;
  v21[1] = sub_22766C000();

  v17 = [a1 dateCreated];
  if (!v17)
  {
LABEL_5:

LABEL_6:
    v19 = sub_227664DD0();
    sub_2274F9828(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51028], v19);
    swift_willThrow();

    return;
  }

  v18 = v17;
  sub_227662710();

  (*(v5 + 32))(v14, v10, v4);
  if (MEMORY[0x22AA95720]([a1 platform]) == 4)
  {
    (*(v5 + 8))(v14, v4);
    goto LABEL_5;
  }

  (*(v5 + 16))(v7, v14, v4);
  sub_227664DF0();

  (*(v5 + 8))(v14, v4);
}

void *static RecentSearchTerm.representativeSamples()()
{
  v25 = sub_227662750();
  v21 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v17 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE268, &qword_227689A58);
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = v17 - v2;
  v22 = sub_227664E20();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v8 = sub_227662630();
  v9 = sub_2276693F0();
  v34 = v8;
  v35[0] = v7;
  v35[1] = v35;
  v35[2] = &v34;
  v33 = v9;
  v35[3] = &v33;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE270, &qword_227689A60);
  v27 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v28 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v29 = sub_226F5BF60(&qword_27D7BE278, &qword_27D7BE270, &qword_227689A60);
  v10 = sub_2276638E0();

  v11 = *(v10 + 16);
  if (v11)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_226F1F448(0, v11, 0);
    v13 = 0;
    v14 = v26;
    v19 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v18 = (v21 + 16);
    v21 = v4;
    v17[1] = v4 + 32;
    v20 = v10;
    while (v13 < *(v10 + 16))
    {
      sub_2274F96F8(v19 + *(v1 + 72) * v13, v3);
      (*v18)(v24, &v3[*(v23 + 48)], v25);

      sub_227664DF0();
      sub_2274F9768(v3);
      v26 = v14;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F1F448((v15 > 1), v16 + 1, 1);
        v14 = v26;
      }

      ++v13;
      *(v14 + 16) = v16 + 1;
      result = (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16, v6, v22);
      v10 = v20;
      if (v11 == v13)
      {

        return v14;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2274F96F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE268, &qword_227689A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274F9768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE268, &qword_227689A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2274F97D0(uint64_t a1)
{
  result = sub_2274F9828(&qword_2813A5748, MEMORY[0x277D51068], &protocol conformance descriptor for RecentSearchTerm);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274F9828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2274F9870(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664E00();
  v6 = sub_22766BFD0();

  [a1 setTerm_];

  sub_227664DE0();
  v7 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setDateCreated_];

  sub_227664E10();
  result = sub_227669410();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return [a1 setPlatform_];
  }

  __break(1u);
  return result;
}

uint64_t sub_2274F99E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2274F9A30(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_2274F9A90(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
  }

  while (!v5);
  v39 = v1;
  v7 = v8;
  while (1)
  {
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_226E93170(*(a1 + 56) + 32 * v10, v37, &unk_27D7BC990, &qword_227670A30);
    *&v36 = v13;
    *(&v36 + 1) = v12;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_226E93170(&v34, &v27, &unk_27D7BC990, &qword_227670A30);
    if (!v28)
    {

      sub_226E97D1C(&v33, &qword_27D7B9470, &qword_227689B70);
      sub_226E97D1C(&v27, &unk_27D7BC990, &qword_227670A30);
      v1 = v39;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_226F04970(&v27, v32);
    v30 = v33;
    v31[0] = v34;
    v31[1] = v35;
    sub_226F04970(v32, v29);
    v1 = v39;
    v14 = *(v39 + 16);
    if (*(v39 + 24) <= v14)
    {

      sub_226FE4910(v14 + 1, 1);
      v1 = v38;
    }

    else
    {
    }

    v15 = v30;
    sub_22766D370();
    sub_22766C100();
    v16 = sub_22766D3F0();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = v16 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v1 + 48) + 16 * v21) = v15;
    sub_226F04970(v29, (*(v1 + 56) + 32 * v21));
    ++*(v1 + 16);
    sub_226E97D1C(v31, &unk_27D7BC990, &qword_227670A30);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v39 = v1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v17 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_2274F9DB4(uint64_t a1, uint64_t a2)
{
  v3[62] = a2;
  v3[63] = v2;
  v3[61] = a1;
  v4 = sub_22766B390();
  v3[64] = v4;
  v3[65] = *(v4 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC0, &qword_22767C990);
  v3[68] = swift_task_alloc();
  v5 = sub_227665100();
  v3[69] = v5;
  v3[70] = *(v5 - 8);
  v3[71] = swift_task_alloc();
  v6 = sub_2276627D0();
  v3[72] = v6;
  v3[73] = *(v6 - 8);
  v3[74] = swift_task_alloc();
  v7 = sub_227662750();
  v3[75] = v7;
  v3[76] = *(v7 - 8);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274FA020, 0, 0);
}

uint64_t sub_2274FA020(uint64_t a1)
{
  v137 = v1;
  v2 = v1[63];
  v3 = sub_227668360();
  v1[60] = v3;
  type metadata accessor for HKWorkoutActivityType(0);
  v1[81] = sub_22766C060();
  v1[82] = v4;
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_22766A380();
  v134 = v2;
  v5 = v1[80];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9458, &unk_227674080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227689AB0;
  *(inited + 32) = sub_227669C90();
  *(inited + 40) = v7;
  v8 = sub_227668320();
  v9 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 80) = sub_227669CA0();
  *(inited + 88) = v11;
  v12 = sub_227668350();
  *(inited + 120) = v9;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = sub_227669C70();
  *(inited + 136) = v14;
  v15 = sub_227664C10();
  *(inited + 168) = v9;
  *(inited + 144) = v15;
  *(inited + 152) = v16;
  *(inited + 176) = sub_22766C000();
  *(inited + 184) = v17;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  *(inited + 224) = sub_227669C80();
  *(inited + 232) = v18;
  v19 = sub_227664AC0();
  *(inited + 264) = MEMORY[0x277D83B88];
  *(inited + 240) = v19;
  *(inited + 272) = sub_227669CB0();
  *(inited + 280) = v20;
  sub_227668330();
  v21 = sub_227664950();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v5, 1, v21);
  v25 = v1[80];
  if (v24 == 1)
  {
    sub_226E97D1C(v1[80], &qword_27D7B8CC8, &unk_227689B50);
    *(inited + 288) = 0u;
    *(inited + 304) = 0u;
  }

  else
  {
    v26 = sub_227664930();
    *(inited + 312) = v9;
    *(inited + 288) = v26;
    *(inited + 296) = v27;
    (*(v22 + 8))(v25, v21);
  }

  v28 = v1[79];
  *(inited + 320) = sub_227669CC0();
  *(inited + 328) = v29;
  sub_227668330();
  v30 = v23(v28, 1, v21);
  v31 = v1[79];
  if (v30 == 1)
  {
    sub_226E97D1C(v31, &qword_27D7B8CC8, &unk_227689B50);
LABEL_8:
    *(inited + 336) = 0u;
    *(inited + 352) = 0u;
    goto LABEL_9;
  }

  v32 = sub_227664910();
  v34 = v33;
  (*(v22 + 8))(v31, v21);
  if (!v34)
  {
    goto LABEL_8;
  }

  *(inited + 360) = v9;
  *(inited + 336) = v32;
  *(inited + 344) = v34;
LABEL_9:
  v35 = v1[77];
  v36 = v1[76];
  v37 = v1[75];
  v124 = v37;
  v135 = v1[73];
  v126 = v1[74];
  v128 = v1[72];
  *(inited + 368) = sub_22766C000();
  *(inited + 376) = v38;
  *(inited + 408) = MEMORY[0x277D839B0];
  *(inited + 384) = 1;
  *(inited + 416) = sub_22766C000();
  *(inited + 424) = v39;
  v40 = sub_227668320();
  *(inited + 456) = v9;
  *(inited + 432) = v40;
  *(inited + 440) = v41;
  v42 = sub_227148D38(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9460, &unk_227689B60);
  swift_arrayDestroy();
  sub_227668380();
  sub_227668370();
  sub_227662690();
  v43 = *(v36 + 8);
  v1[83] = v43;
  v1[84] = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v35, v37);
  sub_227668380();
  sub_227668370();
  v45 = v44;
  v46 = [objc_opt_self() localDevice];
  sub_2274F9A90(v42);
  v47 = sub_2276626A0();
  v48 = sub_2276626A0();
  v49 = sub_22766BE90();
  v50 = v43;

  v51 = [objc_opt_self() workoutWithActivityType:v3 startDate:v47 endDate:v48 duration:0 totalEnergyBurned:0 totalDistance:v46 device:v45 metadata:v49];
  v1[85] = v51;

  v43(v35, v124);
  v52 = v51;
  sub_227668310();
  v53 = sub_227662790();
  v54 = *(v135 + 8);
  v1[86] = v54;
  v1[87] = (v135 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54(v126, v128);
  [v52 _setUUID_];

  v55 = sub_227664AD0();
  v57 = v56;
  if (v55 == sub_227664AD0() && v57 == v58)
  {

    v59 = v134;
  }

  else
  {
    v60 = sub_22766D190();

    v59 = v134;
    if ((v60 & 1) == 0)
    {

      goto LABEL_20;
    }
  }

  v61 = v1[70];
  v62 = v1[69];
  v63 = v1[68];
  sub_226E93170(v1[62], v63, &qword_27D7B9EC0, &qword_22767C990);
  if ((*(v61 + 48))(v63, 1, v62) != 1)
  {
    v122 = v54;
    v131 = v50;
    (*(v1[70] + 32))(v1[71], v1[68], v1[69]);
    sub_227668370();
    v66 = v65;
    sub_2276650F0();
    v68 = v66 / v67;
    sub_2276650D0();
    v70 = v68 * v69;
    sub_227668370();
    v72 = v71;
    sub_2276650F0();
    v74 = v72 / v73;
    sub_2276650E0();
    v76 = v74 * v75;
    v77 = objc_opt_self();
    v78 = [v77 largeCalorieUnit];
    v79 = objc_opt_self();
    v80 = [v79 quantityWithUnit:v78 doubleValue:v76];
    v1[88] = v80;

    v81 = [v77 largeCalorieUnit];
    v82 = [v79 quantityWithUnit:v81 doubleValue:v70];
    v1[89] = v82;

    [v52 _setTotalEnergyBurned_];
    v127 = v82;
    v129 = v52;
    [v52 _setTotalBasalEnergyBurned_];
    sub_226E99364(0, &qword_281398B48, 0x277CCD8D8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v84 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
    if (v84)
    {
      v87 = v84;
      v88 = v1[77];
      v89 = v1[75];
      v90 = v80;
      sub_227668380();
      v91 = sub_2276626A0();
      v92 = sub_2276626A0();
      v125 = objc_opt_self();
      v1[90] = [v125 quantitySampleWithType:v87 quantity:v90 startDate:v91 endDate:v92];

      v131(v88, v89);
      v84 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
      if (v84)
      {
        v93 = v84;
        v94 = v1[77];
        v123 = v1[75];

        v95 = v127;
        sub_227668380();
        v96 = sub_2276626A0();
        v97 = sub_2276626A0();
        v1[91] = [v125 quantitySampleWithType:v93 quantity:v95 startDate:v96 endDate:v97];

        v131(v94, v123);
        sub_22766A6D0();
        v98 = v129;
        v99 = sub_22766B380();
        v100 = sub_22766C8B0();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = v1[74];
          v102 = v1[72];
          v130 = v1[65];
          v132 = v1[64];
          v133 = v1[67];
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v136 = v104;
          *v103 = 141558786;
          *(v103 + 4) = 1752392040;
          *(v103 + 12) = 2080;
          v105 = [v98 UUID];
          sub_2276627B0();

          sub_2274FCDC8(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v106 = sub_22766D140();
          v108 = v107;
          v122(v101, v102);
          v109 = sub_226E97AE8(v106, v108, &v136);

          *(v103 + 14) = v109;
          *(v103 + 22) = 2048;
          *(v103 + 24) = v76;
          *(v103 + 32) = 2048;
          *(v103 + 34) = v70;
          _os_log_impl(&dword_226E8E000, v99, v100, "Adding calories to workout %{mask.hash}s: Active %f, Basal %f", v103, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v104);
          MEMORY[0x22AA9A450](v104, -1, -1);
          MEMORY[0x22AA9A450](v103, -1, -1);

          (*(v130 + 8))(v133, v132);
        }

        else
        {
          v114 = v1[67];
          v115 = v1[65];
          v116 = v1[64];

          (*(v115 + 8))(v114, v116);
        }

        v117 = v1[63];
        v118 = v134[3];
        v119 = v117[6];
        __swift_project_boxed_opaque_existential_0(v117, v118);
        v120 = swift_task_alloc();
        v1[92] = v120;
        *v120 = v1;
        v120[1] = sub_2274FACE8;
        v84 = v98;
        v85 = v118;
        v86 = v119;
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2821AEDB0](v84, v85, v86);
  }

  v64 = v1[68];

  sub_226E97D1C(v64, &qword_27D7B9EC0, &qword_22767C990);
LABEL_20:
  v110 = v1[63];
  v111 = v59[3];
  v112 = v110[6];
  __swift_project_boxed_opaque_existential_0(v110, v111);
  v113 = swift_task_alloc();
  v1[97] = v113;
  *v113 = v1;
  v113[1] = sub_2274FB4C8;
  v84 = v52;
  v85 = v111;
  v86 = v112;
LABEL_23:

  return MEMORY[0x2821AEDB0](v84, v85, v86);
}

uint64_t sub_2274FACE8()
{
  *(*v1 + 744) = v0;

  if (v0)
  {

    v2 = sub_2274FBA04;
  }

  else
  {
    v2 = sub_2274FAE04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274FAE04()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[63];
  v4 = v3[3];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v6 = swift_allocObject();
  v0[94] = v6;
  *(v6 + 16) = xmmword_2276756A0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = v2;
  v8 = v1;
  v9 = swift_task_alloc();
  v0[95] = v9;
  *v9 = v0;
  v9[1] = sub_2274FAF20;
  v10 = v0[85];

  return MEMORY[0x2821AEDA0](v6, v10, v4, v5);
}

uint64_t sub_2274FAF20()
{
  *(*v1 + 768) = v0;

  if (v0)
  {

    v2 = sub_2274FBB58;
  }

  else
  {
    v2 = sub_2274FB064;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274FB064()
{
  v49 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 680);
  v8 = [v7 description];
  v9 = sub_22766C000();
  v11 = v10;

  sub_22766A6D0();
  v12 = v7;

  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v37 = *(v0 + 688);
    v15 = *(v0 + 680);
    v41 = v15;
    v38 = *(v0 + 648);
    v39 = *(v0 + 656);
    v46 = *(v0 + 624);
    v47 = *(v0 + 664);
    v16 = *(v0 + 592);
    v40 = v9;
    v17 = *(v0 + 576);
    v44 = *(v0 + 528);
    v45 = *(v0 + 600);
    v42 = *(v0 + 520);
    v43 = *(v0 + 512);
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v48 = v36;
    *v18 = 141559298;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2080;
    v19 = [v15 UUID];
    sub_2276627B0();

    sub_2274FCDC8(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_22766D140();
    v22 = v21;
    v37(v16, v17);
    v23 = sub_226E97AE8(v20, v22, &v48);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2160;
    *(v18 + 24) = 1752392040;
    *(v18 + 32) = 2080;
    v24 = sub_226E97AE8(v38, v39, &v48);

    *(v18 + 34) = v24;
    *(v18 + 42) = 2160;
    *(v18 + 44) = 1752392040;
    *(v18 + 52) = 2080;
    v25 = sub_226E97AE8(v40, v11, &v48);

    *(v18 + 54) = v25;
    _os_log_impl(&dword_226E8E000, v13, v14, "Saved standalone workout in HealthKit with uuid: %{mask.hash}s, activityType: %{mask.hash}s, workout: %{mask.hash}s", v18, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v36, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);

    (*(v42 + 8))(v44, v43);
    v47(v46, v45);
  }

  else
  {
    v26 = *(v0 + 680);
    v27 = v13;
    v28 = *(v0 + 664);
    v29 = *(v0 + 624);
    v30 = *(v0 + 600);
    v31 = *(v0 + 528);
    v32 = *(v0 + 520);
    v33 = *(v0 + 512);

    (*(v32 + 8))(v31, v33);
    v28(v29, v30);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2274FB4C8()
{
  *(*v1 + 784) = v0;

  if (v0)
  {

    v2 = sub_2274FBCAC;
  }

  else
  {
    v2 = sub_2274FB5E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274FB5E4()
{
  v43 = v0;
  v1 = *(v0 + 680);
  v2 = [v1 description];
  v3 = sub_22766C000();
  v5 = v4;

  sub_22766A6D0();
  v6 = v1;

  v7 = sub_22766B380();
  v8 = sub_22766C8B0();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = *(v0 + 688);
    v9 = *(v0 + 680);
    v35 = v9;
    v32 = *(v0 + 648);
    v33 = *(v0 + 656);
    v40 = *(v0 + 624);
    v41 = *(v0 + 664);
    v10 = *(v0 + 592);
    v34 = v3;
    v11 = *(v0 + 576);
    v38 = *(v0 + 528);
    v39 = *(v0 + 600);
    v36 = *(v0 + 520);
    v37 = *(v0 + 512);
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v12 = 141559298;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    v13 = [v9 UUID];
    sub_2276627B0();

    sub_2274FCDC8(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22766D140();
    v16 = v15;
    v31(v10, v11);
    v17 = sub_226E97AE8(v14, v16, &v42);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2080;
    v18 = sub_226E97AE8(v32, v33, &v42);

    *(v12 + 34) = v18;
    *(v12 + 42) = 2160;
    *(v12 + 44) = 1752392040;
    *(v12 + 52) = 2080;
    v19 = sub_226E97AE8(v34, v5, &v42);

    *(v12 + 54) = v19;
    _os_log_impl(&dword_226E8E000, v7, v8, "Saved standalone workout in HealthKit with uuid: %{mask.hash}s, activityType: %{mask.hash}s, workout: %{mask.hash}s", v12, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v36 + 8))(v38, v37);
    v41(v40, v39);
  }

  else
  {
    v20 = *(v0 + 680);
    v21 = v7;
    v22 = *(v0 + 664);
    v23 = *(v0 + 624);
    v24 = *(v0 + 600);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);

    (*(v26 + 8))(v25, v27);
    v22(v23, v24);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2274FBA04()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v12 = *(v0 + 664);
  v5 = *(v0 + 624);
  v6 = *(v0 + 600);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);

  (*(v8 + 8))(v7, v9);
  v12(v5, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2274FBB58()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 680);
  v12 = *(v0 + 664);
  v5 = *(v0 + 624);
  v6 = *(v0 + 600);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);

  (*(v8 + 8))(v7, v9);
  v12(v5, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2274FBCAC()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 624);
  v3 = *(v0 + 600);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2274FBDB4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_227664CA0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_227662930();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v3[12] = swift_task_alloc();
  v6 = sub_227662750();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274FBF74, 0, 0);
}

uint64_t sub_2274FBF74(uint64_t a1)
{
  v3 = v1[14];
  v2 = v1[15];
  v5 = v1[12];
  v4 = v1[13];
  v7 = v1[10];
  v6 = v1[11];
  v8 = v1[9];
  sub_2276674F0();
  sub_2276674D0();
  v10 = v9;
  sub_227662740();
  (*(v7 + 104))(v6, *MEMORY[0x277CC9968], v8);
  sub_227662610();
  (*(v7 + 8))(v6, v8);
  v11 = *(v3 + 8);
  v1[17] = v11;
  v1[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v2, v4);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    sub_226E97D1C(v1[12], &qword_27D7B9690, qword_227670B50);
    v12 = sub_227664710();
    sub_2274FCDC8(&qword_27D7B9EB8, MEMORY[0x277D50BA8], MEMORY[0x277D50BB0]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D50B90], v12);
    swift_willThrow();

    v14 = v1[1];

    return v14();
  }

  else
  {
    v16 = v1[15];
    v17 = v1[13];
    v18 = v1[4];
    v19 = v1[5];
    (*(v1[14] + 32))(v1[16], v1[12], v17);
    v20 = objc_opt_self();
    v21 = sub_2276626A0();
    sub_227662740();
    v22 = sub_2276626A0();
    v11(v16, v17);
    v23 = [v20 predicateForSamplesWithStartDate:v21 endDate:v22 options:0];
    v1[19] = v23;

    v24 = [v20 predicateForWorkoutsWithOperatorType:3 duration:v10];
    v1[20] = v24;
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2276728D0;
    v26 = sub_22766C000();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_22701311C();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    *(v25 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
    *(v25 + 104) = sub_227013170();
    *(v25 + 72) = v18;

    v29 = sub_22766C7F0();
    v1[21] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2276856D0;
    *(v30 + 32) = v23;
    *(v30 + 40) = v24;
    *(v30 + 48) = v29;
    v31 = v23;
    v32 = v24;
    v33 = v29;
    v34 = sub_22766C2B0();

    v35 = [objc_opt_self() andPredicateWithSubpredicates_];
    v1[22] = v35;

    v36 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCCD50] ascending:0];
    v1[23] = v36;
    v37 = swift_task_alloc();
    v1[24] = v37;
    v37[2] = v35;
    v37[3] = v36;
    v37[4] = v19;
    v38 = swift_task_alloc();
    v1[25] = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BE8, &unk_227675760);
    *v38 = v1;
    v38[1] = sub_2274FC4EC;

    return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD000000000000029, 0x80000002276A2D70, sub_2274FCDBC, v37, v39);
  }
}

uint64_t sub_2274FC4EC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_2274FC978;
  }

  else
  {
    v2 = sub_2274FC620;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_2274FC620()
{
  v1 = v0[2];
  v28 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_22766CD20();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x22AA991A0](v5, v1);
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v6 = *(v1 + 8 * v5 + 32);
        }

        v7 = v6;
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v5;
        if (v4 == v2)
        {
          goto LABEL_17;
        }
      }

      MEMORY[0x22AA985C0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v3 = v28;
    }

    while (v4 != v2);
  }

LABEL_17:

  if (v3 >> 62)
  {
    v8 = sub_22766CD20();
    if (v8)
    {
      goto LABEL_19;
    }

LABEL_32:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_19:
  v29 = MEMORY[0x277D84F90];
  result = sub_226F1F828(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = v0[7];
  v12 = v29;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AA991A0](v10, v3);
    }

    else
    {
      v13 = *(v3 + 8 * v10 + 32);
    }

    sub_227664C30();
    v15 = *(v29 + 16);
    v14 = *(v29 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_226F1F828((v14 > 1), v15 + 1, 1);
    }

    v16 = v0[8];
    v17 = v0[6];
    ++v10;
    *(v29 + 16) = v15 + 1;
    (*(v11 + 32))(v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, v16, v17);
  }

  while (v8 != v10);

LABEL_33:
  v18 = v0[22];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[21];
  v22 = v0[19];
  v23 = v0[16];
  v24 = v0[17];
  v25 = v0[13];
  v27 = sub_226F43E94(v12);

  v24(v23, v25);

  v26 = v0[1];

  return v26(v27);
}

uint64_t sub_2274FC978()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 104);

  v6(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

void sub_2274FCA50(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  sub_226E99364(0, &qword_281398B48, 0x277CCD8D8);
  v11 = [swift_getObjCClassFromMetadata() workoutType];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227670B30;
  *(v12 + 32) = a3;
  (*(v8 + 16))(v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  v15 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
  v16 = a3;
  v17 = sub_22766C2B0();

  aBlock[4] = sub_2270131E0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2274FCD04;
  aBlock[3] = &block_descriptor_38;
  v18 = _Block_copy(aBlock);
  v19 = [v15 initWithSampleType:v11 predicate:v21 limit:0 sortDescriptors:v17 resultsHandler:v18];

  _Block_release(v18);

  __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  sub_227669CD0();
}

double sub_2274FCD04(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_226E99364(0, &qword_281398A10, 0x277CCD8A8);
    v5 = sub_22766C2C0();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

uint64_t sub_2274FCDC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2274FCE10(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227669550();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_2274FD2D4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

void *static Equipment.representativeSamples()()
{
  v14 = sub_227669580();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  v20 = sub_22766C090();
  v21[0] = v3;
  v21[1] = v21;
  v21[2] = &v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v19 = v18;
  v16 = sub_2272BFE28();
  v17 = v16;
  v4 = sub_2276638E0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_226F1F868(0, v5, 0);
    v7 = 0;
    v8 = v15;
    v12 = v0 + 32;
    v13 = v4;
    v9 = v4 + 56;
    while (v7 < *(v4 + 16))
    {

      sub_227669550();
      v15 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_226F1F868((v10 > 1), v11 + 1, 1);
        v8 = v15;
      }

      ++v7;
      *(v8 + 16) = v11 + 1;
      result = (*(v0 + 32))(v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v11, v2, v14);
      v9 += 32;
      v4 = v13;
      if (v5 == v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2274FD1E0(void *a1)
{
  sub_227669560();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227669570();
  v3 = sub_22766BFD0();

  [a1 setName_];
}

uint64_t sub_2274FD27C(uint64_t a1)
{
  result = sub_2274FD2D4(&qword_28139B1F8, MEMORY[0x277D53E88], &protocol conformance descriptor for Equipment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274FD2D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2274FD31C(uint64_t a1)
{
  v38 = sub_2276694E0();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v28 = v1;
    v40 = MEMORY[0x277D84F90];
    sub_22766CF30();
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v35 = a1;
    v36 = v3;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v29 = a1 + 64;
    v30 = v10;
    v31 = a1 + 56;
    v32 = v5;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v39 = v9;
      v13 = *(a1 + 48);
      v14 = v36;
      v15 = v37;
      v16 = v38;
      (*(v36 + 16))(v37, v13 + *(v36 + 72) * v8, v38);
      sub_2276694C0();
      v17 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
      v18 = sub_22766BFD0();

      [v17 initWithZoneName_];

      v19 = *(v14 + 8);
      a1 = v35;
      v19(v15, v16);
      sub_22766CF00();
      sub_22766CF40();
      sub_22766CF50();
      result = sub_22766CF10();
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = v32;
      v21 = *(v31 + 8 * v12);
      if ((v21 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v10) = v30;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v8 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v29 + 8 * v12);
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_22704FE58(v8, v30, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_22704FE58(v8, v30, 0);
      }

LABEL_4:
      v9 = v39 + 1;
      v8 = v11;
      if (v39 + 1 == v20)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2274FD654(uint64_t a1)
{
  v37 = sub_2276694E0();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26[1] = v1;
    v39 = MEMORY[0x277D84F90];
    sub_22766CF30();
    v7 = a1 + 56;
    v8 = sub_22766CC90();
    v9 = *(a1 + 36);
    result = sub_226E99364(0, &qword_281398B10, 0x277CBC5F8);
    v33 = result;
    v10 = 0;
    v31 = *MEMORY[0x277CBBF28];
    v32 = v3 + 16;
    v34 = a1;
    v35 = v3;
    v29 = v5;
    v30 = v3 + 8;
    v27 = a1 + 64;
    v28 = v9;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v38 = v10;
      v13 = *(a1 + 48);
      v15 = v35;
      v14 = v36;
      v16 = v37;
      (*(v35 + 16))(v36, v13 + *(v35 + 72) * v8, v37);
      sub_2276694C0();
      sub_22766C000();
      sub_22766C8F0();
      v17 = v14;
      a1 = v34;
      (*(v15 + 8))(v17, v16);
      sub_22766CF00();
      sub_22766CF40();
      sub_22766CF50();
      result = sub_22766CF10();
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v18 = *(v7 + 8 * v12);
      v19 = v29;
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v9) = v28;
      if (v28 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v18 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v11 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v23 = (v27 + 8 * v12);
        while (v22 < (v11 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_22704FE58(v8, v28, 0);
            v11 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_22704FE58(v8, v28, 0);
      }

LABEL_4:
      v10 = v38 + 1;
      v8 = v11;
      if (v38 + 1 == v19)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_2274FD99C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_2274FDC88();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_2274FD9F4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = type metadata accessor for ServerConnectionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v2[4] = 0;
  v12 = *(v7 + 104);
  v12(&v18 - v13, *MEMORY[0x277D4EE98], v6, v11);
  sub_2276693D0();
  if (sub_2276693B0())
  {
    v14 = 4;
  }

  else
  {
    v14 = 6;
  }

  v21 = v14;
  sub_2274FE4B0();
  sub_22747F1B0();
  sub_227669760();
  (v12)(v9, *MEMORY[0x277D4EED8], v6);
  v15 = sub_2276624A0();
  (*(*(v15 - 8) + 56))(v5, 2, 2, v15);
  sub_2274FFD98(&qword_2813A0B00, type metadata accessor for ServerConnectionType, &unk_2276770A0);
  sub_2274FFD98(&qword_2813A0AF8, type metadata accessor for ServerConnectionType, &unk_227677078);
  sub_227669760();
  v16 = v20;
  v2[2] = v19;
  v2[3] = v16;
  return v2;
}

id sub_2274FDC88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE280, &qword_227689C38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - v4;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A700();

  v10 = sub_22766B380();
  v11 = sub_22766C8B0();

  v47 = v11;
  if (os_log_type_enabled(v10, v11))
  {
    v43 = v10;
    v44 = v7;
    v45 = v6;
    v12 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = v42;
    *v12 = 136315394;
    v13 = *(v3 + 16);
    v41 = OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment;
    v48 = v13;
    v13(v5, v1 + OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment, v2);
    sub_227669730();
    v46 = v3;
    v40 = *(v3 + 8);
    v40(v5, v2);
    v14 = 0xD000000000000011;
    v15 = "SeymourServer-dev-itms";
    v16 = "SeymourServer-prod-itms";
    v17 = 0xD000000000000012;
    if (v49 != 6)
    {
      v17 = 0xD000000000000017;
      v16 = "personalizeCatalogTiles(_:)";
    }

    v18 = "SeymourServer-living-on-itms";
    v19 = 0xD00000000000001CLL;
    if (v49 == 4)
    {
      v19 = 0xD000000000000017;
    }

    else
    {
      v18 = "SeymourServer-prod";
    }

    if (v49 <= 5u)
    {
      v17 = v19;
      v16 = v18;
    }

    v20 = "SeymourServer-qa-itms";
    v21 = 0xD000000000000010;
    if (v49 != 2)
    {
      v21 = 0xD000000000000015;
      v20 = "SeymourServer-living-on";
    }

    if (v49)
    {
      v14 = 0xD000000000000016;
      v15 = "SeymourServer-qa";
    }

    if (v49 > 1u)
    {
      v14 = v21;
      v15 = v20;
    }

    if (v49 <= 3u)
    {
      v22 = v14;
    }

    else
    {
      v22 = v17;
    }

    if (v49 <= 3u)
    {
      v23 = v15;
    }

    else
    {
      v23 = v16;
    }

    v24 = sub_226E97AE8(v22, v23 | 0x8000000000000000, &v50);

    *(v12 + 4) = v24;
    *(v12 + 12) = 2080;
    v48(v5, v1 + v41, v2);
    sub_227669730();
    v40(v5, v2);
    v25 = CKContainerEnvironmentString();
    v26 = sub_22766C000();
    v28 = v27;

    v29 = sub_226E97AE8(v26, v28, &v50);

    *(v12 + 14) = v29;
    v30 = v43;
    _os_log_impl(&dword_226E8E000, v43, v47, "Using serviceName: %s in environment %s", v12, 0x16u);
    v31 = v42;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v44 + 8))(v9, v45);
    v3 = v46;
    v48(v5, v1 + OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment, v2);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment, v2);
  }

  sub_227669730();
  (*(v3 + 8))(v5, v2);
  v32 = qword_227689C78[v51];
  v33 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v34 = sub_22766BFD0();
  v35 = [v33 initWithContainerIdentifier:v34 environment:v32];

  v36 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  v37 = [v36 options];
  sub_2276693D0();
  sub_2276693E0();
  v38 = sub_22766BFD0();

  [v37 setApplicationBundleIdentifierOverrideForNetworkAttribution_];

  return v36;
}

uint64_t sub_2274FE210()
{

  v1 = OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE280, &qword_227689C38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SeymourServices15ServerContainer__connectionType;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE288, &qword_227689C40);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerContainer(uint64_t a1)
{
  result = qword_2813A3850;
  if (!qword_2813A3850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2274FE368(uint64_t a1)
{
  sub_2274FE448(319);
  if (v1 <= 0x3F)
  {
    sub_2274FE504(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2274FE448(uint64_t a1)
{
  if (!qword_2813A54C0)
  {
    sub_2274FE4B0();
    sub_22747F1B0();
    v1 = sub_227669750();
    if (!v2)
    {
      atomic_store(v1, &qword_2813A54C0);
    }
  }
}

unint64_t sub_2274FE4B0()
{
  result = qword_2813A27B8[0];
  if (!qword_2813A27B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813A27B8);
  }

  return result;
}

void sub_2274FE504(uint64_t a1)
{
  if (!qword_2813A54B8)
  {
    type metadata accessor for ServerConnectionType(255);
    sub_2274FFD98(&qword_2813A0B00, type metadata accessor for ServerConnectionType, &unk_2276770A0);
    sub_2274FFD98(&qword_2813A0AF8, type metadata accessor for ServerConnectionType, &unk_227677078);
    v1 = sub_227669750();
    if (!v2)
    {
      atomic_store(v1, &qword_2813A54B8);
    }
  }
}

id sub_2274FE5D0(char a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE288, &qword_227689C40);
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v37 - v5;
  v7 = type metadata accessor for ServerConnectionType(0);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v12 - 8);
  v41 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE280, &qword_227689C38);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v18 = sub_2274FD99C();
  v19 = v18;
  v20 = &selRef_privateCloudDatabase;
  if ((a1 & 1) == 0)
  {
    v20 = &selRef_publicCloudDatabase;
  }

  v21 = [v18 *v20];

  v22 = *(v2 + 32);
  (*(v15 + 16))(v17, v2 + OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment, v14);
  v39 = v22;
  sub_227669730();
  (*(v15 + 8))(v17, v14);
  v23 = sub_22766BFD0();

  v24 = v21;
  v25 = [v21 databaseScope];
  v26 = v38;
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC15SeymourServices15ServerContainer__connectionType, v38);
  sub_227669730();
  (*(v4 + 8))(v6, v26);
  v27 = v40;
  sub_22706D8B0(v11, v40);
  v28 = sub_2276624A0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v31 = v30(v27, 2, v28);
  if (v31)
  {
    v32 = v41;
    if (v31 == 1)
    {
      sub_227662470();
      sub_22706DC8C(v11);
    }

    else
    {
      sub_22706DC8C(v11);
      (*(v29 + 56))(v32, 1, 1, v28);
    }
  }

  else
  {
    sub_22706DC8C(v11);
    v32 = v41;
    (*(v29 + 32))(v41, v27, v28);
    (*(v29 + 56))(v32, 0, 1, v28);
  }

  v33 = v39;
  if (v30(v32, 1, v28) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_2276623E0();
    (*(v29 + 8))(v32, v28);
  }

  v35 = [v33 codeServiceWithName:v23 databaseScope:v25 serviceInstanceURL:v34];

  return v35;
}

uint64_t sub_2274FEB78()
{
  v1 = sub_2274FD99C();
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2274FECA0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE290, &unk_227689C50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2274FEE98;
  v0[13] = &block_descriptor_39;
  v0[14] = v2;
  [v1 accountInfoWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2274FECA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2274FEE28;
  }

  else
  {
    v2 = sub_2274FEDB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274FEDB0()
{
  v1 = *(v0 + 144);

  v2 = sub_2274FEF70();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2274FEE28(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2274FEE98(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2274FEF70()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 deviceToDeviceEncryptionAvailability];
  if (([v1 deviceToDeviceEncryptionAvailability] & 1) == 0)
  {
    return 1;
  }

  v9 = [v1 accountStatus];
  if (v9 > 1)
  {
    if ((v9 - 2) < 2)
    {
      return 3;
    }

    if (v9 == 4)
    {
      return 2;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      return (v7 & 2) == 0;
    }

LABEL_11:
    sub_22766A700();
    v10 = v1;
    v11 = sub_22766B380();
    v12 = sub_22766C8A0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136446210;
      v18 = [v10 accountStatus];
      type metadata accessor for CKAccountStatus(0);
      v15 = sub_22766C060();
      v17 = sub_226E97AE8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v11, v12, "Unhandled Account State, %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AA9A450](v14, -1, -1);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 4;
}

uint64_t sub_2274FF1C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274FF280, 0, 0);
}

uint64_t sub_2274FF280(uint64_t a1)
{
  v20 = v1;
  sub_22766A700();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    sub_2276694E0();
    sub_2274FFD98(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v10 = sub_22766C610();
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v2, v3, "Requesting Deletion of %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v13 = v1[3];
  sub_2274FD654(v1[2]);
  sub_226E99364(0, &qword_27D7BE298, 0x277CBC490);
  v14 = sub_22766CA70();
  v1[7] = v14;
  v15 = swift_task_alloc();
  v1[8] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_task_alloc();
  v1[9] = v16;
  *v16 = v1;
  v16[1] = sub_2274FF51C;
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v16, 0, 0, 0xD000000000000013, 0x80000002276A2E70, sub_2274FFE74, v15, v17);
}

uint64_t sub_2274FF51C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2274FFE70;
  }

  else
  {

    v2 = sub_2274FFE6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274FF638(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274FF6F8, 0, 0);
}

uint64_t sub_2274FF6F8(uint64_t a1)
{
  v20 = v1;
  sub_22766A700();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    sub_2276694E0();
    sub_2274FFD98(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v10 = sub_22766C610();
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v2, v3, "Requesting Creation of %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v13 = v1[3];
  sub_2274FD31C(v1[2]);
  sub_226E99364(0, &qword_27D7BE298, 0x277CBC490);
  v14 = sub_22766CA70();
  v1[7] = v14;
  v15 = swift_task_alloc();
  v1[8] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_task_alloc();
  v1[9] = v16;
  *v16 = v1;
  v16[1] = sub_2274FF994;
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v16, 0, 0, 0xD000000000000013, 0x80000002276A2E70, sub_2274FFD90, v15, v17);
}

uint64_t sub_2274FF994()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2274FFB1C;
  }

  else
  {

    v2 = sub_2274FFAB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274FFAB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2274FFB1C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2274FFB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  sub_22766CA60();
  v11 = sub_2274FD99C();
  v12 = [v11 privateCloudDatabase];

  [v12 addOperation_];
}

uint64_t sub_2274FFD1C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
    return sub_22766C440();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
    return sub_22766C450();
  }
}

uint64_t sub_2274FFD98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2274FFDE0(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);

  return sub_2274FFD1C(a1, a2 & 1);
}

uint64_t sub_2274FFE78()
{
  v1 = v0;
  v2 = sub_227664EC0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D511C0])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x277D511D0])
  {
    return 11;
  }

  if (v7 == *MEMORY[0x277D511F8])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277D51200])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D511B8])
  {
    return 11;
  }

  if (v7 == *MEMORY[0x277D511F0])
  {
    return 9;
  }

  if (v7 == *MEMORY[0x277D511D8])
  {
    return 12;
  }

  (*(v3 + 8))(v6, v2);
  return 13;
}

uint64_t sub_227500078()
{
  v0 = sub_226F4BE8C(&unk_283A93C00);
  result = swift_arrayDestroy();
  off_27D7BE2A0 = v0;
  return result;
}

double static DeviceRegistryConstants.unsupportedDeviceProductTypeList.getter()
{
  if (qword_27D7B7F30 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_227500130(uint64_t a1, char a2)
{
  *(v3 + 312) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_227665030();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A0, &unk_227683B80);
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v6 = sub_22766B390();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227500378, 0, 0);
}

uint64_t sub_227500378(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[18];
  v4 = v1[19];
  sub_22766A730();
  sub_22766B370();
  v5 = *(v4 + 8);
  v1[26] = v5;
  v1[27] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  sub_2275025C0();
  v6 = v1[25];
  v7 = v1[18];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[3];
  sub_227502B6C(v1[17]);
  sub_22766A730();
  sub_22766B370();
  v5(v6, v7);
  v11 = v10[20];
  v12 = v10[21];
  __swift_project_boxed_opaque_existential_0(v10 + 17, v11);

  sub_226ECF5D8(sub_2275078D0, v10, v11, v9, v12, v8);

  v13 = swift_task_alloc();
  v1[28] = v13;
  *(v13 + 16) = "SeymourServices/CatalogSyncEvaluator.swift";
  *(v13 + 24) = 42;
  *(v13 + 32) = 2;
  *(v13 + 40) = 48;
  *(v13 + 48) = v8;
  v14 = swift_task_alloc();
  v1[29] = v14;
  *v14 = v1;
  v14[1] = sub_2275006B0;
  v15 = v1[16];
  v16 = v1[11];

  return MEMORY[0x2822008A0](v15, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275078E8, v13, v16);
}

uint64_t sub_2275006B0()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_227501354;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v3 = sub_227500800;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227500800(uint64_t a1)
{
  v98 = v1;
  v2 = *(v1 + 136);
  v3 = *(v1 + 120);
  sub_22766A730();
  sub_2274E57D8(v2, v3);
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 144);
  v8 = *(v1 + 208);
  v9 = *(v1 + 192);
  v10 = *(v1 + 120);
  if (v6)
  {
    v93 = *(v1 + 208);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v97[0] = v12;
    *v11 = 136315138;
    v13 = sub_22766CB80();
    v15 = v14;
    sub_226E97D1C(v10, &qword_27D7BA3A8, &qword_22767B360);
    v16 = sub_226E97AE8(v13, v15, v97);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v4, v5, "[CatalogSyncCoordinator] Last successful catalog sync anchor: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    v93(v9, v7);
  }

  else
  {

    sub_226E97D1C(v10, &qword_27D7BA3A8, &qword_22767B360);
    v8(v9, v7);
  }

  v17 = *(v1 + 128);
  v18 = *(v1 + 112);
  sub_22766A730();
  sub_2274E57D8(v17, v18);
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v1 + 208);
  v23 = *(v1 + 184);
  v24 = *(v1 + 144);
  v25 = *(v1 + 112);
  if (v21)
  {
    v94 = *(v1 + 208);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v97[0] = v27;
    *v26 = 136315138;
    v28 = sub_22766CB80();
    v30 = v29;
    sub_226E97D1C(v25, &qword_27D7BA3A8, &qword_22767B360);
    v31 = sub_226E97AE8(v28, v30, v97);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_226E8E000, v19, v20, "[CatalogSyncCoordinator] Last incremental catalog sync anchor: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AA9A450](v27, -1, -1);
    MEMORY[0x22AA9A450](v26, -1, -1);

    v94(v23, v24);
  }

  else
  {

    sub_226E97D1C(v25, &qword_27D7BA3A8, &qword_22767B360);
    v22(v23, v24);
  }

  v33 = (v1 + 32);
  v32 = *(v1 + 32);
  v34 = *(v1 + 104);
  v35 = *(v1 + 40);
  sub_2274E57D8(*(v1 + 136), v34);
  v36 = *(v35 + 48);
  if (v36(v34, 1, v32) == 1)
  {
    sub_226E97D1C(*(v1 + 104), &qword_27D7BA3A8, &qword_22767B360);
    v37 = sub_227666360();
    v39 = v38;
    if (v37 == sub_227666360() && v39 == v40)
    {

LABEL_14:
      v47 = swift_task_alloc();
      *(v1 + 296) = v47;
      *v47 = v1;
      v48 = sub_227501C78;
LABEL_28:
      v47[1] = v48;

      return sub_227502E70();
    }

    v46 = sub_22766D190();

    if (v46)
    {
      goto LABEL_14;
    }

    v41 = (v1 + 160);
    sub_22766A730();
    v59 = sub_22766B380();
    v60 = sub_22766C8B0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_226E8E000, v59, v60, "[CatalogSyncCoordinator] No successful catalog sync, sync required", v61, 2u);
      MEMORY[0x22AA9A450](v61, -1, -1);
    }

    v62 = *(v1 + 208);
    v33 = (v1 + 144);
    goto LABEL_41;
  }

  v41 = (v1 + 56);
  v42 = *(v1 + 128);
  v43 = *(v1 + 96);
  v44 = *(v1 + 32);
  v45 = *(*(v1 + 40) + 32);
  v45(*(v1 + 56), *(v1 + 104), v44);
  sub_2274E57D8(v42, v43);
  if (v36(v43, 1, v44) == 1)
  {
    sub_226E97D1C(*(v1 + 96), &qword_27D7BA3A8, &qword_22767B360);
    goto LABEL_23;
  }

  v49 = *(v1 + 48);
  v50 = *(v1 + 56);
  v45(v49, *(v1 + 96), *(v1 + 32));
  if ((MEMORY[0x22AA912B0](v50, v49) & 1) == 0)
  {
    (*(*(v1 + 40) + 8))(*(v1 + 48), *(v1 + 32));
LABEL_23:
    v63 = sub_227666360();
    v65 = v64;
    if (v63 == sub_227666360() && v65 == v66)
    {

LABEL_27:
      v47 = swift_task_alloc();
      *(v1 + 280) = v47;
      *v47 = v1;
      v48 = sub_227501960;
      goto LABEL_28;
    }

    v67 = sub_22766D190();

    if (v67)
    {
      goto LABEL_27;
    }

    sub_22766A730();
    v69 = sub_22766B380();
    v70 = sub_22766C8B0();
    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v1 + 208);
    v73 = *(v1 + 168);
    v74 = *(v1 + 144);
    v75 = *(v1 + 40);
    if (v71)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_226E8E000, v69, v70, "[CatalogSyncCoordinator] Last successful sync anchor does not match the incremental sync anchor, sync required", v76, 2u);
      MEMORY[0x22AA9A450](v76, -1, -1);
    }

    v72(v73, v74);
    v62 = *(v75 + 8);
LABEL_41:
    v89 = *(v1 + 128);
    v88 = *(v1 + 136);
    v62(*v41, *v33);
    sub_226E97D1C(v89, &qword_27D7BA3A8, &qword_22767B360);
    sub_226E97D1C(v88, &qword_27D7BA3A8, &qword_22767B360);

    v87 = *(v1 + 8);
LABEL_42:

    return v87();
  }

  if ((*(v1 + 312) & 0xFE) == 2)
  {
    sub_22766A730();
    v51 = sub_22766B380();
    v52 = sub_22766C8B0();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v1 + 208);
    v55 = *(v1 + 176);
    v56 = *(v1 + 144);
    v57 = *(v1 + 40);
    v95 = *(v1 + 32);
    v96 = *(v1 + 48);
    if (v53)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_226E8E000, v51, v52, "[CatalogSyncEvaluator] sync is required", v58, 2u);
      MEMORY[0x22AA9A450](v58, -1, -1);
    }

    v54(v55, v56);
    v62 = *(v57 + 8);
    v62(v96, v95);
    goto LABEL_41;
  }

  v77 = sub_227667AF0();
  v79 = v78;
  if (v77 == sub_227667AF0() && v79 == v80)
  {

LABEL_38:
    v82 = *(v1 + 240);
    sub_227503224();
    if (!v82)
    {
      v47 = swift_task_alloc();
      *(v1 + 248) = v47;
      *v47 = v1;
      v48 = sub_2275014A8;
      goto LABEL_28;
    }

    v83 = *(v1 + 128);
    v84 = *(v1 + 56);
    v85 = *(v1 + 32);
    v86 = *(*(v1 + 40) + 8);
    v86(*(v1 + 48), v85);
    v86(v84, v85);
    sub_226E97D1C(v83, &qword_27D7BA3A8, &qword_22767B360);
    sub_226E97D1C(*(v1 + 136), &qword_27D7BA3A8, &qword_22767B360);

    v87 = *(v1 + 8);
    goto LABEL_42;
  }

  v81 = sub_22766D190();

  if (v81)
  {
    goto LABEL_38;
  }

  v90 = *(v1 + 312);
  v91 = swift_task_alloc();
  *(v1 + 264) = v91;
  *v91 = v1;
  v91[1] = sub_22750162C;
  v92 = *(v1 + 16);

  return sub_2275034F0(v92, v90 & 1);
}

uint64_t sub_227501354()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2275014A8()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22750222C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 312);
    v4 = swift_task_alloc();
    *(v2 + 264) = v4;
    *v4 = v2;
    v4[1] = sub_22750162C;
    v5 = *(v2 + 16);

    return sub_2275034F0(v5, v3 & 1);
  }
}

uint64_t sub_22750162C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_2275023B4;
  }

  else
  {
    v2 = sub_227501740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227501740(uint64_t a1)
{
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[26];
  v6 = v1[22];
  v7 = v1[18];
  v9 = v1[5];
  v8 = v1[6];
  v10 = v1[4];
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSyncEvaluator] sync is required", v11, 2u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  v5(v6, v7);
  v12 = *(v9 + 8);
  v12(v8, v10);
  v14 = v1[16];
  v13 = v1[17];
  v12(v1[7], v1[4]);
  sub_226E97D1C(v14, &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v13, &qword_27D7BA3A8, &qword_22767B360);

  v15 = v1[1];

  return v15();
}

uint64_t sub_227501960()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_2275020BC;
  }

  else
  {
    v2 = sub_227501A74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227501A74(uint64_t a1)
{
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[26];
  v6 = v1[21];
  v7 = v1[18];
  v8 = v1[5];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSyncCoordinator] Last successful sync anchor does not match the incremental sync anchor, sync required", v9, 2u);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v5(v6, v7);
  v11 = v1[16];
  v10 = v1[17];
  (*(v8 + 8))(v1[7], v1[4]);
  sub_226E97D1C(v11, &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v10, &qword_27D7BA3A8, &qword_22767B360);

  v12 = v1[1];

  return v12();
}

uint64_t sub_227501C78()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_227501F68;
  }

  else
  {
    v2 = sub_227501D8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227501D8C(uint64_t a1)
{
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSyncCoordinator] No successful catalog sync, sync required", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v1 + 136);
  v6 = *(v1 + 128);
  (*(v1 + 208))(*(v1 + 160), *(v1 + 144));
  sub_226E97D1C(v6, &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v5, &qword_27D7BA3A8, &qword_22767B360);

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_227501F68()
{
  sub_226E97D1C(v0[16], &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2275020BC()
{
  v1 = v0[16];
  (*(v0[5] + 8))(v0[7], v0[4]);
  sub_226E97D1C(v1, &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22750222C()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[4];
  v4 = *(v0[5] + 8);
  v4(v0[6], v3);
  v4(v2, v3);
  sub_226E97D1C(v1, &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2275023B4()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[4];
  v4 = *(v0[5] + 8);
  v4(v0[6], v3);
  v4(v2, v3);
  sub_226E97D1C(v1, &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22750253C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);

  return swift_deallocClassInstance();
}

void sub_2275025C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - v4;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_2276658F0();
  v35 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v40 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = *__swift_project_boxed_opaque_existential_0((v1 + 224), *(v1 + 248));
  sub_22766A730();
  sub_22766B370();
  v18 = *(v7 + 8);
  v34 = v6;
  v19 = v6;
  v20 = v18;
  v18(v11, v19);
  (*(v3 + 16))(v5, v17 + OBJC_IVAR____TtC15SeymourServices18StorefrontObserver__storefrontContentAvailableOverride, v2);
  sub_227669730();
  (*(v3 + 8))(v5, v2);
  if (v38 == 1)
  {
    v21 = *MEMORY[0x277D51A28];
    v22 = v35;
    v23 = *(v35 + 104);
    v23(v16, v21, v12);
  }

  else
  {
    sub_226EA89DC();
    __swift_project_boxed_opaque_existential_0((v17 + 112), *(v17 + 136));
    sub_227669B20();
    v21 = *MEMORY[0x277D51A28];
    v22 = v35;
    v23 = *(v35 + 104);
  }

  v23(v40, v21, v12);
  sub_22750799C(&qword_28139B798, MEMORY[0x277D51A40], MEMORY[0x277D51A50]);
  sub_22766C290();
  sub_22766C290();
  if (v38 == v36 && v39 == v37)
  {
    v24 = *(v22 + 8);
    v24(v40, v12);
    v24(v16, v12);
  }

  else
  {
    v25 = sub_22766D190();
    v26 = *(v22 + 8);
    v26(v40, v12);
    v26(v16, v12);

    if ((v25 & 1) == 0)
    {
      v27 = v33;
      sub_22766A730();
      v28 = sub_22766B380();
      v29 = sub_22766C8B0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_226E8E000, v28, v29, "[CatalogSyncEvaluator] Storefront not available, skipping sync", v30, 2u);
        MEMORY[0x22AA9A450](v30, -1, -1);
      }

      v20(v27, v34);
      v31 = sub_227665D10();
      sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08], MEMORY[0x277D51E10]);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51DF8], v31);
      swift_willThrow();
    }
  }
}

uint64_t sub_227502B6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227669A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  (*(v3 + 104))(v5, *MEMORY[0x277D4F010], v2);
  sub_227669A80();
  (*(v3 + 8))(v5, v2);
  v7 = sub_22766BFD0();

  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = v14[2];
      v10 = v14[3];
      v11 = sub_227665030();
      sub_226F5E0B4(v9, v10);
      sub_22750799C(&qword_28139B868, MEMORY[0x277D512F0], MEMORY[0x277D512E8]);
      sub_2276683D0();
      sub_226EDC420(v9, v10);
      return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    }
  }

  else
  {
    sub_226E97D1C(v17, &unk_27D7BC990, &qword_227670A30);
  }

  v12 = sub_227665030();
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t sub_227502E70()
{
  v1 = sub_22766B390();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227502F58;

  return sub_227506D70();
}

uint64_t sub_227502F58(char a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_227503058, 0, 0);
}

uint64_t sub_227503058(uint64_t a1)
{
  if (*(v1 + 48) == 1)
  {

    v2 = *(v1 + 8);
  }

  else
  {
    sub_22766A730();
    v3 = sub_22766B380();
    v4 = sub_22766C8B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_226E8E000, v3, v4, "[CatalogSyncEvaluator] Unsubscribed user, skipping sync", v5, 2u);
      MEMORY[0x22AA9A450](v5, -1, -1);
    }

    v7 = *(v1 + 24);
    v6 = *(v1 + 32);
    v8 = *(v1 + 16);

    (*(v7 + 8))(v6, v8);
    v9 = sub_227665D10();
    sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08], MEMORY[0x277D51E10]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51DE0], v9);
    swift_willThrow();

    v2 = *(v1 + 8);
  }

  return v2();
}

uint64_t sub_227503224()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766A8A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276693C0();
  (*(v5 + 104))(v7, *MEMORY[0x277D4F8B0], v4);
  v9 = sub_226EC9A38(v7, v8);

  result = (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    sub_22766A730();
    v11 = sub_22766B380();
    v12 = sub_22766C8B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226E8E000, v11, v12, "[CatalogSyncEvaluator] Current platform does not support periodic background sync", v13, 2u);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v14 = sub_227665D10();
    sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08], MEMORY[0x277D51E10]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51DD8], v14);
    return swift_willThrow();
  }

  return result;
}