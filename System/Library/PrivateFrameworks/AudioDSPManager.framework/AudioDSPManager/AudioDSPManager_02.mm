uint64_t sub_223B6B734@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_223B6B910(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

BOOL sub_223B6B7A8(unsigned __int16 a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 1)
  {
    return a6 == 1;
  }

  if (a6 == 1 || ((a4 ^ a1) & 0x101) != 0)
  {
    return 0;
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    return a2 == a5 && a3 == a6 || (sub_223BF4DAC() & 1) != 0;
  }

  else
  {
    return !a6;
  }
}

unint64_t sub_223B6B868()
{
  result = qword_27D0B1590;
  if (!qword_27D0B1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1590);
  }

  return result;
}

unint64_t sub_223B6B8BC()
{
  result = qword_27D0B1598;
  if (!qword_27D0B1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1598);
  }

  return result;
}

uint64_t sub_223B6B910(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15A0, &qword_223BF9748);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15A8, &qword_223BF9750);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15B0, &qword_223BF9758);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B6BDCC();
  v11 = v26;
  sub_223BF4ECC();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_223BF4CCC();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_223B7F34C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_223BF4ACC();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15C0, &qword_223BF9760);
    *v19 = &type metadata for AssetSpecificity;
    sub_223BF4C4C();
    sub_223BF4ABC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_223B6BE20();
    sub_223BF4C3C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_223B6BE74();
    sub_223BF4C3C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v31 & 1;
}

unint64_t sub_223B6BDCC()
{
  result = qword_27D0B15B8;
  if (!qword_27D0B15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15B8);
  }

  return result;
}

unint64_t sub_223B6BE20()
{
  result = qword_27D0B15C8;
  if (!qword_27D0B15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15C8);
  }

  return result;
}

unint64_t sub_223B6BE74()
{
  result = qword_27D0B15D0;
  if (!qword_27D0B15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15D0);
  }

  return result;
}

unint64_t sub_223B6BEFC()
{
  result = qword_27D0B15F0;
  if (!qword_27D0B15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15F0);
  }

  return result;
}

unint64_t sub_223B6BF54()
{
  result = qword_27D0B15F8;
  if (!qword_27D0B15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B15F8);
  }

  return result;
}

unint64_t sub_223B6BFAC()
{
  result = qword_27D0B1600;
  if (!qword_27D0B1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1600);
  }

  return result;
}

unint64_t sub_223B6C004()
{
  result = qword_27D0B1608;
  if (!qword_27D0B1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1608);
  }

  return result;
}

unint64_t sub_223B6C05C()
{
  result = qword_27D0B1610;
  if (!qword_27D0B1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1610);
  }

  return result;
}

unint64_t sub_223B6C0B4()
{
  result = qword_27D0B1618;
  if (!qword_27D0B1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1618);
  }

  return result;
}

unint64_t sub_223B6C10C()
{
  result = qword_27D0B1620;
  if (!qword_27D0B1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1620);
  }

  return result;
}

uint64_t sub_223B6C1F0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_223BF48DC();
  if (!v19)
  {
    return sub_223BF46CC();
  }

  v41 = v19;
  v45 = sub_223BF4B6C();
  v32 = sub_223BF4B7C();
  sub_223BF4B1C();
  result = sub_223BF48CC();
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
      v22 = sub_223BF499C();
      v23 = v14;
      v24 = v14;
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
      sub_223BF4B5C();
      result = sub_223BF48EC();
      ++v21;
      v14 = v24;
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

uint64_t sub_223B6C614(uint64_t a1, uint64_t a2)
{
  sub_223BF471C();
  swift_getWitnessTable();
  if ((sub_223BF494C() & 1) == 0)
  {
    return a1;
  }

  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

uint64_t sub_223B6C6E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v23 = a7;
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v15;
  v16 = sub_223BF471C();

  WitnessTable = swift_getWitnessTable();
  v18 = v24;
  v19 = sub_223B6C1F0(a1, a2, v16, a5, a6, WitnessTable, v23, v14);

  if (v18)
  {
    return (*(v12 + 32))(v22, v14, a6);
  }

  else
  {
    return sub_223B6C614(v19, a5);
  }
}

uint64_t sub_223B6C858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223B6C610();
  *a1 = result;
  return result;
}

uint64_t sub_223B6C890@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223B6C884();
  *a1 = result;
  return result;
}

uint64_t (*sub_223B6C8C4(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_223B6C998(v7, *a2, *v3, *(a3 + 16));
  return sub_223B6C950;
}

void sub_223B6C950(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_223B6C998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v5 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_223BF476C();
  return sub_223B6CA6C;
}

void sub_223B6CA6C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void *sub_223B6CB58@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_223B6CB70(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_223B6CB94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_223B6CBF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_223B6D2D0(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_223B6CC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_223BF46BC();

  return sub_223B6C614(v4, a3);
}

uint64_t sub_223B6CCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_223BF4E8C();
  sub_223BF473C();
  return sub_223BF4EBC();
}

uint64_t sub_223B6CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_223BF4E8C();
  sub_223B6CCB0(v7, *v3, *(a2 + 16), v5);
  return sub_223BF4EBC();
}

uint64_t sub_223B6CDA8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_223B6CE60(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0B1628, &qword_223BF9C48);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t sub_223B6CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_223BF44EC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_223BF49BC();
  result = sub_223BF44EC();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_223B6CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_223B6CE60(a3, a3);
  v5 = *(a3 - 8);
  swift_allocObject();
  sub_223BF469C();
  (*(v5 + 16))(v6, a1, a3);
  sub_223BF471C();
  v7 = sub_223BF46BC();

  return v7;
}

uint64_t sub_223B6D09C(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_223BF471C();
  sub_223B6CE60(a3, a3);
  v5 = *(a3 - 8);
  swift_allocObject();
  sub_223BF469C();
  (*(v5 + 16))(v6, a1, a3);
  swift_getWitnessTable();
  sub_223BF49AC();

  return v8;
}

uint64_t sub_223B6D1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_223BF44EC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_223B6D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_223B6D32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_223BF46CC();
  v5 = sub_223B6CFA0(a1, v4, a2);

  return v5;
}

uint64_t sub_223B6D384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_223B6D32C(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_223B6D3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NonEmptyArray(255, a2, a3, a4);
  type metadata accessor for NonEmptyArray(0, v5, v6, v7);

  swift_getWitnessTable();
  sub_223BF496C();
  sub_223B6C6D4(a1, v5);
  sub_223BF4E5C();
  swift_getWitnessTable();
  sub_223BF465C();

  return v9;
}

uint64_t sub_223B6D4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_223B6D3B0(a1, *(a2 + 16), a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_223B6D544(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_223B6D580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_223B6CC74(*a1, *a2, *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_223B6D5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift32NotificationStreamBuilderOutcomeOyxq_G(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_223B6D618(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 2)
  {
    v1 = *result + 2;
  }

  if (v1 == 1)
  {
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(result);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_223B6D65C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v3 = *a1 + 2;
  }

  if (v3 == 1)
  {
    v4 = a1;

    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = a1;
    __swift_destroy_boxed_opaque_existential_0(a1);
LABEL_8:
    a1 = v4;
  }

  v5 = *(a2 + 40);
  if (v5 >= 2)
  {
    v5 = *a2 + 2;
  }

  if (v5 == 1)
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 40) = 1;
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    result = *a2;
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t sub_223B6D71C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223B6D758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_223B6D7A4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_223B6D7C0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

id sub_223B6D8B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteropNotificationStreamKeys();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_223B6D958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteropNotificationStreamKeys();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223B6D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_223B6D9E4(a5, a6);
  return 0;
}

uint64_t sub_223B6D9E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_223B6D9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR___ADMNotificationVendor_builder), *(v7 + OBJC_IVAR___ADMNotificationVendor_builder + 24));
  sub_223B547A8(a1, a2, v23);
  if (v24)
  {
    if (v24 == 1)
    {
      v15 = v23[0];
      *a7 = v23[0];
      v22[0] = v15;
      sub_223B6DC3C();
      swift_willThrowTypedImpl();
      sub_223B6D9E4(a5, a6);
    }

    else
    {
      sub_223B6D9E4(a5, a6);

      return 0;
    }

    return a7;
  }

  result = sub_223B6DC90(v23, v22);
  a7 = *(v7 + OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey);
  if (!__OFADD__(a7, 1))
  {
    *(v7 + OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey) = a7 + 1;
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    sub_223B57430(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B16C8, &qword_223BF9E80);
    swift_allocObject();

    sub_223B70CB8(a5, a6);
    v18 = sub_223B70B4C(&unk_223BF9E78, v17, a5, a6, v21);
    sub_223B6D9E4(a5, a6);

    v19 = OBJC_IVAR___ADMNotificationVendor_broadcasters;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v7 + v19);
    *(v7 + v19) = 0x8000000000000000;
    sub_223B706EC(v18, a7, isUniquelyReferenced_nonNull_native);
    *(v7 + v19) = v25;
    swift_endAccess();
    sub_223B6D9E4(a5, a6);

    __swift_destroy_boxed_opaque_existential_0(v22);
    return a7;
  }

  __break(1u);
  return result;
}

unint64_t sub_223B6DC3C()
{
  result = qword_27D0B16B8;
  if (!qword_27D0B16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B16B8);
  }

  return result;
}

uint64_t sub_223B6DC90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_223B6DCA8(unsigned __int8 *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_223B4D6F4;

  return v6(v3);
}

uint64_t sub_223B6DD9C(unsigned __int8 *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223B56CF0;

  return sub_223B6DCA8(a1, v4);
}

id sub_223B6DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR___ADMNotificationVendor_builder), *(v4 + OBJC_IVAR___ADMNotificationVendor_builder + 24));

  sub_223B547A8(a1, a2, v34);
  if (v35)
  {
    if (v35 == 1)
    {
      v10 = v34[0];
      v31[0] = v34[0];
      sub_223B6DC3C();
      swift_willThrowTypedImpl();

      v11 = type metadata accessor for ListenerRegistrationResults();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR___ADMListenerRegistrationResults_state];
      *v13 = v10;
      v13[16] = 0;
      v32.receiver = v12;
      v32.super_class = v11;

      v14 = objc_msgSendSuper2(&v32, sel_init);

LABEL_8:

      return v14;
    }

    v25 = type metadata accessor for ListenerRegistrationResults();
    v26 = objc_allocWithZone(v25);
    v27 = &v26[OBJC_IVAR___ADMListenerRegistrationResults_state];
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = 2;
    v33.receiver = v26;
    v33.super_class = v25;
    v24 = objc_msgSendSuper2(&v33, sel_init);
LABEL_7:
    v14 = v24;
    goto LABEL_8;
  }

  result = sub_223B6DC90(v34, v31);
  v16 = *(v4 + OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey);
  if (!__OFADD__(v16, 1))
  {
    *(v4 + OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey) = v16 + 1;
    v17 = swift_allocObject();
    *(v17 + 16) = &unk_223BF9E90;
    *(v17 + 24) = v9;
    sub_223B57430(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B16C8, &qword_223BF9E80);
    swift_allocObject();

    v18 = sub_223B70B4C(&unk_223BF9E98, v17, 0, 0, v30);

    v19 = OBJC_IVAR___ADMNotificationVendor_broadcasters;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v4 + v19);
    *(v4 + v19) = 0x8000000000000000;
    sub_223B706EC(v18, v16, isUniquelyReferenced_nonNull_native);
    *(v4 + v19) = v29;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0(v31);
    v21 = type metadata accessor for ListenerRegistrationResults();
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR___ADMListenerRegistrationResults_state];
    *v23 = v16;
    *(v23 + 1) = 0;
    v23[16] = 1;
    v28.receiver = v22;
    v28.super_class = v21;
    v24 = objc_msgSendSuper2(&v28, sel_init);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_223B6E14C(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_223B6E27C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ADMNotificationVendor_broadcasters;
  swift_beginAccess();
  v5 = sub_223B6F960(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + v4);
    v11 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_223B6FC78();
      v9 = v11;
    }

    sub_223B7057C(v7, v9);
    *(v2 + v4) = v9;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_223B70D7C();
    return swift_willThrowTypedImpl();
  }
}

uint64_t sub_223B6E368(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___ADMListenerRegistrationResults_state + 16) != 1)
  {
    return 0;
  }

  sub_223B6E27C(*(a1 + OBJC_IVAR___ADMListenerRegistrationResults_state));
  return 1;
}

id sub_223B6E4EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationVendor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223B6E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B6E610, a4, 0);
}

uint64_t sub_223B6E610()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_223BF47EC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_223B712D8();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  *(v1 + 184) = sub_223B6E728(0, 0, v2, &unk_223BFA058, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_223B6E728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_223B568F8(a3, v25 - v10, &qword_27D0B1060, &qword_223BF76B0);
  v12 = sub_223BF47EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_223B56960(v11, &qword_27D0B1060, &qword_223BF76B0);
  }

  else
  {
    sub_223BF47DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_223BF47AC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_223BF455C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_223B56960(a3, &qword_27D0B1060, &qword_223BF76B0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223B56960(a3, &qword_27D0B1060, &qword_223BF76B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_223B6EA48()
{
  v1 = v0[9];
  v2 = *(v1 + 168);
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 144), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_223BF481C();

  v6 = sub_223B712D8();
  v0[10] = v6;
  v7 = v0[9];
  v8 = v0[5];
  v9 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v8);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_223B6EC1C;

  return MEMORY[0x282200310](v0 + 17, v7, v6, v0 + 7, v8, v9);
}

uint64_t sub_223B6EC1C()
{
  v2 = *v1;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_223B6EF74;
  }

  else
  {
    v4 = sub_223B6ED30;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_223B6ED30()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v3 = v2[16];
    *(v0 + 112) = v3;
    if (v3)
    {
      *(v0 + 120) = *(*(v0 + 72) + 136);

      v9 = (v3 + *v3);
      v4 = swift_task_alloc();
      *(v0 + 128) = v4;
      *v4 = v0;
      v4[1] = sub_223B6F390;

      return v9();
    }

    else
    {
      v8 = *(v0 + 8);

      return v8();
    }
  }

  else
  {
    *(v0 + 137) = v1 & 1;
    v6 = v2[14];
    *(v0 + 96) = v2[15];

    v10 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_223B6F18C;

    return v10(v0 + 137);
  }
}

uint64_t sub_223B6EF74()
{
  v1 = v0[7];
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
  v2 = sub_223BF4D9C();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D0B0B70 != -1)
  {
    swift_once();
  }

  v5 = sub_223BF442C();
  __swift_project_value_buffer(v5, qword_27D0B97F8);
  v6 = v3;
  v7 = sub_223BF441C();
  v8 = sub_223BF49EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_223B4A000, v7, v8, "SingleListenerBroadcaster::exception while listening to notification provider: %@", v9, 0xCu);
    sub_223B56960(v10, &qword_27D0B16F0, &qword_223BFA068);
    MEMORY[0x223DF4FD0](v10, -1, -1);
    MEMORY[0x223DF4FD0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_223B6F18C()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_223B6F2B8, v1, 0);
}

uint64_t sub_223B6F2B8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[5];
  v4 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_223B6EC1C;

  return MEMORY[0x282200310](v0 + 17, v1, v2, v0 + 7, v3, v4);
}

uint64_t sub_223B6F390()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v5 = *v0;

  sub_223B6D9E4(v2, v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_223B6F4B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_223B4D8B8;

  return v6(a1);
}

unint64_t sub_223B6F5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_223BF4DAC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_223B6F668(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_223B7100C();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_223BF432C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_223B6F744(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_223B6F7B0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_223B6F81C(uint64_t a1, uint64_t a2)
{
  sub_223BF4E8C();
  sub_223BF458C();
  v4 = sub_223BF4EBC();

  return sub_223B6F5B0(a1, a2, v4);
}

unint64_t sub_223B6F894(uint64_t a1)
{
  sub_223BF4E8C();
  type metadata accessor for CFString();
  sub_223B7100C();
  sub_223BF433C();
  v2 = sub_223BF4EBC();

  return sub_223B6F668(a1, v2);
}

unint64_t sub_223B6F918(int a1)
{
  v3 = MEMORY[0x223DF36A0](*(v1 + 40), a1, 4);

  return sub_223B6F744(a1, v3);
}

unint64_t sub_223B6F960(uint64_t a1)
{
  v2 = sub_223BF4E7C();

  return sub_223B6F7B0(a1, v2);
}

id sub_223B6F9A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1188, &unk_223BF7C10);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_223B6FB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B8, &unk_223BFA070);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_223B6FC78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1268, &qword_223BF7CF0);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_223B6FDF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11A8, &unk_223BF7C30);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_223B6FF8C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v40 = a1;
  v41 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_223BF4BFC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v36 = v7;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = *(v10 + 64);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    v37 = v10;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = v24 | (v17 << 6);
        v28 = *(v10 + 56);
        v29 = *(*(v10 + 48) + 4 * v27);
        v30 = v38;
        v31 = *(v39 + 72) * v27;
        v32 = v40;
        v33 = v41;
        sub_223B568F8(v28 + v31, v38, v40, v41);
        v34 = v42;
        *(*(v42 + 48) + 4 * v27) = v29;
        v10 = v37;
        result = sub_223B56890(v30, *(v34 + 56) + v31, v32, v33);
      }

      while (v22);
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v23)
      {

        v7 = v36;
        v12 = v42;
        goto LABEL_21;
      }

      v26 = *(v14 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_223B701E0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v40 = a1;
  v41 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_223BF4BFC();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = (v10 + 64);
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, v37, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = (*(v10 + 48) + 16 * v25);
        v28 = *v27;
        v29 = v27[1];
        v30 = v38;
        v31 = *(v39 + 72) * v25;
        v33 = v40;
        v32 = v41;
        sub_223B568F8(*(v10 + 56) + v31, v38, v40, v41);
        v34 = v42;
        v35 = (*(v42 + 48) + v26);
        *v35 = v28;
        v35[1] = v29;
        sub_223B56890(v30, *(v34 + 56) + v31, v33, v32);

        v20 = v43;
      }

      while (v43);
    }

    v23 = v16;
    v12 = v42;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        goto LABEL_21;
      }

      v24 = *(v37 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_223B7042C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1298, &unk_223BFAF60);
  v2 = *v0;
  v3 = sub_223BF4BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_223B7057C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_223BF4A4C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_223BF4E7C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_223B706EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_223B6F960(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_223B59254(v14, a3 & 1);
      result = sub_223B6F960(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_223BF4DEC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_223B6FC78();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_223B70838(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_223B6F81C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_223B701E0(&qword_27D0B1278, &qword_223BF8500, &qword_27D0B1280, &unk_223BF7D00);
      goto LABEL_7;
    }

    sub_223B59790(v15, a4 & 1);
    v22 = sub_223B6F81C(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_223BF4DEC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500) - 8) + 72) * v12;

    return sub_223B71430(a1, v20);
  }

LABEL_13:
  sub_223B709C8(v12, a2, a3, a1, v18);
}

uint64_t sub_223B709C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  result = sub_223B56890(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_27D0B1278, &qword_223BF8500);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_223B70A84()
{
  v7[3] = &type metadata for CanonicalNotificationStreamBuilder;
  v7[4] = &off_283717958;
  v0 = type metadata accessor for NotificationVendor();
  v1 = objc_allocWithZone(v0);
  __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for CanonicalNotificationStreamBuilder);
  v6[3] = &type metadata for CanonicalNotificationStreamBuilder;
  v6[4] = &off_283717958;
  v2 = OBJC_IVAR___ADMNotificationVendor_broadcasters;
  *&v1[v2] = sub_223B7569C(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR___ADMNotificationVendor_nextAvailableListenerKey] = 0;
  sub_223B57430(v6, &v1[OBJC_IVAR___ADMNotificationVendor_builder]);
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v3;
}

void *sub_223B70B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  swift_defaultActor_initialize();
  v5[23] = 0;
  v5[14] = a1;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = a4;
  sub_223B57430(a5, (v5 + 18));
  v14 = sub_223BF47EC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;

  sub_223B70CB8(a3, a4);

  sub_223B6E728(0, 0, v13, &unk_223BFA030, v15);

  __swift_destroy_boxed_opaque_existential_0(a5);
  return v5;
}

uint64_t sub_223B70CB8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_223B70CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223B56CF0;

  return sub_223B6E14C(a1, v4);
}

unint64_t sub_223B70D7C()
{
  result = qword_27D0B16D8;
  if (!qword_27D0B16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B16D8);
  }

  return result;
}

unint64_t sub_223B70DF8()
{
  result = qword_27D0B16E0;
  if (!qword_27D0B16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B16E0);
  }

  return result;
}

unint64_t sub_223B7100C()
{
  result = qword_27D0B1190;
  if (!qword_27D0B1190)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1190);
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

uint64_t sub_223B710B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_223B4D6F4;

  return sub_223B6E570(a1, v4, v5, v6);
}

uint64_t sub_223B71168(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223B56CF0;

  return sub_223B6F4B8(a1, v4);
}

uint64_t sub_223B71220(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223B4D6F4;

  return sub_223B6F4B8(a1, v4);
}

unint64_t sub_223B712D8()
{
  result = qword_27D0B16E8;
  if (!qword_27D0B16E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B16C8, &qword_223BF9E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B16E8);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_223B7137C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_223B56CF0;

  return sub_223B6EA28(a1, v4, v5, v6);
}

uint64_t sub_223B71430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223B714A0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v70 = a6;
  v72 = a5;
  v73 = a4;
  v75 = a2;
  v76 = a1;
  v68 = a7;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 24);
  v67 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v10);
  v71 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v17;
  v69 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v63 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v63 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v65 = *v28;
      type metadata accessor for NonEmptyArray(255, a3, v32, v33);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v35 = v67;
      v36 = &v28[*(TupleTypeMetadata2 + 48)];
      v64 = *(v67 + 32);
      v37 = v64(v71, v36, v14);
      v66 = &v63;
      MEMORY[0x28223BE20](v37);
      *(&v63 - 8) = v8;
      *(&v63 - 7) = v14;
      v38 = v73;
      v39 = v74;
      *(&v63 - 6) = v73;
      *(&v63 - 5) = v39;
      v40 = *(a3 + 32);
      v41 = v72;
      *(&v63 - 4) = v40;
      *(&v63 - 3) = v41;
      v42 = v75;
      *(&v63 - 2) = v76;
      *(&v63 - 1) = v42;
      v43 = type metadata accessor for SearchDescription(0, v38, v14, v40);
      v44 = v77;
      v45 = sub_223B6C6E4(sub_223B72C34, (&v63 - 10), v65, a3, v43, v39, v41, v23);
      if (v44)
      {
        (*(v35 + 8))(v71, v14);

        return (*(v69 + 32))(v70, v23, v39);
      }

      else
      {
        v57 = v45;

        type metadata accessor for NonEmptyArray(255, v43, v58, v59);
        v60 = *(swift_getTupleTypeMetadata2() + 48);
        v61 = v68;
        *v68 = v57;
        v64(v61 + v60, v71, v14);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      (*(v9 + 32))(v12, v28, v8);
      v56 = v77;
      v76(v12, v20);
      (*(v9 + 8))(v12, v8);
      if (v56)
      {
        return (*(v69 + 32))(v70, v20, v74);
      }

      else
      {
        type metadata accessor for SearchDescription(0, v73, v14, *(a3 + 32));
        return swift_storeEnumTagMultiPayload();
      }
    }
  }

  else
  {
    v47 = *v28;
    LODWORD(v71) = v28[8];
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v63 - 8) = v8;
    *(&v63 - 7) = v14;
    v48 = v73;
    v49 = v74;
    *(&v63 - 6) = v73;
    *(&v63 - 5) = v49;
    v50 = *(a3 + 32);
    v51 = v72;
    *(&v63 - 4) = v50;
    *(&v63 - 3) = v51;
    v52 = v75;
    *(&v63 - 2) = v76;
    *(&v63 - 1) = v52;
    v53 = type metadata accessor for SearchDescription(0, v48, v14, v50);
    v54 = v77;
    v55 = sub_223B6C6E4(sub_223B73138, (&v63 - 10), v47, a3, v53, v49, v51, v26);

    if (v54)
    {
      return (*(v69 + 32))(v70, v26, v49);
    }

    else
    {
      v62 = v68;
      *v68 = v55;
      *(v62 + 8) = v71;
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_223B71A90@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SearchDescription(0, v16, v17, v18);
  v20 = v22[1];
  result = sub_223B714A0(a2, a3, v19, a4, a7, v15, a6);
  if (v20)
  {
    return (*(v13 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_223B71BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a5;
  v69 = a1;
  v70 = a2;
  v62 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v6);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v59 - v12;
  v65 = v11;
  v59 = v13;
  v15 = type metadata accessor for SearchDescription(0, v14, v11, v13);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v59 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = *(TupleTypeMetadata2 - 8);
  v26 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v28 = &v59 - v27;
  v29 = &v59 + *(v26 + 48) - v27;
  v67 = v16;
  v30 = *(v16 + 16);
  v30(&v59 - v27, v69, v15);
  v30(v29, v70, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v30(v24, v28, v15);
    v49 = *v24;
    v50 = v24[8];
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = *v29;
      v54 = v29[8];
      v71 = v66;
      WitnessTable = swift_getWitnessTable();
      v56 = sub_223B6CCAC(v49, v53, v15, WitnessTable);

      if (v56)
      {
        (*(v67 + 8))(v28, v15);
        v45 = v50 ^ v54 ^ 1;
        return v45 & 1;
      }

      goto LABEL_17;
    }

LABEL_13:
    (*(v68 + 8))(v28, TupleTypeMetadata2);
LABEL_18:
    v45 = 0;
    return v45 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v30(v19, v28, v15);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v51 = v62;
      v52 = v60;
      (*(v62 + 32))(v60, v29, a3);
      v45 = sub_223BF452C();
      v46 = *(v51 + 8);
      v46(v52, a3);
      v47 = v19;
      v48 = a3;
      goto LABEL_10;
    }

    (*(v62 + 8))(v19, a3);
    goto LABEL_13;
  }

  v30(v22, v28, v15);
  v32 = *v22;
  type metadata accessor for NonEmptyArray(255, v15, v33, v34);
  v35 = v65;
  v36 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v63 + 8))(v22 + v36, v35);

    goto LABEL_13;
  }

  v37 = v35;
  v70 = *v29;
  v38 = v63;
  v39 = *(v63 + 32);
  v39(v64, v22 + v36, v37);
  v40 = &v29[v36];
  v41 = v61;
  v39(v61, v40, v37);
  v72 = v66;
  v42 = swift_getWitnessTable();
  v43 = sub_223B6CCAC(v32, v70, v15, v42);

  if ((v43 & 1) == 0)
  {
    v57 = *(v38 + 8);
    v57(v41, v37);
    v57(v64, v37);
LABEL_17:
    (*(v67 + 8))(v28, v15);
    goto LABEL_18;
  }

  v44 = v64;
  v45 = sub_223BF452C();
  v46 = *(v38 + 8);
  v46(v41, v37);
  v47 = v44;
  v48 = v37;
LABEL_10:
  v46(v47, v48);
  (*(v67 + 8))(v28, v15);
  return v45 & 1;
}

uint64_t sub_223B72250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v64 = a4;
  v9 = *(a1 + 16);
  v63 = sub_223BF4A0C();
  v10 = *(v63 - 8);
  v11 = MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v65 = *(v9 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v61 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v5, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v60 = v10;
      v25 = *v22;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v58 - 4) = v9;
      *(&v58 - 3) = a2;
      *(&v58 - 2) = a3;
      v26 = sub_223B72B58();
      v27 = v66;
      v29 = sub_223B6C6E4(sub_223B72B34, (&v58 - 6), v25, a1, v9, &type metadata for SearchError, v26, v28);

      if (!v27)
      {
        v67[0] = v29;
        MEMORY[0x28223BE20](result);
        *(&v58 - 4) = v9;
        *(&v58 - 3) = a2;
        *(&v58 - 2) = a3;
        KeyPath = swift_getKeyPath();
        v32 = MEMORY[0x28223BE20](KeyPath);
        v59 = v33;
        *(&v58 - 4) = v33;
        *(&v58 - 3) = a3;
        *(&v58 - 2) = v32;
        type metadata accessor for NonEmptyArray(0, v9, v34, v35);
        swift_getWitnessTable();
        v36 = sub_223BF464C();
        v66 = 0;

        v67[0] = v36;
        sub_223BF471C();
        swift_getWitnessTable();
        v37 = v62;
        sub_223BF491C();
        v38 = v65;
        if ((*(v65 + 48))(v37, 1, v9) == 1)
        {
          (*(v60 + 8))(v37, v63);

          return (*(v59 + 16))(v9);
        }

        else
        {
          v52 = a3;
          v53 = v61;
          (*(v38 + 32))(v61, v37, v9);
          v67[6] = v36;
          v67[3] = sub_223BF4A2C();
          v67[4] = swift_getWitnessTable();
          v67[0] = swift_allocObject();
          sub_223BF496C();
          v54 = sub_223B6D09C(v53, v67, v9);
          __swift_destroy_boxed_opaque_existential_0(v67);
          (*(v52 + 16))(v54, v9, v52);

          return (*(v38 + 8))(v53, v9);
        }
      }
    }

    else
    {
      return (*(v65 + 32))(v64, v22, v9);
    }
  }

  else
  {
    v62 = v20;
    v60 = v10;
    v39 = *v22;
    LODWORD(v61) = v22[8];
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v58 - 4) = v9;
    *(&v58 - 3) = a2;
    v40 = a2;
    *(&v58 - 2) = a3;
    v41 = sub_223B72B58();
    v42 = v66;
    v44 = sub_223B6C6E4(sub_223B73150, (&v58 - 6), v39, a1, v9, &type metadata for SearchError, v41, v43);

    if (!v42)
    {
      v66 = v41;
      v67[0] = v44;
      MEMORY[0x28223BE20](result);
      *(&v58 - 4) = v9;
      *(&v58 - 3) = v40;
      *(&v58 - 2) = a3;
      v45 = swift_getKeyPath();
      v46 = MEMORY[0x28223BE20](v45);
      v59 = v47;
      *(&v58 - 4) = v47;
      *(&v58 - 3) = a3;
      *(&v58 - 2) = v46;
      type metadata accessor for NonEmptyArray(0, v9, v48, v49);
      swift_getWitnessTable();
      v50 = sub_223BF464C();

      v67[0] = v50;
      sub_223BF471C();
      swift_getWitnessTable();
      sub_223BF491C();
      v51 = v65;
      if ((*(v65 + 48))(v15, 1, v9) == 1)
      {
        (*(v60 + 8))(v15, v63);

        return (*(v59 + 16))(v9);
      }

      v55 = *(v51 + 32);
      v56 = v62;
      v55(v62, v15, v9);
      if (v61)
      {
        v57 = sub_223BF46FC();

        if (v57 > 1)
        {
          swift_willThrowTypedImpl();
          return (*(v65 + 8))(v56, v9);
        }
      }

      else
      {
      }

      return (v55)(v64, v56, v9);
    }
  }

  return result;
}

uint64_t sub_223B72AB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_223B72BE0();
  v9 = type metadata accessor for SearchDescription(0, a1, &type metadata for True, v8);
  return sub_223B72250(v9, a2, a3, a4);
}

unint64_t sub_223B72B58()
{
  result = qword_281339A48;
  if (!qword_281339A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A48);
  }

  return result;
}

unint64_t sub_223B72BE0()
{
  result = qword_281339370;
  if (!qword_281339370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339370);
  }

  return result;
}

uint64_t sub_223B72C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NonEmptyArray(255, a1, a3, a4);
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_223B72D58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 24) - 8) + 80) + 8) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = 9;
  if (v3 > 9)
  {
    v4 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_223B72ECC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 80) + 8) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_41:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

unint64_t sub_223B730E4()
{
  result = qword_27D0B16F8[0];
  if (!qword_27D0B16F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D0B16F8);
  }

  return result;
}

uint64_t *sub_223B73224()
{
  if (v0[23])
  {

    sub_223BF47FC();
  }

  sub_223B6D9E4(v0[16], v0[17]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_223B732A4()
{
  sub_223B73224();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_223B732E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
  MEMORY[0x28223BE20](v11);
  v13 = (v23 - v12);
  sub_223B568F8(v1, v23 - v12, &qword_27D0B11C0, &qword_223BF7C48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      return sub_223BF487C();
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_223B74D2C(*v13);

        sub_223B772BC(0, &qword_2813392E0, 0x277D82BB8);
        v16 = sub_223BF444C();

        return v16;
      }

      goto LABEL_13;
    }

    v20 = *(*v13 + 16);
    if (v20)
    {
      v23[0] = MEMORY[0x277D84F90];
      sub_223BF4B2C();
      v21 = 32;
      do
      {
        sub_223BF489C();
        sub_223BF4AFC();
        sub_223BF4B3C();
        sub_223BF4B4C();
        sub_223BF4B0C();
        v21 += 8;
        --v20;
      }

      while (v20);
    }

    sub_223B772BC(0, &qword_27D0B1840, 0x277CCABB0);
    v22 = sub_223BF467C();

    return v22;
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        return sub_223BF477C();
      }

LABEL_13:
      sub_223B56960(v13, &qword_27D0B11C0, &qword_223BF7C48);
      return 0;
    }

    return sub_223BF489C();
  }

  else
  {
    sub_223B56890(v13, v10, &qword_27D0B11F8, &qword_223BF7C80);
    v24 = v5;
    v25 = &off_283717F68;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
    sub_223B568F8(v10, boxed_opaque_existential_1, &qword_27D0B11F8, &qword_223BF7C80);
    v18 = __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_223B568F8(v18, v8, &qword_27D0B11F8, &qword_223BF7C80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_223BF453C();
    }

    else
    {
      sub_223B56890(v8, v4, &qword_27D0B1820, &unk_223BFA720);
      sub_223BF42BC();
      v19 = sub_223BF453C();

      sub_223B56960(v4, &qword_27D0B1820, &unk_223BFA720);
    }

    sub_223B56960(v10, &qword_27D0B11F8, &qword_223BF7C80);
    __swift_destroy_boxed_opaque_existential_0(v23);
    return v19;
  }
}

uint64_t sub_223B73758()
{
  sub_223BF4E8C();
  sub_223BF4EAC();
  return sub_223BF4EBC();
}

uint64_t sub_223B737CC()
{
  sub_223BF4E8C();
  sub_223BF4EAC();
  return sub_223BF4EBC();
}

unint64_t sub_223B73810@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_223B759B8(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id sub_223B73850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_resourcePath];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_tuningBasePath];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &v15[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_hardwareIdentifier];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&v15[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os] = a7;
  v20.receiver = v15;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_223B73904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = &v7[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_resourcePath];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_tuningBasePath];
  *v9 = a3;
  *(v9 + 1) = a4;
  v10 = &v7[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_hardwareIdentifier];
  *v10 = a5;
  *(v10 + 1) = a6;
  *&v7[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os] = a7;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for InteropLayerSystemConfigurationQuery();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_223B73B2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  MEMORY[0x28223BE20](v7);
  v9 = (&v18 - v8);
  sub_223B568F8(a1, &v18 - v8, &qword_27D0B11F8, &qword_223BF7C80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *v9;
    v11 = v9[1];
  }

  else
  {
    sub_223B56890(v9, v6, &qword_27D0B1820, &unk_223BFA720);
    v12 = sub_223BF42BC();
    v11 = v13;
    sub_223B56960(v6, &qword_27D0B1820, &unk_223BFA720);
  }

  v14 = &v2[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path];
  *v14 = v12;
  *(v14 + 1) = v11;
  v14[16] = EnumCaseMultiPayload == 1;
  v15 = type metadata accessor for InteropLayerFailablePath();
  v18.receiver = v2;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  sub_223B56960(a1, &qword_27D0B11F8, &qword_223BF7C80);
  return v16;
}

uint64_t sub_223B73D20()
{
  if (*(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path + 16))
  {
    result = sub_223BF4BEC();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path);

    return v1;
  }

  return result;
}

uint64_t sub_223B73E8C()
{
  if (*(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path + 16) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path);

    return v1;
  }

  else
  {
    result = sub_223BF4BEC();
    __break(1u);
  }

  return result;
}

id sub_223B742C0(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B17B0, &qword_223BFA3C0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D837D0];
  *(v5 + 16) = xmmword_223BF84C0;
  *(v5 + 56) = v6;
  *(v5 + 32) = 0x65756C6176;
  *(v5 + 40) = 0xE500000000000000;
  *(v5 + 88) = sub_223B772BC(0, &qword_2813392E0, 0x277D82BB8);
  *(v5 + 64) = a1;
  sub_223B772BC(0, &qword_2813392E8, 0x277CBEAC0);
  v7 = a1;
  *&v4[OBJC_IVAR____TtC20AudioDSPManagerSwift31InteropLayerPropertyValueCFType_value] = sub_223BF49CC();
  v10.receiver = v4;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id sub_223B743D8(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B17B0, &qword_223BFA3C0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D837D0];
  *(v4 + 16) = xmmword_223BF84C0;
  *(v4 + 56) = v5;
  *(v4 + 32) = 0x65756C6176;
  *(v4 + 40) = 0xE500000000000000;
  *(v4 + 88) = sub_223B772BC(0, &qword_2813392E0, 0x277D82BB8);
  *(v4 + 64) = a1;
  sub_223B772BC(0, &qword_2813392E8, 0x277CBEAC0);
  v6 = a1;
  *&v2[OBJC_IVAR____TtC20AudioDSPManagerSwift31InteropLayerPropertyValueCFType_value] = sub_223BF49CC();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for InteropLayerPropertyValueCFType();
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id sub_223B745A8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_223B745FC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32_value] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InteropLayerPropertyValueArrayUInt32();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_223B74848()
{
  v1 = *(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_ioSemantic);

  return v1;
}

uint64_t sub_223B74890()
{
  v1 = *(v0 + OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_dspSelection);

  return v1;
}

id sub_223B748D8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_223BF453C();

  return v3;
}

id sub_223B7498C(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for InteropLayerFailablePath();

  v3 = sub_223BF467C();

  return v3;
}

id sub_223B74C3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_223B74C90(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_223B74CF0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_223B74D2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1848, &qword_223BFA748);
  result = sub_223BF4BFC();
  v3 = result;
  v4 = 0;
  v25 = result;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];

      result = sub_223B579B8(v19);
      v3 = v25;
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v25[6] + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      *(v25[7] + 8 * v15) = result;
      v21 = v25[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v25[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_223B74EAC(uint64_t a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
  v39 = *(v33 - 8);
  v2 = MEMORY[0x28223BE20](v33);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1838, &qword_223BFA740);
  result = sub_223BF4BFC();
  v8 = 0;
  v40 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v37 = result + 8;
  v36 = xmmword_223BF84C0;
  v38 = result;
  v34 = v6;
  v35 = v4;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v42 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(v40 + 56);
      v45 = *(*(v40 + 48) + 4 * v19);
      sub_223B568F8(v20 + *(v39 + 72) * v19, v6, &qword_27D0B11C0, &qword_223BF7C48);
      v21 = sub_223B732E8();
      if (v21)
      {
        v22 = v21;
        v41 = type metadata accessor for InteropLayerPropertyValueCFType();
        v23 = objc_allocWithZone(v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B17B0, &qword_223BFA3C0);
        v24 = swift_allocObject();
        *(v24 + 16) = v36;
        *(v24 + 56) = MEMORY[0x277D837D0];
        *(v24 + 32) = 0x65756C6176;
        *(v24 + 40) = 0xE500000000000000;
        *(v24 + 88) = sub_223B772BC(0, &qword_2813392E0, 0x277D82BB8);
        *(v24 + 64) = v22;
        sub_223B772BC(0, &qword_2813392E8, 0x277CBEAC0);
        v25 = v22;
        *&v23[OBJC_IVAR____TtC20AudioDSPManagerSwift31InteropLayerPropertyValueCFType_value] = sub_223BF49CC();
        v43.receiver = v23;
        v43.super_class = v41;
        v26 = objc_msgSendSuper2(&v43, sel_init);

        v6 = v34;
        v4 = v35;
      }

      else
      {
        sub_223B568F8(v6, v4, &qword_27D0B11C0, &qword_223BF7C48);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v41 = *v4;
          v27 = type metadata accessor for InteropLayerPropertyValueArrayUInt32();
          v28 = objc_allocWithZone(v27);
          *&v28[OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32_value] = v41;
          v44.receiver = v28;
          v44.super_class = v27;
          v26 = objc_msgSendSuper2(&v44, sel_init);
        }

        else
        {
          v26 = [objc_allocWithZone(type metadata accessor for InteropLayerPropertyValue()) init];
          sub_223B56960(v4, &qword_27D0B11C0, &qword_223BF7C48);
        }
      }

      sub_223B56960(v6, &qword_27D0B11C0, &qword_223BF7C48);
      result = v38;
      *(v37 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(result[6] + 4 * v19) = v45;
      *(result[7] + 8 * v19) = v26;
      v29 = result[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      result[2] = v31;
      v14 = v42;
      if (!v42)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return result;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_223B752A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1290, &unk_223BF7D10);
    v7 = sub_223BF4C1C();
    v20 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_223B568F8(v8, v5, &qword_27D0B1858, &unk_223BFAF40);
      v10 = *v5;
      result = sub_223B6F918(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = v10;
      v14 = v7[7];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
      result = sub_223B56890(v5 + v20, v14 + *(*(v15 - 8) + 72) * v13, &qword_27D0B1288, &qword_223BFAF20);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v8 += v9;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_223B75488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1348, &unk_223BFA760);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1280, &unk_223BF7D00);
    v7 = sub_223BF4C1C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_223B568F8(v9, v5, &qword_27D0B1348, &unk_223BFA760);
      v11 = *v5;
      v10 = v5[1];
      result = sub_223B6F81C(*v5, v10);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v7[6] + 16 * result);
      *v15 = v11;
      v15[1] = v10;
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
      result = sub_223B56890(v5 + v22, v16 + *(*(v17 - 8) + 72) * v14, &qword_27D0B1278, &qword_223BF8500);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_223B7569C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1268, &qword_223BF7CF0);
  v3 = sub_223BF4C1C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_223B6F960(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_223B6F960(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_223B757B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_223BF4C1C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_223B6F81C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_223B758B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B8, &unk_223BFA070);
    v3 = sub_223BF4C1C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_223B6F81C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_223B759B8(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      v1 = 0;
      v2 = 3;
      return v2 | (v1 << 32);
    }

    if (a1 == 2)
    {
      v1 = 0;
      v2 = 2;
      return v2 | (v1 << 32);
    }

LABEL_8:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 1;
  return v2 | (v1 << 32);
}

Class sub_223B75B70(uint64_t a1)
{
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11E8, &qword_223BF7C70);
  v143 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v174 = (&v136 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  MEMORY[0x28223BE20](v3 - 8);
  v175 = &v136 - v4;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  v152 = *(v178 - 8);
  v5 = MEMORY[0x28223BE20](v178);
  v167 = (&v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v177 = &v136 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v169 = (&v136 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v173 = &v136 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v172 = &v136 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v136 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v136 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v165 = &v136 - v22;
  MEMORY[0x28223BE20](v21);
  v147 = &v136 - v23;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B0, &unk_223BF7F60);
  v145 = *(v163 - 8);
  v24 = MEMORY[0x28223BE20](v163);
  v26 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v144 = &v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1828, &qword_223BFA7E0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = (&v136 - v32);
  v34 = MEMORY[0x277D84F90];
  v187 = MEMORY[0x277D84F90];
  v35 = *(a1 + 64);
  v139 = a1 + 64;
  v36 = 1 << *(a1 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v141 = v37 & v35;
  v138 = (v36 + 63) >> 6;
  v137 = a1;

  v39 = 0;
  v160 = 0;
  v179 = v34;
  v170 = v17;
  v166 = v20;
  v164 = v26;
  v154 = v31;
  v153 = v33;
LABEL_6:
  v40 = v141;
  if (v141)
  {
    v41 = v39;
LABEL_11:
    v141 = (v40 - 1) & v40;
    v140 = v41;
    v42 = __clz(__rbit64(v40)) | (v41 << 6);
    v43 = (*(v137 + 48) + 16 * v42);
    v44 = *(*(v137 + 56) + 8 * v42);
    v45 = v43[1];
    v149 = *v43;
    v46 = v44 + 64;
    v47 = 1 << *(v44 + 32);
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v49 = v48 & *(v44 + 64);
    v142 = (v47 + 63) >> 6;
    v150 = v45;

    v146 = v44;

    v50 = 0;
    v148 = v44 + 64;
    while (1)
    {
      result = &qword_27D0B1830;
      if (!v49)
      {
        break;
      }

      v162 = v50;
      v51 = v50;
LABEL_25:
      v161 = (v49 - 1) & v49;
      v54 = __clz(__rbit64(v49)) | (v51 << 6);
      v55 = (*(v146 + 48) + 16 * v54);
      v57 = *v55;
      v56 = v55[1];
      v58 = v144;
      sub_223B568F8(*(v146 + 56) + *(v145 + 72) * v54, v144, &qword_27D0B11B0, &unk_223BF7F60);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730);
      v60 = *(v59 + 48);
      v61 = v154;
      *v154 = v57;
      *(v61 + 1) = v56;
      v31 = v61;
      sub_223B56890(v58, &v61[v60], &qword_27D0B11B0, &unk_223BF7F60);
      (*(*(v59 - 8) + 56))(v31, 0, 1, v59);

      v26 = v164;
      v33 = v153;
LABEL_26:
      sub_223B56890(v31, v33, &qword_27D0B1828, &qword_223BFA7E0);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730);
      if ((*(*(v62 - 8) + 48))(v33, 1, v62) == 1)
      {

        v39 = v140;
        goto LABEL_6;
      }

      v63 = v33[1];
      v159 = *v33;
      v158 = v63;
      sub_223B56890(v33 + *(v62 + 48), v26, &qword_27D0B11B0, &unk_223BF7F60);
      v64 = v147;
      sub_223B568F8(v26, v147, &qword_27D0B11F8, &qword_223BF7C80);
      v179 = type metadata accessor for InteropLayerFailablePath();
      v65 = objc_allocWithZone(v179);
      v157 = sub_223B73B2C(v64);
      v66 = v163;
      v67 = *&v26[*(v163 + 44)];
      v68 = *(v67 + 16);
      if (v68)
      {
        v186 = MEMORY[0x277D84F90];
        sub_223BF4B2C();
        v69 = v67 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
        v176 = *(v152 + 72);
        v70 = v165;
        v71 = v166;
        do
        {
          sub_223B568F8(v69, v70, &qword_27D0B11F8, &qword_223BF7C80);
          sub_223B568F8(v70, v71, &qword_27D0B11F8, &qword_223BF7C80);
          v72 = objc_allocWithZone(v179);
          v73 = v71;
          v74 = v71;
          v75 = v170;
          sub_223B568F8(v74, v170, &qword_27D0B11F8, &qword_223BF7C80);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 1)
          {
            v77 = v70;
            v78 = *v75;
            v79 = v75[1];
            v71 = v73;
            v80 = &off_2784F0000;
          }

          else
          {
            v81 = v175;
            sub_223B56890(v75, v175, &qword_27D0B1820, &unk_223BFA720);
            v78 = sub_223BF42BC();
            v79 = v82;
            v83 = v81;
            v77 = v165;
            v80 = &off_2784F0000;
            v71 = v166;
            sub_223B56960(v83, &qword_27D0B1820, &unk_223BFA720);
          }

          v84 = &v72[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path];
          *v84 = v78;
          *(v84 + 1) = v79;
          v84[16] = EnumCaseMultiPayload == 1;
          v185.receiver = v72;
          v185.super_class = v179;
          objc_msgSendSuper2(&v185, v80[339]);
          sub_223B56960(v71, &qword_27D0B11F8, &qword_223BF7C80);
          sub_223B56960(v77, &qword_27D0B11F8, &qword_223BF7C80);
          v70 = v77;
          sub_223BF4AFC();
          sub_223BF4B3C();
          sub_223BF4B4C();
          sub_223BF4B0C();
          v69 += v176;
          --v68;
        }

        while (v68);
        v156 = v186;
        v66 = v163;
        v26 = v164;
      }

      else
      {
        v156 = MEMORY[0x277D84F90];
      }

      v85 = *&v26[v66[10]];
      v86 = *(v85 + 16);
      if (v86)
      {
        v186 = MEMORY[0x277D84F90];
        sub_223BF4B2C();
        v87 = v85 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
        v88 = *(v152 + 72);
        v89 = v173;
        v90 = v172;
        do
        {
          sub_223B568F8(v87, v90, &qword_27D0B11F8, &qword_223BF7C80);
          sub_223B568F8(v90, v89, &qword_27D0B11F8, &qword_223BF7C80);
          v91 = objc_allocWithZone(v179);
          v92 = v169;
          sub_223B568F8(v89, v169, &qword_27D0B11F8, &qword_223BF7C80);
          v93 = swift_getEnumCaseMultiPayload();
          if (v93 == 1)
          {
            v94 = v92;
            v95 = *v92;
            v96 = v94[1];
          }

          else
          {
            v97 = v175;
            sub_223B56890(v92, v175, &qword_27D0B1820, &unk_223BFA720);
            v95 = sub_223BF42BC();
            v96 = v98;
            sub_223B56960(v97, &qword_27D0B1820, &unk_223BFA720);
          }

          v99 = &v91[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path];
          *v99 = v95;
          *(v99 + 1) = v96;
          v99[16] = v93 == 1;
          v184.receiver = v91;
          v184.super_class = v179;
          objc_msgSendSuper2(&v184, sel_init);
          v89 = v173;
          sub_223B56960(v173, &qword_27D0B11F8, &qword_223BF7C80);
          v90 = v172;
          sub_223B56960(v172, &qword_27D0B11F8, &qword_223BF7C80);
          sub_223BF4AFC();
          sub_223BF4B3C();
          sub_223BF4B4C();
          sub_223BF4B0C();
          v87 += v88;
          --v86;
        }

        while (v86);
        v100 = v186;
        v66 = v163;
        v26 = v164;
      }

      else
      {
        v100 = MEMORY[0x277D84F90];
      }

      v101 = v26[v66[9]];
      v102 = type metadata accessor for InteropLayerGraphFlavor();
      v103 = objc_allocWithZone(v102);
      v103[OBJC_IVAR____TtC20AudioDSPManagerSwift23InteropLayerGraphFlavor_value] = v101;
      v183.receiver = v103;
      v183.super_class = v102;
      v104 = objc_msgSendSuper2(&v183, sel_init);
      v105 = v174;
      v155 = v104;
      v106 = *&v26[v66[12]];
      v107 = *(v106 + 16);
      if (v107)
      {
        v151 = v100;
        v186 = MEMORY[0x277D84F90];
        sub_223BF4B2C();
        v108 = v106 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
        v171 = *(v143 + 72);
        do
        {
          sub_223B568F8(v108, v105, &qword_27D0B11E8, &qword_223BF7C70);
          v109 = v105[1];
          v176 = *v105;
          v110 = v105 + *(v168 + 36);
          v111 = v177;
          sub_223B568F8(v110, v177, &qword_27D0B11F8, &qword_223BF7C80);
          v112 = objc_allocWithZone(v179);
          v113 = v167;
          sub_223B568F8(v111, v167, &qword_27D0B11F8, &qword_223BF7C80);
          v114 = swift_getEnumCaseMultiPayload();
          if (v114 == 1)
          {
            v115 = *v113;
            v116 = v113[1];
          }

          else
          {
            v117 = v175;
            sub_223B56890(v113, v175, &qword_27D0B1820, &unk_223BFA720);

            v115 = sub_223BF42BC();
            v116 = v118;
            sub_223B56960(v117, &qword_27D0B1820, &unk_223BFA720);
          }

          v119 = &v112[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path];
          *v119 = v115;
          *(v119 + 1) = v116;
          v119[16] = v114 == 1;
          v182.receiver = v112;
          v182.super_class = v179;
          v120 = objc_msgSendSuper2(&v182, sel_init);
          sub_223B56960(v177, &qword_27D0B11F8, &qword_223BF7C80);
          v121 = type metadata accessor for InteropLayerAUPresetOverrideConfig();
          v122 = objc_allocWithZone(v121);
          v123 = &v122[OBJC_IVAR____TtC20AudioDSPManagerSwift34InteropLayerAUPresetOverrideConfig_boxName];
          *v123 = v176;
          *(v123 + 1) = v109;
          *&v122[OBJC_IVAR____TtC20AudioDSPManagerSwift34InteropLayerAUPresetOverrideConfig_filePath] = v120;
          v181.receiver = v122;
          v181.super_class = v121;
          objc_msgSendSuper2(&v181, sel_init);
          v105 = v174;
          sub_223B56960(v174, &qword_27D0B11E8, &qword_223BF7C70);
          sub_223BF4AFC();
          sub_223BF4B3C();
          sub_223BF4B4C();
          sub_223BF4B0C();
          v108 += v171;
          --v107;
        }

        while (v107);
        v124 = v186;
        v66 = v163;
        v125 = &off_2784F0000;
        v100 = v151;
      }

      else
      {
        v124 = MEMORY[0x277D84F90];
        v125 = &off_2784F0000;
      }

      v126 = v160;
      v127 = sub_223B74EAC(*&v164[v66[13]]);
      v160 = v126;
      v128 = type metadata accessor for InteropLayerSystemConfigurationDatabaseEntry();
      v129 = objc_allocWithZone(v128);
      v130 = &v129[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_ioSemantic];
      v131 = v150;
      *v130 = v149;
      *(v130 + 1) = v131;
      v132 = &v129[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_dspSelection];
      v133 = v158;
      *v132 = v159;
      *(v132 + 1) = v133;
      *&v129[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_graphFilePath] = v157;
      *&v129[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_propStripFilePaths] = v156;
      *&v129[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_tuningStripFilePaths] = v100;
      *&v129[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_graphFlavor] = v155;
      *&v129[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_auPresetOverrideConfig] = v124;
      *&v129[OBJC_IVAR____TtC20AudioDSPManagerSwift44InteropLayerSystemConfigurationDatabaseEntry_properties] = v127;
      v180.receiver = v129;
      v180.super_class = v128;
      v134 = v125[339];

      objc_msgSendSuper2(&v180, v134);
      v46 = v148;
      MEMORY[0x223DF2EA0]();
      v31 = v154;
      v49 = v161;
      if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_223BF46AC();
        v31 = v154;
      }

      sub_223BF46EC();
      v179 = v187;
      v26 = v164;
      sub_223B56960(v164, &qword_27D0B11B0, &unk_223BF7F60);
      v33 = v153;
      v50 = v162;
    }

    if (v142 <= v50 + 1)
    {
      v52 = v50 + 1;
    }

    else
    {
      v52 = v142;
    }

    v53 = v52 - 1;
    while (1)
    {
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v51 >= v142)
      {
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730);
        (*(*(v135 - 8) + 56))(v31, 1, 1, v135);
        v161 = 0;
        v162 = v53;
        goto LABEL_26;
      }

      v49 = *(v46 + 8 * v51);
      ++v50;
      if (v49)
      {
        v162 = v51;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v138)
      {

        return v179;
      }

      v40 = *(v139 + 8 * v41);
      ++v39;
      if (v40)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

Class sub_223B76C34(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os) >= 4u)
  {
    result = sub_223BF4DCC();
    __break(1u);
  }

  else
  {
    v1 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_resourcePath);
    v2 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_resourcePath + 8);
    v3 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_tuningBasePath);
    v4 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_tuningBasePath + 8);
    v5 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_hardwareIdentifier);
    v6 = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_hardwareIdentifier + 8);
    LOBYTE(v10) = *(a1 + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os);
    v11 = v1;
    v12 = v2;
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = v6;

    v7 = sub_223B7DF88(&v10);

    v8 = sub_223B75B70(v7);

    return v8;
  }

  return result;
}

unint64_t sub_223B76DA4()
{
  result = qword_27D0B1800;
  if (!qword_27D0B1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1800);
  }

  return result;
}

uint64_t sub_223B77204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_223B7724C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_223B772BC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_223B77308(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_223B57E74(0, v10, 0);
  v11 = v21;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_223B57E74((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_223B56890(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_27D0B1260, &qword_223BFA7F0);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223B77514@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = sub_223BF425C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223BF430C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v48 = *a1;
  v46 = v13;
  v47 = *(a1 + 4);
  v41 = *(&v48 + 1);
  v14 = v48;
  v15 = type metadata accessor for CanonicalLocationResolver(0);
  v16 = *(v15 + 20);
  v42 = v10;
  (*(v10 + 16))(v12, v3 + v16, v9);
  if (v47 == 1)
  {
    v17 = *(v6 + 104);
    v18 = v6;
  }

  else
  {
    v37 = v47;
    v38 = v14;
    v39 = v9;
    v40 = v6;
    LODWORD(v36) = v46;
    v33 = *(&v46 + 1);
    v35 = a1;
    if (BYTE1(v46))
    {
      v19 = *(v3 + *(v15 + 24));
    }

    else
    {
      v20 = 0xE700000000000000;
      v19 = 0x636972656E6547;
    }

    v34 = v20;
    v44 = v19;
    v45 = v20;
    v21 = *MEMORY[0x277CC91C0];
    v22 = v40;
    v23 = *(v40 + 104);
    v23(v8, v21, v5);
    v24 = sub_223B50954();
    sub_223BF42DC();
    v25 = *(v22 + 8);
    v25(v8, v5);

    v26 = 5063745;
    if (v36)
    {
      v26 = 4473174;
    }

    v44 = v26;
    v45 = 0xE300000000000000;
    v36 = v23;
    v23(v8, v21, v5);
    v32[1] = v24;
    sub_223BF42DC();
    v34 = v25;
    v25(v8, v5);

    if (v37)
    {
      v44 = v33;
      v45 = v37;
      v27 = v36;
      v36(v8, v21, v5);
      sub_223BF42DC();
      v34(v8, v5);
      v18 = v40;
      v14 = v38;
      v17 = v27;
    }

    else
    {
      v18 = v40;
      v14 = v38;
      v17 = v36;
    }

    a1 = v35;
  }

  v44 = v14;
  v45 = v41;
  v17(v8, *MEMORY[0x277CC91D0], v5);
  sub_223B50954();
  swift_bridgeObjectRetain_n();
  sub_223BF42CC();
  (*(v18 + 8))(v8, v5);
  sub_223B7E8A4(&v48);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18C8, &qword_223BFA870);
  v29 = v43 + *(v28 + 36);
  v30 = a1[1];
  *v29 = *a1;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a1 + 4);
  (*(v42 + 32))();
  return sub_223B7E94C(&v46, &v44);
}

uint64_t sub_223B77958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18C8, &qword_223BFA870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_223BF425C();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = sub_223BF430C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v36 = a1;
  sub_223B568F8(a1, v14, &qword_27D0B1328, &qword_223BF8508);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v14 + 1);
    v38 = *v14;
    v39 = v22;
    v40 = *(v14 + 4);
    sub_223B77514(&v38, v5);
    v41 = v38;
    sub_223B7E8A4(&v41);
    v42 = v39;
    v43 = v40;
    sub_223B7E8F8(&v42);
    (*(v16 + 16))(v19, v5, v15);
    v23 = &qword_27D0B18C8;
    v24 = &qword_223BFA870;
    v25 = v5;
  }

  else
  {
    sub_223B56890(v14, v11, &qword_27D0B1820, &unk_223BFA720);
    *&v38 = sub_223BF42BC();
    *(&v38 + 1) = v26;
    v28 = v34;
    v27 = v35;
    (*(v34 + 104))(v8, *MEMORY[0x277CC91D8], v35);
    sub_223B50954();
    sub_223BF42EC();
    (*(v28 + 8))(v8, v27);

    v25 = v11;
    v23 = &qword_27D0B1820;
    v24 = &unk_223BFA720;
  }

  sub_223B56960(v25, v23, v24);
  v29 = *(v16 + 32);
  v29(v21, v19, v15);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1888, &qword_223BFA7E8);
  v31 = v37;
  sub_223B568F8(v36, v37 + *(v30 + 36), &qword_27D0B1328, &qword_223BF8508);
  return (v29)(v31, v21, v15);
}

uint64_t sub_223B77D70@<X0>(void (*a1)(char *)@<X0>, void *a2@<X8>)
{
  v15 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - v9);
  sub_223B568F8(v2, &v14 - v9, &qword_27D0B1288, &qword_223BFAF20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      *a2 = *v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 4)
    {
      *a2 = *v10;
    }

    else
    {
      *a2 = *v10;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *v10;
    }

    else
    {
      *a2 = *v10;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    v12 = v10[1];
    *a2 = *v10;
    a2[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_223B56890(v10, v7, &qword_27D0B1330, &unk_223BF8510);
  v15(v7);
  if (!v3)
  {
    sub_223B56960(v7, &qword_27D0B1330, &unk_223BF8510);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_223B56960(v7, &qword_27D0B1330, &unk_223BF8510);
  __break(1u);
  return result;
}

int *sub_223B7808C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18B8, &qword_223BFA858);
  v9 = MEMORY[0x28223BE20](v82);
  v83 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v81 = &v70 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1240, &qword_223BFA860);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v70 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18C0, &qword_223BFA868);
  v93 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v14 = (&v70 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1250, &unk_223BF7F40);
  v88 = *(v15 - 8);
  v89 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v71 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  a1(v5);
  if (v4)
  {
LABEL_45:
    __break(1u);
    sub_223B56960(v76, &qword_27D0B1260, &qword_223BFA7F0);
    __break(1u);
    sub_223B56960(v76, &qword_27D0B1260, &qword_223BFA7F0);

    __break(1u);
    goto LABEL_46;
  }

  v76 = v22;
  v73 = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  v24 = v23[10];
  v72 = *(v5 + v23[9]);
  v75 = sub_223B77308(a1, a2, *(v5 + v24));
  v25 = *(v5 + v23[11]);
  v91 = a1;
  v92 = a2;
  v26 = sub_223B77308(a1, a2, v25);
  v95 = 0;
  v74 = v26;
  v77 = v23;
  v27 = *(v5 + v23[12]);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v70 = v5;
    v96 = MEMORY[0x277D84F90];
    sub_223B57E34(0, v28, 0);
    v30 = 0;
    v87 = v27 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v29 = v96;
    v31 = v71;
    v85 = v28;
    v86 = v14;
    v84 = v27;
    while (v30 < *(v27 + 16))
    {
      v94 = v29;
      v32 = v30;
      sub_223B568F8(v87 + *(v93 + 72) * v30, v14, &qword_27D0B18C0, &qword_223BFA868);
      v33 = *v14;
      v34 = v14[1];
      v35 = *(v90 + 36);

      v36 = v14 + v35;
      v29 = v14;
      v37 = v95;
      v91(v36);
      v95 = v37;
      if (v37)
      {
        goto LABEL_43;
      }

      *v17 = v33;
      *(v17 + 8) = v34;
      sub_223B56890(v31, v17 + *(v89 + 36), &qword_27D0B1260, &qword_223BFA7F0);
      sub_223B56960(v14, &qword_27D0B18C0, &qword_223BFA868);
      v29 = v94;
      v96 = v94;
      v39 = *(v94 + 16);
      v38 = *(v94 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_223B57E34((v38 > 1), v39 + 1, 1);
        v31 = v71;
        v29 = v96;
      }

      *(v29 + 16) = v39 + 1;
      v30 = v32 + 1;
      sub_223B56890(v17, v29 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v39, &qword_27D0B1250, &unk_223BF7F40);
      v14 = v86;
      v40 = v85 == v32 + 1;
      v27 = v84;
      if (v40)
      {
        v5 = v70;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_11:
  v41 = *(v5 + v77[13]);
  v42 = *(v41 + 16);
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v96 = MEMORY[0x277D84F90];
    sub_223B57DF4(0, v42, 0);
    v43 = v96;
    v17 = v41 + 64;
    v44 = sub_223BF4A3C();
    v45 = 0;
    v93 = *(v41 + 36);
    v94 = v29;
    v84 = v41 + 72;
    v85 = v42;
    v86 = (v41 + 64);
    v87 = v41;
    while ((v44 & 0x8000000000000000) == 0 && v44 < 1 << *(v41 + 32))
    {
      v48 = v44 >> 6;
      if ((*(v17 + 8 * (v44 >> 6)) & (1 << v44)) == 0)
      {
        goto LABEL_38;
      }

      if (v93 != *(v41 + 36))
      {
        goto LABEL_39;
      }

      v88 = v45;
      v89 = 1 << v44;
      v90 = v43;
      v49 = v82;
      v50 = *(v82 + 48);
      v51 = *(v41 + 56);
      v52 = *(*(v41 + 48) + 4 * v44);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
      v54 = v81;
      sub_223B568F8(v51 + *(*(v53 - 8) + 72) * v44, &v81[v50], &qword_27D0B1288, &qword_223BFAF20);
      v17 = v83;
      *v83 = v52;
      v55 = &v54[v50];
      v29 = v79;
      sub_223B56890(v55, v17 + *(v49 + 48), &qword_27D0B1288, &qword_223BFAF20);
      v56 = v95;
      sub_223B77D70(v91, (v29 + *(v80 + 48)));
      v95 = v56;
      if (v56)
      {
        goto LABEL_44;
      }

      *v29 = v52;
      sub_223B56960(v17, &qword_27D0B18B8, &qword_223BFA858);
      v43 = v90;
      v96 = v90;
      v17 = *(v90 + 16);
      v57 = *(v90 + 24);
      if (v17 >= v57 >> 1)
      {
        sub_223B57DF4((v57 > 1), v17 + 1, 1);
        v43 = v96;
      }

      v43[2] = v17 + 1;
      sub_223B56890(v29, v43 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v17, &qword_27D0B1240, &qword_223BFA860);
      v41 = v87;
      v46 = 1 << *(v87 + 32);
      if (v44 >= v46)
      {
        goto LABEL_40;
      }

      v17 = v86;
      v58 = v86[v48];
      if ((v58 & v89) == 0)
      {
        goto LABEL_41;
      }

      if (v93 != *(v87 + 36))
      {
        goto LABEL_42;
      }

      v59 = v58 & (-2 << (v44 & 0x3F));
      if (v59)
      {
        v46 = __clz(__rbit64(v59)) | v44 & 0x7FFFFFFFFFFFFFC0;
        v29 = v94;
        v47 = v85;
      }

      else
      {
        v60 = v48 << 6;
        v61 = v48 + 1;
        v47 = v85;
        v62 = (v84 + 8 * v48);
        v29 = v94;
        while (v61 < (v46 + 63) >> 6)
        {
          v64 = *v62++;
          v63 = v64;
          v60 += 64;
          ++v61;
          if (v64)
          {
            sub_223B5AC98(v44, v93, 0);
            v46 = __clz(__rbit64(v63)) + v60;
            goto LABEL_14;
          }
        }

        sub_223B5AC98(v44, v93, 0);
      }

LABEL_14:
      v45 = v88 + 1;
      v44 = v46;
      if (v88 + 1 == v47)
      {
        goto LABEL_31;
      }
    }

LABEL_37:
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

    sub_223B56960(v29, &qword_27D0B18C0, &qword_223BFA868);
    sub_223B56960(v76, &qword_27D0B1260, &qword_223BFA7F0);

    __break(1u);
LABEL_44:

    sub_223B56960(v17, &qword_27D0B18B8, &qword_223BFA858);
    sub_223B56960(v76, &qword_27D0B1260, &qword_223BFA7F0);

    __break(1u);
    goto LABEL_45;
  }

LABEL_31:
  if (v43[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1230, &qword_223BFA020);
    v65 = sub_223BF4C1C();
  }

  else
  {
    v65 = MEMORY[0x277D84F98];
  }

  v96 = v65;
  v66 = v95;
  sub_223B7CAE4(v43, 1, &v96);
  if (!v66)
  {
    v67 = v96;
    v68 = v73;
    sub_223B56890(v76, v73, &qword_27D0B1260, &qword_223BFA7F0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12F8, &qword_223BF7F58);
    *(v68 + result[9]) = v72;
    *(v68 + result[10]) = v75;
    *(v68 + result[11]) = v74;
    *(v68 + result[12]) = v29;
    *(v68 + result[13]) = v67;
    return result;
  }

LABEL_46:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_223B78AB0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1890, &unk_223BFA820);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  v16 = *(a1 + 16);
  if (a2)
  {
    if (v16)
    {
      v33[1] = v13;
      v34 = a3;
      v36[0] = MEMORY[0x277D84F90];
      sub_223B57CF4(0, v16, 0);
      v17 = v36[0];
      v18 = *(v7 + 80);
      v33[0] = a1;
      v19 = a1 + ((v18 + 32) & ~v18);
      v35 = *(v7 + 72);
      do
      {
        sub_223B568F8(v19, v9, &qword_27D0B1820, &unk_223BFA720);
        v20 = sub_223BF42BC();
        v22 = v21;
        sub_223B56960(v9, &qword_27D0B1820, &unk_223BFA720);
        v36[0] = v17;
        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_223B57CF4((v23 > 1), v24 + 1, 1);
          v17 = v36[0];
        }

        *(v17 + 16) = v24 + 1;
        v25 = v17 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v19 += v35;
        --v16;
      }

      while (v16);

      a3 = v34;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v36[0] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1898, &qword_223BFA830);
    sub_223B7E740();
    v26 = sub_223BF44BC();
    v28 = v27;

    strcpy(v36, " Attempted: ");
    BYTE5(v36[1]) = 0;
    HIWORD(v36[1]) = -5120;
    MEMORY[0x223DF2DE0](v26, v28);

    v29 = v36[0];
    v30 = v36[1];
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_223BF4AAC();

    v36[0] = 0xD000000000000014;
    v36[1] = 0x8000000223C04870;
    MEMORY[0x223DF2DE0](v29, v30);

    v31 = v36[1];
    *a3 = v36[0];
    a3[1] = v31;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (v16)
    {
      sub_223B568F8(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v12, &qword_27D0B1820, &unk_223BFA720);
      (*(v7 + 56))(v12, 0, 1, v6);
    }

    else
    {
      (*(v7 + 56))(v12, 1, 1, v6);
    }

    result = (*(v7 + 48))(v12, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_223B56890(v12, v15, &qword_27D0B1820, &unk_223BFA720);
      swift_storeEnumTagMultiPayload();
      return sub_223B56890(v15, a3, &qword_27D0B11F8, &qword_223BF7C80);
    }
  }

  return result;
}

uint64_t sub_223B78EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  if (sub_223BF429C())
  {
    sub_223B568F8(a1, v5, &qword_27D0B1820, &unk_223BFA720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18A0, &qword_223BFA838);
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_223BF84C0;
    sub_223B568F8(v5, v7 + v6, &qword_27D0B1820, &unk_223BFA720);
    v11 = v7;
    sub_223B7C06C(MEMORY[0x277D84F90]);
    sub_223B56960(v5, &qword_27D0B1820, &unk_223BFA720);
    return v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18A0, &qword_223BFA838);
    v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_223BF84C0;
    sub_223B568F8(a1, v8 + v9, &qword_27D0B1820, &unk_223BFA720);
  }

  return v8;
}

uint64_t sub_223B79120@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_223B568F8(v4, &v24 - v12, &qword_27D0B1330, &unk_223BF8510);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_223B56890(v13, v10, &qword_27D0B1328, &qword_223BF8508);
      v22 = v25;
      a1(v10);
      if (!v22)
      {
        sub_223B56960(v10, &qword_27D0B1328, &qword_223BF8508);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_14;
    }

    v10 = *v13;
    v15 = v25;
    v16 = sub_223B7DD7C(*v13, a1, a2);
    if (!v15)
    {
      v17 = v16;
      if (*(v16 + 16))
      {

        *a3 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    sub_223B56960(v10, &qword_27D0B1328, &qword_223BF8508);
    __break(1u);
    goto LABEL_15;
  }

  v10 = *v13;
  v18 = v13[8];
  v19 = v25;
  v20 = sub_223B7DD7C(v10, a1, a2);
  if (v19)
  {
    goto LABEL_13;
  }

  v21 = v20;
  if (*(v20 + 16))
  {

    *a3 = v21;
    *(a3 + 8) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_15:
  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

uint64_t sub_223B79400(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1888, &qword_223BFA7E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v18 - v11);
  sub_223B568F8(v4, &v18 - v11, &qword_27D0B1260, &qword_223BFA7F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v12;
    v16 = sub_223B7DBF8(*v12, a1, a2);
    if (!v3)
    {
      v15 = v16;
      if (*(v16 + 16))
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_223B56890(v12, v9, &qword_27D0B1888, &qword_223BFA7E8);
    a1(&v18, v9);
    if (!v3)
    {
      sub_223B56960(v9, &qword_27D0B1888, &qword_223BFA7E8);
      return v18;
    }

    goto LABEL_14;
  }

  v9 = *v12;
  v14 = sub_223B7DBF8(*v12, a1, a2);
  if (v3)
  {

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    sub_223B56960(v9, &qword_27D0B1888, &qword_223BFA7E8);
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  if (*(v14 + 16))
  {
LABEL_5:

    return v15;
  }

LABEL_15:
  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

uint64_t sub_223B79690(uint64_t a1, unsigned __int16 a2)
{
  v3 = v2;
  v4 = a1;
  if (a2 > 0xFFu)
  {

    return v4;
  }

  v5 = *(a1 + 16);
  v29 = a2;
  if (v5)
  {
    v30 = MEMORY[0x277D84F90];
    sub_223B57EB4(0, v5, 0);
    v6 = v30;
    v7 = (v4 + 41);
    while (1)
    {
      v8 = *(v7 - 9);
      v4 = *(v7 - 1);
      v9 = *v7;
      sub_223B7E7A4(v8, v4, *v7);
      v10 = sub_223B79690(v8, v4 | (v9 << 8));
      if (v3)
      {
        break;
      }

      v12 = v10;
      v13 = v11;
      v3 = 0;
      sub_223B4C574(v8, v4, v9);
      v15 = *(v30 + 16);
      v14 = *(v30 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_223B57EB4((v14 > 1), v15 + 1, 1);
      }

      v7 += 16;
      *(v30 + 16) = v16;
      v17 = v30 + 16 * v15;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13 & 1;
      if (!--v5)
      {
        goto LABEL_11;
      }
    }

    sub_223B4C574(v8, v4, v9);

    return v4;
  }

  v6 = MEMORY[0x277D84F90];
  v16 = *(MEMORY[0x277D84F90] + 16);
  if (v16)
  {
LABEL_11:
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
LABEL_12:
    v20 = (v6 + 40 + 16 * v18);
    while (v16 != v18)
    {
      if (v18 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v21 = v20 + 16;
      ++v18;
      v22 = *v20;
      v20 += 16;
      if ((v22 & 1) == 0)
      {
        v23 = *(v21 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_223B57EB4(0, v19[2] + 1, 1);
        }

        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          sub_223B57EB4((v24 > 1), v25 + 1, 1);
        }

        v19[2] = v25 + 1;
        v26 = &v19[2 * v25];
        v26[4] = v23;
        *(v26 + 40) = 0;
        goto LABEL_12;
      }
    }

    v27 = v19[2];
    if (v27)
    {
      v4 = v19[4];

      if (v27 != 1 && (v29 & 1) != 0)
      {
        sub_223B72B58();
        swift_willThrowTypedImpl();
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

LABEL_29:
  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

unint64_t sub_223B79980(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v154 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B0, &unk_223BF7F60);
  v155 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v157 = &v139 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12F8, &qword_223BF7F58);
  v156 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v159 = &v139 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v151 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v152 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v153 = &v139 - v15;
  v165 = a4;
  v166 = a5;
  v17 = type metadata accessor for SystemConfigurationFile(255, a4, a5, v16);
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for ModelAssetLocation(255, v17, WitnessTable, v19);
  v21 = swift_getWitnessTable();
  v174 = v20;
  v175 = v17;
  v176 = v21;
  v177 = WitnessTable;
  v22 = type metadata accessor for MixedAssetLocation(255, &v174);
  v161 = swift_getWitnessTable();
  v24 = type metadata accessor for ConcreteLocation(255, v22, v161, v23);
  v25 = sub_223B72BE0();
  v164 = v24;
  v167 = type metadata accessor for SearchDescription(0, v24, &type metadata for True, v25);
  v160 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v27 = (&v139 - v26);
  v162 = v25;
  v28 = type metadata accessor for SearchDescription(255, v22, &type metadata for True, v25);
  v29 = sub_223BF4A0C();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v139 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v139 - v34;
  v36 = a1;
  v38 = v37;
  (*(v30 + 16))(v33, v36, v29);
  if ((*(v38 + 48))(v33, 1, v28) == 1)
  {
    (*(v30 + 8))(v33, v29);
    return sub_223B757A4(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v38 + 32))(v35, v33, v28);
    v149 = a3;
    v40 = a3;
    v42 = v165;
    v41 = v166;
    v43 = sub_223B7AAB8(v40, v165, v166);
    v45 = v44;
    v46 = MEMORY[0x28223BE20](v43);
    *(&v139 - 4) = v42;
    *(&v139 - 3) = v41;
    *(&v139 - 2) = v46;
    *(&v139 - 1) = v45;
    v47 = v27;
    v163 = v27;
    v48 = v164;
    v150 = v38;
    v49 = v168;
    sub_223B714A0(sub_223B7E498, (&v139 - 6), v28, v164, MEMORY[0x277D84AC0], v50, v47);
    v168 = v49;

    v53 = type metadata accessor for NonEmptyArray(255, v48, v51, v52);
    v54 = type metadata accessor for FailureTracked(0, v53, v48, &off_283718F18);
    v55 = swift_getWitnessTable();
    v178 = swift_getWitnessTable();
    v56 = swift_getWitnessTable();
    v57 = sub_223B60AAC(v54, v22, v54, v161, v55, v56);
    v58 = MEMORY[0x28223BE20](v57);
    *(&v139 - 4) = v42;
    *(&v139 - 3) = v41;
    *(&v139 - 2) = v58;
    *(&v139 - 1) = v59;
    MEMORY[0x28223BE20](v58);
    *(&v139 - 4) = v42;
    *(&v139 - 3) = v41;
    *(&v139 - 2) = sub_223B7E4C8;
    *(&v139 - 1) = v60;
    v61 = v168;
    sub_223B714A0(sub_223B7E504, (&v139 - 6), v167, v54, MEMORY[0x277D84AC0], v62, &v174);
    v161 = v28;

    v63 = v174;
    v64 = v175;
    v65 = BYTE1(v175);
    v170 = v174;
    v171 = v175;
    v66 = type metadata accessor for SearchDescription(0, v54, &type metadata for True, v162);
    v169 = &off_283718F00;
    v67 = swift_getWitnessTable();
    sub_223B72250(v66, &off_283718038, v67, &v172);
    if (v61)
    {
      sub_223B4C574(v63, v64, v65);
      sub_223B72B58();
      swift_allocError();
      (*(v160 + 8))(v163, v167);
      return (*(v150 + 8))(v35, v161);
    }

    else
    {
      v68 = v164;
      v69 = v165;
      v70 = v166;
      v162 = v35;
      sub_223B4C574(v63, v64, v65);
      v174 = v172;
      LOBYTE(v175) = v173;
      sub_223B5F4B0(v54, &v170);
      v71 = v170;
      if (v170)
      {

        v168 = &v139;
        MEMORY[0x28223BE20](v72);
        v73 = v69;
        *(&v139 - 4) = v69;
        *(&v139 - 3) = v70;
        v74 = v70;
        *(&v139 - 2) = v154;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
        v76 = AssociatedTypeWitness;
        v80 = sub_223B6C6E4(sub_223B7E5F0, (&v139 - 6), v71, v68, AssociatedTypeWitness, v75, MEMORY[0x277D84950], &v174);

        v81 = v153;
        sub_223B6C6D4(v80, v76);
        v170 = v80;
        type metadata accessor for NonEmptyArray(0, v76, v82, v83);
        swift_getWitnessTable();
        v84 = sub_223BF496C();
        v168 = &v139;
        MEMORY[0x28223BE20](v84);
        *(&v139 - 4) = v69;
        *(&v139 - 3) = v74;
        *(&v139 - 2) = v69;
        sub_223BF4E5C();
        swift_getWitnessTable();
        v85 = v152;
        sub_223BF465C();

        v86 = v85;
        v87 = (*(v74 + 56))(v85, v73, v74);
        v88 = 0;
        v89 = MEMORY[0x28223BE20](v87);
        *(&v139 - 2) = v149;
        v90 = sub_223B7C1A4(sub_223B7E654, (&v139 - 4), v89);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11A8, &unk_223BF7C30);
        result = sub_223BF4BFC();
        v142 = result;
        v91 = 0;
        v92 = v90[8];
        v140 = v90 + 8;
        v143 = v90;
        v93 = 1 << *(v90 + 32);
        if (v93 < 64)
        {
          v94 = ~(-1 << v93);
        }

        else
        {
          v94 = -1;
        }

        v95 = v94 & v92;
        v139 = (v93 + 63) >> 6;
        v141 = result + 64;
        if (v95)
        {
          while (1)
          {
            v168 = v88;
            v96 = __clz(__rbit64(v95));
            v144 = (v95 - 1) & v95;
LABEL_18:
            v145 = v91;
            v100 = v96 | (v91 << 6);
            v101 = v143[7];
            v102 = (v143[6] + 16 * v100);
            v103 = v102[1];
            v146 = *v102;
            v147 = v100;
            v104 = *(v101 + 8 * v100);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B8, &qword_223BF7C40);
            v105 = sub_223BF4BFC();
            v106 = v105;
            v107 = *(v104 + 64);
            v149 = v104 + 64;
            v108 = 1 << *(v104 + 32);
            v109 = v108 < 64 ? ~(-1 << v108) : -1;
            v110 = v109 & v107;
            v111 = (v108 + 63) >> 6;
            v154 = v105 + 64;
            v148 = v103;

            v165 = v104;

            v112 = 0;
            v113 = v159;
            v164 = v106;
            if (v110)
            {
              break;
            }

LABEL_23:
            v115 = v112;
            while (1)
            {
              v112 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                __break(1u);
                goto LABEL_38;
              }

              if (v112 >= v111)
              {
                break;
              }

              v116 = *(v149 + 8 * v112);
              ++v115;
              if (v116)
              {
                v114 = __clz(__rbit64(v116));
                v166 = (v116 - 1) & v116;
                goto LABEL_28;
              }
            }

            v128 = v147;
            *(v141 + ((v147 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v147;
            v129 = v142;
            v130 = (*(v142 + 48) + 16 * v128);
            v131 = v148;
            *v130 = v146;
            v130[1] = v131;
            *(*(v129 + 56) + 8 * v128) = v106;
            v132 = *(v129 + 16);
            v126 = __OFADD__(v132, 1);
            v133 = v132 + 1;
            if (v126)
            {
              goto LABEL_40;
            }

            *(v129 + 16) = v133;
            v81 = v153;
            v86 = v152;
            v88 = v168;
            v91 = v145;
            v95 = v144;
            if (!v144)
            {
              goto LABEL_13;
            }
          }

          while (1)
          {
            v114 = __clz(__rbit64(v110));
            v166 = (v110 - 1) & v110;
LABEL_28:
            v117 = v114 | (v112 << 6);
            v118 = (*(v165 + 48) + 16 * v117);
            v120 = *v118;
            v119 = v118[1];
            v121 = v113;
            sub_223B568F8(*(v165 + 56) + *(v156 + 72) * v117, v113, &qword_27D0B12F8, &qword_223BF7F58);

            v122 = v157;
            v123 = v168;
            sub_223B5D040(v121, v157);
            v168 = v123;
            if (v123)
            {
              break;
            }

            sub_223B56960(v121, &qword_27D0B12F8, &qword_223BF7F58);
            *(v154 + ((v117 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v117;
            v106 = v164;
            v124 = (*(v164 + 48) + 16 * v117);
            *v124 = v120;
            v124[1] = v119;
            result = sub_223B56890(v122, *(v106 + 56) + *(v155 + 72) * v117, &qword_27D0B11B0, &unk_223BF7F60);
            v125 = *(v106 + 16);
            v126 = __OFADD__(v125, 1);
            v127 = v125 + 1;
            if (v126)
            {
              goto LABEL_39;
            }

            *(v106 + 16) = v127;
            v113 = v159;
            v110 = v166;
            if (!v166)
            {
              goto LABEL_23;
            }
          }

          sub_223B56960(v121, &qword_27D0B12F8, &qword_223BF7F58);
          v137 = *(v151 + 8);
          v138 = AssociatedTypeWitness;
          v137(v152, AssociatedTypeWitness);
          v137(v153, v138);
          (*(v160 + 8))(v163, v167);
          return (*(v150 + 8))(v162, v161);
        }

        else
        {
LABEL_13:
          v97 = v91;
          v98 = v167;
          while (1)
          {
            v91 = v97 + 1;
            if (__OFADD__(v97, 1))
            {
              break;
            }

            if (v91 >= v139)
            {

              v134 = *(v151 + 8);
              v135 = v86;
              v136 = AssociatedTypeWitness;
              v134(v135, AssociatedTypeWitness);
              v134(v81, v136);
              (*(v160 + 8))(v163, v98);
              (*(v150 + 8))(v162, v161);
              return v142;
            }

            v99 = v140[v91];
            ++v97;
            if (v99)
            {
              v168 = v88;
              v96 = __clz(__rbit64(v99));
              v144 = (v99 - 1) & v99;
              goto LABEL_18;
            }
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }
      }

      else
      {

        type metadata accessor for SystemConfigurationLoader.Error(0);
        sub_223B7E598();
        swift_allocError();
        v78 = v77;
        v79 = sub_223BF430C();
        (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
        swift_willThrow();
        (*(v160 + 8))(v163, v167);
        return (*(v150 + 8))(v162, v161);
      }
    }
  }

  return result;
}

uint64_t (*sub_223B7AAB8(uint64_t a1, uint64_t a2, uint64_t a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_223B57430(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_223B6DC90(v7, v5 + 32);
  return sub_223B7EA10;
}

uint64_t sub_223B7AB34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = type metadata accessor for SystemConfigurationFile(255, a3, a4, v9);
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for ModelAssetLocation(0, v10, WitnessTable, v12);
  v14 = swift_getWitnessTable();
  return sub_223B503A0(a1, v13, v10, v14, WitnessTable, a5);
}

uint64_t sub_223B7AC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v41 = a6;
  v42 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v45 = &v38 - v11;
  v12 = [objc_opt_self() defaultManager];
  v44 = a1;
  sub_223BF42BC();
  v13 = sub_223BF453C();

  v14 = [v12 contentsAtPath_];

  if (v14)
  {
    v40 = a4;
    v15 = sub_223BF431C();
    v17 = v16;

    sub_223BF424C();
    swift_allocObject();
    sub_223BF423C();
    swift_getAssociatedConformanceWitness();
    v18 = v45;
    sub_223BF422C();
    v19 = v6;
    if (!v6)
    {
      v38 = v15;
      v39 = v17;

      v25 = v40;
      v27 = type metadata accessor for SystemConfigurationFile(255, a3, v40, v26);
      WitnessTable = swift_getWitnessTable();
      v30 = type metadata accessor for ModelAssetLocation(255, v27, WitnessTable, v29);
      v31 = swift_getWitnessTable();
      v46 = v30;
      v47 = v27;
      v48 = v31;
      v49 = WitnessTable;
      v32 = type metadata accessor for MixedAssetLocation(255, &v46);
      v33 = swift_getWitnessTable();
      type metadata accessor for ConcreteLocation(0, v32, v33, v34);
      sub_223B6A520(v32, &v46);
      v35 = v46;
      v36 = v47;
      v37 = v48;
      (*(v25 + 40))(v18, v46, v47, v48, v42, a3, v25);
      (*(v43 + 8))(v18, AssociatedTypeWitness);
      sub_223B7E9FC(v35, v36, v37);
      return sub_223B7E9A8(v38, v39);
    }

    sub_223B7E9A8(v15, v17);
  }

  else
  {
    type metadata accessor for SystemConfigurationLoader.Error(0);
    sub_223B7E598();
    v19 = swift_allocError();
    v22 = v21;
    v23 = sub_223BF430C();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v22, v44, v23);
    (*(v24 + 56))(v22, 0, 1, v23);
    result = swift_willThrow();
  }

  *v50 = v19;
  return result;
}

uint64_t sub_223B7B090@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25[-v13];
  v15 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v30[3] = type metadata accessor for CanonicalLocationResolver(0);
  v30[4] = &off_283717840;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_223B7E2D4(v15, boxed_opaque_existential_1);
  sub_223B57430(v30, v29);
  sub_223B57430(v29, v28);
  v17 = swift_allocObject();
  sub_223B6DC90(v29, v17 + 16);
  __swift_destroy_boxed_opaque_existential_0(v30);
  v26 = sub_223B7E82C;
  v27 = v17;
  sub_223B568F8(a1, v11, &qword_27D0B1330, &unk_223BF8510);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_223B56890(v11, v8, &qword_27D0B1328, &qword_223BF8508);
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      sub_223B77958(v8, v14);
      sub_223B56960(v8, &qword_27D0B1328, &qword_223BF8508);
      goto LABEL_10;
    }

    v19 = sub_223B7DD7C(*v11, sub_223B7E874, v25);
    if (!v3)
    {
      v20 = v19;
      if (*(v19 + 16))
      {

        *v14 = v20;
LABEL_10:
        swift_storeEnumTagMultiPayload();
        sub_223B56890(v14, v31, &qword_27D0B1260, &qword_223BFA7F0);

        return __swift_destroy_boxed_opaque_existential_0(v28);
      }

      goto LABEL_12;
    }

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v28);

    __break(1u);
    goto LABEL_12;
  }

  v21 = v11[8];
  v22 = sub_223B7DD7C(*v11, sub_223B7E874, v25);
  if (v3)
  {
    goto LABEL_11;
  }

  v23 = v22;
  if (*(v22 + 16))
  {

    *v14 = v23;
    v14[8] = v21;
    goto LABEL_10;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0(v28);
  result = sub_223BF4BEC();
  __break(1u);
  return result;
}

uint64_t sub_223B7B440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v35 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1888, &qword_223BFA7E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[2] = sub_223B7DBC8;
  v14[3] = 0;
  v14[4] = sub_223B7E6A8;
  v14[5] = KeyPath;
  v41 = sub_223B7E6B0;
  v42 = v14;
  v38 = sub_223B7E6BC;
  v39 = &v40;
  sub_223B568F8(a1, v12, &qword_27D0B1260, &qword_223BFA7F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v12;
      swift_retain_n();
      v17 = v36;
      v18 = sub_223B7DBF8(v16, sub_223B7E6F8, v37);
      if (!v17)
      {
        v19 = v18;
        if (*(v18 + 16))
        {
          v20 = 0;

          v21 = 1;
          goto LABEL_10;
        }

LABEL_15:

        result = sub_223BF4BEC();
        __break(1u);
        return result;
      }

LABEL_14:

      __break(1u);
      goto LABEL_15;
    }

    sub_223B56890(v12, v9, &qword_27D0B1888, &qword_223BFA7E8);
    v25 = sub_223BF430C();
    (*(*(v25 - 8) + 16))(v6, v9, v25);
    v21 = 2;
    swift_retain_n();
    v19 = sub_223B78EEC(v6);
    v27 = v26;
    sub_223B56960(v6, &qword_27D0B1820, &unk_223BFA720);

    v43 = v27 & 1;
    sub_223B56960(v9, &qword_27D0B1888, &qword_223BFA7E8);
    v6 = v43;
    v20 = v36;
  }

  else
  {
    v22 = *v12;
    v6 = v12[8];
    swift_retain_n();
    v23 = v36;
    v24 = sub_223B7DBF8(v22, sub_223B7E6F8, v37);
    if (v23)
    {
      goto LABEL_14;
    }

    v19 = v24;
    if (!*(v24 + 16))
    {
      goto LABEL_15;
    }

    v20 = 0;

    v21 = 0;
  }

LABEL_10:
  v28 = sub_223B79690(v19, v6 | (v21 << 8));
  if (v20)
  {
    sub_223B4C574(v19, v6, v21);
    sub_223B72B58();
    result = swift_allocError();
    *v35 = result;
  }

  else
  {
    v31 = v28;
    v32 = v29;
    sub_223B4C574(v19, v6, v21);
    return sub_223B78AB0(v31, v32 & 1, v34);
  }

  return result;
}

unint64_t sub_223B7B8D0(uint64_t a1, uint64_t a2, int64_t a3)
{
  v27 = a3;
  v24 = a1;
  v25 = a2;
  v4 = sub_223B757A4(MEMORY[0x277D84F90]);
  v5 = 0;
LABEL_4:
  v7 = sub_223B7E338();
  for (i = &type metadata for VirtualAudioGraphConfigurationDataSource; ; i = &type metadata for MacDriverDataSource)
  {
    v9 = type metadata accessor for SystemConfigurationFile(255, i, v7, v6);
    WitnessTable = swift_getWitnessTable();
    v12 = type metadata accessor for ModelAssetLocation(255, v9, WitnessTable, v11);
    v13 = swift_getWitnessTable();
    v26[0] = v12;
    v26[1] = v9;
    v26[2] = v13;
    v26[3] = WitnessTable;
    v14 = type metadata accessor for MixedAssetLocation(255, v26);
    v15 = sub_223B72BE0();
    type metadata accessor for SearchDescription(255, v14, &type metadata for True, v15);
    v16 = sub_223BF4A0C();
    v17 = *(v16 - 8);
    MEMORY[0x28223BE20](v16);
    v19 = &v24 - v18;
    (*(v17 + 16))(&v24 - v18, *(v24 + 8 * v5), v16);
    v20 = sub_223B79980(v19, v25, v27, i, v7);
    if (v3)
    {
      break;
    }

    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = v4;
    sub_223B7C6A4(v21, sub_223B7D6A8, 0, isUniquelyReferenced_nonNull_native, sub_223B7BB98);
    (*(v17 + 8))(v19, v16);
    v4 = v26[0];
    if (!++v5)
    {
      goto LABEL_4;
    }

    if (v5 == 2)
    {
      return v4;
    }

    v7 = sub_223B7E38C();
  }

  (*(v17 + 8))(v19, v16);

  return v4;
}

uint64_t sub_223B7BB98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_223B7D028(v6, sub_223B7D60C, 0, isUniquelyReferenced_nonNull_native, &v9);
  result = v9;
  if (v3)
  {
  }

  *a3 = v9;
  return result;
}

void *sub_223B7BC38(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18D0, &qword_223BFA878);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18D8, &unk_223BFA880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_223B7BD70(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18A0, &qword_223BFA838);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720) - 8);
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

char *sub_223B7BF64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18F0, &unk_223BFA900);
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

uint64_t sub_223B7C06C(uint64_t result)
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

  v3 = sub_223B7BD70(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
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

void *sub_223B7C1A4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18A8, &unk_223BFA840);
  result = sub_223BF4BFC();
  v6 = 0;
  v28 = a3;
  v29 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v26 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v28 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v31 = *(*(v28 + 56) + 8 * v17);

      a1(&v30, &v31);

      if (v3)
      {
        break;
      }

      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v29;
      v21 = v30;
      v22 = (v29[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      *(v29[7] + 8 * v17) = v21;
      v23 = v29[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_17;
      }

      v29[2] = v25;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v29;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_223B7C368(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12F8, &qword_223BF7F58);
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v34 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B18B0, &qword_223BFA850);
  result = sub_223BF4BFC();
  v10 = result;
  v11 = 0;
  v43 = a3;
  v14 = *(a3 + 64);
  v13 = a3 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v37 = result + 64;
  v35 = v13;
  v36 = v18;
  v39 = result;
  v19 = v44;
  if (v17)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v17));
      v45 = (v17 - 1) & v17;
LABEL_10:
      v23 = v20 | (v11 << 6);
      v24 = (*(v43 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      sub_223B568F8(*(v43 + 56) + *(v40 + 72) * v23, v19, &qword_27D0B1278, &qword_223BF8500);

      v27 = v46;
      v41(v19);
      v46 = v27;
      if (v27)
      {
        break;
      }

      sub_223B56960(v19, &qword_27D0B1278, &qword_223BF8500);
      *(v37 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = v38;
      v10 = v39;
      v29 = (*(v39 + 48) + 16 * v23);
      *v29 = v25;
      v29[1] = v26;
      result = sub_223B56890(v6, *(v10 + 56) + *(v28 + 72) * v23, &qword_27D0B12F8, &qword_223BF7F58);
      v30 = *(v10 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_17;
      }

      *(v10 + 16) = v32;
      v18 = v36;
      v17 = v45;
      v19 = v44;
      if (!v45)
      {
        goto LABEL_5;
      }
    }

    v33 = v39;

    v10 = v33;
    sub_223B56960(v19, &qword_27D0B1278, &qword_223BF8500);
    return v10;
  }

  else
  {
LABEL_5:
    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        return v10;
      }

      v22 = *(v35 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_223B7C6A4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void (*a5)(uint64_t *__return_ptr, id *, uint64_t *))
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v41 = v11;
  v42 = v7;
  v43 = v6;
  while (1)
  {
    if (!v10)
    {
      v20 = v12;
      while (1)
      {
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v19 >= v11)
        {
          sub_223B7E43C(v6);

          return;
        }

        v18 = *(v7 + 8 * v19);
        ++v20;
        if (v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      sub_223BF4DEC();
      __break(1u);
      goto LABEL_32;
    }

    v18 = v10;
    v19 = v12;
LABEL_14:
    v21 = __clz(__rbit64(v18)) | (v19 << 6);
    v22 = *(v6 + 56);
    v23 = (*(v6 + 48) + 16 * v21);
    v24 = v23[1];
    v25 = *(v22 + 8 * v21);
    v51 = *v23;
    v52 = v24;
    v53 = v25;

    a2(&v48, &v51);

    v26 = v48;
    v27 = v49;
    v28 = v50;
    v51 = v48;
    v52 = v49;
    v54 = v50;
    v29 = *v46;
    v31 = sub_223B6F81C(v48, v49);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_29;
    }

    v35 = v30;
    if (v29[3] < v34)
    {
      break;
    }

    if (a4)
    {
      if (v30)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_223B6FDF8();
      if (v35)
      {
        goto LABEL_21;
      }
    }

LABEL_5:
    v13 = *v46;
    *(*v46 + 8 * (v31 >> 6) + 64) |= 1 << v31;
    v14 = (v13[6] + 16 * v31);
    *v14 = v26;
    v14[1] = v27;
    *(v13[7] + 8 * v31) = v28;
    v15 = v13[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_30;
    }

    v13[2] = v17;
LABEL_7:
    v10 = (v18 - 1) & v18;
    a4 = 1;
    v12 = v19;
    v6 = v43;
    v11 = v41;
    v7 = v42;
  }

  sub_223B594E8(v34, a4 & 1);
  v36 = sub_223B6F81C(v26, v27);
  if ((v35 & 1) != (v37 & 1))
  {
    goto LABEL_31;
  }

  v31 = v36;
  if ((v35 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  v38 = *v46;
  v47 = *(*(*v46 + 56) + 8 * v31);

  a5(&v48, &v47, &v54);
  if (!v45)
  {

    *(v38[7] + 8 * v31) = v48;

    goto LABEL_7;
  }

  v47 = v45;
  v39 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_223B7E43C(v43);

    return;
  }

LABEL_32:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_223BF4AAC();
  MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
  sub_223BF4BCC();
  MEMORY[0x223DF2DE0](39, 0xE100000000000000);
  sub_223BF4BEC();
  __break(1u);
}

void sub_223B7CAE4(uint64_t *a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1240, &qword_223BFA860);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (v52 - v14);
  v56 = a1[2];
  if (!v56)
  {
    goto LABEL_22;
  }

  v52[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v55 = *(v13 + 72);
  v57 = a1;
  sub_223B568F8(a1 + v17, v52 - v14, &qword_27D0B1240, &qword_223BFA860);
  v61 = *v15;
  v18 = v61;
  v54 = v16;
  sub_223B56890(v15 + v16, v10, &qword_27D0B1228, &unk_223BF7CB0);
  v19 = *a3;
  v20 = sub_223B6F918(v18);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_223B59AF8(v25, a2 & 1);
    v20 = sub_223B6F918(v18);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_223BF4DEC();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_223B6FF68();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v60 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_223B56960(v10, &qword_27D0B1228, &unk_223BF7CB0);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  *(v31[6] + 4 * v20) = v18;
  v32 = v31[7];
  v53 = *(v8 + 72);
  sub_223B56890(v10, v32 + v53 * v20, &qword_27D0B1228, &unk_223BF7CB0);
  v33 = v31[2];
  v24 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (!v24)
  {
    v31[2] = v34;
    v35 = v57;
    if (v56 == 1)
    {
LABEL_22:

      return;
    }

    v36 = v57 + v55 + v17;
    v37 = &qword_27D0B1228;
    v38 = 1;
    while (v38 < v35[2])
    {
      sub_223B568F8(v36, v15, &qword_27D0B1240, &qword_223BFA860);
      v61 = *v15;
      v39 = v61;
      v40 = v37;
      sub_223B56890(v15 + v54, v10, v37, &unk_223BF7CB0);
      v41 = *a3;
      v42 = sub_223B6F918(v39);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_223B59AF8(v46, 1);
        v42 = sub_223B6F918(v39);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      *(v49[6] + 4 * v42) = v39;
      v37 = v40;
      sub_223B56890(v10, v49[7] + v53 * v42, v40, &unk_223BF7CB0);
      v50 = v49[2];
      v24 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v38;
      v49[2] = v51;
      v36 += v55;
      v35 = v57;
      if (v56 == v38)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_223BF4AAC();
  MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
  sub_223BF4BCC();
  MEMORY[0x223DF2DE0](39, 0xE100000000000000);
  sub_223BF4BEC();
  __break(1u);
}

void sub_223B7D028(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v6) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B0, &unk_223BF7F60);
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1870, &qword_223BFA7D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v55 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v61 = a1;
  v62 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v63 = v17;
  v64 = 0;
  v65 = v20 & v18;
  v66 = a2;
  v67 = a3;
  v55[2] = a1;

  v55[3] = a3;

  sub_223B7D6F0(v15);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1868, &unk_223BFA7C8);
  if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
  {
LABEL_5:
    sub_223B7E43C(v61);

    return;
  }

  v22 = *(v21 + 48);
  v24 = v15[1];
  v59 = *v15;
  v23 = v59;
  v60 = v24;
  sub_223B56890(v15 + v22, v12, &qword_27D0B11B0, &unk_223BF7F60);
  v25 = *a5;
  v26 = sub_223B6F81C(v23, v24);
  v28 = v25[2];
  v29 = (v27 & 1) == 0;
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v32) = v27;
  if (v25[3] < v31)
  {
    sub_223B59B1C(v31, v6 & 1);
    v26 = sub_223B6F81C(v23, v24);
    if ((v32 & 1) == (v33 & 1))
    {
      goto LABEL_11;
    }

LABEL_9:
    v26 = sub_223BF4DEC();
    __break(1u);
  }

  if (v6)
  {
LABEL_11:
    if (v32)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v36 = v26;
  sub_223B701BC();
  v26 = v36;
  if ((v32 & 1) == 0)
  {
LABEL_15:
    v37 = *a5;
    *(*a5 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v38 = (v37[6] + 16 * v26);
    *v38 = v23;
    v38[1] = v24;
    sub_223B56890(v12, v37[7] + *(v56 + 72) * v26, &qword_27D0B11B0, &unk_223BF7F60);
    v39 = v37[2];
    v30 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (!v30)
    {
      v37[2] = v40;
      v6 = &qword_27D0B11B0;
      v23 = &unk_223BF7F60;
      while (1)
      {
        sub_223B7D6F0(v15);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1868, &unk_223BFA7C8);
        if ((*(*(v41 - 8) + 48))(v15, 1, v41) == 1)
        {
          goto LABEL_5;
        }

        v42 = *(v41 + 48);
        v24 = v15[1];
        v59 = *v15;
        v32 = v59;
        v60 = v24;
        sub_223B56890(v15 + v42, v12, &qword_27D0B11B0, &unk_223BF7F60);
        v43 = *a5;
        v44 = sub_223B6F81C(v32, v24);
        v46 = v43[2];
        v47 = (v45 & 1) == 0;
        v30 = __OFADD__(v46, v47);
        v48 = v46 + v47;
        if (v30)
        {
          goto LABEL_24;
        }

        v49 = v45;
        if (v43[3] < v48)
        {
          sub_223B59B1C(v48, 1);
          v44 = sub_223B6F81C(v32, v24);
          if ((v49 & 1) != (v50 & 1))
          {
            goto LABEL_9;
          }
        }

        if (v49)
        {
          goto LABEL_12;
        }

        v51 = *a5;
        *(*a5 + 8 * (v44 >> 6) + 64) |= 1 << v44;
        v52 = (v51[6] + 16 * v44);
        *v52 = v32;
        v52[1] = v24;
        sub_223B56890(v12, v51[7] + *(v56 + 72) * v44, &qword_27D0B11B0, &unk_223BF7F60);
        v53 = v51[2];
        v30 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        v51[2] = v54;
      }
    }

    goto LABEL_25;
  }

LABEL_12:
  sub_223B7E444();
  v34 = swift_allocError();
  swift_willThrow();

  v68 = v34;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_223B56960(v12, &qword_27D0B11B0, &unk_223BF7F60);
    sub_223B7E43C(v61);

    return;
  }

LABEL_26:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_223BF4AAC();
  MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
  sub_223BF4BCC();
  MEMORY[0x223DF2DE0](39, 0xE100000000000000);
  sub_223BF4BEC();
  __break(1u);
}

uint64_t sub_223B7D60C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1868, &unk_223BFA7C8);
  v7 = *a1;
  v6 = a1[1];
  sub_223B568F8(a1 + v4, a2 + *(v5 + 48), &qword_27D0B11B0, &unk_223BF7F60);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_223B7D6A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_223B7D6F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1830, &unk_223BFA730);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B0, &unk_223BF7F60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1828, &qword_223BFA7E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v15 = (&v38 - v14);
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v44 = v19;
  if (v20)
  {
    v42 = v4;
    v43 = a1;
    v21 = v3;
    v22 = v18;
LABEL_11:
    v40 = v16;
    v41 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v22 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    sub_223B568F8(*(v16 + 56) + *(v7 + 72) * v26, v9, &qword_27D0B11B0, &unk_223BF7F60);
    v30 = *(v21 + 48);
    *v15 = v28;
    v15[1] = v29;
    v3 = v21;
    sub_223B56890(v9, v15 + v30, &qword_27D0B11B0, &unk_223BF7F60);
    v4 = v42;
    (*(v42 + 56))(v15, 0, 1, v3);

    v25 = v22;
    v32 = v40;
    v31 = v41;
    a1 = v43;
LABEL_12:
    *v1 = v32;
    v1[1] = v17;
    v33 = v45;
    v1[2] = v44;
    v1[3] = v25;
    v1[4] = v31;
    v34 = v1[5];
    sub_223B56890(v15, v33, &qword_27D0B1828, &qword_223BFA7E0);
    v35 = 1;
    if ((*(v4 + 48))(v33, 1, v3) != 1)
    {
      v36 = v39;
      sub_223B56890(v33, v39, &qword_27D0B1830, &unk_223BFA730);
      v34(v36);
      sub_223B56960(v36, &qword_27D0B1830, &unk_223BFA730);
      v35 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1868, &unk_223BFA7C8);
    return (*(*(v37 - 8) + 56))(a1, v35, 1, v37);
  }

  else
  {
    v23 = (v19 + 64) >> 6;
    if (v23 <= v18 + 1)
    {
      v24 = v18 + 1;
    }

    else
    {
      v24 = (v19 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v32 = v16;
        (*(v4 + 56))(v15, 1, 1, v3);
        v31 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v22);
      ++v18;
      if (v20)
      {
        v42 = v4;
        v43 = a1;
        v21 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_223B7DAD4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1820, &unk_223BFA720);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  a3(a1);
  a2(&v13, v10);
  result = sub_223B56960(v10, &qword_27D0B1820, &unk_223BFA720);
  v12 = v14;
  *a4 = v13;
  *(a4 + 8) = v12;
  return result;
}

uint64_t sub_223B7DBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_223B78EEC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_223B7DBF8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  sub_223B57EF4(0, v4, 0);
  v5 = v20;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0) - 8);
  v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = sub_223B79400(a2, a3);
    if (v3)
    {
      break;
    }

    v15 = *(v20 + 16);
    v14 = *(v20 + 24);
    if (v15 >= v14 >> 1)
    {
      v19 = v12;
      v18 = v13;
      sub_223B57EF4((v14 > 1), v15 + 1, 1);
      v12 = v19;
      v13 = v18;
    }

    *(v20 + 16) = v15 + 1;
    v16 = v20 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
    v10 += v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223B7DD7C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v18 = a2;
  v19 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v20 = MEMORY[0x277D84F90];
  sub_223B57E74(0, v10, 0);
  v11 = v20;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
  v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17 = *(v12 + 72);
  while (1)
  {
    sub_223B79120(v18, v19, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v20 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_223B57E74((v14 > 1), v15 + 1, 1);
      v11 = v20;
    }

    *(v11 + 16) = v15 + 1;
    sub_223B56890(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_27D0B1260, &qword_223BFA7F0);
    v13 += v17;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_223B7DF88(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1860, &qword_223BFA7C0) - 8;
  MEMORY[0x28223BE20](v20);
  v3 = &v19 - v2;
  v4 = sub_223BF425C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CanonicalLocationResolver(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223BF427C();
  v25 = *(a1 + 24);
  v22 = *(a1 + 24);
  (*(v5 + 104))(v7, *MEMORY[0x277CC91C0], v4);
  sub_223B50954();

  sub_223BF42EC();
  (*(v5 + 8))(v7, v4);
  sub_223B7E280(&v25);
  v11 = *(a1 + 48);
  v12 = &v10[*(v8 + 24)];
  *v12 = *(a1 + 40);
  *(v12 + 1) = v11;
  v23 = v8;
  v24 = &off_283717840;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  sub_223B7E2D4(v10, boxed_opaque_existential_1);
  v14 = sub_223B7E338();
  (*(v14 + 32))(a1);
  v21[0] = v3;
  v15 = sub_223B7E38C();
  v16 = &v3[*(v20 + 56)];
  (*(v15 + 32))(a1);
  v21[1] = v16;

  v17 = sub_223B7B8D0(v21, a1, &v22);
  sub_223B56960(v3, &qword_27D0B1860, &qword_223BFA7C0);
  sub_223B7E3E0(v10);
  __swift_destroy_boxed_opaque_existential_0(&v22);
  return v17;
}

uint64_t sub_223B7E2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanonicalLocationResolver(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_223B7E338()
{
  result = qword_281339A50;
  if (!qword_281339A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A50);
  }

  return result;
}

unint64_t sub_223B7E38C()
{
  result = qword_281339638[0];
  if (!qword_281339638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281339638);
  }

  return result;
}

uint64_t sub_223B7E3E0(uint64_t a1)
{
  v2 = type metadata accessor for CanonicalLocationResolver(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223B7E444()
{
  result = qword_27D0B1878;
  if (!qword_27D0B1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1878);
  }

  return result;
}

uint64_t sub_223B7E504@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t type metadata accessor for SystemConfigurationLoader.Error(uint64_t a1)
{
  result = qword_27D0B18E0;
  if (!qword_27D0B18E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_223B7E598()
{
  result = qword_27D0B1880;
  if (!qword_27D0B1880)
  {
    type metadata accessor for SystemConfigurationLoader.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1880);
  }

  return result;
}

uint64_t sub_223B7E654@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[2] = *(v2 + 16);
  result = sub_223B7C368(sub_223B7E7B8, v6, v4);
  *a2 = result;
  return result;
}

uint64_t sub_223B7E6F8@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

unint64_t sub_223B7E740()
{
  result = qword_281339318;
  if (!qword_281339318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1898, &qword_223BFA830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339318);
  }

  return result;
}

uint64_t sub_223B7E7A4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

uint64_t sub_223B7E9A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_223B7E9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_223B7EA44(uint64_t a1)
{
  v1 = sub_223BF430C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_223B7EAFC()
{
  result = qword_281339380;
  if (!qword_281339380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339380);
  }

  return result;
}

uint64_t sub_223B7EBD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_223B7EC24()
{
  result = qword_281339358;
  if (!qword_281339358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339358);
  }

  return result;
}

unint64_t sub_223B7ECB8()
{
  result = qword_281339350;
  if (!qword_281339350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339350);
  }

  return result;
}

unint64_t sub_223B7ED0C()
{
  result = qword_281339360;
  if (!qword_281339360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339360);
  }

  return result;
}

unint64_t sub_223B7ED60()
{
  result = qword_281339368;
  if (!qword_281339368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339368);
  }

  return result;
}

uint64_t sub_223B7EDF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_223B7EE48()
{
  result = qword_281339378;
  if (!qword_281339378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339378);
  }

  return result;
}

unint64_t sub_223B7EE9C()
{
  result = qword_281339388;
  if (!qword_281339388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339388);
  }

  return result;
}

unint64_t sub_223B7EEF0()
{
  result = qword_281339390[0];
  if (!qword_281339390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281339390);
  }

  return result;
}

unint64_t sub_223B7EF60()
{
  result = qword_27D0B1918;
  if (!qword_27D0B1918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1920, qword_223BFAB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1918);
  }

  return result;
}

uint64_t sub_223B7EFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_223BF4DAC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_223B7F05C(uint64_t a1)
{
  v2 = sub_223B7F674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B7F098(uint64_t a1)
{
  v2 = sub_223B7F674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B7F0D4(uint64_t a1)
{
  v2 = sub_223B7F6C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B7F110(uint64_t a1)
{
  v2 = sub_223B7F6C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B7F164(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1948, &qword_223BFACD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1950, &qword_223BFACE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B7F674();
  sub_223BF4EDC();
  sub_223B7F6C8();
  sub_223BF4CDC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_223B7F34C()
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

uint64_t sub_223B7F380(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1928, &qword_223BFACC0);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1930, &unk_223BFACC8);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B7F674();
  sub_223BF4ECC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_223BF4CCC() + 16) == 1)
    {
      sub_223B7F6C8();
      sub_223BF4C3C();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_223BF4ACC();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15C0, &qword_223BF9760);
      *v13 = &type metadata for UnitType;
      sub_223BF4C4C();
      sub_223BF4ABC();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_223B7F674()
{
  result = qword_27D0B1938;
  if (!qword_27D0B1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1938);
  }

  return result;
}

unint64_t sub_223B7F6C8()
{
  result = qword_27D0B1940;
  if (!qword_27D0B1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1940);
  }

  return result;
}

unint64_t sub_223B7F740()
{
  result = qword_27D0B1958;
  if (!qword_27D0B1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1958);
  }

  return result;
}

unint64_t sub_223B7F798()
{
  result = qword_27D0B1960;
  if (!qword_27D0B1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1960);
  }

  return result;
}

unint64_t sub_223B7F7F0()
{
  result = qword_27D0B1968;
  if (!qword_27D0B1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1968);
  }

  return result;
}

unint64_t sub_223B7F848()
{
  result = qword_27D0B1970;
  if (!qword_27D0B1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1970);
  }

  return result;
}

unint64_t sub_223B7F8A0()
{
  result = qword_27D0B1978;
  if (!qword_27D0B1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1978);
  }

  return result;
}

unint64_t sub_223B7F90C()
{
  result = qword_281339A60;
  if (!qword_281339A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A60);
  }

  return result;
}

uint64_t sub_223B7F960@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 3)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19A0, &qword_223BFAF88);
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1998, &qword_223BFAF80);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19A0, &qword_223BFAF88);
    v15 = *(v8 - 8);
    v9 = *(v15 + 72);
    v10 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_223BFAEB0;
    v12 = (v11 + v10);
    *v12 = 257;
    v12[1] = 0;
    v12[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19A8, &unk_223BFAF90);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v13 = v12 + v9;
    *v13 = xmmword_223BFAEC0;
    *(v13 + 2) = 0xEB0000000079616CLL;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *a2 = v11;
    *(a2 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v4 = *(v15 + 56);
    v6 = a2;
    v7 = 0;
    v5 = v8;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t sub_223B7FB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v47 = a7;
  v48 = a8;
  v43 = a3;
  v50 = a9;
  v49 = sub_223BF425C();
  v44 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1990, &unk_223BFAF70);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v42 - v16;
  v18 = sub_223BF430C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = v42 - v23;
  if (!a5 && (v24 = 0xE000000000000000, a6 == 0xE000000000000000) || (v24 = 0xE000000000000000, (sub_223BF4DAC() & 1) != 0))
  {
    v25 = 0;
  }

  else
  {
    v51 = a5;
    v52 = a6;

    MEMORY[0x223DF2DE0](95, 0xE100000000000000);
    v25 = v51;
    v24 = v52;
  }

  v51 = v25;
  v52 = v24;
  MEMORY[0x223DF2DE0](a1, a2);
  MEMORY[0x223DF2DE0](46, 0xE100000000000000);
  MEMORY[0x223DF2DE0](v43, a4);
  v27 = v51;
  v26 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1360, &qword_223BF8540);
  v42[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  v28 = *(v42[0] - 8);
  v43 = *(v28 + 72);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_223BFAEB0;
  v31 = v30 + v29;
  *v31 = v27;
  *(v31 + 8) = v26;
  *(v31 + 16) = xmmword_223BFAEC0;
  *(v31 + 32) = 0xEB0000000079616CLL;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

  sub_223BF428C();
  v32 = v19;
  v33 = *(v19 + 56);
  v34 = v18;
  v33(v17, 0, 1, v18);
  v35 = v22;
  sub_223BF426C();
  sub_223B56960(v17, &qword_27D0B1990, &unk_223BFAF70);
  v51 = v27;
  v52 = v26;
  v36 = v44;
  v37 = v46;
  v38 = v49;
  (*(v44 + 104))(v46, *MEMORY[0x277CC91D0], v49);
  sub_223B50954();
  v39 = v45;
  sub_223BF42FC();
  (*(v36 + 8))(v37, v38);
  (*(v32 + 8))(v35, v34);

  (*(v32 + 32))(v31 + v43, v39, v34);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if (*(v30 + 16))
  {
    v40 = v50;
    *v50 = v30;
    *(v40 + 8) = 0;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    result = sub_223BF4BEC();
    __break(1u);
  }

  return result;
}

uint64_t sub_223B80084()
{
  v35 = MEMORY[0x277D84F90];
  sub_223B57F34(0, 6, 0);
  v0 = v35;
  v1 = off_28371A158(&type metadata for VirtualAudioGraphPropertyHandlers.FIRImpulseResponse, &off_28371A150);
  v3 = *(v35 + 16);
  v2 = *(v35 + 24);
  if (v3 >= v2 >> 1)
  {
    v29 = v1;
    sub_223B57F34((v2 > 1), v3 + 1, 1);
    v1 = v29;
    v0 = v35;
  }

  *(v0 + 16) = v3 + 1;
  v4 = v0 + 24 * v3;
  *(v4 + 32) = v1;
  *(v4 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.FIRImpulseResponse;
  *(v4 + 48) = &off_28371A150;
  v5 = sub_223B88C70(&type metadata for VirtualAudioGraphPropertyHandlers.MagneticInterferenceMitigation, &off_28371A138);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (v7 >= v6 >> 1)
  {
    v30 = v5;
    sub_223B57F34((v6 > 1), v7 + 1, 1);
    v5 = v30;
    v0 = v35;
  }

  *(v0 + 16) = v7 + 1;
  v8 = v0 + 24 * v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.MagneticInterferenceMitigation;
  *(v8 + 48) = &off_28371A138;
  v9 = sub_223B88E30(&type metadata for VirtualAudioGraphPropertyHandlers.ChannelSelectorMap, &off_28371A120);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (v11 >= v10 >> 1)
  {
    v31 = v9;
    sub_223B57F34((v10 > 1), v11 + 1, 1);
    v9 = v31;
  }

  v12 = v35;
  *(v35 + 16) = v11 + 1;
  v13 = v12 + 24 * v11;
  *(v13 + 32) = v9;
  *(v13 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.ChannelSelectorMap;
  *(v13 + 48) = &off_28371A120;
  v14 = sub_223B88E84(&type metadata for VirtualAudioGraphPropertyHandlers.BeamIndex, &off_28371A108);
  v16 = *(v12 + 16);
  v15 = *(v12 + 24);
  if (v16 >= v15 >> 1)
  {
    v32 = v14;
    sub_223B57F34((v15 > 1), v16 + 1, 1);
    v14 = v32;
    v12 = v35;
  }

  *(v12 + 16) = v16 + 1;
  v17 = v12 + 24 * v16;
  *(v17 + 32) = v14;
  *(v17 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.BeamIndex;
  *(v17 + 48) = &off_28371A108;
  v18 = sub_223B88ED8(&type metadata for VirtualAudioGraphPropertyHandlers.BeamToReverse, &off_28371A0F0);
  v20 = *(v12 + 16);
  v19 = *(v12 + 24);
  if (v20 >= v19 >> 1)
  {
    v33 = v18;
    sub_223B57F34((v19 > 1), v20 + 1, 1);
    v18 = v33;
    v12 = v35;
  }

  *(v12 + 16) = v20 + 1;
  v21 = v12 + 24 * v20;
  *(v21 + 32) = v18;
  *(v21 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.BeamToReverse;
  *(v21 + 48) = &off_28371A0F0;
  v22 = sub_223B88F2C(&type metadata for VirtualAudioGraphPropertyHandlers.ConditionalOverlayTunings, &off_28371A0D8);
  v24 = *(v12 + 16);
  v23 = *(v12 + 24);
  if (v24 >= v23 >> 1)
  {
    v34 = v22;
    sub_223B57F34((v23 > 1), v24 + 1, 1);
    v22 = v34;
  }

  v25 = v35;
  *(v35 + 16) = v24 + 1;
  v26 = v25 + 24 * v24;
  *(v26 + 32) = v22;
  *(v26 + 40) = &type metadata for VirtualAudioGraphPropertyHandlers.ConditionalOverlayTunings;
  *(v26 + 48) = &off_28371A0D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1298, &unk_223BFAF60);
  v35 = sub_223BF4C1C();

  sub_223B804D8(v27, 1, &v35);

  qword_28133B5C0 = v35;
  return result;
}

unint64_t sub_223B8040C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  result = sub_223B809D0(v5);
  *a2 = result;
  return result;
}

void sub_223B804D8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 32);
  v37 = *(a1 + 40);
  v8 = *a3;
  v9 = sub_223B6F918(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_223B59E8C(v14, a2 & 1);
    v9 = sub_223B6F918(v7);
    if ((v15 & 1) != (v16 & 1))
    {
LABEL_5:
      sub_223BF4DEC();
      __break(1u);
LABEL_6:

      return;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v19 = v9;
  sub_223B7042C();
  v9 = v19;
  if (v15)
  {
LABEL_9:
    v17 = swift_allocError();
    swift_willThrow();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v20[6] + 4 * v9) = v7;
  *(v20[7] + 16 * v9) = v37;
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_223BF4AAC();
    MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
    sub_223BF4BCC();
    MEMORY[0x223DF2DE0](39, 0xE100000000000000);
    sub_223BF4BEC();
    __break(1u);
    return;
  }

  v20[2] = v22;
  if (v4 != 1)
  {
    v23 = (a1 + 64);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v25 = *(v23 - 2);
      v38 = *v23;
      v26 = *a3;
      v27 = sub_223B6F918(v25);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v13 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v13)
      {
        goto LABEL_24;
      }

      v32 = v28;
      if (v26[3] < v31)
      {
        sub_223B59E8C(v31, 1);
        v27 = sub_223B6F918(v25);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v32)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 4 * v27) = v25;
      *(v34[7] + 16 * v27) = v38;
      v35 = v34[2];
      v13 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v13)
      {
        goto LABEL_25;
      }

      ++v24;
      v34[2] = v36;
      v23 = (v23 + 24);
      if (v4 == v24)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

unint64_t sub_223B80840(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_223BF45EC();
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
    v5 = MEMORY[0x223DF2E10](15, a1 >> 16);
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

unint64_t sub_223B808BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_223BF4ADC();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_223B809D0(uint64_t *a1)
{
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  v2 = MEMORY[0x28223BE20](v193);
  v192 = &v182 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v191 = (&v182 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  v223 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v224 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v222 = &v182 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1980, &qword_223BFAF28);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v221 = (&v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v220 = (&v182 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1988, &unk_223BFAF30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v182 - v14;
  v16 = a1[1];
  v198 = *a1;
  v197 = v16;
  v17 = a1[3];
  v200 = a1[2];
  v199 = v17;
  v18 = a1[5];
  v195 = a1[4];
  v194 = v18;
  v204 = sub_223B75488(MEMORY[0x277D84F90]);
  v19 = a1[6];
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(a1[6] + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v215 = a1[6];
  v216 = v24 & v20;
  v25 = (v23 + 63) >> 6;

  v26 = 0;
  v202 = xmmword_223BF84C0;
  v212 = v21;
  v211 = v25;
LABEL_5:
  v27 = v26;
  v28 = v216;
  if (!v216)
  {
    goto LABEL_7;
  }

  do
  {
    v29 = v27;
LABEL_10:
    v216 = (v28 - 1) & v28;
    v30 = __clz(__rbit64(v28)) | (v29 << 6);
    v31 = (*(v215 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = (*(v215 + 56) + 216 * v30);
    v35 = v34[1];
    v209 = *v34;
    v37 = v34[2];
    v36 = v34[3];
    v38 = v34[4];
    v39 = v34[5];
    v40 = v34[10];
    v41 = v29;

    if (sub_223BF45FC())
    {
      v196 = v37;
      v183 = v36;
      v205 = v38;
      v184 = v39;
      v186 = v33;
      v187 = v32;
      v188 = v41;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = MEMORY[0x277D84F90];
      }

      v43 = *(v42 + 16);
      v185 = v35;
      v219 = v15;
      if (v43)
      {
        v228 = MEMORY[0x277D84F90];
        sub_223B57DD4(0, v43, 0);
        v44 = 0;
        v45 = v228;
        v203 = v42 + 32;
        v46 = v196;
        v47 = &qword_27D0B18B8;
        v190 = v42;
        v189 = v43;
        while (1)
        {
          if (v44 >= *(v42 + 16))
          {
            goto LABEL_161;
          }

          v48 = v203 + 32 * v44;
          v49 = *v48;
          v50 = *(v48 + 8);
          v51 = *(v48 + 16);
          v52 = *(v48 + 24);
          v210 = v45;
          v206 = v44;
          v213 = v49;
          v208 = v50;
          LODWORD(v207) = v51;
          if (v51)
          {
            if ((v49 & 0x8000000000000000) != 0)
            {
              goto LABEL_162;
            }

            if (!HIDWORD(v49))
            {
              sub_223B81F4C(v49, v50, 1);
              sub_223B81F5C(v52);
              goto LABEL_82;
            }

            goto LABEL_163;
          }

          v53 = v49;
          sub_223B81F4C(v49, v50, 0);
          v201 = v52;
          sub_223B81F5C(v52);
          sub_223B81F4C(v49, v50, 0);
          sub_223BF459C();
          v54 = sub_223BF460C();
          v56 = v55;
          v58 = v57;
          v60 = v59;
          sub_223B81F74(v53, v50, 0);
          v61 = v56 >> 14;
          if (v54 >> 14 == v56 >> 14)
          {

            LODWORD(v49) = 0;
            v47 = &qword_27D0B18B8;
            goto LABEL_81;
          }

          v62 = v54 >> 14;
          v63 = (v58 >> 59) & 1;
          if ((v60 & 0x1000000000000000) == 0)
          {
            LOBYTE(v63) = 1;
          }

          v64 = 4 << v63;
          v217 = (v60 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v218 = v60 & 0xFFFFFFFFFFFFFFLL;
          v65 = HIBYTE(v60) & 0xF;
          v214 = v58 & 0xFFFFFFFFFFFFLL;
          if ((v60 & 0x2000000000000000) == 0)
          {
            v65 = v58 & 0xFFFFFFFFFFFFLL;
          }

          v225 = v65;

          LODWORD(v49) = 0;
          do
          {
            v66 = v54 & 0xC;
            v67 = (v54 & 1) == 0 || v66 == v64;
            v68 = v67;
            if (v67)
            {
              v69 = v54;
              if (v66 == v64)
              {
                v69 = sub_223B80840(v54, v58, v60);
              }

              if (v69 >> 14 < v62 || v69 >> 14 >= v61)
              {
                goto LABEL_157;
              }

              if ((v69 & 1) == 0)
              {
                v69 = sub_223B808BC(v69, v58, v60);
              }
            }

            else
            {
              if (v54 >> 14 < v62)
              {
                goto LABEL_156;
              }

              v69 = v54;
              if (v54 >> 14 >= v61)
              {
                goto LABEL_156;
              }
            }

            if ((v60 & 0x1000000000000000) != 0)
            {
              LOBYTE(v71) = sub_223BF4A9C();
              if (!v68)
              {
                goto LABEL_70;
              }

              goto LABEL_61;
            }

            v70 = v69 >> 16;
            if ((v60 & 0x2000000000000000) != 0)
            {
              v226 = v58;
              v227 = v218;
              v72 = &v226 + v70;
              v71 = *(&v226 + v70);
              if ((*(&v226 + v70) & 0x80000000) == 0)
              {
                goto LABEL_60;
              }

              v73 = (__clz(v71 ^ 0xFF) - 24);
              if (v73 <= 2)
              {
                if (v73 != 1)
                {
                  LOBYTE(v71) = v72[1] & 0x3F | (v71 << 6);
                }

LABEL_60:
                if (!v68)
                {
                  goto LABEL_70;
                }

                goto LABEL_61;
              }

              if (v73 == 3)
              {
                v74 = v72[1];
                v75 = v72[2];
              }

              else
              {
                v74 = v72[2];
                v75 = v72[3];
              }

              LOBYTE(v71) = v75 & 0x3F | (v74 << 6);
              if (!v68)
              {
                goto LABEL_70;
              }
            }

            else
            {
              if ((v58 & 0x1000000000000000) == 0)
              {
                sub_223BF4ADC();
              }

              LOBYTE(v71) = sub_223BF4AEC();
              if (!v68)
              {
LABEL_70:
                if (v225 <= v54 >> 16)
                {
                  goto LABEL_158;
                }

                goto LABEL_71;
              }
            }

LABEL_61:
            if (v66 == v64)
            {
              v54 = sub_223B80840(v54, v58, v60);
            }

            if (v225 <= v54 >> 16)
            {
              goto LABEL_159;
            }

            if ((v54 & 1) == 0)
            {
              v54 = v54 & 0xC | sub_223B808BC(v54, v58, v60) & 0xFFFFFFFFFFFFFFF3 | 1;
            }

LABEL_71:
            if ((v60 & 0x1000000000000000) != 0)
            {
              v54 = sub_223BF456C();
            }

            else
            {
              v76 = v54 >> 16;
              if ((v60 & 0x2000000000000000) != 0)
              {
                v226 = v58;
                v227 = v218;
                v78 = *(&v226 + v76);
              }

              else
              {
                v77 = v217;
                if ((v58 & 0x1000000000000000) == 0)
                {
                  v77 = sub_223BF4ADC();
                }

                v78 = *(v77 + v76);
              }

              v79 = v78;
              v80 = __clz(v78 ^ 0xFF) - 24;
              if (v79 >= 0)
              {
                LOBYTE(v80) = 1;
              }

              v54 = ((v76 + v80) << 16) | 5;
            }

            LODWORD(v49) = v71 | (v49 << 8);
          }

          while (v61 != v54 >> 14);
          swift_bridgeObjectRelease_n();
          v47 = &qword_27D0B18B8;
          v46 = v196;
LABEL_81:
          v43 = v189;
          v42 = v190;
          v52 = v201;
LABEL_82:
          if (qword_281339A58 != -1)
          {
            swift_once();
          }

          v81 = qword_28133B5C0;
          if (*(qword_28133B5C0 + 16) && (v82 = sub_223B6F918(v49), (v83 & 1) != 0))
          {
            v84 = (*(v81 + 56) + 16 * v82);
            v86 = *v84;
            v85 = v84[1];
            v226 = v52;
            v87 = *(v85 + 16);
            sub_223B81F5C(v52);
            v88 = v87(&v226, v198, v197, v200, v199, v86, v85);
            sub_223B81F84(v226);
            sub_223B81F74(v213, v208, v207);
            sub_223B81F84(v52);
          }

          else
          {
            sub_223B81F74(v213, v208, v207);
            sub_223B81F84(v52);
            v88 = MEMORY[0x277D84F98];
          }

          v45 = v210;
          v228 = v210;
          v90 = *(v210 + 16);
          v89 = *(v210 + 24);
          v91 = v206;
          if (v90 >= v89 >> 1)
          {
            v93 = v206;
            sub_223B57DD4((v89 > 1), v90 + 1, 1);
            v91 = v93;
            v45 = v228;
          }

          v44 = v91 + 1;
          *(v45 + 16) = v90 + 1;
          *(v45 + 8 * v90 + 32) = v88;
          v92 = v205;
          if (v44 == v43)
          {
            v94 = v45;

            v95 = MEMORY[0x277D84F90];
            goto LABEL_93;
          }
        }
      }

      v95 = MEMORY[0x277D84F90];
      v94 = MEMORY[0x277D84F90];
      v92 = v205;
      v46 = v196;
      v47 = &qword_27D0B18B8;
LABEL_93:
      v96 = sub_223B752A0(v95);
      v97 = v94;
      v206 = *(v94 + 16);
      if (v206)
      {
        v98 = 0;
        v207 = v94 + 32;
        v210 = v94;
        do
        {
          if (v98 >= *(v97 + 16))
          {
            goto LABEL_164;
          }

          v99 = *(v207 + 8 * v98);
          v208 = v98 + 1;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v225 = v96;
          v226 = v96;
          v101 = *(v99 + 64);
          v214 = v99 + 64;
          v102 = 1 << *(v99 + 32);
          if (v102 < 64)
          {
            v103 = ~(-1 << v102);
          }

          else
          {
            v103 = -1;
          }

          v104 = v103 & v101;
          v213 = (v102 + 63) >> 6;
          v217 = v99;

          v105 = 0;
          while (1)
          {
            if (!v104)
            {
              if (v213 <= v105 + 1)
              {
                v109 = v105 + 1;
              }

              else
              {
                v109 = v213;
              }

              v110 = v109 - 1;
              while (1)
              {
                v108 = v105 + 1;
                if (__OFADD__(v105, 1))
                {
                  break;
                }

                if (v108 >= v213)
                {
                  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, &qword_223BFA858);
                  v117 = v47;
                  v118 = v220;
                  (*(*(v140 - 8) + 56))(v220, 1, 1, v140);
                  v104 = 0;
                  goto LABEL_113;
                }

                v104 = *(v214 + 8 * v108);
                ++v105;
                if (v104)
                {
                  goto LABEL_112;
                }
              }

              __break(1u);
              goto LABEL_154;
            }

            v108 = v105;
LABEL_112:
            v111 = __clz(__rbit64(v104));
            v104 &= v104 - 1;
            v112 = v111 | (v108 << 6);
            v113 = *(*(v217 + 48) + 4 * v112);
            v114 = v222;
            sub_223B81F9C(*(v217 + 56) + *(v223 + 72) * v112, v222);
            v115 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, &qword_223BFA858);
            v116 = *(v115 + 48);
            v117 = v47;
            v118 = v220;
            *v220 = v113;
            sub_223B56890(v114, v118 + v116, &qword_27D0B1288, &qword_223BFAF20);
            (*(*(v115 - 8) + 56))(v118, 0, 1, v115);
            v110 = v108;
LABEL_113:
            v119 = v221;
            sub_223B56890(v118, v221, &qword_27D0B1980, &qword_223BFAF28);
            v120 = __swift_instantiateConcreteTypeFromMangledNameV2(v117, &qword_223BFA858);
            v47 = v117;
            if ((*(*(v120 - 8) + 48))(v119, 1, v120) == 1)
            {
              v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
              v122 = v219;
              (*(*(v121 - 8) + 56))(v219, 1, 1, v121);
            }

            else
            {
              v123 = *(v120 + 48);
              LODWORD(v218) = isUniquelyReferenced_nonNull_native;
              v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
              v125 = *v119;
              v126 = v119 + v123;
              v122 = v219;
              sub_223B81F9C(v126, v219 + *(v124 + 48));
              *v122 = v125;
              sub_223B56960(v119, v117, &qword_223BFA858);
              v47 = v117;
              LOBYTE(isUniquelyReferenced_nonNull_native) = v218;
              (*(*(v124 - 8) + 56))(v122, 0, 1, v124);
            }

            v96 = v225;
            v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
            if ((*(*(v127 - 8) + 48))(v122, 1, v127) == 1)
            {
              break;
            }

            v128 = *v122;
            sub_223B56890(v122 + *(v127 + 48), v224, &qword_27D0B1288, &qword_223BFAF20);
            v129 = sub_223B6F918(v128);
            v131 = *(v96 + 16);
            v132 = (v130 & 1) == 0;
            v133 = __OFADD__(v131, v132);
            v134 = v131 + v132;
            if (v133)
            {
              goto LABEL_155;
            }

            v135 = v130;
            if (*(v96 + 24) < v134)
            {
              sub_223B597B4(v134, isUniquelyReferenced_nonNull_native & 1);
              v136 = v226;
              v129 = sub_223B6F918(v128);
              if ((v135 & 1) != (v137 & 1))
              {
                goto LABEL_166;
              }

LABEL_123:
              if (v135)
              {
                goto LABEL_101;
              }

              goto LABEL_124;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              v136 = v96;
              goto LABEL_123;
            }

            v201 = v129;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1290, &unk_223BF7D10);
            v141 = sub_223BF4BFC();
            v136 = v141;
            if (*(v96 + 16))
            {
              v142 = (v141 + 64);
              v143 = (v96 + 64);
              v144 = ((1 << *(v136 + 32)) + 63) >> 6;
              v190 = v96 + 64;
              if (v136 != v96 || v142 >= &v143[8 * v144])
              {
                memmove(v142, v143, 8 * v144);
              }

              v145 = 0;
              *(v136 + 16) = *(v96 + 16);
              v146 = 1 << *(v96 + 32);
              if (v146 < 64)
              {
                v147 = ~(-1 << v146);
              }

              else
              {
                v147 = -1;
              }

              v148 = v147 & *(v96 + 64);
              v149 = (v146 + 63) >> 6;
              if (v148)
              {
                do
                {
                  v150 = __clz(__rbit64(v148));
                  v225 = (v148 - 1) & v148;
LABEL_141:
                  v153 = v150 | (v145 << 6);
                  v154 = *(v96 + 56);
                  LODWORD(v218) = *(*(v96 + 48) + 4 * v153);
                  v203 = *(v223 + 72) * v153;
                  sub_223B81F9C(v154 + v203, v222);
                  *(*(v136 + 48) + 4 * v153) = v218;
                  sub_223B56890(v222, *(v136 + 56) + v203, &qword_27D0B1288, &qword_223BFAF20);
                  v148 = v225;
                }

                while (v225);
              }

              v151 = v145;
              while (1)
              {
                v145 = v151 + 1;
                if (__OFADD__(v151, 1))
                {
                  goto LABEL_165;
                }

                if (v145 >= v149)
                {
                  break;
                }

                v152 = *(v190 + 8 * v145);
                ++v151;
                if (v152)
                {
                  v150 = __clz(__rbit64(v152));
                  v225 = (v152 - 1) & v152;
                  goto LABEL_141;
                }
              }
            }

            v226 = v136;
            v129 = v201;
            if (v135)
            {
LABEL_101:
              v106 = v222;
              v107 = *(v223 + 72) * v129;
              sub_223B81F9C(*(v136 + 56) + v107, v222);
              sub_223B56960(v224, &qword_27D0B1288, &qword_223BFAF20);
              sub_223B8200C(v106, *(v136 + 56) + v107);
              goto LABEL_102;
            }

LABEL_124:
            *(v136 + 8 * (v129 >> 6) + 64) |= 1 << v129;
            *(*(v136 + 48) + 4 * v129) = v128;
            sub_223B56890(v224, *(v136 + 56) + *(v223 + 72) * v129, &qword_27D0B1288, &qword_223BFAF20);
            v138 = *(v136 + 16);
            v133 = __OFADD__(v138, 1);
            v139 = v138 + 1;
            if (v133)
            {
              goto LABEL_160;
            }

            *(v136 + 16) = v139;
LABEL_102:
            isUniquelyReferenced_nonNull_native = 1;
            v105 = v110;
            v225 = v136;
            v47 = &qword_27D0B18B8;
          }

          v98 = v208;
          v92 = v205;
          v46 = v196;
          v97 = v210;
        }

        while (v208 != v206);
      }

      v225 = v96;

      v155 = v183;
      if (v183)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1360, &qword_223BF8540);
        v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
        v157 = (*(v156 + 80) + 32) & ~*(v156 + 80);
        v158 = swift_allocObject();
        *(v158 + 16) = v202;
        sub_223B7FB68(v46, v155, 0x70697274737561, 0xE700000000000000, v200, v199, v195, v194, (v158 + v157));

        v159 = MEMORY[0x277D84F90];
      }

      else
      {
        v159 = MEMORY[0x277D84F90];
        v158 = MEMORY[0x277D84F90];
      }

      v160 = v187;
      v161 = v209;
      v162 = v184;
      if (v184)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1360, &qword_223BF8540);
        v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
        v164 = (*(v163 + 80) + 32) & ~*(v163 + 80);
        v165 = swift_allocObject();
        *(v165 + 16) = v202;
        v166 = v92;
        v167 = v200;
        v168 = v199;
        v169 = v195;
        v170 = v194;
        sub_223B7FB68(v166, v162, 0x69727473706F7270, 0xE900000000000070, v200, v199, v195, v194, (v165 + v164));
        v171 = MEMORY[0x277D84F90];
      }

      else
      {
        v165 = v159;
        v167 = v200;
        v168 = v199;
        v169 = v195;
        v170 = v194;
        v171 = v159;
      }

      v172 = v191;
      sub_223B7FB68(v161, v185, 1735422820, 0xE400000000000000, v167, v168, v169, v170, v191);

      v173 = v193;
      *(v172 + *(v193 + 36)) = 1;
      *(v172 + v173[10]) = v158;
      *(v172 + v173[11]) = v165;
      *(v172 + v173[12]) = v171;
      *(v172 + v173[13]) = v225;
      v174 = v192;
      sub_223B56890(v172, v192, &qword_27D0B1278, &qword_223BF8500);
      v175 = v204;
      v176 = swift_isUniquelyReferenced_nonNull_native();
      v226 = v175;
      sub_223B70838(v174, v186, v160, v176);

      v204 = v226;
      v15 = v219;
      v21 = v212;
      v25 = v211;
      v26 = v188;
      goto LABEL_5;
    }

    v27 = v41;
    v25 = v211;
    v21 = v212;
    v28 = v216;
  }

  while (v216);
LABEL_7:
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1338, &unk_223BFAF50);
      inited = swift_initStackObject();
      *(inited + 16) = v202;
      *(inited + 32) = 0xD00000000000001ALL;
      v178 = inited + 32;
      v179 = v204;
      *(inited + 40) = 0x8000000223C03FE0;
      *(inited + 48) = v179;
      v180 = sub_223B75688(inited);
      swift_setDeallocating();
      sub_223B56960(v178, &qword_27D0B1358, &qword_223BF8538);
      return v180;
    }

    v28 = *(v21 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_10;
    }
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  result = sub_223BF4DEC();
  __break(1u);
  return result;
}