void sub_23BB22E10(uint64_t a1, double a2)
{
  if (!qword_27E1A0DC8)
  {
    type metadata accessor for ProductViewEventConfiguration(255);
    v2 = sub_23BBDBF98();
    if (!v3)
    {
      atomic_store(v2, &qword_27E1A0DC8);
    }
  }
}

uint64_t sub_23BB22E78(uint64_t a1)
{
  v3 = *(a1 + 24);
  v15 = *a1;
  v16 = *(a1 + 8);
  v14 = v16;
  v17 = v3;
  v4 = type metadata accessor for PromotionalIconLoadingView(255, &v15);
  OUTLINED_FUNCTION_10_20(v4);
  v5 = OUTLINED_FUNCTION_31_6();
  type metadata accessor for StaticProductView(v5, v1, v2, v6);
  v15 = v1;
  *&v16 = v14;
  *(&v16 + 1) = v2;
  v17 = v3;
  type metadata accessor for DynamicProductView(255, &v15);
  OUTLINED_FUNCTION_31_6();
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0CE8, &qword_23BBFD078);
  OUTLINED_FUNCTION_4();
  sub_23BBDACE8();
  v7 = sub_23BBDBE28();
  OUTLINED_FUNCTION_6_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_33();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BB22120();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  WitnessTable = swift_getWitnessTable();
  v15 = v7;
  *&v16 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_31_6();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D38, &qword_23BBFD0B0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  v15 = v7;
  *&v16 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_36();
  sub_23BB223BC(v9, v10, MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v11, &qword_27E1A0D38, &qword_23BBFD0B0, v12);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_35_0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_23BB2313C()
{
  result = qword_27E1A0DD0[0];
  if (!qword_27E1A0DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A0DD0);
  }

  return result;
}

_BYTE *sub_23BB23198(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB23264);
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

uint64_t sub_23BB2329C(uint64_t a1)
{
  result = sub_23BA3A488();
  if (v2 <= 0x3F)
  {
    result = sub_23BBDCDB8();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ProductViewStyleConfiguration(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23BB23328()
{
  result = qword_27E1A0E58;
  if (!qword_27E1A0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0E58);
  }

  return result;
}

unint64_t sub_23BB233C4()
{
  result = qword_27E1A0E70;
  if (!qword_27E1A0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0E70);
  }

  return result;
}

uint64_t sub_23BB23418(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB23498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double OUTLINED_FUNCTION_4_33(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_20(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_12_26(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_10(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t ProductIconPhase.promotionalIcon.getter()
{
  if (*v0 >> 62)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t ProductIconPhase.error.getter()
{
  v1 = *v0;
  if (*v0 >> 62 != 1)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

unint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI16ProductIconPhaseO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_23BB2370C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_23BB23760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_23BB237C0(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_23BB23808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_23BB238B4@<X0>(uint64_t a1@<X8>)
{
  sub_23BA160B0(v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0EB8, &qword_23BBFD758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0EC0, &qword_23BBFD760);
  if (swift_dynamicCast())
  {
    sub_23B98473C(&v4, &v6);
  }

  else
  {
    v7 = MEMORY[0x277CE14A8];
    v8 = sub_23BB23FFC();
  }

  return sub_23B98473C(&v6, a1);
}

uint64_t sub_23BB23960@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_23BBDA318();
}

void sub_23BB23A14()
{
  v1 = OUTLINED_FUNCTION_2_41();
  __swift_project_boxed_opaque_existential_1(v1, *(v0 + 24));
  OUTLINED_FUNCTION_1_51();
  v2 = sub_23BBDBEC8();
  OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13, v14);
}

double sub_23BB23A70()
{
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_0_48();
  sub_23BBDBEB8();
  return result;
}

void sub_23BB23ABC()
{
  v1 = OUTLINED_FUNCTION_2_41();
  __swift_project_boxed_opaque_existential_1(v1, *(v0 + 24));
  OUTLINED_FUNCTION_1_51();
  v2 = sub_23BBDBEC8();
  OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13, v14);
}

double sub_23BB23B18()
{
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_0_48();
  sub_23BBDBEB8();
  return result;
}

double sub_23BB23B68@<D0>(uint64_t a1@<X8>)
{
  sub_23BB23ABC();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t (*sub_23BB23BC4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B988098;
}

uint64_t sub_23BB23C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB241A0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BB23C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB241A0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BB23D00(uint64_t a1)
{
  v2 = sub_23BB241A0();

  return MEMORY[0x282133738](a1, v2);
}

double sub_23BB23D4C@<D0>(uint64_t a1@<X8>)
{
  sub_23BB23A14();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t (*sub_23BB23DC4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97DA84;
}

uint64_t sub_23BB23E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B984600();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BB23E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B984600();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BB23F00(uint64_t a1)
{
  v2 = sub_23B984600();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_23BB23F50()
{
  result = qword_27E1A0EA8;
  if (!qword_27E1A0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EA8);
  }

  return result;
}

unint64_t sub_23BB23FA8()
{
  result = qword_27E1A0EB0;
  if (!qword_27E1A0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EB0);
  }

  return result;
}

unint64_t sub_23BB23FFC()
{
  result = qword_27E1A0EC8;
  if (!qword_27E1A0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EC8);
  }

  return result;
}

uint64_t sub_23BB24098(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23BB240F0()
{
  result = qword_27E1A0EE0;
  if (!qword_27E1A0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EE0);
  }

  return result;
}

unint64_t sub_23BB24148()
{
  result = qword_27E1A0EE8;
  if (!qword_27E1A0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EE8);
  }

  return result;
}

unint64_t sub_23BB241A0()
{
  result = qword_27E1A0EF0;
  if (!qword_27E1A0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EF0);
  }

  return result;
}

uint64_t sub_23BB242AC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_9:
    v9 = a1 + v12;
    goto LABEL_10;
  }

  sub_23BBDCB58();
  OUTLINED_FUNCTION_10_2();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_9;
  }

  sub_23BBDCC88();
  OUTLINED_FUNCTION_10_2();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[7];
    goto LABEL_9;
  }

  v18 = *(a1 + a3[9] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23BB2443C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_23BBDCB58();
      OUTLINED_FUNCTION_10_2();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_23BBDCC88();
        OUTLINED_FUNCTION_10_2();
        if (*(v18 + 84) != a3)
        {
          *(a1 + a4[9] + 8) = (a2 - 1);
          return;
        }

        v10 = v17;
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent(uint64_t a1)
{
  result = qword_27E1A0EF8;
  if (!qword_27E1A0EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BB24600(uint64_t a1)
{
  sub_23B9C68B0(319);
  if (v1 <= 0x3F)
  {
    sub_23BBDCDB8();
    if (v2 <= 0x3F)
    {
      sub_23BBDCB58();
      if (v3 <= 0x3F)
      {
        sub_23BBDCC88();
        if (v4 <= 0x3F)
        {
          sub_23BA47694();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BB246F0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F08, &qword_23BBFD980);
  OUTLINED_FUNCTION_7();
  v43 = v3;
  v44 = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - v5;
  v6 = sub_23BBDA308();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F10, &qword_23BBFD988);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F18, &qword_23BBFD990);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  *&v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F20, &qword_23BBFD998);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F28, &qword_23BBFD9A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  v25 = v1;
  sub_23B9B70F0();
  v26 = sub_23BBDA2E8();
  (*(v8 + 8))(v11, v6);
  if (v26)
  {
    v27 = sub_23BBDAB58();
  }

  else
  {
    v27 = sub_23BBDAB48();
  }

  *v14 = v27;
  *(v14 + 1) = 0x4037000000000000;
  v14[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F30, &qword_23BBFD9A8);
  sub_23BB24BE8(v25, &v14[*(v28 + 44)]);
  sub_23BBDC2F8();
  sub_23BBDA488();
  sub_23B989918(v14, v18, &qword_27E1A0F10, &qword_23BBFD988);
  memcpy(&v18[*(v15 + 36)], __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  sub_23B989918(v18, v21, &qword_27E1A0F18, &qword_23BBFD990);
  v30 = &v21[*(v39 + 36)];
  *v30 = KeyPath;
  *(v30 + 1) = 0;
  v30[16] = 1;
  if (qword_27E1976A0 != -1)
  {
    swift_once();
  }

  v39 = xmmword_27E1BFC60;
  v38 = *&qword_27E1BFC70;
  v31 = sub_23BBDB398();
  sub_23B989918(v21, v24, &qword_27E1A0F20, &qword_23BBFD998);
  v32 = &v24[*(v40 + 36)];
  *v32 = v31;
  *(v32 + 24) = v38;
  *(v32 + 8) = v39;
  v32[40] = 0;
  sub_23BBDC2B8();
  v33 = MEMORY[0x277CE1340];
  v34 = MEMORY[0x277CE1350];
  v35 = v41;
  sub_23BBDAAB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F38, &unk_23BBFD9E0);
  sub_23BB250C8();
  v45 = v34;
  v46 = v33;
  OUTLINED_FUNCTION_1_52();
  swift_getOpaqueTypeConformance2();
  sub_23BB252C4();
  v36 = v44;
  sub_23BBDBC58();
  (*(v43 + 8))(v35, v36);
  return sub_23B979910(v24, &qword_27E1A0F28, &qword_23BBFD9A0);
}

uint64_t sub_23BB24BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F78, &qword_23BBFD9F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v9 = type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent(0);
  v17 = (a1 + v16[9]);
  v19 = v17[1];
  v50 = *v17;
  v18 = v50;

  v20 = sub_23BBDAA48();
  v21 = (a1 + v16[8]);
  v22 = *v21;
  v23 = v21[5];
  v24 = *(v21 + 48);
  *v15 = v18;
  *(v15 + 1) = v19;
  *(v15 + 2) = v20;
  *(v15 + 3) = v25;
  v15[32] = v26 & 1;
  *(v15 + 5) = v27;
  *(v15 + 6) = v22;
  v49 = *(v21 + 1);
  *(v15 + 56) = v49;
  *(v15 + 72) = *(v21 + 3);
  *(v15 + 11) = v23;
  v15[96] = v24;
  v28 = v10[9];
  *&v15[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  v29 = &v15[v10[10]];
  v52 = 0;
  v53 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D188, qword_23BBF19D8);
  sub_23BBDBF58();
  v30 = v55;
  v31 = v56;
  *v29 = v54;
  v29[8] = v30;
  *(v29 + 2) = v31;
  v32 = &v15[v10[11]];
  v52 = 0;
  v53 = 1;
  sub_23BBDBF58();
  v33 = v55;
  v34 = v56;
  *v32 = v54;
  v32[8] = v33;
  *(v32 + 2) = v34;
  v35 = v16[5];
  v36 = type metadata accessor for SubscriptionOfferViewNoCodeOfferCard(0);
  v37 = v36[5];
  v38 = sub_23BBDCDB8();
  (*(*(v38 - 8) + 16))(&v8[v37], a1 + v35, v38);
  v39 = v16[6];
  v40 = v36[6];
  v41 = sub_23BBDCB58();
  (*(*(v41 - 8) + 16))(&v8[v40], a1 + v39, v41);
  v42 = v16[7];
  v43 = v36[7];
  v44 = sub_23BBDCC88();
  (*(*(v44 - 8) + 16))(&v8[v43], a1 + v42, v44);
  *v8 = v50;
  *(v8 + 1) = v19;
  sub_23BA5D09C(v15, v12);
  sub_23B989ECC(v8, v5, &qword_27E1A0F78, &qword_23BBFD9F8);
  v45 = v51;
  sub_23BA5D09C(v12, v51);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F80, &qword_23BBFDA30);
  sub_23B989ECC(v5, v45 + *(v46 + 48), &qword_27E1A0F78, &qword_23BBFD9F8);
  v47 = v45 + *(v46 + 64);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_23B979910(v8, &qword_27E1A0F78, &qword_23BBFD9F8);
  sub_23BB25384(v15);
  sub_23B979910(v5, &qword_27E1A0F78, &qword_23BBFD9F8);
  return sub_23BB25384(v12);
}

uint64_t sub_23BB25000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDAEF8();
  sub_23BBDBD08();
  v5 = sub_23BBDBD58();

  sub_23BBDBD08();
  v6 = sub_23BBDBD58();

  sub_23B989ECC(a1, a2, &qword_27E1A0F28, &qword_23BBFD9A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F38, &unk_23BBFD9E0);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = v5;
  *(v8 + 16) = v6;
  return result;
}

unint64_t sub_23BB250C8()
{
  result = qword_27E1A0F40;
  if (!qword_27E1A0F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F28, &qword_23BBFD9A0);
    sub_23BB25154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0F40);
  }

  return result;
}

unint64_t sub_23BB25154()
{
  result = qword_27E1A0F48;
  if (!qword_27E1A0F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F20, &qword_23BBFD998);
    sub_23BB2520C();
    sub_23B97B518(&qword_27E19CF68, &qword_27E19CF70, &qword_23BBFFDF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0F48);
  }

  return result;
}

unint64_t sub_23BB2520C()
{
  result = qword_27E1A0F50;
  if (!qword_27E1A0F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F18, &qword_23BBFD990);
    sub_23B97B518(&qword_27E1A0F58, &qword_27E1A0F10, &qword_23BBFD988, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0F50);
  }

  return result;
}

unint64_t sub_23BB252C4()
{
  result = qword_27E1A0F60;
  if (!qword_27E1A0F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F38, &unk_23BBFD9E0);
    sub_23BB250C8();
    sub_23B97B518(&qword_27E1A0F68, &qword_27E1A0F70, &qword_23BBFD9F0, MEMORY[0x277CE07B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0F60);
  }

  return result;
}

uint64_t sub_23BB25384(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB253E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F28, &qword_23BBFD9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F08, &qword_23BBFD980);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F38, &unk_23BBFD9E0);
  sub_23BB250C8();
  OUTLINED_FUNCTION_1_52();
  swift_getOpaqueTypeConformance2();
  sub_23BB252C4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BB254D4@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-v8];
  *a1 = 0;
  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  v10 = type metadata accessor for SubscriptionStorePolicySection(0);
  v11 = type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  sub_23B9A721C(v9, v6, &qword_27E1A05C0, &qword_23BBFB280);
  sub_23BBDBF58();
  sub_23B9846E8(v9, &qword_27E1A05C0, &qword_23BBFB280);
  v16 = 0;
  sub_23BBDBF58();
  OUTLINED_FUNCTION_14_22();
  v16 = 0;
  sub_23BBDBF58();
  OUTLINED_FUNCTION_14_22();
  v12 = *(v10 + 36);
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710, &unk_23BBE81D0);
  swift_storeEnumTagMultiPayload();
  v13 = a1 + *(v10 + 40);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_23BB2569C@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v23[1] = a4;
  v23[2] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10C8, &qword_23BBFDC48);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10D0, &qword_23BBFDC50);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10D8, &qword_23BBFDC58);
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  v24[3] = &type metadata for StoreKitViewsFeature;
  v24[4] = sub_23B9C7F48();
  LOBYTE(v24[0]) = a1;
  v17 = sub_23BBD9888();
  v18 = __swift_destroy_boxed_opaque_existential_1(v24);
  if (v17)
  {
    a2(v18);
    sub_23B9A721C(v16, v13, &qword_27E1A10D8, &qword_23BBFDC58);
    swift_storeEnumTagMultiPayload();
    sub_23B97B518(&qword_27E1A10E0, &qword_27E1A10D8, &qword_23BBFDC58, MEMORY[0x277CE1138]);
    sub_23B97B518(&qword_27E1A10E8, &qword_27E1A10C8, &qword_23BBFDC48, MEMORY[0x277CDD828]);
    sub_23BBDACD8();
    v19 = v16;
    v20 = &qword_27E1A10D8;
    v21 = &qword_23BBFDC58;
  }

  else
  {
    a3(v18);
    sub_23B9A721C(v10, v13, &qword_27E1A10C8, &qword_23BBFDC48);
    swift_storeEnumTagMultiPayload();
    sub_23B97B518(&qword_27E1A10E0, &qword_27E1A10D8, &qword_23BBFDC58, MEMORY[0x277CE1138]);
    sub_23B97B518(&qword_27E1A10E8, &qword_27E1A10C8, &qword_23BBFDC48, MEMORY[0x277CDD828]);
    sub_23BBDACD8();
    v19 = v10;
    v20 = &qword_27E1A10C8;
    v21 = &qword_23BBFDC48;
  }

  return sub_23B9846E8(v19, v20, v21);
}

uint64_t sub_23BB259B8@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  v19 = a3;
  v20 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1060, &qword_23BBFDC08);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1068, &qword_23BBFDC10);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1070, &qword_23BBFDC18);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v21[3] = &type metadata for StoreKitViewsFeature;
  v21[4] = sub_23B9C7F48();
  LOBYTE(v21[0]) = a1;
  v15 = sub_23BBD9888();
  v16 = __swift_destroy_boxed_opaque_existential_1(v21);
  if (v15)
  {
    a2(v16);
    sub_23B9A721C(v14, v11, &qword_27E1A1070, &qword_23BBFDC18);
    swift_storeEnumTagMultiPayload();
    sub_23BB2AD78();
    sub_23B97B518(&qword_27E1A10C0, &qword_27E1A1060, &qword_23BBFDC08, &unk_23BC067C0);
    sub_23BBDACD8();
    return sub_23B9846E8(v14, &qword_27E1A1070, &qword_23BBFDC18);
  }

  else
  {
    v19(v16);
    sub_23B9A721C(v8, v11, &qword_27E1A1060, &qword_23BBFDC08);
    swift_storeEnumTagMultiPayload();
    sub_23BB2AD78();
    sub_23B97B518(&qword_27E1A10C0, &qword_27E1A1060, &qword_23BBFDC08, &unk_23BC067C0);
    sub_23BBDACD8();
    return sub_23B9846E8(v8, &qword_27E1A1060, &qword_23BBFDC08);
  }
}

uint64_t sub_23BB25CAC()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = type metadata accessor for SubscriptionStorePolicyConfiguration(v1);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  sub_23BB2B070(v0, v5 - v4, type metadata accessor for SubscriptionStorePolicyConfiguration);
  return sub_23BBA9CC4(v6);
}

uint64_t sub_23BB25D38()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBDA778();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BB25D60(double a1)
{
  v2 = type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SubscriptionStorePolicySection(0);
  sub_23B9B79E0();
  sub_23BB2B070(v7, v4, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  sub_23BB2B670();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_23BB28F80();
  }

  else
  {
    sub_23BB2B670();
  }

  v9 = (v1 + *(v8 + 28));
  v10 = *v9;
  v11 = *(v9 + 1);
  v13[16] = v10;
  v14 = v11;
  v13[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  return sub_23BBDBF78();
}

uint64_t sub_23BB25F04(double a1)
{
  v2 = type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SubscriptionStorePolicySection(0);
  sub_23B9B79E0();
  sub_23BB2B070(&v8[*(v6 + 28)], v4, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  sub_23BB2B670();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_23BB28F80();
  }

  else
  {
    sub_23BB2B670();
  }

  v10 = (v1 + *(v9 + 32));
  v11 = *v10;
  v12 = *(v10 + 1);
  v14[16] = v11;
  v15 = v12;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  return sub_23BBDBF78();
}

uint64_t sub_23BB260B8@<X0>(uint64_t a1@<X8>)
{
  v161 = a1;
  v160 = type metadata accessor for SubscriptionStorePolicySection(0);
  v157 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = v1;
  v159 = &v144 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_23BBD9728();
  v173 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v3 = &v144 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_23BBD9638();
  v174 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v156 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v171 = &v144 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08, &qword_23BBE8F80);
  MEMORY[0x28223BE20](v7 - 8);
  v153 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v144 - v10;
  MEMORY[0x28223BE20](v11);
  v168 = &v144 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v144 - v14;
  v16 = sub_23BBD9848();
  v152 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v145 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = &v144 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v144 - v21;
  v23 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23BBD96B8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v165 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v163 = &v144 - v30;
  MEMORY[0x28223BE20](v31);
  v164 = &v144 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v144 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = (&v144 - v37);
  v39 = sub_23BBD9618();
  MEMORY[0x28223BE20](v39 - 8);
  v151 = &v144 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  sub_23BBDCFD8();
  sub_23BBD9838();
  v150 = v25;
  v170 = v22;
  v42 = v16;
  sub_23BB73D2C();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  if (qword_27E197800 != -1)
  {
    swift_once();
  }

  v43 = v166;
  v44 = __swift_project_value_buffer(v166, qword_27E1A0F88);
  v45 = *(v173 + 16);
  v173 += 16;
  v148 = v45;
  v45(v3, v44, v43);
  v154 = v3;
  sub_23BB27118(v3);
  v172 = v27;
  v46 = *(v27 + 16);
  v149 = v38;
  v47 = v26;
  v48 = v46;
  v46(v35, v38, v26);
  v169 = v15;
  v49 = v15;
  v50 = v168;
  sub_23B9A721C(v49, v168, qword_27E199D08, &qword_23BBE8F80);
  if (__swift_getEnumTagSinglePayload(v50, 1, v42) == 1)
  {
    sub_23B9846E8(v50, qword_27E199D08, &qword_23BBE8F80);
    v51 = v170;
  }

  else
  {
    v52 = v152;
    v53 = v147;
    (*(v152 + 32))(v147, v50, v42);
    v51 = v170;
    (*(v52 + 16))(v170, v53, v42);
    sub_23BBD96A8();
    (*(v52 + 8))(v53, v42);
  }

  v54 = v47;
  v146 = v48;
  v48(v164, v35, v47);
  sub_23BBD9608();
  v55 = v171;
  sub_23BBD95F8();
  v57 = v172 + 8;
  v56 = *(v172 + 8);
  v56(v35, v54);
  v58 = *(v174 + 8);
  v174 += 8;
  v147 = v58;
  (v58)(v55, v167);
  sub_23B9846E8(v169, qword_27E199D08, &qword_23BBE8F80);
  v59 = v149;
  v172 = v57;
  v149 = v56;
  v56(v59, v54);
  v60 = sub_23BBDB658();
  v62 = v61;
  v64 = v63;
  LODWORD(v175) = sub_23BBDAEF8();
  v65 = sub_23BBDB5D8();
  v169 = v66;
  v170 = v65;
  LODWORD(v168) = v67;
  v171 = v68;
  sub_23BA51C9C(v60, v62, v64 & 1);

  sub_23BBDCFD8();
  sub_23BBD9838();
  v69 = v163;
  sub_23BB73D2C();
  v70 = v155;
  __swift_storeEnumTagSinglePayload(v155, 1, 1, v42);
  v71 = v42;
  if (qword_27E197808 != -1)
  {
    swift_once();
  }

  v72 = v166;
  v73 = __swift_project_value_buffer(v166, qword_27E1A0FA0);
  v74 = v154;
  v148(v154, v73, v72);
  v75 = v156;
  sub_23BB27118(v74);
  v76 = v165;
  v77 = v146;
  v146(v165, v69, v54);
  v78 = v153;
  sub_23B9A721C(v70, v153, qword_27E199D08, &qword_23BBE8F80);
  if (__swift_getEnumTagSinglePayload(v78, 1, v71) == 1)
  {
    sub_23B9846E8(v78, qword_27E199D08, &qword_23BBE8F80);
  }

  else
  {
    v79 = v152;
    v80 = v145;
    (*(v152 + 32))(v145, v78, v71);
    (*(v79 + 16))(v51, v80, v71);
    sub_23BBD96A8();
    v81 = v80;
    v69 = v163;
    (*(v79 + 8))(v81, v71);
    v76 = v165;
  }

  v77(v164, v76, v54);
  sub_23BBD9608();
  sub_23BBD95F8();
  v82 = v149;
  v149(v76, v54);
  (v147)(v75, v167);
  sub_23B9846E8(v70, qword_27E199D08, &qword_23BBE8F80);
  v82(v69, v54);
  v83 = sub_23BBDB658();
  v85 = v84;
  v87 = v86;
  LODWORD(v175) = sub_23BBDAEF8();
  v88 = sub_23BBDB5D8();
  v174 = v89;
  LODWORD(v173) = v90;
  v92 = v91;
  sub_23BA51C9C(v83, v85, v87 & 1);

  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v93 = qword_27E1BF840;
  v94 = sub_23BBDB648();
  v96 = v95;
  v98 = v97;
  LODWORD(v175) = sub_23BBDAF28();
  v166 = sub_23BBDB5D8();
  v165 = v99;
  LODWORD(v172) = v100;
  v167 = v101;
  sub_23BA51C9C(v94, v96, v98 & 1);

  v102 = sub_23BBDB5F8();
  v104 = v103;
  v106 = v105;
  v107 = sub_23BBDB5F8();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  sub_23BA51C9C(v102, v104, v106 & 1);

  KeyPath = swift_getKeyPath();
  v164 = v92;
  v115 = KeyPath;
  v116 = swift_getKeyPath();
  v163 = v88;
  v117 = v162;
  v118 = v159;
  sub_23BB2B070(v162, v159, type metadata accessor for SubscriptionStorePolicySection);
  v119 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v120 = swift_allocObject();
  sub_23BB2B0D0(v118, v120 + v119);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1098, &qword_23BBFDC28);
  v122 = v161;
  v123 = (v161 + *(v121 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10B8, &qword_23BBFDC40);
  sub_23BBD9F98();
  *v123 = v116;
  *v122 = v107;
  *(v122 + 8) = v109;
  *(v122 + 16) = v111 & 1;
  *(v122 + 24) = v113;
  *(v122 + 32) = v115;
  *(v122 + 40) = 1;
  v124 = v160;
  v125 = v117 + *(v160 + 28);
  v126 = *v125;
  v127 = *(v125 + 8);
  v178 = v126;
  v179 = v127;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF88();
  v128 = v175;
  v129 = v176;
  v130 = v177;
  v158 = *(v124 + 24);
  v131 = v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1088, &qword_23BBFDC20) + 36);
  v132 = type metadata accessor for PolicyDestinationModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0, &qword_23BBFDAC8);
  sub_23BBDBF88();
  *v131 = v128;
  *(v131 + 8) = v129;
  *(v131 + 16) = v130;
  *(v131 + v132[6]) = 0;
  v133 = v132[7];
  *(v131 + v133) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710, &unk_23BBE81D0);
  swift_storeEnumTagMultiPayload();
  v134 = v131 + v132[8];
  *v134 = swift_getKeyPath();
  *(v134 + 8) = 0;
  v135 = v117 + *(v124 + 32);
  v136 = *v135;
  v137 = *(v135 + 8);
  v178 = v136;
  v179 = v137;
  sub_23BBDBF88();
  v139 = v175;
  v138 = v176;
  LOBYTE(v128) = v177;
  v140 = v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1070, &qword_23BBFDC18) + 36);
  sub_23BBDBF88();
  sub_23BA51C9C(v166, v165, v172 & 1);

  sub_23BA51C9C(v163, v174, v173 & 1);

  sub_23BA51C9C(v170, v169, v168 & 1);

  *v140 = v139;
  *(v140 + 8) = v138;
  *(v140 + 16) = v128;
  *(v140 + v132[6]) = 1;
  v141 = v132[7];
  *(v140 + v141) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v142 = v140 + v132[8];
  result = swift_getKeyPath();
  *v142 = result;
  *(v142 + 8) = 0;
  return result;
}

uint64_t sub_23BB27118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_23BBD9628();
  v8 = sub_23BBD9728();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_23B9A721C(v7, v4, &qword_27E19C308, &qword_23BBEEF90);
  sub_23BB2B9EC();
  sub_23BBD9648();
  (*(v9 + 8))(a1, v8);
  return sub_23B9846E8(v7, &qword_27E19C308, &qword_23BBEEF90);
}

uint64_t sub_23BB27298(uint64_t a1)
{
  v2 = sub_23BBD9FA8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23BBDA888();
}

uint64_t sub_23BB27360(uint64_t a1)
{
  v2 = sub_23BBD9728();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if (qword_27E197800 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E1A0F88);
  sub_23BB2AB04(&qword_27E1A1178, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  if (sub_23BBDCF38())
  {
    v7 = (*(v3 + 8))(v6, v2);
    sub_23BB25D60(v7);
    return sub_23BBD9F88();
  }

  if (qword_27E197808 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E1A0FA0);
  v8 = sub_23BBDCF38();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    sub_23BB25F04(v9);
    return sub_23BBD9F88();
  }

  return sub_23BBD9F78();
}

uint64_t sub_23BB27580@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23BBDA998();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1100, &qword_23BBFDC70);
  return sub_23BB275D0((a1 + *(v3 + 44)));
}

uint64_t sub_23BB275D0@<X0>(void *a1@<X8>)
{
  v126 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1118, &qword_23BBFDC88);
  MEMORY[0x28223BE20](v2);
  v4 = v96 - v3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CD48, &qword_23BBF7650);
  MEMORY[0x28223BE20](v110);
  v111 = v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFF8, &qword_23BBF7658);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v96 - v9;
  v125 = sub_23BBDB638();
  v127 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDA928();
  v115 = *(v12 - 8);
  v116 = v12;
  MEMORY[0x28223BE20](v12);
  v114 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for SubscriptionStorePolicySection(0);
  v107 = *(v108 - 8);
  v14 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1120, &qword_23BBFDC90);
  MEMORY[0x28223BE20](v112);
  v113 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v122 = v96 - v17;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1128, &qword_23BBFDC98);
  v119 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v117 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v118 = v96 - v20;
  MEMORY[0x28223BE20](v21);
  v124 = v96 - v22;
  MEMORY[0x28223BE20](v23);
  v128 = v96 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1130, &qword_23BBFDCA0);
  MEMORY[0x28223BE20](v25);
  v27 = v96 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1070, &qword_23BBFDC18);
  MEMORY[0x28223BE20](v28);
  v30 = v96 - v29;
  if (*v1 == 1)
  {
    sub_23BB260B8(v30);
    sub_23B9A721C(v30, v27, &qword_27E1A1070, &qword_23BBFDC18);
    swift_storeEnumTagMultiPayload();
    sub_23BB2AD78();
    sub_23B97B518(&qword_27E1A1170, &qword_27E1A1118, &qword_23BBFDC88, MEMORY[0x277CE14C0]);
    sub_23BBDACD8();
    return sub_23B9846E8(v30, &qword_27E1A1070, &qword_23BBFDC18);
  }

  else
  {
    v102 = v25;
    v103 = v28;
    v104 = v27;
    v121 = v10;
    v105 = v4;
    v106 = v2;
    v32 = sub_23BBDAA48();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_23BB2B070(v1, v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionStorePolicySection);
    v39 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v99 = *(v107 + 80);
    v40 = swift_allocObject();
    v107 = v39;
    sub_23BB2B0D0(v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
    v129 = v32;
    v130 = v34;
    v97 = v34;
    v131 = v36 & 1;
    v132 = v38;
    v133 = sub_23BB2B134;
    v134 = v40;
    if (qword_27E197648 != -1)
    {
      swift_once();
    }

    v41 = sub_23BB2B14C();

    v42 = v122;
    v98 = v41;
    sub_23BBDBA28();

    v43 = sub_23BBDAEF8();
    v44 = v112;
    *&v42[*(v112 + 36)] = v43;
    v45 = &v1[*(v108 + 40)];
    v46 = *v45;
    LODWORD(v97) = v45[8];
    v47 = v1;
    v101 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v100 = v14;
    v108 = v46;
    if (v97 != 1)
    {

      sub_23BBDD5A8();
      v48 = sub_23BBDB338();
      sub_23BBD9978();

      v49 = v114;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v46, 0);
      (*(v115 + 8))(v49, v116);
    }

    v50 = v123;
    sub_23BBDB628();
    v96[1] = sub_23BB2B1A0();
    v51 = v122;
    sub_23BBDBC98();
    v52 = *(v127 + 8);
    v127 += 8;
    v96[0] = v52;
    v52(v50, v125);
    sub_23B9846E8(v51, &qword_27E1A1120, &qword_23BBFDC90);
    sub_23BBDAA48();
    v53 = v44;
    if (qword_27E197628 != -1)
    {
      swift_once();
    }

    v54 = qword_27E1BF840;
    v55 = sub_23BBDB648();
    v57 = v56;
    v59 = v58;
    v129 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1158, &qword_23BBFDCB8);
    sub_23B97B518(&qword_27E1A1160, &qword_27E1A1158, &qword_23BBFDCB8, MEMORY[0x277CE0848]);
    v60 = sub_23BBDB5D8();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_23BA51C9C(v55, v57, v59 & 1);

    v129 = v60;
    v130 = v62;
    v131 = v64 & 1;
    v132 = v66;
    v67 = v111;
    sub_23BBDB958();
    sub_23BA51C9C(v60, v62, v64 & 1);

    sub_23BA5204C();

    v68 = v121;
    sub_23BBDBA28();

    sub_23B9846E8(v67, &qword_27E19CD48, &qword_23BBF7650);
    v69 = sub_23BBDAA48();
    v71 = v70;
    LOBYTE(v66) = v72;
    v74 = v73;
    v75 = v47;
    v76 = v101;
    sub_23BB2B070(v75, v101, type metadata accessor for SubscriptionStorePolicySection);
    v77 = v107;
    v78 = swift_allocObject();
    sub_23BB2B0D0(v76, v78 + v77);
    v129 = v69;
    v130 = v71;
    v131 = v66 & 1;
    v132 = v74;
    v133 = sub_23BB2B550;
    v134 = v78;

    v79 = v113;
    sub_23BBDBA28();

    *(v79 + *(v53 + 36)) = sub_23BBDAEF8();
    v80 = v109;
    if (!v97)
    {
      v81 = v108;

      sub_23BBDD5A8();
      v82 = sub_23BBDB338();
      sub_23BBD9978();

      v83 = v114;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v81, 0);
      (*(v115 + 8))(v83, v116);
    }

    v84 = v123;
    sub_23BBDB628();
    v85 = v124;
    sub_23BBDBC98();
    (v96[0])(v84, v125);
    sub_23B9846E8(v79, &qword_27E1A1120, &qword_23BBFDC90);
    v86 = v118;
    v87 = v119;
    v88 = *(v119 + 16);
    v89 = v80;
    v88(v118, v128, v80);
    v90 = v68;
    v91 = v120;
    sub_23B9A721C(v90, v120, &qword_27E19EFF8, &qword_23BBF7658);
    v92 = v117;
    v88(v117, v85, v80);
    v93 = v105;
    v88(v105, v86, v80);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1168, &unk_23BBFDCC0);
    sub_23B9A721C(v91, v93 + *(v94 + 48), &qword_27E19EFF8, &qword_23BBF7658);
    v88((v93 + *(v94 + 64)), v92, v89);
    v95 = *(v87 + 8);
    v95(v92, v89);
    sub_23B9846E8(v91, &qword_27E19EFF8, &qword_23BBF7658);
    v95(v86, v89);
    sub_23B9A721C(v93, v104, &qword_27E1A1118, &qword_23BBFDC88);
    swift_storeEnumTagMultiPayload();
    sub_23BB2AD78();
    sub_23B97B518(&qword_27E1A1170, &qword_27E1A1118, &qword_23BBFDC88, MEMORY[0x277CE14C0]);
    sub_23BBDACD8();
    sub_23B9846E8(v93, &qword_27E1A1118, &qword_23BBFDC88);
    v95(v124, v89);
    sub_23B9846E8(v121, &qword_27E19EFF8, &qword_23BBF7658);
    return (v95)(v128, v89);
  }
}

uint64_t sub_23BB284CC@<X0>(_BYTE *a2@<X8>)
{
  *a2 = sub_23BBDB348();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10F0, &qword_23BBFDC60);
  return sub_23BB2851C(&a2[*(v4 + 44)]);
}

uint64_t sub_23BB2851C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10F8, &qword_23BBFDC68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10D8, &qword_23BBFDC58);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  *v13 = sub_23BBDA998();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1100, &qword_23BBFDC70);
  sub_23BB275D0(&v13[*(v14 + 44)]);
  *v7 = sub_23BBDAB48();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1108, &qword_23BBFDC78);
  sub_23BB275D0(&v7[*(v15 + 44)]);
  sub_23B9A721C(v13, v10, &qword_27E1A10D8, &qword_23BBFDC58);
  sub_23B9A721C(v7, v4, &qword_27E1A10F8, &qword_23BBFDC68);
  sub_23B9A721C(v10, a1, &qword_27E1A10D8, &qword_23BBFDC58);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1110, &qword_23BBFDC80);
  sub_23B9A721C(v4, a1 + *(v16 + 48), &qword_27E1A10F8, &qword_23BBFDC68);
  sub_23B9846E8(v7, &qword_27E1A10F8, &qword_23BBFDC68);
  sub_23B9846E8(v13, &qword_27E1A10D8, &qword_23BBFDC58);
  sub_23B9846E8(v4, &qword_27E1A10F8, &qword_23BBFDC68);
  return sub_23B9846E8(v10, &qword_27E1A10D8, &qword_23BBFDC58);
}

uint64_t sub_23BB28758@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v77 = v3;
  v78 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v76 = v5 - v4;
  v6 = sub_23BBDA408();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FF0, &qword_23BBFDB70);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  v16 = (v68 - v15);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FF8, &qword_23BBFDB78);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  v71 = v68 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1000, &qword_23BBFDB80);
  OUTLINED_FUNCTION_7();
  v74 = v20;
  v75 = v19;
  MEMORY[0x28223BE20](v19);
  v72 = v68 - v21;
  v22 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v29 = v28 - v27;
  v30 = *(v1 + 8);
  v70 = v1;
  if (*(v1 + 16) == 1)
  {
    if ((v30 & 1) == 0)
    {
LABEL_3:
      v31 = 1;
      v32 = v79;
      goto LABEL_8;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v33 = sub_23BBDB338();
    v69 = v16;
    v34 = v13;
    v35 = v12;
    v36 = v8;
    v37 = v33;
    sub_23BBD9978();

    v8 = v36;
    v12 = v35;
    v13 = v34;
    v16 = v69;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v30, 0);
    v26 = (*(v24 + 8))(v29, v22);
    if (v80 != 1)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x28223BE20](v26);
  v68[-2] = v70;
  MEMORY[0x28223BE20](v38);
  v68[-2] = v39;
  v40 = v39;
  sub_23BB259B8(1, sub_23BB2A910, sub_23BB2A934, v16);
  v41 = sub_23BBDB538();
  KeyPath = swift_getKeyPath();
  v43 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1010, &qword_23BBFDBC0) + 36));
  *v43 = KeyPath;
  v43[1] = v41;
  v44 = *(v13 + 36);
  v45 = type metadata accessor for SubscriptionStorePolicySection(0);
  v46 = v40;
  sub_23B9B79E0();
  v47 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  __swift_storeEnumTagSinglePayload(v16 + v44, 0, 1, v47);
  sub_23BBDA3F8();
  sub_23BB2A944();
  sub_23BB2AB04(&qword_27E19AE90, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v48 = v71;
  sub_23BBDB728();
  (*(v8 + 8))(v12, v6);
  sub_23B9846E8(v16, &qword_27E1A0FF0, &qword_23BBFDB70);
  v49 = v46;
  OUTLINED_FUNCTION_15_23((v46 + v45[7]));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF88();
  v50 = v80;
  v51 = v81;
  LOBYTE(v46) = v82;
  v68[1] = v45[6];
  v52 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1040, &qword_23BBFDBD0) + 36);
  v53 = type metadata accessor for PolicyDestinationModifier(0);
  v68[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0, &qword_23BBFDAC8);
  sub_23BBDBF88();
  *v52 = v50;
  *(v52 + 8) = v51;
  *(v52 + 16) = v46;
  *(v52 + v53[6]) = 0;
  v54 = v53[7];
  *(v52 + v54) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710, &unk_23BBE81D0);
  swift_storeEnumTagMultiPayload();
  v55 = v52 + v53[8];
  *v55 = swift_getKeyPath();
  *(v55 + 8) = 0;
  OUTLINED_FUNCTION_15_23((v49 + v45[8]));
  sub_23BBDBF88();
  v56 = v80;
  v57 = v81;
  LOBYTE(v46) = v82;
  v58 = v73;
  v59 = v48 + *(v73 + 36);
  sub_23BBDBF88();
  *v59 = v56;
  *(v59 + 8) = v57;
  *(v59 + 16) = v46;
  *(v59 + v53[6]) = 1;
  v60 = v53[7];
  *(v59 + v60) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v61 = v59 + v53[8];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  v62 = v76;
  sub_23BBDB138();
  v63 = sub_23BB2AB74();
  v64 = v72;
  OUTLINED_FUNCTION_27();
  sub_23BBDB968();
  (*(v77 + 8))(v62, v78);
  sub_23B9846E8(v48, &qword_27E1A0FF8, &qword_23BBFDB78);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v80 = v58;
  v81 = v63;
  swift_getOpaqueTypeConformance2();
  v32 = v79;
  v65 = v75;
  sub_23BBDBA28();

  (*(v74 + 8))(v64, v65);
  v31 = 0;
LABEL_8:
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1008, &qword_23BBFDB88);
  return __swift_storeEnumTagSinglePayload(v32, v31, 1, v66);
}

uint64_t sub_23BB28F24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3[6] = a1;
  v3[2] = a1;
  return sub_23BB2569C(0, sub_23BB2B060, sub_23BB2B068, v3, a2);
}

double sub_23BB28F80()
{
  v1 = v0;
  v2 = type metadata accessor for SubscriptionStorePolicySection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05C0, &qword_23BBFB280);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0, &qword_23BBFDAC8);
  sub_23BBDBF68();
  v17 = type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    goto LABEL_6;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23BB2B670();
LABEL_6:
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
    v25 = v4;
    sub_23B9A721C(v13, v10, &qword_27E1A05C0, &qword_23BBFB280);
    sub_23BBDBF78();
    sub_23B9846E8(v13, &qword_27E1A05C0, &qword_23BBFB280);
    v20 = sub_23BBDD368();
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v20);
    sub_23BB2B070(v1, v5, type metadata accessor for SubscriptionStorePolicySection);
    sub_23BBDD308();
    v21 = sub_23BBDD2F8();
    v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    *(v23 + 16) = v21;
    *(v23 + 24) = v24;
    sub_23BB2B0D0(v5, v23 + v22);
    sub_23BB5D2B8();

    return result;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_23BB2B670();
  }

  return result;
}

uint64_t sub_23BB292EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05C0, &qword_23BBFB280);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v5 = sub_23BBDC7F8();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v4[7] = v6;
  v4[8] = sub_23BBDD308();
  v4[9] = sub_23BBDD2F8();
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_23BB29444;

  return MEMORY[0x28212C550](v6);
}

uint64_t sub_23BB29444()
{
  *(*v1 + 88) = v0;

  v3 = sub_23BBDD2D8();
  if (v0)
  {
    v4 = sub_23BB296FC;
  }

  else
  {
    v4 = sub_23BB295A0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23BB295A0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  (*(v2 + 16))(v4, v1, v3);
  type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_15(v4);
  sub_23B9A721C(v4, v5, &qword_27E1A05C0, &qword_23BBFB280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0, &qword_23BBFDAC8);
  sub_23BBDBF78();
  sub_23B9846E8(v4, &qword_27E1A05C0, &qword_23BBFB280);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23BB296FC()
{
  v1 = v0[11];
  v3 = v0[3];
  v2 = v0[4];

  *v2 = v1;
  type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  OUTLINED_FUNCTION_17_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_15(v2);
  sub_23B9A721C(v2, v3, &qword_27E1A05C0, &qword_23BBFB280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0, &qword_23BBFDAC8);
  sub_23BBDBF78();
  sub_23B9846E8(v2, &qword_27E1A05C0, &qword_23BBFB280);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23BB29814@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11B8, &qword_23BBFDDD0);
  MEMORY[0x28223BE20](v51);
  v4 = &v43 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11C0, &qword_23BBFDDD8);
  MEMORY[0x28223BE20](v50);
  v6 = &v43 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11C8, &qword_23BBFDDE0);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11D0, &qword_23BBFDDE8);
  MEMORY[0x28223BE20](v44);
  v46 = &v43 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11D8, &qword_23BBFDDF0);
  MEMORY[0x28223BE20](v45);
  v11 = &v43 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11E0, &qword_23BBFDDF8);
  MEMORY[0x28223BE20](v49);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0, &unk_23BBFDD50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  sub_23B9A721C(v2, &v43 - v18, &qword_27E1A0BC0, &unk_23BBFDD50);
  v20 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_23B9846E8(v19, &qword_27E1A0BC0, &unk_23BBFDD50);
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
LABEL_6:
    sub_23B9846E8(&v56, &qword_27E19FCC8, &qword_23BBFDE00);
    v21 = &v4[*(v51 + 36)];
    sub_23BBDA1D8();
    v22 = sub_23BBDAF28();
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11E8, &qword_23BBFDE08) + 52)] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11F0, &qword_23BBFDE10);
    (*(*(v23 - 8) + 16))(v4, v48, v23);
    sub_23B9A721C(v4, v6, &qword_27E1A11B8, &qword_23BBFDDD0);
    swift_storeEnumTagMultiPayload();
    sub_23BB2BD90();
    sub_23BB2BFE4();
    sub_23BBDACD8();
    return sub_23B9846E8(v4, &qword_27E1A11B8, &qword_23BBFDDD0);
  }

  sub_23B9A721C(&v19[*(v20 + 24)], &v56, &qword_27E19FCC8, &qword_23BBFDE00);
  sub_23BB2B670();
  if (!*(&v57 + 1))
  {
    goto LABEL_6;
  }

  sub_23B98473C(&v56, v59);
  sub_23B9A721C(v2, v16, &qword_27E1A0BC0, &unk_23BBFDD50);
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    sub_23B9846E8(v16, &qword_27E1A0BC0, &unk_23BBFDD50);
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
LABEL_9:
    sub_23B9846E8(&v53, &qword_27E19FCC8, &qword_23BBFDE00);
    v37 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v38 = MEMORY[0x28223BE20](v37);
    (*(v40 + 16))(&v43 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
    v41 = sub_23BBD9DF8();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11F0, &qword_23BBFDE10);
    (*(*(v42 - 8) + 16))(v8, v48, v42);
    *&v8[*(v47 + 36)] = v41;
    sub_23B9A721C(v8, v46, &qword_27E1A11C8, &qword_23BBFDDE0);
    swift_storeEnumTagMultiPayload();
    sub_23BB2BE1C();
    sub_23BB2BF00();
    sub_23BBDACD8();
    sub_23B9846E8(v8, &qword_27E1A11C8, &qword_23BBFDDE0);
    goto LABEL_10;
  }

  sub_23B9A721C(&v16[*(v20 + 28)], &v53, &qword_27E19FCC8, &qword_23BBFDE00);
  sub_23BB2B670();
  if (!*(&v54 + 1))
  {
    goto LABEL_9;
  }

  sub_23B98473C(&v53, &v56);
  v25 = __swift_project_boxed_opaque_existential_1(v59, v60);
  v26 = MEMORY[0x28223BE20](v25);
  (*(v28 + 16))(&v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v29 = sub_23BBD9DF8();
  v30 = __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  v31 = MEMORY[0x28223BE20](v30);
  (*(v33 + 16))(&v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  v34 = sub_23BBD9DF8();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11F0, &qword_23BBFDE10);
  (*(*(v35 - 8) + 16))(v11, v48, v35);
  v36 = &v11[*(v45 + 36)];
  *v36 = v29;
  v36[1] = v34;
  sub_23B9A721C(v11, v46, &qword_27E1A11D8, &qword_23BBFDDF0);
  swift_storeEnumTagMultiPayload();
  sub_23BB2BE1C();
  sub_23BB2BF00();
  sub_23BBDACD8();
  sub_23B9846E8(v11, &qword_27E1A11D8, &qword_23BBFDDF0);
  __swift_destroy_boxed_opaque_existential_1(&v56);
LABEL_10:
  sub_23B9A721C(v13, v6, &qword_27E1A11E0, &qword_23BBFDDF8);
  swift_storeEnumTagMultiPayload();
  sub_23BB2BD90();
  sub_23BB2BFE4();
  sub_23BBDACD8();
  sub_23B9846E8(v13, &qword_27E1A11E0, &qword_23BBFDDF8);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

BOOL sub_23BB2A1BC()
{
  v0 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  sub_23BA17678();
  sub_23BBDA958();
  if (v5)
  {
    return v5 == 1;
  }

  else
  {
    sub_23BB2A448();
    sub_23BBDA958();
    v2 = sub_23BBA9E34(v3);
    sub_23BB2B670();
  }

  return v2;
}

uint64_t sub_23BB2A294()
{
  v0 = sub_23BBD9728();
  __swift_allocate_value_buffer(v0, qword_27E1A0F88);
  __swift_project_value_buffer(v0, qword_27E1A0F88);
  return sub_23BBD96D8();
}

uint64_t sub_23BB2A304()
{
  v0 = sub_23BBD9728();
  __swift_allocate_value_buffer(v0, qword_27E1A0FA0);
  __swift_project_value_buffer(v0, qword_27E1A0FA0);
  return sub_23BBD96D8();
}

uint64_t sub_23BB2A368()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB2A1BC();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BB2A390()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB2A1BC();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BB2A420()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBDA7D8();
  return OUTLINED_FUNCTION_15_1(v0);
}

unint64_t sub_23BB2A448()
{
  result = qword_27E1A0FB8;
  if (!qword_27E1A0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0FB8);
  }

  return result;
}

unint64_t sub_23BB2A49C(uint64_t a1)
{
  result = sub_23B9EE60C();
  if (v2 <= 0x3F)
  {
    result = sub_23BBDC7F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB2A524(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0, &qword_23BBFDAC8);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = a3[6];
LABEL_10:

    return __swift_getEnumTagSinglePayload(v4 + v8, v3, v7);
  }

  if (v3 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05A0, qword_23BBFDAD0);
    v8 = a3[9];
    goto LABEL_10;
  }

  v9 = *(v4 + a3[7] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_23BB2A62C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_19();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0, &qword_23BBFDAC8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[6];
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + a4[7] + 8) = v4;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05A0, qword_23BBFDAD0);
    v10 = a4[9];
  }

  return __swift_storeEnumTagSinglePayload(v5 + v10, v4, v4, v9);
}

uint64_t sub_23BB2A710(uint64_t a1)
{
  sub_23BB2A8A0(319, &qword_27E197E40, MEMORY[0x277CDF468]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_23BB2A83C(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_23BB2A8A0(319, &qword_27E199908, MEMORY[0x277CE10B8]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_23BB2BB94(319, &qword_27E1A05C8, MEMORY[0x277CDF468]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_23BB2A83C(uint64_t a1)
{
  if (!qword_27E1A0FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A05C0, &qword_23BBFB280);
    v1 = sub_23BBDBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1A0FE8);
    }
  }
}

void sub_23BB2A8A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23BB2A944()
{
  result = qword_27E1A1018;
  if (!qword_27E1A1018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0FF0, &qword_23BBFDB70);
    sub_23BB2AA00();
    sub_23BB2AB04(&qword_27E1A1038, type metadata accessor for SubscriptionStorePolicySection.StyleApplierModifier, &unk_23BBFDD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1018);
  }

  return result;
}

unint64_t sub_23BB2AA00()
{
  result = qword_27E1A1020;
  if (!qword_27E1A1020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1010, &qword_23BBFDBC0);
    sub_23B97B518(&qword_27E1A1028, &qword_27E1A1030, &qword_23BBFDBC8, &unk_23BC067C0);
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1020);
  }

  return result;
}

uint64_t sub_23BB2AB04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BB2AB4C()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBDA778();
  return OUTLINED_FUNCTION_15_1(v0);
}

unint64_t sub_23BB2AB74()
{
  result = qword_27E1A1048;
  if (!qword_27E1A1048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0FF8, &qword_23BBFDB78);
    sub_23BB2AC30();
    sub_23BB2AB04(&qword_27E1A1058, type metadata accessor for PolicyDestinationModifier, &unk_23BBFB288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1048);
  }

  return result;
}

unint64_t sub_23BB2AC30()
{
  result = qword_27E1A1050;
  if (!qword_27E1A1050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1040, &qword_23BBFDBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0FF0, &qword_23BBFDB70);
    sub_23BBDA408();
    sub_23BB2A944();
    sub_23BB2AB04(&qword_27E19AE90, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_23BB2AB04(&qword_27E1A1058, type metadata accessor for PolicyDestinationModifier, &unk_23BBFB288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1050);
  }

  return result;
}

unint64_t sub_23BB2AD78()
{
  result = qword_27E1A1078;
  if (!qword_27E1A1078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1070, &qword_23BBFDC18);
    sub_23BB2AE34();
    sub_23BB2AB04(&qword_27E1A1058, type metadata accessor for PolicyDestinationModifier, &unk_23BBFB288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1078);
  }

  return result;
}

unint64_t sub_23BB2AE34()
{
  result = qword_27E1A1080;
  if (!qword_27E1A1080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1088, &qword_23BBFDC20);
    sub_23BB2AEF0();
    sub_23BB2AB04(&qword_27E1A1058, type metadata accessor for PolicyDestinationModifier, &unk_23BBFB288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1080);
  }

  return result;
}

unint64_t sub_23BB2AEF0()
{
  result = qword_27E1A1090;
  if (!qword_27E1A1090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1098, &qword_23BBFDC28);
    sub_23BB2AFA8();
    sub_23B97B518(&qword_27E1A10B0, &qword_27E1A10B8, &qword_23BBFDC40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1090);
  }

  return result;
}

unint64_t sub_23BB2AFA8()
{
  result = qword_27E1A10A0;
  if (!qword_27E1A10A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A10A8, &unk_23BBFDC30);
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8, &qword_23BBE6C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A10A0);
  }

  return result;
}

uint64_t sub_23BB2B070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BB2B0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStorePolicySection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BB2B14C()
{
  result = qword_27E1A1138;
  if (!qword_27E1A1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1138);
  }

  return result;
}

unint64_t sub_23BB2B1A0()
{
  result = qword_27E1A1140;
  if (!qword_27E1A1140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1120, &qword_23BBFDC90);
    sub_23BB2B258();
    sub_23B97B518(&qword_27E19CDC0, &qword_27E19CDC8, &qword_23BBF2BF0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1140);
  }

  return result;
}

unint64_t sub_23BB2B258()
{
  result = qword_27E1A1148;
  if (!qword_27E1A1148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1150, &unk_23BBFDCA8);
    sub_23BB2B14C();
    sub_23BB2AB04(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1148);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  type metadata accessor for SubscriptionStorePolicySection(0);
  OUTLINED_FUNCTION_19_0();
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  if (!OUTLINED_FUNCTION_4_35())
  {
    OUTLINED_FUNCTION_27();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBDC7F8();
      OUTLINED_FUNCTION_12_1();
      (*(v19 + 8))(v2);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0, &qword_23BBFDAC8);

  OUTLINED_FUNCTION_19_21();
  OUTLINED_FUNCTION_19_21();
  v7 = v1 + v6 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710, &unk_23BBE81D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 == 1)
    {
    }

    else if (!v8)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v9 + 8))(v7);
    }

    v11 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v12 = OUTLINED_FUNCTION_16_17(v11);
    if (v12 == 1)
    {
    }

    else if (!v12)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v13 + 8))(v7 + v4);
    }

    v14 = OUTLINED_FUNCTION_13_27(*(v3 + 24));
    if (v15)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    v16 = OUTLINED_FUNCTION_13_27(*(v3 + 28));
    if (v17)
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_18_18();

  return swift_deallocObject();
}

uint64_t sub_23BB2B568()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = type metadata accessor for SubscriptionStorePolicySection(v1);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  return v0(v3);
}

uint64_t sub_23BB2B5F4(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStorePolicySection(0);
  OUTLINED_FUNCTION_13_0(v2);

  return sub_23BB27360(a1);
}

uint64_t sub_23BB2B670()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_23BB2B6C0()
{
  type metadata accessor for SubscriptionStorePolicySection(0);
  OUTLINED_FUNCTION_19_0();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  if (!OUTLINED_FUNCTION_4_35())
  {
    OUTLINED_FUNCTION_27();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBDC7F8();
      OUTLINED_FUNCTION_12_1();
      (*(v19 + 8))(v2);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0, &qword_23BBFDAC8);

  OUTLINED_FUNCTION_19_21();
  OUTLINED_FUNCTION_19_21();
  v7 = v1 + v6 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710, &unk_23BBE81D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 == 1)
    {
    }

    else if (!v8)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v9 + 8))(v7);
    }

    v11 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v12 = OUTLINED_FUNCTION_16_17(v11);
    if (v12 == 1)
    {
    }

    else if (!v12)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v13 + 8))(v7 + v4);
    }

    v14 = OUTLINED_FUNCTION_13_27(*(v3 + 24));
    if (v15)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    v16 = OUTLINED_FUNCTION_13_27(*(v3 + 28));
    if (v17)
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_18_18();

  return swift_deallocObject();
}

uint64_t sub_23BB2B904()
{
  v3 = OUTLINED_FUNCTION_15_8();
  v4 = type metadata accessor for SubscriptionStorePolicySection(v3);
  OUTLINED_FUNCTION_13_0(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B9897C0;

  return sub_23BB292EC(v0, v7, v8, v1 + v6);
}

unint64_t sub_23BB2B9EC()
{
  result = qword_27E1A1180;
  if (!qword_27E1A1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1180);
  }

  return result;
}

uint64_t sub_23BB2BA54()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0, &unk_23BBFDD50);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BB2BAB8()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0, &unk_23BBFDD50);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_23BB2BB0C(uint64_t a1)
{
  sub_23BB2BB94(319, &qword_27E1A1198, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23BB2BB94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SubscriptionStorePolicyConfiguration(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_23BB2BBF8()
{
  result = qword_27E1A11A0;
  if (!qword_27E1A11A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11A8, &qword_23BBFDD78);
    sub_23BB2BC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A11A0);
  }

  return result;
}

unint64_t sub_23BB2BC7C()
{
  result = qword_27E1A11B0;
  if (!qword_27E1A11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1008, &qword_23BBFDB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0FF8, &qword_23BBFDB78);
    sub_23BB2AB74();
    swift_getOpaqueTypeConformance2();
    sub_23BB2AB04(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A11B0);
  }

  return result;
}

unint64_t sub_23BB2BD90()
{
  result = qword_27E1A11F8;
  if (!qword_27E1A11F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11E0, &qword_23BBFDDF8);
    sub_23BB2BE1C();
    sub_23BB2BF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A11F8);
  }

  return result;
}

unint64_t sub_23BB2BE1C()
{
  result = qword_27E1A1200;
  if (!qword_27E1A1200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11D8, &qword_23BBFDDF0);
    sub_23B97B518(&qword_27E1A1208, &qword_27E1A11F0, &qword_23BBFDE10, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A1210, &qword_27E1A1218, &unk_23BBFDE18, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1200);
  }

  return result;
}

unint64_t sub_23BB2BF00()
{
  result = qword_27E1A1220;
  if (!qword_27E1A1220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11C8, &qword_23BBFDDE0);
    sub_23B97B518(&qword_27E1A1208, &qword_27E1A11F0, &qword_23BBFDE10, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198C60, &qword_27E198C68, &qword_23BBE6A20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1220);
  }

  return result;
}

unint64_t sub_23BB2BFE4()
{
  result = qword_27E1A1228;
  if (!qword_27E1A1228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11B8, &qword_23BBFDDD0);
    sub_23B97B518(&qword_27E1A1208, &qword_27E1A11F0, &qword_23BBFDE10, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A1230, &qword_27E1A11E8, &qword_23BBFDE08, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1228);
  }

  return result;
}

unint64_t sub_23BB2C0CC()
{
  result = qword_27E1A1238;
  if (!qword_27E1A1238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1240, &qword_23BBFDE28);
    sub_23BB2BD90();
    sub_23BB2BFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1238);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_35()
{
  sub_23B97B5C0(*(v1 + 8), *(v1 + 16));
  v2 = v1 + *(v0 + 24);
  v3 = type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);

  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

void OUTLINED_FUNCTION_14_22()
{
  v2 = *(v1 - 72);
  *v0 = *(v1 - 80);
  *(v0 + 8) = v2;
}

void OUTLINED_FUNCTION_15_23(char *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *(v1 - 96) = v2;
  *(v1 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_16_17(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_18_18()
{
  v3 = v1 + *(v0 + 40);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_23B97B5C0(v4, v5);
}

double OUTLINED_FUNCTION_19_21()
{

  return result;
}

uint64_t sub_23BB2C264()
{
  sub_23B9DC9E8();
  sub_23BBDA958();
  return v1;
}

uint64_t static SubscriptionOfferViewButtonKind.detailLink.getter@<X0>(uint64_t *a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  return result;
}

uint64_t View.subscriptionOfferViewButtonVisibility(_:for:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a1;
  v9 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1248, &qword_23BBFDE50);
  return MEMORY[0x23EEB43C0](v8, a3, v6, a4);
}

uint64_t sub_23BB2C34C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1248, &qword_23BBFDE50);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  sub_23B97B518(qword_27E1A1250, &qword_27E1A1248, &qword_23BBFDE50, &unk_23BBFDF48);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BB2C3DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 1) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFD)
      {
        return __swift_getEnumTagSinglePayload(&a1[v7 + 1] & ~v7, v6, v4);
      }

      v16 = *a1;
      if (v16 >= 3)
      {
        return v16 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (a1[2] << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_23BB2C56C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFD)
  {
    v9 = 253;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 1) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BB2C7ACLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v8 > 0xFD)
        {
          v21 = &a1[v10 + 1] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else
        {
          *a1 = a2 + 2;
        }
      }

      return;
  }
}

uint64_t _s38SubscriptionOfferViewButtonsVisibilityVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
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

uint64_t _s38SubscriptionOfferViewButtonsVisibilityVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BB2C944);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_23BB2C9C0@<X0>(_WORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_2();
  *a1 = result;
  return result;
}

uint64_t sub_23BB2CA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A12D8, &qword_23BBFDF98);
  v7 = sub_23BBDA358();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  swift_getKeyPath();
  (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v5 + 32))(v14 + v13, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB9B8();

  v16 = sub_23B97B518(&qword_27E1A12E0, &qword_27E1A12D8, &qword_23BBFDF98, MEMORY[0x277CE08A0]);
  v23 = WitnessTable;
  v24 = v16;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v17 = *(v20 + 8);
  v17(v9, v7);
  sub_23B9D2D88();
  return (v17)(v12, v7);
}

uint64_t sub_23BB2CD44@<X0>(_WORD *a1@<X8>)
{
  result = sub_23BB2C264();
  *a1 = result;
  return result;
}

uint64_t sub_23BB2CD98(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v17[-v12];
  v15 = type metadata accessor for SubscriptionOfferViewButtonVisibilityModifier(0, a3, a4, v14);
  (*(v7 + 16))(v9, &a2[*(v15 + 36)], a3);
  sub_23BBDD188();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_23BBDD688();
    if (!v18)
    {
      break;
    }

    v17[7] = *a2;

    swift_setAtWritableKeyPath();
  }

  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_23BB2CFAC@<X0>(_WORD *a1@<X8>)
{
  result = sub_23BB2C264();
  *a1 = result;
  return result;
}

uint64_t sub_23BB2CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for SubscriptionOfferViewButtonVisibilityModifier(0, v5, *(v4 + 24), a4);
  (*(*(v5 - 8) + 8))(v4 + *(v6 + 36) + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_23BB2D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SubscriptionOfferViewButtonVisibilityModifier(0, v6, v7, a4) - 8);
  v9 = (v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return sub_23BB2CD98(a1, v9, v6, v7);
}

uint64_t sub_23BB2D154(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionOfferViewButtonVisibilityModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A12D8, &qword_23BBFDF98);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1A12E0, &qword_27E1A12D8, &qword_23BBFDF98, MEMORY[0x277CE08A0]);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

id sub_23BB2D238()
{
  v1 = sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  sub_23BAE0E08(0, &qword_27E1A1308, 0x277CDB700);
  v8 = OBJC_IVAR____TtC17_StoreKit_SwiftUI20NavigationController_url;
  swift_beginAccess();
  (*(v3 + 16))(v7, v0 + v8, v1);
  return sub_23BB2D330(v7);
}

id sub_23BB2D330(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23BBD96E8();
  v4 = [v2 initWithURL_];

  v5 = sub_23BBD9728();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_23BB2D3CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = *(v6 + 16);
  v11(&v2[OBJC_IVAR____TtC17_StoreKit_SwiftUI20NavigationController_url], a1, v4);
  sub_23BAE0E08(0, &qword_27E1A1308, 0x277CDB700);
  v11(v10, a1, v4);
  v12 = sub_23BB2D330(v10);
  v15.receiver = v2;
  v15.super_class = type metadata accessor for NavigationController(0);
  v13 = objc_msgSendSuper2(&v15, sel_initWithRootViewController_, v12);

  [v13 setNavigationBarHidden:1 animated:0];
  (*(v6 + 8))(a1, v4);
  return v13;
}

void sub_23BB2D5A8(uint64_t a1)
{
  v3 = sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7, a1, v3);
  v10 = OBJC_IVAR____TtC17_StoreKit_SwiftUI20NavigationController_url;
  swift_beginAccess();
  (*(v5 + 40))(&v1[v10], v9, v3);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A12F8, &qword_23BBFE088);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23BBFE040;
  *(v11 + 32) = sub_23BB2D238();
  sub_23BAE0E08(0, &qword_27E1A1300, 0x277D75D28);
  v12 = sub_23BBDD238();

  [v1 setViewControllers:v12 animated:1];
}

id sub_23BB2D804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BB2D8D0(uint64_t a1)
{
  result = sub_23BBD9728();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB2D974(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBD9728();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BB2D9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBD9728();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_23BB2DA3C(uint64_t a1)
{
  result = sub_23BBD9728();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_23BB2DAF0()
{
  sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v4 = v3 - v2;
  (*(v5 + 16))(v3 - v2, v0);
  v6 = objc_allocWithZone(type metadata accessor for NavigationController(0));
  return sub_23BB2D3CC(v4);
}

void sub_23BB2DBA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC17_StoreKit_SwiftUI20NavigationController_url;
  swift_beginAccess();
  (*(v6 + 16))(v10, a1 + v11, v4);
  sub_23BB2DEC4(&qword_27E1A1178, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  LOBYTE(v11) = sub_23BBDCF38();
  (*(v6 + 8))(v10, v4);
  if ((v11 & 1) == 0)
  {
    sub_23BB2D5A8(v2);
  }
}

uint64_t sub_23BB2DD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB2DEC4(qword_27E1A1320, type metadata accessor for StoreKitSafariView, &unk_23BBFE0A4);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23BB2DDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB2DEC4(qword_27E1A1320, type metadata accessor for StoreKitSafariView, &unk_23BBFE0A4);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23BB2DE6C(uint64_t a1)
{
  sub_23BB2DEC4(qword_27E1A1320, type metadata accessor for StoreKitSafariView, &unk_23BBFE0A4);
  sub_23BBDB278();
  __break(1u);
}

uint64_t sub_23BB2DEC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BB2DF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BB2DFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a8;
  v43 = a7;
  v45 = a6;
  v44 = a5;
  v50 = a4;
  v49 = a3;
  v48 = a2;
  v47 = a1;
  v54 = a9;
  v53 = sub_23BBDA978();
  OUTLINED_FUNCTION_7();
  v52 = v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a5;
  v66 = a6;
  v67 = MEMORY[0x277CE1428];
  v68 = a7;
  v69 = a8;
  v70 = MEMORY[0x277CE1410];
  sub_23BBDAEB8();
  OUTLINED_FUNCTION_1_53();
  swift_getWitnessTable();
  sub_23BBDA498();
  v16 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v46 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = sub_23BB2E600();
  v22 = OUTLINED_FUNCTION_2_42();
  v63 = v21;
  v64 = v22;
  OUTLINED_FUNCTION_0();
  WitnessTable = swift_getWitnessTable();
  v65 = v16;
  v66 = WitnessTable;
  v41 = MEMORY[0x277CDED18];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v39 - v31;
  v55 = v44;
  v56 = v45;
  v57 = v43;
  v58 = v42;
  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  sub_23B9C2924(v30);
  sub_23BBDBB88();
  v33 = v52;
  v34 = v51;
  v35 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x277CDDDC0], v53);
  v36 = WitnessTable;
  sub_23BBDBA88();
  (*(v33 + 8))(v34, v35);
  (*(v46 + 8))(v20, v16);
  v65 = v16;
  v66 = v36;
  swift_getOpaqueTypeConformance2();
  sub_23B9D2D88();
  v37 = *(v25 + 8);
  v37(v28, OpaqueTypeMetadata2);
  sub_23B9D2D88();
  return (v37)(v32, OpaqueTypeMetadata2);
}

uint64_t sub_23BB2E3F4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v19[1] = a3;
  v19[2] = a4;
  v19[0] = a2;
  v19[3] = a9;
  v19[8] = a5;
  v19[9] = a6;
  v19[10] = MEMORY[0x277CE1428];
  v19[11] = a7;
  v19[12] = a8;
  v19[13] = MEMORY[0x277CE1410];
  v10 = sub_23BBDAEB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v19 - v15;
  v19[6] = nullsub_1;
  v19[7] = 0;
  sub_23BBDAEA8();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_23B9D2D88();
  return (v17)(v16, v10);
}

unint64_t sub_23BB2E600()
{
  result = qword_27E1A13A8;
  if (!qword_27E1A13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A13A8);
  }

  return result;
}

uint64_t sub_23BB2E690(__int128 *a1)
{
  sub_23BBDAEB8();
  OUTLINED_FUNCTION_1_53();
  swift_getWitnessTable();
  sub_23BBDA498();
  sub_23BBDA358();
  sub_23BB2E600();
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_42()
{

  return swift_getWitnessTable();
}

uint64_t sub_23BB2E7AC@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, void, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v80 = a6;
  v82 = a5;
  v81 = a4;
  v72 = a2;
  v70 = a7;
  v9 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v9);
  v86 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16A0, &qword_23BBFE740);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = &v65 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  MEMORY[0x28223BE20](v21);
  v79 = &v65 - v22;
  v23 = &qword_27E199760;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v88 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  MEMORY[0x28223BE20](v28);
  v78 = &v65 - v29;
  MEMORY[0x28223BE20](v30);
  v83 = &v65 - v31;
  v71 = a1 + 32;
  v75 = a1;

  v74 = a3;

  v95 = 0;
  v96 = 0;
  v89 = 0;
  v90 = 0;
  v94 = 0;
  v76 = 0;
  v77 = 0;
  v73 = 0;
  v33 = v9;
  v84 = v9;
  v93 = v27;
  while (1)
  {
    v34 = 0;
    v35 = v23;
    v36 = v92;
LABEL_3:
    if (v96)
    {
      break;
    }

    v34 = 0;
LABEL_26:
    v59 = *(v75 + 16);
    result = v83;
    if (v73 == v59)
    {
LABEL_33:
      v50 = v33;
      __swift_storeEnumTagSinglePayload(result, 1, 1, v33);
LABEL_34:

      sub_23BB3F578(v96);
      v64 = 1;
      v63 = v70;
      goto LABEL_35;
    }

    if (v73 >= v59)
    {
      __break(1u);
      return result;
    }

    v23 = v35;
    v60 = (v73 + 1);
    v106 = *(v71 + 8 * v73);

    v72(&v98, &v106);

    v61 = v98;
    v62 = v99;
    v73 = v100;
    v69 = v101;
    v68 = v102;
    v67 = v103;
    v66 = v104;
    v98 = v96;
    v99 = v34;
    v100 = v89;
    v101 = v90;
    v102 = v94;
    v103 = v95;
    v104 = v76;
    v105 = v77;
    result = sub_23B9846E8(&v98, &qword_27E1A16A8, &qword_23BBFE748);
    v96 = v61;
    v89 = v62;
    v33 = v84;
    v90 = v73;
    v94 = v69;
    v95 = v68;
    v76 = v67;
    v77 = v66;
    v73 = v60;
  }

  v37 = *(v96 + 16);
  while (1)
  {
    if (v34 == v37)
    {
      v38 = 1;
      v34 = v37;
    }

    else
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v34 >= *(v96 + 16))
      {
        goto LABEL_32;
      }

      sub_23B9A721C(v96 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v34, v17, v35, &unk_23BBE9220);
      v38 = 0;
      ++v34;
    }

    v39 = 1;
    __swift_storeEnumTagSinglePayload(v17, v38, 1, v36);
    v40 = v97;
    sub_23B9A71D0(v17, v97, &qword_27E1A16A0, &qword_23BBFE740);
    if (__swift_getEnumTagSinglePayload(v40, 1, v36) != 1)
    {
      v41 = v17;
      v42 = v91;
      sub_23B9A71D0(v97, v91, &qword_27E199760, &unk_23BBE9220);
      v89(v42);
      v43 = v42;
      v17 = v41;
      v36 = v92;
      v27 = v93;
      sub_23B9846E8(v43, &qword_27E199760, &unk_23BBE9220);
      v39 = 0;
    }

    __swift_storeEnumTagSinglePayload(v20, v39, 1, v36);
    if (__swift_getEnumTagSinglePayload(v20, 1, v36) == 1)
    {
      sub_23B9846E8(v20, &qword_27E1A16A0, &qword_23BBFE740);
      v44 = 1;
      v45 = v79;
      goto LABEL_17;
    }

    v35 = &qword_27E199760;
    v33 = &unk_23BBE9220;
    sub_23B9A71D0(v20, v27, &qword_27E199760, &unk_23BBE9220);
    if ((v94)(v27))
    {
      break;
    }

    result = sub_23B9846E8(v27, &qword_27E199760, &unk_23BBE9220);
  }

  v46 = v27;
  v45 = v79;
  sub_23B9A71D0(v46, v79, &qword_27E199760, &unk_23BBE9220);
  v44 = 0;
LABEL_17:
  v47 = 1;
  __swift_storeEnumTagSinglePayload(v45, v44, 1, v36);
  v48 = v85;
  sub_23B9A71D0(v45, v85, &qword_27E1A16A0, &qword_23BBFE740);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v36);
  v50 = v84;
  v51 = v78;
  if (EnumTagSinglePayload != 1)
  {
    v52 = v91;
    sub_23B9A71D0(v85, v91, &qword_27E199760, &unk_23BBE9220);
    v76(v52);
    v36 = v92;
    sub_23B9846E8(v52, &qword_27E199760, &unk_23BBE9220);
    v47 = 0;
  }

  __swift_storeEnumTagSinglePayload(v51, v47, 1, v50);
  v53 = __swift_getEnumTagSinglePayload(v51, 1, v50) == 1;
  v54 = v51;
  v27 = v93;
  if (v53)
  {
    v33 = v50;
    v35 = &qword_27E199760;
    sub_23B9846E8(v54, &qword_27E199760, &unk_23BBE9220);
    goto LABEL_26;
  }

  v55 = v83;
  sub_23B9A71D0(v54, v83, &qword_27E199760, &unk_23BBE9220);
  if (__swift_getEnumTagSinglePayload(v55, 1, v50) == 1)
  {
    goto LABEL_34;
  }

  v56 = v86;
  sub_23BB3F958(v55, v86);
  v57 = v87;
  v58 = sub_23BB3B3D4(v56, v81, v82, v80 & 1);
  v87 = v57;
  if (v57)
  {
    sub_23BB3FA18(v86, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);

    sub_23BB3F578(v96);
    return sub_23B979A38(v81, v82, v80 & 1);
  }

  if ((v58 & 1) == 0)
  {
    v33 = v50;
    result = sub_23BB3FA18(v86, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
    v35 = &qword_27E199760;
    goto LABEL_3;
  }

  sub_23BB3F578(v96);
  v63 = v70;
  sub_23BB3F958(v86, v70);
  v64 = 0;
LABEL_35:
  __swift_storeEnumTagSinglePayload(v63, v64, 1, v50);
  return sub_23B979A38(v81, v82, v80 & 1);
}

uint64_t sub_23BB2F128(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v71 = a6;
  v73 = a5;
  v72 = a4;
  v61 = a2;
  v74 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v74);
  v68 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16A0, &qword_23BBFE740);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v58 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v78 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v82 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  MEMORY[0x28223BE20](v27);
  v75 = &v58 - v28;
  MEMORY[0x28223BE20](v29);
  v69 = &v58 - v30;
  v60 = a1 + 32;
  v64 = a1;

  v63 = a3;

  v32 = 0;
  v79 = 0;
  v80 = 0;
  v83 = 0;
  v84 = 0;
  v65 = 0;
  v66 = 0;
  v62 = 0;
  v81 = v15;
  v70 = v21;
  while (1)
  {
    v33 = 0;
    v85 = v32;
LABEL_3:
    if (v32)
    {
      break;
    }

    v33 = 0;
    v34 = v74;
LABEL_26:
    v53 = *(v64 + 16);
    if (v62 == v53)
    {
LABEL_35:
      __swift_storeEnumTagSinglePayload(v69, 1, 1, v34);
      LODWORD(v67) = 0;
      goto LABEL_30;
    }

    if (v62 >= v53)
    {
      __break(1u);
      return result;
    }

    v54 = (v62 + 1);
    v95 = *(v60 + 8 * v62);

    v61(&v87, &v95);

    v55 = v87;
    v56 = v88;
    v85 = v89;
    v67 = v90;
    v62 = v91;
    v59 = v92;
    v58 = v93;
    v87 = v32;
    v88 = v33;
    v89 = v79;
    v90 = v80;
    v91 = v83;
    v92 = v84;
    v93 = v65;
    v94 = v66;
    result = sub_23B9846E8(&v87, &qword_27E1A16A8, &qword_23BBFE748);
    v32 = v55;
    v79 = v56;
    v80 = v85;
    v83 = v67;
    v84 = v62;
    v65 = v59;
    v66 = v58;
    v62 = v54;
  }

  v34 = *(v32 + 16);
  while (1)
  {
    if (v33 == v34)
    {
      v35 = 1;
      v33 = v34;
    }

    else
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v33 >= *(v32 + 16))
      {
        goto LABEL_34;
      }

      sub_23B9A721C(v32 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v33, v15, &qword_27E199760, &unk_23BBE9220);
      v35 = 0;
      ++v33;
    }

    v36 = 1;
    __swift_storeEnumTagSinglePayload(v15, v35, 1, v22);
    v37 = v86;
    sub_23B9A71D0(v15, v86, &qword_27E1A16A0, &qword_23BBFE740);
    if (__swift_getEnumTagSinglePayload(v37, 1, v22) != 1)
    {
      v38 = v82;
      sub_23B9A71D0(v86, v82, &qword_27E199760, &unk_23BBE9220);
      v79(v38);
      v39 = v38;
      v15 = v81;
      sub_23B9846E8(v39, &qword_27E199760, &unk_23BBE9220);
      v36 = 0;
    }

    __swift_storeEnumTagSinglePayload(v18, v36, 1, v22);
    if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
    {
      sub_23B9846E8(v18, &qword_27E1A16A0, &qword_23BBFE740);
      v40 = 1;
      v41 = v70;
      goto LABEL_17;
    }

    sub_23B9A71D0(v18, v26, &qword_27E199760, &unk_23BBE9220);
    if (v83(v26))
    {
      break;
    }

    sub_23B9846E8(v26, &qword_27E199760, &unk_23BBE9220);
    v32 = v85;
  }

  v41 = v70;
  sub_23B9A71D0(v26, v70, &qword_27E199760, &unk_23BBE9220);
  v40 = 0;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v41, v40, 1, v22);
  v42 = v76;
  sub_23B9A71D0(v41, v76, &qword_27E1A16A0, &qword_23BBFE740);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v22);
  v44 = 1;
  v34 = v74;
  if (EnumTagSinglePayload != 1)
  {
    v45 = v82;
    sub_23B9A71D0(v76, v82, &qword_27E199760, &unk_23BBE9220);
    v65(v45);
    v46 = v45;
    v15 = v81;
    sub_23B9846E8(v46, &qword_27E199760, &unk_23BBE9220);
    v44 = 0;
  }

  v47 = v75;
  __swift_storeEnumTagSinglePayload(v75, v44, 1, v34);
  if (__swift_getEnumTagSinglePayload(v47, 1, v34) == 1)
  {
    result = sub_23B9846E8(v47, &qword_27E199760, &unk_23BBE9220);
    v32 = v85;
    goto LABEL_26;
  }

  v48 = v69;
  sub_23B9A71D0(v47, v69, &qword_27E199760, &unk_23BBE9220);
  v49 = __swift_getEnumTagSinglePayload(v48, 1, v34);
  LODWORD(v67) = v49 != 1;
  if (v49 == 1)
  {
    v32 = v85;
    goto LABEL_30;
  }

  v50 = v68;
  sub_23BB3F958(v48, v68);
  v51 = v77;
  v52 = sub_23BB3B3D4(v50, v72, v73, v71 & 1);
  result = sub_23BB3FA18(v50, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v77 = v51;
  v32 = v85;
  if (v51)
  {

    sub_23BB3F578(v32);
    sub_23B979A38(v72, v73, v71 & 1);
    return v57 & 1;
  }

  if ((v52 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_30:

  sub_23BB3F578(v32);
  sub_23B979A38(v72, v73, v71 & 1);
  v57 = v67;
  return v57 & 1;
}

uint64_t sub_23BB2F9F4(uint64_t a1, uint64_t a2)
{
  sub_23BBDD648();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_6_9();

  return v3(v2);
}

uint64_t sub_23BB2FA54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v9 = sub_23BBDB038();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0uLL;
  v16 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_23BBD9B18();
    *(&v15 + 1) = v17;
    *(&v16 + 1) = v18;
  }

  v20[0] = v15;
  v20[1] = v16;
  v21 = a3 & 1;
  sub_23BBDB028();
  MEMORY[0x23EEB43C0](v14, a4, v9, a5);
  return (*(v11 + 8))(v14, v9);
}

void sub_23BB2FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_61();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_23BB3FA6C();
  sub_23BBDA958();
  if (a15)
  {
    v45 = v35;
    v38 = a16;
    v39 = a17;
    v40 = a18;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160, &unk_23BBEBF40);
    MEMORY[0x23EEB48C0](&a11, v41);
    v42 = a11;
    v43 = a12;
    v44 = a13;

    sub_23BA0D94C(v38, v39, v40);
    if (v44 != 255)
    {
      sub_23BBA7A24(v42, v43, v44 & 1, v37, v45, v33 & 1);
      sub_23BA0D94C(v42, v43, v44);
    }
  }

  OUTLINED_FUNCTION_60();
}

BOOL sub_23BB2FC88()
{
  sub_23BB3FA6C();
  sub_23BBDA958();
  if (v2)
  {
    sub_23BA0D8E4(v1, v2, v3, v4, v5);
  }

  return v2 != 0;
}

uint64_t sub_23BB2FCEC()
{
  sub_23BB3FAC0();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB2FD64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BA21030();
  *a1 = result;
  return result;
}

uint64_t sub_23BB2FDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x23EEB43C0](v4, a3, &type metadata for ProducesHybridStructuredScrollViewContentModifier);
}

void *sub_23BB2FDF4@<X0>(void *a1@<X8>)
{
  sub_23BB3FAC0();
  result = sub_23BBDA958();
  *a1 = v3;
  a1[1] = sub_23BB3E910;
  a1[2] = 0;
  return result;
}

uint64_t SubscriptionStorePicker.init(_:pickerOptionContent:confirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v17 = type metadata accessor for SubscriptionStorePicker(0, &v33);
  OUTLINED_FUNCTION_32_6();
  *(a9 + v18) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_19_22(KeyPath);
  v25 = a9 + *(v17 + 68);
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_19_22(v26);
  v27 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868, &qword_23BBEE720) + 48));
  OUTLINED_FUNCTION_13_28();
  v28 = sub_23BB3F958(a1, a9);
  *v27 = a2;
  v27[1] = a3;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  OUTLINED_FUNCTION_27_8(v28, &v33);
  result = swift_storeEnumTagMultiPayload();
  v30 = (a9 + *(v17 + 52));
  *v30 = a4;
  v30[1] = a5;
  return result;
}

uint64_t sub_23BB30020()
{
  sub_23BAF72E8();
  sub_23BBDA298();
  return v1;
}

double sub_23BB3005C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_23BB30098(v1 | *a1);
}

double sub_23BB30098(__int16 a1)
{
  sub_23BAF72E8();
  sub_23BBDA2A8();
  return result;
}

uint64_t SubscriptionStorePicker.init(pickerContent:confirmation:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v15 = type metadata accessor for SubscriptionStorePicker(0, &v29);
  OUTLINED_FUNCTION_32_6();
  *(a8 + v16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = a8 + v15[16];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 0;
  v23 = a8 + v15[17];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a8 + v15[18];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  v25 = a1();
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  OUTLINED_FUNCTION_27_8(v25, &v29);
  result = swift_storeEnumTagMultiPayload();
  v27 = (a8 + v15[13]);
  *v27 = a2;
  v27[1] = a3;
  return result;
}

uint64_t SubscriptionStorePicker.init(selection:pickerContent:confirmation:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a9;
  v14 = type metadata accessor for SubscriptionStorePicker(0, &v33);
  OUTLINED_FUNCTION_32_6();
  *(a8 + v15) = v16;
  v18 = *(v17 + 60);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_19_22(KeyPath);
  v24 = a8 + *(v14 + 68);
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = swift_getKeyPath();
  v26 = OUTLINED_FUNCTION_19_22(v25);
  v27 = a2(v26);
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a9;
  OUTLINED_FUNCTION_27_8(v27, &v33);
  swift_storeEnumTagMultiPayload();
  v28 = (a8 + *(v14 + 52));
  *v28 = a3;
  v28[1] = a4;
  sub_23B9846E8(a8 + v18, qword_27E1A13B8, &qword_23BBFE2E8);
  sub_23B9A71D0(a1, a8 + v18, &qword_27E198860, &qword_23BBEE680);
  return __swift_storeEnumTagSinglePayload(a8 + v18, 0, 1, v19);
}

void SubscriptionStorePicker.init(_:selection:pickerOptionContent:confirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_61();
  a29 = v32;
  a30 = v33;
  v35 = v34;
  v37 = v36;
  v66 = v38;
  v67 = v39;
  v64 = v40;
  v65 = v41;
  v68 = v42;
  v44 = v43;
  v46 = a31;
  v45 = a32;
  a15 = v36;
  a16 = v34;
  a17 = a31;
  a18 = a32;
  v47 = type metadata accessor for SubscriptionStorePicker(0, &a15);
  OUTLINED_FUNCTION_32_6();
  *(v44 + v48) = v49;
  v51 = *(v50 + 60);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
  v56 = v44 + v47[16];
  *v56 = swift_getKeyPath();
  *(v56 + 8) = 0;
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  v57 = v44 + v47[17];
  *v57 = swift_getKeyPath();
  *(v57 + 8) = 0;
  v58 = v44 + v47[18];
  *v58 = swift_getKeyPath();
  *(v58 + 8) = 0;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = 0;
  v59 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868, &qword_23BBEE720) + 48));
  OUTLINED_FUNCTION_13_28();
  v60 = OUTLINED_FUNCTION_6_9();
  v62 = sub_23BB3F958(v60, v61);
  *v59 = v64;
  v59[1] = v65;
  a15 = v37;
  a16 = v35;
  a17 = v46;
  a18 = v45;
  OUTLINED_FUNCTION_27_8(v62, &a15);
  swift_storeEnumTagMultiPayload();
  v63 = (v44 + v47[13]);
  *v63 = v66;
  v63[1] = v67;
  sub_23B9846E8(v44 + v51, qword_27E1A13B8, &qword_23BBFE2E8);
  sub_23B9A71D0(v68, v44 + v51, &qword_27E198860, &qword_23BBEE680);
  __swift_storeEnumTagSinglePayload(v44 + v51, 0, 1, v52);
  OUTLINED_FUNCTION_60();
}

uint64_t sub_23BB3053C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 64));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v9 + 32);
  LODWORD(v9) = *(v9 + 33);
  v13 = v11;
  v19 = v11;
  v20 = v10;
  if (v9 == 1)
  {
    result = sub_23B9A165C(v11, *(&v11 + 1), v10);
    v16 = v19;
    v15 = v20;
  }

  else
  {

    sub_23BBDD5A8();
    v17 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v18 = sub_23BB32398(v13, *(&v19 + 1), v20, *(&v20 + 1), v12, 0, sub_23B9A1648);
    result = (*(v6 + 8))(v8, v5, v18);
    v16 = v21;
    v15 = v22;
    LOBYTE(v12) = v23;
  }

  *a2 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_23BB306F8(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

void sub_23BB3084C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 72));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v9 + 32);
  LODWORD(v9) = *(v9 + 33);
  v13 = v11;
  v18 = v11;
  v19 = v10;
  if (v9 == 1)
  {
    sub_23BA0DE40(v11, *(&v11 + 1), v10, *(&v10 + 1), v12);
    v15 = v18;
    v14 = v19;
  }

  else
  {

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v17 = sub_23BB32398(v13, *(&v18 + 1), v19, *(&v19 + 1), v12, 0, sub_23BA0D8E4);
    (*(v6 + 8))(v8, v5, v17);
    v15 = v20;
    v14 = v21;
    LOBYTE(v12) = v22;
  }

  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v12;
}

uint64_t sub_23BB30A08(uint64_t a1)
{
  result = *(v1 + *(a1 + 56));
  if (result == 2)
  {
    if (sub_23BB306F8(a1))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_23BB30A44(uint64_t a1)
{
  sub_23BB3084C(a1, &v8);
  if (!v9)
  {
    return 0;
  }

  v1 = v8;
  v5[3] = v8;
  v5[4] = v9;
  v6 = v10;
  v7 = v11;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160, &unk_23BBEBF40);
  MEMORY[0x23EEB48C0](v5, v2);
  v3 = v5[0];
  v12 = v1;
  sub_23BA6EA10(&v12);

  v13 = v10;
  v14 = v11;
  sub_23B9846E8(&v13, &qword_27E19B148, &unk_23BBFE400);
  return v3;
}

uint64_t SubscriptionStorePicker.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  OUTLINED_FUNCTION_7();
  v73 = v3;
  MEMORY[0x28223BE20](v4);
  v76 = v5;
  v79 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for AutomaticPickerContent(v9, v10, v8, v11);
  v77 = v7;
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  v12 = sub_23BBDA358();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  v80 = &v65 - v14;
  v15 = a1[5];
  v71 = a1[3];
  v72 = v15;
  v17 = type metadata accessor for SubscriptionPickerVariadicContainer(255, v71, v15, v16);
  OUTLINED_FUNCTION_16_18();
  WitnessTable = swift_getWitnessTable();
  v78 = v8;
  v95 = v8;
  v96 = WitnessTable;
  OUTLINED_FUNCTION_2_7();
  v94 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v19 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v22 = sub_23B97B518(v20, &qword_27E19A1E0, &qword_23BBF2AB0, v21);
  v92 = v19;
  v93 = v22;
  OUTLINED_FUNCTION_0();
  v23 = swift_getWitnessTable();
  OUTLINED_FUNCTION_14_23();
  v24 = swift_getWitnessTable();
  v75 = v12;
  *&v97 = v12;
  *(&v97 + 1) = v17;
  v74 = v17;
  v70 = v23;
  v98 = v23;
  v99 = v24;
  v69 = v24;
  v25 = sub_23BBDAED8();
  v26 = sub_23BBDBE28();
  OUTLINED_FUNCTION_7();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v65 - v31;
  v33 = sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  v81 = &v65 - v37;
  sub_23BB3053C(a1, &v97);
  v39 = v98;
  if (v98 == 1)
  {
    v91 = 0;
    sub_23BBDBF58();
    v40 = v88;
    v41 = v89;
    v88 = 1;
    LOBYTE(v89) = v40;
    v90 = v41;
    OUTLINED_FUNCTION_0_49();
    v87 = swift_getWitnessTable();
    OUTLINED_FUNCTION_3_4();
    swift_getWitnessTable();
    sub_23B9D1E7C();
    v42 = v81;
    sub_23BA82E14();
  }

  else
  {
    sub_23BB311B8(a1, v38, v80);
    v66 = v32;
    v43 = v73;
    v67 = v28;
    v44 = v79;
    v45 = OUTLINED_FUNCTION_17_0();
    v46(v45);
    v47 = *(v43 + 80);
    v68 = v25;
    v48 = v35;
    v49 = (v47 + 48) & ~v47;
    v50 = v76 + v49 + 7;
    v76 = v33;
    v51 = v50 & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *&v53 = v77;
    *(&v53 + 1) = v71;
    *&v54 = v78;
    *(&v54 + 1) = v72;
    *(v52 + 16) = v53;
    *(v52 + 32) = v54;
    v55 = v52 + v49;
    v35 = v48;
    (*(v43 + 32))(v55, v44, a1);
    v56 = v52 + v51;
    *v56 = v97;
    v57 = v99;
    *(v56 + 16) = v39;
    *(v56 + 24) = v57;
    *(v56 + 32) = v100;
    sub_23BBDBDF8();
    OUTLINED_FUNCTION_0_49();
    v83 = swift_getWitnessTable();
    OUTLINED_FUNCTION_3_4();
    swift_getWitnessTable();
    v58 = v66;
    OUTLINED_FUNCTION_30_7();
    sub_23B9D2D88();
    v59 = *(v67 + 8);
    v60 = OUTLINED_FUNCTION_30_7();
    v59(v60);
    sub_23B9D2D88();
    sub_23B9D1E7C();
    v42 = v81;
    OUTLINED_FUNCTION_30_7();
    sub_23BA82D64();
    v61 = OUTLINED_FUNCTION_30_7();
    v59(v61);
    (v59)(v58, v26);
    v33 = v76;
  }

  OUTLINED_FUNCTION_0_49();
  v86 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v62 = swift_getWitnessTable();
  v63 = sub_23B9D1E7C();
  v84 = v62;
  v85 = v63;
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v35 + 8))(v42, v33);
}

uint64_t sub_23BB311B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v29 = a3;
  v25 = a1 + 3;
  v26 = a1 + 5;
  v3 = a1[2];
  v4 = a1[4];
  type metadata accessor for AutomaticPickerContent(255, v3, v4, a2);
  sub_23BBDACE8();
  v5 = sub_23BBDBE28();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  v8 = sub_23BBDA358();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  *&v15 = v3;
  *(&v15 + 1) = *v25;
  *&v16 = v4;
  *(&v16 + 1) = *v26;
  v30 = v15;
  v31 = v16;
  v32 = v27;
  WitnessTable = swift_getWitnessTable();
  v36 = v4;
  v37 = WitnessTable;
  v18 = swift_getWitnessTable();
  sub_23BBDBE18();
  v35 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_23B9D2A24(1, v5, v19);
  (*(v28 + 8))(v7, v5, v20);
  v21 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  v33 = v19;
  v34 = v21;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v22 = *(v9 + 8);
  v22(v11, v8);
  sub_23B9D2D88();
  return (v22)(v14, v8);
}

uint64_t sub_23BB314FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v87 = a4;
  v88 = a2;
  v91 = a8;
  v112 = sub_23BBDA288();
  v106 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_23BBDC208();
  v105 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v109 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v77 - v16;
  v18 = sub_23BBDAA98();
  v103 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v101 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23BBDAD98();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v94 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8, &qword_23BBFE2E8);
  MEMORY[0x28223BE20](v23 - 8);
  v84 = &v77 - v24;
  v25 = sub_23BBDA988();
  v79 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v80 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SubscriptionPickerProperties(0);
  MEMORY[0x28223BE20](v27 - 8);
  v81 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a5;
  v90 = a7;
  v86 = type metadata accessor for SubscriptionPickerVariadicContainer(0, a5, a7, v29);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v83 = &v77 - v32;
  v33 = sub_23BB40BDC(&qword_27E1A16C0, MEMORY[0x277CE0070], MEMORY[0x277CE0080]);
  v34 = sub_23BBDD458();
  v95 = a1;
  v96 = v25;
  if (v34)
  {
    v113 = MEMORY[0x277D84F90];
    v102 = v34;
    sub_23BA92D08();
    v104 = v113;
    result = sub_23BBDD438();
    if ((v102 & 0x8000000000000000) == 0)
    {
      v77 = a6;
      v78 = a3;
      v36 = 0;
      v100 = (v21 + 16);
      ++v106;
      v107 = (v105 + 2);
      ++v105;
      v99 = (v103 + 8);
      v98 = (v21 + 8);
      v37 = v18;
      v38 = v94;
      v93 = v17;
      v92 = v20;
      v97 = v33;
      while (1)
      {
        v39 = __OFADD__(v36, 1);
        v40 = v36 + 1;
        if (v39)
        {
          break;
        }

        v103 = v40;
        v41 = sub_23BBDD558();
        (*v100)(v38);
        v41(&v115, 0);
        v42 = v101;
        sub_23BBDAD88();
        sub_23BB40BDC(&qword_27E1984F8, MEMORY[0x277CE0150], MEMORY[0x277CE0170]);
        v43 = sub_23BBDD458();
        if (v43)
        {
          v44 = v43;
          v114 = MEMORY[0x277D84F90];
          sub_23BA92D28(0, v43 & ~(v43 >> 63), 0);
          v45 = v114;
          result = sub_23BBDD438();
          if (v44 < 0)
          {
            goto LABEL_20;
          }

          v46 = v93;
          do
          {
            v47 = sub_23BBDD558();
            v48 = v37;
            v49 = v108;
            v50 = v110;
            (*v107)(v108);
            v47(&v115, 0);
            v51 = v42;
            v52 = v111;
            sub_23BBDC1D8();
            sub_23B9D28AC();
            sub_23BBDA298();
            (*v106)(v52, v112);
            (*v105)(v49, v50);
            v114 = v45;
            v54 = *(v45 + 16);
            v53 = *(v45 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_23BA92D28(v53 > 1, v54 + 1, 1);
              v45 = v114;
            }

            *(v45 + 16) = v54 + 1;
            sub_23B9A71D0(v46, v45 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v54, &qword_27E199760, &unk_23BBE9220);
            sub_23BBDD4B8();
            --v44;
            v37 = v48;
            v42 = v51;
          }

          while (v44);
          (*v99)(v51, v48);
          v38 = v94;
          v20 = v92;
          (*v98)(v94, v92);
        }

        else
        {
          (*v99)(v42, v37);
          (*v98)(v38, v20);
          v45 = MEMORY[0x277D84F90];
        }

        v55 = v104;
        v113 = v104;
        v56 = *(v104 + 16);
        if (v56 >= *(v104 + 24) >> 1)
        {
          sub_23BA92D08();
          v55 = v113;
        }

        *(v55 + 16) = v56 + 1;
        v104 = v55;
        *(v55 + 8 * v56 + 32) = v45;
        result = sub_23BBDD4B8();
        v36 = v103;
        if (v103 == v102)
        {
          v57 = v90;
          v58 = v89;
          v59 = v88;
          a3 = v78;
          a6 = v77;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v104 = MEMORY[0x277D84F90];
    v57 = v90;
    v58 = v89;
    v59 = v88;
LABEL_18:
    v60 = v87;
    v61 = v86;
    v62 = v85;
    v63 = v80;
    (*(v79 + 16))(v80, v95, v96);
    *&v115 = v60;
    *(&v115 + 1) = v58;
    v116 = a6;
    v117 = v57;
    v64 = type metadata accessor for SubscriptionStorePicker(0, &v115);
    v65 = v84;
    sub_23B9A721C(v59 + *(v64 + 60), v84, qword_27E1A13B8, &qword_23BBFE2E8);
    v115 = *(a3 + 8);
    sub_23B9A721C(&v115, &v113, &qword_27E19D2C0, &unk_23BBF21D0);
    v66 = sub_23BB30A44(v64);
    v67 = v81;
    sub_23BB324D4(v63, v104, v65, a3, v66, v68, v69, v81);
    v70 = (v59 + *(v64 + 52));
    v71 = *v70;
    v72 = v70[1];

    v73 = sub_23BB30A08(v64);
    v74 = v82;
    sub_23BB343DC(v67, v71, v72, v73, v58, v57, v82);
    swift_getWitnessTable();
    v75 = v83;
    sub_23B9D2D88();
    v76 = *(v62 + 8);
    v76(v74, v61);
    sub_23B9D2D88();
    return (v76)(v75, v61);
  }

  return result;
}

uint64_t sub_23BB3206C()
{
  v2 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v25 = *(v1 + 2);
  v3 = v25;
  v26 = v2;
  v27 = v4;
  v28 = v5;
  type metadata accessor for SubscriptionStorePicker(0, &v25);
  OUTLINED_FUNCTION_19_0();
  v7 = *(v6 + 80);
  v25 = v3;
  v26 = v2;
  v8 = (v7 + 48) & ~v7;
  v9 = &v1[v8];
  v27 = v4;
  v28 = v5;
  OUTLINED_FUNCTION_27_8(v10, &v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    if (*(v9 + 6))
    {
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020) + 60);
    v12 = type metadata accessor for Subscription(0);
    if (!__swift_getEnumTagSinglePayload(&v9[v11], 1, v12))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v13 + 8))(&v9[v11]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868, &qword_23BBEE720);
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v14 + 8))(&v1[v8], v3);
  }

  v15 = &v9[v0[15]];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  if (!OUTLINED_FUNCTION_25_6(v16))
  {

    v17 = &v15[*(v4 + 32)];
    v18 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
    if (!OUTLINED_FUNCTION_25_6(v18))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v19 + 8))(v17);
      v20 = *(type metadata accessor for SubscriptionStoreControlOption(0) + 20);
      v21 = sub_23BBDCC88();
      if (!__swift_getEnumTagSinglePayload(&v17[v20], 1, v21))
      {
        OUTLINED_FUNCTION_1_4();
        (*(v22 + 8))(&v17[v20], v21);
      }

      if (*&v17[*(v4 + 20)])
      {
      }
    }
  }

  v23 = &v9[v0[16]];
  sub_23BB32398(*v23, *(v23 + 1), *(v23 + 2), *(v23 + 3), v23[32], v23[33], sub_23B9A1648);
  sub_23B97B450(*&v9[v0[17]], v9[v0[17] + 8]);
  OUTLINED_FUNCTION_11_23(&v9[v0[18]]);

  return swift_deallocObject();
}

double sub_23BB32398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a6)
  {
    a7(a1, a2, a3, a4, a5);
  }

  else
  {
  }

  return result;
}

uint64_t sub_23BB323A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v9 = *(type metadata accessor for SubscriptionStorePicker(0, v13) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_23BB314FC(a1, v2 + v10, v11, v5, v6, v7, v8, a2);
}

void sub_23BB324D4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v256) = a7;
  *&v239 = a6;
  v238 = a5;
  v241 = a4;
  v242 = a3;
  v257 = a2;
  v225 = type metadata accessor for Subscription(0);
  MEMORY[0x28223BE20](v225);
  v243 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16A0, &qword_23BBFE740);
  MEMORY[0x28223BE20](v11 - 8);
  v251 = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v246 = &v211 - v14;
  MEMORY[0x28223BE20](v15);
  v240 = &v211 - v16;
  MEMORY[0x28223BE20](v17);
  v245 = &v211 - v18;
  MEMORY[0x28223BE20](v19);
  v255 = &v211 - v20;
  MEMORY[0x28223BE20](v21);
  v250 = &v211 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0, &qword_23BBE4010);
  MEMORY[0x28223BE20](v23 - 8);
  v244 = &v211 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v222 = &v211 - v26;
  MEMORY[0x28223BE20](v27);
  v221 = &v211 - v28;
  v248 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v248);
  v254 = &v211 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v220 = &v211 - v31;
  MEMORY[0x28223BE20](v32);
  v224 = (&v211 - v33);
  v34 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v34);
  v212 = &v211 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v228 = &v211 - v37;
  MEMORY[0x28223BE20](v38);
  v219 = &v211 - v39;
  MEMORY[0x28223BE20](v40);
  v223 = &v211 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v253 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v214 = &v211 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v213 = &v211 - v45;
  MEMORY[0x28223BE20](v46);
  v215 = &v211 - v47;
  MEMORY[0x28223BE20](v48);
  v227 = &v211 - v49;
  MEMORY[0x28223BE20](v50);
  v226 = &v211 - v51;
  MEMORY[0x28223BE20](v52);
  v249 = &v211 - v53;
  MEMORY[0x28223BE20](v54);
  v229 = &v211 - v55;
  MEMORY[0x28223BE20](v56);
  v217 = &v211 - v57;
  MEMORY[0x28223BE20](v58);
  v216 = &v211 - v59;
  MEMORY[0x28223BE20](v60);
  v218 = &v211 - v61;
  MEMORY[0x28223BE20](v62);
  v247 = &v211 - v63;
  MEMORY[0x28223BE20](v64);
  *(&v239 + 1) = &v211 - v65;
  MEMORY[0x28223BE20](v66);
  v252 = &v211 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8, &qword_23BBFE2E8);
  MEMORY[0x28223BE20](v68 - 8);
  v70 = &v211 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  MEMORY[0x28223BE20](v71);
  v73 = &v211 - v72;
  v258 = 0uLL;
  v259 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B148, &unk_23BBFE400);
  sub_23BBDBF58();
  v230 = v260[0];
  v231 = v260[1];
  v232 = v261;
  v233 = v262;
  v74 = type metadata accessor for SubscriptionPickerProperties(0);
  v75 = v34;
  __swift_storeEnumTagSinglePayload(a8 + v74[7], 1, 1, v34);
  v76 = v74[8];
  __swift_storeEnumTagSinglePayload(a8 + v76, 1, 1, v71);
  v77 = v74[5];
  v78 = sub_23BBDA988();
  v235 = *(v78 - 8);
  v79 = *(v235 + 16);
  v80 = a8 + v77;
  v81 = v241;
  v237 = a1;
  v236 = v78;
  v79(v80, a1);
  *(a8 + v74[6]) = v257;

  v82 = a8 + v76;
  v83 = v242;
  sub_23BB3F7D0(v242, v82);
  v84 = v74[9];
  v234 = a8;
  v85 = a8 + v84;
  v86 = *(v81 + 16);
  *v85 = *v81;
  *(v85 + 16) = v86;
  *(v85 + 32) = *(v81 + 32);
  sub_23B9A721C(v83, v70, qword_27E1A13B8, &qword_23BBFE2E8);
  if (__swift_getEnumTagSinglePayload(v70, 1, v71) != 1)
  {

    sub_23BA0D94C(v238, v239, v256);
    sub_23B9A71D0(v70, v73, &qword_27E198860, &qword_23BBEE680);
    v92 = v252;
    MEMORY[0x23EEB48C0](v71);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, 1, v75);
    v94 = v73;
    if (EnumTagSinglePayload)
    {
      sub_23B9846E8(v83, qword_27E1A13B8, &qword_23BBFE2E8);
      (*(v235 + 8))(v237, v236);
      sub_23B9846E8(v73, &qword_27E198860, &qword_23BBEE680);
      sub_23B9846E8(v92, &qword_27E199760, &unk_23BBE9220);
      sub_23BA0D94C(v230, v231, v232);

      v88 = 0;
      v91 = 0;
      v89 = -1;
    }

    else
    {
      v135 = v223;
      sub_23BB3F9B0(v92, v223);
      sub_23B9846E8(v92, &qword_27E199760, &unk_23BBE9220);
      v136 = v224;
      sub_23BB3F9B0(v135, v224);
      sub_23BB3FA18(v135, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
      v137 = v136 + *(v225 + 20);
      v138 = *(v137 + 8);
      v139 = (v235 + 8);
      if (v138 == 2)
      {
        v88 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v91 = v140;
        sub_23B9846E8(v83, qword_27E1A13B8, &qword_23BBFE2E8);
        (*v139)(v237, v236);
        sub_23BB3FA18(v136, type metadata accessor for SubscriptionStoreControlOption);
        sub_23B9846E8(v94, &qword_27E198860, &qword_23BBEE680);
        sub_23BA0D94C(v230, v231, v232);

        v89 = 1;
      }

      else
      {
        v88 = *v137;
        v91 = v138 & 1;
        sub_23B9846E8(v83, qword_27E1A13B8, &qword_23BBFE2E8);
        (*v139)(v237, v236);
        sub_23BB3FA18(v136, type metadata accessor for SubscriptionStoreControlOption);
        sub_23B9846E8(v94, &qword_27E198860, &qword_23BBEE680);
        sub_23BA0D94C(v230, v231, v232);

        v89 = 0;
      }
    }

    v90 = v234;
    goto LABEL_109;
  }

  v87 = v239;
  v88 = v238;
  v252 = v75;
  v258 = *(v81 + 8);
  sub_23B9A721C(&v258, v260, &qword_27E19D2C0, &unk_23BBF21D0);
  sub_23B9846E8(v70, qword_27E1A13B8, &qword_23BBFE2E8);
  v89 = v256;
  if (v256 != 0xFF)
  {
    sub_23BB1BBBC(v81);

    sub_23B9846E8(v83, qword_27E1A13B8, &qword_23BBFE2E8);
    (*(v235 + 8))(v237, v236);
    sub_23BA0D94C(v230, v231, v232);

    v90 = v234;
    v91 = v87;
LABEL_109:
    *v90 = v88;
    *(v90 + 8) = v91;
    *(v90 + 16) = v89;
    *(v90 + 24) = 0;
    return;
  }

  KeyPath = swift_getKeyPath();
  v96 = swift_allocObject();
  v96[2] = sub_23BB3F840;
  v96[3] = KeyPath;
  v97 = v257;
  v96[4] = v257;
  v96[5] = sub_23BB3B15C;
  v96[6] = 0;
  v96[7] = sub_23BB420F0;
  v96[8] = 0;
  v96[9] = sub_23BB420E8;
  v96[10] = 0;
  v96[11] = sub_23BB420F4;
  v96[12] = 0;
  v256 = v97 + 32;
  v238 = KeyPath;
  v224 = v96;
  if (!*(&v258 + 1))
  {
    v141 = 0;
    v142 = *(v97 + 16);
    while (1)
    {
      v143 = v142 == v141;
      if (v142 == v141)
      {
        break;
      }

      if (*(*(v97 + 8 * v141 + 32) + 16))
      {
        goto LABEL_51;
      }

      ++v141;
    }

    v141 = *(v97 + 16);
LABEL_51:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
LABEL_52:
    v153 = 0;
    while (1)
    {
      if (v141 == v142 && v143)
      {
        v165 = *(v97 + 16);
        v166 = v142 >= v165;
        if (v142 != v165)
        {
          goto LABEL_124;
        }

        swift_bridgeObjectRelease_n();

        sub_23B9846E8(v242, qword_27E1A13B8, &qword_23BBFE2E8);
        (*(v235 + 8))(v237, v236);
        v88 = 0;
        v91 = 0;
        v89 = -1;
        v90 = v234;
        goto LABEL_108;
      }

      if (v141 >= v142)
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v154 = *(v256 + 8 * v141);
      if (v143)
      {
        goto LABEL_122;
      }

      if (v153 >= *(v154 + 16))
      {
        goto LABEL_111;
      }

      v155 = (*(v253 + 80) + 32) & ~*(v253 + 80);
      v156 = *(v253 + 72) * v153;
      v157 = v247;
      sub_23B9A721C(v154 + v155 + v156, v247, &qword_27E199760, &unk_23BBE9220);
      v158 = *(&v239 + 1);
      sub_23B9A71D0(v157, *(&v239 + 1), &qword_27E199760, &unk_23BBE9220);
      LODWORD(v157) = __swift_getEnumTagSinglePayload(v158, 1, v252);
      sub_23B9846E8(v158, &qword_27E199760, &unk_23BBE9220);
      v97 = v257;
      v159 = *(v257 + 16);
      if (v157 != 1)
      {
        break;
      }

      if (v141 >= v159)
      {
        goto LABEL_112;
      }

      v143 = 0;
      if (++v153 == *(*(v256 + 8 * v141) + 16))
      {
        ++v141;
        while (1)
        {
          v143 = v141 == v159;
          if (v141 == v159)
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16D0, &unk_23BBFE7D0);
          sub_23BB3F8A8();
          v160 = sub_23BA93B58();
          v162 = *v161;

          (v160)(v260, 0);
          v163 = *(v162 + 16);
          v97 = v257;

          if (v163)
          {
            goto LABEL_52;
          }

          v164 = __OFADD__(v141++, 1);
          if (v164)
          {
            goto LABEL_120;
          }
        }

        v141 = v159;
        goto LABEL_52;
      }
    }

    v166 = v141 >= v159;
    if (v141 >= v159)
    {
      goto LABEL_126;
    }

    v167 = *(v256 + 8 * v141);
    v168 = v242;
    v169 = v220;
    if (v153 >= *(v167 + 16))
    {
      goto LABEL_118;
    }

    v170 = v216;
    sub_23B9A721C(v167 + v155 + v156, v216, &qword_27E199760, &unk_23BBE9220);
    v171 = v170;
    v172 = v218;
    sub_23B9A71D0(v171, v218, &qword_27E199760, &unk_23BBE9220);
    v173 = v217;
    sub_23B9A721C(v172, v217, &qword_27E199760, &unk_23BBE9220);
    v174 = __swift_getEnumTagSinglePayload(v173, 1, v252);
    v166 = v174 != 0;
    if (v174 == 1)
    {
      goto LABEL_127;
    }

    v175 = v219;
    sub_23BB3F958(v173, v219);
    sub_23BB3F9B0(v175, v169);
    sub_23BB3FA18(v175, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);

    sub_23B9846E8(v172, &qword_27E199760, &unk_23BBE9220);
    v176 = v169 + *(v225 + 20);
    v177 = *(v176 + 8);
    v178 = (v235 + 8);
    v90 = v234;
    if (v177 != 2)
    {
      v210 = *v176;

      v88 = v210;

      swift_bridgeObjectRelease_n();
      v91 = v177 & 1;
      sub_23B9846E8(v168, qword_27E1A13B8, &qword_23BBFE2E8);
      (*v178)(v237, v236);
      v209 = v169;
      goto LABEL_107;
    }

    v179 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v181 = v180;

    v88 = v179;
    v91 = v181;

    swift_bridgeObjectRelease_n();
    sub_23B9846E8(v168, qword_27E1A13B8, &qword_23BBFE2E8);
    (*v178)(v237, v236);
    v182 = v169;
LABEL_104:
    sub_23BB3FA18(v182, type metadata accessor for SubscriptionStoreControlOption);
    v89 = 1;
LABEL_108:
    sub_23BA0D94C(v230, v231, v232);

    goto LABEL_109;
  }

  v239 = v258;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v98 = 0;
  v99 = 0;
  v100 = &qword_27E1A16A0;
  v101 = v246;
  v211 = v42;
LABEL_8:
  v247 = 0;
  while (2)
  {
    v102 = v245;
    if (!v98)
    {
      while (1)
      {
LABEL_12:
        v105 = *(v97 + 16);
        if (v99 != v105)
        {
          if (v99 >= v105)
          {
            goto LABEL_117;
          }

          v134 = *(v256 + 8 * v99);

          v98 = v134;
          ++v99;
          goto LABEL_8;
        }

        __swift_storeEnumTagSinglePayload(v102, 1, 1, v42);
LABEL_16:
        v108 = v100;
        sub_23B9A71D0(v102, v101, v100, &qword_23BBFE740);
        v109 = 1;
        if (__swift_getEnumTagSinglePayload(v101, 1, v42) != 1)
        {
          v110 = v249;
          sub_23B9A71D0(v101, v249, &qword_27E199760, &unk_23BBE9220);
          sub_23B9A71D0(v110, v255, &qword_27E199760, &unk_23BBE9220);
          v109 = 0;
        }

        v111 = v255;
        __swift_storeEnumTagSinglePayload(v255, v109, 1, v42);
        if (__swift_getEnumTagSinglePayload(v111, 1, v42) == 1)
        {
          v113 = v111;
          v100 = v108;
          sub_23B9846E8(v113, v108, &qword_23BBFE740);
          v114 = 1;
          goto LABEL_24;
        }

        v112 = v229;
        sub_23B9A71D0(v111, v229, &qword_27E199760, &unk_23BBE9220);
        if (__swift_getEnumTagSinglePayload(v112, 1, v252) != 1)
        {
          break;
        }

        sub_23B9846E8(v112, &qword_27E199760, &unk_23BBE9220);
        v100 = v108;
        if (v98)
        {
          goto LABEL_10;
        }
      }

      sub_23B9A71D0(v112, v250, &qword_27E199760, &unk_23BBE9220);
      v114 = 0;
      v100 = v108;
LABEL_24:
      v115 = 1;
      v116 = v250;
      __swift_storeEnumTagSinglePayload(v250, v114, 1, v42);
      v117 = v116;
      v118 = v251;
      sub_23B9A71D0(v117, v251, v100, &qword_23BBFE740);
      v119 = __swift_getEnumTagSinglePayload(v118, 1, v42);
      v120 = v244;
      if (v119 != 1)
      {
        v121 = v249;
        sub_23B9A71D0(v251, v249, &qword_27E199760, &unk_23BBE9220);

        v122 = v228;
        sub_23BB3F498(v121);
        sub_23BB3F9B0(v122, v120);
        sub_23BB3FA18(v122, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);

        v123 = v121;
        v100 = v108;
        v42 = v211;
        sub_23B9846E8(v123, &qword_27E199760, &unk_23BBE9220);
        v115 = 0;
      }

      v124 = v115;
      v125 = v248;
      __swift_storeEnumTagSinglePayload(v120, v124, 1, v248);
      if (__swift_getEnumTagSinglePayload(v120, 1, v125) == 1)
      {
        sub_23BB1BBBC(v241);

        __swift_storeEnumTagSinglePayload(v222, 1, 1, v125);
        v144 = 0;
        v145 = *(v97 + 16);
        v146 = v252;
        while (1)
        {
          v147 = v145 == v144;
          if (v145 == v144)
          {
            break;
          }

          if (*(*(v97 + 8 * v144 + 32) + 16))
          {
            goto LABEL_76;
          }

          ++v144;
        }

        v144 = *(v97 + 16);
LABEL_76:
        v183 = 0;
        while (1)
        {
          if (v144 == v145 && v147)
          {
            v196 = *(v257 + 16);
            v166 = v145 >= v196;
            if (v145 != v196)
            {
              goto LABEL_128;
            }

            v197 = 1;
            v90 = v234;
            v152 = v242;
            v150 = v221;
LABEL_98:
            v151 = v248;
            __swift_storeEnumTagSinglePayload(v150, v197, 1, v248);
            v204 = v222;
            if (__swift_getEnumTagSinglePayload(v222, 1, v151) != 1)
            {
              sub_23B9846E8(v204, &qword_27E197BA0, &qword_23BBE4010);
            }

            goto LABEL_100;
          }

          if (v144 >= v145)
          {
            goto LABEL_113;
          }

          v184 = *(v256 + 8 * v144);
          if (v147)
          {
            goto LABEL_123;
          }

          if (v183 >= *(v184 + 16))
          {
            goto LABEL_114;
          }

          v185 = v146;
          v186 = (*(v253 + 80) + 32) & ~*(v253 + 80);
          v187 = *(v253 + 72) * v183;
          v188 = v184 + v186 + v187;
          v189 = v227;
          sub_23B9A721C(v188, v227, &qword_27E199760, &unk_23BBE9220);
          v190 = v226;
          sub_23B9A71D0(v189, v226, &qword_27E199760, &unk_23BBE9220);
          LODWORD(v189) = __swift_getEnumTagSinglePayload(v190, 1, v185);
          sub_23B9846E8(v190, &qword_27E199760, &unk_23BBE9220);
          v191 = *(v257 + 16);
          if (v189 != 1)
          {
            break;
          }

          if (v144 >= v191)
          {
            goto LABEL_115;
          }

          v147 = 0;
          ++v183;
          v146 = v252;
          if (v183 == *(*(v256 + 8 * v144) + 16))
          {
            ++v144;
            while (1)
            {
              v147 = v144 == v191;
              if (v144 == v191)
              {
                break;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16D0, &unk_23BBFE7D0);
              sub_23BB3F8A8();
              v192 = sub_23BA93B58();
              v194 = *v193;

              (v192)(v260, 0);
              v195 = *(v194 + 16);

              if (v195)
              {
                goto LABEL_76;
              }

              v164 = __OFADD__(v144++, 1);
              if (v164)
              {
                goto LABEL_121;
              }
            }

            v144 = v191;
            goto LABEL_76;
          }
        }

        if (v144 >= v191)
        {
          goto LABEL_130;
        }

        v198 = *(v256 + 8 * v144);
        v152 = v242;
        v150 = v221;
        if (v183 < *(v198 + 16))
        {
          v199 = v213;
          sub_23B9A721C(v198 + v186 + v187, v213, &qword_27E199760, &unk_23BBE9220);
          v200 = v199;
          v201 = v215;
          sub_23B9A71D0(v200, v215, &qword_27E199760, &unk_23BBE9220);
          v202 = v214;
          sub_23B9A721C(v201, v214, &qword_27E199760, &unk_23BBE9220);
          if (__swift_getEnumTagSinglePayload(v202, 1, v252) == 1)
          {
            goto LABEL_131;
          }

          v203 = v212;
          sub_23BB3F958(v202, v212);
          sub_23BB3F9B0(v203, v150);
          sub_23BB3FA18(v203, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);

          sub_23B9846E8(v201, &qword_27E199760, &unk_23BBE9220);
          v197 = 0;
          v90 = v234;
          goto LABEL_98;
        }

        goto LABEL_119;
      }

      v126 = v254;
      sub_23BB3F958(v120, v254);
      v127 = v243;
      sub_23BB3F9B0(v126, v243);
      v128 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v130 = v129;
      v131 = sub_23BBDCDB8();
      (*(*(v131 - 8) + 8))(v127, v131);
      if (v128 == v239 && *(&v239 + 1) == v130)
      {
      }

      else
      {
        v133 = sub_23BBDDA88();

        v101 = v246;
        if ((v133 & 1) == 0)
        {
          sub_23BB3FA18(v254, type metadata accessor for SubscriptionStoreControlOption);
          continue;
        }
      }

      sub_23BB1BBBC(v241);

      v148 = v222;
      sub_23BB3F958(v254, v222);
      v149 = v248;
      __swift_storeEnumTagSinglePayload(v148, 0, 1, v248);
      v150 = v221;
      v151 = v149;
      sub_23BB3F958(v148, v221);
      __swift_storeEnumTagSinglePayload(v150, 0, 1, v149);
      v90 = v234;
      v152 = v242;
LABEL_100:
      if (__swift_getEnumTagSinglePayload(v150, 1, v151) == 1)
      {

        swift_bridgeObjectRelease_n();
        sub_23B9846E8(v152, qword_27E1A13B8, &qword_23BBFE2E8);
        (*(v235 + 8))(v237, v236);
        sub_23B9846E8(v150, &qword_27E197BA0, &qword_23BBE4010);
        v88 = 0;
        v91 = 0;
        v89 = -1;
        goto LABEL_108;
      }

      v205 = v150 + *(v225 + 20);
      v206 = *(v205 + 8);
      v207 = (v235 + 8);
      if (v206 == 2)
      {
        v88 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v91 = v208;

        swift_bridgeObjectRelease_n();
        sub_23B9846E8(v152, qword_27E1A13B8, &qword_23BBFE2E8);
        (*v207)(v237, v236);
        v182 = v150;
        goto LABEL_104;
      }

      v88 = *v205;

      swift_bridgeObjectRelease_n();
      v91 = v206 & 1;
      sub_23B9846E8(v152, qword_27E1A13B8, &qword_23BBFE2E8);
      (*v207)(v237, v236);
      v209 = v150;
LABEL_107:
      sub_23BB3FA18(v209, type metadata accessor for SubscriptionStoreControlOption);
      v89 = 0;
      goto LABEL_108;
    }

    break;
  }

LABEL_10:
  v103 = *(v98 + 16);
  if (v247 == v103)
  {
    v104 = v240;
    __swift_storeEnumTagSinglePayload(v240, 1, 1, v42);
    sub_23B9846E8(v104, v100, &qword_23BBFE740);
    goto LABEL_12;
  }

  if (v247 < v103)
  {
    v106 = v247;
    v107 = v240;
    sub_23B9A721C(v98 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v247, v240, &qword_27E199760, &unk_23BBE9220);
    v247 = v106 + 1;
    __swift_storeEnumTagSinglePayload(v107, 0, 1, v42);
    sub_23B9A71D0(v107, v102, v100, &qword_23BBFE740);
    goto LABEL_16;
  }

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
  if (!v166)
  {

    __break(1u);
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  if (!v166)
  {

    __break(1u);
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

uint64_t sub_23BB343DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_23BB3F958(a1, a7);
  v14 = type metadata accessor for SubscriptionPickerVariadicContainer(0, a5, a6, v13);
  v15 = (a7 + v14[9]);
  *v15 = a2;
  v15[1] = a3;
  *(a7 + v14[10]) = a4;
  v16 = a7 + v14[11];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a7 + v14[12];
  result = swift_getKeyPath();
  *v17 = result;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  v19 = a7 + v14[13];
  *v19 = 0;
  *(v19 + 8) = 1;
  return result;
}

uint64_t sub_23BB344B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v45 = a1;
  v49 = a6;
  v10 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  *&v56 = a2;
  *(&v56 + 1) = a3;
  v57 = a4;
  v58 = a5;
  v22 = type metadata accessor for SubscriptionStorePicker.PickerContentStorage(0, &v56);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v48 = a4;
  type metadata accessor for AutomaticPickerContent(255, a2, a4, v26);
  v27 = sub_23BBDACE8();
  v46 = *(v27 - 8);
  v47 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v43 - v29;
  (*(v23 + 16))(v25, v45, v22, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868, &qword_23BBEE720) + 48)];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = v44;
    v35 = sub_23BB3F958(v25, v44);
    MEMORY[0x28223BE20](v35);
    *(&v43 - 2) = v34;
    sub_23BA8C9CC(sub_23BA93FA8, (&v43 - 4), v36);
    *&v54 = v37;
    *(&v54 + 1) = v32;
    v55 = v33;
    swift_getWitnessTable();
    sub_23B9D2D88();

    v45 = v56;
    v52 = v56;
    v53 = v57;
    sub_23B9D2D88();
    v52 = v54;
    v53 = v55;

    v38 = v48;
    sub_23BA82E14();

    swift_bridgeObjectRelease_n();

    sub_23BB3FA18(v34, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  }

  else
  {
    (*(v12 + 32))(v21, v25, a2);
    v38 = v48;
    sub_23B9D2D88();
    sub_23B9D2D88();
    swift_getWitnessTable();
    sub_23BA82D64();
    v39 = *(v12 + 8);
    v39(v15, a2);
    v39(v18, a2);
    v39(v21, a2);
  }

  WitnessTable = swift_getWitnessTable();
  v50 = v38;
  v51 = WitnessTable;
  v41 = v47;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v46 + 8))(v30, v41);
}

void sub_23BB34A24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v14 = *(a1 + 16);
  v15 = v1;
  v2 = type metadata accessor for SubscriptionStorePicker.PickerContentStorage(319, &v14);
  if (v3 <= 0x3F)
  {
    *&v14 = v2;
    v4 = sub_23B975E04();
    if (v5 <= 0x3F)
    {
      *(&v14 + 1) = v4;
      *&v15 = &type metadata for SubscriptionStorePickerLayoutInternal;
      sub_23BB35EE0(319, qword_27E1A1440, &qword_27E198860, &qword_23BBEE680, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        *(&v15 + 1) = v6;
        sub_23BB35EE0(319, &qword_27E198B98, &qword_27E1988B0, &qword_23BBE6660, MEMORY[0x277CDF468]);
        if (v9 <= 0x3F)
        {
          v16 = v8;
          sub_23BB417EC(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v11 <= 0x3F)
          {
            v17 = v10;
            sub_23BB35EE0(319, &qword_27E19B1E8, &qword_27E1988A8, &unk_23BBE60A0, MEMORY[0x277CDF468]);
            if (v13 <= 0x3F)
            {
              v18 = v12;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BB34BC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = sub_23BBDCDB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = (v9 + 87) & ~(v9 | 7);
  if (v8 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v15 = sub_23BBDCC88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20 - 1;
  if ((v20 - 1) <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v20 - 1;
  }

  v23 = v22 - 1;
  if ((v22 - 1) <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v22 - 1;
  }

  if (((v11 + v14) & 0xFFFFFFFFFFFFFFF8) + 24 <= v5)
  {
    v25 = v5;
  }

  else
  {
    v25 = ((v11 + v14) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v26 = *(v16 + 80);
  if (v17)
  {
    v27 = 7;
  }

  else
  {
    v27 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = v15;
  v29 = v26 | v10;
  v30 = (v27 + *(v16 + 64) + ((v14 + v26) & ~v26)) & 0xFFFFFFFFFFFFFFF8;
  if (v24 < a2)
  {
    v31 = ((((((v29 + 16) & ~v29) + ((((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (((v25 & 0xFFFFFFFFFFFFFFF8) + v29 + 25) & ~v29) + 23) & 0xFFFFFFFFFFFFFFF8) + 57) & 0xFFFFFFFFFFFFFFF8) + 34;
    if (v31 <= 3)
    {
      v32 = ((a2 - v24 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v32 = 2;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    switch(v34)
    {
      case 1:
        v35 = *(a1 + v31);
        if (!*(a1 + v31))
        {
          break;
        }

        goto LABEL_42;
      case 2:
        v35 = *(a1 + v31);
        if (*(a1 + v31))
        {
          goto LABEL_42;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB34F88);
      case 4:
        v35 = *(a1 + v31);
        if (!v35)
        {
          break;
        }

LABEL_42:
        v37 = (v35 - 1) << (8 * v31);
        if (v31 <= 3)
        {
          v38 = *a1;
        }

        else
        {
          v37 = 0;
          v38 = *a1;
        }

        return v24 + (v38 | v37) + 1;
      default:
        break;
    }
  }

  v39 = ((a1 + v25 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v23 < 0)
  {
    v41 = ((((v39 + v29 + 17) & ~v29) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v21 & 0x80000000) == 0)
    {
      v42 = *v41;
      if (*v41 >= 0xFFFFFFFF)
      {
        LODWORD(v42) = -1;
      }

      v43 = v42 + 1;
LABEL_72:
      if (v43 >= 2)
      {
        return v43 - 1;
      }

      else
      {
        return 0;
      }
    }

    v44 = (v41 + v29 + 8) & ~v29;
    if (v19 < 0x7FFFFFFF)
    {
      v48 = *((((v30 + v44 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v48 >= 0xFFFFFFFF)
      {
        LODWORD(v48) = -1;
      }

      EnumTagSinglePayload = v48 + 1;
      goto LABEL_70;
    }

    if (v12 >= v18)
    {
      if (v8 >= 0xFD)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, v8, v6);
        goto LABEL_70;
      }

      v50 = *(((v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v50 >= 2)
      {
        v46 = (v50 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v46 = -1;
      }

      v47 = (v46 + 1) >= 2;
    }

    else
    {
      v45 = __swift_getEnumTagSinglePayload((v14 + v26 + v44) & ~v26, v17, v28);
      v46 = v45 - 1;
      v47 = v45 >= 2;
    }

    if (v47)
    {
      EnumTagSinglePayload = v46;
    }

    else
    {
      EnumTagSinglePayload = 0;
    }

LABEL_70:
    v43 = EnumTagSinglePayload - 1;
    if (EnumTagSinglePayload < 2)
    {
      v43 = 0;
    }

    goto LABEL_72;
  }

  v40 = *v39;
  if (*v39 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_23BB34F9C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v70 = sub_23BBDCDB8();
  v8 = *(v70 - 8);
  v9 = *(v8 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = (v9 + 87) & ~(v9 | 7);
  v71 = *(v8 + 84);
  if (v71 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v69 = *(*(v70 - 8) + 64);
  v13 = ((v69 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = sub_23BBDCC88();
  v15 = 0;
  v16 = *(v14 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20 - 1;
  if (v20 - 1 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v20 - 1;
  }

  v23 = v22 - 1;
  if (v22 - 1 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v22 - 1;
  }

  if (((v11 + v13) & 0xFFFFFFFFFFFFFFF8) + 24 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = ((v11 + v13) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v26 = *(v16 + 80);
  v27 = v26 | v10;
  v28 = ((v26 | v10) + 16) & ~(v26 | v10);
  v29 = v13 + v26;
  if (v17)
  {
    v30 = *(*(v14 - 8) + 64);
  }

  else
  {
    v30 = *(*(v14 - 8) + 64) + 1;
  }

  v31 = ((v13 + v26) & ~v26) + v30;
  v32 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = ((((v28 + ((((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (((v25 & 0xFFFFFFFFFFFFFFF8) + (v26 | v10) + 25) & ~(v26 | v10)) + 23) & 0xFFFFFFFFFFFFFFF8) + 57) & 0xFFFFFFFFFFFFFFF8) + 34;
  if (v24 < a3)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v24 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v15 = v35;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v24 < a2)
  {
    v36 = ~v24 + a2;
    bzero(a1, ((((v28 + ((((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (((v25 & 0xFFFFFFFFFFFFFFF8) + (v26 | v10) + 25) & ~(v26 | v10)) + 23) & 0xFFFFFFFFFFFFFFF8) + 57) & 0xFFFFFFFFFFFFFFF8) + 34);
    if (v33 <= 3)
    {
      v37 = HIWORD(v36) + 1;
    }

    else
    {
      v37 = 1;
    }

    if (v33 > 3)
    {
      *a1 = v36;
    }

    else
    {
      *a1 = v36;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v33) = v37;
        return;
      case 2:
        *(a1 + v33) = v37;
        return;
      case 3:
        goto LABEL_128;
      case 4:
        *(a1 + v33) = v37;
        return;
      default:
        return;
    }
  }

  v38 = ~v27;
  switch(v15)
  {
    case 1:
      *(a1 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    case 2:
      *(a1 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    case 3:
LABEL_128:
      __break(1u);
      JUMPOUT(0x23BB3560CLL);
    case 4:
      *(a1 + v33) = 0;
      goto LABEL_50;
    default:
LABEL_50:
      if (!a2)
      {
        return;
      }

LABEL_51:
      v40 = ((a1 + v25 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v23 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v41 = a2 & 0x7FFFFFFF;
          v40[1] = 0;
        }

        else
        {
          v41 = a2 - 1;
        }

        *v40 = v41;
        return;
      }

      v42 = ((v40 + v27 + 17) & v38);
      v43 = v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 16;
      if (v23 < a2)
      {
        if (v43 <= 3)
        {
          v44 = ~(-1 << (8 * (v28 + ((((((v31 + 7) & 0xF8) + 15) & 0xF8) + 23) & 0xF8) + 16)));
        }

        else
        {
          v44 = -1;
        }

        if (v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != -16)
        {
          v45 = v44 & (a2 - v22);
          if (v43 <= 3)
          {
            v46 = v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 16;
          }

          else
          {
            v46 = 4;
          }

          bzero(v42, v43);
          switch(v46)
          {
            case 2:
              goto LABEL_84;
            case 3:
              goto LABEL_83;
            case 4:
              goto LABEL_90;
            default:
              goto LABEL_82;
          }
        }

        return;
      }

      v47 = a2 >= v22;
      v48 = a2 - v22;
      if (v47)
      {
        if (v43 <= 3)
        {
          v52 = ~(-1 << (8 * (v28 + ((((((v31 + 7) & 0xF8) + 15) & 0xF8) + 23) & 0xF8) + 16)));
        }

        else
        {
          v52 = -1;
        }

        if (v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != -16)
        {
          v45 = v52 & v48;
          if (v43 <= 3)
          {
            v53 = v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 16;
          }

          else
          {
            v53 = 4;
          }

          bzero(v42, v43);
          switch(v53)
          {
            case 2:
LABEL_84:
              *v42 = v45;
              break;
            case 3:
LABEL_83:
              *v42 = v45;
              v42[2] = BYTE2(v45);
              break;
            case 4:
              goto LABEL_90;
            default:
              goto LABEL_82;
          }
        }
      }

      else
      {
        v49 = a2 + 1;
        v50 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v21 & 0x80000000) == 0)
        {
          if ((v49 & 0x80000000) != 0)
          {
            v51 = a2 - 0x7FFFFFFF;
          }

          else
          {
            v51 = a2;
          }

          *v50 = v51;
          return;
        }

        v42 = ((v50 + v27 + 8) & v38);
        v54 = (v31 + 7) & 0xFFFFFFF8;
        v55 = (((v54 + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8;
        v56 = v55 + 16;
        v57 = a2 - v21;
        if (a2 >= v21)
        {
          if (v55 != -16)
          {
            bzero(v42, v55 + 16);
            *v42 = v57;
          }
        }

        else
        {
          v58 = a2 + 2;
          if (a2 + 2 > v20)
          {
            if (!v56)
            {
              return;
            }

            v45 = v49 - v20;
            v59 = v42;
            v60 = v56;
LABEL_89:
            bzero(v59, v60);
LABEL_90:
            *v42 = v45;
            return;
          }

          if (v19 < 0x7FFFFFFF)
          {
            v61 = (((&v42[v32 + 8] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
            if ((v58 & 0x80000000) != 0)
            {
              *v61 = a2 - 2147483646;
              v61[1] = 0;
            }

            else
            {
              *v61 = v49;
            }

            return;
          }

          if (v58 > v19)
          {
            v60 = (v54 + 8);
            if (v54 == -8)
            {
              return;
            }

            v45 = v49 - v19;
            v59 = v42;
            goto LABEL_89;
          }

          if (v12 >= v18)
          {
            if (v58 > v12)
            {
              v45 = v49 - v12;
              bzero(v42, v13);
              if (v13 <= 3)
              {
LABEL_82:
                *v42 = v45;
                return;
              }

              goto LABEL_90;
            }

            v17 = v71;
            if (v71 < 0xFD)
            {
              v68 = &v42[v69 + 7] & 0xFFFFFFFFFFFFFFF8;
              if (a2 > 0xFB)
              {
                *v68 = 0;
                *(v68 + 8) = 0;
                *v68 = a2 - 252;
              }

              else
              {
                *(v68 + 8) = (v58 & 0xFE | a2 & 1) + 2;
              }

              return;
            }

            v67 = v42;
            v66 = a2 + 2;
            v14 = v70;
          }

          else
          {
            v39 = ~v26;
            v62 = &v42[v29] & ~v26;
            if (v58 > v18)
            {
              if (v30 <= 3)
              {
                v63 = ~(-1 << (8 * v30));
              }

              else
              {
                v63 = -1;
              }

              if (v30)
              {
                v64 = v63 & (v49 - v18);
                if (v30 <= 3)
                {
                  v65 = v30;
                }

                else
                {
                  v65 = 4;
                }

                bzero((&v42[v29] & v39), v30);
                switch(v65)
                {
                  case 2:
                    *v62 = v64;
                    break;
                  case 3:
                    *v62 = v64;
                    *(v62 + 2) = BYTE2(v64);
                    break;
                  case 4:
                    *v62 = v64;
                    break;
                  default:
                    *v62 = v64;
                    break;
                }
              }

              return;
            }

            v66 = a2 + 3;
            v67 = &v42[v29] & v39;
          }

          __swift_storeEnumTagSinglePayload(v67, v66, v17, v14);
        }
      }

      return;
  }
}

uint64_t sub_23BB35664(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for AutomaticPickerContent(v3, v4, v2, v5);
  OUTLINED_FUNCTION_18_1();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  v6 = OUTLINED_FUNCTION_15_4();
  type metadata accessor for SubscriptionPickerVariadicContainer(v6, v7, v1, v8);
  OUTLINED_FUNCTION_16_18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v9, &qword_27E19A1E0, &qword_23BBF2AB0, v10);
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_23();
  swift_getWitnessTable();
  sub_23BBDAED8();
  OUTLINED_FUNCTION_23_9();
  sub_23BBDBE28();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_0_49();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D1E7C();
  return swift_getWitnessTable();
}

void sub_23BB35830(uint64_t a1, double a2)
{
  type metadata accessor for SubscriptionPickerProperties(319);
  if (v2 <= 0x3F)
  {
    sub_23B975E04();
    if (v3 <= 0x3F)
    {
      sub_23BB417EC(319, &qword_27E1A14C8, &type metadata for SubscriptionPickerConfirmationPlacement, MEMORY[0x277CDF468]);
      if (v4 <= 0x3F)
      {
        sub_23BB35EE0(319, &qword_27E19B1E8, &qword_27E1988A8, &unk_23BBE60A0, MEMORY[0x277CDF468]);
        if (v5 <= 0x3F)
        {
          sub_23BB35EE0(319, qword_27E1A0238, &qword_27E197E38, qword_23BBE4780, type metadata accessor for IdiomValue);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BB35994(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  type metadata accessor for SubscriptionPickerProperties(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 36)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t type metadata accessor for SubscriptionPickerProperties(uint64_t a1)
{
  result = qword_27E1A14D0;
  if (!qword_27E1A14D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BB35A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_12_3();
  type metadata accessor for SubscriptionPickerProperties(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v10 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v9);
  }

  else
  {
    *(v4 + *(a4 + 36)) = (a2 - 1);
  }
}

uint64_t sub_23BB35B44(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDA988();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_18_0(*(v3 + a3[6]));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
    OUTLINED_FUNCTION_10_2();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v9 = a3[7];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8, &qword_23BBFE2E8);
      v9 = a3[8];
    }
  }

  return __swift_getEnumTagSinglePayload(v3 + v9, a2, v8);
}

void sub_23BB35C6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDA988();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[6]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8, &qword_23BBFE2E8);
      v11 = a4[8];
    }
  }

  __swift_storeEnumTagSinglePayload(v4 + v11, a2, a2, v10);
}

void sub_23BB35D88(uint64_t a1)
{
  sub_23BB35EE0(319, &qword_27E1A14E0, &qword_27E19B148, &unk_23BBFE400, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_23BBDA988();
    if (v2 <= 0x3F)
    {
      sub_23BB35EE0(319, &qword_27E1A14E8, &qword_27E199770, &qword_23BBF4FF0, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23BB35F44(319);
        if (v4 <= 0x3F)
        {
          sub_23BB35EE0(319, qword_27E1A1440, &qword_27E198860, &qword_23BBEE680, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23BB35EE0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_23BB35F44(uint64_t a1)
{
  if (!qword_27E1A14F0[0])
  {
    type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(255);
    v1 = sub_23BBDD648();
    if (!v2)
    {
      atomic_store(v1, qword_27E1A14F0);
    }
  }
}

uint64_t sub_23BB35F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BB35FD8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23BB36018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23BB36078(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23BB36520(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_23BB360F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_23BBDCDB8() - 8);
  v7 = *(v6 + 80) & 0xF8;
  v8 = ((((*(v6 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v7 + 87) & ~v7 & 0x1F8) + 9) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return (v10 | v15) + 255;
}

void sub_23BB362BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_23BBDCDB8() - 8);
  v9 = *(v8 + 80) & 0xF8;
  v10 = ((((*(v8 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v9 + 87) & ~v9 & 0x1F8) + 9) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 + ~(-1 << v12) - 254) >> v12) + 1;
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

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v10 != -1)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v10 + 1);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23BB364F8);
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v11] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v10] = -a2;
        }

        break;
    }
  }
}

void sub_23BB36520(uint64_t a1)
{
  if (!qword_27E1A15F8)
  {
    type metadata accessor for SubscriptionStoreControlStyleConfiguration(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197B18, qword_23BBE3DF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E1A15F8);
    }
  }
}

unint64_t sub_23BB365A0()
{
  result = qword_27E1A1600;
  if (!qword_27E1A1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1600);
  }

  return result;
}

void sub_23BB365F4(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for SubscriptionPickerProperties(0) + 24));
  v4[1] = *(a1 + 16);
  v5 = v1;
  sub_23BA8CB9C(sub_23BB3F5D8, v4, v3, sub_23BB3B360);
}

void sub_23BB36678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23BB3F9B0(a1, v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (a2 + *(type metadata accessor for SubscriptionPickerProperties(0) + 36));
  v7 = *(v6 + 1);
  v8 = v6[32];
  v9[1] = *v6;
  v9[2] = v7;
  v10 = *(v6 + 1);
  v11 = v8;

  sub_23BB9494C();
}

uint64_t sub_23BB36768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v128 = a1;
  v129 = *(a1 - 8);
  v123 = *(v129 + 64);
  MEMORY[0x28223BE20](a1);
  v127 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_23BBDA988();
  v125 = *(a1 + 16);
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v121 = sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1650, &qword_23BBFE6F0);
  sub_23BBDA358();
  v4 = sub_23BBDD648();
  v5 = sub_23BB40BDC(&qword_27E1A1658, MEMORY[0x277CE0070], MEMORY[0x277CE0078]);
  WitnessTable = swift_getWitnessTable();
  v122 = MEMORY[0x277CE0868];
  v7 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  v153 = WitnessTable;
  v154 = v7;
  v8 = swift_getWitnessTable();
  v9 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650, &qword_23BBFE6F0, MEMORY[0x277CE04A0]);
  v151 = v8;
  v152 = v9;
  v150 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v139 = v124;
  v140 = v4;
  *&v141 = v5;
  *(&v141 + 1) = v10;
  v11 = type metadata accessor for SubscriptionStorePickerControlWrapper(255, &v139);
  sub_23BBDB038();
  sub_23BBDA358();
  v12 = sub_23BBDD648();
  v13 = *(v128 + 24);
  v124 = v13;
  v15 = type metadata accessor for SubscriptionPickerVariadicContainer.SetSelectionEnvironmentModifier(255, v125, v13, v14);
  v16 = swift_getWitnessTable();
  v17 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
  v148 = v13;
  v149 = v17;
  v147 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v145 = v18;
  v146 = v19;
  v144 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v139 = v11;
  v140 = v12;
  *&v141 = v15;
  *(&v141 + 1) = v16;
  v115 = v15;
  v142 = v20;
  v143 = v21;
  type metadata accessor for SubscriptionStorePickerFeatureContainer(255, &v139);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1668, &qword_23BBFE6F8);
  v22 = sub_23BBDA358();
  v116 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v100 = &v96 - v23;
  v24 = sub_23BBDA358();
  v117 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v103 = &v96 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1670, &qword_23BBFE700);
  v26 = sub_23BBDA358();
  v113 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v121 = &v96 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B148, &unk_23BBFE400);
  v29 = swift_getWitnessTable();
  v30 = sub_23B97B518(&qword_27E1A1678, &qword_27E1A1668, &qword_23BBFE6F8, MEMORY[0x277CE0800]);
  v137 = v29;
  v138 = v30;
  v31 = swift_getWitnessTable();
  v135 = v31;
  v136 = v21;
  v32 = swift_getWitnessTable();
  v33 = sub_23B97B518(&qword_27E1A1680, &qword_27E1A1670, &qword_23BBFE700, v122);
  v133 = v32;
  v134 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_23BB3EE74();
  v139 = v26;
  v140 = v28;
  v36 = v26;
  v99 = v26;
  *&v141 = v34;
  *(&v141 + 1) = v35;
  v98 = v34;
  v37 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v120 = &v96 - v39;
  v139 = v36;
  v140 = v28;
  *&v141 = v34;
  *(&v141 + 1) = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v139 = OpaqueTypeMetadata2;
  v140 = v28;
  v41 = OpaqueTypeMetadata2;
  v102 = OpaqueTypeMetadata2;
  v119 = v28;
  *&v141 = OpaqueTypeConformance2;
  *(&v141 + 1) = v37;
  v42 = OpaqueTypeConformance2;
  v101 = OpaqueTypeConformance2;
  v118 = v37;
  v43 = swift_getOpaqueTypeMetadata2();
  v107 = v43;
  v112 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v122 = &v96 - v44;
  v139 = v41;
  v140 = v28;
  *&v141 = v42;
  *(&v141 + 1) = v37;
  v106 = swift_getOpaqueTypeConformance2();
  v139 = v43;
  v140 = MEMORY[0x277D839B0];
  *&v141 = v106;
  *(&v141 + 1) = MEMORY[0x277D839C8];
  v108 = MEMORY[0x277CE0E30];
  v109 = swift_getOpaqueTypeMetadata2();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v104 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v105 = &v96 - v47;
  v48 = v100;
  v49 = v128;
  v50 = v126;
  sub_23BB377B8(v128, v100);
  v51 = *(v50 + 16);
  v52 = *(v50 + 3);
  v130 = *v50;
  v131 = v51;
  v132 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698, &qword_23BBFE708);
  sub_23BBDBF88();
  v130 = v141;
  v131 = v142;
  v155 = v139;
  v53 = v103;
  MEMORY[0x23EEB43C0](&v139, v22, v115, v31);
  sub_23BA6EA10(&v155);

  sub_23B9846E8(&v130, &qword_27E19B148, &unk_23BBFE400);
  (*(v116 + 8))(v48, v22);
  swift_getKeyPath();
  v54 = v49;
  sub_23BB365F4(v49);
  v139 = v55;
  sub_23BBDB748();

  v117[1](v53, v24);
  v100 = sub_23BB37FAC();
  v97 = v56;
  LOBYTE(v37) = v57;
  v139 = v100;
  v140 = v56;
  LOBYTE(v141) = v57;
  v58 = v129;
  v59 = *(v129 + 16);
  v116 = v129 + 16;
  v117 = v59;
  v60 = v127;
  (v59)(v127, v50, v54);
  v61 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v103 = *(v58 + 80);
  v62 = swift_allocObject();
  v63 = v125;
  v64 = v124;
  *(v62 + 16) = v125;
  *(v62 + 24) = v64;
  v65 = *(v58 + 32);
  v129 = v58 + 32;
  v115 = v65;
  v65(v62 + v61, v60, v54);
  v66 = v99;
  OUTLINED_FUNCTION_0_2();
  v67 = v121;
  sub_23BBDBC18();

  sub_23BA0D94C(v100, v97, v37);
  (*(v113 + 8))(v67, v66);
  v68 = v126;
  v69 = sub_23BB38400();
  v71 = v70;
  LOBYTE(v53) = v72;
  v139 = v69;
  v140 = v70;
  LOBYTE(v141) = v72;
  v73 = v127;
  v74 = v68;
  v75 = v128;
  (v117)(v127, v74, v128);
  v76 = swift_allocObject();
  v77 = v124;
  *(v76 + 16) = v63;
  *(v76 + 24) = v77;
  v115(v76 + v61, v73, v75);
  v78 = v102;
  OUTLINED_FUNCTION_0_2();
  v79 = v120;
  sub_23BBDBC18();

  sub_23BA0D94C(v69, v71, v53);
  (*(v111 + 8))(v79, v78);
  v80 = v126;
  LOBYTE(v139) = sub_23BB387AC() & 1;
  v81 = v127;
  v82 = v80;
  v83 = v128;
  (v117)(v127, v82, v128);
  v84 = swift_allocObject();
  v85 = v124;
  *(v84 + 16) = v125;
  *(v84 + 24) = v85;
  v115(v84 + v61, v81, v83);
  v86 = v104;
  v87 = v107;
  v88 = MEMORY[0x277D839B0];
  v89 = v106;
  v90 = MEMORY[0x277D839C8];
  v91 = v122;
  sub_23BBDBC08();

  (*(v112 + 8))(v91, v87);
  v139 = v87;
  v140 = v88;
  *&v141 = v89;
  *(&v141 + 1) = v90;
  swift_getOpaqueTypeConformance2();
  v92 = v105;
  v93 = v109;
  sub_23B9D2D88();
  v94 = *(v110 + 8);
  v94(v86, v93);
  sub_23B9D2D88();
  return (v94)(v92, v93);
}

uint64_t sub_23BB377B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v56 = a2;
  v50 = *(a1 + 16);
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v52 = sub_23BBDA358();
  sub_23BBDD648();
  sub_23BBDB038();
  v53 = sub_23BBDA358();
  v57 = sub_23BBDD648();
  MEMORY[0x28223BE20](v57);
  v54 = &v44 - v2;
  v48 = sub_23BBDA988();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1650, &qword_23BBFE6F0);
  sub_23BBDA358();
  v3 = sub_23BBDD648();
  v4 = sub_23BB40BDC(&qword_27E1A1658, MEMORY[0x277CE0070], MEMORY[0x277CE0078]);
  WitnessTable = swift_getWitnessTable();
  v6 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  v78 = WitnessTable;
  v79 = v6;
  v7 = MEMORY[0x277CDFAD8];
  v8 = swift_getWitnessTable();
  v9 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650, &qword_23BBFE6F0, MEMORY[0x277CE04A0]);
  v76 = v8;
  v77 = v9;
  v75 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v63 = v48;
  v64 = v3;
  v65 = v4;
  v66 = v10;
  v11 = type metadata accessor for SubscriptionStorePickerControlWrapper(0, &v63);
  MEMORY[0x28223BE20](v11);
  v48 = &v44 - v12;
  v13 = v51;
  v14 = *(v51 + 24);
  v16 = type metadata accessor for SubscriptionPickerVariadicContainer.SetSelectionEnvironmentModifier(255, v50, v14, v15);
  v17 = v11;
  v46 = v11;
  v18 = swift_getWitnessTable();
  v47 = v18;
  v19 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
  v73 = v14;
  v74 = v19;
  v49 = v7;
  v72 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v70 = v20;
  v71 = v21;
  v69 = swift_getWitnessTable();
  v22 = v57;
  v23 = swift_getWitnessTable();
  v52 = v23;
  v50 = v16;
  v45 = swift_getWitnessTable();
  v63 = v17;
  v64 = v22;
  v65 = v16;
  v66 = v18;
  v67 = v23;
  v68 = v45;
  v24 = type metadata accessor for SubscriptionStorePickerFeatureContainer(0, &v63);
  v53 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1668, &qword_23BBFE6F8);
  v27 = sub_23BBDA358();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v44 - v32;
  v34 = v48;
  v35 = v13;
  v36 = v55;
  sub_23BB38C74(v13, v48);
  v37 = v54;
  sub_23BB3913C(v35, v54);
  v38 = *(v36 + 16);
  v39 = *(v36 + 3);
  v60 = *v36;
  v61 = v38;
  v62 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698, &qword_23BBFE708);
  sub_23BBDBF88();
  sub_23BB398E8(v34, v37, &v63, v46, v57, v50, v47, v52, v26, v45);
  LOBYTE(v63) = 1;
  v40 = swift_getWitnessTable();
  sub_23BB3F5FC();
  sub_23BBDB6F8();
  (*(v53 + 8))(v26, v24);
  v41 = sub_23B97B518(&qword_27E1A1678, &qword_27E1A1668, &qword_23BBFE6F8, MEMORY[0x277CE0800]);
  v58 = v40;
  v59 = v41;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v42 = *(v28 + 8);
  v42(v30, v27);
  sub_23B9D2D88();
  return (v42)(v33, v27);
}

uint64_t sub_23BB37FAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8, &qword_23BBFE2E8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  v4 = type metadata accessor for SubscriptionPickerProperties(0);
  sub_23B9A721C(v0 + *(v4 + 32), v3, qword_27E1A13B8, &qword_23BBFE2E8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    return 0;
  }

  sub_23B9846E8(v3, qword_27E1A13B8, &qword_23BBFE2E8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 3);
  v10 = *v0;
  v11 = v7;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698, &qword_23BBFE708);
  sub_23BBDBF68();
  return v9[1];
}

uint64_t sub_23BB380E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8, &qword_23BBFE2E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = type metadata accessor for SubscriptionPickerProperties(0);
  sub_23B9A721C(v0 + *(v15 + 32), v11, qword_27E1A13B8, &qword_23BBFE2E8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v16 = qword_27E1A13B8;
    v17 = &qword_23BBFE2E8;
    v18 = v11;
  }

  else
  {
    sub_23B9A71D0(v11, v14, &qword_27E198860, &qword_23BBEE680);
    sub_23B9A721C(v0 + *(v15 + 28), v5, &qword_27E199760, &unk_23BBE9220);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_23B9846E8(v14, &qword_27E198860, &qword_23BBEE680);
      v16 = &qword_27E199760;
      v17 = &unk_23BBE9220;
      v18 = v5;
    }

    else
    {
      sub_23BB3F958(v5, v8);
      v19 = v22;
      sub_23BB3F9B0(v8, v22);
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
      sub_23BBDC0F8();
      sub_23BB3FA18(v8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
      v16 = &qword_27E198860;
      v17 = &qword_23BBEE680;
      v18 = v14;
    }
  }

  return sub_23B9846E8(v18, v16, v17);
}

uint64_t sub_23BB38400()
{
  v1 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8, &qword_23BBFE2E8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SubscriptionPickerProperties(0);
  sub_23B9A721C(v0 + *(v13 + 32), v12, qword_27E1A13B8, &qword_23BBFE2E8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    v15 = qword_27E1A13B8;
    v16 = &qword_23BBFE2E8;
LABEL_5:
    sub_23B9846E8(v12, v15, v16);
    return 0;
  }

  MEMORY[0x23EEB48C0](v14);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4))
  {
    sub_23B9846E8(v9, &qword_27E199760, &unk_23BBE9220);
    v15 = &qword_27E198860;
    v16 = &qword_23BBEE680;
    goto LABEL_5;
  }

  sub_23BB3F9B0(v9, v6);
  sub_23B9846E8(v9, &qword_27E199760, &unk_23BBE9220);
  sub_23B9846E8(v12, &qword_27E198860, &qword_23BBEE680);
  sub_23BB3F9B0(v6, v3);
  sub_23BB3FA18(v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v19 = &v3[*(type metadata accessor for Subscription(0) + 20)];
  if (v19[8] == 2)
  {
    v17 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  }

  else
  {
    v17 = *v19;
  }

  sub_23BB3FA18(v3, type metadata accessor for SubscriptionStoreControlOption);
  return v17;
}

uint64_t sub_23BB3873C(__int128 *a1)
{
  sub_23BB38400();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698, &qword_23BBFE708);
  return sub_23BBDBF78();
}

uint64_t sub_23BB387AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8, &qword_23BBFE2E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for SubscriptionPickerProperties(0);
  sub_23B9A721C(v0 + *(v5 + 32), v4, qword_27E1A13B8, &qword_23BBFE2E8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  v7 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v6);
  sub_23B9846E8(v4, qword_27E1A13B8, &qword_23BBFE2E8);
  if (EnumTagSinglePayload == 1)
  {
    v9 = *(v0 + 16);
    v10 = *(v0 + 3);
    v20 = *v0;
    v21 = v9;
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698, &qword_23BBFE708);
    sub_23BBDBF68();
    v11 = v19;
    if (v19 == 255)
    {
      v7 = 0;
    }

    else
    {
      v12 = v17;
      v13 = v18;
      v14 = *(v1 + *(v5 + 24));
      sub_23B9BDCD4(v17, v18, v19 & 1);
      v7 = sub_23BB2F128(v14, sub_23BB3B360, 0, v12, v13, v11 & 1);
      sub_23BA0D94C(v12, v13, v11);
    }
  }

  return v7 & 1;
}

void sub_23BB38958(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23BBDA928();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 1) == 0)
  {
    v14 = *(type metadata accessor for SubscriptionPickerVariadicContainer(0, a4, a5, v11) + 48);
    v27[1] = a3;
    v15 = a3 + v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    if (*(v15 + 33) == 1)
    {
      sub_23BA0DE40(*v15, v17, v18, v19, v20);
      if (v17)
      {
LABEL_4:
        v30 = v16;
        v31 = v17;
        v32 = v18;
        v33 = v19;
        v34 = v20;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160, &unk_23BBEBF40);
        MEMORY[0x23EEB48C0](v28, v21);
        v22 = v28[0];
        v23 = v28[1];
        v24 = v29;

        sub_23BA0D94C(v18, v19, v20);
LABEL_7:
        sub_23BB38BB8(v22, v23, v24);
        sub_23BA0D94C(v22, v23, v24);
        return;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v25 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      v26 = sub_23BB32398(v16, v17, v18, v19, v20, 0, sub_23BA0D8E4);
      (*(v10 + 8))(v13, v9, v26);
      v16 = v30;
      v17 = v31;
      v18 = v32;
      v19 = v33;
      LOBYTE(v20) = v34;
      if (v31)
      {
        goto LABEL_4;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = -1;
    goto LABEL_7;
  }
}

double sub_23BB38BB8(uint64_t a1, uint64_t a2, char a3)
{
  sub_23BBD9CA8();
  sub_23B9A8E74();
  sub_23BBD9CC8();
  sub_23BBDA3B8();

  return result;
}

uint64_t sub_23BB38C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1650, &qword_23BBFE6F0);
  sub_23BBDA358();
  v3 = sub_23BBDD648();
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - v4;
  v5 = sub_23BBDA988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BB40BDC(&qword_27E1A1658, MEMORY[0x277CE0070], MEMORY[0x277CE0078]);
  v30 = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  v41 = WitnessTable;
  v42 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650, &qword_23BBFE6F0, MEMORY[0x277CE04A0]);
  v39 = v12;
  v40 = v13;
  v38 = swift_getWitnessTable();
  v31 = v3;
  v14 = swift_getWitnessTable();
  v43[0] = v5;
  v43[1] = v3;
  v43[2] = v9;
  v43[3] = v14;
  v15 = type metadata accessor for SubscriptionStorePickerControlWrapper(0, v43);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  v22 = type metadata accessor for SubscriptionPickerProperties(0);
  (*(v6 + 16))(v8, v2 + *(v22 + 20), v5);
  v23 = v32;
  v24 = v33;
  sub_23BB39A10(v33, v32);
  v25 = *(v2 + 16);
  v26 = *(v2 + 3);
  LOBYTE(v24) = *(v2 + *(v24 + 40));
  v35 = *v2;
  v36 = v25;
  v37 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698, &qword_23BBFE708);
  sub_23BBDBF88();
  sub_23BA092A4(v23, v24, v43, v5, v31, v30, v14, v18);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v27 = *(v16 + 8);
  v27(v18, v15);
  sub_23B9D2D88();
  return (v27)(v21, v15);
}

uint64_t sub_23BB3913C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v55 = sub_23BBDA358();
  v4 = sub_23BBDD648();
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - v5;
  sub_23BBDB038();
  v56 = v4;
  v6 = sub_23BBDA358();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v46 - v9;
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_23BBDD648();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v52 = &v46 - v17;
  v18 = v2 + *(a1 + 44);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_23BBDD5A8();
    v33 = sub_23BBDB338();
    v46 = v10;
    v34 = v33;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v19, 0);
    (*(v11 + 8))(v13, v46);
    if ((v74 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v6);
    v32 = *(a1 + 24);
    v35 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
    v72 = v32;
    v73 = v35;
    WitnessTable = swift_getWitnessTable();
    v36 = swift_getWitnessTable();
    v37 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    v69 = v36;
    v70 = v37;
    swift_getWitnessTable();
    goto LABEL_6;
  }

  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = v47;
  sub_23BB3A648(a1, v47);
  v21 = sub_23BBDB388();
  v46 = *(a1 + 24);
  v22 = v46;
  v23 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
  v61 = v22;
  v62 = v23;
  v60 = swift_getWitnessTable();
  v24 = v56;
  v25 = swift_getWitnessTable();
  v26 = v51;
  sub_23BB2FA54(v21, 0, 1, v24, v25, v27);
  (*(v49 + 8))(v20, v24);
  v28 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v58 = v25;
  v59 = v28;
  swift_getWitnessTable();
  v29 = v50;
  sub_23B9D2D88();
  v30 = v48;
  v31 = *(v48 + 8);
  v31(v26, v6);
  sub_23B9D2D88();
  v31(v29, v6);
  v32 = v46;
  (*(v30 + 32))(v15, v26, v6);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v6);
LABEL_6:
  v38 = v52;
  sub_23BB2F9F4(v15, v6);
  v39 = *(v53 + 8);
  v40 = v15;
  v41 = v54;
  v39(v40, v54);
  v42 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
  v67 = v32;
  v68 = v42;
  v66 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v44 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v64 = v43;
  v65 = v44;
  v63 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v39)(v38, v41);
}

uint64_t sub_23BB398E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v18 = type metadata accessor for SubscriptionStorePickerFeatureContainer(0, v20);
  (*(*(a5 - 8) + 32))(a9 + *(v18 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a9 + *(v18 + 72), a3, a6);
}

uint64_t sub_23BB39A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v4 = *(a1 + 16);
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v61 = v4;
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v5 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_23BBDC078();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v57 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  v74 = v6;
  v8 = sub_23BBDA358();
  v66 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v57 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1650, &qword_23BBFE6F0);
  v73 = v8;
  v10 = sub_23BBDA358();
  v68 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v57 - v13;
  MEMORY[0x28223BE20](v14);
  v65 = &v57 - v15;
  v16 = sub_23BBDA928();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_23BBDD648();
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v71 = &v57 - v22;
  v23 = *(a1 + 44);
  v62 = v2;
  v24 = v2 + v23;
  v25 = *v24;
  if (*(v24 + 8) == 1)
  {
    if ((v25 & 1) == 0)
    {
LABEL_3:
      v26 = v69;
      __swift_storeEnumTagSinglePayload(v69, 1, 1, v10);
      v27 = swift_getWitnessTable();
      v28 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
      v87 = v27;
      v88 = v28;
      v29 = swift_getWitnessTable();
      v30 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650, &qword_23BBFE6F0, MEMORY[0x277CE04A0]);
      v85 = v29;
      v86 = v30;
      swift_getWitnessTable();
      goto LABEL_8;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v31 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v25, 0);
    (*(v17 + 8))(v19, v16);
    if (v89 != 1)
    {
      goto LABEL_3;
    }
  }

  v32 = sub_23BBDC2A8();
  MEMORY[0x28223BE20](v32);
  v33 = *(a1 + 24);
  *(&v57 - 4) = v61;
  *(&v57 - 3) = v33;
  *(&v57 - 2) = v62;
  sub_23B9BE15C(v5);
  v34 = v58;
  sub_23BBDC068();
  v35 = v74;
  v36 = swift_getWitnessTable();
  v37 = v63;
  v38 = sub_23BAB22C4(v35, v36);
  (*(v60 + 8))(v34, v35, v38);
  if (qword_27E197640 != -1)
  {
    swift_once();
  }

  v39 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  v78 = v36;
  v79 = v39;
  v40 = v73;
  v41 = swift_getWitnessTable();
  v42 = v64;
  sub_23BBDB708();
  (*(v66 + 8))(v37, v40);
  v43 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650, &qword_23BBFE6F0, MEMORY[0x277CE04A0]);
  v76 = v41;
  v77 = v43;
  swift_getWitnessTable();
  v44 = v65;
  sub_23B9D2D88();
  v45 = v68;
  v46 = *(v68 + 8);
  v46(v42, v10);
  v47 = v67;
  sub_23B9D2D88();
  v46(v44, v10);
  v26 = v69;
  (*(v45 + 32))(v69, v47, v10);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v10);
LABEL_8:
  v48 = v71;
  sub_23BB2F9F4(v26, v10);
  v49 = *(v72 + 8);
  v50 = v26;
  v51 = v70;
  v49(v50, v70);
  v52 = swift_getWitnessTable();
  v53 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  v83 = v52;
  v84 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650, &qword_23BBFE6F0, MEMORY[0x277CE04A0]);
  v81 = v54;
  v82 = v55;
  v80 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v49)(v48, v51);
}

uint64_t sub_23BB3A3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  sub_23BBDA358();
  v5 = sub_23BBDD648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v13 = type metadata accessor for SubscriptionPickerVariadicContainer(0, a2, a3, v12);
  sub_23BB3A648(v13, v8);
  v14 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
  v23[3] = a3;
  v23[4] = v14;
  v23[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88();
  v16 = *(v6 + 8);
  v16(v8, v5);
  KeyPath = swift_getKeyPath();
  (*(v6 + 16))(v8, v11, v5);
  v21 = KeyPath;
  v22 = 0;
  v23[0] = v8;
  v23[1] = &v21;

  v20[0] = v5;
  v20[1] = &type metadata for PickerOptionFooterContent;
  v19[1] = WitnessTable;
  v19[2] = sub_23BB3F68C();
  sub_23BB6739C(v23, 2, v20);

  v16(v11, v5);
  j__swift_release(v21);
  return (v16)(v8, v5);
}

uint64_t sub_23BB3A648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v42 = a1;
  v4 = *(a1 + 16);
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v6 = sub_23BBDA358();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23BBDD648();
  v44 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v43 = &v37 - v21;
  v22 = type metadata accessor for SubscriptionPickerProperties(0);
  v23 = v3;
  sub_23B9A721C(v3 + *(v22 + 28), v13, &qword_27E199760, &unk_23BBE9220);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_23B9846E8(v13, &qword_27E199760, &unk_23BBE9220);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v6);
    v24 = *(v42 + 24);
    v25 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
    v51 = v24;
    v52 = v25;
    swift_getWitnessTable();
  }

  else
  {
    sub_23BB3F958(v13, v16);
    v26 = v42;
    v27 = *(v23 + *(v42 + 36));
    v28 = v38;
    v27(v16);
    v24 = *(v26 + 24);
    sub_23BA44958(v4, v24);
    (*(v39 + 8))(v28, v4);
    sub_23BB3FA18(v16, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
    v29 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
    v46 = v24;
    v47 = v29;
    swift_getWitnessTable();
    v30 = v40;
    sub_23B9D2D88();
    v31 = v41;
    v32 = *(v41 + 8);
    v32(v8, v6);
    sub_23B9D2D88();
    v32(v30, v6);
    (*(v31 + 32))(v19, v8, v6);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
  }

  v33 = v43;
  sub_23BB2F9F4(v19, v6);
  v34 = *(v44 + 8);
  v34(v19, v17);
  v35 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
  v49 = v24;
  v50 = v35;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v34)(v33, v17);
}

__n128 sub_23BB3AC20@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160, &unk_23BBEBF40);
  sub_23BBDC118();
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  a1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_23BB3AC90@<X0>(uint64_t a2@<X8>)
{
  v13[1] = a2;
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1810, &qword_23BBFEB50);
  v2 = sub_23BBDA358();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  swift_getKeyPath();
  sub_23BB3AC20(&v17);
  v14 = v17;
  v15 = v18;
  v16 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB748();

  v22 = v17.n128_u64[0];
  sub_23BA6EA10(&v22);

  v20 = v18;
  v21 = v19;
  sub_23B9846E8(&v20, &qword_27E19B148, &unk_23BBFE400);
  v10 = sub_23B97B518(&qword_27E1A1818, &qword_27E1A1810, &qword_23BBFEB50, MEMORY[0x277CE0868]);
  v13[2] = WitnessTable;
  v13[3] = v10;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v11 = *(v3 + 8);
  v11(v5, v2);
  sub_23B9D2D88();
  return (v11)(v8, v2);
}

double sub_23BB3AF24@<D0>(uint64_t a1@<X8>)
{
  sub_23BB3FA6C();
  sub_23BBDA958();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_23BB3AF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v1;
  v9 = *(a1 + 32);
  sub_23B9A721C(v8, v7, &qword_27E1988A8, &unk_23BBE60A0);
  return sub_23BB3AFD4(v8, v2, v3, v4, v5);
}

uint64_t sub_23BB3B058()
{
  v0 = sub_23BBDA308();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDA6B8();
  v6 = sub_23BBDA2E8();
  (*(v2 + 8))(v5, v0);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_23BB3F77C();
  sub_23BBDA958();
  return v8[15];
}

double sub_23BB3B15C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_23BB3B168()
{
  v1 = v0;
  v2 = type metadata accessor for SubscriptionPickerProperties(0);
  MEMORY[0x28223BE20](v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  LOBYTE(v6) = *(v0 + 16);
  v8 = *(v0 + 24);
  v17 = *v0;
  v18 = v6;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698, &qword_23BBFE708);
  sub_23BBDBF68();
  v9 = v16;
  if (v16 == 255)
  {
    v13 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  }

  else
  {
    v10 = v15[1];
    v11 = v15[2];
    sub_23BB3F9B0(v1, v4);
    v12 = *&v4[*(v2 + 24)];

    sub_23BB3FA18(v4, type metadata accessor for SubscriptionPickerProperties);
    sub_23B9BDCD4(v10, v11, v9 & 1);
    sub_23BB2E7AC(v12, sub_23BB3B360, 0, v10, v11, v9 & 1, v7);

    sub_23BA0D94C(v10, v11, v9);
  }

  return sub_23BB3F6E0(v7, v1 + *(v2 + 28));
}

double sub_23BB3B360@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = sub_23BB420F0;
  a2[2] = 0;
  a2[3] = sub_23BB420E8;
  a2[4] = 0;
  a2[5] = sub_23BB420F4;
  a2[6] = 0;

  return result;
}

uint64_t sub_23BB3B3D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = OUTLINED_FUNCTION_12_3();
  v9 = v4 + *(type metadata accessor for Subscription(v8) + 20);
  v10 = *(v9 + 8);
  if (v10 != 2)
  {
    if ((a4 & 1) == 0)
    {
      return (*v9 == a2) & (a3 ^ v10 ^ 1);
    }

    return 0;
  }

  v11 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  if ((a4 & 1) == 0)
  {

    return 0;
  }

  if (v11 == a2 && v12 == a3)
  {

    return 1;
  }

  else
  {
    v14 = sub_23BBDDA88();

    return v14 & 1;
  }
}

uint64_t sub_23BB3B4AC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = ~a4;
  v9 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if (!v8)
  {
    v18 = type metadata accessor for SubscriptionPickerProperties(0);
    sub_23BAC7914(*(a1 + *(v18 + 24)), v14);
    v19 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v19) == 1)
    {
      sub_23B9846E8(v14, &qword_27E199760, &unk_23BBE9220);
      v15 = 0;
      v16 = 0;
      v17 = -1;
    }

    else
    {
      sub_23BB3F9B0(v14, v11);
      sub_23BB3FA18(v14, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
      v20 = &v11[*(type metadata accessor for Subscription(0) + 20)];
      v21 = v20[8];
      if (v21 == 2)
      {
        v15 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v16 = v22;
        sub_23BB3FA18(v11, type metadata accessor for SubscriptionStoreControlOption);
        v17 = 1;
      }

      else
      {
        v15 = *v20;
        v16 = v21 & 1;
        sub_23BB3FA18(v11, type metadata accessor for SubscriptionStoreControlOption);
        v17 = 0;
      }
    }
  }

  v23 = *(a1 + 16);
  v24 = *(a1 + 3);
  v28 = *a1;
  v29 = v23;
  v30 = v24;
  v26[1] = v15;
  v26[2] = v16;
  v27 = v17;
  sub_23BA0DC14(a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698, &qword_23BBFE708);
  return sub_23BBDBF78();
}

uint64_t sub_23BB3B728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v34 = a2;
  v35 = a3;
  v36 = a6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1618, &unk_23BBFE6D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E280, &qword_23BBF4A70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6A0, &unk_23BBFE6E0);
  v31 = type metadata accessor for SubscriptionStorePickerOption(255, a4, a5, v9);
  v10 = MEMORY[0x277D83980];
  sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0, &unk_23BBFE6E0, MEMORY[0x277D83980]);
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E288, &qword_23BC04490);
  v11 = sub_23BBDC1C8();
  v32 = sub_23B97B518(&qword_27E1A1620, &qword_27E1A1618, &unk_23BBFE6D0, v10);
  v42 = v33;
  v43 = &type metadata for SubscriptionStoreControlStyleConfiguration.Section.ID;
  v44 = v11;
  v45 = v32;
  v46 = sub_23BA94078();
  v12 = sub_23BBDC1A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v42 = a1;
  v19 = swift_allocObject();
  v20 = v30;
  v19[2] = a4;
  v19[3] = v20;
  v21 = v34;
  v22 = v35;
  v19[4] = a1;
  v19[5] = v21;
  v19[6] = v22;
  v23 = sub_23BB3EC4C();
  swift_bridgeObjectRetain_n();

  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = sub_23BB3ED00();
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v26 = swift_getWitnessTable();
  sub_23BB40BDC(&qword_27E1A1648, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section, &protocol conformance descriptor for SubscriptionStoreControlStyleConfiguration.Section);
  sub_23BBDC198();
  v37 = v26;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v27 = *(v13 + 8);
  v27(v15, v12);
  sub_23B9D2D88();
  return (v27)(v18, v12);
}

uint64_t sub_23BB3BAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a4;
  v31 = a3;
  v30 = a2;
  v33 = a7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E280, &qword_23BBF4A70);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6A0, &unk_23BBFE6E0);
  v12 = type metadata accessor for SubscriptionStorePickerOption(255, a5, a6, v11);
  v13 = sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0, &unk_23BBFE6E0, MEMORY[0x277D83980]);
  v49 = v10;
  v50 = MEMORY[0x277D837D0];
  v51 = v12;
  v52 = v13;
  v53 = MEMORY[0x277D837E0];
  v14 = sub_23BBDC1A8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E288, &qword_23BC04490);
  v16 = sub_23BBDC1C8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v28 - v21;
  v39 = a5;
  v40 = a6;
  v41 = a1;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v37 = a1;
  v35 = a1;
  v23 = sub_23BB3EC4C();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = sub_23BB3ED00();
  sub_23BB3C3A8(sub_23BB3EDB4, v38, sub_23BB3EDC4, v36, sub_23BB3EDCC, v34, v29, v14, v15, v23, v24, v25);
  v45 = v23;
  v46 = v24;
  v47 = v25;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v26 = *(v17 + 8);
  v26(v19, v16);
  sub_23B9D2D88();
  return (v26)(v22, v16);
}

uint64_t sub_23BB3BE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a3;
  v28 = a4;
  v31 = a7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6A0, &unk_23BBFE6E0);
  v12 = type metadata accessor for SubscriptionStorePickerOption(255, a5, a6, v11);
  v29 = sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0, &unk_23BBFE6E0, MEMORY[0x277D83980]);
  v33 = v30;
  v34 = MEMORY[0x277D837D0];
  v35 = v12;
  v36 = v29;
  v37 = MEMORY[0x277D837E0];
  v13 = sub_23BBDC1A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v33 = *(a1 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(0) + 24));
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a6;
  v21 = v27;
  v22 = v28;
  v20[4] = a2;
  v20[5] = v21;
  v20[6] = v22;

  WitnessTable = swift_getWitnessTable();
  sub_23BB40BDC(&qword_27E19C6B8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option, &protocol conformance descriptor for SubscriptionStoreControlStyleConfiguration.Option);
  sub_23BBDC198();
  v32 = WitnessTable;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v24 = *(v14 + 8);
  v24(v16, v13);
  sub_23B9D2D88();
  return (v24)(v19, v13);
}

uint64_t sub_23BB3C118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[1] = a6;
  v11 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SubscriptionStorePickerOption(0, a4, a5, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v24 - v20;
  sub_23BB3F9B0(a1, v13);
  SubscriptionStorePickerOption.init(_:label:)(v13, a2, a3, a4, a5, v18);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v22 = *(v16 + 8);

  v22(v18, v15);
  sub_23B9D2D88();
  return (v22)(v21, v15);
}

uint64_t sub_23BB3C3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x28223BE20](a1);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v15(v14);
  a5(v16);
  return sub_23BBDC1B8();
}

uint64_t sub_23BB3C50C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v40 = a1[2];
  v3 = v40;
  v41 = v2;
  v42 = v5;
  v43 = v4;
  v44 = v6;
  v45 = v7;
  v21 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation(255, &v40);
  v40 = v3;
  v41 = v2;
  v42 = v5;
  v43 = v4;
  v44 = v6;
  v45 = v7;
  v20 = type metadata accessor for SubscriptionStorePickerFeatureContainer.TraitImplementation(255, &v40);
  v8 = sub_23B9C7F48();
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v40 = &type metadata for StoreKitViewsFeature;
  v41 = v21;
  v42 = v20;
  v43 = v8;
  v44 = WitnessTable;
  v45 = v18;
  v9 = type metadata accessor for FeatureView(0, &v40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  v33 = v3;
  v34 = v2;
  v35 = v5;
  v36 = v4;
  v37 = v6;
  v38 = v7;
  v39 = v22;
  v25 = v3;
  v26 = v2;
  v27 = v5;
  v28 = v4;
  v29 = v6;
  v30 = v7;
  v31 = v22;
  sub_23BBC691C(0, sub_23BB40AF0, v32, sub_23BB40B08, v24, v21, v20);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v16 = *(v10 + 8);
  v16(v12, v9);
  sub_23B9D2D88();
  return (v16)(v15, v9);
}

uint64_t sub_23BB3C7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v48 = a6;
  v57 = a7;
  v56 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v55 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v14);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v20;
  v58 = v21;
  v59 = v22;
  v60 = v23;
  v61 = v24;
  v25 = v24;
  v62 = v26;
  v63 = v27;
  v28 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation(0, &v58);
  v53 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v49 = &v46 - v33;
  v50 = a2;
  (*(v17 + 16))(v20, a1, a2, v32);
  v58 = a2;
  v59 = a3;
  v47 = a3;
  v60 = a4;
  v61 = v25;
  v34 = v25;
  v35 = v48;
  v62 = a5;
  v63 = v48;
  v36 = type metadata accessor for SubscriptionStorePickerFeatureContainer(0, &v58);
  v37 = v52;
  (*(v54 + 16))(v52, a1 + *(v36 + 68), a3);
  v38 = a1 + *(v36 + 72);
  v39 = v55;
  (*(v56 + 16))(v55, v38, a4);
  v40 = sub_23BB3C4E8(v36);
  *(&v45 + 1) = a5;
  *&v45 = v34;
  sub_23BB3CB78(v51, v37, v39, v40, v41 & 1, v50, v47, a4, v30, v45, v35);
  swift_getWitnessTable();
  v42 = v49;
  sub_23B9D2D88();
  v43 = *(v53 + 8);
  v43(v30, v28);
  sub_23B9D2D88();
  return (v43)(v42, v28);
}

uint64_t sub_23BB3CB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v23[0] = a6;
  v23[1] = a7;
  v23[2] = a8;
  v24 = a10;
  v25 = a11;
  v19 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation(0, v23);
  (*(*(a7 - 8) + 32))(a9 + v19[17], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v19[18], a3, a8);
  v20 = a9 + v19[19];
  *v20 = a4;
  *(v20 + 8) = a5 & 1;
  v21 = a9 + v19[20];
  result = swift_getKeyPath();
  *v21 = result;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_23BB3CCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v45 = a6;
  v47 = a1;
  v50 = a7;
  v49 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v16;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v41 = v19;
  v42 = v20;
  v21 = v20;
  v55 = v22;
  v56 = v23;
  v24 = type metadata accessor for SubscriptionStorePickerFeatureContainer.TraitImplementation(0, &v51);
  v46 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v41 - v29;
  v31 = *(v13 + 16);
  v32 = v16;
  v33 = v47;
  v43 = a2;
  v31(v32, v47, a2, v28);
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = v21;
  v34 = v45;
  v55 = a5;
  v56 = v45;
  v35 = type metadata accessor for SubscriptionStorePickerFeatureContainer(0, &v51);
  v36 = v48;
  (*(v49 + 16))(v48, v33 + *(v35 + 68), a3);
  v37 = sub_23BB3C4E8(v35);
  sub_23BB3CFE4(v44, v36, v37, v38 & 1, v43, a3, v41, v42, v26, a5, v34);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v39 = *(v46 + 8);
  v39(v26, v24);
  sub_23B9D2D88();
  return (v39)(v30, v24);
}

uint64_t sub_23BB3CFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  v22[4] = a10;
  v22[5] = a11;
  v19 = type metadata accessor for SubscriptionStorePickerFeatureContainer.TraitImplementation(0, v22);
  result = (*(*(a6 - 8) + 32))(a9 + *(v19 + 68), a2, a6);
  v21 = a9 + *(v19 + 72);
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  return result;
}

uint64_t sub_23BB3D0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  *&v31 = a1 + 40;
  v35 = *(a1 + 16);
  sub_23BBDD648();
  swift_getTupleTypeMetadata3();
  v4 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_23BBDC078();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - v6;
  v7 = *(a1 + 32);
  sub_23BBDA358();
  v8 = sub_23BBDD648();
  v34 = *(a1 + 48);
  v48 = v34;
  v30 = MEMORY[0x277CDFAD8];
  v47 = swift_getWitnessTable();
  v24 = v8;
  v25 = swift_getWitnessTable();
  v26 = type metadata accessor for MagicPocketSetterModifier(255, v8, v25, v9);
  v10 = sub_23BBDA358();
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  *&v16 = v7;
  *(&v16 + 1) = *v31;
  v31 = v16;
  v41 = v35;
  v42 = v16;
  v43 = v34;
  v44 = v2;
  v17 = v2;
  sub_23B9BE15C(v4);
  v18 = v27;
  sub_23BBDC068();
  v37 = v35;
  v38 = v31;
  v39 = v34;
  v40 = v17;
  v19 = swift_getWitnessTable();
  sub_23BBC5940(sub_23BB41A28, v36, v5, v24, v19);
  (*(v32 + 8))(v18, v5);
  v20 = swift_getWitnessTable();
  v45 = v19;
  v46 = v20;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v21 = *(v29 + 8);
  v21(v12, v10);
  sub_23B9D2D88();
  return (v21)(v15, v10);
}

uint64_t sub_23BB3D564@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a7;
  v50 = a8;
  v43 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v41 = &v40 - v16;
  v17 = sub_23BBDD648();
  v46 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v47 = &v40 - v21;
  v22 = *(a2 - 1);
  MEMORY[0x28223BE20](v23);
  v48 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v51 = &v40 - v26;
  sub_23B9D2D88();
  v27 = a2;
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v49 = a5;
  v65 = a6;
  v66 = v45;
  v28 = a1 + *(type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation(0, &v61) + 76);
  v45 = *v28;
  v44 = *(v28 + 8);
  sub_23B9B6E40();
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  LOBYTE(a4) = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(&v58, &v61);
  sub_23B97B104(&v58);
  sub_23B97B104(&v61);
  if (a4)
  {
    v29 = v41;
    v30 = a6;
    sub_23B9D2D88();
    v31 = v42;
    sub_23B9D2D88();
    v32 = v43;
    (*(v43 + 8))(v29, a3);
    (*(v32 + 32))(v19, v31, a3);
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v30 = a6;
  }

  __swift_storeEnumTagSinglePayload(v19, v33, 1, a3);
  v34 = v47;
  sub_23BB2F9F4(v19, a3);
  v35 = v46;
  v36 = *(v46 + 8);
  v36(v19, v17);
  v37 = v48;
  (*(v22 + 16))(v48, v51, v27);
  v56 = v45;
  v57 = v44;
  v61 = v37;
  v62 = &v56;
  (*(v35 + 16))(v19, v34, v17);
  v63 = v19;
  *&v58 = v27;
  *(&v58 + 1) = MEMORY[0x277CE1180];
  *&v59 = v17;
  v53 = v49;
  v54 = MEMORY[0x277CE1170];
  v52 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_23BB6739C(&v61, 3, &v58);
  v36(v34, v17);
  v38 = *(v22 + 8);
  v38(v51, v27);
  v36(v19, v17);
  return (v38)(v37, v27);
}

uint64_t sub_23BB3DA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a8;
  v40 = a2;
  v14 = sub_23BBDA358();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v35 = &v35 - v18;
  v19 = sub_23BBDD648();
  v38 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v37 = &v35 - v23;
  v48[0] = v40;
  v48[1] = a3;
  v48[2] = a4;
  v49 = a5;
  v40 = a6;
  v50 = a6;
  v51 = a7;
  v24 = a7;
  v25 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation(0, v48);
  sub_23B9B6E40();
  if ((v49 - 1) > 1)
  {
    sub_23B9C9290(v48);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v14);
    v46 = v40;
    v47 = v24;
    v28 = v24;
    swift_getWitnessTable();
  }

  else
  {
    v26 = a4;
    v27 = v40;
    MEMORY[0x23EEB43C0](a1 + *(v25 + 72), a3, v26, v40);
    v41 = v27;
    v42 = v24;
    v28 = v24;
    swift_getWitnessTable();
    v29 = v35;
    sub_23B9D2D88();
    v30 = v36;
    v31 = *(v36 + 8);
    v31(v16, v14);
    sub_23B9D2D88();
    v31(v29, v14);
    (*(v30 + 32))(v21, v16, v14);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v14);
  }

  v32 = v37;
  sub_23BB2F9F4(v21, v14);
  v33 = *(v38 + 8);
  v33(v21, v19);
  v44 = v40;
  v45 = v28;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v33)(v32, v19);
}