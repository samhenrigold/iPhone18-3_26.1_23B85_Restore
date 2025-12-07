uint64_t sub_25BB06E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a3;
  v8[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v5 = sub_25BB074EC();
  return sub_25BAB2B20(sub_25BB074BC, v8, v4, a3, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v6);
}

uint64_t sub_25BB06EE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  sub_25BB073E4(a2 + 24, &v22);
  if (v23)
  {
    sub_25BA97060(&v22, v24);
    v9 = v25;
    v10 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    *&v22 = v8;
    v11 = *(v10 + 8);
    v12 = sub_25BCB68CC();
    WitnessTable = swift_getWitnessTable();
    v14 = v11(&v22, v12, WitnessTable, v9, v10);
    v15 = sub_25BB06E2C(v14, v8, a4);

    *&v22 = v15;
    v16 = *(a6 + 8);
    OUTLINED_FUNCTION_1_1();
    v17 = swift_getWitnessTable();
    v16(&v22, v12, v17, a4, a6);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_25BB07454(&v22);
    v24[0] = v8;
    v19 = *(a6 + 8);
    v20 = sub_25BCB68CC();
    sub_25BCB617C();
    OUTLINED_FUNCTION_1_1();
    v21 = swift_getWitnessTable();
    return v19(v24, v20, v21, a4, a6);
  }
}

uint64_t objectdestroy_5Tm()
{

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_25BB07108@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  Dataset.makeIterator()(a1, a2, a3);
  v5 = *(*(a1 - 1) + 8);

  return v5(v3, a1);
}

uint64_t sub_25BB07208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks7Sampler_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25BB07270(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BB072B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25BB07340(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB07360(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_25BB07390(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB073AC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_25BB073E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FA8, &qword_25BCBBF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB07454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FA8, &qword_25BCBBF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BB074EC()
{
  result = qword_27FBB3FB0;
  if (!qword_27FBB3FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FB0);
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

BOOL sub_25BB075A4()
{
  result = sub_25BB075C8();
  byte_27FBDB4B8 = result;
  return result;
}

BOOL sub_25BB075C8()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v2 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = v3 == 0;
  }

  return !v0;
}

uint64_t sub_25BB0766C()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v0 + 128);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v4 = OUTLINED_FUNCTION_5(v3);
  *(v4 + 16) = xmmword_25BCBB6D0;
  v5 = v1 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  if (!v2)
  {
    if (!v5)
    {
LABEL_6:
      v6 = *(v1 + 32);
LABEL_7:
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_2_4();
      v12 = sub_25BB07C28(v7, v8, v9, v10, v11);
      goto LABEL_11;
    }

LABEL_12:
    OUTLINED_FUNCTION_4_4();
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (v5)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v13 = *(v1 + 32);
  }

  v1 = v13;
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_4();
  v12 = sub_25BB07BA4(v14, v15, v16, v17, v18);
LABEL_11:
  v19 = v12;

  *(v4 + 32) = v19;
  return v4;
}

uint64_t sub_25BB077B8()
{
  OUTLINED_FUNCTION_3_7();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = OUTLINED_FUNCTION_5(v1);
  *(v2 + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_1_6();
  if ((v0 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v3 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_4();
  v9 = sub_25BB07C28(v4, v5, v6, v7, v8);

  *(v2 + 32) = v9;
  return v2;
}

double sub_25BB07870()
{
  OUTLINED_FUNCTION_3_7();
  v5 = v4 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  if (v5)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v6 = v3[4];
  }

  v7 = v6;
  sub_25BAB4D78(1uLL, v5 == 0, v3);
  if (v5)
  {
    MEMORY[0x25F8779B0](1, v3);
  }

  else
  {
    v8 = v3[5];
  }

  OUTLINED_FUNCTION_0_8();
  v9 = sub_25BB07CA4(v7, v3, v1, v0, v2, &selRef_reLUGradientWithIncomingGradient_sourceTensor_name_);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v11 = OUTLINED_FUNCTION_5(v10);
  *&result = 1;
  *(v11 + 16) = xmmword_25BCBB6D0;
  *(v11 + 32) = v9;
  return result;
}

uint64_t sub_25BB07964(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = OUTLINED_FUNCTION_5(v5);
  *(v6 + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_1_6();
  if ((a2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  v9 = v2[16];
  v11 = v2[3];
  v10 = v2[4];
  sub_25BCB617C();
  v12 = sub_25BB07CA4(v8, v9, v11, v10, a1, &selRef_softMaxWithTensor_axis_name_);

  *(v6 + 32) = v12;
  return v6;
}

uint64_t sub_25BB07A40(uint64_t a1)
{
  result = sub_25BB07B50(qword_28154F128, type metadata accessor for SoftmaxOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB07A84(uint64_t a1)
{
  result = sub_25BB07B50(qword_28154E000, type metadata accessor for ReLUGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB07AC8(uint64_t a1)
{
  result = sub_25BB07B50(&unk_28154F9C0, type metadata accessor for ReLUOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB07B0C(uint64_t a1)
{
  result = sub_25BB07B50(&qword_27FBB3FB8, type metadata accessor for ActivationOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB07B50(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BB07BA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v8 = sub_25BCB633C();

  v9 = [a4 leakyReLUWithTensor:a1 alpha:v8 name:a5];

  return v9;
}

id sub_25BB07C28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v8 = sub_25BCB633C();

  v9 = [a4 *a5];

  return v9;
}

id sub_25BB07CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6)
{
  v10 = sub_25BCB633C();

  v11 = [a5 *a6];

  return v11;
}

void sub_25BB07D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TileOp.swift", 108, 2, 20, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

void sub_25BB07D88(uint64_t a1)
{
  (*(*v1 + 120))();
  sub_25BCB625C();

  sub_25BAD4C78();
}

BOOL sub_25BB07E0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25BAC4018();
  v6 = sub_25BAC4018();
  if (v5 == v6)
  {
    *(v3 + 40) = a2;
  }

  return v5 == v6;
}

void *sub_25BB07E80()
{

  return v0;
}

uint64_t sub_25BB07EB8()
{
  sub_25BB07E80();

  return swift_deallocClassInstance();
}

__n128 sub_25BB07F58@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 104);
  result = *(v1 + 114);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BB0801C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 136) = a8;
  *(v9 + 144) = a9;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(1701603700, 0xE400000000000000);
  }

  return OUTLINED_FUNCTION_0_9(a1, a2, a3);
}

uint64_t sub_25BB08084()
{
  sub_25BB07E80();
  sub_25BA9D148(*(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_25BB080FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 136);
  v3 = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BB08164(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 136) = a4;
  if (!a3)
  {
    v5 = OUTLINED_FUNCTION_1_7();
    a1 = sub_25BAA5EA0(v5, v6);
  }

  return OUTLINED_FUNCTION_0_9(a1, a2, a3);
}

uint64_t sub_25BB081B8(uint64_t a1, uint64_t a2)
{
  if (!sub_25BB07E0C(a1, a2))
  {
    v4 = sub_25BAC4018();
    if (v4 == sub_25BAC4018())
    {
      *(v2 + 136) = a2;
    }
  }

  return 1;
}

uint64_t sub_25BB08230()
{
  sub_25BB07E80();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB08290(uint64_t a1)
{
  result = sub_25BB08340(&qword_27FBB3FC0, type metadata accessor for TileGradientOperation, &unk_25BCBC1D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB082E8(uint64_t a1)
{
  result = sub_25BB08340(&qword_27FBB3FD0, type metadata accessor for BaseTileOperation, &unk_25BCBC19C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB08340(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static RegularizationKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4))
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_25BB084A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BB0856C(char a1)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1 & 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB085C0(char a1)
{
  if (a1)
  {
    return 0x656C616373;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_25BB08608(uint64_t a1)
{
  v2 = *v1;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB08654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB084A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB0869C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB0716C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB086C4(uint64_t a1)
{
  v2 = sub_25BB0890C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB08700(uint64_t a1)
{
  v2 = sub_25BB0890C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RegularizationKind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FD8, &qword_25BCBC1F0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB0890C();
  sub_25BCB7B2C();
  if (!v2)
  {
    v15[14] = 0;
    sub_25BB08960();
    sub_25BCB76AC();
    v11 = v16;
    if (v16)
    {
      v15[13] = 1;
    }

    else
    {
      v15[12] = 1;
    }

    sub_25BCB768C();
    v13 = v12;
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
    *(a2 + 4) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25BB0890C()
{
  result = qword_27FBB3FE0;
  if (!qword_27FBB3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FE0);
  }

  return result;
}

unint64_t sub_25BB08960()
{
  result = qword_27FBB3FE8;
  if (!qword_27FBB3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FE8);
  }

  return result;
}

uint64_t RegularizationKind.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FF0, &qword_25BCBC1F8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v12[3] = *v1;
  v10 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB0890C();
  sub_25BCB7B6C();
  if (v10)
  {
    v17 = 1;
    v16 = 0;
    sub_25BB08B7C();
    sub_25BCB779C();
    if (!v2)
    {
      v15 = 1;
LABEL_6:
      sub_25BCB777C();
    }
  }

  else
  {
    v14 = 0;
    sub_25BB08B7C();
    sub_25BCB779C();
    if (!v2)
    {
      v13 = 1;
      goto LABEL_6;
    }
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_25BB08B7C()
{
  result = qword_27FBB3FF8;
  if (!qword_27FBB3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FF8);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RegularizationKind(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 5))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RegularizationKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LayerVariableReference.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB08D60(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB08E40()
{
  result = qword_27FBB4000;
  if (!qword_27FBB4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4000);
  }

  return result;
}

unint64_t sub_25BB08E98()
{
  result = qword_27FBB4008;
  if (!qword_27FBB4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4008);
  }

  return result;
}

unint64_t sub_25BB08EF0()
{
  result = qword_27FBB4010;
  if (!qword_27FBB4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4010);
  }

  return result;
}

unint64_t sub_25BB08F48()
{
  result = qword_27FBB4018;
  if (!qword_27FBB4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4018);
  }

  return result;
}

unint64_t sub_25BB08F9C()
{
  result = qword_27FBB4020;
  if (!qword_27FBB4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4020);
  }

  return result;
}

uint64_t sub_25BB08FF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *v2;
  if (v2[1])
  {
    v5 = *a2;
    OUTLINED_FUNCTION_0_10(v3);
    v7 = *(v6 + 160);
    sub_25BAA51C8(v52, v51);
    v50 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = v4;
    v44 = v7;
    v9 = sub_25BAA51C8(v51, v35);
    OUTLINED_FUNCTION_1_8(v9, v10, v11, v12, v13, v14, v15, v16, v29, v30, v31, v32, v33, v34, *v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_25BA9C2C8(v51);
    sub_25BA9C2C8(v52);
    v52[0] = v5;
    static Tensor.* infix(_:_:)();
  }

  else
  {
    OUTLINED_FUNCTION_0_10(v3);
    v18 = *(v17 + 160);
    sub_25BAA51C8(v52, v51);
    v50 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_25BCBAE50;
    *(v19 + 32) = v4;
    v44 = v18;
    v20 = sub_25BAA51C8(v51, v35);
    OUTLINED_FUNCTION_1_8(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32, v33, v34, *v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_25BA9C2C8(v51);
    sub_25BA9C2C8(v52);
  }

  static Tensor.+ infix(_:_:)();
}

void sub_25BB09180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v64 = v24;
  v65 = v21;
  v58 = v26;
  v59 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v58 - v32;
  v34 = sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  v42 = *v20;
  v41 = v20[1];
  v43 = v20[3];
  v62 = v20[2];
  v63 = v41;
  v61 = v43;
  sub_25BAD6FB0(v42 + 88, v71);
  type metadata accessor for LazyTensorFunctionBuilder();
  swift_initStackObject();
  sub_25BC47C64(v71);
  v60 = v44;
  a10 = v30;
  v70 = v28;
  sub_25BB0CD18(v59, v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    v45 = v64;
    sub_25BCB617C();
    sub_25BCB617C();
    v46 = sub_25BB0CDB0(v33);
  }

  else
  {
    (*(v36 + 32))(v40, v33, v34);
    v66 = v42;
    v67 = v63;
    v68 = v62;
    v69 = v61;
    sub_25BCB617C();
    sub_25BCB617C();
    v47 = v65;
    v48 = sub_25BB094E0(v30, v28, v40, v64);
    v65 = v47;
    if (v47)
    {
      (*(v36 + 8))(v40, v34);

LABEL_9:

      goto LABEL_10;
    }

    v50 = v49;
    v45 = v64;
    v51 = *(v36 + 8);
    v59 = v48;
    v51(v40, v34);

    a10 = v59;
    v70 = v50;
  }

  MEMORY[0x28223BE20](v46);
  *(&v58 - 5) = *(v45 + 16);
  v53 = v62;
  v52 = v63;
  *(&v58 - 8) = v42;
  *(&v58 - 7) = v52;
  v55 = v60;
  v54 = v61;
  *(&v58 - 6) = v53;
  *(&v58 - 5) = v54;
  *(&v58 - 4) = &a10;
  *(&v58 - 3) = v55;
  *(&v58 - 2) = &v70;
  sub_25BC44FE0(sub_25BB0CE18);
  sub_25BAD6344();
  if (*(v56 + 16) != 1)
  {

    sub_25BB0A3A4();
    swift_allocError();
    *v57 = 0xD000000000000079;
    v57[1] = 0x800000025BCD95E0;
    swift_willThrow();

    goto LABEL_9;
  }

  sub_25BAD6FB0(v56 + 32, v58);

LABEL_10:
  OUTLINED_FUNCTION_16();
}

void (*sub_25BB094E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(char *, uint64_t, uint64_t, __n128)
{
  v29 = a1;
  v30 = a4;
  v25 = a2;
  v7 = sub_25BCB598C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MILBlobStorageWriter(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v27 = v4[1];
  v28 = v15;
  v16 = v4[3];
  v26 = v4[2];
  v35 = v16;
  v17 = *(v8 + 16);
  v17(v10, a3, v7, v12);
  sub_25BB9332C();
  if (v5)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v18 = v25;
    (v17)(v14, v10, v7);
    v19 = &v14[v11[5]];
    *v19 = 0x200000000;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 7) = 0;
    (*(v8 + 8))(v10, v7);
    *&v14[v11[8]] = MEMORY[0x277D84F90];
    *&v14[v11[6]] = 64;
    *&v14[v11[7]] = 64;
    v21 = v27;
    v20 = v28;
    v31 = v28;
    v32 = v27;
    v22 = v26;
    v33 = v26;
    v34 = v35;
    v23 = v30;
    v17 = sub_25BB099F0(v29, v14, v30, sub_25BB0CF80);
    v31 = v20;
    v32 = v21;
    v33 = v22;
    v34 = v35;
    sub_25BB099F0(v18, v14, v23, sub_25BB0CE54);
    sub_25BB0CF28(v14, type metadata accessor for MILBlobStorageWriter);
  }

  return v17;
}

uint64_t sub_25BB097B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v28 = *(a3 + 16);
  _s9IOMappingVMa(255, a10, a11, a4);
  sub_25BCB68CC();
  sub_25BCB617C();
  swift_getWitnessTable();
  sub_25BCB662C();

  if (v25)
  {
    if (v24 == 1)
    {
      v14 = *a7;
    }

    else
    {
      if (v24 != 2)
      {
LABEL_9:
      }

      v14 = *a9;
    }

    if (*(v14 + 16))
    {
      v15 = sub_25BA9266C(*(&v24 + 1), v25);
      if (v16)
      {
        v17 = *(*(*(v14 + 56) + 8 * v15) + 16);
        swift_retain_n();

        v18 = sub_25BA928B4();
        [v18 lock];

        sub_25BA92920(v17, 0, 0, &v24);
        [*(v17 + 224) unlock];

        v19 = v24;

        v20 = sub_25BAC44E4();
        v22 = v21;

        type metadata accessor for TensorRepresentation();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0;
        swift_allocObject();
        LOBYTE(v28) = 1;
        v23 = sub_25BC5F404(v19, *(&v19 + 1), v20, v22, &v24, 0x100000000);
        sub_25BC4445C(a2, v23);
      }
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_25BB099F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v9 = MEMORY[0x277D84F98];
  v7 = objc_autoreleasePoolPush();
  sub_25BB0ACB8(a2, a4);
  objc_autoreleasePoolPop(v7);
  if (v4)
  {
  }

  else
  {
    return v9;
  }
}

uint64_t sub_25BB09A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v52 = a7;
  v51 = sub_25BCB598C();
  v14 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v18 = _s9IOMappingVMa(0, a8, a9, v17);
  sub_25BCB617C();
  v19 = sub_25BCB674C();
  v58 = v19;
  if (v19 == sub_25BCB681C())
  {
  }

  v48 = a8;
  v49 = a1;
  v53 = v9;
  v20 = v16 + 32;
  v44 = (v14 + 16);
  v45 = v16 + 32;
  v46 = v18;
  v47 = a9;
  while (1)
  {
    v21 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = v20 + 48 * v19;
    v23 = *(v22 + 16);
    v54 = *(v22 + 8);
    v24 = *v22;
    sub_25BCB617C();
    sub_25BCB68AC();
    if (sub_25BADE04C(v24, 1))
    {
      v25 = v53;
      v26 = v49;
      if (!*(a6 + 16) || (v27 = sub_25BA9266C(v54, v23), (v28 & 1) == 0))
      {

        *&v55[0] = 0;
        *(&v55[0] + 1) = 0xE000000000000000;
        sub_25BCB70FC();

        *&v55[0] = 0xD000000000000024;
        *(&v55[0] + 1) = 0x800000025BCD9690;
        MEMORY[0x25F876C90](v54, v23);

        MEMORY[0x25F876C90](11815, 0xE200000000000000);
        v41 = v55[0];
        sub_25BB0A3A4();
        swift_allocError();
        *v42 = v41;
        return swift_willThrow();
      }

      v29 = *(*(a6 + 56) + 8 * v27);
      *&v55[0] = v29;

      sub_25BB92CA4();
      if (v25)
      {
      }

      v31 = v30;
      v53 = 0;
      v32 = v50;
      (*v44)(v50, v26, v51);
      v33 = *(v29 + 16);
      *&v55[0] = *(v33 + 152);
      v57[0] = *(v33 + 160);
      type metadata accessor for DataSourceTensorStorage(0);
      swift_allocObject();
      sub_25BB9AB48(v32, v31, v55, v57);
      type metadata accessor for TensorRepresentation();
      memset(v55, 0, sizeof(v55));
      v56 = 0;
      v34 = swift_allocObject();
      sub_25BCB617C();

      v57[0] = 1;
      v36 = sub_25BBF1C1C(v35, v55, 0x100000000, v34);
      type metadata accessor for TensorHandle();
      *(swift_allocObject() + 16) = v36;

      sub_25BAA6EB0();
      v37 = a6;
      v38 = v52;
      swift_isUniquelyReferenced_nonNull_native();
      *&v55[0] = *v38;
      sub_25BC19C08();
      *v38 = *&v55[0];
      a6 = v37;

      v20 = v45;
    }

    else
    {
    }

    v39 = sub_25BCB681C();
    v19 = v58;
    if (v58 == v39)
    {
    }
  }

  result = sub_25BCB717C();
  __break(1u);
  return result;
}

uint64_t sub_25BB09EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v52 = a7;
  v51 = sub_25BCB598C();
  v14 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v18 = _s9IOMappingVMa(0, a8, a9, v17);
  sub_25BCB617C();
  v19 = sub_25BCB674C();
  v58 = v19;
  if (v19 == sub_25BCB681C())
  {
  }

  v48 = a8;
  v49 = a1;
  v53 = v9;
  v20 = v16 + 32;
  v44 = (v14 + 16);
  v45 = v16 + 32;
  v46 = v18;
  v47 = a9;
  while (1)
  {
    v21 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = v20 + 48 * v19;
    v23 = *(v22 + 16);
    v54 = *(v22 + 8);
    v24 = *v22;
    sub_25BCB617C();
    sub_25BCB68AC();
    if (sub_25BADE04C(v24, 2))
    {
      v25 = v53;
      v26 = v49;
      if (!*(a6 + 16) || (v27 = sub_25BA9266C(v54, v23), (v28 & 1) == 0))
      {

        *&v55[0] = 0;
        *(&v55[0] + 1) = 0xE000000000000000;
        sub_25BCB70FC();

        *&v55[0] = 0xD000000000000020;
        *(&v55[0] + 1) = 0x800000025BCD9660;
        MEMORY[0x25F876C90](v54, v23);

        MEMORY[0x25F876C90](11815, 0xE200000000000000);
        v41 = v55[0];
        sub_25BB0A3A4();
        swift_allocError();
        *v42 = v41;
        return swift_willThrow();
      }

      v29 = *(*(a6 + 56) + 8 * v27);
      *&v55[0] = v29;

      sub_25BB92CA4();
      if (v25)
      {
      }

      v31 = v30;
      v53 = 0;
      v32 = v50;
      (*v44)(v50, v26, v51);
      v33 = *(v29 + 16);
      *&v55[0] = *(v33 + 152);
      v57[0] = *(v33 + 160);
      type metadata accessor for DataSourceTensorStorage(0);
      swift_allocObject();
      sub_25BB9AB48(v32, v31, v55, v57);
      type metadata accessor for TensorRepresentation();
      memset(v55, 0, sizeof(v55));
      v56 = 0;
      v34 = swift_allocObject();
      sub_25BCB617C();

      v57[0] = 1;
      v36 = sub_25BBF1C1C(v35, v55, 0x100000000, v34);
      type metadata accessor for TensorHandle();
      *(swift_allocObject() + 16) = v36;

      sub_25BAA6EB0();
      v37 = a6;
      v38 = v52;
      swift_isUniquelyReferenced_nonNull_native();
      *&v55[0] = *v38;
      sub_25BC19C08();
      *v38 = *&v55[0];
      a6 = v37;

      v20 = v45;
    }

    else
    {
    }

    v39 = sub_25BCB681C();
    v19 = v58;
    if (v58 == v39)
    {
    }
  }

  result = sub_25BCB717C();
  __break(1u);
  return result;
}

uint64_t ModelWritingError.debugDescription.getter()
{
  v1 = *v0;
  sub_25BCB617C();
  return v1;
}

uint64_t ModelWritingError.errorDescription.getter()
{
  v1 = *v0;
  sub_25BCB617C();
  return v1;
}

unint64_t sub_25BB0A3A4()
{
  result = qword_27FBB4028;
  if (!qword_27FBB4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4028);
  }

  return result;
}

uint64_t sub_25BB0A41C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25BB0A45C(uint64_t result, int a2, int a3)
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

void sub_25BB0A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_1();
  v69 = v25;
  v73 = v27;
  v74 = v26;
  v76 = v29;
  v77 = v28;
  v75 = v30;
  v72 = v31;
  HIDWORD(v68) = v32;
  v82 = *MEMORY[0x277D85DE8];
  sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  v70 = v34;
  v71 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = objc_opt_self();
  v39 = [v38 defaultManager];
  v40 = [v39 currentDirectoryPath];

  v41 = v40;
  v42 = v40;
  v78 = v40;
  v79 = v40;
  if (!v40)
  {
    sub_25BCB636C();
    v79 = sub_25BCB633C();

    sub_25BCB636C();
    v78 = sub_25BCB633C();

    sub_25BCB636C();
    v42 = sub_25BCB633C();

    sub_25BCB636C();
    v41 = sub_25BCB633C();
  }

  v43 = v40;
  sub_25BCB58DC();
  v44 = [v38 defaultManager];
  v45 = sub_25BCB592C();
  v80 = 0;
  v46 = [v44 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:&v80];

  if (v46)
  {
    v47 = v80;

    v48 = [v38 &selRef_setMean_ + 3];
    sub_25BCB595C();
    v49 = sub_25BCB633C();

    v50 = [v48 changeCurrentDirectoryPath_];

    if (v50)
    {

      sub_25BB0B0D8(v37, BYTE4(v68) & 1, v72, v74, v75, v77, v76, v73, a21, a22, a23, a24, v68, v69, v24, v70, v71, v72, v73, v74, a22, v75, a21, v76);
      if (!v24)
      {
        v65 = OUTLINED_FUNCTION_3_8();
        v66(v65);

        v67 = [v38 defaultManager];
        [v67 changeCurrentDirectoryPath_];

        goto LABEL_10;
      }

      v51 = OUTLINED_FUNCTION_3_8();
      v52(v51);

      v42 = v41;
    }

    else
    {

      v80 = 0;
      v81 = 0xE000000000000000;
      sub_25BCB70FC();

      OUTLINED_FUNCTION_5_9();
      v80 = v57;
      v81 = v56;
      v58 = sub_25BCB595C();
      MEMORY[0x25F876C90](v58);

      MEMORY[0x25F876C90](11815, 0xE200000000000000);
      v59 = v80;
      v60 = v81;
      sub_25BB0A3A4();
      swift_allocError();
      *v61 = v59;
      v61[1] = v60;
      swift_willThrow();
      v62 = OUTLINED_FUNCTION_3_8();
      v63(v62);
      v42 = v78;
    }
  }

  else
  {
    v53 = v80;

    sub_25BCB58CC();
    swift_willThrow();
    v54 = OUTLINED_FUNCTION_3_8();
    v55(v54);
  }

  v64 = [v38 defaultManager];
  [v64 changeCurrentDirectoryPath_];

LABEL_10:
  OUTLINED_FUNCTION_16();
}

void sub_25BB0ACB8(uint64_t a1, void (*a2)(char *))
{
  v27 = a2;
  v30 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MILBlobStorageWriter.BlobWriter(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BCB598C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BB0CE80();
  (*(v8 + 16))(v10, a1, v7);
  v11 = sub_25BB0AF90(v10);
  if (!v2)
  {
    v12 = v11;
    sub_25BB0CEC4(a1, v6);
    *&v6[*(v4 + 20)] = v12;
    v13 = v12;
    v27(v6);
    v14 = type metadata accessor for MILBlobStorageWriter(0);
    v15 = *(v14 + 20);
    v16 = (a1 + v15);
    v17 = *&v6[v15 + 16];
    *v16 = *&v6[v15];
    v16[1] = v17;
    v18 = *&v6[v15 + 48];
    v16[2] = *&v6[v15 + 32];
    v16[3] = v18;
    *(a1 + *(v14 + 32)) = *&v6[*(v14 + 32)];
    sub_25BCB617C();

    v28 = 0;
    v19 = [v13 seekToOffset:0 error:&v28];
    v20 = v28;
    if (v19 & 1) != 0 && (v21 = v16[1], v29[0] = *v16, v29[1] = v21, v22 = v16[3], v29[2] = v16[2], v29[3] = v22, v23 = v28, sub_25BB9391C(v29, v13), v28 = 0, v24 = [v13 closeAndReturnError_], v20 = v28, (v24))
    {
      v25 = v28;
      sub_25BB0CF28(v6, type metadata accessor for MILBlobStorageWriter.BlobWriter);
    }

    else
    {
      v26 = v20;
      sub_25BCB58CC();

      swift_willThrow();
      sub_25BB0CF28(v6, type metadata accessor for MILBlobStorageWriter.BlobWriter);
    }
  }
}

id sub_25BB0AF90(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25BCB592C();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_25BCB598C();
    OUTLINED_FUNCTION_9_3();
    v7 = *(v6 + 8);
    v8 = v4;
    v7(a1, v5);
  }

  else
  {
    v9 = v12[0];
    sub_25BCB58CC();

    swift_willThrow();
    sub_25BCB598C();
    OUTLINED_FUNCTION_9_3();
    (*(v10 + 8))(a1);
  }

  return v3;
}

void sub_25BB0B0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_1();
  v134 = v24;
  v144 = v26;
  v145 = v25;
  v140 = v28;
  v141 = v27;
  v146 = v29;
  v142 = v30;
  HIDWORD(v133) = v31;
  v135 = v32;
  v139 = a22;
  v143 = a21;
  v158 = *MEMORY[0x277D85DE8];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  MEMORY[0x28223BE20](v33 - 8);
  v129 = &v124 - v34;
  OUTLINED_FUNCTION_7();
  v132 = sub_25BCB57CC();
  OUTLINED_FUNCTION_2();
  v130 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v131 = v38 - v37;
  OUTLINED_FUNCTION_7();
  v136 = sub_25BCB58FC();
  OUTLINED_FUNCTION_2();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1();
  v44 = v43 - v42;
  v137 = sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  v138 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_4_0();
  v128 = v47 - v48;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v49);
  v147 = &v124 - v50;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v51);
  v53 = &v124 - v52;
  v54 = sub_25BCB5A8C();
  OUTLINED_FUNCTION_2();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1();
  v60 = v59 - v58;
  v61 = sub_25BCB614C();
  sub_25BCB5A7C();
  v62 = sub_25BCB5A6C();
  v64 = v63;
  (*(v56 + 8))(v60, v54);
  v153 = 0x302E302E31;
  v154 = 0xE500000000000000;
  v155 = v61;
  v156 = v62;
  v157 = v64;
  OUTLINED_FUNCTION_5_9();
  v148 = (v66 + 2);
  v149 = v65;
  v67 = *(v40 + 104);
  HIDWORD(v126) = *MEMORY[0x277CC91D8];
  v68 = v136;
  v127 = v40 + 104;
  v125 = v67;
  v67(v44);
  sub_25BB0CFFC();
  sub_25BCB597C();
  v69 = *(v40 + 8);
  v135 = v44;
  v69(v44, v68);
  v70 = objc_opt_self();

  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();

  v71 = [v70 defaultManager];
  v72 = [v71 currentDirectoryPath];

  v73 = v72;
  v74 = v72;
  v75 = v72;
  v76 = v72;
  if (!v72)
  {
    sub_25BCB636C();
    v76 = sub_25BCB633C();

    sub_25BCB636C();
    v75 = sub_25BCB633C();

    sub_25BCB636C();
    v74 = sub_25BCB633C();

    sub_25BCB636C();
    v73 = sub_25BCB633C();
  }

  v77 = v72;
  sub_25BCB58DC();
  v78 = [v70 defaultManager];
  v79 = sub_25BCB592C();
  v148 = 0;
  v80 = [v78 createDirectoryAtURL:v79 withIntermediateDirectories:1 attributes:0 error:&v148];

  if (v80)
  {
    v124 = v53;
    v81 = v148;

    v82 = [v70 defaultManager];
    sub_25BCB595C();
    v83 = sub_25BCB633C();

    v84 = [v82 changeCurrentDirectoryPath_];

    v85 = v145;
    v86 = v140;
    if (v84)
    {

      v87 = v147;
      v88 = v134;
      sub_25BB0BD94(v147, BYTE4(v133) & 1, v142, v141, v146, v85, v86, v144, v143, v139, &v153, a23, a24, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
      v134 = v88;
      if (v88)
      {
        v89 = *(v138 + 8);
        v90 = v137;
        v89(v87, v137);

        v91 = [v70 defaultManager];
        [v91 changeCurrentDirectoryPath_];

        v89(v124, v90);
      }

      else
      {
        v107 = v87;
        v108 = v138 + 8;
        v109 = *(v138 + 8);
        v110 = v137;
        v109(v107, v137);

        v111 = v108;
        v112 = [v70 defaultManager];
        [v112 changeCurrentDirectoryPath_];

        v138 = v111;
        v109(v124, v110);
        sub_25BCB580C();
        swift_allocObject();
        sub_25BCB57FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4048, &qword_25BCBC5C0);
        v113 = swift_allocObject();
        v113[1] = xmmword_25BCBAE70;
        sub_25BCB57AC();
        sub_25BCB57BC();
        v148 = v113;
        sub_25BB0D050();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4058, &unk_25BCBC5C8);
        sub_25BB0D0A8();
        sub_25BCB702C();
        sub_25BCB57DC();
        v148 = v153;
        v149 = v154;
        v150 = v155;
        v151 = v156;
        v152 = v157;
        sub_25BB0D10C();
        sub_25BCB617C();
        sub_25BCB617C();
        sub_25BCB617C();
        v114 = v134;
        v115 = sub_25BCB57EC();
        if (!v114)
        {
          v117 = v115;
          v118 = v116;
          v147 = v109;

          OUTLINED_FUNCTION_12_1();
          __swift_storeEnumTagSinglePayload(v119, v120, v121, v137);
          v125(v135, HIDWORD(v126), v136);
          v122 = v128;
          sub_25BCB596C();
          sub_25BCB5A5C();
          (v147)(v122, v137);
          sub_25BB0D160(v117, v118);

          goto LABEL_10;
        }
      }
    }

    else
    {

      v148 = 0;
      v149 = 0xE000000000000000;
      sub_25BCB70FC();

      OUTLINED_FUNCTION_5_9();
      v148 = v97;
      v149 = v96;
      v98 = v147;
      v99 = sub_25BCB595C();
      MEMORY[0x25F876C90](v99);

      MEMORY[0x25F876C90](11815, 0xE200000000000000);
      v100 = v148;
      v101 = v149;
      sub_25BB0A3A4();
      swift_allocError();
      *v102 = v100;
      v102[1] = v101;
      swift_willThrow();
      v103 = *(v138 + 8);
      v104 = v98;
      v105 = v137;
      v103(v104, v137);
      v106 = [v70 defaultManager];
      [v106 changeCurrentDirectoryPath_];

      v103(v124, v105);
    }
  }

  else
  {
    v92 = v148;

    sub_25BCB58CC();
    swift_willThrow();
    v93 = *(v138 + 8);
    v94 = v137;
    v93(v147, v137);
    v95 = [v70 defaultManager];
    [v95 changeCurrentDirectoryPath_];

    v93(v53, v94);
  }

LABEL_10:
  OUTLINED_FUNCTION_16();
}

void sub_25BB0BD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void (*a24)(uint64_t *__return_ptr, unint64_t, uint64_t, char *, uint64_t, unint64_t, unint64_t, unint64_t), uint64_t (*a25)(uint64_t *, uint64_t))
{
  OUTLINED_FUNCTION_17_1();
  v227 = v27;
  v228 = v26;
  v224 = v29;
  v225 = v28;
  v238 = v30;
  v236 = v31;
  v33 = v32;
  v226 = a24;
  sub_25BCB5A8C();
  OUTLINED_FUNCTION_2();
  v211 = v35;
  v212 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v210 = v37 - v36;
  OUTLINED_FUNCTION_7();
  v38 = sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  v213 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v231 = v42 - v41;
  OUTLINED_FUNCTION_7();
  v230 = sub_25BCB5B9C();
  OUTLINED_FUNCTION_2();
  v218 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_4_0();
  v220 = v45 - v46;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v47);
  v221 = &v196 - v48;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v49);
  v51 = &v196 - v50;
  v237 = sub_25BCB5BCC();
  OUTLINED_FUNCTION_2();
  v235 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4_0();
  v219 = v54 - v55;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v56);
  v222 = &v196 - v57;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v58);
  v232 = &v196 - v59;
  OUTLINED_FUNCTION_7();
  sub_25BCB5C8C();
  OUTLINED_FUNCTION_2();
  v216 = v61;
  v217 = v60;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1();
  v229 = v63 - v62;
  OUTLINED_FUNCTION_7();
  v64 = sub_25BCB58FC();
  OUTLINED_FUNCTION_2();
  v66 = v65;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_1();
  v70 = v69 - v68;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  MEMORY[0x28223BE20](v71 - 8);
  OUTLINED_FUNCTION_4_0();
  v74 = v72 - v73;
  MEMORY[0x28223BE20](v75);
  v77 = &v196 - v76;
  v233 = v64;
  v234 = v66;
  v214 = v74;
  v223 = v51;
  if (v33)
  {
    v78 = MEMORY[0x277CC91D8];
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v38);
    (*(v66 + 104))(v70, *v78, v64);
    sub_25BCB596C();
    v82 = 0;
  }

  else
  {
    v82 = 1;
  }

  v83 = v70;
  __swift_storeEnumTagSinglePayload(v77, v82, 1, v38);
  v226(v241, v224, v227, v77, v236, v225, v228, v238);
  if (v25)
  {
    v90 = v77;
LABEL_7:
    sub_25BB0CDB0(v90);
    goto LABEL_8;
  }

  v84 = v38;
  sub_25BAD6FB0(v241, &v240);
  sub_25BC46E18(v242);
  type metadata accessor for MILProgramBuilder();
  swift_allocObject();
  OUTLINED_FUNCTION_12_1();
  v89 = sub_25BBA35C4(v85, v86, v87, v88);
  sub_25BBA003C();
  v200 = v77;
  v91 = *(v89 + 316);
  v93 = v92;
  a25(v241, v91);
  v94 = v229;
  sub_25BB319C0(v93, 0x6E69616D, 0xE400000000000000, v229);
  v227 = 0;
  v197 = v83;
  v198 = v93;
  v199 = v89;
  v95 = *(sub_25BCB5C2C() + 16);

  v226 = v84;
  v208 = v95;
  if (v95)
  {
    v96 = 0;
    v206 = (v235 + 8);
    v207 = (v235 + 16);
    v203 = (v218 + 16);
    v97 = *(a21 + 16);
    v202 = (v235 + 40);
    v201 = (v218 + 8);
    v204 = v97 + 1;
    v205 = (a21 + 64);
    v98 = v231;
    while (2)
    {
      v99 = v96;
      v100 = sub_25BCB5C2C();
      if (v99 >= *(v100 + 16))
      {
        __break(1u);
        goto LABEL_73;
      }

      v228 = v99 + 1;
      v101 = v235;
      v224 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v225 = v99;
      v102 = *(v235 + 16);
      v215 = *(v235 + 72) * v99;
      v103 = v232;
      v104 = v237;
      v102(v232, v100 + v224 + v215, v237);

      v105 = sub_25BCB5BBC();
      v107 = v106;
      (*(v101 + 8))(v103, v104);
      v108 = v204;
      v109 = v205;
      while (--v108)
      {
        v110 = *(v109 - 4);
        v111 = *(v109 - 3);
        v112 = *(v109 - 2);
        v238 = *(v109 - 1);
        v248 = *v109;
        if (v110 != v105 || v111 != v107)
        {
          v109 += 5;
          if ((sub_25BCB789C() & 1) == 0)
          {
            continue;
          }
        }

        sub_25BCB617C();
        v114 = OUTLINED_FUNCTION_2_5();
        sub_25BB06178(v114, v115, v116);
        v118 = sub_25BB0AB74(v117);
        v119 = *(v118 + 16);
        v209 = v118;
        v120 = (v118 + 48);
        v121 = v119 + 1;
        do
        {
          if (!--v121)
          {

            v134 = OUTLINED_FUNCTION_2_5();
            sub_25BB0D1B8(v134, v135, v136);

            v94 = v229;
            v84 = v226;
            goto LABEL_33;
          }

          v122 = *v120;
          if (*(v120 - 2) == v105 && *(v120 - 1) == v107)
          {
            break;
          }

          v120 += 3;
        }

        while ((sub_25BCB789C() & 1) == 0);
        sub_25BCB617C();

        v239[0] = v112;
        v239[1] = v238;
        v239[2] = v248;
        v124 = v223;
        v125 = v227;
        sub_25BBAA588(v122, v105, v107, v223);
        if (v125)
        {

          (*(v216 + 8))(v229, v217);
          sub_25BA9AC78(v241);
          sub_25BB0CDB0(v200);

          v177 = OUTLINED_FUNCTION_2_5();
          sub_25BB0D1B8(v177, v178, v179);
          goto LABEL_8;
        }

        v227 = 0;
        (*v203)(v221, v124, v230);
        sub_25BCB5BAC();
        v94 = v229;
        v126 = sub_25BCB5C1C();
        v128 = v127;
        v129 = *v127;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v128 = v129;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF1514();
          v129 = v139;
          *v128 = v139;
        }

        v84 = v226;
        if (v225 < *(v129 + 16))
        {
          (*v202)(v129 + v224 + v215, v222, v237);
          v126(v239, 0);

          v131 = OUTLINED_FUNCTION_2_5();
          sub_25BB0D1B8(v131, v132, v133);
          (*v201)(v223, v230);
LABEL_33:
          v98 = v231;
          goto LABEL_34;
        }

        goto LABEL_74;
      }

      v84 = v226;
LABEL_34:
      v96 = v228;
      v137 = v233;
      v138 = v234;
      if (v228 != v208)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v98 = v231;
    v137 = v233;
    v138 = v234;
  }

  v140 = *(sub_25BCB5C5C() + 16);

  v223 = v140;
  if (!v140)
  {
LABEL_63:
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v173, v174, v175, v84);
    (*(v138 + 104))(v197, *MEMORY[0x277CC91D8], v137);
    sub_25BCB596C();
    v176 = v227;
    sub_25BCB5C0C();
    if (v176)
    {

      (*(v213 + 8))(v98, v84);
      (*(v216 + 8))(v94, v217);
    }

    else
    {
      (*(v213 + 8))(v98, v84);
      if (__swift_getEnumTagSinglePayload(v200, 1, v84) != 1)
      {
        v180 = v210;
        sub_25BCB5A7C();
        v181 = sub_25BCB5A6C();
        v183 = v182;
        (*(v211 + 8))(v180, v212);
        v247[0] = 0xD000000000000010;
        v247[1] = 0x800000025BCD9740;
        v247[2] = 0xD000000000000014;
        v247[3] = 0x800000025BCD9780;
        v247[4] = 0x73746867696577;
        v247[5] = 0xE700000000000000;
        v247[6] = 0xD000000000000018;
        v247[7] = 0x800000025BCD9760;
        v184 = swift_isUniquelyReferenced_nonNull_native();
        v239[0] = a23[2];
        sub_25BC1AA6C(v247, v181, v183, v184, v185, v186, v187, v188, v196, v197);
        a23[2] = v239[0];
      }

      v189 = a23[3];
      v190 = a23[4];
      v243[0] = 0xD000000000000010;
      v243[1] = 0x800000025BCD9740;
      v243[2] = 0xD00000000000001ALL;
      v243[3] = 0x800000025BCD9720;
      strcpy(v244, "model.mlmodel");
      v244[7] = -4864;
      v245 = 0xD00000000000001ELL;
      v246 = 0x800000025BCD9700;
      sub_25BCB617C();
      v191 = swift_isUniquelyReferenced_nonNull_native();
      v239[0] = a23[2];
      sub_25BC1AA6C(v243, v189, v190, v191, v192, v193, v194, v195, v196, v197);
      a23[2] = v239[0];

      (*(v216 + 8))(v229, v217);
    }

    sub_25BA9AC78(v241);
    sub_25BB0CDB0(v200);
LABEL_8:
    OUTLINED_FUNCTION_16();
    return;
  }

  v141 = 0;
  v222 = (v235 + 16);
  v215 = v235 + 8;
  v208 = (v218 + 16);
  v142 = *(a22 + 16);
  v207 = (v235 + 40);
  v206 = (v218 + 8);
  v218 = a22 + 48;
  v209 = v142 + 1;
  while (2)
  {
    v143 = v141;
    v144 = sub_25BCB5C5C();
    if (v143 < *(v144 + 16))
    {
      v249 = (v143 + 1);
      v145 = v235;
      v228 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v146 = *(v235 + 72);
      v238 = v143;
      v147 = v146 * v143;
      v148 = *(v235 + 16);
      v225 = v147;
      v149 = v232;
      v150 = v237;
      v148(v232, v144 + v228 + v147, v237);

      v151 = sub_25BCB5BBC();
      v153 = v152;
      (*(v145 + 8))(v149, v150);
      v154 = v209;
      v155 = v218;
      while (--v154)
      {
        v156 = *v155;
        if (*(v155 - 2) != v151 || *(v155 - 1) != v153)
        {
          v155 += 12;
          if ((sub_25BCB789C() & 1) == 0)
          {
            continue;
          }
        }

        v158 = sub_25BCB617C();
        v159 = sub_25BB0AA2C(v158);
        v160 = *(v159 + 16);
        v224 = v159;
        v161 = (v159 + 48);
        v162 = v160 + 1;
        do
        {
          if (!--v162)
          {

            v94 = v229;
            goto LABEL_61;
          }

          v163 = *v161;
          if (*(v161 - 2) == v151 && *(v161 - 1) == v153)
          {
            break;
          }

          v161 += 3;
        }

        while ((sub_25BCB789C() & 1) == 0);
        sub_25BCB617C();

        LOWORD(v239[0]) = v156;
        v165 = v220;
        v166 = v227;
        sub_25BBAB404(v163, v151, v153, v220);
        if (v166)
        {

          (*(v216 + 8))(v229, v217);
          sub_25BA9AC78(v241);
          v90 = v200;
          goto LABEL_7;
        }

        v227 = 0;

        (*v208)(v221, v165, v230);
        sub_25BCB5BAC();
        v94 = v229;
        v167 = sub_25BCB5C4C();
        v169 = v168;
        v170 = *v168;
        v171 = swift_isUniquelyReferenced_nonNull_native();
        *v169 = v170;
        if ((v171 & 1) == 0)
        {
          sub_25BBF1514();
          v170 = v172;
          *v169 = v172;
        }

        v84 = v226;
        v98 = v231;
        if (v238 < *(v170 + 16))
        {
          (*v207)(v170 + v228 + v225, v219, v237);
          v167(v239, 0);

          (*v206)(v220, v230);
          goto LABEL_62;
        }

        goto LABEL_75;
      }

LABEL_61:
      v84 = v226;
      v98 = v231;
LABEL_62:
      v137 = v233;
      v138 = v234;
      v141 = v249;
      if (v249 != v223)
      {
        continue;
      }

      goto LABEL_63;
    }

    break;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

uint64_t sub_25BB0CD18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB0CDB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BB0CE80()
{
  result = qword_27FBB4038;
  if (!qword_27FBB4038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBB4038);
  }

  return result;
}

uint64_t sub_25BB0CEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MILBlobStorageWriter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB0CF28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_25BB0CFFC()
{
  result = qword_27FBB4040;
  if (!qword_27FBB4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4040);
  }

  return result;
}

unint64_t sub_25BB0D050()
{
  result = qword_27FBB4050;
  if (!qword_27FBB4050)
  {
    sub_25BCB57CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4050);
  }

  return result;
}

unint64_t sub_25BB0D0A8()
{
  result = qword_27FBB4060;
  if (!qword_27FBB4060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4058, &unk_25BCBC5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4060);
  }

  return result;
}

unint64_t sub_25BB0D10C()
{
  result = qword_27FBB4068;
  if (!qword_27FBB4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4068);
  }

  return result;
}

uint64_t sub_25BB0D160(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25BB0D1B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) == 0)
  {
    return sub_25BB0D1C4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_25BB0D1C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 2uLL:

      break;
    case 3uLL:
      return v3;
    default:

      break;
  }

  return v3;
}

uint64_t sub_25BB0D200(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v4 = OUTLINED_FUNCTION_6_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v54 = (v15 - v16);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = sub_25BAC4018();
  v21 = sub_25BB3EE04(v20, a1);
  if (v21)
  {
    v23 = v21;
    v24 = v22;
    type metadata accessor for NativeTensorStorage(0);
    v56 = *(v1 + 9);
    v52 = v1;
    v55 = v1[80];
    sub_25BCB617C();
    v25 = OUTLINED_FUNCTION_7_6();
    v26 = v53;
    sub_25BBC0130(v25, v27, v28, v29);
    v50 = v26;
    v51 = v30;
    if (*(*(v30 + 16) + 16))
    {
      sub_25BCB617C();
    }

    v53 = v7;
    OUTLINED_FUNCTION_5_0();

    ObjectType = swift_getObjectType();
    (*(v24 + 16))(&v56, ObjectType, v24);
    v33 = v19;
    if (!*(v56 + 16))
    {
    }

    v34 = v54;
    OUTLINED_FUNCTION_5_0();

    v49 = v13;
    v35 = *(v13 + 16);
    v35(v10, v33, v11);
    OUTLINED_FUNCTION_2_6(v10);
    v36 = v10;
    v37 = v53;
    v35(v53, v34, v11);
    v38 = OUTLINED_FUNCTION_2_6(v37);
    MEMORY[0x28223BE20](v38);
    *(&v48 - 4) = v52;
    *(&v48 - 3) = v33;
    v52 = v33;
    *(&v48 - 2) = v23;
    *(&v48 - 1) = v24;
    MEMORY[0x28223BE20](v39);
    *(&v48 - 6) = v23;
    *(&v48 - 5) = v24;
    *(&v48 - 4) = v37;
    *(&v48 - 3) = sub_25BB0E76C;
    *(&v48 - 2) = v40;
    v41 = v51;

    v42 = v50;
    sub_25BB0E340(v36, sub_25BB0E9FC, (&v48 - 8), v43);
    if (v42)
    {

      swift_unknownObjectRelease();
      sub_25BB0EA20(v36);
      a1 = v49 + 8;
      v44 = *(v49 + 8);
      v45 = OUTLINED_FUNCTION_8_8();
      v44(v45);
      sub_25BB0EA20(v37);
    }

    else
    {

      sub_25BB0EA20(v36);
      sub_25BB0EA20(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      a1 = swift_allocObject();
      *(a1 + 16) = xmmword_25BCBAE50;
      *(a1 + 32) = v41;
      *(a1 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v44 = *(v49 + 8);
      v46 = OUTLINED_FUNCTION_8_8();
      v44(v46);
    }

    (v44)(v52, v11);
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    OUTLINED_FUNCTION_4_10(v31, 37);
  }

  return a1;
}

uint64_t sub_25BB0D648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[1] = a5;
  v18 = a6;
  v8 = sub_25BCB54EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25BCB537C();
  MEMORY[0x28223BE20](v12 - 8);
  sub_25BB0D8F8(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1;
  (*(v9 + 16))(v11, a4, v8);
  sub_25BCB6D8C();
  sub_25BCB510C();
  if (sub_25BCB50FC())
  {
    ObjectType = swift_getObjectType();
    (*(v18 + 16))(&v29, ObjectType);
    if (!*(v29 + 16))
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = -1;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v27 = -1;
      v28 = 4;
      sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
    }

    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v16 = 0xD000000000000035;
    *(v16 + 8) = 0x800000025BCD98F0;
    *(v16 + 16) = 0x2000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB0D8F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = sub_25BCB537C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D82F88];
  if (v3 != 2)
  {
    v6 = MEMORY[0x277D82F90];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_25BB0D97C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v4 = OUTLINED_FUNCTION_6_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v73 = v5 - v6;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  v74 = v65 - v8;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v9);
  v11 = v65 - v10;
  v12 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v77 = (v16 - v17);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v18);
  v20 = v65 - v19;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v21);
  v23 = v65 - v22;
  v24 = sub_25BAC4018();
  v25 = sub_25BB3EE04(v24, a1);
  v76 = v26;
  if (!v25)
  {
    goto LABEL_10;
  }

  v27 = v25;
  v78 = v23;
  v28 = sub_25BAC4018();
  v29 = sub_25BB3EE04(v28, a1);
  v75 = v30;
  if (!v29)
  {
    swift_unknownObjectRelease();
LABEL_10:
    sub_25BB0E2EC();
    swift_allocError();
    OUTLINED_FUNCTION_4_10(v44, 46);
    return a1;
  }

  v31 = v29;
  type metadata accessor for NativeTensorStorage(0);
  v80 = *(v1 + 72);
  v79 = *(v1 + 80);
  sub_25BCB617C();
  v32 = OUTLINED_FUNCTION_7_6();
  v33 = v72;
  sub_25BBC0130(v32, v34, v35, v36);
  v72 = v37;
  v70 = v33;
  ObjectType = swift_getObjectType();
  v39 = *(v76 + 16);
  v69 = ObjectType;
  v39(&v80);
  if (!*(v80 + 16))
  {
  }

  v40 = v20;
  OUTLINED_FUNCTION_5_0();

  v41 = swift_getObjectType();
  (*(v75 + 16))(&v80, v41);
  v42 = v72;
  if (!*(v80 + 16))
  {
  }

  OUTLINED_FUNCTION_5_0();

  v43 = *(*(v42 + 16) + 16);
  v71 = v31;
  v67 = v1;
  v68 = v27;
  if (v43)
  {
    sub_25BCB617C();
  }

  v45 = v77;
  OUTLINED_FUNCTION_5_0();

  v46 = *(v14 + 16);
  v47 = v11;
  v48 = v11;
  v49 = v78;
  v46(v47, v78, v12);
  OUTLINED_FUNCTION_2_6(v48);
  v50 = v74;
  v46(v74, v40, v12);
  OUTLINED_FUNCTION_2_6(v50);
  v66 = v40;
  v51 = v73;
  v46(v73, v45, v12);
  v52 = OUTLINED_FUNCTION_2_6(v51);
  v65[1] = v65;
  MEMORY[0x28223BE20](v52);
  v65[-4] = v67;
  v65[-3] = v49;
  v53 = v71;
  v54 = v75;
  v65[-2] = v71;
  v65[-1] = v54;
  MEMORY[0x28223BE20](v55);
  v65[-8] = v53;
  v65[-7] = v56;
  v57 = v72;
  v65[-6] = v50;
  v65[-5] = v57;
  v65[-4] = &off_286D4DBE0;
  v65[-3] = v51;
  v65[-2] = sub_25BB0ECE8;
  v65[-1] = v58;

  v59 = v70;
  sub_25BC675C0(sub_25BB0ED08, &v65[-10], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v59)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_25BB0EA20(v48);
    v60 = v50;
    a1 = *(v14 + 8);
    (a1)(v77, v12);
    (a1)(v66, v12);
    sub_25BB0EA20(v51);
    sub_25BB0EA20(v60);
    v61 = OUTLINED_FUNCTION_8_8();
    (a1)(v61);
  }

  else
  {

    sub_25BB0EA20(v48);
    sub_25BB0EA20(v51);
    sub_25BB0EA20(v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_25BCBAE50;
    *(a1 + 32) = v57;
    *(a1 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v63 = *(v14 + 8);
    v63(v77, v12);
    v63(v66, v12);
    v64 = OUTLINED_FUNCTION_8_8();
    (v63)(v64);
  }

  return a1;
}

uint64_t sub_25BB0DF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a3;
  v19 = a6;
  v20 = a7;
  v24 = a2;
  v9 = sub_25BCB54EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25BCB537C();
  MEMORY[0x28223BE20](v13 - 8);
  sub_25BB0D8F8(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a5;
  v22 = a1;
  v15 = *(v10 + 16);
  v15(v12, a5, v9);
  sub_25BCB6D8C();
  sub_25BCB510C();
  if (sub_25BCB50FC())
  {
    ObjectType = swift_getObjectType();
    (*(v20 + 16))(&v34, ObjectType);
    if (!*(v34 + 16))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = -1;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v32 = -1;
      v33 = 4;
      sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
    }

    v15(v12, v21, v9);
    sub_25BCB6D8C();
    sub_25BCB50BC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v18 = 0xD000000000000035;
    *(v18 + 8) = 0x800000025BCD98F0;
    *(v18 + 16) = 0x2000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB0E210(uint64_t a1)
{
  result = sub_25BB0E298(&qword_27FBB4070, type metadata accessor for ResizeGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB0E254(uint64_t a1)
{
  result = sub_25BB0E298(&qword_27FBB4078, type metadata accessor for ResizeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB0E298(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25BB0E2EC()
{
  result = qword_27FBB4088;
  if (!qword_27FBB4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4088);
  }

  return result;
}

uint64_t sub_25BB0E340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  v9 = OUTLINED_FUNCTION_6_0(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v13 = OUTLINED_FUNCTION_6_0(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v5 + 24);
  if (v22 > 0xC || ((1 << v22) & 0x1777) == 0)
  {
    goto LABEL_13;
  }

  sub_25BB0EC04(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    if (*(*(v5 + 16) + 16))
    {
      sub_25BCB617C();
    }

    v23 = sub_25BCB50AC();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
    sub_25BCB54FC();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_25BB0EA20(v15);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v15, v16);
  }

  v24 = sub_25BCB54AC();
  if (v24 < 0)
  {
    __break(1u);
LABEL_13:
    LODWORD(v33) = 0;
    v32 = 13;
    v28 = "NeuralNetworks/TensorStorage+BNNS.swift";
    v29 = 0xD000000000000027;
    v30 = 0x800000025BCD9820;
    v31 = 39;
    goto LABEL_15;
  }

  MEMORY[0x28223BE20](v24);
  v32 = v21;
  v26 = sub_25BB0E6E4(sub_25BB0EC74, (&v34 - 4), 0, v25);
  if ((v26 & 1) == 0)
  {
    MEMORY[0x28223BE20](v26);
    *(&v34 - 4) = v5;
    *(&v34 - 3) = v21;
    v32 = a2;
    v33 = v35;
    sub_25BB0EC94(v36);
    return (*(v18 + 8))(v21, v16);
  }

  LODWORD(v33) = 0;
  v32 = 16;
  v28 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/BNNS/TensorStorage+BNNS.swift";
  v30 = 0x800000025BCD98D0;
  v29 = 0xD00000000000001DLL;
  v31 = 114;
LABEL_15:
  result = sub_25BCB74CC("Fatal error", 11, 2, v29, v30, v28, v31, 2, v32);
  __break(1u);
  return result;
}

uint64_t sub_25BB0E6E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = a3;
  while (1)
  {
    v9 = v8;
    if (a4 == v8)
    {
      return a4 == v9;
    }

    if (a4 < a3)
    {
      break;
    }

    if (v8 >= a4)
    {
      goto LABEL_9;
    }

    v10 = v8;
    result = v7(&v10, a2);
    if (!v4)
    {
      v8 = v9 + 1;
      if (result)
      {
        continue;
      }
    }

    return a4 == v9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25BB0E78C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(_DWORD *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v16[2] = a6;
  v17 = a5;
  v16[1] = a7;
  v9 = sub_25BCB54EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_25BCB6F2C();
  v13 = *(a3 + 24);
  (*(v10 + 16))(v12, a4, v9);
  LODWORD(a3) = sub_25BCB54CC();
  sub_25BCB54BC();
  sub_25BCB54DC();
  v19 = v13;
  v14 = sub_25BBF4F40();
  v18 = v13;
  LODWORD(a4) = sub_25BBF4F40();
  (*(v10 + 8))(v12, v9);
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v25 = v38[0];
  v26 = v38[1];
  v27 = v38[2];
  v28 = v38[3];
  v20[0] = 0;
  v20[1] = a3;
  v29 = v16[0];
  v30 = v14;
  v31 = 0;
  v32 = a4;
  v33 = 1065353216;
  return v17(v20);
}

uint64_t sub_25BB0E950@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  swift_getObjectType();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  return sub_25BC675C0(sub_25BB0ECB4, v12, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BB0EA20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB0EA88@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9)
{
  swift_getObjectType();
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a1;
  return sub_25BC675C0(sub_25BB0ED3C, v17, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BB0EB4C@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  swift_getObjectType();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a1;
  return sub_25BC675C0(sub_25BB0ED60, v14, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BB0EC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB0EE34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v156 = a8;
  v162 = a7;
  v15 = a10;
  v176 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  v158 = v16;
  v17 = a12;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v165 = v20 - v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v26 = *v25;
  v27 = *(v25 + 2);
  v168 = *(v25 + 1);
  *&v167 = v27;
  v166 = v25[24];
  v159 = v28;
  (*(v28 + 16))(v24);
  v171 = a11;
  v172 = v24;
  sub_25BB77708();
  LODWORD(v169) = v26;
  v151 = a1;
  if (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v30 = 1;
    goto LABEL_9;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_16_8();

  if (v175)
  {
    v29 = *(v175 + 24);
    sub_25BAA4AF4(v174);
    if (v29)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_25BAA4AF4(v174);
  }

LABEL_8:
  v30 = 2;
LABEL_9:
  LOBYTE(v174[0]) = v30;
  Layer.prepare(for:)(v174);
  v164 = a9;
  v31 = a5(a3);
  v32 = *(*v31 + 88);
  v157 = v31;
  v33 = v32(a3);
  v173 = v33;
  v34 = *(v33 + 16);
  v35 = MEMORY[0x277D84F90];
  v163 = a12;
  if (v34)
  {
    v36 = v33;
    *&v174[0] = MEMORY[0x277D84F90];
    sub_25BCB617C();
    sub_25BAC5590();
    v35 = *&v174[0];
    v37 = *(*&v174[0] + 16);
    v38 = 48;
    do
    {
      v39 = *(v36 + v38);
      *&v174[0] = v35;
      v40 = *(v35 + 24);

      if (v37 >= v40 >> 1)
      {
        sub_25BAC5590();
        v35 = *&v174[0];
      }

      *(v35 + 16) = v37 + 1;
      *(v35 + 8 * v37 + 32) = v39;
      v38 += 24;
      ++v37;
      --v34;
    }

    while (v34);

    v15 = a10;
    v17 = v163;
  }

  v174[0] = 0uLL;
  Array<A>.resolve(descriptor:)(v174, v35);

  v41 = v169;
  LOBYTE(v174[0]) = v169;
  OUTLINED_FUNCTION_6_12();
  v42 = sub_25BB0FF78(v172, v174, v164, v15, v171, v17);
  v43 = v42;
  if (v169)
  {
    if (v169 != 1)
    {
      v41 = 0;
    }
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_16_8();

    if (v175)
    {
      v41 = *(v175 + 24) & 1;
    }

    else
    {
      v41 = 0;
    }

    v42 = sub_25BAA4AF4(v174);
  }

  v44 = v170;
  MEMORY[0x28223BE20](v42);
  v148[-6] = v164;
  v148[-5] = v15;
  v148[-4] = v171;
  v148[-3] = v17;
  v146 = v172;
  v147 = a3;
  v161 = v15;
  v160 = sub_25BC32E60(v165, v41);
  v155 = v44;
  v45 = 0;
  v46 = *(v43 + 16);
  v170 = MEMORY[0x277D84F90];
LABEL_23:
  v47 = v43 + 56 + 32 * v45;
  while (v46 != v45)
  {
    if (v45 >= *(v43 + 16))
    {
      __break(1u);
    }

    v49 = *(v47 - 24);
    v48 = *(v47 - 16);
    v50 = *(v47 - 8);
    swift_bridgeObjectRetain_n();

    v50(v174, v51);

    v52 = *&v174[0];

    if (v52)
    {
      OUTLINED_FUNCTION_12_2();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v53 = v170;
      }

      else
      {
        sub_25BAFDDD8();
      }

      v54 = v53[2];
      if (v54 >= v53[3] >> 1)
      {
        sub_25BAFDDD8();
      }

      ++v45;
      v53[2] = v54 + 1;
      v170 = v53;
      v55 = &v53[3 * v54];
      v55[4] = v49;
      v55[5] = v48;
      v55[6] = v52;
      goto LABEL_23;
    }

    v47 += 32;
    ++v45;
  }

  v56 = v165;
  v57 = v162(v165);
  v58 = *(*v57 + 88);
  v156 = v57;
  v154 = v58(v56);
  v59 = v171;
  v60 = v163;
  Layer.namedParameterKeyPaths(recursively:)();
  v153 = v148;
  *&v174[0] = v61;
  MEMORY[0x28223BE20](v61);
  v148[-8] = v59;
  v148[-7] = v60;
  LOBYTE(v148[-6]) = v169;
  OUTLINED_FUNCTION_3_9(v148);
  sub_25BCB736C();
  swift_getTupleTypeMetadata2();
  v62 = sub_25BCB68CC();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
  v152 = v63;
  WitnessTable = swift_getWitnessTable();
  v65 = v63;
  v66 = MEMORY[0x277D84AC0];
  v67 = v155;
  v162 = sub_25BAB2B20(sub_25BB139F8, &v148[-10], v62, v65, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v68);
  v155 = v67;

  Layer.namedLayerStateKeyPaths(recursively:)();
  v70 = v69;
  *&v174[0] = v69;
  MEMORY[0x28223BE20](v69);
  v148[-8] = v59;
  v148[-7] = v60;
  v71 = v169;
  LOBYTE(v148[-6]) = v169;
  OUTLINED_FUNCTION_3_9(v148);
  sub_25BCB736C();
  swift_getTupleTypeMetadata2();
  v72 = sub_25BCB68CC();
  v73 = swift_getWitnessTable();
  v74 = v155;
  v76 = sub_25BAB2B20(sub_25BB13A18, &v148[-10], v72, v152, MEMORY[0x277D84A98], v73, v66, v75);
  v77 = v74;

  if (v71)
  {
    v78 = v71 == 1;
    v79 = v161;
    v80 = v160;
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_16_8();

    v80 = v160;
    if (v175)
    {
      v78 = *(v175 + 24) & 1;
    }

    else
    {
      v78 = 0;
    }

    v79 = v161;
    OUTLINED_FUNCTION_10_3();
    sub_25BAA4AF4(v174);
  }

  v81 = v164;
  sub_25BB10CE8(v174);
  v82 = sub_25BB109DC(&v173, v70, v71, v170, v76, v78, v174, v81, v79);
  if (!v74)
  {
    v77 = v82;

    sub_25BABF0A8(v174);

    if (v169)
    {
      if (v169 == 1)
      {
        goto LABEL_45;
      }
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      OUTLINED_FUNCTION_16_8();

      if (!v175)
      {
        v154 = 0;
        sub_25BAA4AF4(v174);
        goto LABEL_57;
      }

      v86 = *(v175 + 24);
      sub_25BAA4AF4(v174);
      if (v86)
      {
LABEL_45:
        sub_25BC4F4CC();
        v154 = 0;
        v87 = sub_25BC4F508();
        v88 = v87[2];
        v153 = v77;
        if (v88)
        {
          v89 = OUTLINED_FUNCTION_5_10(MEMORY[0x277D84F90]);
          sub_25BB005D0(v89, v88, 0);
          v90 = *&v174[0];
          type metadata accessor for TensorHandle();
          v155 = v87;
          do
          {
            v77 = v87[5];
            v91 = swift_allocObject();
            OUTLINED_FUNCTION_2_7(v91);
            OUTLINED_FUNCTION_18_4();
            sub_25BAA6EB0();

            *&v174[0] = v90;
            v93 = *(v90 + 16);
            v92 = *(v90 + 24);
            v94 = v90;
            if (v93 >= v92 >> 1)
            {
              v97 = OUTLINED_FUNCTION_4_11(v92);
              sub_25BB005D0(v97, v93 + 1, 1);
              v94 = *&v174[0];
            }

            *(v94 + 16) = v93 + 1;
            OUTLINED_FUNCTION_13_3((v94 + 24 * v93));
            v90 = v95;
          }

          while (!v96);

          OUTLINED_FUNCTION_1_9();
        }

        else
        {

          v90 = MEMORY[0x277D84F90];
        }

        v150 = v90;
        v110 = sub_25BC4F5E4();
        v111 = v110[2];
        if (v111)
        {
          v112 = OUTLINED_FUNCTION_5_10(MEMORY[0x277D84F90]);
          sub_25BB005D0(v112, v111, 0);
          v113 = *&v174[0];
          v155 = type metadata accessor for TensorHandle();
          v152 = v110;
          do
          {
            v77 = v110[5];
            v114 = OUTLINED_FUNCTION_7_7();
            OUTLINED_FUNCTION_2_7(v114);
            OUTLINED_FUNCTION_18_4();
            sub_25BAA6EB0();

            *&v174[0] = v113;
            v116 = v113[2];
            v115 = v113[3];
            if (v116 >= v115 >> 1)
            {
              v117 = OUTLINED_FUNCTION_4_11(v115);
              sub_25BB005D0(v117, v116 + 1, 1);
              v113 = *&v174[0];
            }

            v113[2] = v116 + 1;
            OUTLINED_FUNCTION_13_3(&v113[3 * v116]);
          }

          while (!v96);
          v149 = v113;
          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_1_9();
        }

        else
        {

          v149 = MEMORY[0x277D84F90];
        }

        v118 = sub_25BC4F5FC();
        v119 = v118[2];
        if (v119)
        {
          v120 = OUTLINED_FUNCTION_5_10(MEMORY[0x277D84F90]);
          sub_25BB005D0(v120, v119, 0);
          v121 = *&v174[0];
          v155 = type metadata accessor for TensorHandle();
          v152 = v118;
          v122 = v118 + 6;
          do
          {
            v123 = *(v122 - 2);
            v77 = *(v122 - 1);
            v124 = OUTLINED_FUNCTION_7_7();
            OUTLINED_FUNCTION_2_7(v124);
            OUTLINED_FUNCTION_18_4();
            sub_25BAA6EB0();

            *&v174[0] = v121;
            v126 = *(v121 + 16);
            v125 = *(v121 + 24);
            if (v126 >= v125 >> 1)
            {
              v128 = OUTLINED_FUNCTION_4_11(v125);
              sub_25BB005D0(v128, v126 + 1, 1);
              v121 = *&v174[0];
            }

            *(v121 + 16) = v126 + 1;
            v127 = (v121 + 24 * v126);
            v127[4] = v123;
            v127[5] = v77;
            v127[6] = v80;
            v122 += 3;
            --v119;
          }

          while (v119);
          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_1_9();
        }

        else
        {

          v121 = MEMORY[0x277D84F90];
        }

        v129 = sub_25BC4F614();
        v130 = v129[2];
        v152 = v121;
        if (v130)
        {
          v131 = OUTLINED_FUNCTION_5_10(MEMORY[0x277D84F90]);
          sub_25BB005D0(v131, v130, 0);
          v132 = *&v174[0];
          v155 = type metadata accessor for TensorHandle();
          v148[1] = v129;
          v133 = v129 + 6;
          do
          {
            v134 = *(v133 - 2);
            v77 = *(v133 - 1);
            v135 = OUTLINED_FUNCTION_7_7();
            OUTLINED_FUNCTION_2_7(v135);
            OUTLINED_FUNCTION_18_4();
            sub_25BAA6EB0();

            *&v174[0] = v132;
            v137 = v132[2];
            v136 = v132[3];
            if (v137 >= v136 >> 1)
            {
              v139 = OUTLINED_FUNCTION_4_11(v136);
              sub_25BB005D0(v139, v137 + 1, 1);
              v132 = *&v174[0];
            }

            v132[2] = v137 + 1;
            v138 = &v132[3 * v137];
            v138[4] = v134;
            v138[5] = v77;
            v138[6] = v80;
            v133 += 3;
            --v130;
          }

          while (v130);

          OUTLINED_FUNCTION_1_9();
          v121 = v152;
        }

        else
        {

          v132 = MEMORY[0x277D84F90];
        }

        v99 = v164;
        v140 = v161;
        sub_25BB10CE8(v174);
        v141 = v154;
        v142 = sub_25BB10DE8(v150, v149, v121, v132, v160, v174, v99, v140);
        v154 = v141;
        if (v141)
        {

          OUTLINED_FUNCTION_17_2();
          OUTLINED_FUNCTION_15_3();

          OUTLINED_FUNCTION_12_2();

          OUTLINED_FUNCTION_14_7();

          sub_25BABF0A8(v174);
LABEL_87:
          v144 = OUTLINED_FUNCTION_0_11();
          v145(v144, v140);
          v85 = v159;
          goto LABEL_42;
        }

        v98 = v142;
        sub_25BABF0A8(v174);

        OUTLINED_FUNCTION_14_7();

        v143 = v154;
        sub_25BC4F4CC();
        v154 = v143;
        if (v143)
        {

          OUTLINED_FUNCTION_12_2();

          OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_17_2();

          goto LABEL_87;
        }

LABEL_58:
        LOBYTE(v174[0]) = v169;
        OUTLINED_FUNCTION_6_12();
        v100 = v170;
        v101 = v161;
        v102 = v171;
        sub_25BB11958(v172, v170, v174, v99, v161, v171, v163);
        sub_25BCA617C(v77, v98, v157, v156, v174);
        v168 = *(&v174[0] + 1);
        v169 = *&v174[0];
        v167 = v174[1];

        sub_25BAF9C80(v162, v103);

        v77 = sub_25BAFA620();
        sub_25BAF9C80(v100, v104);

        sub_25BAFA620();

        v105 = OUTLINED_FUNCTION_0_11();
        v106(v105, v101);
        v107 = v151;
        v108 = v168;
        *v151 = v169;
        v107[1] = v108;
        *(v107 + 1) = v167;
        (*(v159 + 8))(v172, v102);
        return v77;
      }
    }

    v154 = 0;
LABEL_57:
    v98 = 0;
    v99 = v164;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_15_3();

  sub_25BABF0A8(v174);
  v83 = OUTLINED_FUNCTION_0_11();
  v84(v83, v79);

  v85 = v159;
LABEL_42:
  (*(v85 + 8))(v172, v171);
  return v77;
}

uint64_t sub_25BB0FF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v89 = a1;
  v84 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BCB736C();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v11, WitnessTable, v12);
  v85 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v79 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v79 - v20;
  v22 = *(a2 + 8);
  v86 = *(a2 + 16);
  v87 = v22;
  v88 = *(a2 + 24);
  v23 = type metadata accessor for AnyLayerVariablePathCache();
  v24 = a6;
  v25 = a6;
  v26 = v89;
  v27 = sub_25BAB5DD8(v7, &type metadata for LayerState, 1, v7, &type metadata for LayerState, v25, &protocol witness table for LayerState);
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v79[1] = v23;
    *&v92 = sub_25BCB604C();
    *&v95 = MEMORY[0x277D84FA0];
    v90 = MEMORY[0x277D84FA0];
    (*(v84 + 16))(v10, v26, v7);
    v29 = swift_allocObject();
    *(v29 + 16) = v7;
    *(v29 + 24) = v24;
    *(v29 + 32) = 1;
    *(v29 + 36) = 4;
    v84 = v11;
    sub_25BAB1090(v10, sub_25BAB60DC, v29, v11, WitnessTable, v21);
    v30 = v85;
    (*(v85 + 16))(v15, v21, v13);
    v31 = swift_getWitnessTable();
    MEMORY[0x25F876DC0](v13, v31);
    v32 = MEMORY[0x277D84F90];
    v33 = v24;
    v34 = &type metadata for LayerState;
    v35 = v18;
    v82 = v21;
    v83 = v13;
    v81 = v7;
    while (1)
    {
      sub_25BAB173C(v13, &v96);
      v36 = v96;
      if (!v96)
      {
        break;
      }

      v37 = v34;
      v38 = v33;
      v39 = v97;
      v40 = v98;
      v41 = sub_25BCB681C();
      v96 = v36;
      sub_25BCB68CC();

      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAB22A0();
        v32 = v43;
      }

      v42 = *(v32 + 16);
      if (v42 >= *(v32 + 24) >> 1)
      {
        sub_25BAB22A0();
        v32 = v44;
      }

      *(v32 + 16) = v42 + 1;
      *(v32 + 8 * v42 + 32) = v39;
      if ((v40 & 0x400000000) != 0)
      {
        sub_25BAA2CDC(&v96, v41);
      }

      v34 = v37;
      if (v40)
      {
        sub_25BAA2CDC(&v96, v41);
      }

      v33 = v38;
      v7 = v81;
      v21 = v82;
      v13 = v83;
      v30 = v85;
    }

    v45 = *(v30 + 8);
    v45(v35, v13);
    v96 = v7;
    v97 = v34;
    v98 = v33;
    v99 = &protocol witness table for LayerState;
    type metadata accessor for LayerVariablePaths(0, &v96);
    sub_25BAB2794();
    v28 = v46;
    sub_25BAB61C4();
    sub_25BAB61CC(v28, v48, v49, v47 & 1);
    v45(v21, v13);
  }

  v50 = sub_25BC41DA0();

  v96 = v50;
  v82 = v28;
  *&v95 = sub_25BAB9528();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
  v52 = sub_25BCB68CC();
  v53 = sub_25BB13C38();
  v54 = swift_getWitnessTable();
  sub_25BCB793C();

  v95 = v92;
  v96 = v51;
  v97 = v52;
  v98 = v53;
  v99 = v54;
  sub_25BCB715C();
  sub_25BCB712C();
  v85 = MEMORY[0x277D84F90];
  while (1)
  {
    *&v92 = v51;
    *(&v92 + 1) = v52;
    v93 = v53;
    v94 = v54;
    sub_25BCB714C();
    sub_25BCB713C();
    v55 = *(&v92 + 1);
    if (!*(&v92 + 1))
    {
      break;
    }

    v56 = v92;
    if ((v88 & 1) == 0)
    {
      *&v95 = 46;
      *(&v95 + 1) = 0xE100000000000000;
      v90 = v87;
      v91 = v86;
      sub_25BB0CFFC();
      v56 = sub_25BCB6F3C();
      v58 = v57;

      v55 = v58;
    }

    swift_getAtKeyPath();

    v59 = *(v92 + 32);
    if ((~v59 & 0xF000000000000007) != 0)
    {
      if (v59 < 0)
      {
        sub_25BAB3020(*(v92 + 32));
        sub_25BAB69FC(v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAFDD24();
          v85 = v76;
        }

        v69 = *(v85 + 16);
        v68 = *(v85 + 24);
        v83 = v69 + 1;
        v84 = v69;
        if (v69 >= v68 >> 1)
        {
          sub_25BAFDD24();
          v85 = v77;
        }

        v81 = v59 & 0x7FFFFFFFFFFFFFFFLL;
        sub_25BAB310C(v59);

        v70 = v85;
        v71 = v84;
        *(v85 + 16) = v83;
        v72 = (v70 + 32 * v71);
        v72[4] = v56;
        v72[5] = v55;
        v73 = v81;
        v72[6] = sub_25BB13CAC;
        v72[7] = v73;
      }

      else
      {
        v84 = swift_allocObject();
        *(v84 + 16) = 0;
        v60 = swift_allocObject();
        v83 = v60;
        v61 = v84;
        *(v60 + 16) = v59;
        *(v60 + 24) = v61;
        type metadata accessor for ParameterInitializer();
        v62 = swift_allocObject();
        v63 = v83;
        *(v62 + 16) = sub_25BB13C9C;
        *(v62 + 24) = v63;
        *(v62 + 100) = 4;
        *&v92 = v62;
        sub_25BAB3020(v59);

        sub_25BAB3020(v59);

        sub_25BACED40(&v92);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAFDD24();
          v85 = v74;
        }

        v64 = *(v85 + 24);
        v81 = *(v85 + 16);
        WitnessTable = v81 + 1;
        if (v81 >= v64 >> 1)
        {
          sub_25BAFDD24();
          v85 = v75;
        }

        sub_25BAB310C(v59);

        v65 = v84;
        v66 = v85;
        *(v85 + 16) = WitnessTable;
        v67 = (v66 + 32 * v81);
        v67[4] = v56;
        v67[5] = v55;
        v67[6] = sub_25BB13CA4;
        v67[7] = v65;
      }
    }

    else
    {
    }
  }

  return v85;
}

uint64_t sub_25BB108D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  Layer.callAsFunction(_:)(a2, a5, a6);
  return (*(v9 + 8))(v12, a5);
}

uint64_t sub_25BB109DC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, void *a8, uint64_t a9)
{
  v11 = v9;
  v32 = a7;
  v45 = a5;
  v35 = a3;
  v36 = a4;
  v34 = a1;
  v14 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  v33 = a2;
  if (v14)
  {
    v10 = v9;
    v43[0] = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v17 = a2 + 48;
    do
    {
      v17 += 24;

      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v14;
    }

    while (v14);
    v15 = v43[0];
    v11 = v9;
  }

  v18 = 0xD000000000000027;
  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(v43[0]) = a6 & 1;
  v43[1] = MEMORY[0x277D84FA0];
  sub_25BACF298(v15, v43);
  if (!v20)
  {
    v28 = "ent operation.";
LABEL_11:
    type metadata accessor for Function.CompilationError(0, a8, a9, v19);
    swift_getWitnessTable();
    swift_allocError();
    sub_25BCA6188(v18, v28 | 0x8000000000000000, v29);
    swift_willThrow();
    return v10;
  }

  sub_25BAD6344();
  v22 = v21;

  if (*(v22 + 16) != 1)
  {

    v28 = "e a computational graph";
    v18 = 0xD00000000000007CLL;
    goto LABEL_11;
  }

  sub_25BAD6FB0(v22 + 32, v43);

  v24 = v34;
  v25 = *v34;
  MEMORY[0x28223BE20](v23);
  v31[2] = v43;
  v26 = v11;
  v27 = sub_25BC6F934(sub_25BB13C1C, v31, v25);
  v31[5] = v26;

  *v24 = v27;
  sub_25BAA51C8(&v44, &v37);
  if (*(&v38 + 1))
  {
    v41[0] = v37;
    v41[1] = v38;
    v41[2] = v39;
    v42 = v40;
  }

  else
  {
    sub_25BABEF40(v32, v41);
    if (*(&v38 + 1))
    {
      sub_25BA9C2C8(&v37);
    }
  }

  v10 = sub_25BB11F68(v43, v27, v35, v36, 0, 0, v45, v33, 0, v41, a8, a9);
  sub_25BABF0A8(v41);
  sub_25BA9AC78(v43);
  return v10;
}

void *sub_25BB10CE8@<X0>(void *a1@<X8>)
{
  if (qword_28154E200 != -1)
  {
    swift_once();
  }

  v2 = qword_2815573E8;
  v3 = unk_2815573F0;
  __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  (*(v8 + 16))(v6 - v5);
  return sub_25BC16FAC(1, v7, v2, v3, a1);
}

unint64_t sub_25BB10DE8(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  p_Kind = a2;
  sub_25BCB617C();
  v11 = sub_25BCB617C();
  v95 = a3;
  sub_25BC03458(v11);
  v12 = p_Kind;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v108 = p_Kind;
  v110 = v13;
  if (v13)
  {
    p_Kind = MEMORY[0x277D84F90];
    sub_25BAC5590();
    v14 = p_Kind;
    v15 = p_Kind[2];
    v16 = (a1 + 48);
    do
    {
      v17 = *v16;
      p_Kind = v14;
      v18 = *(v14 + 24);

      if (v15 >= v18 >> 1)
      {
        sub_25BAC5590();
        v14 = p_Kind;
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15 + 32) = v17;
      v16 += 3;
      ++v15;
      --v13;
    }

    while (v13);
    v12 = v108;
    v13 = v110;
  }

  v19 = v12[2];
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    p_Kind = MEMORY[0x277D84F90];
    sub_25BAC5590();
    v21 = p_Kind;
    v22 = p_Kind[2];
    v23 = v12 + 6;
    do
    {
      v24 = *v23;
      p_Kind = v21;
      v25 = *(v21 + 24);

      if (v22 >= v25 >> 1)
      {
        sub_25BAC5590();
        v21 = p_Kind;
      }

      *(v21 + 16) = v22 + 1;
      *(v21 + 8 * v22 + 32) = v24;
      v23 += 3;
      ++v22;
      --v19;
    }

    while (v19);
    v20 = MEMORY[0x277D84F90];
    v13 = v110;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v26 = sub_25BAC1988(v14, v21, a5);

  if (v13)
  {
    v102 = v26;
    *&v118 = v20;
    sub_25BB005D0(0, v13, 0);
    v27 = 0;
    v113 = v20;
    v105 = a1 + 32;
    v28 = &unk_286D427E8;
    do
    {
      v29 = (v105 + 24 * v27);
      v30 = v29[1];
      v20 = v29[2];
      p_Kind = *v29;
      v122 = v30;
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F876C90](0x646172675FLL, 0xE500000000000000);
      v31 = p_Kind;
      v32 = v122;
      v33 = v20[2];
      v34 = *(v33 + 160);

      v35 = 0;
      while (v35 != 8)
      {
        v36 = &unk_286D427E8 + v35++;
        if (v36[32] == v34)
        {
          goto LABEL_22;
        }
      }

      v37 = sub_25BAA80BC(v34, &unk_286D42270);
      if ((v37 & 1) == 0)
      {
        goto LABEL_83;
      }

      LOBYTE(v34) = *(v33 + 160);
LABEL_22:
      v132[0] = *(v33 + 152);
      v133 = v34;
      sub_25BCB617C();

      sub_25BAA51C8(v33 + 168, &p_Kind);

      Tensor.init(ones:scalarType:on:)(v132, &v133, &p_Kind, &v114);

      v38 = v113;
      v39 = v114;
      *&v118 = v113;
      v41 = v113[2];
      v40 = v113[3];
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        sub_25BB005D0((v40 > 1), v41 + 1, 1);
        v38 = v118;
      }

      ++v27;
      v38[2] = v42;
      v113 = v38;
      v43 = &v38[3 * v41];
      v43[4] = v31;
      v43[5] = v32;
      v43[6] = v39;
    }

    while (v27 != v110);
    v20 = MEMORY[0x277D84F90];
    v26 = v102;
  }

  else
  {
    v42 = v20[2];
    v113 = v20;
    v44 = v20;
    if (!v42)
    {
      goto LABEL_31;
    }
  }

  p_Kind = v20;
  sub_25BAC5590();
  v44 = p_Kind;
  v45 = p_Kind[2];
  v46 = 6;
  do
  {
    v47 = v113[v46];
    p_Kind = v44;
    v48 = *(v44 + 24);

    if (v45 >= v48 >> 1)
    {
      sub_25BAC5590();
      v44 = p_Kind;
    }

    *(v44 + 16) = v45 + 1;
    *(v44 + 8 * v45 + 32) = v47;
    v46 += 3;
    ++v45;
    --v42;
  }

  while (v42);
LABEL_31:
  v49 = v26(v44);

  v28 = v108;
  v50 = v108[2];
  if (v50)
  {
    *&v114 = v20;
    v37 = sub_25BB005D0(0, v50, 0);
    v44 = 0;
    v111 = v108[2];
    v51 = v114;
    v52 = v108 + 6;
    v103 = v50;
    v106 = v49;
    while (v111 != v44)
    {
      if (v44 >= v28[2])
      {
        goto LABEL_80;
      }

      if (v44 >= *(v49 + 16))
      {
        goto LABEL_81;
      }

      v53 = *(v52 - 2);
      v54 = *(v52 - 1);
      v55 = *(v49 + 8 * v44 + 32);
      v56 = v55[2];
      swift_retain_n();
      sub_25BCB617C();

      v57 = sub_25BA928B4();
      [v57 lock];

      swift_beginAccess();
      sub_25BA9323C(v56 + 40, &p_Kind);
      if (v129)
      {
        if (v129 == 1)
        {

          swift_unknownObjectRelease();
          sub_25BA977E0(v125);
        }

        else
        {
          sub_25BA9778C(&p_Kind);
        }

        [*(v56 + 224) unlock];

        sub_25BCB617C();
        p_Kind = v55;
        identity(_:)(v119, &p_Kind);

        v55 = *&v119[0];
      }

      else
      {
        sub_25BA9778C(&p_Kind);
        [*(v56 + 224) unlock];

        *&v119[0] = v55;
      }

      *&v114 = v51;
      v59 = v51[2];
      v58 = v51[3];
      v20 = (v59 + 1);
      if (v59 >= v58 >> 1)
      {
        v37 = sub_25BB005D0((v58 > 1), v59 + 1, 1);
        v51 = v114;
      }

      ++v44;
      v51[2] = v20;
      v60 = &v51[3 * v59];
      v60[4] = v53;
      v60[5] = v54;
      v60[6] = v55;
      v52 += 3;
      v49 = v106;
      v28 = v108;
      if (v103 == v44)
      {

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    *&v114 = v20;
    v89 = Tensor.scalarType.getter(v37);
    v91 = v90;
    p_Kind = v28;
    sub_25BC03500(&unk_286D42270);
    v92 = p_Kind;
    p_Kind = &v89->Kind;
    v122 = v91;
    v123 = 0;
    v124 = 0;
    v125[0] = -1;
    v126 = v92;
    v127 = 1;
    v130 = 3;
    sub_25BADDD28("init(onesLike:)", 15, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/TensorInitializers.swift", 107, 2, 729);
  }

  v51 = MEMORY[0x277D84F90];
LABEL_47:
  v61 = v51[2];
  v62 = MEMORY[0x277D84F90];
  v98 = v51;
  if (v61)
  {
    p_Kind = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v63 = v51 + 6;
    do
    {
      v64 = *v63;
      v63 += 3;
      v44 = *(v64 + 16);

      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v61;
    }

    while (v61);
    v62 = p_Kind;
  }

  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(p_Kind) = 0;
  v122 = MEMORY[0x277D84FA0];
  sub_25BACF298(v62, &p_Kind);
  if (!v65)
  {

    v44 = a7;
    type metadata accessor for Function.CompilationError(0, a7, a8, v80);
    swift_getWitnessTable();
    swift_allocError();
    v82 = v81;
    v83 = 0x800000025BCD9A20;
    v84 = 0xD000000000000027;
LABEL_70:
    sub_25BCA6188(v84, v83, v82);
    swift_willThrow();

    return v44;
  }

  sub_25BAD6344();
  v67 = v66;

  if (*(v67 + 16) != 1)
  {

    v44 = a7;
    type metadata accessor for Function.CompilationError(0, a7, a8, v85);
    swift_getWitnessTable();
    swift_allocError();
    v82 = v86;
    v84 = 0xD00000000000007CLL;
    v83 = 0x800000025BCD9A50;
    goto LABEL_70;
  }

  sub_25BAD6FB0(v67 + 32, &p_Kind);

  v107 = v128;
  v109 = sub_25BA9BEA0(v128);
  v68 = 0;
  v104 = v107 & 0xC000000000000001;
  v112 = MEMORY[0x277D84F90];
LABEL_54:
  while (v68 != v109)
  {
    v28 = (v107 & 0xC000000000000001);
    sub_25BAB4D78(v68, v104 == 0, v107);
    if (v104)
    {
      v37 = MEMORY[0x25F8779B0](v68, v107);
    }

    else
    {
    }

    if (__OFADD__(v68++, 1))
    {
      goto LABEL_82;
    }

    v70 = a2[2] + 1;
    v71 = a2 + 6;
    do
    {
      if (!--v70)
      {

        goto LABEL_54;
      }

      v72 = v71 + 3;
      v20 = *(v71 - 1);
      v73 = *v71;
      v74 = *(v71 - 2);
      v44 = sub_25BAC4018();
      v75 = sub_25BAC4018();
      v71 = v72;
    }

    while (v44 != v75);
    sub_25BCB617C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAFDDD8();
      v112 = v78;
    }

    v76 = *(v112 + 16);
    if (v76 >= *(v112 + 24) >> 1)
    {
      sub_25BAFDDD8();
      v112 = v79;
    }

    *(v112 + 16) = v76 + 1;
    v77 = (v112 + 24 * v76);
    v77[4] = v74;
    v77[5] = v20;
    v77[6] = v73;
  }

  sub_25BAA51C8(&v131, &v114);
  if (*(&v115 + 1))
  {
    v118 = v114;
    v119[0] = v115;
    v119[1] = v116;
    v120 = v117;
  }

  else
  {
    sub_25BABEF40(a6, &v118);
    if (*(&v115 + 1))
    {
      sub_25BA9C2C8(&v114);
    }
  }

  *&v114 = v113;
  sub_25BC03458(v112);
  *&v93 = 1684107879;
  *(&v93 + 1) = 0xE400000000000000;
  v87 = sub_25BB11F68(&p_Kind, v114, v95, a4, 0, 0, MEMORY[0x277D84F90], v98, v93, &v118, a7, a8);
  if (!v97)
  {
    v44 = v87;
  }

  sub_25BABF0A8(&v118);

  sub_25BA9AC78(&p_Kind);
  return v44;
}

uint64_t sub_25BB11958(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a3;
  v12 = *(a3 + 1);
  v13 = *(a3 + 2);
  v14 = a3[24];
  Layer.namedLayerStateKeyPaths(recursively:)();
  v44 = v15;
  v37 = a4;
  v38 = a5;
  v39 = a7;
  v40 = v11;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = sub_25BB13B94;
  v35 = &v36;
  sub_25BCB736C();
  swift_getTupleTypeMetadata2();
  v16 = sub_25BCB68CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_25BAB2B20(sub_25BB13BCC, v29, v16, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);

  v44 = v20;
  sub_25BCB68CC();
  swift_getWitnessTable();
  sub_25BCB615C();
  v21 = *(a2 + 16);
  if (v21)
  {
    v22 = (a2 + 48);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v44 = *(v22 - 2);
      v45 = v23;
      sub_25BCB617C();

      sub_25BCB61BC();

      if (v46[0])
      {
        v25 = sub_25BAC4018();
        Layer.value<A>(for:)();

        v26 = sub_25BAC4018();

        if (v25 != v26)
        {
          v46[0] = v24;
          Layer.updateValue<A>(_:for:)();
        }
      }

      else
      {
      }

      v22 += 3;
      --v21;
    }

    while (v21);
  }
}

uint64_t sub_25BB11C68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  type metadata accessor for TensorHandle();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_retain_n();
  sub_25BAA6EB0();

  *a2 = v4;
  return result;
}

uint64_t sub_25BB11CCC@<X0>(uint64_t a2@<X2>, void *a3@<X8>)
{
  ParameterInitializer.callAsFunction(shape:)();
  swift_beginAccess();
  *(a2 + 16) = v6;

  *a3 = v6;
  return result;
}

double sub_25BB11D4C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);

  return result;
}

uint64_t sub_25BB11D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_25BCB617C();
  }

  else
  {
    sub_25BB0CFFC();
    a1 = sub_25BCB6F3C();
  }

  return a1;
}

void sub_25BB11E48(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = a1[1];
  v12 = *a1;
  v3 = a1[2];
  v4 = *(a2 + 88);
  v5 = sub_25BA9BEA0(v4);
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v10 = 0;
      v9 = 0;
      v3 = 0;
      goto LABEL_11;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8779B0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v7 = sub_25BAC4018();
    v8 = sub_25BAC4018();

    ++v6;
    if (v7 == v8)
    {
      v9 = v11;
      sub_25BCB617C();

      v10 = v12;
LABEL_11:
      *a3 = v10;
      a3[1] = v9;
      a3[2] = v3;
      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_25BB11F68(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, void *a10, void *a11, uint64_t a12)
{
  v88 = a12;
  v86 = a11;
  FunctionTypeMetadata1 = *(&a9 + 1);
  v81 = a9;
  sub_25BAD6FB0(a1, v95);
  type metadata accessor for LazyTensorFunctionBuilder();
  swift_allocObject();
  sub_25BC47C64(v95);
  v19 = v18;
  v96 = a2;
  v83 = a2;
  sub_25BCB617C();
  v20 = sub_25BCB617C();
  v84 = a3;
  sub_25BC03458(v20);
  v21 = sub_25BCB617C();
  v85 = a4;
  sub_25BC03458(v21);
  v22 = v96;
  sub_25BCB617C();
  sub_25BC45110(v19, v22);
  v91[0] = a8;
  sub_25BCB617C();
  v23 = sub_25BCB617C();
  v82 = a7;
  sub_25BC03458(v23);
  v24 = a8;
  sub_25BCB617C();
  sub_25BC454D8(v19, a8);
  v79 = v12;
  v94 = MEMORY[0x277D84FA0];
  v93 = a9;
  if (*(&a9 + 1))
  {
    sub_25BCB617C();

    v26 = v88;
  }

  else
  {
    v27 = *(v22 + 16);
    v28 = MEMORY[0x277D84F90];
    v80 = v19;
    v77 = a8;
    v78 = a8;
    if (v27)
    {
      v91[0] = MEMORY[0x277D84F90];
      sub_25BB004E4();
      v29 = v28;
      v30 = (v22 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v91[0] = v29;
        v34 = *(v29 + 16);
        v33 = *(v29 + 24);
        sub_25BCB617C();
        if (v34 >= v33 >> 1)
        {
          sub_25BB004E4();
          v29 = v91[0];
        }

        *(v29 + 16) = v34 + 1;
        v35 = v29 + 16 * v34;
        *(v35 + 32) = v31;
        *(v35 + 40) = v32;
        v30 += 3;
        --v27;
      }

      while (v27);

      v26 = v88;
      v19 = v80;
      v24 = v77;
      v28 = MEMORY[0x277D84F90];
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
      v26 = v88;
    }

    sub_25BB14688(v29);
    v37 = v36;
    v94 = v36;
    v38 = *(v24 + 16);
    if (v38)
    {
      v91[0] = v28;
      sub_25BCB617C();
      sub_25BB004E4();
      v39 = v28;
      v40 = (v24 + 40);
      do
      {
        v41 = *(v40 - 1);
        v42 = *v40;
        v91[0] = v39;
        v44 = *(v39 + 16);
        v43 = *(v39 + 24);
        sub_25BCB617C();
        if (v44 >= v43 >> 1)
        {
          sub_25BB004E4();
          v39 = v91[0];
        }

        *(v39 + 16) = v44 + 1;
        v45 = v39 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v42;
        v40 += 3;
        --v38;
      }

      while (v38);

      v26 = v88;
      v19 = v80;
    }

    else
    {
      sub_25BCB617C();

      v39 = MEMORY[0x277D84F90];
    }

    sub_25BB14688(v39);
    v47 = sub_25BB12B20(v46, v37);

    if ((v47 & 1) == 0)
    {

      v93 = xmmword_25BCBC670;
    }
  }

  v48 = v86;
  _s9IOMappingVMa(255, v86, v26, v25);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v92 = sub_25BCB604C();
  MEMORY[0x28223BE20](v92);
  v68 = v86;
  v69 = v26;
  v49 = v19;
  sub_25BC45AE0(sub_25BB13A78);
  v50 = swift_allocObject();
  sub_25BCB6E8C();
  swift_getFunctionTypeMetadata1();
  v51 = sub_25BCB604C();
  *(v50 + 16) = v51;
  MEMORY[0x28223BE20](v51);
  v70 = v48;
  v71 = v26;
  v72[0] = v83;
  v72[1] = v19;
  v73 = v50;
  v74 = v84;
  v75 = v85;
  sub_25BC44FE0(sub_25BB13AB8);
  sub_25BAD6344();
  if (*(v52 + 16) == 1)
  {
    v85 = a10;
    sub_25BAD6FB0(v52 + 32, v91);

    v53 = swift_beginAccess();
    v83 = &v76;
    v89[0] = *(v50 + 16);
    MEMORY[0x28223BE20](v53);
    v80 = v19;
    v54 = v48;
    v73 = v48;
    v74 = v26;
    v75 = v91;
    sub_25BCB68CC();
    sub_25BCB617C();
    v55 = swift_checkMetadataState();
    swift_getWitnessTable();
    v56 = v79;
    v84 = sub_25BCB65BC();
    v82 = v56;

    v83 = v72;
    v89[0] = v92;
    MEMORY[0x28223BE20](v57);
    v58 = v88;
    v68 = v54;
    v69 = v88;
    v70 = v91;
    v59 = sub_25BCB68CC();
    sub_25BCB617C();
    WitnessTable = swift_getWitnessTable();
    v62 = sub_25BAB2B20(sub_25BB13B0C, &v67, v59, v55, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v61);

    _s11ComputePassCMa(0, v54, v58, v63);
    sub_25BABEF40(v85, v90);
    sub_25BAD6FB0(v91, v89);
    v49 = sub_25BC4F710(v84, v62, v90, v89);
    sub_25BA9AC78(v91);
  }

  else
  {

    type metadata accessor for Function.CompilationError(0, v48, v26, v64);
    swift_getWitnessTable();
    swift_allocError();
    sub_25BCA6188(0xD00000000000007ALL, 0x800000025BCD9B40, v65);
    swift_willThrow();
  }

  return v49;
}

BOOL sub_25BB12724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  v9 = *(a7 + 16);
  v10 = a7 + 48;
  while (v9 != v8)
  {
    v11 = sub_25BAC4018();
    if (v11 == sub_25BAC4018())
    {
      goto LABEL_6;
    }

    ++v8;
    v10 += 24;
  }

  v8 = v9;
LABEL_6:
  v12 = 0;
  v13 = a7 + 48;
  while (v9 != v12)
  {
    v14 = sub_25BAC4018();
    if (v14 == sub_25BAC4018())
    {
      v9 = v12;
      return v8 < v9;
    }

    ++v12;
    v13 += 24;
  }

  return v8 < v9;
}

uint64_t sub_25BB12800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 48;
  for (i = 1; v2 + i != 1; --i)
  {
    v5 = *(v3 - 16);
    v6 = sub_25BAC4018();
    v3 += 24;
    if (v6 == sub_25BAC4018())
    {
      sub_25BCB617C();
      return v5;
    }
  }

  return 0;
}

uint64_t sub_25BB128A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 48;
  for (i = 1; v2 + i != 1; --i)
  {
    v5 = *(v3 - 16);
    v6 = sub_25BAC4018();
    v3 += 24;
    if (v6 == sub_25BAC4018())
    {
      sub_25BCB617C();
      return v5;
    }
  }

  return 0;
}

uint64_t sub_25BB1294C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 48;
  for (i = 1; v2 + i != 1; --i)
  {
    v5 = *(v3 - 16);
    v6 = sub_25BAC4018();
    v3 += 24;
    if (v6 == sub_25BAC4018())
    {
      sub_25BCB617C();
      return v5;
    }
  }

  return 0;
}

uint64_t sub_25BB129F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 48;
  for (i = 1; v2 + i != 1; --i)
  {
    v5 = *(v3 - 16);
    v6 = sub_25BAC4018();
    v3 += 24;
    if (v6 == sub_25BAC4018())
    {
      sub_25BCB617C();
      return v5;
    }
  }

  return 0;
}

uint64_t sub_25BB12A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (a2)
  {
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](a1, a2);
    return a3;
  }

  else
  {
    sub_25BCB617C();
  }

  return v4;
}

uint64_t sub_25BB12B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  sub_25BCB617C();
  result = sub_25BCB617C();
  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      sub_25BCB79CC();
      sub_25BCB617C();
      sub_25BCB625C();
      v18 = sub_25BCB7A3C();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = sub_25BCB789C();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB12CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  HIDWORD(v40) = a6;
  v15 = sub_25BB1294C(a2, a3);
  if (!v16)
  {
    v15 = sub_25BB129F4(a2, a4);
    if (!v16)
    {
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000021, 0x800000025BCD9BC0);
      v31 = sub_25BAC44E4();
      MEMORY[0x25F876C90](v31);

      MEMORY[0x25F876C90](0xD000000000000028, 0x800000025BCD9BF0);
      sub_25BCB617C();
      sub_25BA97890("makeComputePass(for:input:parameters:inputStates:inputNameSuffix:outputStates:output:outputNameSuffix:computeDevice:)", 117, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Factory.swift", 121, 2, 480, v32, v33, v34, v35, v36, v37, a7, a5, v40, v41, a2, v42, v43, 0, 0xE000000000000000, 0, 0xE000000000000000);
    }
  }

  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = a10;
  *(v23 + 24) = a11;
  *(v23 + 32) = a1;
  *(v23 + 40) = v19;
  *(v23 + 48) = v20;
  *(v23 + 56) = v21;
  *(v23 + 64) = v22;
  v24 = swift_allocObject();
  v24[2] = a10;
  v24[3] = a11;
  v24[4] = sub_25BB13B80;
  v24[5] = v23;
  _s9IOMappingVMa(255, a10, a11, v25);
  swift_getFunctionTypeMetadata1();
  sub_25BCB68CC();
  sub_25BCB617C();

  sub_25BCB687C();
  if ((v40 & 0x100000000) != 0 || (v26 = *a7, sub_25BCB617C(), v27 = sub_25BB9FED4(v19, v20, v26), , v27))
  {
    v29 = *a8;
    v28 = a8[1];
    sub_25BCB617C();
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  sub_25BB12A9C(v29, v28, v19, v20);

  sub_25BB0CFFC();
  sub_25BCB6F3C();

  sub_25BC4595C();
}

uint64_t sub_25BB13028@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, _OWORD *a8@<X8>)
{
  v13 = *(a1 + 152);
  sub_25BAB4D78(a2, (v13 & 0xC000000000000001) == 0, v13);
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8779B0](a2, v13);
  }

  else
  {
  }

  v14 = sub_25BC458D0();
  v16 = v15;

  sub_25BC4F6FC(a5, a3, a4, v14, v16, a2, v19);
  v17 = v19[1];
  *a8 = v19[0];
  a8[1] = v17;
  a8[2] = v19[2];

  return sub_25BCB617C();
}

uint64_t sub_25BB13130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1;
  if (sub_25BB13338(a1))
  {
  }

  else
  {
    v21[0] = *(v14 + 152);
    v25 = *(v14 + 160);
    type metadata accessor for TensorRepresentation();
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    swift_allocObject();
    sub_25BCB617C();
    v22 = 1;
    v15 = sub_25BC5F250(v21, &v25, v23, 0x100000000);

    sub_25BC4445C(v14, v15);

    v14 = v15;
  }

  v16 = sub_25BAC4018();
  v17 = swift_allocObject();
  *(v17 + 16) = a8;
  *(v17 + 24) = a9;
  *(v17 + 32) = v16;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  *(v17 + 64) = a5;
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a9;
  v18[4] = sub_25BB13B30;
  v18[5] = v17;
  v21[0] = sub_25BB13B44;
  v21[1] = v18;
  swift_beginAccess();
  _s9IOMappingVMa(255, a8, a9, v19);
  sub_25BCB6E8C();
  swift_getFunctionTypeMetadata1();
  sub_25BCB68CC();
  sub_25BCB617C();

  sub_25BCB687C();
  swift_endAccess();

  return v14;
}

BOOL sub_25BB13338(uint64_t a1)
{

  v2 = sub_25BA928B4();
  [v2 lock];

  swift_beginAccess();
  sub_25BA9323C(a1 + 40, v6);
  if (v8)
  {
    if (v8 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v7);
    }

    else
    {
      sub_25BA9778C(v6);
    }

    [*(a1 + 224) unlock];

    return 0;
  }

  sub_25BA9778C(v6);
  [*(a1 + 224) unlock];

  v3 = sub_25BAB3058();
  if (!v3)
  {
    return 0;
  }

  v4 = object_getClass(v3) == _TtC14NeuralNetworks14InputOperation;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_25BB13444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W5>, void *a8@<X8>)
{
  v10 = *(a1 + 88);
  result = sub_25BA9BEA0(v10);
  v12 = result;
  v13 = 0;
  v14 = v10 & 0xC000000000000001;
  while (1)
  {
    if (v12 == v13)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
LABEL_16:
      *a8 = v17;
      a8[1] = v18;
      a8[2] = v19;
      a8[3] = v20;
      a8[4] = v21;
      a8[5] = v22;
      return result;
    }

    if (!v14)
    {
      break;
    }

    MEMORY[0x25F8779B0](v13, v10);
LABEL_6:
    v15 = sub_25BAC4018();

    if (v15 == a2)
    {
      sub_25BAB4D78(v13, v14 == 0, v10);
      if (v14)
      {
        MEMORY[0x25F8779B0](v13, v10);
      }

      else
      {
      }

      v23 = sub_25BC458D0();
      v25 = v24;

      sub_25BC4F6FC(a5, a3, a4, v23, v25, v13, v29);
      v17 = v29[0];
      v18 = v30;
      v19 = v31;
      v20 = v32;
      v21 = v33;
      v22 = v34;
      result = sub_25BCB617C();
      goto LABEL_16;
    }

    if (__OFADD__(v13++, 1))
    {
      goto LABEL_18;
    }
  }

  if (v13 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_6;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25BB135E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_25BB12800(a2, a3);
  if (v16)
  {
    sub_25BB13130(a2, v15, v16, v17, 0, a4, a5, a8, a9);
LABEL_5:
    sub_25BC45C10();
LABEL_6:

    goto LABEL_7;
  }

  v18 = sub_25BB128A4(a2, a6);
  if (v19)
  {
    sub_25BB13130(a2, v18, v19, v20, 1, a4, a5, a8, a9);
    goto LABEL_5;
  }

  v22 = sub_25BB129F4(a2, a7);
  if (v23)
  {
    sub_25BB13130(a2, v22, v23, v24, 2, a4, a5, a8, a9);
    sub_25BC45C10();
    goto LABEL_6;
  }

  v25 = sub_25BA928B4();
  [v25 lock];

  sub_25BA92920(a2, 0, 0, v31);
  [*(a2 + 224) unlock];

  v26 = v31[0];
  v27 = sub_25BAC44E4();
  v29 = v28;
  type metadata accessor for TensorRepresentation();
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  swift_allocObject();
  v30 = sub_25BC5F404(v26, *(&v26 + 1), v27, v29, v31, 0x100000000);
  sub_25BC4445C(a2, v30);
LABEL_7:
}

double sub_25BB13830@<D0>(void (**a1)(_OWORD *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  (*a1)(v7, a2);
  result = *v7;
  v5 = v7[1];
  v6 = v7[2];
  *a3 = v7[0];
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

__n128 sub_25BB1388C@<Q0>(void (**a1)(uint64_t *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*a1)(&v7, a2);
  result = v8;
  v5 = v9;
  v6 = v10;
  *a3 = v7;
  *(a3 + 8) = result;
  *(a3 + 24) = v5;
  *(a3 + 40) = v6;
  return result;
}

void sub_25BB138F8(uint64_t *a1@<X0>, char a4@<W4>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (a4)
  {
    v10 = sub_25BCB617C();
  }

  else
  {
    sub_25BB0CFFC();
    v9 = sub_25BCB6F3C();
    v10 = v11;
  }

  *a6 = v9;
  a6[1] = v10;
  Layer.value<A>(for:)();
}

double sub_25BB13B44()
{
  v1 = (*(v0 + 32))(v12);
  *&result = OUTLINED_FUNCTION_11_9(v1, v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1], v10).n128_u64[0];
  return result;
}

uint64_t sub_25BB13BCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 48))(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

unint64_t sub_25BB13C38()
{
  result = qword_27FBB4098;
  if (!qword_27FBB4098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3F98, &unk_25BCC3720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4098);
  }

  return result;
}

void ParameterInitializer.callAsFunction(shape:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = v1;
  v4 = *v3;
  OUTLINED_FUNCTION_35(v0 + 16);
  sub_25BB14570(v0 + 16, &v105);
  switch(v113)
  {
    case 1:
      v25 = v106;
      OUTLINED_FUNCTION_22_2();
      v104 = v112;
      v27 = dynamic_cast_existential_2_conditional(v26, v26, &protocol descriptor for TensorFloatingPointScalar, MEMORY[0x277D83460]);
      if (!v27)
      {
        BYTE4(v99) = 9;
        OUTLINED_FUNCTION_2_8();
        sub_25BA97890(v82, v83, v84, v85, v86, v87, 55, v88, 0xD000000000000043, 0x800000025BCD9DB0, v93, *(&v93 + 1), v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103[0], v103[1]);
      }

      sub_25BB149E8(v27, v4, v25, v103, v27, v28, v29, v114);
      goto LABEL_65;
    case 2:
      _KR00_8 = v105;
      v8 = v106;
      v7 = v107;
      v9 = OUTLINED_FUNCTION_22_2();
      v104 = v112;
      v11 = *(v10 + 8);
      (*(v11 + 32))(&v102 + 7, v7, v11, v9);
      OUTLINED_FUNCTION_46_0();
      switch(v12)
      {
        case 0:
          sub_25BCB617C();
          if (v8)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          __asm
          {
            FCVT            H9, S9
            FCVT            H8, S8
          }

          sub_25BAA51C8(v103, &v92);
          OUTLINED_FUNCTION_1_10();
          goto LABEL_64;
        case 1:
          sub_25BCB617C();
          if (v8)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          OUTLINED_FUNCTION_5_11();
          sub_25BB155AC(v4, SWORD1(_KR00_8), SHIWORD(_KR00_8), v11, v8, &v92, v114);
          goto LABEL_65;
        case 2:
          if (v8)
          {
            goto LABEL_42;
          }

          sub_25BCB617C();
          OUTLINED_FUNCTION_17_3();
          break;
        case 3:
          sub_25BCB617C();
          if (v8)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          sub_25BAA51C8(v103, &v92);
          OUTLINED_FUNCTION_28_3();
          OUTLINED_FUNCTION_20_0();
          goto LABEL_61;
        default:
          goto LABEL_74;
      }

LABEL_58:
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_1_10();
      sub_25BB15A80();
LABEL_65:

      v5 = v103;
      goto LABEL_66;
    case 3:
      v13 = v105;
      v14 = BYTE1(v105);
      v15 = *(&v105 + 1);
      v16 = v106;
      v11 = v107;
      OUTLINED_FUNCTION_22_2();
      v104 = v112;
      *&v92 = v4;
      v7 = &v92;
      v17 = sub_25BB175F0();
      v19 = v17;
      if (!v13)
      {
        v19 = (v17 + v18) * 0.5;
      }

      v20 = v15 / v19;
      if (v14)
      {
        if (v14 == 1)
        {
          v21 = OUTLINED_FUNCTION_6_13();
          v22(v21);
          OUTLINED_FUNCTION_46_0();
          _S8 = sqrtf(v20);
          switch(v24)
          {
            case 0:
              goto LABEL_19;
            case 1:
              goto LABEL_31;
            case 2:
              goto LABEL_27;
            case 3:
              goto LABEL_29;
            default:
              OUTLINED_FUNCTION_32_2();
              OUTLINED_FUNCTION_3_10(v89);
              OUTLINED_FUNCTION_2_8();
              v81 = 204;
              goto LABEL_79;
          }
        }

        v40 = OUTLINED_FUNCTION_6_13();
        v41(v40);
        OUTLINED_FUNCTION_46_0();
        v42 = sqrtf(v20);
        _S8 = (v42 + v42) / 0.87963;
        switch(v43)
        {
          case 0:
LABEL_19:
            __asm { FCVT            H8, S8; jumptable 000000025BB13EC4 case 0 }

            sub_25BCB617C();
            if (v16)
            {

              sub_25BB6AAA8();
              OUTLINED_FUNCTION_31_1();
            }

            else
            {
              OUTLINED_FUNCTION_17_3();
            }

            OUTLINED_FUNCTION_5_11();
            OUTLINED_FUNCTION_28_3();
            OUTLINED_FUNCTION_20_0();
            sub_25BB160E0(v55, v56, v57, v58, v59, v60, v61);
            goto LABEL_65;
          case 1:
LABEL_31:
            sub_25BCB617C();
            if (v16)
            {

              sub_25BB6AAA8();
              OUTLINED_FUNCTION_31_1();
            }

            else
            {
              OUTLINED_FUNCTION_17_3();
            }

            OUTLINED_FUNCTION_5_11();
            sub_25BB165CC(v4, 0, SHIWORD(_S8), v11, v16, &v92, v114);
            goto LABEL_65;
          case 2:
LABEL_27:
            sub_25BCB617C();
            if (v16)
            {

              sub_25BB6AAA8();
              OUTLINED_FUNCTION_31_1();
            }

            else
            {
              OUTLINED_FUNCTION_17_3();
            }

            OUTLINED_FUNCTION_5_11();
            OUTLINED_FUNCTION_28_3();
            OUTLINED_FUNCTION_20_0();
            sub_25BB16AB0(v62, v63, v64, v65, v66, v67, v68);
            goto LABEL_65;
          case 3:
LABEL_29:
            sub_25BCB617C();
            if (v16)
            {

              sub_25BB6AAA8();
              OUTLINED_FUNCTION_31_1();
            }

            else
            {
              OUTLINED_FUNCTION_17_3();
            }

            OUTLINED_FUNCTION_5_11();
            OUTLINED_FUNCTION_28_3();
            OUTLINED_FUNCTION_20_0();
            sub_25BB16F9C(v48, v49, v50, v51, v52, v53, v54);
            goto LABEL_65;
          default:
            OUTLINED_FUNCTION_32_2();
            OUTLINED_FUNCTION_3_10(v91);
            OUTLINED_FUNCTION_2_8();
            v81 = 252;
            goto LABEL_79;
        }
      }

      v30 = OUTLINED_FUNCTION_6_13();
      v31(v30);
      OUTLINED_FUNCTION_46_0();
      _S8 = sqrtf(v20 * 3.0);
      switch(v33)
      {
        case 0:
          __asm
          {
            FCVT            H8, S8; jumptable 000000025BB13F68 case 0
            FCMP            H8, #0
          }

          if (_NF != _VF)
          {
            goto LABEL_72;
          }

          sub_25BCB617C();
          if (v16)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          OUTLINED_FUNCTION_5_11();
          OUTLINED_FUNCTION_1_10();
LABEL_64:
          sub_25BB1527C();
          goto LABEL_65;
        case 1:
          v47 = (LODWORD(_S8) ^ 0x80000000) >> 16;
          if (v47 > HIWORD(LODWORD(_S8)))
          {
            goto LABEL_73;
          }

          sub_25BCB617C();
          if (v16)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          OUTLINED_FUNCTION_5_11();
          sub_25BB14DA8(v4, LODWORD(_S8) & 0xFFFF0000 | v47, v11, v16, &v92, v114);
          goto LABEL_65;
        case 2:
          if (_S8 < 0.0)
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            *&v92 = v7;
            *(&v92 + 1) = v11;
            v93 = 0uLL;
            OUTLINED_FUNCTION_3_10(255);
            OUTLINED_FUNCTION_2_8();
            v81 = 109;
LABEL_79:
            sub_25BADDD28(v75, v76, v77, v78, v79, v80, v81);
          }

          if (v16)
          {
LABEL_42:
            sub_25BCB617C();

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            sub_25BCB617C();
            OUTLINED_FUNCTION_17_3();
          }

          goto LABEL_58;
        case 3:
          if (_S8 < 0.0)
          {
            goto LABEL_71;
          }

          sub_25BCB617C();
          if (v16)
          {

            sub_25BB6AAA8();
            OUTLINED_FUNCTION_31_1();
          }

          else
          {
            OUTLINED_FUNCTION_17_3();
          }

          OUTLINED_FUNCTION_5_11();
          OUTLINED_FUNCTION_28_3();
          OUTLINED_FUNCTION_20_0();
LABEL_61:
          sub_25BB15DB0();
          goto LABEL_65;
        default:
          OUTLINED_FUNCTION_32_2();
          OUTLINED_FUNCTION_3_10(v90);
          OUTLINED_FUNCTION_2_8();
          v81 = 158;
          goto LABEL_79;
      }

    case 4:
      *&v92 = v4;
      v105(v114, &v92);

      goto LABEL_67;
    default:
      v92 = v108;
      v93 = v109;
      v94 = v110;
      LODWORD(v95) = v111;
      sub_25BB148DC(v106, v4, &v92, v106, v107);
      v5 = &v92;
LABEL_66:
      sub_25BA9C2C8(v5);
LABEL_67:
      v69 = v114[0];
      OUTLINED_FUNCTION_29_4();
      v74 = sub_25BAA2C4C(v70, v71, v72, v73);
      MEMORY[0x28223BE20](v74);

      sub_25BB18650(sub_25BB186F4);

      swift_unknownObjectRelease();
      *v2 = v69;
      OUTLINED_FUNCTION_37_0();
      return;
  }
}

uint64_t static ParameterInitializer.custom(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_12();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 100) = 4;

  return v4;
}

uint64_t sub_25BB145F8()
{
  v0 = sub_25BCB738C();
  v4 = MEMORY[0x25F877220](v0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  sub_25BCB737C();

  while (1)
  {
    sub_25BCB75DC();
    if (!v3)
    {
      break;
    }

    sub_25BADBE78(&v2, v2, v3);
  }

  return v4;
}

void sub_25BB14688(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_48_1(a1);
  MEMORY[0x25F877220](v5, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_45_2();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    ++v2;
    v6 = sub_25BCB617C();
    v14 = OUTLINED_FUNCTION_47_2(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18);
    sub_25BADBE78(v14, v15, v16);

    v4 += 16;
  }

  __break(1u);
}

void sub_25BB1472C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_48_1(a1);
  MEMORY[0x25F877220](v5, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  OUTLINED_FUNCTION_45_2();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    ++v2;
    v6 = sub_25BCB617C();
    v14 = OUTLINED_FUNCTION_47_2(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
    sub_25BC42494(v14);

    v4 += 16;
  }

  __break(1u);
}

uint64_t sub_25BB147D0()
{
  OUTLINED_FUNCTION_35(v0 + 16);
  sub_25BB14570(v0 + 16, v8);
  switch(v10[52])
  {
    case 1:
    case 2:
    case 3:

      v1 = v8[2];
      v2 = v10;
      goto LABEL_5;
    case 4:
      v6 = &unk_286D42838;
      (v8[0])(&v7, &v6);

      v6 = v7;
      v4 = Tensor.scalarType.getter(v3);

      v1 = dynamic_cast_existential_1_conditional(v4, v4, &protocol descriptor for TensorFloatingPointScalar);
      break;
    default:
      v1 = v8[1];
      v2 = &v9;
LABEL_5:
      sub_25BA9C2C8(v2);
      break;
  }

  return v1;
}

void sub_25BB148DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = MEMORY[0x28223BE20](a1).n128_u32[0];
  v10 = *(v9 + 16);
  v11 = sub_25BB18A50();
  v10(v12, MEMORY[0x277D83A90], &protocol witness table for Float, v11, a4, a5);
  v13 = a2;
  sub_25BAA51C8(a3, v12);
  sub_25BCB617C();
  Tensor.init<A>(repeating:shape:scalarType:on:)();
}

void sub_25BB149E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a6;
  v42 = a3;
  v43 = a4;
  v44 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v18 = *(a5 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  v25 = *(*(*(a7 + 16) + 24) + 8);
  v38 = sub_25BCB62FC();
  MEMORY[0x28223BE20](v38);
  v27 = &v36 - v26;
  v48 = a2;
  sub_25BCB617C();
  sub_25BCB60EC();
  v45 = a1;
  sub_25BCB60EC();
  v40 = v25;
  if (sub_25BCB62BC())
  {
    v28 = *(v18 + 32);
    v28(v17, v24, a5);
    v29 = TupleTypeMetadata2;
    v28(&v17[*(TupleTypeMetadata2 + 48)], v21, a5);
    v30 = v41;
    v31 = v39;
    (*(v41 + 16))(v39, v17, v29);
    v36 = *(v29 + 48);
    v28(v27, v31, a5);
    v32 = *(v18 + 8);
    v32(v31 + v36, a5);
    (*(v30 + 32))(v31, v17, v29);
    v28(&v27[*(v38 + 36)], (v31 + *(v29 + 48)), a5);
    v32(v31, a5);
    v33 = v42;
    if (v42)
    {
      v34 = sub_25BB6AAA8();
    }

    else
    {
      v34 = 0;
    }

    sub_25BAA51C8(v43, v47);
    Tensor.init<A>(randomUniform:in:seed:scalarType:on:)(&v48, v27, v34, v33 == 0, v45, v47, a5, v46, v40, v35, v36, TupleTypeMetadata2, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }

  else
  {
    __break(1u);
  }
}

void sub_25BB14DA8(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  sub_25BAA51C8(a5, &v54);
  if (*&v55[8])
  {
    v52[0] = v54;
    v52[1] = *v55;
    v52[2] = *&v55[16];
    v53 = v56;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v52);
    sub_25BAA4AF4(&__src);
    if (*&v55[8])
    {
      sub_25BA9C2C8(&v54);
    }
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v12 = sub_25BAA49B8();
  swift_beginAccess();
  v13 = v12[2];
  v14 = *(v13 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[2] = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v13 = v32;
  v12[2] = v32;
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v14 > *(v13 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a3 = sub_25BB6B548();
  v12[2] = v13;
  swift_endAccess();

LABEL_10:
  v16 = sub_25BBE5CAC(a3);
  v39 = v17;
  v40 = v18;
  v41 = v16 & 1;
  v42 = v19;
  sub_25BB6B668(&v43);
  v20 = *(v43 + 16);

  *&v34 = a1;
  *(&v45 + 1) = &type metadata for BFloat16;
  *&v46 = sub_25BB18AFC();
  LOWORD(__src) = a2;
  v48 = &type metadata for BFloat16;
  v49 = v46;
  WORD4(v46) = HIWORD(a2);
  v51 = 2306;
  v38 = 0;
  *&v54 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v54 + 1) = 110;
  v55[0] = 2;
  *&v55[8] = xmmword_25BCBC690;
  *&v55[24] = "init(id:state:shape:distribution:creationSite:)";
  v56 = 47;
  v57 = 2;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v20, &v34, &__src, &v54);
  v21 = sub_25BB18AA4();
  sub_25BAA51C8(v52, &v34);
  if (*(&v35 + 1))
  {
    __src = v34;
    v45 = v35;
    v46 = v36;
    v47 = v37;
    sub_25BABEF40(&__src, v33);
    sub_25BC170C8(v21, v33, &v34);
    sub_25BA9C2C8(v33);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v34);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v22 = v50;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v23 = v49;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v24 = swift_allocObject();

  LOBYTE(__src) = 1;
  v26 = sub_25BC0C634(v25, 0, &v34, 0x100000000, v22, v23, v24);
  type metadata accessor for TensorHandle();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;

  sub_25BAA6EB0();
  v28 = sub_25BAA51C8(v52, &v34);
  if (*(&v35 + 1))
  {
    __src = v34;
    v45 = v35;
    v46 = v36;
    v47 = v37;
    *&v34 = v27;
    v29 = Tensor.scalarType.getter(v28);
    v31 = sub_25BBABD24(v29, v30);
    if (v31 != 2)
    {
      sub_25BC87800(&__src, v31 & 1, "placed(on:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", 95, 2, 94);
    }

    *&v34 = v27;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a5);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v52);

    v27 = v34;
  }

  else
  {

    sub_25BA9C2C8(a5);
    sub_25BA9C2C8(v52);
    sub_25BA9C2C8(&v34);
  }

  *a6 = v27;
}

void sub_25BB1527C()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_4();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_23_2(v11, v12, v13, v14);
  if (v162)
  {
    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    type metadata accessor for ContextManager();
    v15 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v15, v16, v17, v18, v19, v20, v21, v22, v121, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

    sub_25BAA51C8(__src, v160);
    sub_25BAA4AF4(__src);
    if (v162)
    {
      sub_25BA9C2C8(&v161);
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for ContextManager();
  v24 = sub_25BAA49B8();
  OUTLINED_FUNCTION_24_3(v24);
  OUTLINED_FUNCTION_15_4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v6 = v120;
  *(v5 + 16) = v120;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v23 > *(v6 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v26 = OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_41_1(v26, v27, v28, v29, v30, v31, v32, v33, v121, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, __src[0]);

LABEL_10:
  v34 = sub_25BBE5CAC(v4);
  v43 = OUTLINED_FUNCTION_13_4(v34, v35, v36, v37, v38, v39, v40, v41, v42, v121, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  OUTLINED_FUNCTION_40_2(v43, v44, v45, v46, v47, v48, v49, v50, v122, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

  v152 = MEMORY[0x277D84DC8];
  v153 = &protocol witness table for Float16;
  *__src = v10;
  v155 = MEMORY[0x277D84DC8];
  v156 = &protocol witness table for Float16;
  v154 = v8;
  v158 = v2;
  v159 = 8;
  HIBYTE(v141) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  OUTLINED_FUNCTION_14_3(v51, xmmword_25BCBC690);
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_7_8(v52, v53, v54, v55, v56, v57, v58, v59, v123, v130, v131, v132, v133, v134, v135, v136, v3, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  v60 = sub_25BB18AA4();
  v68 = OUTLINED_FUNCTION_44_0(v60, v61, v62, v63, v64, v65, v66, v67, v124, v130, v131, v132, v133, v134, v135, v136);
  if (*(&v138 + 1))
  {
    OUTLINED_FUNCTION_0_12(v68, v69, v70, v71, v72, v73, v74, v75, v76, v125, v130, v131, v132, v133, v134, v135, v136, v137, v138, v77);
    v78 = sub_25BABEF40(__src, &v130);
    OUTLINED_FUNCTION_30_3(v78, v79);
    sub_25BA9C2C8(&v130);
    sub_25BABF0A8(__src);
  }

  else
  {
    sub_25BA9C2C8(&v137);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v80 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v80, v81, v82, v83, v84, v85, v86, v87, v125, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

  v88 = v157;

  sub_25BAA4AF4(__src);
  v89 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v89, v90, v91, v92, v93, v94, v95, v96, v126, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

  sub_25BAA4AF4(__src);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();

  OUTLINED_FUNCTION_8(v97, v98, v99, v100, v101, v102, v103, v104, v127, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, __src[0]);
  type metadata accessor for TensorHandle();
  v105 = swift_allocObject();
  OUTLINED_FUNCTION_43_1(v105);
  sub_25BAA6EB0();
  v106 = sub_25BAA51C8(v160, &v137);
  if (*(&v138 + 1))
  {
    OUTLINED_FUNCTION_0_12(v106, v107, v108, v109, v110, v111, v112, v113, v114, v128, v130, v131, v132, v133, v134, v135, v136, v137, v138, v115);
    *&v137 = v88;
    v117 = Tensor.scalarType.getter(v116);
    if (sub_25BBABD24(v117, v118) != 2)
    {
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_16_9("placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v119, v129, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
    }

    *&v137 = v88;

    Tensor.place(on:)(__src);

    sub_25BA9C2C8(v1);
    sub_25BABF0A8(__src);
    sub_25BA9C2C8(v160);

    v88 = v137;
  }

  else
  {

    sub_25BA9C2C8(v1);
    sub_25BA9C2C8(v160);
    sub_25BA9C2C8(&v137);
  }

  *v0 = v88;
  OUTLINED_FUNCTION_37_0();
}

void sub_25BB155AC(uint64_t a1@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_25BAA51C8(a6, &v56);
  if (*&v57[8])
  {
    v54[0] = v56;
    v54[1] = *v57;
    v54[2] = *&v57[16];
    v55 = v58;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v54);
    sub_25BAA4AF4(&__src);
    if (*&v57[8])
    {
      sub_25BA9C2C8(&v56);
    }
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v15 = v34;
  v14[2] = v34;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a4 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a4);
  v41 = v19;
  v42 = v20;
  v43 = v18 & 1;
  v44 = v21;
  sub_25BB6B668(&v45);
  v22 = *(v45 + 16);

  *&v36 = a1;
  *(&v47 + 1) = &type metadata for BFloat16;
  *&v48 = sub_25BB18AFC();
  LOWORD(__src) = a2;
  v50 = &type metadata for BFloat16;
  v51 = v48;
  WORD4(v48) = a3;
  v53 = 2304;
  v40 = 0;
  *&v56 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v56 + 1) = 110;
  v57[0] = 2;
  *&v57[8] = xmmword_25BCBC690;
  *&v57[24] = "init(id:state:shape:distribution:creationSite:)";
  v58 = 47;
  v59 = 2;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v36, &__src, &v56);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v54, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    sub_25BABEF40(&__src, v35);
    sub_25BC170C8(v23, v35, &v36);
    sub_25BA9C2C8(v35);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v36);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v52;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v51;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v36, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  v30 = sub_25BAA51C8(v54, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    *&v36 = v29;
    v31 = Tensor.scalarType.getter(v30);
    v33 = sub_25BBABD24(v31, v32);
    if (v33 != 2)
    {
      sub_25BC87800(&__src, v33 & 1, "placed(on:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", 95, 2, 94);
    }

    *&v36 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a6);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v54);

    v29 = v36;
  }

  else
  {

    sub_25BA9C2C8(a6);
    sub_25BA9C2C8(v54);
    sub_25BA9C2C8(&v36);
  }

  *a7 = v29;
}

void sub_25BB15A80()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_4();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_23_2(v11, v12, v13, v14);
  if (v162)
  {
    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    type metadata accessor for ContextManager();
    v15 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v15, v16, v17, v18, v19, v20, v21, v22, v121, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

    sub_25BAA51C8(__src, v160);
    sub_25BAA4AF4(__src);
    if (v162)
    {
      sub_25BA9C2C8(&v161);
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for ContextManager();
  v24 = sub_25BAA49B8();
  OUTLINED_FUNCTION_24_3(v24);
  OUTLINED_FUNCTION_15_4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v6 = v120;
  *(v5 + 16) = v120;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v23 > *(v6 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v26 = OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_41_1(v26, v27, v28, v29, v30, v31, v32, v33, v121, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, __src[0]);

LABEL_10:
  v34 = sub_25BBE5CAC(v4);
  v43 = OUTLINED_FUNCTION_13_4(v34, v35, v36, v37, v38, v39, v40, v41, v42, v121, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  OUTLINED_FUNCTION_40_2(v43, v44, v45, v46, v47, v48, v49, v50, v122, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

  v152 = MEMORY[0x277D83A90];
  v153 = &protocol witness table for Float;
  *__src = v10;
  v155 = MEMORY[0x277D83A90];
  v156 = &protocol witness table for Float;
  v154 = v8;
  v158 = v2;
  v159 = 10;
  HIBYTE(v141) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  OUTLINED_FUNCTION_14_3(v51, xmmword_25BCBC690);
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_7_8(v52, v53, v54, v55, v56, v57, v58, v59, v123, v130, v131, v132, v133, v134, v135, v136, v3, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  v60 = sub_25BB18AA4();
  v68 = OUTLINED_FUNCTION_44_0(v60, v61, v62, v63, v64, v65, v66, v67, v124, v130, v131, v132, v133, v134, v135, v136);
  if (*(&v138 + 1))
  {
    OUTLINED_FUNCTION_0_12(v68, v69, v70, v71, v72, v73, v74, v75, v76, v125, v130, v131, v132, v133, v134, v135, v136, v137, v138, v77);
    v78 = sub_25BABEF40(__src, &v130);
    OUTLINED_FUNCTION_30_3(v78, v79);
    sub_25BA9C2C8(&v130);
    sub_25BABF0A8(__src);
  }

  else
  {
    sub_25BA9C2C8(&v137);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v80 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v80, v81, v82, v83, v84, v85, v86, v87, v125, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

  v88 = v157;

  sub_25BAA4AF4(__src);
  v89 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v89, v90, v91, v92, v93, v94, v95, v96, v126, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

  sub_25BAA4AF4(__src);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();

  OUTLINED_FUNCTION_8(v97, v98, v99, v100, v101, v102, v103, v104, v127, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, __src[0]);
  type metadata accessor for TensorHandle();
  v105 = swift_allocObject();
  OUTLINED_FUNCTION_43_1(v105);
  sub_25BAA6EB0();
  v106 = sub_25BAA51C8(v160, &v137);
  if (*(&v138 + 1))
  {
    OUTLINED_FUNCTION_0_12(v106, v107, v108, v109, v110, v111, v112, v113, v114, v128, v130, v131, v132, v133, v134, v135, v136, v137, v138, v115);
    *&v137 = v88;
    v117 = Tensor.scalarType.getter(v116);
    if (sub_25BBABD24(v117, v118) != 2)
    {
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_16_9("placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v119, v129, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
    }

    *&v137 = v88;

    Tensor.place(on:)(__src);

    sub_25BA9C2C8(v1);
    sub_25BABF0A8(__src);
    sub_25BA9C2C8(v160);

    v88 = v137;
  }

  else
  {

    sub_25BA9C2C8(v1);
    sub_25BA9C2C8(v160);
    sub_25BA9C2C8(&v137);
  }

  *v0 = v88;
  OUTLINED_FUNCTION_37_0();
}

void sub_25BB15DB0()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_4();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_23_2(v11, v12, v13, v14);
  if (v162)
  {
    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    type metadata accessor for ContextManager();
    v15 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v15, v16, v17, v18, v19, v20, v21, v22, v121, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

    sub_25BAA51C8(__src, v160);
    sub_25BAA4AF4(__src);
    if (v162)
    {
      sub_25BA9C2C8(&v161);
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for ContextManager();
  v24 = sub_25BAA49B8();
  OUTLINED_FUNCTION_24_3(v24);
  OUTLINED_FUNCTION_15_4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v6 = v120;
  *(v5 + 16) = v120;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v23 > *(v6 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v26 = OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_41_1(v26, v27, v28, v29, v30, v31, v32, v33, v121, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, __src[0]);

LABEL_10:
  v34 = sub_25BBE5CAC(v4);
  v43 = OUTLINED_FUNCTION_13_4(v34, v35, v36, v37, v38, v39, v40, v41, v42, v121, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  OUTLINED_FUNCTION_40_2(v43, v44, v45, v46, v47, v48, v49, v50, v122, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

  v152 = MEMORY[0x277D839F8];
  v153 = &protocol witness table for Double;
  *__src = v10;
  v155 = MEMORY[0x277D839F8];
  v156 = &protocol witness table for Double;
  v154 = v8;
  v158 = v2;
  v159 = 11;
  HIBYTE(v141) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  OUTLINED_FUNCTION_14_3(v51, xmmword_25BCBC690);
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_7_8(v52, v53, v54, v55, v56, v57, v58, v59, v123, v130, v131, v132, v133, v134, v135, v136, v3, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  v60 = sub_25BB18AA4();
  v68 = OUTLINED_FUNCTION_44_0(v60, v61, v62, v63, v64, v65, v66, v67, v124, v130, v131, v132, v133, v134, v135, v136);
  if (*(&v138 + 1))
  {
    OUTLINED_FUNCTION_0_12(v68, v69, v70, v71, v72, v73, v74, v75, v76, v125, v130, v131, v132, v133, v134, v135, v136, v137, v138, v77);
    v78 = sub_25BABEF40(__src, &v130);
    OUTLINED_FUNCTION_30_3(v78, v79);
    sub_25BA9C2C8(&v130);
    sub_25BABF0A8(__src);
  }

  else
  {
    sub_25BA9C2C8(&v137);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v80 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v80, v81, v82, v83, v84, v85, v86, v87, v125, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

  v88 = v157;

  sub_25BAA4AF4(__src);
  v89 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v89, v90, v91, v92, v93, v94, v95, v96, v126, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

  sub_25BAA4AF4(__src);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();

  OUTLINED_FUNCTION_8(v97, v98, v99, v100, v101, v102, v103, v104, v127, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, __src[0]);
  type metadata accessor for TensorHandle();
  v105 = swift_allocObject();
  OUTLINED_FUNCTION_43_1(v105);
  sub_25BAA6EB0();
  v106 = sub_25BAA51C8(v160, &v137);
  if (*(&v138 + 1))
  {
    OUTLINED_FUNCTION_0_12(v106, v107, v108, v109, v110, v111, v112, v113, v114, v128, v130, v131, v132, v133, v134, v135, v136, v137, v138, v115);
    *&v137 = v88;
    v117 = Tensor.scalarType.getter(v116);
    if (sub_25BBABD24(v117, v118) != 2)
    {
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_16_9("placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v119, v129, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
    }

    *&v137 = v88;

    Tensor.place(on:)(__src);

    sub_25BA9C2C8(v1);
    sub_25BABF0A8(__src);
    sub_25BA9C2C8(v160);

    v88 = v137;
  }

  else
  {

    sub_25BA9C2C8(v1);
    sub_25BA9C2C8(v160);
    sub_25BA9C2C8(&v137);
  }

  *v0 = v88;
  OUTLINED_FUNCTION_37_0();
}

void sub_25BB160E0(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  v10 = a7.n128_u16[0];
  v11 = a6.n128_u16[0];
  sub_25BAA51C8(a4, &v58);
  if (*&v59[8])
  {
    v56[0] = v58;
    v56[1] = *v59;
    v56[2] = *&v59[16];
    v57 = v60;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v56);
    sub_25BAA4AF4(&__src);
    if (*&v59[8])
    {
      sub_25BA9C2C8(&v58);
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v15 = v34;
  v14[2] = v34;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a2 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a2);
  v41 = v19;
  v42 = v20;
  v43 = v18 & 1;
  v44 = v21;
  sub_25BB6B668(&v45);
  v22 = *(v45 + 16);

  *&v36 = a1;
  *(&v47 + 1) = MEMORY[0x277D84DC8];
  *&v48 = &protocol witness table for Float16;
  LOWORD(__src) = v11;
  v50 = MEMORY[0x277D84DC8];
  v51 = &protocol witness table for Float16;
  WORD4(v48) = v10;
  v53 = MEMORY[0x277D84DC8];
  v54 = &protocol witness table for Float16;
  LOWORD(v52) = COERCE_UNSIGNED_INT(2.0);
  v55 = 2049;
  v40 = 0;
  *&v58 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v58 + 1) = 110;
  v59[0] = 2;
  *&v59[8] = xmmword_25BCBC690;
  *&v59[24] = "init(id:state:shape:distribution:creationSite:)";
  v60 = 47;
  v61 = 2;
  v62 = 0;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v36, &__src, &v58);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v56, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    sub_25BABEF40(&__src, v35);
    sub_25BC170C8(v23, v35, &v36);
    sub_25BA9C2C8(v35);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v36);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v52;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v51;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v36, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  v30 = sub_25BAA51C8(v56, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    *&v36 = v29;
    v31 = Tensor.scalarType.getter(v30);
    v33 = sub_25BBABD24(v31, v32);
    if (v33 != 2)
    {
      sub_25BC87800(&__src, v33 & 1, "placed(on:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", 95, 2, 94);
    }

    *&v36 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a4);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v56);

    v29 = v36;
  }

  else
  {

    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v56);
    sub_25BA9C2C8(&v36);
  }

  *a5 = v29;
}

void sub_25BB165CC(uint64_t a1@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_25BAA51C8(a6, &v58);
  if (*&v59[8])
  {
    v56[0] = v58;
    v56[1] = *v59;
    v56[2] = *&v59[16];
    v57 = v60;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v56);
    sub_25BAA4AF4(&__src);
    if (*&v59[8])
    {
      sub_25BA9C2C8(&v58);
    }
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v15 = v34;
  v14[2] = v34;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a4 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a4);
  v41 = v19;
  v42 = v20;
  v43 = v18 & 1;
  v44 = v21;
  sub_25BB6B668(&v45);
  v22 = *(v45 + 16);

  *&v36 = a1;
  *(&v47 + 1) = &type metadata for BFloat16;
  *&v48 = sub_25BB18AFC();
  LOWORD(__src) = a2;
  v50 = &type metadata for BFloat16;
  v51 = v48;
  WORD4(v48) = a3;
  v53 = &type metadata for BFloat16;
  v54 = v48;
  LOWORD(v52) = 0x4000;
  v55 = 2305;
  v40 = 0;
  *&v58 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v58 + 1) = 110;
  v59[0] = 2;
  *&v59[8] = xmmword_25BCBC690;
  *&v59[24] = "init(id:state:shape:distribution:creationSite:)";
  v60 = 47;
  v61 = 2;
  v62 = 0;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v36, &__src, &v58);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v56, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    sub_25BABEF40(&__src, v35);
    sub_25BC170C8(v23, v35, &v36);
    sub_25BA9C2C8(v35);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v36);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v52;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v51;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v36, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  v30 = sub_25BAA51C8(v56, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    *&v36 = v29;
    v31 = Tensor.scalarType.getter(v30);
    v33 = sub_25BBABD24(v31, v32);
    if (v33 != 2)
    {
      sub_25BC87800(&__src, v33 & 1, "placed(on:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", 95, 2, 94);
    }

    *&v36 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a6);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v56);

    v29 = v36;
  }

  else
  {

    sub_25BA9C2C8(a6);
    sub_25BA9C2C8(v56);
    sub_25BA9C2C8(&v36);
  }

  *a7 = v29;
}

void sub_25BB16AB0(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  sub_25BAA51C8(a4, &v58);
  if (*&v59[8])
  {
    v56[0] = v58;
    v56[1] = *v59;
    v56[2] = *&v59[16];
    v57 = v60;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v56);
    sub_25BAA4AF4(&__src);
    if (*&v59[8])
    {
      sub_25BA9C2C8(&v58);
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v15 = v34;
  v14[2] = v34;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a2 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a2);
  v41 = v19;
  v42 = v20;
  v43 = v18 & 1;
  v44 = v21;
  sub_25BB6B668(&v45);
  v22 = *(v45 + 16);

  *&v36 = a1;
  *(&v47 + 1) = MEMORY[0x277D83A90];
  *&v48 = &protocol witness table for Float;
  *&__src = a6;
  v50 = MEMORY[0x277D83A90];
  v51 = &protocol witness table for Float;
  *(&v48 + 2) = a7;
  v53 = MEMORY[0x277D83A90];
  v54 = &protocol witness table for Float;
  LODWORD(v52) = 0x40000000;
  v55 = 2561;
  v40 = 0;
  *&v58 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v58 + 1) = 110;
  v59[0] = 2;
  *&v59[8] = xmmword_25BCBC690;
  *&v59[24] = "init(id:state:shape:distribution:creationSite:)";
  v60 = 47;
  v61 = 2;
  v62 = 0;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v36, &__src, &v58);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v56, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    sub_25BABEF40(&__src, v35);
    sub_25BC170C8(v23, v35, &v36);
    sub_25BA9C2C8(v35);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v36);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v52;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v51;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v36, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  v30 = sub_25BAA51C8(v56, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    *&v36 = v29;
    v31 = Tensor.scalarType.getter(v30);
    v33 = sub_25BBABD24(v31, v32);
    if (v33 != 2)
    {
      sub_25BC87800(&__src, v33 & 1, "placed(on:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", 95, 2, 94);
    }

    *&v36 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a4);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v56);

    v29 = v36;
  }

  else
  {

    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v56);
    sub_25BA9C2C8(&v36);
  }

  *a5 = v29;
}

void sub_25BB16F9C(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  sub_25BAA51C8(a4, &v58);
  if (*&v59[8])
  {
    v56[0] = v58;
    v56[1] = *v59;
    v56[2] = *&v59[16];
    v57 = v60;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v56);
    sub_25BAA4AF4(&__src);
    if (*&v59[8])
    {
      sub_25BA9C2C8(&v58);
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v15 = v34;
  v14[2] = v34;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a2 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a2);
  v41 = v19;
  v42 = v20;
  v43 = v18 & 1;
  v44 = v21;
  sub_25BB6B668(&v45);
  v22 = *(v45 + 16);

  *&v36 = a1;
  *(&v47 + 1) = MEMORY[0x277D839F8];
  *&v48 = &protocol witness table for Double;
  *&__src = a6;
  v50 = MEMORY[0x277D839F8];
  v51 = &protocol witness table for Double;
  *(&v48 + 1) = a7;
  v53 = MEMORY[0x277D839F8];
  v54 = &protocol witness table for Double;
  v52 = 0x4000000000000000;
  v55 = 2817;
  v40 = 0;
  *&v58 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v58 + 1) = 110;
  v59[0] = 2;
  *&v59[8] = xmmword_25BCBC690;
  *&v59[24] = "init(id:state:shape:distribution:creationSite:)";
  v60 = 47;
  v61 = 2;
  v62 = 0;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v36, &__src, &v58);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v56, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    sub_25BABEF40(&__src, v35);
    sub_25BC170C8(v23, v35, &v36);
    sub_25BA9C2C8(v35);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v36);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v52;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v51;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v36, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  v30 = sub_25BAA51C8(v56, &v36);
  if (*(&v37 + 1))
  {
    __src = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    *&v36 = v29;
    v31 = Tensor.scalarType.getter(v30);
    v33 = sub_25BBABD24(v31, v32);
    if (v33 != 2)
    {
      sub_25BC87800(&__src, v33 & 1, "placed(on:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", 95, 2, 94);
    }

    *&v36 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a4);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v56);

    v29 = v36;
  }

  else
  {

    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v56);
    sub_25BA9C2C8(&v36);
  }

  *a5 = v29;
}

uint64_t ParameterInitializer.__deallocating_deinit()
{
  sub_25BB1879C(v0 + 16);
  OUTLINED_FUNCTION_4_12();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB174D8(char a1)
{
  if (!a1)
  {
    return 0x6D726F66696E75;
  }

  if (a1 == 1)
  {
    return 0x6C616D726F6ELL;
  }

  return 0xD000000000000010;
}

uint64_t sub_25BB17538(char a1)
{
  if (!a1)
  {
    return 0x2820746F726F6C47;
  }

  if (a1 == 1)
  {
    return 0x6D69614B28206548;
  }

  return 0x6E7543654CLL;
}

uint64_t sub_25BB175A0(unsigned __int8 a1)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB175F0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  LOBYTE(v0) = 2;
  if (!sub_25BAB74D0(v2, 2, 0, 2))
  {
LABEL_18:
    v15[1] = 0;
    v15[2] = 0;
    v15[0] = v2;
    v16 = 6;
    v17 = xmmword_25BCBC6A0;
    v18 = v0;
    v19 = 7;
    sub_25BADDD28("fans()", 6, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/ParameterInitializer.swift", 109, 2, 849);
  }

  v3 = *(v1 + 16);
  if (v3 != 2)
  {
    if (v3 >= 2)
    {
      v15[0] = v1;
      v0 = v15;
      TensorShape.subscript.getter(0, v3 - 2, &v14);
      v4 = *(v14 + 16);
      if (!v4)
      {
        v8 = 1;
LABEL_11:

        v9 = *(v1 + 16) - 2;
        v15[0] = v1;
        v0 = v15;
        v10 = TensorShape.subscript.getter(v9);
        v2 = v10 * v8;
        if ((v10 * v8) >> 64 == (v10 * v8) >> 63)
        {
          v11 = *(v1 + 16) - 1;
          v15[0] = v1;
          v0 = v15;
          v12 = TensorShape.subscript.getter(v11);
          if ((v12 * v8) >> 64 == (v12 * v8) >> 63)
          {
            return v2;
          }

          goto LABEL_17;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v5 = (v14 + 32);
      v6 = 1;
      while (1)
      {
        v7 = *v5++;
        v8 = v6 * v7;
        if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
        {
          break;
        }

        v6 = v8;
        if (!--v4)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  return *(v1 + 32);
}

uint64_t sub_25BB17760(unint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = sub_25BBE5CAC(a1);
  v12 = v4;
  v6 = v5;
  v7 = v3;
  v9 = v8;
  v14 = &type metadata for PhiloxRandomNumberGenerator;
  v15 = sub_25BB189FC();
  v10 = swift_allocObject();
  *&v13 = v10;
  *(v10 + 16) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7 & 1;
  *(v10 + 48) = v9;
  type metadata accessor for AnyRandomNumberGenerator();
  v2 = swift_allocObject();
  sub_25BA97060(&v13, v2 + 16);
  return v2;
}

uint64_t ParameterInitializer.computeDevice.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_35(v1 + 16);
  sub_25BB14570(v1 + 16, __src);
  result = memcpy(__dst, __src, sizeof(__dst));
  switch(__dst[84])
  {
    case 1:
    case 2:
    case 3:

      v4 = *&__dst[48];
      *a1 = *&__dst[32];
      *(a1 + 16) = v4;
      *(a1 + 32) = *&__dst[64];
      v5 = *&__dst[80];
      goto LABEL_5;
    case 4:
      result = sub_25BB1879C(__dst);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0;
      break;
    default:
      v6 = *&__src[5];
      *a1 = *&__src[3];
      *(a1 + 16) = v6;
      *(a1 + 32) = *&__src[7];
      v5 = __src[9];
LABEL_5:
      *(a1 + 48) = v5;
      break;
  }

  return result;
}

double sub_25BB1790C(float a1)
{
  OUTLINED_FUNCTION_4_12();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83A90];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = &protocol witness table for Float;
  *(v2 + 100) = 0;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  return result;
}

uint64_t sub_25BB1796C(__n128 a1)
{
  sub_25BB147D0();
  ParameterInitializer.computeDevice.getter(v12);
  v12[60] = 0;
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return v1;
}

uint64_t static ParameterInitializer.repeating(_:scalarType:on:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BAA51C8(a4, v15);
  v15[60] = 0;
  OUTLINED_FUNCTION_4_12();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  return v4;
}

uint64_t static ParameterInitializer.randomUniform(in:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_52_0(v1, v2);
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_4_12();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  return v0;
}

uint64_t static ParameterInitializer.randomNormal(mean:standardDeviation:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_52_0(v1, v2);
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_4_12();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  return v0;
}

uint64_t static ParameterInitializer.heUniform(scale:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_52_0(v1, v2);
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_4_12();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  return v0;
}

uint64_t sub_25BB17B9C()
{
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_52_0(v1, v2);
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_4_12();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  return v0;
}

unint64_t ParameterInitializer.description.getter()
{
  OUTLINED_FUNCTION_35(v0 + 16);
  sub_25BB14570(v0 + 16, v24);
  switch(v26[52])
  {
    case 1:
      v18 = *v24;
      v19 = *&v24[1];

      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();

      v23 = 0xD000000000000012;
      v20 = sub_25BB187CC(v18, v19);
      MEMORY[0x25F876C90](v20);

      v17 = OUTLINED_FUNCTION_49_2();
      goto LABEL_23;
    case 2:

      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000015, 0x800000025BCD9E40);
      sub_25BCB69CC();
      MEMORY[0x25F876C90](0xD000000000000016, 0x800000025BCD9E60);
      sub_25BCB69CC();
      MEMORY[0x25F876C90](0x2073612029, 0xE500000000000000);
      v5 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v5);

      v3 = v23;
      v4 = v26;
      goto LABEL_24;
    case 3:
      v6 = LOBYTE(v24[0]);
      v7 = BYTE1(v24[0]);

      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      v8 = 0xEC00000029676E69;
      v9 = 0x6D69614B28206548;
      if (v6 != 1)
      {
        v9 = 0x6E7543654CLL;
        v8 = 0xE500000000000000;
      }

      if (v6)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x2820746F726F6C47;
      }

      if (v6)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0xEF29726569766158;
      }

      MEMORY[0x25F876C90](v10, v11);

      MEMORY[0x25F876C90](32, 0xE100000000000000);
      v12 = 0xE600000000000000;
      v13 = 0x6C616D726F6ELL;
      if (v7 != 1)
      {
        v13 = 0xD000000000000010;
        v12 = 0x800000025BCD9E00;
      }

      if (v7)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0x6D726F66696E75;
      }

      if (v7)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      MEMORY[0x25F876C90](v14, v15);

      v16 = 0x800000025BCD9E20;
      v17 = 0xD000000000000010;
LABEL_23:
      MEMORY[0x25F876C90](v17, v16);
      v21 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v21);

      v3 = v23;
      v4 = v26;
      goto LABEL_24;
    case 4:
      sub_25BB1879C(v24);
      return 0x6D6F74737563;
    default:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0x6E69746165706572, 0xEA00000000002067);
      sub_25BCB69CC();
      v1 = OUTLINED_FUNCTION_49_2();
      MEMORY[0x25F876C90](v1);
      v2 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v2);

      v3 = v23;
      v4 = &v25;
LABEL_24:
      sub_25BA9C2C8(v4);
      return v3;
  }
}

uint64_t sub_25BB18010@<X0>(uint64_t a1@<X8>)
{
  result = sub_25BB14570(v1, v7);
  switch(v10)
  {
    case 1:
    case 2:
    case 3:

      v4 = *&v8[24];
      *a1 = *&v8[8];
      *(a1 + 16) = v4;
      *(a1 + 32) = *&v8[40];
      v5 = v9;
      goto LABEL_5;
    case 4:
      result = sub_25BB1879C(v7);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0;
      break;
    default:
      v6 = *&v8[16];
      *a1 = *v8;
      *(a1 + 16) = v6;
      *(a1 + 32) = *&v8[32];
      v5 = *&v8[48];
LABEL_5:
      *(a1 + 48) = v5;
      break;
  }

  return result;
}

uint64_t ParameterInitializer.place(on:)(uint64_t a1)
{
  swift_beginAccess();
  sub_25BB18110(a1);
  return swift_endAccess();
}

uint64_t sub_25BB18110(uint64_t a1)
{
  sub_25BB14570(v1, &v10);
  switch(v12[52])
  {
    case 1:
      sub_25BB1879C(v1);
      v9 = *v11;
      *v1 = v10;
      *(v1 + 8) = v9;
      *(v1 + 16) = *&v11[8];
      sub_25BABEF40(a1, v1 + 32);
      v6 = 1;
      goto LABEL_7;
    case 2:
      sub_25BB1879C(v1);
      v5 = *v11;
      *v1 = v10;
      *(v1 + 8) = v5;
      *(v1 + 16) = *&v11[8];
      sub_25BABEF40(a1, v1 + 32);
      v6 = 2;
      goto LABEL_7;
    case 3:
      sub_25BB1879C(v1);
      v7 = HIDWORD(v10);
      v8 = *v11;
      *v1 = v10;
      *(v1 + 4) = v7;
      *(v1 + 8) = v8;
      *(v1 + 16) = *&v11[8];
      sub_25BABEF40(a1, v1 + 32);
      v6 = 3;
LABEL_7:
      *(v1 + 84) = v6;
      v3 = v12;
      return sub_25BA9C2C8(v3);
    case 4:
      return sub_25BB1879C(&v10);
    default:
      sub_25BB1879C(v1);
      *v1 = v10;
      *(v1 + 8) = *v11;
      sub_25BABEF40(a1, v1 + 24);
      *(v1 + 84) = 0;
      v3 = &v11[16];
      return sub_25BA9C2C8(v3);
  }
}

uint64_t ParameterInitializer.placed(on:)(uint64_t a1)
{
  v3 = *v1;
  if (sub_25BB147D0())
  {
    (*(*(v4 + 8) + 32))(v16);
    if (LOBYTE(v16[0]) - 8 <= 2)
    {
      sub_25BC87800(a1, LOBYTE(v16[0]) == 10, "placed(on:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/ParameterInitializer.swift", 109, 2, 732);
    }
  }

  OUTLINED_FUNCTION_35((v1 + 2));
  sub_25BB14570((v1 + 2), v15);
  sub_25BB14570(v15, v16);
  sub_25BB18110(a1);
  sub_25BB1879C(v15);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_51_3(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13]);
  return v3;
}

uint64_t sub_25BB183F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ParameterInitializer.placed(on:)(a1);
  *a2 = result;
  return result;
}

uint64_t ParameterInitializer.cast(to:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + 16;
  OUTLINED_FUNCTION_35(v5);
  sub_25BB14570(v5, v16);
  sub_25BB184D8(a1, a2, v17);
  sub_25BB1879C(v16);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_51_3(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13]);
  return a2;
}

uint64_t sub_25BB184D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25BB14570(v3, v13);
  switch(v14[60])
  {
    case 1:
      OUTLINED_FUNCTION_33_2();
      if (v9)
      {
        goto LABEL_12;
      }

      *a3 = v13[0];
      OUTLINED_FUNCTION_39_3();
      v10 = 1;
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_33_2();
      if (v9)
      {
        goto LABEL_12;
      }

      *a3 = v13[0];
      OUTLINED_FUNCTION_39_3();
      v10 = 2;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_33_2();
      if (v9)
      {
LABEL_12:
        sub_25BB14570(v3, a3);
      }

      else
      {
        v11 = HIDWORD(v13[0]);
        *a3 = v13[0];
        *(a3 + 4) = v11;
        OUTLINED_FUNCTION_39_3();
        v10 = 3;
LABEL_11:
        *(a3 + 84) = v10;
      }

      v12 = (v4 + 32);
      return sub_25BA9C2C8(v12);
    case 4:
      sub_25BB1879C(v13);
      return sub_25BB14570(v3, a3);
    default:
      if (v13[1] == a1)
      {
        sub_25BB14570(v3, a3);
      }

      else
      {
        *a3 = v13[0];
        *(a3 + 8) = a1;
        *(a3 + 16) = a2;
        sub_25BB18010(a3 + 24);
        *(a3 + 84) = 0;
      }

      v12 = v14;
      return sub_25BA9C2C8(v12);
  }
}

id sub_25BB18650(void (*a1)(uint64_t *__return_ptr))
{
  v3 = v1;
  v5 = sub_25BA928B4();
  [v5 lock];

  a1(&v7);
  if (v2)
  {
    return [*(v3 + 224) unlock];
  }

  [*(v3 + 224) unlock];
  return v7;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB187CC(float a1, float a2)
{
  sub_25BCB73CC();
  MEMORY[0x25F876C90](3026478, 0xE300000000000000);
  sub_25BCB73CC();
  return 0;
}

uint64_t sub_25BB188B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 85))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 84);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB188F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 77) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 85) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 85) = 0;
    }

    if (a2)
    {
      *(result + 84) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BB18944(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    v2 = a2 - 5;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 84) = a2;
  return result;
}

uint64_t sub_25BB18984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a2;
  v19 = a1;
  OUTLINED_FUNCTION_50_1(&v19, a2, a3, a4, a5, a6, a7, a8, 0);
  MEMORY[0x25F876C90](3026478, 0xE300000000000000);
  OUTLINED_FUNCTION_50_1(&v18, v8, v9, v10, v11, v12, v13, v14, v16);
  return v17;
}

unint64_t sub_25BB189FC()
{
  result = qword_28154C9D0[0];
  if (!qword_28154C9D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154C9D0);
  }

  return result;
}

unint64_t sub_25BB18A50()
{
  result = qword_28154BE68;
  if (!qword_28154BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BE68);
  }

  return result;
}

unint64_t sub_25BB18AA4()
{
  result = qword_28154F3A0;
  if (!qword_28154F3A0)
  {
    type metadata accessor for RandomOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F3A0);
  }

  return result;
}

unint64_t sub_25BB18AFC()
{
  result = qword_27FBB40A0;
  if (!qword_27FBB40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB40A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Upsample1D.Size.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB18BE8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB18CC8()
{
  result = qword_27FBB40A8;
  if (!qword_27FBB40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB40A8);
  }

  return result;
}

unint64_t sub_25BB18D20()
{
  result = qword_27FBB40B0;
  if (!qword_27FBB40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB40B0);
  }

  return result;
}

void *OUTLINED_FUNCTION_51_3(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va1, a23);
  va_start(__srca, a23);
  __src = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v24 = (a1 + 16);

  return memcpy(v24, __srca, 0x55uLL);
}

uint64_t sub_25BB18DB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25BAC4018();
  if (sub_25BB3EE04(v4, a1))
  {
    v5 = sub_25BAC4018();
    if (sub_25BB3EE04(v5, a1))
    {
      v7 = v6;
      v8 = sub_25BAC4018();
      if (sub_25BB3EE04(v8, a1))
      {
        ObjectType = swift_getObjectType();
        v2 = *(v7 + 8);
        (v2)((&v31 + 1), ObjectType, v7);
        if (BYTE1(v31) == 10)
        {
          v10 = OUTLINED_FUNCTION_1_11();
          v16 = sub_25BB18FC8(v10, v11, v12, v13, v14, v15);
          if (v1)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_13:
            swift_unknownObjectRelease();
            return v2;
          }
        }

        else
        {
          (v2)(&v31, ObjectType, v7);
          sub_25BC8FACC();
          v30 = v20;
          v21 = OUTLINED_FUNCTION_1_11();
          v16 = sub_25BB19720(v21, v22, v23, v24, v25, v26, v27, v27, v30);
          if (v1)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_13;
          }
        }

        v28 = v16;
        v29 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_25BCBAE50;
        *(v2 + 32) = v28;
        *(v2 + 40) = v29;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v2;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_25BB0E2EC();
  swift_allocError();
  *v18 = xmmword_25BCBCA70;
  *(v18 + 16) = 0x4000;
  swift_willThrow();
  return v2;
}

void (*sub_25BB18FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(char *, uint64_t)
{
  v7 = v6;
  v74 = a2;
  v75 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v12 - 8);
  v68 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v56 - v15;
  v67 = sub_25BCB54EC();
  v66 = *(v67 - 1);
  MEMORY[0x28223BE20](v67);
  v73 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v56 - v18;
  MEMORY[0x28223BE20](v19);
  v70 = &v56 - v20;
  MEMORY[0x28223BE20](v21);
  v69 = &v56 - v22;
  ObjectType = swift_getObjectType();
  v24 = *(a6 + 16);
  v24(v77, ObjectType, a6);
  v25 = *(v77[0] + 16);

  v71 = a6;
  v58 = v24;
  v57 = ObjectType;
  if (v25 < 2)
  {
    v61 = 1;
    v26 = a5;
  }

  else
  {
    v65 = v6;
    v24(&v85, ObjectType, a6);
    if (!*(v85 + 16))
    {
      memset(v77, 0, sizeof(v77));
      v78 = -1;
      v80 = 0;
      v81 = 0;
      v79 = 0;
      v82 = -1;
      v83 = 4;
      sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
    }

    v61 = *(v85 + 32);

    v26 = a5;
    v7 = v65;
  }

  type metadata accessor for NativeTensorStorage(0);
  v77[0] = *(v72 + 80);
  LOBYTE(v85) = *(v72 + 88);
  sub_25BCB617C();
  sub_25BBC0130(v77, &v85, 0, 0);
  v60 = v7;
  v28 = *(v27 + 16);
  if (v28[2])
  {
    sub_25BCB617C();
  }

  else
  {
    v28 = &unk_286D428D8;
  }

  v29 = v69;
  sub_25BBF5A38(v28, 0);

  v30 = swift_getObjectType();
  v31 = *(v74 + 16);
  v59 = v30;
  v31(v77);
  v32 = v77[0];
  if (!*(v77[0] + 16))
  {

    v32 = &unk_286D42900;
  }

  sub_25BBF5A38(v32, 0);

  v33 = swift_getObjectType();
  (*(a4 + 16))(v77, v33, a4);
  v34 = v77[0];
  if (!*(v77[0] + 16))
  {

    v34 = &unk_286D42928;
  }

  v35 = v71;
  v64 = a3;
  v65 = a4;
  sub_25BBF5A38(v34, 0);

  v58(v77, v57, v35);
  v36 = v77[0];
  v37 = *(v77[0] + 16);
  v62 = v26;
  if (!v37)
  {

    v36 = &unk_286D42950;
  }

  v38 = v73;
  v39 = v66;
  v40 = v67;
  sub_25BBF5A38(v36, 0);

  v41 = *(v39 + 16);
  v42 = v63;
  v41(v63, v29, v40);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v40);

  v43 = v38;
  v44 = v40;
  v45 = sub_25BC6728C(v42);
  sub_25BAA6F5C(v42, &qword_27FBB4080, &qword_25BCBC638);
  v46 = v68;
  v47 = v70;
  v41(v68, v70, v44);
  v48 = __swift_storeEnumTagSinglePayload(v46, 0, 1, v44);
  v67 = &v56;
  MEMORY[0x28223BE20](v48);
  v49 = v65;
  *(&v56 - 10) = v64;
  *(&v56 - 9) = v49;
  v50 = v76;
  v51 = v62;
  *(&v56 - 8) = v76;
  *(&v56 - 7) = v51;
  *(&v56 - 6) = v71;
  *(&v56 - 5) = v43;
  *(&v56 - 4) = v61;
  *(&v56 - 3) = v45;
  *(&v56 - 2) = v72;
  v52 = v60;
  sub_25BC675C0(sub_25BB1A884, (&v56 - 12), MEMORY[0x277D84F78] + 8, &v84);
  if (v52)
  {

    sub_25BAA6F5C(v46, &qword_27FBB4080, &qword_25BCBC638);
    v53 = *(v39 + 8);
    v53(v47, v44);
    v53(v69, v44);
    v53(v73, v44);
    v53(v50, v44);
  }

  else
  {
    sub_25BAA6F5C(v46, &qword_27FBB4080, &qword_25BCBC638);
    v53 = sub_25BB1A750();

    v54 = *(v39 + 8);
    v54(v47, v44);
    v54(v69, v44);
    v54(v73, v44);
    v54(v50, v44);
  }

  return v53;
}

uint64_t sub_25BB19720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for NativeTensorStorage(0);
  v33 = *(v9 + 80);
  v32 = *(v9 + 88);
  sub_25BCB617C();
  sub_25BBC0130(&v33, &v32, 0, 0);
  v15 = v14;
  ObjectType = swift_getObjectType();
  v22 = a8;
  v23 = a9;
  v24 = a5;
  v25 = a6;
  v26 = a1;
  v27 = a2;
  v28 = v15;
  v29 = v9;
  v30 = a3;
  v31 = a4;
  (*(a4 + 56))(sub_25BB1A9C8, v21, MEMORY[0x277D84F78] + 8, ObjectType, a4);
  return v15;
}

uint64_t sub_25BB19840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v23 = a11;
  v24 = a12;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a1;
  v29 = a2;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = a3;
  v34 = a4;
  return (*(a4 + 56))(sub_25BB1A9F8, v22, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BB19924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  v24 = a12;
  v25 = a13;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a1;
  v30 = a2;
  v31 = a8;
  v32 = a3;
  v33 = a4;
  v34 = a9;
  v35 = a10;
  v36 = a11;
  return (*(a4 + 56))(sub_25BB1AA28, v23, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BB19A80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v38 = a5;
  v41 = result;
  v37 = a3;
  if (!a3)
  {
    goto LABEL_9;
  }

  v17 = *(*(a17 - 8) + 72);
  if (!v17)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a4 - a3 == 0x8000000000000000 && v17 == -1)
  {
    __break(1u);
LABEL_9:
    v37 = 0;
  }

  if (!a5)
  {
LABEL_18:
    v38 = 0;
    goto LABEL_19;
  }

  v19 = *(*(a17 - 8) + 72);
  if (!v19)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a6 - a5 == 0x8000000000000000 && v19 == -1)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  if (!result)
  {
LABEL_27:
    v41 = 0;
    goto LABEL_28;
  }

  v21 = *(*(a17 - 8) + 72);
  if (!v21)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  if (a2 - result == 0x8000000000000000 && v21 == -1)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  v23 = *(a9 + 80);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (v23 + 32);
    v26 = 1;
    while (1)
    {
      v27 = *v25++;
      v28 = v26 * v27;
      if ((v26 * v27) >> 64 != (v26 * v27) >> 63)
      {
        break;
      }

      v26 = v28;
      if (!--v24)
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          if (v28)
          {
            goto LABEL_36;
          }

          return result;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v26 = 1;
LABEL_36:
  ObjectType = swift_getObjectType();
  v29 = 0;
  v30 = *(a11 + 16);
  do
  {
    v30(&v42, ObjectType, a11);
    v31 = sub_25BC6FB74(v29);

    if (*(a7 + v31) == 1)
    {
      v42 = *(a12 + 16);
      sub_25BCB617C();
      v32 = sub_25BC6FB74(v29);

      v33 = swift_getObjectType();
      (*(a14 + 16))(&v42, v33);
      v34 = sub_25BC6FB74(v29);

      v35 = v37;
    }

    else
    {
      v42 = *(a12 + 16);
      sub_25BCB617C();
      v32 = sub_25BC6FB74(v29);

      v36 = swift_getObjectType();
      (*(a16 + 16))(&v42, v36);
      v34 = sub_25BC6FB74(v29);

      v35 = v38;
    }

    ++v29;
    result = (*(*(a17 - 8) + 24))(v41 + *(*(a17 - 8) + 72) * v32, v35 + *(*(a17 - 8) + 72) * v34, a17);
  }

  while (v26 != v29);
  return result;
}

uint64_t sub_25BB19DA4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v21 = a7;
  v22 = a8;
  v20 = a6;
  v23 = a9;
  v24 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v19 - v15;
  swift_getObjectType();
  v17 = sub_25BCB54EC();
  (*(*(v17 - 8) + 16))(v16, a4, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v26 = a5;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = a1;
  v31 = a10;
  v32 = a11;
  sub_25BC675C0(sub_25BB1A934, v25, MEMORY[0x277D84F78] + 8, v23);
  return sub_25BAA6F5C(v16, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BB19F28@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = a8;
  v21 = a9;
  v22 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v19 - v15;
  swift_getObjectType();
  v17 = sub_25BCB54EC();
  (*(*(v17 - 8) + 16))(v16, a4, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v24 = a5;
  v25 = a6;
  v26 = a1;
  v27 = a7;
  v28 = v20;
  sub_25BC675C0(sub_25BB1A95C, v23, MEMORY[0x277D84F78] + 8, v21);
  return sub_25BAA6F5C(v16, &qword_27FBB4080, &qword_25BCBC638);
}

void sub_25BB1A0A4(void *a1, size_t a2, const size_t *a3, void *a4, uint64_t a5)
{
  v53 = a2;
  v85 = *MEMORY[0x277D85DE8];
  v9 = sub_25BCB54EC();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v47 - v12;
  MEMORY[0x28223BE20](v13);
  v50 = &v47 - v14;
  v15 = sub_25BCB530C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v78, (a5 + 16), sizeof(v78));
  memcpy(v77, (a5 + 16), sizeof(v77));
  sub_25BCB6E0C();
  LODWORD(v59) = sub_25BCB6D6C();
  v20 = v19;
  v57 = v22;
  v58 = v21;
  v56 = a3;
  memcpy(v69, a3, sizeof(v69));
  v55 = a4;
  memcpy(&v81[4], a4, 0xB0uLL);
  v54 = a1;
  memcpy(&v80[4], a1, 0xB0uLL);
  memcpy(&v79[4], v78, 0xB0uLL);
  v70 = 0;
  memcpy(v71, v81, sizeof(v71));
  v72 = 0;
  memcpy(v73, v80, sizeof(v73));
  v74 = 0;
  memcpy(v75, v79, sizeof(v75));
  v76 = 0;
  (*(v16 + 104))(v18, *MEMORY[0x277D82F78], v15);
  sub_25BCB52FC();
  (*(v16 + 8))(v18, v15);
  v64 = 31;
  v65 = v69;
  v66 = v82;
  v67 = v83;
  v68 = v84;
  v60 = v59;
  v61 = v20;
  v62 = v58;
  v63 = v57;
  v23 = MEMORY[0x25F8784A0](&v64, &v60);
  if (v23)
  {
    v24 = v56[17];
    if (v24 && (v25 = v55[17]) != 0 && (v26 = v54[17]) != 0 && v77[17])
    {
      v27 = v23;
      v59 = v77[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40D0, &unk_25BCBCAB0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_25BCBAE90;
      *(v28 + 32) = v24;
      v57 = (v28 + 32);
      v58 = v28;
      *(v28 + 40) = v25;
      *(v28 + 48) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v29 = swift_allocObject();
      v30 = v50;
      sub_25BCB6D7C();
      v31 = sub_25BCB549C();
      v32 = v52;
      v33 = *(v51 + 8);
      v33(v30, v52);
      *(v29 + 32) = v31;
      v56 = (v29 + 32);
      v34 = v48;
      sub_25BCB6D7C();
      v35 = sub_25BCB549C();
      v33(v34, v32);
      *(v29 + 40) = v35;
      v36 = v49;
      sub_25BCB6D7C();
      v37 = sub_25BCB549C();
      v33(v36, v32);
      *(v29 + 48) = v37;
      sub_25BCB6D7C();
      v38 = sub_25BCB549C();
      v33(v30, v32);
      LODWORD(v38) = BNNSArithmeticFilterApplyBatch(v27, v53, 3uLL, v57, v56, v59, v38);
      swift_setDeallocating();
      swift_deallocClassInstance();

      if (!v38)
      {
        return;
      }

      v39 = sub_25BCB547C();
      sub_25BB1A980(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
      v40 = swift_allocError();
      v42 = v41;
      v43 = MEMORY[0x277D83080];
    }

    else
    {
      v39 = sub_25BCB547C();
      sub_25BB1A980(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
      v40 = swift_allocError();
      v42 = v44;
      v43 = MEMORY[0x277D83090];
    }
  }

  else
  {
    v39 = sub_25BCB547C();
    sub_25BB1A980(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
    v40 = swift_allocError();
    v42 = v45;
    v43 = MEMORY[0x277D83088];
  }

  (*(*(v39 - 8) + 104))(v42, *v43, v39);
  swift_willThrow();
  sub_25BB0E2EC();
  swift_allocError();
  *v46 = 0xD000000000000024;
  *(v46 + 8) = 0x800000025BCD9FF0;
  *(v46 + 16) = 0x2000;
  swift_willThrow();
}

uint64_t sub_25BB1A750()
{
  v1 = sub_25BB1A838();
  sub_25BB1A8BC(__src);
  memcpy(__dst, (v0 + 16), 0xB8uLL);
  memcpy((v0 + 16), __src, 0xB8uLL);
  sub_25BAA6F5C(__dst, &qword_27FBB40B8, &qword_25BCBCAA0);

  return v1;
}