unint64_t sub_2745DA57C()
{
  result = qword_280953E68;
  if (!qword_280953E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E68);
  }

  return result;
}

unint64_t sub_2745DA5D0()
{
  result = qword_280953E70;
  if (!qword_280953E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953DB0, &qword_27465EA78);
    sub_2745DA708(&qword_280953E78, &qword_280953DB8, &qword_27465EA80, sub_2745DA6B4);
    sub_2745DA708(&qword_280953E88, &qword_280953DA0, &qword_27465EA68, sub_2745DA7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E70);
  }

  return result;
}

unint64_t sub_2745DA6B4()
{
  result = qword_280953E80;
  if (!qword_280953E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E80);
  }

  return result;
}

uint64_t sub_2745DA708(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2745DA8A8(&qword_28094A6C0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2745DA7C0()
{
  result = qword_280953E90;
  if (!qword_280953E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E90);
  }

  return result;
}

unint64_t sub_2745DA814()
{
  result = qword_280953E98;
  if (!qword_280953E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D90, &qword_27465EA58);
    sub_2745DA1BC();
    sub_2745DA3B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E98);
  }

  return result;
}

uint64_t sub_2745DA8A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_21()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_12_1();

  return swift_deallocObject();
}

uint64_t objectdestroy_49Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2745DAA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_2745DAA94()
{
  result = qword_280953F48;
  if (!qword_280953F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953F50, &qword_27465ECD8);
    sub_2745DA440();
    sub_2745DA814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953F48);
  }

  return result;
}

id sub_2745DABB8()
{
  sub_274412734(0, &unk_28094D230, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953F58, &unk_27465EE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  v2 = *MEMORY[0x277D7CE70];
  v3 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CE70];
  *(inited + 40) = 0x656C626169726176;
  *(inited + 48) = 0xE800000000000000;
  v4 = *MEMORY[0x277D7CE20];
  *(inited + 64) = v3;
  *(inited + 72) = v4;
  sub_274412734(0, &unk_280953F60, 0x277D7CA20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = v2;
  v7 = v4;
  v8 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_2745DA8A8(&qword_28094BAE0, 255, type metadata accessor for WFVariableType);
  v9 = sub_27463BA4C();

  v10 = sub_2745F3630(*v0, v9);
  sub_2745D6C58(v10);
  v12 = v11;

  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110, &qword_27464FCD0);
  *(inited + 80) = v12;
  _s3__C3KeyVMa_0(0);
  sub_2745DA8A8(&qword_280949AD8, 255, _s3__C3KeyVMa_0);
  v13 = sub_27463B4DC();
  v14 = sub_274497328(v13);
  v15 = [objc_allocWithZone(MEMORY[0x277D7CA20]) initWithDefinition_];

  return v15;
}

uint64_t sub_2745DADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_2745DABB8();
  v4 = v2[1];
  v47 = *v2;
  v45 = v2[3];
  v46 = v4;
  v5 = v2[4];
  v34 = v2[5];
  sub_27463B9CC();
  sub_2744626F0(&v47, &v43, &unk_280953A00, &qword_27464F8C0);

  sub_27445E9E4(&v46, &v43);
  v6 = *(a1 + 16);
  v7 = sub_27463C0AC();
  v8 = *(*(v7 - 8) + 16);
  v8(&v43, &v45, v7);

  v9 = sub_27463B9BC();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v6;
  v12 = *(v2 + 1);
  *(v10 + 40) = *v2;
  *(v10 + 56) = v12;
  *(v10 + 72) = *(v2 + 2);
  sub_2744626F0(&v47, &v43, &unk_280953A00, &qword_27464F8C0);

  sub_27445E9E4(&v46, &v43);
  v8(&v43, &v45, v7);

  v13 = sub_27463B9BC();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = MEMORY[0x277D85700];
  *(v14 + 32) = v6;
  v15 = *(v2 + 1);
  *(v14 + 40) = *v2;
  *(v14 + 56) = v15;
  *(v14 + 72) = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
  sub_27463AF0C();
  v35 = v43;
  v16 = v44;
  type metadata accessor for BindingParameterStateDataSource();
  v17 = swift_allocObject();
  *(v17 + 16) = v35;
  *(v17 + 32) = v16;
  type metadata accessor for ParameterStateStore();
  swift_allocObject();
  sub_27458265C(v17, v18, v19, v20, v21, v22, v23, v24, v33, v34, v35, *(&v35 + 1), v36, a1, v39, a2, v43, *(&v43 + 1));
  v25 = sub_2745DB294(v38);
  if (v5)
  {
    v27 = v25;
    v28 = v26;
    v29 = *(v5 + 16);
    v30 = *(v5 + 24);

    return sub_27444AA9C(v40, v27, v28, v29, v30, v42);
  }

  else
  {
    type metadata accessor for CollectionPropertyListItemConfiguration();
    sub_2745DA8A8(&unk_28094A750, v32, type metadata accessor for CollectionPropertyListItemConfiguration);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2745DB100@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for CollectionValueEditor(0, a2, a1, a2);
  result = sub_2745D9FAC(v4);
  *a3 = result;
  return result;
}

uint64_t sub_2745DB138(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a1)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

LABEL_9:
    v18 = type metadata accessor for CollectionValueEditor(0, a5, v16, v17);
    return sub_2745DA008(v15, v18);
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    v15 = swift_dynamicCastUnknownClass();
    if (v15)
    {
      swift_unknownObjectRetain();
    }

    goto LABEL_9;
  }

  v7 = v6;
  swift_unknownObjectRetain();
  v8 = [v7 variable];
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];

  v12 = type metadata accessor for CollectionValueEditor(0, a5, v10, v11);
  sub_2745DA008(v9, v12);

  return swift_unknownObjectRelease();
}

uint64_t sub_2745DB294(uint64_t a1)
{
  v2 = sub_2745D9FAC(a1);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 values];
      sub_274412734(0, &qword_28094F988, 0x277D7C770);
      sub_27463B81C();

      v6 = sub_274453594();
LABEL_8:
      v10 = v6;

      v11 = sub_27452995C(v10);

      return v11;
    }
  }

  v7 = sub_2745D9FAC(a1);
  if (v7)
  {
    v3 = v7;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 keyValuePairs];
      sub_274412734(0, &unk_28094B310, 0x277D7C368);
      sub_27463B81C();

      v6 = sub_274453594();
      goto LABEL_8;
    }
  }

  return sub_27452995C(0);
}

uint64_t objectdestroy_87Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_2745DB4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = sub_27463B66C();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_27463B66C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_27463B66C();

LABEL_6:
  v17 = sub_274637EFC();
  v18 = sub_274637DFC();
  v19 = [v9 initWithKey:v14 defaultValue:v15 table:v16 locale:v17 bundleURL:v18];

  v20 = sub_274637E2C();
  (*(*(v20 - 8) + 8))(a8, v20);
  v21 = sub_274637F2C();
  (*(*(v21 - 8) + 8))(a7, v21);
  return v19;
}

uint64_t sub_2745DB678(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFTextFieldKeyboardType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_93Tm()
{

  sub_2743F459C(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_2745DB750()
{
  result = qword_280953F80;
  if (!qword_280953F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280953F70, &qword_27465E488);
    sub_2745DB7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953F80);
  }

  return result;
}

unint64_t sub_2745DB7D4()
{
  result = qword_280953F88;
  if (!qword_280953F88)
  {
    sub_274412734(255, &unk_28094F530, 0x277D7CA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953F88);
  }

  return result;
}

uint64_t objectdestroy_99Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 OUTLINED_FUNCTION_1_39()
{
  result = *(v0 - 192);
  v2 = *(v0 - 176);
  *(v0 - 296) = result;
  *(v0 - 280) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_37@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_2744626F0(a1, v5, v2, v3);
}

void *OUTLINED_FUNCTION_8_27(void *result)
{
  result[2] = v2;
  result[3] = v4;
  result[4] = v5;
  *(v7 - 296) = 0;
  *(v7 - 296) = *(v7 - 352);
  *(v7 - 288) = v3;
  *(v7 - 280) = v1;
  *(v7 - 272) = v6;
  *(v7 - 264) = v2;
  *(v7 - 256) = v4;
  *(v7 - 248) = v5;
  return result;
}

void *OUTLINED_FUNCTION_19_16()
{

  return sub_27463AEEC();
}

uint64_t OUTLINED_FUNCTION_20_18(unint64_t *a1)
{

  return sub_274458A14(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_22_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_2744626F0(a1, v5, v2, v3);
}

void OUTLINED_FUNCTION_23_15()
{
  *(v3 - 192) = v2;
  *(v3 - 184) = v1;
  *(v3 - 176) = v0;
}

void *OUTLINED_FUNCTION_26_13(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  result[5] = v2;
  result[6] = v3;
  return result;
}

void *OUTLINED_FUNCTION_27_13(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  result[5] = v2;
  result[6] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_274458A14(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_32_12(uint64_t a1)
{

  return sub_274639DDC();
}

void OUTLINED_FUNCTION_33_6()
{
  *(v3 - 192) = v2;
  *(v3 - 184) = v1;
  *(v3 - 176) = v0;
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1, uint64_t a2)
{

  return sub_2744626F0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_38_8(uint64_t a1)
{

  return sub_27440CB1C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_40_8(uint64_t result, uint64_t a2)
{
  *(v6 - 192) = v5;
  *(v6 - 184) = v2;
  *(v6 - 176) = v3;
  *(v6 - 168) = v4;
  *(v6 - 160) = result;
  *(v6 - 152) = a2;
  return result;
}

void *OUTLINED_FUNCTION_42_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_27463AF0C();
}

void *OUTLINED_FUNCTION_43_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_27463AF0C();
}

void *OUTLINED_FUNCTION_44_6()
{

  return sub_27463AEDC();
}

uint64_t sub_2745DBCC8(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_27463C27C())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_27463C44C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x277C58B20](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void sub_2745DBE3C(uint64_t a1)
{
  sub_274453594();
  sub_27463C44C();
  v2 = sub_274453594();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x277C58B20](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_21_2();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();

      return;
    }

    sub_27463C41C();
    sub_27463C46C();
    sub_27463C47C();
    sub_27463C42C();
  }
}

uint64_t sub_2745DBF74(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_27463C27C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    result = sub_27463C44C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x277C58B20](v4, a1);
        }

        else
        {
        }

        ++v4;
        type metadata accessor for WFEditorActionItem();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BE00, &qword_27464C510);
        swift_dynamicCast();
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
      }

      while (v2 != v4);
      return v5;
    }
  }

  return result;
}

uint64_t sub_2745DC0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_27445132C(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B840, &qword_2746575C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F550, &unk_27465EF70);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_27445132C((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2745DC1EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2744514F4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2744514F4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_274464A50(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_2745DC2EC()
{
  sub_274639ABC();
  OUTLINED_FUNCTION_4_34();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  if (*(v1 + 96) == 1)
  {
    OUTLINED_FUNCTION_4_10();
    sub_27440CBD8(v8, v9, v10, v11);
  }

  else
  {

    sub_27463BC0C();
    v12 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    OUTLINED_FUNCTION_4_10();
    sub_2744627C0(v13, v14, v15, v16, 0);
    (*(v3 + 8))(v7, v0);
  }

  OUTLINED_FUNCTION_4_10();
}

uint64_t sub_2745DC448@<X0>(uint64_t a1@<X8>)
{
  sub_274639ABC();
  OUTLINED_FUNCTION_4_34();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for ContactPickerView(0);
  sub_2745DDD20(v2 + *(v13 + 36), v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_274462750(v12, a1);
  }

  sub_27463BC0C();
  v15 = sub_27463A2FC();
  sub_274638CEC();

  sub_274639AAC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v9, v1);
}

uint64_t sub_2745DC5E8()
{
  v1 = *(v0 + 8);
  v2 = qword_28094A100;
  v3 = &selRef_dropTargetUpdated;
  if ([*(v1 + qword_28094A100) allowsMultipleValues])
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
    [v4 setModalPresentationStyle_];
    v5 = [objc_allocWithZone(WFRecipientFieldViewController) init];
    v6 = *(v0 + 32);
    v52 = *(v0 + 16);
    v53 = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C1D0, &qword_27464CFD0);
    MEMORY[0x277C575F0](&v51, v7);
    if (v51)
    {
      v3 = v2;
      v8 = v51;
      v9 = sub_2745DDBAC(v8);
      if (v9)
      {
        sub_2745DBE3C(v9);
        v11 = v10;

        if (v11)
        {
          sub_274412734(0, &qword_280950570, 0x277CFC2C0);
          v12 = sub_27463B7FC();

          [v5 setEntries_];

          v8 = v12;
        }
      }

      v2 = v3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954118, &unk_27465EF60);
    sub_27463A2EC();
    v13 = v52;
    [v5 setDelegate_];

    v14 = *(v1 + v2);
    sub_274414140();
    v16 = v15;

    v17 = *(v16 + 16);
    if (!v17)
    {

      v39 = MEMORY[0x277D84F90];
LABEL_33:
      sub_2745E1BB4(v39);
      sub_274412734(0, &unk_28094C200, 0x277CCABB0);
      sub_27446839C();
      v40 = sub_27463BA3C();

      [v5 setSupportedPersonProperties_];

      [v5 setAllowsCustomHandles_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_274648560;
      *(v41 + 32) = v5;
      sub_274412734(0, &qword_280954130, 0x277D75D28);
      v42 = v5;
      v43 = sub_27463B7FC();

      [v4 setViewControllers_];

      return v4;
    }

    v44 = v2;
    v45 = v1;
    v46 = v4;
    *&v52 = MEMORY[0x277D84F90];
    v48 = v16;
    sub_27463C44C();
    result = sub_2745DDDB0(v16);
    v20 = result;
    v1 = v16;
    v22 = v21;
    v23 = 0;
    v24 = v1 + 56;
    v47 = v1 + 64;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v20 < 1 << *(v1 + 32))
      {
        v2 = v20 >> 6;
        v3 = 1 << v20;
        if ((*(v24 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          return result;
        }

        if (*(v1 + 36) != v22)
        {
          goto LABEL_36;
        }

        v49 = v23;
        v50 = v19;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        result = sub_27463C42C();
        if (v50)
        {
          goto LABEL_40;
        }

        v25 = 1 << *(v1 + 32);
        if (v20 >= v25)
        {
          goto LABEL_37;
        }

        v26 = *(v24 + 8 * v2);
        if ((v26 & v3) == 0)
        {
          goto LABEL_38;
        }

        if (*(v1 + 36) != v22)
        {
          goto LABEL_39;
        }

        v27 = v26 & (-2 << (v20 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v3 = v2 << 6;
          v28 = v2 + 1;
          v29 = (v47 + 8 * v2);
          while (v28 < (v25 + 63) >> 6)
          {
            v30 = *v29++;
            v2 = v30;
            v3 += 64;
            ++v28;
            if (v30)
            {
              result = sub_274468390(v20, v22, 0);
              v1 = v48;
              v25 = __clz(__rbit64(v2)) + v3;
              goto LABEL_23;
            }
          }

          result = sub_274468390(v20, v22, 0);
          v1 = v48;
        }

LABEL_23:
        v23 = v49 + 1;
        if (v49 + 1 == v17)
        {

          v39 = v52;
          v1 = v45;
          v4 = v46;
          v2 = v44;
          goto LABEL_33;
        }

        v19 = 0;
        v22 = *(v1 + 36);
        v20 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CBDC18]) *(v3 + 896)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954118, &unk_27465EF60);
  sub_27463A2EC();
  v31 = v52;
  [v4 setDelegate_];

  v32 = *(v1 + v2);
  sub_274414F9C();
  v34 = v33;

  if ((WFCNContactIsAuthorizedToAccessContact() & 1) != 0 || *(v34 + 16))
  {
    sub_2745DDC20(v34, v4);
  }

  sub_2745DC1EC(v34);
  v35 = sub_27463B7FC();

  v36 = WFPredicateForEnablingPerson();

  [v4 setPredicateForEnablingContact_];
  sub_2745DC1EC(v34);

  v37 = sub_27463B7FC();

  v38 = WFPredicateForSelectionOfPerson();

  [v4 setPredicateForSelectionOfContact_];
  if ([v4 respondsToSelector_])
  {
    [v4 _prepareViewController];
  }

  return v4;
}

id sub_2745DCC50()
{
  v1 = type metadata accessor for ContactPickerView(0);
  v2 = OUTLINED_FUNCTION_53_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  sub_2745DDAEC(v0, v4 - v3);
  v6 = type metadata accessor for ContactPickerView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_2745DDAEC(v5, v7 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_2745DDB50(v5);
  return v8;
}

uint64_t sub_2745DCD0C()
{
  v1 = sub_2746396DC();
  v2 = OUTLINED_FUNCTION_53_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = v0 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent;
  v8 = *(v7 + 48);
  if (v8)
  {
    v9 = *(v7 + 56);

    v8(v10);

    return sub_274406A94(v8, v9);
  }

  else
  {
    sub_2745DC2EC();
    if (v13)
    {
      v12();
    }

    else
    {
      sub_2745DC448(v6);
      MEMORY[0x277C575F0](v3);
      sub_2746396CC();
      sub_27463AEBC();
      return sub_2744926AC(v6);
    }
  }
}

uint64_t sub_2745DCF00(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648560;
  *(inited + 32) = a2;
  v9[2] = v4;
  v6 = a2;
  v7 = sub_2745DBCC8(sub_2745DDDF4, v9, inited);
  swift_setDeallocating();
  sub_2744EBB98();
  sub_274414414(v7);
}

uint64_t sub_2745DD030(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent;
  v5 = *(*(v2 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent + 8) + qword_28094A100);
  v6 = sub_27441489C(a2);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_274648560;
    *(v7 + 32) = v6;
    v8 = v6;
    sub_274414414(v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274648560;
    v11 = [a2 contact];
    *(inited + 32) = v11;
    MEMORY[0x28223BE20](v11);
    v13[2] = v4;
    v12 = sub_2745DBCC8(sub_2745DDD90, v13, inited);
    swift_setDeallocating();
    sub_2744EBB98();
    sub_274414414(v12);
  }
}

uint64_t sub_2745DD22C(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_2746396DC();
  v7 = OUTLINED_FUNCTION_53_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  v12 = type metadata accessor for ContactPickerView(0);
  v13 = OUTLINED_FUNCTION_53_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = (v15 - v14);
  if ((a2 & 1) == 0)
  {
    [a1 commitRemainingText];
    v17 = [a1 entries];
    sub_274412734(0, &qword_280950570, 0x277CFC2C0);
    OUTLINED_FUNCTION_21_2();
    v18 = sub_27463B81C();

    v19 = v3 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent;
    sub_2745DDAEC(v3 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent, v16);
    [*(*(v19 + 8) + qword_28094A100) multipleStateClass];
    swift_getObjCClassMetadata();
    sub_274412734(0, &unk_28094A220, 0x277D7C2A8);
    OUTLINED_FUNCTION_21_2();
    if (swift_dynamicCastMetatype())
    {

      if (v18 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
        OUTLINED_FUNCTION_21_2();
        v20 = sub_27463C57C();
      }

      else
      {
        sub_27463C6CC();
        v20 = v18;
      }

      v21 = sub_274467468(v20);
    }

    else
    {

      v21 = 0;
    }

    v22 = v16[3];
    v23 = v16[4];
    v32[1] = v16[2];
    v32[2] = v22;
    v32[3] = v23;
    v32[0] = v21;
    v24 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C1D0, &qword_27464CFD0);
    sub_27463AEBC();
    sub_2745DDB50(v16);
  }

  v25 = v3 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent;
  v26 = *(v3 + OBJC_IVAR____TtCV14WorkflowEditor17ContactPickerView11Coordinator_parent + 48);
  if (v26)
  {
    v27 = *(v25 + 56);

    v26(v28);
    return sub_274406A94(v26, v27);
  }

  else
  {
    sub_2745DC2EC();
    if (v30)
    {
      if (a2)
      {
        v31();
      }

      else
      {
        v30();
      }
    }

    else
    {
      sub_2745DC448(v11);
      MEMORY[0x277C575F0](v8);
      sub_2746396CC();
      sub_27463AEBC();
      return sub_2744926AC(v11);
    }
  }
}

id sub_2745DD614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactPickerView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745DD684(uint64_t a1)
{
  result = type metadata accessor for ContactPickerView(319);
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

void sub_2745DD75C(uint64_t a1)
{
  sub_274462070(319, &qword_2809540B8, &qword_2809540C0, 0x277D7C298, type metadata accessor for Parameter);
  if (v1 <= 0x3F)
  {
    sub_2744620D8(319, &qword_2809540C8, &unk_2809540D0, &qword_27464CFE8, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_274462070(319, &qword_28094BED8, &unk_2809540E0, 0x277D7D7A0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2744620D8(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2744620D8(319, &qword_28094BEE0, &unk_280954100, &unk_27464C580, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2744620D8(319, &qword_28094BBC8, &unk_28094A210, qword_27464FBA0, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id sub_2745DD94C@<X0>(void *a1@<X8>)
{
  result = sub_2745DCC50();
  *a1 = result;
  return result;
}

uint64_t sub_2745DD974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2745DDC80(&qword_280954138);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2745DD9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2745DDC80(&qword_280954138);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2745DDA74(uint64_t a1)
{
  sub_2745DDC80(&qword_280954138);
  sub_27463A26C();
  __break(1u);
}

uint64_t sub_2745DDAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745DDB50(uint64_t a1)
{
  v2 = type metadata accessor for ContactPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745DDBAC(void *a1)
{
  v2 = [a1 parameterStates];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
  v3 = sub_27463B81C();

  return v3;
}

void sub_2745DDC20(uint64_t a1, void *a2)
{
  v3 = sub_27463B7FC();
  [a2 setDisplayedPropertyKeys_];
}

uint64_t sub_2745DDC80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContactPickerView(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2745DDCC0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_27463C22C();
  }

  else
  {
    return sub_27463C1FC();
  }
}

uint64_t sub_2745DDD20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2745DDE24(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_2745DDE90(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_274637EEC();

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t WFContactFieldParameter.view(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954140, &unk_27465EF80);
  MEMORY[0x28223BE20](v3);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v37 = sub_2745DE308();
  v10 = v9;
  sub_27463B9CC();

  v11 = sub_27463B9BC();
  OUTLINED_FUNCTION_68_0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;

  v14 = v1;
  v15 = sub_27463B9BC();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v13;
  v16[4] = a1;
  v16[5] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BDC0, &qword_27464C390);
  sub_27463AF0C();
  v35 = v40;
  v36 = v39;
  v34 = v41;
  v17 = (v5 + v3[15]);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274528610();
  *v17 = sub_27463979C();
  v17[1] = v18;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(KeyPath);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v21);
  v22 = v5 + v3[19];
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v23);
  v38 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_5_38();
  v38 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_5_38();
  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v25 = v14;
  sub_27444A564(v25);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *v5 = sub_27463950C();
  v5[1] = v26;
  v5[2] = v37;
  v5[3] = v10;
  v27 = [v25 localizedDescription];
  if (v27)
  {
    v28 = v27;
    v29 = sub_27463B6AC();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v5[4] = v29;
  v5[5] = v31;
  v5[6] = 1;
  v32 = v35;
  v5[7] = v36;
  v5[8] = v32;
  v5[9] = v34;
  sub_2745DE538(v25, a1);
  *(v5 + v3[14]) = 0;
  sub_2745DE898(v5, v8);
  sub_27440CA78(&unk_280954148, &qword_280954140, &unk_27465EF80, &unk_274656A70);
  return sub_27463AE9C();
}

uint64_t sub_2745DE308()
{
  if ([v0 hidesLabel])
  {
    return 0;
  }

  v2 = [v0 localizedLabel];
  v1 = sub_27463B6AC();

  return v1;
}

uint64_t sub_2745DE380@<X0>(void *a2@<X8>)
{
  swift_getObjectType();
  result = sub_2746385AC();
  if (!result)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [v4 variable];
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = v5;
  return result;
}

void sub_2745DE420(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a1)
  {
    v6 = *a1;
    [a5 multipleStateClass];
    swift_getObjCClassMetadata();
    sub_274412734(0, &unk_28094A220, 0x277D7C2A8);
    if (swift_dynamicCastMetatype())
    {
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];
    }

    swift_getObjectType();
    sub_2746385BC();
  }

  else
  {
    swift_getObjectType();
    sub_2746385BC();
  }
}

uint64_t sub_2745DE538(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B590, &qword_27464B400);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954178, &qword_27465F0F8);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  if (sub_2745DE908())
  {
    sub_27463B9CC();

    v10 = sub_27463B9BC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = a2;

    v13 = sub_27463B9BC();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v12;
    v14[4] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809540D0, &qword_27464CFE8);
    sub_27463AF0C();
    *v19 = *&v19[3];
    v15 = v19[5];
    v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949700, &qword_274647500));
    sub_27444A5DC(a1);
    sub_27440CA78(&qword_280949708, &qword_280949700, &qword_274647500, &unk_274648AD8);
    *v9 = sub_27463950C();
    *(v9 + 1) = v17;
    *(v9 + 1) = *v19;
    *(v9 + 4) = v15;
    swift_storeEnumTagMultiPayload();
    sub_2744681AC();
    sub_27440CA78(&qword_280954188, &qword_28094B590, &qword_27464B400, &protocol conformance descriptor for ModuleSummaryRowView<A>);
    return sub_274639DDC();
  }

  else
  {

    sub_27444AD68(a1, 0, 4, 0, 0, v6);
    sub_2745E0508(v6, v9);
    swift_storeEnumTagMultiPayload();
    sub_2744681AC();
    sub_27440CA78(&qword_280954188, &qword_28094B590, &qword_27464B400, &protocol conformance descriptor for ModuleSummaryRowView<A>);
    sub_274639DDC();
    return sub_2745E0578(v6);
  }
}

uint64_t sub_2745DE898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954140, &unk_27465EF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2745DE908()
{
  if ([v0 allowsMultipleValues])
  {
    return ([v0 isRangedSizeArray] ^ 1);
  }

  result = [v0 allowsTextEntry];
  if (result)
  {
    result = sub_274415114(v0);
    if (result)
    {

      return ([v0 isRangedSizeArray] ^ 1);
    }
  }

  return result;
}

uint64_t sub_2745DE968@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_2746385AC();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      result = 0;
    }
  }

  *a2 = result;
  return result;
}

uint64_t sub_2745DE9D8(void **a1)
{
  v1 = *a1;
  swift_getObjectType();
  v2 = v1;
  return sub_2746385BC();
}

id sub_2745DEA28(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    swift_unknownObjectRetain();
    v1 = [v1 value];
    if (v1)
    {
      sub_274412734(0, &qword_280954170, 0x277D7C680);
      sub_27463B80C();

      v1 = 0;
    }

    swift_unknownObjectRelease();
  }

  return v1;
}

uint64_t sub_2745DEFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_27463B79C();
  sub_27463B74C();
  return v5;
}

id sub_2745DF060(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = swift_unknownObjectRetain();
  sub_2745DEA28(v4);
  v6 = v5;
  swift_unknownObjectRelease();

  if (v6)
  {
    v7 = sub_27463B66C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id WFContactFieldParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (a1)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = [v14 variable];
      if (v15)
      {
        v16 = v15;
        [v12 populateWith_];
      }

      else
      {
        v19 = [v2 labelForState_];
        [v12 populateWithString_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        OUTLINED_FUNCTION_29_1();
        swift_unknownObjectRetain_n();
        sub_2745E0398(v2);
        if (v17)
        {
          v18 = sub_27463B66C();
        }

        else
        {
          v18 = 0;
        }

        [v12 populateWithString_];
        swift_unknownObjectRelease();
      }
    }
  }

  return v12;
}

id sub_2745DF2D4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFContactFieldParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t WFContactFieldParameter.moduleSummaryShowsAddButton(for:)(uint64_t result)
{
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      OUTLINED_FUNCTION_29_1();
      swift_unknownObjectRetain();
      v3 = [v2 value];
      if (v3)
      {
        v4 = v3;
        if ([v1 allowsMultipleValues])
        {
          v5 = [v4 count];

          swift_unknownObjectRelease();
          return v5 > 0;
        }
      }

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2745DF3FC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFContactFieldParameter.moduleSummaryShowsAddButton(for:)(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

id WFContactFieldParameter.defaultStateForNewArrayElement()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CFC2C0]);

  return [v0 init];
}

id sub_2745DF48C(void *a1)
{
  v1 = a1;
  v2 = WFContactFieldParameter.defaultStateForNewArrayElement()();

  return v2;
}

uint64_t sub_2745DF4D8()
{
  static WFContactFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745DF500(void *a1, void *a2)
{
  v5 = objc_allocWithZone(type metadata accessor for SummaryModal());
  v6 = v2;
  v7 = a1;
  sub_274408C90(v6, 0);
  v8 = *&v6[OBJC_IVAR____TtC14WorkflowEditorP33_55AA4CCD1A6B2E7075ABE2FF9E5C4A7234ContactFieldParameterSummaryEditor_modal];
  *&v6[OBJC_IVAR____TtC14WorkflowEditorP33_55AA4CCD1A6B2E7075ABE2FF9E5C4A7234ContactFieldParameterSummaryEditor_modal] = v9;
  v10 = v9;

  sub_27440A42C(a2);
}

uint64_t sub_2745DF62C()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2745DF6C4, v3, v2);
}

uint64_t sub_2745DF6C4()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2745DF7DC;
  OUTLINED_FUNCTION_3_40();
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_41;
  v0[7].receiver = v2;
  v3 = type metadata accessor for ContactFieldParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745DF7DC()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2745DF8E0, v2, v1);
}

uint64_t sub_2745DF8E0()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_55AA4CCD1A6B2E7075ABE2FF9E5C4A7234ContactFieldParameterSummaryEditor_modal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2745DF9D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745DFA70, v4, v3);
}

uint64_t sub_2745DFA70()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2745DF62C();
}

uint64_t sub_2745DFB1C()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_27463B9CC();

  v1 = sub_27463B9BC();
  OUTLINED_FUNCTION_68_0();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v0;

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_27463B9BC();
  OUTLINED_FUNCTION_68_0();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809540D0, &qword_27464CFE8);
  sub_27463AF0C();
  return v8;
}

void sub_2745DFC78(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v4 = Strong;
  v5 = *&Strong[OBJC_IVAR____TtC14WorkflowEditorP33_55AA4CCD1A6B2E7075ABE2FF9E5C4A7234ContactFieldParameterSummaryEditor_lastValue];
  if (!v5)
  {
    v7 = Strong;
    v8 = [v7 initialArrayState];
    if (v8 && (v9 = v8, v10 = [v8 value], v9, v10))
    {
      v11 = [v7 parameter];

      [v11 multipleStateClass];
      swift_getObjCClassMetadata();
      sub_274412734(0, &unk_28094A220, 0x277D7C2A8);
      if (swift_dynamicCastMetatype())
      {
        v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

        goto LABEL_10;
      }
    }

    else
    {
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v6 = v5;

LABEL_10:
  *a2 = v5;
}

void sub_2745DFDE8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC14WorkflowEditorP33_55AA4CCD1A6B2E7075ABE2FF9E5C4A7234ContactFieldParameterSummaryEditor_lastValue);
    *(Strong + OBJC_IVAR____TtC14WorkflowEditorP33_55AA4CCD1A6B2E7075ABE2FF9E5C4A7234ContactFieldParameterSummaryEditor_lastValue) = v4;
    v8 = v4;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v9 commitState_];
  }
}

id sub_2745DFE94(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_55AA4CCD1A6B2E7075ABE2FF9E5C4A7234ContactFieldParameterSummaryEditor_modal] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_55AA4CCD1A6B2E7075ABE2FF9E5C4A7234ContactFieldParameterSummaryEditor_lastValue] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ContactFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745DFF5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745DFFE0(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    OUTLINED_FUNCTION_3_40();
    sub_27453BA70();
    OUTLINED_FUNCTION_29_1();

    MEMORY[0x277C58AF0](v1 + 32, v3, v2);
    v2 = v4;

    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = sub_27463C27C();
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

char *sub_2745E0074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = OUTLINED_FUNCTION_3_40();
  v5 = sub_27453AACC(v3, v4);
  v6 = sub_27445ED2C(&v9, v5 + 32, v1, a1);
  v7 = v9;

  sub_274406A24(v7);
  if (v6 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t sub_2745E012C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_27463C27C();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_27453BA70();

    v1 = sub_27445EEA8(&v6, (v3 + 32), v2, v1, v4);
    sub_274406A24(v6);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_2745E01DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_274412734(0, &qword_280954170, 0x277D7C680);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_2745E02C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0, &qword_27464BAE0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_2745E0398(void *a1)
{
  v2 = [a1 wfName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_27463B6AC();

  return v3;
}

uint64_t sub_2745E0444()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_2745DF9D8(v2, v3);
}

uint64_t sub_2745E0508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B590, &qword_27464B400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745E0578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B590, &qword_27464B400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_22()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

void OUTLINED_FUNCTION_5_38()
{
  v2 = *(v1 - 112);
  *v0 = *(v1 - 120);
  *(v0 + 8) = v2;
}

uint64_t sub_2745E0654()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  return v1;
}

uint64_t sub_2745E06C8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274638FBC();
}

uint64_t sub_2745E0738()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();
}

uint64_t sub_2745E07B0(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274638FBC();
}

uint64_t sub_2745E0820@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809541C8, &qword_27465F228);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - v3;
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    sub_27444A444();
    sub_27463832C();
    result = __swift_getEnumTagSinglePayload(v4, 1, v7);
    if (result != 1)
    {
      return sub_2745E144C(v4);
    }
  }

  return result;
}

uint64_t sub_2745E09D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  sub_2745E0820(v12 - v4);
  v6 = sub_2746382FC();
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = sub_274638F9C();
  v9 = v8;
  v10 = sub_2745E10C0(v6, *v8);

  *v9 = v10;
  v7(v13, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  if (v13[0])
  {
    v12[1] = v13[0];
    sub_27463837C();
    if (v13[0])
    {
    }

    else
    {
      v13[0] = 0;
      sub_2745E07B0(v13);
    }
  }

  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_2745E0BBC()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC14WorkflowEditor28WorkflowSelectionCoordinator__selectedActions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809541D0, &qword_27465F278);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowEditor28WorkflowSelectionCoordinator__lastSelectedAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809541D8, &unk_27465F280);
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_2745E0C64()
{
  sub_2745E0BBC();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for WorkflowSelectionCoordinator(uint64_t a1)
{
  result = qword_2809541A0;
  if (!qword_2809541A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2745E0D10(uint64_t a1)
{
  sub_274441FA0(319, &qword_2809541B0, &qword_2809541B8, &qword_27465F148);
  if (v1 <= 0x3F)
  {
    sub_274441FA0(319, &qword_2809541C0, &qword_28094DC98, &qword_27465F150);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2745E0E14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809541D8, &unk_27465F280);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809541D0, &qword_27465F278);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  swift_weakInit();
  v13 = OBJC_IVAR____TtC14WorkflowEditor28WorkflowSelectionCoordinator__selectedActions;
  v17 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809541B8, &qword_27465F148);
  sub_274638F6C();
  (*(v9 + 32))(v0 + v13, v12, v7);
  v14 = OBJC_IVAR____TtC14WorkflowEditor28WorkflowSelectionCoordinator__lastSelectedAction;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC98, &qword_27465F150);
  sub_274638F6C();
  (*(v3 + 32))(v0 + v14, v6, v1);
  return v0;
}

uint64_t sub_2745E0FE0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkflowSelectionCoordinator(0);
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_2745E104C@<X0>(void *a1@<X8>)
{
  result = sub_2745E0738();
  *a1 = v3;
  return result;
}

unint64_t sub_2745E10C0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x277D85DE8];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v6 = (&v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_274525134(0, v5, v6);
    v7 = sub_2745E1260(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_2745E1384(v9, v5, sub_2745E1430);

    MEMORY[0x277C5A270](v9, -1, -1);
  }

  return v7;
}

unint64_t sub_2745E1260(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = a3 + 32;
    while (2)
    {
      v9 = *(v8 + 8 * v7++);
      sub_27463C74C();
      MEMORY[0x277C58EA0](v9);
      result = sub_27463C7AC();
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v12 = result & v11;
        v13 = (result & v11) >> 6;
        v14 = 1 << (result & v11);
        if ((v14 & *(a4 + 56 + 8 * v13)) == 0)
        {
          break;
        }

        result = v12 + 1;
        if (*(*(a4 + 48) + 8 * v12) == v9)
        {
          v15 = a1[v13];
          a1[v13] = v15 | v14;
          if ((v15 & v14) == 0 && __OFADD__(v6++, 1))
          {
            __break(1u);
            return result;
          }

          break;
        }
      }

      if (v7 != v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  return sub_2745FF9D0(a1, a2, v6, a4);
}

void *sub_2745E1384(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

unint64_t sub_2745E1400@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  result = sub_2745E1260(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_2745E144C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809541C8, &qword_27465F228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745E1544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_2745E7F2C(a4, a5, a6);
  sub_27463B7DC();
  sub_27463B7DC();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_27463C6BC();
  }

  return v10 & 1;
}

uint64_t sub_2745E161C()
{
  v0 = sub_274637DBC();
  v7 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  sub_27463BBCC();
  sub_2745E7F2C(&qword_2809542C0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  while (1)
  {
    sub_27463C0CC();
    if (!v12)
    {
      break;
    }

    sub_274464A50(&v11, v10);
    sub_27444C44C(v10, v8);
    sub_274412734(0, &qword_2809542C8, 0x277D7C810);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
    }

    v4 = __swift_destroy_boxed_opaque_existential_1(v10);
    if (v9)
    {
      MEMORY[0x277C57F30](v4);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      v3 = v13;
    }
  }

  (*(v7 + 8))(v2, v0);
  return v3;
}

uint64_t sub_2745E1824()
{
  OUTLINED_FUNCTION_21_17();
  type metadata accessor for WFContactPropertyID(0);
  v3 = v2;
  sub_2745E7F2C(&qword_280954280, type metadata accessor for WFContactPropertyID, &unk_274647EC0);
  v4 = OUTLINED_FUNCTION_15_21();
  v9 = MEMORY[0x277C581A0](v4, v3);
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_2745216D4(&v8, *(v0 + v6));
      v6 += 4;
      --v5;
    }

    while (v5);

    return v9;
  }

  else
  {
    OUTLINED_FUNCTION_19_8();
  }

  return v1;
}

uint64_t sub_2745E18E8()
{
  OUTLINED_FUNCTION_21_17();
  v2 = sub_27444A444();
  v3 = MEMORY[0x277C581A0](v1, &type metadata for ActionIdentity, v2);
  v14 = v3;
  v10 = *(v0 + 16);
  if (v10)
  {
    v11 = 32;
    do
    {
      OUTLINED_FUNCTION_14_18(v3, *(v0 + v11), v4, v5, v6, v7, v8, v9, v13);
      v3 = sub_27452179C();
      v11 += 8;
      --v10;
    }

    while (v10);

    return v14;
  }

  else
  {
    OUTLINED_FUNCTION_19_8();
  }

  return v1;
}

void sub_2745E1974(uint64_t a1)
{
  sub_274453594();
  v3 = 0x277D7C6D8uLL;
  OUTLINED_FUNCTION_18_7();
  v7 = sub_274412734(v4, v5, v6);
  OUTLINED_FUNCTION_18_7();
  sub_274482214(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_15_21();
  MEMORY[0x277C581A0](v11, v7);
  OUTLINED_FUNCTION_6_27();
  while (1)
  {
    if (qword_28094AE40 == v3)
    {

      return;
    }

    if (v7)
    {
      v21 = OUTLINED_FUNCTION_13_3();
      v12 = MEMORY[0x277C58B20](v21);
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v12 = *(a1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v19 = OUTLINED_FUNCTION_14_18(v12, v12, v13, v14, v15, v16, v17, v18, v22);
    sub_27452185C(v19, v20);

    ++v3;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_2745E1A5C()
{
  OUTLINED_FUNCTION_21_17();
  v6 = sub_27444A444();
  MEMORY[0x277C581A0](v1, &type metadata for ActionIdentity, v6);
  OUTLINED_FUNCTION_4_35();
  if (v5)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_38_9();
      OUTLINED_FUNCTION_14_18(v10, *(*(v0 + 48) + ((v8 << 9) | (8 * v9))), v11, v12, v13, v14, v15, v16, v17);
      sub_27452179C();
    }
  }

  while (1)
  {
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v7 >= v4)
    {

      return;
    }

    ++v3;
    if (*(v2 + 8 * v7))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_2745E1B10(uint64_t a1)
{
  v8 = MEMORY[0x277C581A0](*(a1 + 16), MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_27448E108(v4, v6);
      sub_274521880(v7, v6);
      sub_274430664(v7);
      v4 += 40;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_19_8();
  }

  return v1;
}

void sub_2745E1BB4(uint64_t a1)
{
  sub_274453594();
  v3 = 0x277CCABB0uLL;
  OUTLINED_FUNCTION_18_7();
  v7 = sub_274412734(v4, v5, v6);
  OUTLINED_FUNCTION_18_7();
  sub_274482214(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_15_21();
  MEMORY[0x277C581A0](v11, v7);
  OUTLINED_FUNCTION_6_27();
  while (1)
  {
    if (&unk_28094C200 == v3)
    {

      return;
    }

    if (v7)
    {
      v21 = OUTLINED_FUNCTION_13_3();
      v12 = MEMORY[0x277C58B20](v21);
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v12 = *(a1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v19 = OUTLINED_FUNCTION_14_18(v12, v12, v13, v14, v15, v16, v17, v18, v22);
    sub_274521FD4(v19, v20);

    ++v3;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_2745E1C9C(uint64_t a1)
{
  sub_274453594();
  v3 = 0x277D7C098uLL;
  OUTLINED_FUNCTION_18_7();
  v7 = sub_274412734(v4, v5, v6);
  OUTLINED_FUNCTION_18_7();
  sub_274482214(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_15_21();
  MEMORY[0x277C581A0](v11, v7);
  OUTLINED_FUNCTION_6_27();
  while (1)
  {
    if (&qword_28094E040 == v3)
    {

      return;
    }

    if (v7)
    {
      v21 = OUTLINED_FUNCTION_13_3();
      v12 = MEMORY[0x277C58B20](v21);
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v12 = *(a1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v19 = OUTLINED_FUNCTION_14_18(v12, v12, v13, v14, v15, v16, v17, v18, v22);
    sub_274522144(v19, v20);

    ++v3;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_2745E1D84()
{
  OUTLINED_FUNCTION_21_17();
  v2 = 0x277D7C6D8uLL;
  OUTLINED_FUNCTION_18_7();
  v6 = sub_274412734(v3, v4, v5);
  OUTLINED_FUNCTION_18_7();
  sub_274482214(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_15_21();
  MEMORY[0x277C581A0](v10, v6);
  OUTLINED_FUNCTION_4_35();
  if (v1)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_38_9();
      v14 = *(*(v0 + 56) + ((v12 << 9) | (8 * v13)));
      v21 = OUTLINED_FUNCTION_14_18(v14, v14, v15, v16, v17, v18, v19, v20, v23);
      sub_27452185C(v21, v22);
    }
  }

  while (1)
  {
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    ++v2;
    if (qword_28094AE40[v11])
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_2745E1E6C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  sub_2745E7F2C(&qword_28094F940, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v9 = OUTLINED_FUNCTION_15_21();
  v19[1] = MEMORY[0x277C581A0](v9, v2);
  v10 = *(v1 + 16);
  if (v10)
  {
    v13 = *(v4 + 16);
    v11 = v4 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19[0] = v1;
    v15 = v1 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v7, v15, v2);
      OUTLINED_FUNCTION_21_12();
      sub_2745223D8();
      v17 = OUTLINED_FUNCTION_32_9();
      v18(v17);
      v15 += v16;
      --v10;
    }

    while (v10);
  }

  else
  {
    OUTLINED_FUNCTION_19_8();
  }

  OUTLINED_FUNCTION_23();
}

uint64_t ActionViewModel.init(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_onChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952630, &unk_27465F290);
  swift_allocObject();
  *&v1[v4] = sub_274638F1C();
  v5 = &v1[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary];
  v5[1] = 0u;
  v5[2] = 0u;
  *v5 = 0u;
  v6 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummaryCoordinator;
  *&v1[v6] = [objc_allocWithZone(WFModuleSummaryCoordinator) init];
  v7 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_additionalParameterSummaries] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_additionalParameterSummaryCoordinators;
  sub_274412734(0, &qword_280950470, 0x277D7C0C0);
  sub_274412734(0, &qword_280950FD0, off_279ED92B8);
  sub_274482214(&qword_280954210, &qword_280950470, 0x277D7C0C0);
  OUTLINED_FUNCTION_39_9();
  *&v1[v8] = sub_27463B4DC();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters] = v7;
  v1[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_requiresHomeUpdate] = 0;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError] = 0;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesThatCanLogOut] = v7;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesAllowingMultipleAccounts] = v7;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] = a1;
  v9 = a1;
  v10 = [v9 visibleParametersWithProcessing_];
  sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
  v11 = sub_27463B81C();

  *&v2[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_visibleParameters] = v11;
  v12 = [v9 parameters];
  v13 = sub_27463B81C();

  sub_2745E1974(v13);
  v15 = v14;

  sub_2745E5678(v16, v15);
  *&v2[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_observingParameters] = v17;
  v18 = [v9 identifier];
  if (!v18)
  {
    sub_27463B6AC();
    v18 = sub_27463B66C();
  }

  IsFavorite = WFActionIsFavorite();

  v2[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isFavorite] = IsFavorite;
  v20 = [v9 parameterCollapsingBehavior] == 1;
  v2[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isExpanded] = v20;
  v21 = [v9 isOutputExpandedInEditor];
  v2[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showOutput] = v21;
  v44.receiver = v2;
  v44.super_class = type metadata accessor for ActionViewModel();
  v22 = objc_msgSendSuper2(&v44, sel_init);
  sub_2745E3020();
  sub_2745E38DC();
  sub_2745E3764();
  v23 = [objc_opt_self() sharedManager];
  [v23 addEventObserver_];

  [v9 addEventObserver_];
  v24 = [v9 resourceManager];
  [v24 addTarget:v22 selector:sel_resourcesDidChange_];

  v43 = v9;
  v25 = [v9 parameters];
  v26 = sub_27463B81C();

  result = sub_27444C52C(v26);
  if (!result)
  {
    goto LABEL_10;
  }

  v28 = result;
  if (result >= 1)
  {
    v29 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x277C58B20](v29, v26);
      }

      else
      {
        v30 = *(v26 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      [v30 addEventObserver_];
      v32 = [v31 resourceManager];
      [v32 addTarget:v22 selector:sel_resourcesDidChange_];
    }

    while (v28 != v29);
LABEL_10:

    v33 = objc_opt_self();
    v34 = [v33 defaultCenter];
    OUTLINED_FUNCTION_24_12(v34, v35, v36, sel_favoritesDidChange_, *MEMORY[0x277D7CB38]);

    v37 = [v33 defaultCenter];
    OUTLINED_FUNCTION_24_12(v37, v38, v39, sel_pasteboardDidChange, *MEMORY[0x277D76DC0]);

    v40 = [v33 defaultCenter];
    OUTLINED_FUNCTION_24_12(v40, v41, v42, sel_updateHomeMigrationRequirement, *MEMORY[0x277D76648]);

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745E2510()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) localizedName];
  v2 = sub_27463B6AC();

  return v2;
}

BOOL sub_2745E2570()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  return v0 && [v0 mode];
}

uint64_t sub_2745E25D0(uint64_t a1)
{
  OUTLINED_FUNCTION_30_13(a1, OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_observingParameters);
  sub_2745E5ABC(v1);
}

uint64_t sub_2745E2614()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) localizedDiscontinuedDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

uint64_t sub_2745E26A4()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showOutput;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2745E26E8(char a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showOutput;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_2745E605C();
}

void (*sub_2745E273C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2745E27A0;
}

void sub_2745E27A0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2745E605C();
  }
}

void sub_2745E27D4()
{
  OUTLINED_FUNCTION_24();
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) disabledOnPlatforms];
  type metadata accessor for WFExecutionPlatform(0);
  v2 = sub_27463B81C();

  v3 = 0;
  v4 = *(v2 + 16);
  while (1)
  {
    if (v4 == v3)
    {

      goto LABEL_13;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v5 = *(v2 + 8 * v3 + 32);
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 currentDevice];
    [v8 idiom];

    v9 = WFExecutionPlatformForDeviceIdiom();
    v10 = sub_27463B6AC();
    v12 = v11;
    if (v10 == sub_27463B6AC() && v12 == v13)
    {

LABEL_12:

      v16 = objc_opt_self();
      v17 = *MEMORY[0x277D7D018];
      v18 = [v6 currentDevice];
      v19 = [v18 idiom];

      v20 = [v16 wf:v17 unsupportedActionErrorWithType:v19 platformIdiom:?];
LABEL_13:
      OUTLINED_FUNCTION_23();
      return;
    }

    ++v3;
    v15 = sub_27463C6BC();

    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

BOOL sub_2745E29C8()
{
  v1 = v0;
  v2 = sub_274638C1C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x277D79BE8], v2);
  v9 = sub_274638C0C();
  (*(v4 + 8))(v8, v2);
  result = 0;
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    v11 = [v10 workflow];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 actionTree];
      v14 = [v13 outputsForAction_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952610, &qword_274652550);
      v15 = sub_27463B81C();

      v16 = sub_27444C52C(v15);

      if (v16)
      {
        return 1;
      }
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      if ([v17 mode] != 2)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_2745E2B90(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_30_13(a1, OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError);

  sub_274405A7C();
}

void sub_2745E2BE4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  v9 = *&v0[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action];
  v10 = [v9 visibleParametersWithProcessing_];
  sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
  v11 = sub_27463B81C();

  v12 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_visibleParameters;
  v13 = *&v1[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_visibleParameters];

  sub_2744F582C(v11, v13);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    sub_274638C2C();

    v17 = v1;
    v18 = sub_274638D9C();
    v19 = sub_27463BBEC();

    v50 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v47 = v18;
      v48 = v9;
      v49 = v12;
      v20 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v46 = v20;
      *v20 = 136315394;
      v21 = sub_274453594();
      v22 = MEMORY[0x277D84F90];
      if (v21)
      {
        v23 = v21;
        v44 = v8;
        v45 = v4;
        v51 = MEMORY[0x277D84F90];
        sub_27445128C(0, v21 & ~(v21 >> 63), 0);
        if (v23 < 0)
        {
          __break(1u);
          return;
        }

        v24 = 0;
        v22 = v51;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x277C58B20](v24, v11);
          }

          else
          {
            v25 = *(v11 + 8 * v24 + 32);
          }

          v26 = v25;
          v27 = [v26 key];
          v28 = sub_27463B6AC();
          v30 = v29;

          v32 = *(v51 + 16);
          v31 = *(v51 + 24);
          if (v32 >= v31 >> 1)
          {
            v34 = OUTLINED_FUNCTION_0_8(v31);
            sub_27445128C(v34, v32 + 1, 1);
          }

          ++v24;
          *(v51 + 16) = v32 + 1;
          v33 = v51 + 16 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v30;
        }

        while (v23 != v24);
        v8 = v44;
        v4 = v45;
      }

      v35 = MEMORY[0x277C57F80](v22, MEMORY[0x277D837D0]);
      v37 = v36;

      v38 = sub_2745E7980(v35, v37, &v52);

      *(v46 + 1) = v38;
      *(v46 + 6) = 2080;
      v39 = [v48 identifier];
      v40 = sub_27463B6AC();
      v42 = v41;

      v43 = sub_2745E7980(v40, v42, &v52);

      *(v46 + 14) = v43;
      _os_log_impl(&dword_2743F0000, v47, v50, "Visible parameters changed to %s, in action: %s", v46, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_14_6();

      (*(v4 + 8))(v8, v2);
      v12 = v49;
    }

    else
    {

      (*(v4 + 8))(v8, v2);
    }

    *&v1[v12] = v11;

    sub_2745E5F28();
    LOBYTE(v52) = 1;
    sub_274638F0C();
    OUTLINED_FUNCTION_23();
    return;
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2745E3020()
{
  sub_274412734(0, &qword_280950470, 0x277D7C0C0);
  sub_274412734(0, &qword_280950FD0, off_279ED92B8);
  sub_274482214(&qword_280954210, &qword_280950470, 0x277D7C0C0);
  v1 = sub_27463B4DC();
  v101 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  v3 = [v2 additionalParameterSummaries];
  v4 = sub_27463B81C();

  v5 = sub_27444C52C(v4);
  p_opt_inst_meths = &OBJC_PROTOCOL___CNContactPickerDelegate.opt_inst_meths;
  if (!v5)
  {

    v8 = MEMORY[0x277D84F90];
LABEL_40:
    *(p_opt_inst_meths[65] + v101) = v1;

    v41 = *(v101 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_visibleParameters);

    v42 = [v2 displaysParameterSummary];
    v43 = [v2 parameterSummary];
    v44 = *(v101 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummaryCoordinator);
    v112 = v41;
    v113 = v42;
    v92 = v43;
    v114 = v43;
    v115 = v44;
    v116 = v8;
    v91 = v44;
    sub_2745E60E0(&v112, v2, &v102);
    v45 = (v101 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary);
    v47 = *(v101 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary);
    v46 = *(v101 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 8);
    v49 = *(v101 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 16);
    v48 = *(v101 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 24);
    v50 = *(v101 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 32);
    v51 = *(v101 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 40);
    v94 = v103;
    v52 = v105;
    v97 = v104;
    v98 = v102;
    v100 = v106;
    v95 = v107;
    if (v48)
    {
      if (v105)
      {
        v111[0] = v102;
        v111[1] = v103;
        v111[2] = v104;
        v111[3] = v105;
        v111[4] = v106;
        v111[5] = v107;
        v110[0] = v47;
        v110[1] = v46;
        v110[2] = v49;
        v110[3] = v48;
        v110[4] = v50;
        v110[5] = v51;
        sub_27448287C(v102, v103, v104, v105, v106, v107);
        OUTLINED_FUNCTION_7_35();
        sub_27448287C(v53, v54, v55, v56, v57, v58);
        v90 = sub_2745E7014(v110, v111);

        OUTLINED_FUNCTION_7_35();
        sub_2744FAD34(v59, v60, v61, v62, v63, v64);
        if ((v90 & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_46:
        v77 = v108;

        sub_2744F5840(v78, v77);
        LOBYTE(v77) = v79;

        if (v77)
        {
          v80 = v109;

          sub_2744F582C(v81, v80);
          LOBYTE(v80) = v82;

          if (v80)
          {
            sub_2745E8454(&v102);
          }
        }

        goto LABEL_49;
      }
    }

    else if (!v105)
    {
      goto LABEL_46;
    }

    sub_27448287C(v102, v103, v104, v105, v106, v107);
    OUTLINED_FUNCTION_7_35();
    sub_27448287C(v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_7_35();
    sub_2744FAD34(v71, v72, v73, v74, v75, v76);
    sub_2744FAD34(v98, v94, v97, v52, v100, v95);
LABEL_49:
    v84 = *v45;
    v85 = v45[1];
    v86 = v45[2];
    v87 = v45[3];
    v89 = v45[4];
    v88 = v45[5];
    *v45 = v98;
    v45[1] = v94;
    v45[2] = v97;
    v45[3] = v52;
    v45[4] = v100;
    v45[5] = v95;
    sub_27448287C(v98, v94, v97, v52, v100, v95);
    sub_2744FAD34(v84, v85, v86, v87, v89, v88);
    OUTLINED_FUNCTION_30_13(v108, OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_additionalParameterSummaries);

    OUTLINED_FUNCTION_30_13(v109, OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters);

    sub_274638F0C();

    return sub_2745E8454(&v102);
  }

  if (v5 < 1)
  {
    goto LABEL_53;
  }

  v93 = v2;
  v7 = 0;
  v99 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_additionalParameterSummaryCoordinators;
  v8 = MEMORY[0x277D84F90];
  v96 = v5;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x277C58B20](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = *(v101 + v99);
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = v10;
      v13 = sub_27463C53C();

      if (v13)
      {
        v111[0] = v13;
        swift_dynamicCast();
        v14 = v102;
        goto LABEL_13;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (*(v11 + 16))
    {

      sub_274534CC0();
      if (v16)
      {
        v14 = *(*(v11 + 56) + 8 * v15);
LABEL_13:

        if (v14)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_16:
    v14 = [objc_allocWithZone(WFModuleSummaryCoordinator) init];
LABEL_17:
    if ((v1 & 0xC000000000000001) != 0)
    {
      if (v1 < 0)
      {
        v17 = v1;
      }

      else
      {
        v17 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = v10;
      v19 = v14;
      v20 = sub_27463C27C();
      if (__OFADD__(v20, 1))
      {
        goto LABEL_51;
      }

      sub_2745FB928(v17, v20 + 1);
      v1 = v21;
    }

    else
    {
      v22 = v10;
      v23 = v14;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v102 = v1;
    sub_274534CC0();
    if (__OFADD__(*(v1 + 16), (v25 & 1) == 0))
    {
      break;
    }

    v26 = v24;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809542D0, &qword_27465F3E8);
    if (sub_27463C4CC())
    {
      sub_274534CC0();
      v30 = v96;
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_54;
      }

      v26 = v28;
    }

    else
    {
      v30 = v96;
    }

    v1 = v102;
    if (v27)
    {
      v31 = v102[7];
      v32 = *(v31 + 8 * v26);
      *(v31 + 8 * v26) = v14;
    }

    else
    {
      v102[(v26 >> 6) + 8] |= 1 << v26;
      *(*(v1 + 48) + 8 * v26) = v10;
      *(*(v1 + 56) + 8 * v26) = v14;
      v33 = *(v1 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_52;
      }

      *(v1 + 16) = v35;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2744500D0();
      v8 = v39;
    }

    v37 = *(v8 + 16);
    v36 = *(v8 + 24);
    if (v37 >= v36 >> 1)
    {
      OUTLINED_FUNCTION_0_8(v36);
      sub_2744500D0();
      v8 = v40;
    }

    ++v7;
    *(v8 + 16) = v37 + 1;
    v38 = v8 + 16 * v37;
    *(v38 + 32) = v10;
    *(v38 + 40) = v14;
    if (v30 == v7)
    {

      v2 = v93;
      p_opt_inst_meths = (&OBJC_PROTOCOL___CNContactPickerDelegate + 40);
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

void sub_2745E3764()
{
  if ([*(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) requiresUpdatedHome])
  {
    v1 = objc_opt_self();
    v2 = [v1 sharedManager];
    [v2 reloadData];

    v3 = [v1 sharedManager];
    OUTLINED_FUNCTION_5();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = sub_2745E8398;
    v12 = v4;
    v7 = MEMORY[0x277D85DD0];
    v8 = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v9 = v5;
    v10 = &block_descriptor_45_1;
    v6 = _Block_copy(&v7);

    [v3 ensureHomesAreLoadedWithCompletionHandler_];
    _Block_release(v6);
  }

  else if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_requiresHomeUpdate) == 1)
  {
    *(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_requiresHomeUpdate) = 0;

    sub_274405A7C();
  }
}

void sub_2745E38DC()
{
  v60 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  v1 = [v60 resourceManager];
  v2 = [v1 unavailableResources];

  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = sub_2745E161C();
  v59 = 0;

  v62 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v4 = sub_27444C52C(v3);
  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x277C58B20](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v9 = [v6 availabilityError];

    ++v5;
    if (v9)
    {
      MEMORY[0x277C57F30]();
      v10 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
      {
        OUTLINED_FUNCTION_0_8(v10);
        sub_27463B85C();
      }

      sub_27463B8AC();
      v62 = v70;
      v5 = v8;
    }
  }

  if (!sub_27444C52C(v62))
  {

    v12 = 0;
    v13 = v61;
    goto LABEL_18;
  }

  sub_2744535A4();
  if ((v62 & 0xC000000000000001) != 0)
  {
    goto LABEL_76;
  }

  for (i = *(v62 + 32); ; i = MEMORY[0x277C58B20](0, v62))
  {
    v12 = i;
    v13 = v61;

    v14 = v12;
LABEL_18:
    v15 = *(v13 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError);
    if (!v12)
    {
      if (!v15)
      {
        v58 = 0;
        goto LABEL_26;
      }

      v16 = 0;
LABEL_25:
      v18 = v16;
      sub_2745E2B90(v12);
      goto LABEL_26;
    }

    if (!v15)
    {
      v17 = 0;
      swift_unknownObjectRelease();
      v16 = v12;
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
    v16 = v12;
    if (v12 != v15)
    {
      goto LABEL_25;
    }

LABEL_26:
    v19 = sub_2745E829C([v60 resourceManager]);
    v20 = MEMORY[0x277D84F90];
    v62 = v12;
    if (!v19)
    {
      goto LABEL_45;
    }

    v21 = v19;
    v70 = MEMORY[0x277D84F90];
    if ((v19 & 0xC000000000000001) != 0)
    {
      sub_27463C23C();
      sub_274412734(0, &unk_2809542B0, 0x277D7C090);
      sub_274482214(&unk_28094CA90, &unk_2809542B0, 0x277D7C090);
      sub_27463BA7C();
      v21 = v65;
      v22 = v66;
      v23 = v67;
      v24 = v68;
      v25 = v69;
    }

    else
    {
      v24 = 0;
      v22 = v19 + 56;
      OUTLINED_FUNCTION_20_19();
      v25 = v26 & v27;
    }

    v28 = (v23 + 64) >> 6;
    if (v21 < 0)
    {
      break;
    }

LABEL_31:
    v29 = v24;
    v30 = v25;
    v31 = v24;
    if (v25)
    {
LABEL_35:
      v32 = (v30 - 1) & v30;
      v33 = *(*(v21 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
      if (v33)
      {
        goto LABEL_39;
      }

      goto LABEL_44;
    }

    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        goto LABEL_44;
      }

      v30 = *(v22 + 8 * v31);
      ++v29;
      if (v30)
      {
        goto LABEL_35;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    ;
  }

  while (1)
  {
    v34 = sub_27463C2BC();
    if (!v34)
    {
      break;
    }

    v63 = v34;
    sub_274412734(0, &unk_2809542B0, 0x277D7C090);
    swift_dynamicCast();
    v33 = v64;
    v31 = v24;
    v32 = v25;
    if (!v64)
    {
      break;
    }

LABEL_39:
    if ([v33 canLogOut])
    {
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    else
    {
    }

    v24 = v31;
    v25 = v32;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }
  }

LABEL_44:
  sub_274406A24(v21);
  v20 = v70;
  v13 = v61;
LABEL_45:
  v35 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesThatCanLogOut;
  v36 = *(v13 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesThatCanLogOut);

  sub_2744F5B08(v20, v36);
  v38 = v37;

  if (v38)
  {
  }

  else
  {
    *(v13 + v35) = v20;

    sub_274405A7C();
  }

  v39 = sub_2745E829C([v60 resourceManager]);
  v40 = MEMORY[0x277D84F90];
  if (!v39)
  {
    goto LABEL_67;
  }

  v41 = v39;
  v64 = MEMORY[0x277D84F90];
  if ((v39 & 0xC000000000000001) != 0)
  {
    sub_27463C23C();
    sub_274412734(0, &unk_2809542B0, 0x277D7C090);
    sub_274482214(&unk_28094CA90, &unk_2809542B0, 0x277D7C090);
    sub_27463BA7C();
    v41 = v70;
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v45 = v74;
  }

  else
  {
    v44 = 0;
    v42 = v39 + 56;
    OUTLINED_FUNCTION_20_19();
    v45 = v46 & v47;
  }

  v60 = v43;
  v48 = (v43 + 64) >> 6;
  if (v41 < 0)
  {
    while (sub_27463C2BC())
    {
      sub_274412734(0, &unk_2809542B0, 0x277D7C090);
      swift_dynamicCast();
      v53 = v63;
      j = v44;
      v52 = v45;
      if (!v63)
      {
        break;
      }

LABEL_61:
      if ([v53 supportsMultipleAccounts])
      {
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
      }

      else
      {
      }

      v44 = j;
      v45 = v52;
      if ((v41 & 0x8000000000000000) == 0)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_66;
  }

LABEL_53:
  v49 = v44;
  v50 = v45;
  for (j = v44; !v50; ++v49)
  {
    j = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_75;
    }

    if (j >= v48)
    {
      goto LABEL_66;
    }

    v50 = *(v42 + 8 * j);
  }

  v52 = (v50 - 1) & v50;
  v53 = *(*(v41 + 48) + ((j << 9) | (8 * __clz(__rbit64(v50)))));
  if (v53)
  {
    goto LABEL_61;
  }

LABEL_66:
  sub_274406A24(v41);
  v40 = v64;
  v13 = v61;
LABEL_67:
  v54 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesAllowingMultipleAccounts;
  v55 = *(v13 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesAllowingMultipleAccounts);

  sub_2744F5B08(v40, v55);
  v57 = v56;

  if (v57)
  {
  }

  else
  {
    *(v13 + v54) = v40;

    sub_274405A7C();
  }
}

void sub_2745E4004()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v27 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_11();
  v10 = sub_27463B27C();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = (v15 - v14);
  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  *v16 = sub_27463BCEC();
  (*(v12 + 104))(v16, *MEMORY[0x277D85200], v10);
  v17 = sub_27463B29C();
  (*(v12 + 8))(v16, v10);
  if (v17)
  {
    sub_274638C2C();

    v18 = v6;
    v19 = sub_274638D9C();
    v20 = sub_27463BBEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_2745E7980(v4, v2, &v28);
      *(v21 + 12) = 2080;
      v22 = [v18 identifier];
      v23 = sub_27463B6AC();
      v25 = v24;

      v26 = sub_2745E7980(v23, v25, &v28);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_2743F0000, v19, v20, "Parameter state changed for key: %s, in action: %s", v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_14_6();
    }

    (*(v8 + 8))(v0, v27);
    sub_2745E2BE4();
    sub_2745E3020();
    sub_2745E3764();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    __break(1u);
  }
}

void sub_2745E4300(uint64_t a1, const char *a2, ...)
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v36 = v4;
  v6 = v5;
  v7 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = sub_27463B27C();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = (v19 - v18);
  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  *v20 = sub_27463BCEC();
  (*(v16 + 104))(v20, *MEMORY[0x277D85200], v14);
  v21 = sub_27463B29C();
  (*(v16 + 8))(v20, v14);
  if (v21)
  {
    v37 = v9;
    sub_274638C2C();
    v22 = v6;
    v23 = sub_274638D9C();
    v24 = sub_27463BBEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_41_7();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      v27 = [v22 identifier];
      v28 = v3;
      v29 = sub_27463B6AC();
      v31 = v30;

      v32 = sub_2745E7980(v29, v31, &v38);

      *(v25 + 4) = v32;
      v3 = v28;
      _os_log_impl(&dword_2743F0000, v23, v24, v36, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_14_6();

      (*(v37 + 8))(v13, v7);
    }

    else
    {

      v33 = OUTLINED_FUNCTION_32_9();
      v35(v33, v34);
    }

    v39 = v3;
    sub_274638F0C();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    __break(1u);
  }
}

void sub_2745E45D8()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_11();
  v7 = sub_27463B27C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = (v10 - v9);
  v12 = sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  *v11 = sub_27463BCEC();
  v13 = OUTLINED_FUNCTION_36_9();
  v14(v13);
  sub_27463B29C();
  v15 = OUTLINED_FUNCTION_33_7();
  v16(v15);
  if (v12)
  {
    sub_274638C2C();
    v17 = v2;
    v18 = sub_274638D9C();
    sub_27463BBEC();

    if (OUTLINED_FUNCTION_42_9())
    {
      OUTLINED_FUNCTION_41_7();
      v25 = OUTLINED_FUNCTION_26_14();
      *v7 = 136315138;
      v19 = [v17 identifier];
      sub_27463B6AC();
      OUTLINED_FUNCTION_28_18();
      OUTLINED_FUNCTION_16_21();
      OUTLINED_FUNCTION_29_14();
      *(v7 + 4) = v19;
      OUTLINED_FUNCTION_8_28();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_14_6();
    }

    (*(v5 + 8))(v0, v3);
    sub_2745E2BE4();
    sub_2745E3020();
    sub_2745E3764();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    __break(1u);
  }
}

void sub_2745E484C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v4 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_14(v6);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = (v9 - v8);
  v11 = sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  *v10 = sub_27463BCEC();
  v12 = OUTLINED_FUNCTION_36_9();
  v13(v12);
  sub_27463B29C();
  v14 = OUTLINED_FUNCTION_33_7();
  v15(v14);
  if (v11)
  {
    sub_274638C2C();
    v16 = v3;
    v17 = v1;
    v18 = sub_274638D9C();
    sub_27463BBEC();

    if (OUTLINED_FUNCTION_42_9())
    {
      v19 = swift_slowAlloc();
      swift_slowAlloc();
      *v19 = 136315394;
      v20 = [v16 key];
      sub_27463B6AC();
      OUTLINED_FUNCTION_28_18();
      OUTLINED_FUNCTION_16_21();
      OUTLINED_FUNCTION_29_14();
      *(v19 + 4) = v20;
      *(v19 + 12) = 2080;
      v21 = [*&v17[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] identifier];
      sub_27463B6AC();
      OUTLINED_FUNCTION_28_18();
      OUTLINED_FUNCTION_16_21();
      OUTLINED_FUNCTION_29_14();
      *(v19 + 14) = v21;
      OUTLINED_FUNCTION_8_28();
      _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_14_6();
    }

    v27 = OUTLINED_FUNCTION_13_19();
    v28(v27, v4);
    sub_2745E2BE4();
    sub_2745E3020();
    sub_2745E3764();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    __break(1u);
  }
}

void sub_2745E4B0C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_14(v4);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = (v7 - v6);
  v9 = sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  *v8 = sub_27463BCEC();
  v10 = OUTLINED_FUNCTION_37_7();
  v11(v10);
  sub_27463B29C();
  v12 = OUTLINED_FUNCTION_34_11();
  v13(v12);
  if (v9)
  {
    sub_274638C2C();
    v14 = v1;
    v15 = sub_274638D9C();
    sub_27463BBEC();

    if (OUTLINED_FUNCTION_42_9())
    {
      OUTLINED_FUNCTION_41_7();
      v26 = OUTLINED_FUNCTION_26_14();
      *v8 = 136315138;
      v25 = v2;
      v16 = [*&v14[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] identifier];
      sub_27463B6AC();
      OUTLINED_FUNCTION_28_18();
      OUTLINED_FUNCTION_16_21();
      OUTLINED_FUNCTION_29_14();
      *(v8 + 4) = v16;
      OUTLINED_FUNCTION_8_28();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_14_6();

      v22 = OUTLINED_FUNCTION_13_19();
      v24 = v25;
    }

    else
    {

      v22 = OUTLINED_FUNCTION_13_19();
      v24 = v2;
    }

    v23(v22, v24);
    sub_2745E2BE4();
    sub_2745E3020();
    sub_2745E3764();
    sub_2745E38DC();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    __break(1u);
  }
}

void sub_2745E4D64(__n128 a1)
{
  v2 = v1;
  v3 = sub_27463B27C();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = (v8 - v7);
  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  *v9 = sub_27463BCEC();
  (*(v5 + 104))(v9, *MEMORY[0x277D85200], v3);
  v10 = sub_27463B29C();
  v11 = OUTLINED_FUNCTION_21_12();
  v12(v11);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v13 = sub_274637CFC();
  if (!v13)
  {
    v28 = 0u;
    v29 = 0u;
    goto LABEL_7;
  }

  v14 = v13;
  *&v28 = sub_27463B6AC();
  *(&v28 + 1) = v15;
  sub_27463C31C();
  sub_27452F2E4(v14, &v28);

  sub_274430664(v27);
  if (!*(&v29 + 1))
  {
LABEL_7:
    sub_27446E660(&v28);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v17 = v27[0];
    v16 = v27[1];
    goto LABEL_9;
  }

LABEL_8:
  v17 = 0;
  v16 = 0;
LABEL_9:
  v18 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  v19 = [v18 identifier];
  v20 = sub_27463B6AC();
  v22 = v21;

  if (!v16)
  {

    return;
  }

  if (v17 == v20 && v16 == v22)
  {
  }

  else
  {
    v24 = sub_27463C6BC();

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = [v18 identifier];
  if (!v25)
  {
    sub_27463B6AC();
    v25 = sub_27463B66C();
  }

  IsFavorite = WFActionIsFavorite();

  *(v2 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isFavorite) = IsFavorite;
  sub_2745E5FD0();
}

void sub_2745E5020()
{
  OUTLINED_FUNCTION_24();
  v3 = v0;
  v4 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_14(v6);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = (v9 - v8);
  v11 = sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  *v10 = sub_27463BCEC();
  v12 = OUTLINED_FUNCTION_37_7();
  v13(v12);
  sub_27463B29C();
  v14 = OUTLINED_FUNCTION_34_11();
  v15(v14);
  if (v11)
  {
    sub_274638C2C();
    v16 = v3;
    v17 = sub_274638D9C();
    sub_27463BBEC();

    if (OUTLINED_FUNCTION_42_9())
    {
      OUTLINED_FUNCTION_41_7();
      v18 = OUTLINED_FUNCTION_26_14();
      v29 = v18;
      *v10 = 136315138;
      v28 = v4;
      v19 = [*&v16[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] identifier];
      sub_27463B6AC();
      OUTLINED_FUNCTION_28_18();
      sub_2745E7980(v1, v2, &v29);
      OUTLINED_FUNCTION_29_14();
      *(v10 + 4) = v19;
      OUTLINED_FUNCTION_8_28();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_14_6();

      v25 = OUTLINED_FUNCTION_13_19();
      v27 = v28;
    }

    else
    {

      v25 = OUTLINED_FUNCTION_13_19();
      v27 = v4;
    }

    v26(v25, v27);
    v30 = 0;
    sub_274638F0C();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    __break(1u);
  }
}

void sub_2745E5288(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_27444C52C(a1);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x277C58B20](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (!swift_dynamicCastObjCProtocolConditional())
    {
      goto LABEL_14;
    }

    v10 = [v9 key];
    if (!v10)
    {
      sub_27463B6AC();
      v10 = sub_27463B66C();
    }

    v11 = objc_opt_self();
    v12 = sub_2745E8340(a2, a3, v10, v11);

    if (v12)
    {
      v13 = v9;
      MEMORY[0x277C57F30]();
      if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
    }

    else
    {
LABEL_14:
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_2745E546C(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1;
  v16[2] = MEMORY[0x277D84F90];
  v7 = sub_27444C52C(a1);
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v10 = v6 & 0xFFFFFFFFFFFFFF8;
  v14 = v7;
  v15 = v6;
  while (1)
  {
    if (v7 == v8)
    {

      return;
    }

    if (v9)
    {
      v11 = MEMORY[0x277C58B20](v8, v6);
    }

    else
    {
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v6 + 8 * v8 + 32);
    }

    v12 = v11;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v16[0] = v11;
    sub_2745E7618(v16, a2, a3);
    if (v3)
    {

      return;
    }

    if (v13)
    {
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v7 = v14;
      v6 = v15;
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_2745E55E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2745E26A4();
  *a1 = result & 1;
  return result;
}

uint64_t ActionViewModel.__allocating_init(_:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_19_8();
  return ActionViewModel.init(_:)(v2);
}

void sub_2745E5678(unint64_t a1, void *a2)
{
  v6[1] = a2;
  v3 = sub_27444C52C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C58B20](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_27452185C(v6, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t ActionViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  [*&v0[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] removeEventObserver_];
  v2 = [*&v0[v1] resourceManager];
  [v2 removeTarget:v0 selector:sel_resourcesDidChange_];

  v3 = [*&v0[v1] parameters];
  sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
  v4 = sub_27463B81C();

  result = sub_27444C52C(v4);
  if (!result)
  {
LABEL_8:

    v12 = [objc_opt_self() sharedManager];
    [v12 removeEventObserver_];

    v13 = objc_opt_self();
    v14 = [v13 defaultCenter];
    OUTLINED_FUNCTION_25_18(v14, v15, v16, *MEMORY[0x277D7CB38]);

    v17 = [v13 defaultCenter];
    OUTLINED_FUNCTION_25_18(v17, v18, v19, *MEMORY[0x277D76DC0]);

    v20 = [v13 defaultCenter];
    OUTLINED_FUNCTION_25_18(v20, v21, v22, *MEMORY[0x277D76648]);

    v23.receiver = v0;
    v23.super_class = type metadata accessor for ActionViewModel();
    return objc_msgSendSuper2(&v23, sel_dealloc);
  }

  v6 = result;
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = OUTLINED_FUNCTION_32_9();
        v9 = MEMORY[0x277C58B20](v8);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      ++v7;
      [v9 removeEventObserver_];
      v11 = [v10 resourceManager];
      [v11 removeTarget:v0 selector:sel_resourcesDidChange_];
    }

    while (v6 != v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_2745E5ABC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_observingParameters;

  v6 = sub_2745F3548(v5, a1);

  v7 = *(v2 + v4);

  v8 = sub_2745F3548(a1, v7);
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_27463C23C();
    sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
    sub_274482214(&qword_28094BD48, qword_28094AE40, 0x277D7C6D8);
    sub_27463BA7C();
    v6 = v39;
    v9 = v40;
    v10 = v41;
    v11 = v42;
    v12 = v43;
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v6 + 56);
  }

  v16 = (v10 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v6 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_18:
      sub_274406A24(v6);
      if ((v8 & 0xC000000000000001) != 0)
      {
        sub_27463C23C();
        sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
        sub_274482214(&qword_28094BD48, qword_28094AE40, 0x277D7C6D8);
        sub_27463BA7C();
        v8 = v44;
        v24 = v45;
        v25 = v46;
        v26 = v47;
        v27 = v48;
      }

      else
      {
        v26 = 0;
        v28 = -1 << *(v8 + 32);
        v24 = v8 + 56;
        v25 = ~v28;
        v29 = -v28;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v27 = v30 & *(v8 + 56);
      }

      v31 = (v25 + 64) >> 6;
      if (v8 < 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v32 = v26;
        v33 = v27;
        v34 = v26;
        if (!v27)
        {
          break;
        }

LABEL_29:
        v35 = (v33 - 1) & v33;
        v36 = *(*(v8 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));
        if (!v36)
        {
LABEL_35:
          sub_274406A24(v8);
          return;
        }

        while (1)
        {
          [v36 addEventObserver_];
          v37 = [v36 resourceManager];
          [v37 addTarget:v2 selector:sel_resourcesDidChange_];

          v26 = v34;
          v27 = v35;
          if ((v8 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          if (sub_27463C2BC())
          {
            sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
            swift_dynamicCast();
            v36 = v38;
            v34 = v26;
            v35 = v27;
            if (v38)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_37;
        }

        if (v34 >= v31)
        {
          goto LABEL_35;
        }

        v33 = *(v24 + 8 * v34);
        ++v32;
        if (v33)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      [v21 removeEventObserver_];
      v23 = [v21 resourceManager];
      [v23 removeTarget:v2 selector:sel_resourcesDidChange_];

      v11 = v19;
      v12 = v20;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v22 = sub_27463C2BC();
      if (v22)
      {
        v38 = v22;
        sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
        swift_dynamicCast();
        v21 = v44;
        v19 = v11;
        v20 = v12;
        if (v44)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_18;
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_2745E5F28()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) parameters];
  sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
  v2 = sub_27463B81C();

  sub_2745E1974(v2);
  v4 = v3;

  sub_2745E5678(v5, v4);

  return sub_2745E25D0(v6);
}

void sub_2745E5FD0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) identifier];
  if (!v1)
  {
    sub_27463B6AC();
    v2 = sub_27463B66C();

    v1 = v2;
  }

  v3 = v1;
  WFActionSetFavorite();
}

uint64_t sub_2745E605C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  v2 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showOutput;
  swift_beginAccess();
  [v1 setOutputExpandedInEditor_];
  return sub_274638F0C();
}

void sub_2745E60E0(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  v5 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v6 = *a1;
  if ((a1[1] & 1) == 0)
  {

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_21_17();
  v7 = &selRef_maximumDate;
  if (!v4)
  {

    goto LABEL_7;
  }

  v8 = [v4 localizedFormatStringWithAction_];
  if (!v8)
  {
LABEL_7:
    v58 = 0;
    v12 = 0;
    v55 = 0;
    v56 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = sub_27463B6AC();
  v12 = v11;

  v69 = v5;

  sub_2745E5288(v6, v10, v12, &v69);
  v6 = v13;
  v14 = *(v3 + 24);
  v71 = 0uLL;
  v58 = v10;
  *&v72 = v10;
  *(&v72 + 1) = v12;
  v55 = v14;
  v56 = v69;
  *&v73 = v69;
  *(&v73 + 1) = v14;
  v15 = v14;
LABEL_8:
  v57 = v12;
  v21 = *(v3 + 32);
  v20 = MEMORY[0x277D84F90];
  v61 = *(v21 + 16);
  if (v61)
  {
    v22 = 0;
    v60 = v21 + 32;
    do
    {
      v23 = v60 + 16 * v22;
      v24 = *(v23 + 8);
      v25 = *v23;
      v26 = v24;
      v27 = [v25 v7[91]];
      if (v27)
      {
        v28 = v27;
        v63 = v26;
        v64 = v22;
        v66 = v25;
        v67 = sub_27463B6AC();
        v30 = v29;

        v31 = MEMORY[0x277D84F90];
        v68 = MEMORY[0x277D84F90];
        v69 = MEMORY[0x277D84F90];
        v32 = sub_27444C52C(v6);

        v33 = 0;
        v65 = v31;
        while (v32 != v33)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v42 = OUTLINED_FUNCTION_21_12();
            v34 = MEMORY[0x277C58B20](v42);
          }

          else
          {
            if (v33 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v34 = *(v6 + 8 * v33 + 32);
          }

          v35 = v34;
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            return;
          }

          if (!swift_dynamicCastObjCProtocolConditional())
          {
            goto LABEL_21;
          }

          v37 = [v35 key];
          if (!v37)
          {
            sub_27463B6AC();
            v37 = sub_27463B66C();
          }

          v38 = objc_opt_self();
          v39 = sub_2745E8340(v67, v30, v37, v38);

          if (v39)
          {
            v40 = v35;
            MEMORY[0x277C57F30]();
            v41 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v41 >> 1)
            {
              OUTLINED_FUNCTION_0_8(v41);
              sub_27463B85C();
            }

            sub_27463B8AC();
            v65 = v69;

            v33 = v36;
          }

          else
          {
LABEL_21:
            sub_27463C41C();
            sub_27463C46C();
            sub_27463C47C();
            sub_27463C42C();
            ++v33;
          }
        }

        v6 = v68;
        v43 = [v66 localizedTitle];
        if (v43)
        {
          v44 = v43;
          v45 = sub_27463B6AC();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        v7 = &selRef_maximumDate;
        v48 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274450000();
          v20 = v52;
        }

        v50 = *(v20 + 16);
        v49 = *(v20 + 24);
        if (v50 >= v49 >> 1)
        {
          OUTLINED_FUNCTION_0_8(v49);
          sub_274450000();
          v20 = v53;
        }

        *(v20 + 16) = v50 + 1;
        v51 = (v20 + 48 * v50);
        v51[4] = v45;
        v51[5] = v47;
        v51[6] = v67;
        v51[7] = v30;
        v51[8] = v65;
        v51[9] = v48;
        v70 = v20;
        v22 = v64;
      }

      else
      {
      }

      ++v22;
    }

    while (v22 != v61);
  }

  v17 = v57;
  v16 = v58;
  v19 = v55;
  v18 = v56;
LABEL_37:
  sub_2745E546C(v6, &v71, &v70);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = v16;
  a3[3] = v17;
  a3[4] = v18;
  a3[5] = v19;
  a3[6] = v20;
  a3[7] = v54;
}

void sub_2745E656C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_27463B9FC();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
    sub_27463B9CC();
    v7 = v5;
    v8 = sub_27463B9BC();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_274512004();
  }
}

uint64_t sub_2745E669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_27463B9CC();
  *(v4 + 24) = sub_27463B9BC();
  v6 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745E6734, v6, v5);
}

uint64_t sub_2745E6734()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 requiresHomeUpdate];

  *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_requiresHomeUpdate) = v3;
  sub_274405A7C();
  v4 = *(v0 + 8);

  return v4();
}

id ActionViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2745E6D18@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for ActionViewModel();
  result = sub_274638EFC();
  *a3 = result;
  return result;
}

void ActionViewModel.homeManagerDidMigrateToHH2(_:)()
{
  OUTLINED_FUNCTION_24();
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_11();
  sub_27463B21C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  v7 = sub_27463BCEC();
  OUTLINED_FUNCTION_5();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v16[4] = sub_2745E7EF0;
  v16[5] = v8;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_7_19();
  v16[2] = v9;
  v16[3] = &block_descriptor_42;
  v10 = _Block_copy(v16);
  v11 = v0;
  sub_27463B20C();
  sub_2745E7F2C(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  sub_274454390();
  sub_27463C1EC();
  MEMORY[0x277C58440](0, v6, v1, v10);
  _Block_release(v10);

  v12 = OUTLINED_FUNCTION_13_3();
  v13(v12);
  v14 = OUTLINED_FUNCTION_32_9();
  v15(v14);

  OUTLINED_FUNCTION_23();
}

void sub_2745E6FBC(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_27463B71C();
  }

  sub_27463B71C();
  v3 = *(v1 + 32);

  sub_2744FAC90(a1, v3);
}

uint64_t sub_2745E7014(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_27463C6BC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v7 || (sub_27463C6BC() & 1) != 0)
  {
    sub_2744F582C(a1[4], a2[4]);
    if (v8)
    {
      sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
      return sub_27463BF7C() & 1;
    }
  }

  return 0;
}

uint64_t sub_2745E70D8()
{
  sub_27463C74C();
  if (*(v0 + 8))
  {
    sub_27463B71C();
  }

  sub_27463B71C();
  sub_2744FAC90(v2, *(v0 + 32));
  return sub_27463C7AC();
}

uint64_t sub_2745E713C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
  OUTLINED_FUNCTION_21_12();
  if (sub_27463BF7C())
  {
    return sub_27463BF7C() & 1;
  }

  else
  {
    return 0;
  }
}

void sub_2745E71B8(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v95 = a1[5];
  v96 = a1[4];
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  v13 = a1[3];
  if (!v13)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    v29 = a2[2];
    v92 = *a2;
    v94 = a2[1];
    sub_27448287C(*a2, v94, v9, v10, v12, v11);
    v30 = OUTLINED_FUNCTION_35_9();
    sub_27448287C(v30, v31, v32, v33, v96, v95);
    v34 = OUTLINED_FUNCTION_35_9();
    sub_2744FAD34(v34, v35, v36, v37, v96, v95);
    v38 = v92;
    v39 = v94;
    v40 = v29;
    v41 = v10;
    v42 = v12;
    v43 = v11;
LABEL_32:
    sub_2744FAD34(v38, v39, v40, v41, v42, v43);
    return;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    if (!v8)
    {
      OUTLINED_FUNCTION_2_35();
      sub_27448287C(v63, v64, v65, v66, v67, v12);
      v68 = OUTLINED_FUNCTION_13_3();
      v49 = v7;
      OUTLINED_FUNCTION_18_17(v68, v69, v70, v71, v72, v73, v74, v75, v84, v85, v86, v88, v90, v93, v95, v96);
LABEL_31:

      v38 = OUTLINED_FUNCTION_39_9();
      v40 = v49;
      v41 = v7;
      v42 = v10;
      v43 = v2;
      goto LABEL_32;
    }

    v91 = *a1;
    v14 = v6 == *a2 && v5 == v8;
    if (!v14)
    {
      v6 = a1[1];
      v85 = a2[2];
      v2 = *a2;
      v15 = sub_27463C6BC();
      v9 = v85;
      v5 = v6;
      if ((v15 & 1) == 0)
      {
        v87 = v10;
        OUTLINED_FUNCTION_2_35();
        sub_27448287C(v16, v17, v18, v19, v20, v11);
        v21 = OUTLINED_FUNCTION_39_9();
LABEL_15:
        OUTLINED_FUNCTION_18_17(v21, v22, v23, v24, v25, v26, v27, v28, v84, v85, v87, v88, v91, v93, v95, v96);
        v49 = v7;
LABEL_30:

        goto LABEL_31;
      }
    }
  }

  else
  {
    v91 = *a1;
    if (v8)
    {
      v87 = a2[3];
      OUTLINED_FUNCTION_2_35();
      sub_27448287C(v44, v45, v46, v47, v48, v11);
      v21 = v6;
      v22 = 0;
      goto LABEL_15;
    }
  }

  v89 = v5;
  v50 = v7;
  v14 = v7 == v9;
  v7 = v13;
  if (!v14 || v13 != v10)
  {
    v6 = v9;
    if ((sub_27463C6BC() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_35();
      sub_27448287C(v76, v77, v78, v79, v80, v11);
      v81 = OUTLINED_FUNCTION_39_9();
      v82 = v50;
      v10 = v96;
      v49 = v50;
      v2 = v95;
      sub_27448287C(v81, v83, v82, v13, v96, v95);
      goto LABEL_30;
    }
  }

  OUTLINED_FUNCTION_2_35();
  sub_27448287C(v52, v53, v54, v55, v56, v11);
  v49 = v50;
  v57 = v50;
  v2 = v95;
  v10 = v96;
  sub_27448287C(v91, v89, v57, v13, v96, v95);
  sub_2744F582C(v96, v6);
  if ((v58 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
  v59 = sub_27463BF7C();

  sub_2744FAD34(v91, v89, v49, v13, v96, v95);
  if ((v59 & 1) == 0)
  {
    return;
  }

LABEL_23:
  sub_2744F5840(a1[6], a2[6]);
  if (v60)
  {
    v61 = a1[7];
    v62 = a2[7];

    sub_2744F582C(v61, v62);
  }
}

uint64_t sub_2745E757C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  sub_27463C74C();
  if (v2)
  {
    sub_27463B71C();
  }

  sub_27463B71C();
  sub_2744FAC90(v5, v3);
  return sub_27463C7AC();
}

void sub_2745E7618(void **a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {
    return;
  }

  v5 = a2[3];
  if (v5)
  {
    v7 = a2[4];
    v6 = a2[5];
    v8 = a2[1];
    v9 = a2[2];
    v10 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B898, &qword_27465F3F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_274648570;
    *(v11 + 32) = v10;
    *(v11 + 40) = v8;
    *(v11 + 48) = v9;
    *(v11 + 56) = v5;
    *(v11 + 64) = v7;
    *(v11 + 72) = v6;

    v12 = v6;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v4;

  sub_27445C4E0(v14);
  v15 = v11;
  if (!*(v11 + 16))
  {
LABEL_22:

    return;
  }

  v16 = 0;
  v17 = v11 + 32;
  v38 = v13;
  v39 = v11;
  v35 = v11 + 32;
  v36 = *(v11 + 16);
LABEL_7:
  if (v16 >= *(v15 + 16))
  {
    goto LABEL_28;
  }

  v18 = v17 + 48 * v16;
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  v37 = v16 + 1;
  v21 = sub_27444C52C(v19);

  v40 = v20;
  v22 = 0;
  while (1)
  {
    if (v21 == v22)
    {

      v16 = v37;
      v13 = v38;
      v15 = v39;
      v17 = v35;
      if (v37 != v36)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x277C58B20](v22, v19);
    }

    else
    {
      if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v23 = *(v19 + 8 * v22 + 32);
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v25 = [v23 key];
    v26 = sub_27463B6AC();
    v28 = v27;

    v29 = [v41 multipleValueParameterKey];
    v30 = sub_27463B6AC();
    v32 = v31;

    if (v26 == v30 && v28 == v32)
    {

      goto LABEL_25;
    }

    v34 = sub_27463C6BC();

    ++v22;
    if (v34)
    {

LABEL_25:

      return;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_2745E7980(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_2745E7A44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_27444C44C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void sub_2745E7A44(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          *(__dst + v11) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_2745E7B44(a5, a6);
    *a1 = v9;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v8 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v8 = sub_27463C3FC();
    if (!v8)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v8;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

uint64_t sub_2745E7B44(uint64_t a1, unint64_t a2)
{
  v3 = sub_2745E7B90(a1, a2);
  sub_2745E7CA8(&unk_288361A60);
  return v3;
}

uint64_t sub_2745E7B90(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_27463B76C())
  {
    result = sub_2745E7D8C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_27463C37C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_27463C3FC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2745E7CA8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2745E7DFC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2745E7D8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809542A0, &unk_27465F3C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2745E7DFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809542A0, &unk_27465F3C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2745E7F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2745E8248()
{
  result = qword_280954278;
  if (!qword_280954278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954278);
  }

  return result;
}

uint64_t sub_2745E829C(void *a1)
{
  v2 = [a1 accessResources];

  if (!v2)
  {
    return 0;
  }

  sub_274412734(0, &unk_2809542B0, 0x277D7C090);
  sub_274482214(&unk_28094CA90, &unk_2809542B0, 0x277D7C090);
  v3 = sub_27463BA4C();

  return v3;
}

id sub_2745E8340(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_27463B66C();
  v7 = [a4 formatString:v6 containsParameterKey:a3];

  return v7;
}

uint64_t sub_2745E83A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27440F0F4;

  return sub_2745E669C(a1, v4, v5, v6);
}

uint64_t sub_2745E84A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_2745E84E4(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_16_21()
{

  return sub_2745E7980(v0, v1, (v2 - 88));
}

void OUTLINED_FUNCTION_18_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{

  sub_27448287C(a1, a2, v17, v16, a16, a15);
}

id OUTLINED_FUNCTION_24_12(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

id OUTLINED_FUNCTION_25_18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [a1 (v5 + 2936)];
}

uint64_t OUTLINED_FUNCTION_26_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_14(__n128 a1)
{

  return sub_27463B27C();
}

void OUTLINED_FUNCTION_28_18()
{
}

uint64_t OUTLINED_FUNCTION_29_14()
{
}

uint64_t OUTLINED_FUNCTION_41_7()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_42_9()
{

  return os_log_type_enabled(v0, v1);
}

id sub_2745E87F0()
{
  v0 = sub_27463AAFC();
  if (v0)
  {
    v1 = v0;
    v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v3 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithCGColor_];
    v4 = [v2 initWithValue_];

    return v4;
  }

  else
  {
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v7 = [objc_opt_self() whiteColor];
    v8 = [v6 initWithValue_];

    return v8;
  }
}

uint64_t WFColorParameterState.color.getter()
{
  v1 = [v0 value];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 CGColor];
    v4 = sub_27463AAEC();

    return v4;
  }

  else
  {

    return sub_27463AB8C();
  }
}

uint64_t WFColorPickerParameter.view(with:)(uint64_t a1)
{
  sub_2745E89BC();
  v2 = v1;

  return sub_27463AE9C();
}

unint64_t sub_2745E89BC()
{
  result = qword_2809542D8;
  if (!qword_2809542D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809542D8);
  }

  return result;
}

void sub_2745E8A40(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809542E0, &qword_27465F5F0);
  v7 = v6[14];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a3 + v6[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a3 + v6[17];
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v11 = a1;
  sub_27444A564(v11);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *a3 = sub_27463950C();
  *(a3 + 8) = v12;
  v13 = [v11 localizedLabel];
  v14 = sub_27463B6AC();
  v16 = v15;

  v17 = [v11 localizedDescription];
  if (v17)
  {
    v18 = v17;
    v19 = sub_27463B6AC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  *(a3 + 16) = v14;
  *(a3 + 24) = v16;
  *(a3 + 32) = v19;
  *(a3 + 40) = v21;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  type metadata accessor for ParameterStateStore();
  sub_27450A7C0();
  swift_retain_n();
  v31 = sub_27463950C();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2745E8D7C;
  *(v24 + 24) = a2;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_274458A90;
  *(v25 + 24) = a2;
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B568, &qword_27465F6B0));
  v27 = v11;

  sub_27444A6B8(v27);
  sub_27440CA78(&qword_2809542E8, &qword_28094B568, &qword_27465F6B0, &unk_274648AD8);
  v28 = sub_27463950C();
  v30 = v29;

  *(a3 + 48) = v28;
  *(a3 + 56) = v30;
  *(a3 + 64) = v31;
  *(a3 + 72) = v23;
  *(a3 + 80) = sub_274458A60;
  *(a3 + 88) = v24;
  *(a3 + 96) = sub_274458A98;
  *(a3 + 104) = v25;
  *(a3 + 129) = 0;
}

uint64_t sub_2745E8D84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809542F8, &qword_27465F758);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - v3;
  v5 = v0[1];
  v25 = *v0;
  v26 = v5;
  v6 = v0[3];
  v27 = v0[2];
  v28 = v6;
  sub_27463B70C("Colors", 6);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v7 = qword_28094BB00;
  v8 = sub_27463B66C();
  v9 = sub_27463B66C();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_27463B6AC();
  v13 = v12;

  v24[8] = v11;
  v24[9] = v13;
  sub_27463B9CC();
  sub_2745E9188(&v25, v24);
  v14 = sub_27463B9BC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v17 = v26;
  *(v15 + 32) = v25;
  *(v15 + 48) = v17;
  v18 = v28;
  *(v15 + 64) = v27;
  *(v15 + 80) = v18;
  sub_2745E9188(&v25, v24);
  v19 = sub_27463B9BC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v16;
  v21 = v26;
  *(v20 + 32) = v25;
  *(v20 + 48) = v21;
  v22 = v28;
  *(v20 + 64) = v27;
  *(v20 + 80) = v22;
  sub_27463AF0C();
  sub_274412BBC();
  sub_27463916C();
  sub_27440CA78(&qword_280954300, &qword_2809542F8, &qword_27465F758, MEMORY[0x277CDD6F8]);
  sub_27463A71C();
  return (*(v2 + 8))(v4, v1);
}

void sub_2745E9074(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  (*(a1 + 32))(&v5);
  v3 = v5;
  if (v5)
  {
    v4 = WFColorParameterState.color.getter();
  }

  else
  {
    v4 = sub_27463AB8C();
  }

  *a2 = v4;
}

uint64_t sub_2745E90D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2745E91D8();
  sub_2745E9188(a4, v8);

  v5 = sub_2745E87F0();
  v6 = *(a4 + 48);
  v8[0] = v5;
  v6(v8);

  return sub_2745E921C(a4);
}

unint64_t sub_2745E91D8()
{
  result = qword_280954308;
  if (!qword_280954308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280954308);
  }

  return result;
}

id sub_2745E924C()
{
  v0 = OUTLINED_FUNCTION_16_22();
  objc_opt_self();
  OUTLINED_FUNCTION_0_10();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 possibleStatesCollection];

    if (v2)
    {
      return v2;
    }
  }

  else
  {
  }

  v3 = OUTLINED_FUNCTION_16_22();
  if (sub_27446E568(v3))
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD3E28]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0, &qword_27464C280);
    OUTLINED_FUNCTION_0_10();
    v5 = sub_27463B7FC();
    v2 = [v4 initWithItems_];
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277CD3E28]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0, &qword_27464C280);
    v5 = sub_27463B7FC();
    v2 = [v6 initWithItems_];
  }

  return v2;
}

unint64_t sub_2745E9388(void *a1)
{
  v2 = v1;
  v4 = [v2 currentState];
  v5 = [a1 sections];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954330, &unk_27464D1B8);
  OUTLINED_FUNCTION_21_2();
  v6 = sub_27463B81C();

  v7 = sub_274453594();
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v26 = MEMORY[0x277D84F90];
  result = sub_27463C44C();
  if (v8 < 0)
  {
    goto LABEL_31;
  }

  result = 0;
  v24 = v8;
  while (1)
  {
    v10 = result + 1;
    if (__OFADD__(result, 1))
    {
      break;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x277C58B20]();
    }

    else
    {
      if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v11 = *(v6 + 32 + 8 * result);
    }

    v12 = v11;
    v13 = [v11 items];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0, &qword_27464C280);
    OUTLINED_FUNCTION_21_2();
    v14 = sub_27463B81C();

    if (v14 >> 62)
    {
      v15 = sub_27463C27C();
      if (!v15)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    result = sub_27463C44C();
    if (v15 < 0)
    {
      goto LABEL_29;
    }

    v25 = v10;
    v16 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x277C58B20](v16, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v4 && ([v17 stateIsEquivalent_] & 1) != 0;
      ++v16;
      sub_2745E970C(v18, v19);

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    while (v15 != v16);

    v10 = v25;
    v8 = v24;
LABEL_24:
    v20 = objc_allocWithZone(MEMORY[0x277D7D7D0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
    OUTLINED_FUNCTION_21_2();
    v21 = sub_27463B7FC();

    v22 = [v20 initWithMenuElements_];

    v23 = [v12 title];
    [v22 setTitle_];

    sub_27463C41C();
    sub_27463C46C();
    sub_27463C47C();
    sub_27463C42C();
    result = v10;
    if (v10 == v8)
    {

      return v26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id sub_2745E970C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OUTLINED_FUNCTION_20_20();
  v7 = [v6 localizedLabelForPossibleState_];

  if (v7)
  {
    v8 = sub_27463B6AC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = OUTLINED_FUNCTION_20_20();
  v12 = [v11 localizedSubtitleLabelForPossibleState_];

  if (v12)
  {
    v13 = sub_27463B6AC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = OUTLINED_FUNCTION_20_20();
  v17 = [v16 accessoryIconForPossibleState_];

  if (!v17)
  {
    v18 = OUTLINED_FUNCTION_20_20();
    v19 = [v18 accessoryImageForPossibleState_];

    if (v19)
    {
      v25 = v19;
      sub_2745EB23C(&v25, &v24);

      v17 = v24;
    }

    else
    {
      v17 = 0;
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = a1;
  objc_allocWithZone(MEMORY[0x277D7D790]);
  v21 = v3;
  v22 = a1;
  return sub_2745EC324(v8, v10, v13, v15, v17, a2, sub_2745ECE38, v20);
}

uint64_t sub_2745E9900()
{
  OUTLINED_FUNCTION_79();
  v1[27] = v0;
  sub_27463B9CC();
  v1[28] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[29] = v3;
  v1[30] = v2;

  return MEMORY[0x2822009F8](sub_2745E9994, v3, v2);
}

uint64_t sub_2745E9994()
{
  OUTLINED_FUNCTION_42_1();
  v1 = [*(v0 + 216) parameter];
  *(v0 + 248) = v1;
  v2 = objc_opt_self();
  v3 = OUTLINED_FUNCTION_21_18(v2);
  if (v3)
  {
    v4 = v3;
    v5 = v0 + 80;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_2745E9CB0;
    v6 = swift_continuation_init();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954328, &unk_27465F820);
    OUTLINED_FUNCTION_3_42(v7);
    OUTLINED_FUNCTION_17_17(COERCE_DOUBLE(1107296256));
    *(v0 + 160) = sub_2745EBED0;
    *(v0 + 168) = &block_descriptor_62;
    *(v0 + 176) = v6;
    [v4 getStatesWithSearchTerm:0 completionHandler:v0 + 144];
LABEL_7:

    return MEMORY[0x282200938](v5);
  }

  v8 = *(v0 + 216);

  v9 = [v8 parameter];
  v10 = [v9 liveUpdatesPossibleStatesInEditor];

  if (v10)
  {
    v11 = [*(v0 + 216) parameter];
    [v11 startLiveUpdatingPossibleStates];
  }

  v12 = [*(v0 + 216) parameter];
  *(v0 + 264) = v12;
  v13 = objc_opt_self();
  v14 = OUTLINED_FUNCTION_21_18(v13);
  *(v0 + 272) = v14;
  if (v14)
  {
    v15 = v14;
    v5 = v0 + 16;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2745E9E44;
    v16 = swift_continuation_init();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE78, &unk_274656548);
    OUTLINED_FUNCTION_3_42(v17);
    OUTLINED_FUNCTION_17_17(COERCE_DOUBLE(1107296256));
    *(v0 + 160) = sub_2745EA490;
    *(v0 + 168) = &block_descriptor_58_1;
    *(v0 + 176) = v16;
    [v15 loadPossibleStatesWithCompletionHandler_];
    goto LABEL_7;
  }

  v18 = *(v0 + 216);

  if (sub_27446E568([v18 parameter]))
  {
    v19 = objc_allocWithZone(MEMORY[0x277CD3E28]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0, &qword_27464C280);
    OUTLINED_FUNCTION_21_2();
    v20 = sub_27463B7FC();

    [v19 initWithItems_];
  }

  v21 = OUTLINED_FUNCTION_2_36();

  return v22(v21);
}

uint64_t sub_2745E9CB0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[14];
  *(v1 + 256) = v4;
  v5 = v3[30];
  v6 = v3[29];
  if (v4)
  {
    v7 = sub_2745E9FE8;
  }

  else
  {
    v7 = sub_2745E9DD4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2745E9DD4()
{
  OUTLINED_FUNCTION_79();

  v1 = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2745E9E44()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 280) = v4;
  v5 = v3[30];
  v6 = v3[29];
  if (v4)
  {
    v7 = sub_2745EA058;
  }

  else
  {
    v7 = sub_2745E9F68;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2745E9F68()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  v3 = [v2 possibleStatesCollection];

  v4 = OUTLINED_FUNCTION_2_36();

  return v5(v4);
}

uint64_t sub_2745E9FE8()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 248);

  swift_willThrow();

  OUTLINED_FUNCTION_92();

  return v2();
}

uint64_t sub_2745EA058()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 264);

  swift_willThrow();

  OUTLINED_FUNCTION_92();

  return v2();
}

void sub_2745EA0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = WFModuleSummaryEditorInitialState(v3);
  v16 = objc_opt_self();
  v4 = [v3 parameter];
  v5 = [v3 variableProvider];
  v6 = [v3 variableUIDelegate];
  v7 = [v3 allowsPickingVariables];
  v8 = [v3 isProcessing];
  OUTLINED_FUNCTION_5();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = sub_2745ECE28;
  v26 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_2745AA044;
  v24 = &block_descriptor_51;
  v10 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_5();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = sub_2745ECE30;
  v26 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_274589DFC;
  v24 = &block_descriptor_55;
  v12 = _Block_copy(&aBlock);

  BYTE1(v15) = v8;
  LOBYTE(v15) = v7;
  v13 = [v16 presentWithParameter:v4 state:v17 slotIdentifier:a1 initialCollection:a3 variableProvider:v5 variableUIDelegate:v6 allowsPickingVariables:v15 processing:a2 presentationAnchor:v10 cancelHandler:v12 completionHandler:?];

  _Block_release(v12);
  _Block_release(v10);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = *&v3[OBJC_IVAR____TtC14WorkflowEditor33EnumerationParameterSummaryEditor_valuePicker];
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33EnumerationParameterSummaryEditor_valuePicker] = v13;
}

uint64_t sub_2745EA34C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_27465F7B0;
  v9[5] = v8;
  sub_2745EC7E8(0, 0, v6, &unk_27465F7C0, v9);
}

uint64_t sub_2745EA45C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t sub_2745EA490(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    v5 = OUTLINED_FUNCTION_21_2();
    return sub_2745EA4F0(v5, v6);
  }

  else
  {
    v8 = *v3;

    return j__swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_2745EA4F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954320, &qword_27465F800);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2745EA580(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_27463B9CC();
  v9 = v2;
  v10 = a1;
  v11 = a2;
  v12 = sub_27463B9BC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  sub_274512004();
}

uint64_t sub_2745EA6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_27463B9CC();
  v6[6] = sub_27463B9BC();
  v7 = swift_task_alloc();
  v6[7] = v7;
  *v7 = v6;
  v7[1] = sub_2745EA758;

  return sub_2745E9900();
}

uint64_t sub_2745EA758()
{
  OUTLINED_FUNCTION_27_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_4();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 64) = v0;

  if (v0)
  {
    v6 = sub_27463B96C();
    v8 = v7;
    v9 = sub_2745EA94C;
  }

  else
  {
    *(v4 + 72) = v3;
    v6 = sub_27463B96C();
    v8 = v10;
    v9 = sub_2745EA8CC;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2745EA8CC()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[4];

  sub_2745EA0CC(v2, v3, v1);

  OUTLINED_FUNCTION_92();

  return v4();
}

uint64_t sub_2745EA94C()
{
  OUTLINED_FUNCTION_27_5();
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[2];

  sub_274412734(0, &qword_280952750, 0x277CFC218);
  OUTLINED_FUNCTION_5();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = v1;
  v6 = v3;
  v8 = sub_2745EAA7C(v1, sub_27444C290, v4, v7);
  v9 = [v2 sourceViewController];
  v10 = WFUserInterfaceFromViewController();

  [v10 presentAlert_];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_92();

  return v11();
}

id sub_2745EAA7C(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_274637D5C();
  if (a2)
  {
    v11[4] = a2;
    v11[5] = a3;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_27443E0E8;
    v11[3] = &block_descriptor_45_2;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v9 = [swift_getObjCClassFromMetadata() alertWithError:v7 confirmationHandler:v8];
  _Block_release(v8);

  return v9;
}

unint64_t sub_2745EABEC()
{
  v1 = OUTLINED_FUNCTION_16_22();
  v2 = [v1 preferContextMenu];

  if (!v2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_16_22();
  objc_opt_self();
  OUTLINED_FUNCTION_0_10();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    if ([v4 isAsynchronous])
    {
      if ([v5 possibleStatesLoadingState] != 2 || objc_msgSend(v5, sel_shouldAlwaysReloadPossibleStates))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_274648560;
        sub_274412734(0, &qword_28094D260, 0x277D7D740);
        v7 = swift_allocObject();
        *(v7 + 16) = v5;
        *(v7 + 24) = v0;
        v8 = v3;
        v9 = v0;
        *(v6 + 32) = sub_27463BE4C();

        return v6;
      }
    }
  }

  v10 = OUTLINED_FUNCTION_16_22();
  objc_opt_self();
  OUTLINED_FUNCTION_0_10();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    if (([v11 isAsynchronous] & 1) == 0)
    {
      if ([v12 shouldAlwaysReloadPossibleStates])
      {
        [v12 loadSynchronousPossibleStates];
      }
    }
  }

  v13 = sub_2745E924C();
  v6 = sub_2745E9388(v13);

  if (!sub_274453594())
  {

    return 0;
  }

  return v6;
}

uint64_t sub_2745EADE0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_27463B9CC();
  v2[20] = sub_27463B9BC();
  v4 = sub_27463B96C();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_2745EAE78, v4, v3);
}

uint64_t sub_2745EAE78()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_2745EAF88;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE78, &unk_274656548);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2745EA490;
  v0[13] = &block_descriptor_34;
  v0[14] = v2;
  [v1 loadPossibleStatesWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2745EAF88()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 184) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_2745EB11C;
  }

  else
  {
    v7 = sub_2745EB0AC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2745EB0AC()
{
  OUTLINED_FUNCTION_79();

  v0 = sub_2745E924C();
  sub_2745E9388(v0);

  v1 = OUTLINED_FUNCTION_2_36();

  return v2(v1);
}

uint64_t sub_2745EB11C()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 184);

  swift_willThrow();

  v2 = sub_2745E924C();
  sub_2745E9388(v2);

  v3 = OUTLINED_FUNCTION_2_36();

  return v4(v3);
}

id sub_2745EB23C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_2745ECE40(*a1);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = [v3 tintColor];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 colorWithAlphaComponent_];
      v11 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

      v12 = objc_allocWithZone(MEMORY[0x277D7A158]);
      result = sub_2745EC2AC(v6, v7, v9, v11);
      goto LABEL_8;
    }
  }

  v14 = sub_2745ECE40(v3);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = [objc_opt_self() clearBackground];
    v19 = objc_allocWithZone(MEMORY[0x277D7A158]);
    result = sub_27446D8F0(v16, v17, v18);
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];
  }

LABEL_8:
  *a2 = result;
  return result;
}

id sub_2745EB3A8(void *a1, uint64_t a2)
{
  [a1 commitState_];

  return [a1 completeEditing];
}

void sub_2745EB3F4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_19_17();
  v3 = objc_opt_self();
  v4 = OUTLINED_FUNCTION_21_18(v3);

  if (v4 || (v5 = OUTLINED_FUNCTION_19_17(), v6 = objc_opt_self(), v7 = OUTLINED_FUNCTION_21_18(v6), v5, v7))
  {
    v8 = OUTLINED_FUNCTION_19_17();
    v9 = [v8 wf_supportsSearch];

    if ((v9 & 1) != 0 || (v10 = OUTLINED_FUNCTION_19_17(), v11 = [v10 isRangedSizeArray], v10, v11))
    {

      sub_2745EA0CC(0, a1, 0);
    }
  }
}

uint64_t sub_2745EB568()
{
  OUTLINED_FUNCTION_79();
  v1[28] = v0;
  sub_27463B9CC();
  v1[29] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[30] = v3;
  v1[31] = v2;

  return MEMORY[0x2822009F8](sub_2745EB5FC, v3, v2);
}

uint64_t sub_2745EB5FC()
{
  OUTLINED_FUNCTION_42_1();
  v1 = [v0[14].receiver parameter];
  v2 = [v1 liveUpdatesPossibleStatesInEditor];

  if (v2)
  {
    v3 = [v0[14].receiver parameter];
    [v3 stopLiveUpdatingPossibleStates];
  }

  receiver = v0[14].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2745EB758;
  v5 = swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[16].receiver = v6;
  v0[12].super_class = v6;
  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_17_17(COERCE_DOUBLE(1107296256));
  v0[10].receiver = sub_2745ECED0;
  v0[10].super_class = &block_descriptor_43;
  v0[11].receiver = v5;
  v7 = type metadata accessor for EnumerationParameterSummaryEditor();
  v0[13].receiver = receiver;
  v0[13].super_class = v7;
  objc_msgSendSuper2(v0 + 13, sel_cancelEditingWithCompletionHandler_, &v0[9]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745EB758()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v1 = v0;
  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return MEMORY[0x2822009F8](sub_2745EB854, v4, v3);
}

uint64_t sub_2745EB854()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0[28];
  v2 = OBJC_IVAR____TtC14WorkflowEditor33EnumerationParameterSummaryEditor_valuePicker;
  v0[33] = OBJC_IVAR____TtC14WorkflowEditor33EnumerationParameterSummaryEditor_valuePicker;
  v3 = *(v1 + v2);
  v0[34] = v3;
  if (v3)
  {
    v4 = v0[32];
    v0[10] = v0;
    v0[11] = sub_2745EB988;
    swift_continuation_init();
    v0[25] = v4;
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_17_17(COERCE_DOUBLE(1107296256));
    v0[20] = sub_2745ECED0;
    v0[21] = &block_descriptor_27;
    v0[22] = v5;
    [v3 dismissWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {

    OUTLINED_FUNCTION_18_18();
    OUTLINED_FUNCTION_92();

    return v6();
  }
}

uint64_t sub_2745EB988()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v1 = v0;
  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return MEMORY[0x2822009F8](sub_2745EBA84, v4, v3);
}

uint64_t sub_2745EBA84()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 272);

  OUTLINED_FUNCTION_18_18();
  OUTLINED_FUNCTION_92();

  return v2();
}

uint64_t sub_2745EBB64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745EBBFC, v4, v3);
}

uint64_t sub_2745EBBFC()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2745EBCA8;

  return sub_2745EB568();
}

uint64_t sub_2745EBCA8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_92();

  return v6();
}

id sub_2745EBDCC()
{
  v1 = OUTLINED_FUNCTION_16_22();
  v2 = [v1 liveUpdatesPossibleStatesInEditor];

  if (v2)
  {
    v3 = OUTLINED_FUNCTION_16_22();
    [v3 stopLiveUpdatingPossibleStates];
  }

  v4 = OBJC_IVAR____TtC14WorkflowEditor33EnumerationParameterSummaryEditor_valuePicker;
  v5 = *&v0[OBJC_IVAR____TtC14WorkflowEditor33EnumerationParameterSummaryEditor_valuePicker];
  if (v5)
  {
    [v5 dismissWithCompletionHandler_];
    v6 = *&v0[v4];
    *&v0[v4] = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for EnumerationParameterSummaryEditor();
  return objc_msgSendSuper2(&v8, sel_completeEditing);
}

uint64_t *sub_2745EBED0(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_2745EA4F0(v6, a3);
  }

  if (a2)
  {
    v7 = a2;

    return sub_2745EA560(v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2745EBF54(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = [Strong currentState];
      if (v5)
      {
        v6 = v5;
        [v4 commitState_];
      }
    }

    [v4 completeEditing];
  }
}

void sub_2745EBFF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor33EnumerationParameterSummaryEditor_valuePicker);
    if (v5)
    {
      [v5 setCurrentState_];
    }

    [v4 commitState_];
    [v4 completeEditing];
  }
}

BOOL sub_2745EC08C()
{
  objc_opt_self();
  OUTLINED_FUNCTION_0_10();
  return swift_dynamicCastObjCClass() == 0;
}

id sub_2745EC0E4(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33EnumerationParameterSummaryEditor_valuePicker] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for EnumerationParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745EC19C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EnumerationParameterSummaryEditor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2745EC204()
{
  OUTLINED_FUNCTION_42_1();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444E7E4;

  return sub_2745EBB64(v2, v3);
}

id sub_2745EC2AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_27463B66C();

  v8 = [v4 initWithSymbolName:v7 symbolColor:a3 background:a4];

  return v8;
}

id sub_2745EC324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v15 = sub_27463B66C();

  if (!a4)
  {
    v16 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = sub_27463B66C();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20[4] = a7;
  v20[5] = a8;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_27443E0E8;
  v20[3] = &block_descriptor_68_0;
  v17 = _Block_copy(v20);

LABEL_6:
  v18 = [v9 initWithTitle:v15 subtitle:v16 icon:a5 state:a6 handler:v17];
  _Block_release(v17);

  return v18;
}

uint64_t sub_2745EC464(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_27445358C;

  return v6();
}

uint64_t sub_2745EC54C()
{
  OUTLINED_FUNCTION_27_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27445358C;

  return sub_2745EC464(v2, v3, v4);
}

uint64_t sub_2745EC608(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_27444E7E4;

  return v7();
}

uint64_t objectdestroy_5Tm_2()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2745EC730()
{
  OUTLINED_FUNCTION_27_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v1[1] = sub_27445358C;
  v3 = OUTLINED_FUNCTION_49_1();

  return v4(v3);
}

uint64_t sub_2745EC7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_27451C72C(a3, v22 - v10);
  v12 = sub_27463B9FC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_27451C79C(v11);
  }

  else
  {
    sub_27463B9EC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_27463B96C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_27463B6EC() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_27451C79C(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27451C79C(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_2745ECA84()
{
  OUTLINED_FUNCTION_42_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v1[1] = sub_27445358C;
  v3 = OUTLINED_FUNCTION_49_1();

  return v4(v3);
}

uint64_t sub_2745ECB28()
{
  OUTLINED_FUNCTION_42_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v1[1] = sub_27444E7E4;
  v3 = OUTLINED_FUNCTION_49_1();

  return v4(v3);
}

uint64_t sub_2745ECBE4()
{
  OUTLINED_FUNCTION_79();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2745ECC78;

  return sub_2745EADE0(v2, v3);
}

uint64_t sub_2745ECC78()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_2_36();

  return v4(v3);
}

uint64_t sub_2745ECD5C()
{
  OUTLINED_FUNCTION_27_5();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_4(v5);
  *v6 = v7;
  v6[1] = sub_27445358C;
  v8 = OUTLINED_FUNCTION_49_1();

  return sub_2745EA6A4(v8, v9, v1, v2, v3, v4);
}

double block_copy_helper_43_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2745ECE40(void *a1)
{
  v1 = [a1 symbolName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

uint64_t OUTLINED_FUNCTION_3_42(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  return result;
}

id OUTLINED_FUNCTION_16_22()
{

  return [v0 (v1 + 780)];
}

uint64_t OUTLINED_FUNCTION_18_18()
{
  *(*(v0 + 224) + *(v0 + 264)) = 0;

  return MEMORY[0x2821F9700]();
}

id OUTLINED_FUNCTION_19_17()
{

  return [v0 (v1 + 780)];
}

id OUTLINED_FUNCTION_20_20()
{

  return [v0 (v1 + 780)];
}

uint64_t OUTLINED_FUNCTION_21_18(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

id sub_2745ECFE4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745ED270(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  a3[1] = sub_27463979C();
  a3[2] = v5;
  v6 = type metadata accessor for VariableConfigurationSheet(0);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  swift_storeEnumTagMultiPayload();
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  swift_storeEnumTagMultiPayload();
  *a3 = a2;
  v9 = [a2 anchor];
  v10 = [v9 variable];

  sub_2745AA868(v10, v19);
  sub_27463ACDC();
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = a3 + v6[8];
  *v14 = v20;
  *(v14 + 1) = v11;
  *(v14 + 4) = v12;
  *(v14 + 5) = v13;
  v15 = sub_274638EEC();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954340, &qword_27465F940) + 36));
  *v16 = v15;
  v16[1] = a1;

  return a1;
}

unint64_t sub_2745ED1B4()
{
  result = qword_280954348;
  if (!qword_280954348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954340, &qword_27465F940);
    sub_2745ED270(&qword_2809494A8, type metadata accessor for VariableConfigurationSheet, &unk_27465C5C8);
    sub_2745ED2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954348);
  }

  return result;
}

uint64_t sub_2745ED270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2745ED2B8()
{
  result = qword_2809548A0;
  if (!qword_2809548A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094B170, &unk_27464AD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809548A0);
  }

  return result;
}

uint64_t sub_2745ED348()
{
  v0 = sub_274637DBC();
  v9 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_27463BBCC();
  sub_2745F2184(&qword_2809542C0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_27463C0CC();
    if (!v13)
    {
      break;
    }

    sub_274464A50(&v12, v11);
    sub_27444C44C(v11, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8B8, &qword_27464BC20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v11);
    v4 = v14;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450FD0();
        v3 = v6;
      }

      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_274450FD0();
        v3 = v7;
      }

      *(v3 + 16) = v5 + 1;
      *(v3 + 8 * v5 + 32) = v4;
    }
  }

  (*(v9 + 8))(v2, v0);
  return v3;
}

uint64_t sub_2745ED568()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
  sub_27463ACEC();
  return v1;
}

double sub_2745ED62C()
{
  v0 = sub_2745ED568();
  result = -90.0;
  if ((v0 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2745ED658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v36 = MEMORY[0x277CE0BD8];
  v37 = MEMORY[0x277CE1180];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600, &qword_27464FD90);
  v26 = *(a1 + 16);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543E8, &unk_27465FAA8);
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  v30 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_27463ADAC();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90, &qword_2746498B0);
  sub_27463965C();
  v25 = MEMORY[0x277CE1138];
  WitnessTable = swift_getWitnessTable();
  v44 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
  swift_getWitnessTable();
  v36 = sub_27463AD8C();
  v37 = sub_2746396BC();
  v38 = swift_getWitnessTable();
  v39 = sub_2745F2184(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v3 = a1;
  v23 = a1;
  v4 = *(a1 + 24);
  v5 = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543F0, &unk_27465FAB8);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_27463965C();
  v41 = swift_getWitnessTable();
  v42 = v44;
  swift_getWitnessTable();
  v36 = sub_27463AD8C();
  v38 = swift_getWitnessTable();
  v6 = swift_getOpaqueTypeMetadata2();
  v7 = v23;
  v8 = *(v23 + 48);
  v36 = v4;
  v37 = AssociatedTypeWitness;
  v38 = v6;
  v39 = v5;
  v40 = v8;
  sub_27463AF9C();
  sub_27463C0AC();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  v9 = sub_27463AC1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  *&v16 = *(v7 + 32);
  *(&v16 + 1) = v5;
  *&v17 = v26;
  *(&v17 + 1) = v4;
  v31 = v17;
  v32 = v16;
  v33 = v8;
  v34 = v28;
  v18 = swift_getWitnessTable();
  sub_27463AC0C();
  v35 = v18;
  swift_getWitnessTable();
  sub_2744E9688();
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_2744E9688();
  return (v19)(v15, v9);
}

uint64_t sub_2745EDBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v135 = a6;
  v134 = a4;
  v118 = a1;
  v124 = a7;
  v105 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v107 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543F0, &unk_27465FAB8);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  v130 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_27463ADAC();
  v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90, &qword_2746498B0);
  sub_27463965C();
  v128 = MEMORY[0x277CE1138];
  WitnessTable = swift_getWitnessTable();
  v14 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
  v156 = WitnessTable;
  v157 = v14;
  v116 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  v15 = sub_27463AD8C();
  v16 = sub_2746396BC();
  v127 = MEMORY[0x277CDF028];
  v17 = swift_getWitnessTable();
  v18 = sub_2745F2184(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v132 = v15;
  v151 = v15;
  v152 = v16;
  v131 = v17;
  v153 = v17;
  v154 = v18;
  v137 = v18;
  KeyPath = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v125 = v11;
  v151 = v11;
  v152 = AssociatedTypeWitness;
  v101 = OpaqueTypeMetadata2;
  v153 = OpaqueTypeMetadata2;
  v154 = a5;
  v126 = a5;
  v20 = v135;
  v155 = v135;
  v21 = sub_27463AF9C();
  v104 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v103 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v102 = v95 - v24;
  v122 = v25;
  v123 = sub_27463C0AC();
  v119 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v120 = v95 - v28;
  v29 = swift_checkMetadataState();
  v136 = v29;
  v117 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v115 = v95 - v30;
  v151 = a2;
  v152 = v11;
  v153 = v134;
  v154 = a5;
  v155 = v20;
  v114 = type metadata accessor for FlatteningPicker(0, &v151);
  v31 = *(v114 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v114);
  v34 = v95 - v33;
  v151 = MEMORY[0x277CE0BD8];
  v152 = MEMORY[0x277CE1180];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600, &qword_27464FD90);
  v35 = a2;
  v153 = sub_27463965C();
  v154 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543E8, &unk_27465FAA8);
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  v36 = sub_27463965C();
  v150[3] = swift_getWitnessTable();
  v150[4] = v14;
  v112 = v36;
  v111 = swift_getWitnessTable();
  v37 = sub_27463AD8C();
  v110 = v37;
  v116 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v108 = v95 - v38;
  v109 = swift_getWitnessTable();
  v151 = v37;
  v152 = v29;
  v153 = v109;
  v154 = v18;
  v130 = swift_getOpaqueTypeMetadata2();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v40);
  v129 = v95 - v42;
  v43 = v31;
  v133 = v31;
  v44 = v31 + 16;
  v45 = *(v31 + 16);
  v46 = v34;
  v47 = v118;
  v48 = v114;
  v97 = v44;
  v96 = v45;
  (v45)(v34, v118, v114, v41);
  v49 = *(v43 + 80);
  v50 = (v49 + 56) & ~v49;
  v99 = v32;
  v95[1] = v49;
  v51 = swift_allocObject();
  v52 = v125;
  *(v51 + 2) = v35;
  *(v51 + 3) = v52;
  v53 = v134;
  v54 = v126;
  *(v51 + 4) = v134;
  *(v51 + 5) = v54;
  v55 = v135;
  *(v51 + 6) = v135;
  v56 = *(v133 + 32);
  v98 = v50;
  v100 = v46;
  v133 += 32;
  v95[0] = v56;
  v56(&v51[v50], v46, v48);
  v106 = v35;
  v138 = v35;
  v139 = v52;
  v140 = v53;
  v141 = v54;
  v142 = v55;
  v143 = v47;
  v57 = v47;
  v58 = v108;
  sub_27463AD5C();
  v59 = v115;
  sub_2746396AC();
  v60 = v127;
  v61 = v110;
  v62 = v136;
  v63 = v109;
  v64 = v137;
  sub_27463A69C();
  (*(v117 + 8))(v59, v62);
  v116[1](v58, v61);
  v151 = v61;
  v152 = v62;
  v153 = v63;
  v154 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v130;
  v115 = OpaqueTypeConformance2;
  sub_2744E9688();
  v67 = *(v128 + 8);
  v117 = v128 + 8;
  v116 = v67;
  (v67)(v60, v66);
  v68 = v57;
  if (sub_2745ED568())
  {
    v69 = v121;
    __swift_storeEnumTagSinglePayload(v121, 1, 1, v122);
    v151 = v132;
    v152 = v136;
    v153 = v131;
    v154 = v137;
    v144 = swift_getOpaqueTypeConformance2();
    swift_getWitnessTable();
  }

  else
  {
    v70 = v125;
    v71 = (*(v105 + 16))(v107, v57, v125);
    MEMORY[0x28223BE20](v71);
    v72 = v106;
    v95[-6] = v106;
    v95[-5] = v70;
    v73 = v134;
    v74 = v126;
    v95[-4] = v134;
    v95[-3] = v74;
    v75 = v135;
    KeyPath = swift_getKeyPath();
    v76 = v100;
    v96(v100, v68, v48);
    v77 = v98;
    v78 = swift_allocObject();
    v78[2] = v72;
    v78[3] = v70;
    v78[4] = v73;
    v78[5] = v74;
    v78[6] = v75;
    (v95[0])(v78 + v77, v76, v48);
    v151 = v132;
    v152 = v136;
    v153 = v131;
    v154 = v137;
    v79 = swift_getOpaqueTypeConformance2();
    v94 = v79;
    v80 = v103;
    sub_27463AF7C();
    v150[2] = v79;
    v81 = v122;
    swift_getWitnessTable();
    v82 = v102;
    sub_2744E9688();
    v83 = v104;
    v84 = *(v104 + 8);
    v84(v80, v81);
    sub_2744E9688();
    v84(v82, v81);
    v69 = v121;
    (*(v83 + 32))(v121, v80, v81);
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v81);
  }

  v85 = v120;
  sub_2745758B8(v69, v120);
  v86 = v119;
  v87 = *(v119 + 8);
  v88 = v123;
  v87(v69, v123);
  v89 = v127;
  v90 = v129;
  v91 = v130;
  (*(v128 + 16))(v127, v129, v130);
  v150[0] = v89;
  (*(v86 + 16))(v69, v85, v88);
  v150[1] = v69;
  v149[0] = v91;
  v149[1] = v88;
  v147 = v115;
  v151 = v132;
  v152 = v136;
  v153 = v131;
  v154 = v137;
  v146 = swift_getOpaqueTypeConformance2();
  v145 = swift_getWitnessTable();
  v148 = swift_getWitnessTable();
  sub_274575750(v150, 2, v149);
  v87(v85, v88);
  v92 = v116;
  (v116)(v90, v91);
  v87(v69, v88);
  return (v92)(v89, v91);
}

uint64_t sub_2745EEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_2745EEC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v6 = a1 + *(type metadata accessor for FlatteningPicker(0, &v9) + 72);
  v7 = *(v6 + 8);
  LOBYTE(v9) = *v6;
  v10 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
  sub_27463ACEC();
  v14 = (v15 & 1) == 0;
  sub_27463ACFC();
}

uint64_t sub_2745EECC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a5;
  v28 = a6;
  v24 = a3;
  v25 = a4;
  v26 = a1;
  v29 = a7;
  v38 = MEMORY[0x277CE0BD8];
  v39 = MEMORY[0x277CE1180];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600, &qword_27464FD90);
  v40 = sub_27463965C();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543E8, &unk_27465FAA8);
  swift_getTupleTypeMetadata();
  v8 = sub_27463B19C();
  swift_getWitnessTable();
  v9 = sub_27463ADAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90, &qword_2746498B0);
  v13 = sub_27463965C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v24 - v18;
  v30 = a2;
  v31 = v24;
  v32 = v25;
  v33 = v27;
  v34 = v28;
  v35 = v26;
  sub_27456E924(v8);
  sub_27463AD9C();
  WitnessTable = swift_getWitnessTable();
  sub_2744E8F6C();
  sub_2744E19A0();
  sub_27463A6FC();
  (*(v10 + 8))(v12, v9);
  v21 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
  v36 = WitnessTable;
  v37 = v21;
  swift_getWitnessTable();
  sub_2744E9688();
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_2744E9688();
  return (v22)(v19, v13);
}

uint64_t sub_2745EF068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a4;
  v68 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v54 - v13;
  v67 = *(a2 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600, &qword_27464FD90);
  v60 = sub_27463965C();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v69 = &v54 - v21;
  *&v90 = a2;
  *(&v90 + 1) = a3;
  *&v91 = a4;
  *(&v91 + 1) = a5;
  *&v92 = a6;
  v22 = type metadata accessor for FlatteningPicker(0, &v90);
  v23 = *(v22 + 64);
  v58 = a1;
  v24 = (a1 + v23);
  v25 = v24[1];
  *&v90 = *v24;
  *(&v90 + 1) = v25;
  sub_274412BBC();

  v26 = sub_27463A53C();
  v63 = v27;
  v64 = v26;
  v65 = v28;
  v66 = v29;
  v59 = v22;
  v30 = *(a1 + *(v22 + 68));
  v31 = AssociatedTypeWitness;
  v32 = sub_27463AF4C();
  MEMORY[0x277C575F0](v32);
  v30(v14);
  (*(WitnessTable + 8))(v14, v31);
  sub_27463ABCC();
  v33 = v55;
  sub_27463A78C();

  (*(v67 + 8))(v17, a2);
  v34 = sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
  v85[4] = v33;
  v85[5] = v34;
  v35 = v60;
  WitnessTable = swift_getWitnessTable();
  v56 = v19;
  sub_2744E9688();
  v36 = v62;
  v67 = *(v62 + 8);
  v37 = v19;
  v38 = v35;
  (v67)(v37, v35);
  v39 = sub_27463AC2C();
  sub_27463A45C();
  sub_27463A3DC();
  v40 = sub_27463A42C();

  KeyPath = swift_getKeyPath();
  v42 = sub_27463ABCC();
  v43 = swift_getKeyPath();
  v44 = sub_2745ED62C() * 0.0174532925;
  sub_27463B1DC();
  *&v86 = v39;
  *(&v86 + 1) = KeyPath;
  *&v87 = v40;
  *(&v87 + 1) = v43;
  *&v88 = v42;
  *(&v88 + 1) = v44;
  *&v89 = v45;
  *(&v89 + 1) = v46;
  v48 = v63;
  v47 = v64;
  v81 = v64;
  v82 = v63;
  LOBYTE(v35) = v65 & 1;
  v83 = v65 & 1;
  v79 = 0;
  v80 = 1;
  v84 = v66;
  v85[0] = &v81;
  v85[1] = &v79;
  v49 = *(v36 + 16);
  v50 = v56;
  v51 = v69;
  v49(v56, v69, v38);
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v85[2] = v50;
  v85[3] = &v75;
  sub_27440B094(v47, v48, v35);

  sub_2745F27A0(&v86, &v90);
  v74[0] = MEMORY[0x277CE0BD8];
  v74[1] = MEMORY[0x277CE1180];
  v74[2] = v38;
  v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809543E8, &unk_27465FAA8);
  v70 = MEMORY[0x277CE0BC8];
  v71 = MEMORY[0x277CE1170];
  v72 = WitnessTable;
  v73 = sub_2745F2810();
  sub_274575750(v85, 4, v74);
  sub_274412C10(v47, v48, v35);

  sub_2745F289C(&v86);
  v52 = v67;
  (v67)(v51, v38);
  v90 = v75;
  v91 = v76;
  v92 = v77;
  v93 = v78;
  sub_2745F289C(&v90);
  v52(v50, v38);
  sub_274412C10(v81, v82, v83);
}

uint64_t sub_2745EF648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a7;
  v73 = a5;
  v83 = a1;
  v84 = a2;
  v82 = a8;
  v13 = sub_2746396BC();
  v63 = v13;
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v80 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a6;
  v77 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  v79 = *(v74 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v55 - v15;
  v58 = &v55 - v15;
  v72 = a3;
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v97 = a6;
  v98 = a7;
  v17 = type metadata accessor for FlatteningPicker(0, &v94);
  v56 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  v57 = &v55 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543F0, &unk_27465FAB8);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90, &qword_2746498B0);
  v22 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
  v92 = WitnessTable;
  v93 = v24;
  v70 = v22;
  v69 = swift_getWitnessTable();
  v25 = sub_27463AD8C();
  v71 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v65 = &v55 - v26;
  v28 = v27;
  v64 = v27;
  v29 = swift_getWitnessTable();
  v62 = v29;
  v61 = sub_2745F2184(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v94 = v28;
  v95 = v13;
  v96 = v29;
  v97 = v61;
  v66 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v59 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v60 = &v55 - v33;
  v55 = v18;
  (*(v18 + 16))(v21, v84, v17, v32);
  v34 = v74;
  v35 = AssociatedTypeWitness;
  (*(v74 + 16))(v16, v83, AssociatedTypeWitness);
  v36 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v37 = (v19 + v36 + *(v34 + 80)) & ~*(v34 + 80);
  v38 = swift_allocObject();
  v39 = v72;
  v40 = v77;
  *(v38 + 2) = v72;
  *(v38 + 3) = v40;
  v41 = v73;
  v42 = v76;
  *(v38 + 4) = v73;
  *(v38 + 5) = v42;
  v43 = v78;
  *(v38 + 6) = v78;
  (*(v55 + 32))(&v38[v36], v57, v56);
  (*(v34 + 32))(&v38[v37], v58, v35);
  v85 = v39;
  v86 = v40;
  v87 = v41;
  v88 = v42;
  v89 = v43;
  v90 = v84;
  v91 = v83;
  v44 = v65;
  sub_27463AD5C();
  v45 = v80;
  sub_2746396AC();
  v46 = v59;
  v47 = v64;
  v48 = v63;
  v49 = v62;
  v50 = v61;
  sub_27463A69C();
  (*(v81 + 8))(v45, v48);
  (*(v71 + 8))(v44, v47);
  v94 = v47;
  v95 = v48;
  v96 = v49;
  v97 = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v60;
  v52 = OpaqueTypeMetadata2;
  sub_2744E9688();
  v53 = *(v68 + 8);
  v53(v46, v52);
  sub_2744E9688();
  return (v53)(v51, v52);
}

uint64_t sub_2745EFE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_2745EFEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v19[-1] - v14;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v16 = type metadata accessor for FlatteningPicker(0, v19);
  (*(v13 + 16))(v15, v18, AssociatedTypeWitness);
  sub_27463AF4C();
  sub_27463AEBC();
  return sub_2745ED5C8(1, v16);
}

uint64_t sub_2745F0004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a6;
  v31 = a7;
  v28 = a5;
  v29 = a2;
  v26 = a4;
  v27 = a1;
  v32 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543F0, &unk_27465FAB8);
  swift_getTupleTypeMetadata3();
  v9 = sub_27463B19C();
  swift_getWitnessTable();
  v10 = sub_27463ADAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90, &qword_2746498B0);
  v14 = sub_27463965C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - v19;
  v33 = a3;
  v34 = v26;
  v35 = v28;
  v36 = v30;
  v37 = v31;
  v38 = v27;
  v39 = v29;
  sub_27456E924(v9);
  sub_27463AD9C();
  WitnessTable = swift_getWitnessTable();
  sub_2744E8F6C();
  sub_2744E19A0();
  sub_27463A6FC();
  (*(v11 + 8))(v13, v10);
  v22 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
  v40 = WitnessTable;
  v41 = v22;
  swift_getWitnessTable();
  sub_2744E9688();
  v23 = *(v15 + 8);
  v23(v17, v14);
  sub_2744E9688();
  return (v23)(v20, v14);
}

uint64_t sub_2745F0378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a2;
  v36[1] = a1;
  v44 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = v36 - v15;
  v45 = *(a3 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v36 - v21;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v23 = type metadata accessor for FlatteningPicker(0, &v53);
  (*(a1 + *(v23 + 68)))(v37);
  v42 = v22;
  v43 = a5;
  sub_2744E9688();
  v24 = *(v45 + 8);
  v39 = v19;
  v40 = a3;
  v41 = v24;
  v24(v19, a3);
  v25 = sub_27463AF4C();
  MEMORY[0x277C575F0](v25);
  LOBYTE(v23) = sub_27463B5BC();
  (*(v38 + 8))(v16, AssociatedTypeWitness);
  v26 = 0;
  KeyPath = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (v23)
  {
    v26 = sub_27463AC2C();
    sub_27463A3AC();
    sub_27463A3FC();
    v28 = sub_27463A42C();

    KeyPath = swift_getKeyPath();
    v30 = sub_27463AB1C();
    v29 = swift_getKeyPath();
  }

  v31 = v39;
  v32 = v42;
  v33 = v40;
  (*(v45 + 16))(v39, v42, v40);
  v50 = 0;
  v51 = 1;
  v52[0] = v31;
  v52[1] = &v50;
  v53 = v26;
  v54 = KeyPath;
  v55 = v28;
  v56 = v29;
  v57 = v30;
  v52[2] = &v53;
  v49[0] = v33;
  v49[1] = MEMORY[0x277CE1180];
  v49[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809543F0, &unk_27465FAB8);
  v46 = v43;
  v47 = MEMORY[0x277CE1170];
  v48 = sub_2745F2658();
  sub_274575750(v52, 3, v49);
  sub_2745F26DC(v26);
  v34 = v41;
  v41(v32, v33);
  sub_2745F26DC(v53);
  return v34(v31, v33);
}

__n128 sub_2745F07A8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a5@<X8>)
{
  v6 = a2;
  sub_27463B70C("Type (Variable Editor)", 22);
  sub_27463B70C("Type", 4);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v9 = qword_28094BB00;
  v10 = sub_27463B66C();

  v11 = sub_27463B66C();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = sub_27463B6AC();
  v15 = v14;

  v16 = sub_2745F0978(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280954350, &qword_27465FA18);
  sub_27463AEEC();
  sub_27463ACDC();
  a5->n128_u64[0] = v16;
  a5->n128_u64[1] = v18;
  result = v19;
  a5[1] = v19;
  a5[2].n128_u64[0] = v13;
  a5[2].n128_u64[1] = v15;
  a5[3].n128_u64[0] = sub_2745F0C70;
  a5[3].n128_u64[1] = 0;
  a5[4].n128_u8[0] = v6;
  a5[4].n128_u64[1] = a3;
  return result;
}

uint64_t sub_2745F0978(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v22 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8B8, &qword_27464BC20);
      [v2 addObject_];
      swift_unknownObjectRelease();
      v6 = [swift_getObjCClassFromMetadata() allSupportedItemClasses];
      [v2 unionOrderedSet_];

      --v3;
    }

    while (v3);
  }

  v7 = sub_2745ED348();
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = (v7 + 32);
    do
    {
      v11 = *v10;
      v12 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
      v13 = sub_27463B6AC();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v22 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274451514(0, *(v9 + 16) + 1, 1);
          v9 = v22;
        }

        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_274451514(v17 > 1, v18 + 1, 1);
          v9 = v22;
        }

        *(v9 + 16) = v18 + 1;
        *(v9 + 8 * v18 + 32) = v11;
      }

      ++v10;
      --v8;
    }

    while (v8);
  }

  v22 = v9;

  sub_2745F0D38(&v22);

  v19 = *(v22 + 16);
  if (v19)
  {
    v22 = MEMORY[0x277D84F90];
    sub_27463C44C();
    v20 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277D7C258]) initWithCoercionItemClass_];
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v20 += 8;
      --v19;
    }

    while (v19);

    return v22;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2745F0C70@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  [*a1 coercionItemClass];
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata respondsToSelector_];
  if (result)
  {
    v5 = [ObjCClassFromMetadata localizedTypeDescription];
    sub_27463B6AC();

    sub_274412BBC();
    result = sub_27463A53C();
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7 & 1;
    *(a2 + 24) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2745F0D38(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274545CF0(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_2745F0DA4(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_2745F0DA4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27463C65C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8B8, &qword_27464BC20);
        v6 = sub_27463B88C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2745F0FF8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2745F0EA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2745F0EA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    while (2)
    {
      v15 = a3;
      v13 = v6;
      v14 = v5;
      do
      {
        v7 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
        sub_27463B6AC();

        v8 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
        sub_27463B6AC();

        sub_274412BBC();
        v9 = sub_27463C10C();

        if (v9 != -1)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v5;
        result = v5[1];
        *v5 = result;
        v5[1] = v10;
        --v5;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v15 + 1;
      v5 = v14 + 1;
      v6 = v13 - 1;
      if (v15 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2745F0FF8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      v103 = v6;
      if (v6 + 1 < v5)
      {
        v100 = v7;
        v98 = 8 * v6;
        v10 = *a3 + 8 * v6 + 16;
        v11 = v6;
        v12 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
        v13 = sub_27463B6AC();
        v15 = v14;

        v111 = v13;
        v112 = v15;
        v16 = [swift_getObjCClassFromMetadata() &selRef_overridingBackgroundColor + 6];
        sub_27463B6AC();

        v4 = &v111;
        sub_274412BBC();
        v105 = sub_27463C10C();

        v17 = v11 + 2;
        while (1)
        {
          v18 = v17;
          v19 = v9 + 1;
          if (v19 >= v5)
          {
            break;
          }

          v20 = v5;
          v21 = v19;
          v22 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
          v23 = sub_27463B6AC();
          v25 = v24;

          v111 = v23;
          v112 = v25;
          v26 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
          sub_27463B6AC();

          v9 = v21;
          v5 = v20;
          v4 = sub_27463C10C();

          v10 += 8;
          v17 = v18 + 1;
          if ((v105 == -1) == (v4 != -1))
          {
            goto LABEL_9;
          }
        }

        v9 = v5;
LABEL_9:
        if (v105 == -1)
        {
          if (v9 < v103)
          {
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
            return;
          }

          if (v103 >= v9)
          {
            v7 = v100;
            v8 = v103;
          }

          else
          {
            if (v5 >= v18)
            {
              v27 = v18;
            }

            else
            {
              v27 = v5;
            }

            v28 = 8 * v27 - 8;
            v29 = v9;
            v30 = v103;
            v7 = v100;
            v8 = v103;
            v31 = v98;
            do
            {
              if (v30 != --v29)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                v33 = *(v32 + v31);
                *(v32 + v31) = *(v32 + v28);
                *(v32 + v28) = v33;
              }

              ++v30;
              v28 -= 8;
              v31 += 8;
            }

            while (v30 < v29);
          }
        }

        else
        {
          v7 = v100;
          v8 = v103;
        }
      }

      v34 = a3[1];
      if (v9 < v34)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_122;
        }

        if (v9 - v8 < a4)
        {
          v35 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v35 >= v34)
          {
            v35 = a3[1];
          }

          if (v35 < v8)
          {
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (v9 != v35)
          {
            v101 = v7;
            v36 = *a3;
            v37 = (*a3 + 8 * v9 - 8);
            v38 = v8 - v9;
            v104 = v35;
            do
            {
              v109 = v9;
              v39 = v38;
              v106 = v37;
              do
              {
                v40 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
                v41 = sub_27463B6AC();
                v43 = v42;

                v111 = v41;
                v112 = v43;
                v44 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
                sub_27463B6AC();

                sub_274412BBC();
                v4 = sub_27463C10C();

                if (v4 != -1)
                {
                  break;
                }

                if (!v36)
                {
                  goto LABEL_127;
                }

                v45 = *v37;
                *v37 = v37[1];
                v37[1] = v45;
                --v37;
              }

              while (!__CFADD__(v39++, 1));
              v9 = v109 + 1;
              v37 = v106 + 1;
              --v38;
            }

            while (v109 + 1 != v104);
            v9 = v104;
            v7 = v101;
            v8 = v103;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2744503AC(0, *(v7 + 2) + 1, 1, v7);
        v7 = v89;
      }

      v48 = *(v7 + 2);
      v47 = *(v7 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        sub_2744503AC(v47 > 1, v48 + 1, 1, v7);
        v7 = v90;
      }

      *(v7 + 2) = v49;
      v50 = v7 + 32;
      v51 = &v7[16 * v48 + 32];
      *v51 = v103;
      *(v51 + 1) = v9;
      v107 = *result;
      if (!*result)
      {
        goto LABEL_131;
      }

      v110 = v9;
      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[16 * v49 - 16];
          v54 = &v7[16 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = *(v7 + 4);
            v56 = *(v7 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_59:
            if (v58)
            {
              goto LABEL_108;
            }

            v70 = *v54;
            v69 = *(v54 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_111;
            }

            v74 = *(v53 + 1);
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_114;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_116;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          if (v49 < 2)
          {
            goto LABEL_110;
          }

          v77 = *v54;
          v76 = *(v54 + 1);
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_74:
          if (v73)
          {
            goto LABEL_113;
          }

          v79 = *v53;
          v78 = *(v53 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_115;
          }

          if (v80 < v72)
          {
            goto LABEL_88;
          }

LABEL_81:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v4 = v7;
          v84 = &v50[16 * v52 - 16];
          v85 = *v84;
          v7 = &v50[16 * v52];
          v86 = *(v7 + 1);
          v87 = v113;
          sub_2745F177C((*a3 + 8 * *v84), (*a3 + 8 * *v7), (*a3 + 8 * v86), v107);
          v113 = v87;
          if (v87)
          {
            goto LABEL_90;
          }

          if (v86 < v85)
          {
            goto LABEL_103;
          }

          v88 = *(v4 + 2);
          if (v52 > v88)
          {
            goto LABEL_104;
          }

          *v84 = v85;
          *(v84 + 1) = v86;
          if (v52 >= v88)
          {
            goto LABEL_105;
          }

          v49 = v88 - 1;
          sub_274546A38(v7 + 16, v88 - 1 - v52, &v50[16 * v52]);
          v7 = v4;
          *(v4 + 2) = v88 - 1;
          if (v88 <= 2)
          {
            goto LABEL_88;
          }
        }

        v59 = &v50[16 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_106;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_107;
        }

        v66 = *(v54 + 1);
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_109;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_112;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = *(v53 + 1);
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_120;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_59;
      }

LABEL_88:
      v6 = v110;
      v5 = a3[1];
      if (v110 >= v5)
      {
        goto LABEL_92;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_92:
  v4 = *result;
  if (!*result)
  {
    goto LABEL_132;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_125:
    v7 = sub_274546A20(v7, a2, a3, a4);
  }

  v91 = (v7 + 16);
  for (i = *(v7 + 2); i >= 2; *v91 = i)
  {
    if (!*a3)
    {
      goto LABEL_129;
    }

    v93 = &v7[16 * i];
    v94 = *v93;
    v95 = &v91[2 * i];
    v96 = *(v95 + 1);
    v97 = v113;
    sub_2745F177C((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v96), v4);
    v113 = v97;
    if (v97)
    {
      break;
    }

    if (v96 < v94)
    {
      goto LABEL_117;
    }

    if (i - 2 >= *v91)
    {
      goto LABEL_118;
    }

    *v93 = v94;
    *(v93 + 1) = v96;
    a2 = *v91 - i;
    if (*v91 < i)
    {
      goto LABEL_119;
    }

    i = *v91 - 1;
    sub_274546A38(v95 + 16, a2, v95);
  }

LABEL_90:
}

uint64_t sub_2745F177C(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_274453590(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v11 = a1;
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v11;
        goto LABEL_28;
      }

      v13 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
      sub_27463B6AC();

      v14 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
      sub_27463B6AC();

      sub_274412BBC();
      v15 = sub_27463C10C();

      if (v15 != -1)
      {
        break;
      }

      v16 = v6;
      v17 = v11 == v6++;
      if (!v17)
      {
        goto LABEL_9;
      }

LABEL_10:
      ++v11;
    }

    v16 = v4;
    v17 = v11 == v4++;
    if (v17)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v11 = *v16;
    goto LABEL_10;
  }

  sub_274453590(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v29 = v4;
LABEL_15:
  v18 = v6 - 1;
  --v5;
  v19 = a1;
  while (v10 > v4 && v6 > v19)
  {
    v21 = v18;
    v22 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
    sub_27463B6AC();

    v23 = [swift_getObjCClassFromMetadata() localizedTypeDescription];
    sub_27463B6AC();

    sub_274412BBC();
    v24 = sub_27463C10C();

    v25 = v5 + 1;
    if (v24 == -1)
    {
      v17 = v25 == v6;
      v6 = v21;
      v4 = v29;
      if (!v17)
      {
        *v5 = *v21;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != v25)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v19 = a1;
    v4 = v29;
    v18 = v21;
  }

LABEL_28:
  v26 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, 8 * v26);
  }

  return 1;
}

unint64_t sub_2745F1A6C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_27463AF4C();
    if (v3 <= 0x3F)
    {
      v1 = sub_274431930();
      if (v4 <= 0x3F)
      {
        sub_2744645B4();
        v1 = v5;
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_2745F1B6C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v14 = result;
  v15 = v13 | 7;
  v16 = (v13 | 7) + *(v6 + 64);
  if (v12 >= a2)
  {
LABEL_28:
    if (v7 >= v11)
    {
      v26 = a1;
      v10 = v7;
      v14 = v5;
    }

    else
    {
      v24 = ((((a1 + v16) & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) == 0)
      {
        v25 = *v24;
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }

      v26 = ((v24 + v13 + 8) & ~v13);
    }

    return __swift_getEnumTagSinglePayload(v26, v10, v14);
  }

  else
  {
    v17 = ((((((*(*(result - 8) + 64) + ((v13 + 16) & ~v13) + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v12 + 1;
    }

    if (v19 >= 0x10000)
    {
      LODWORD(v20) = 4;
    }

    else
    {
      LODWORD(v20) = 2;
    }

    if (v19 < 0x100)
    {
      LODWORD(v20) = 1;
    }

    if (v19 >= 2)
    {
      v20 = v20;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v17);
        if (!v21)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 2:
        v21 = *(a1 + v17);
        if (!v21)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *(a1 + v17);
        if (!v21)
        {
          goto LABEL_28;
        }

LABEL_25:
        v22 = v21 - 1;
        if (v18)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        result = v12 + (v23 | v22) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_2745F1DD4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = (v15 | 7) + *(v8 + 64);
  v17 = ((v15 + 16) & ~v15) + *(*(AssociatedTypeWitness - 8) + 64);
  v18 = ((((((v17 + (v16 & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v21 = 0;
  }

  else
  {
    if (((((((v17 + (v16 & ~(v15 | 7)) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a3 - v14 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v21)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_62:
        __break(1u);
        return;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v9 >= v13)
        {
          v28 = a1;
          v29 = a2;
          v12 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v24 = ((a1 + v16) & ~(v15 | 7));
          if (v13 < a2)
          {
            if (v17 <= 3)
            {
              v25 = ~(-1 << (8 * v17));
            }

            else
            {
              v25 = -1;
            }

            if (v17)
            {
              v26 = v25 & (~v13 + a2);
              if (v17 <= 3)
              {
                v27 = v17;
              }

              else
              {
                v27 = 4;
              }

              bzero(v24, v17);
              switch(v27)
              {
                case 2:
                  *v24 = v26;
                  break;
                case 3:
                  *v24 = v26;
                  v24[2] = BYTE2(v26);
                  break;
                case 4:
                  *v24 = v26;
                  break;
                default:
                  *v24 = v26;
                  break;
              }
            }

            return;
          }

          v30 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v31 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v31 = (a2 - 1);
            }

            *v30 = v31;
            return;
          }

          v28 = ((v30 + v15 + 8) & ~v15);
          v29 = a2;
        }

        __swift_storeEnumTagSinglePayload(v28, v29, v12, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    if (((((((v17 + (v16 & ~(v15 | 7)) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v14;
    }

    else
    {
      v22 = 1;
    }

    if (((((((v17 + (v16 & ~(v15 | 7)) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v14 + a2;
      bzero(a1, ((((((v17 + (v16 & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v23;
    }

    switch(v21)
    {
      case 1:
        *(a1 + v18) = v22;
        break;
      case 2:
        *(a1 + v18) = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *(a1 + v18) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2745F2184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2745F21E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(OUTLINED_FUNCTION_1_40(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23) - 8);
  v16 = v9 + ((*(v14 + 80) + 56) & ~*(v14 + 80));

  return sub_2745EEB8C(v16, v8, v10, v11, v12, v13, v15);
}

uint64_t objectdestroyTm_23()
{
  v10 = *(v1 + 16);
  v9 = *(v1 + 40);
  v11 = *(v1 + 24);
  v8 = v11;
  v12 = v9;
  type metadata accessor for FlatteningPicker(0, &v10);
  OUTLINED_FUNCTION_5_16();
  v3 = v1 + ((*(v2 + 80) + 56) & ~*(v2 + 80));
  (*(*(v8 - 8) + 8))(v3, v8);
  v4 = v3 + *(v0 + 68);

  OUTLINED_FUNCTION_0_47();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_27463AF4C();
  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + *(v6 + 32), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_2745F2430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v10 = *(type metadata accessor for FlatteningPicker(0, v13) - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return sub_2745EF648(a1, v11, v5, v6, v7, v8, v9, a2);
}

uint64_t sub_2745F24F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(OUTLINED_FUNCTION_1_40(a1, a2, a3, a4, a5, a6, a7, a8, v21, v22, v23, v24, v25, v26) - 8);
  v15 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v16 = v15 + *(v14 + 64);
  v17 = *(swift_getAssociatedTypeWitness() - 8);
  v19 = v9 + ((v16 + *(v17 + 80)) & ~*(v17 + 80));

  return sub_2745EFE28(v9 + v15, v19, v8, v10, v11, v12, v13, v18);
}

unint64_t sub_2745F2658()
{
  result = qword_2809543F8;
  if (!qword_2809543F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543F0, &unk_27465FAB8);
    sub_2744F2BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809543F8);
  }

  return result;
}

uint64_t sub_2745F26DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2745F27A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809543E8, &unk_27465FAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2745F2810()
{
  result = qword_280954400;
  if (!qword_280954400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543E8, &unk_27465FAA8);
    sub_2744F2BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954400);
  }

  return result;
}

uint64_t sub_2745F289C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809543E8, &unk_27465FAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v14[3];
  v17 = v14[4];
  v18 = v14[5];
  v19 = v14[6];
  a10 = v14[2];
  a11 = v16;
  a12 = v17;
  a13 = v18;
  a14 = v19;

  return type metadata accessor for FlatteningPicker(0, &a10);
}

uint64_t sub_2745F296C(uint64_t a1, uint64_t a2)
{
  result = sub_2746380BC();
  if (v3 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2745F2A04(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_27463B9CC();
  v2[13] = sub_27463B9BC();
  v5 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745F2B14, v5, v4);
}

uint64_t sub_2745F2B14()
{
  v1 = *(v0 + 64);

  *(v0 + 48) = sub_2745F2C90();
  sub_27463B92C();
  swift_getWitnessTable();
  sub_27463BABC();

  *(v0 + 32) = *(v0 + 16);
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A498, &qword_274649190);
  v2 = sub_27463BB7C();
  if (v2)
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v11 = sub_2745F2C90();
    sub_27463B8EC();
    (*(v4 + 8))(v3, v5);
    sub_2745F2D18(v11, v6, v7, v8);
  }

  v9 = *(v0 + 8);

  return v9(v2 & 1);
}

uint64_t sub_2745F2C90()
{
  v3[1] = *(v0 + qword_280954408);
  v4 = *(v0 + qword_280954408 + 8);
  sub_27463B92C();
  v1 = sub_27463AF4C();
  MEMORY[0x277C575F0](v3, v1);
  return v3[0];
}

uint64_t sub_2745F2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2745F3140(a1, a2, a3, a4);
  sub_27463B92C();
  sub_27463AF4C();
  return sub_27463AEBC();
}

uint64_t sub_2745F2DB0()
{
  sub_27463B92C();
  sub_27463AF4C();
  sub_27463AEEC();
  return v1;
}

uint64_t sub_2745F2E3C()
{
  sub_2745F2C90();
  v0 = sub_27463B8BC();

  return v0;
}

uint64_t sub_2745F2EA0()
{
  sub_2745F2DB0();
  sub_27463B92C();
  sub_27463AF4C();
  OUTLINED_FUNCTION_0_48();
  swift_getWitnessTable();
  sub_27463AF2C();
}

uint64_t sub_2745F2F7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_27463800C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7F8, &qword_27464BB48);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274648570;
  *(v7 + 32) = a1;
  v13 = v7;
  sub_2745F3384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954490, &unk_27465FC10);
  sub_2745F33DC();
  sub_27463C1EC();
  v13 = sub_2745F2C90();
  sub_27463B92C();
  OUTLINED_FUNCTION_0_48();
  swift_getWitnessTable();
  sub_27463B5AC();
  (*(v4 + 8))(v6, v3);
  return sub_2745F2D18(v13, v8, v9, v10);
}

uint64_t sub_2745F3140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ListParameterOutlineContent(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  swift_getWitnessTable();
  sub_274638EFC();
  sub_274638F3C();
}

id sub_2745F3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ListParameterOutlineContent(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2745F3294(uint64_t a1, uint64_t a2)
{
  v3 = qword_280965F70;
  v4 = sub_2746380BC();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
}

uint64_t sub_2745F3340@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for ListParameterOutlineContent(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_274638EFC();
  *a4 = result;
  return result;
}

unint64_t sub_2745F3384()
{
  result = qword_28094FE40;
  if (!qword_28094FE40)
  {
    sub_27463800C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FE40);
  }

  return result;
}

unint64_t sub_2745F33DC()
{
  result = qword_280954498;
  if (!qword_280954498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954490, &unk_27465FC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954498);
  }

  return result;
}

void *sub_2745F3458()
{
  sub_2745FADC8();

  return sub_274639ACC();
}

uint64_t sub_2745F34A0(uint64_t a1)
{
  sub_274412C20(a1, &v3, &qword_28094E090, &qword_274651B80);
  sub_2745FADC8();
  sub_274639ADC();
  return sub_27440CB1C(a1, &qword_28094E090, &qword_274651B80);
}

uint64_t sub_2745F365C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

uint64_t sub_2745F36B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_2745F3724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2745F3778(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_item];
  *v3 = a1;
  *(v3 + 1) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_2745F40E4();
  [v2 setNeedsLayout];

  return swift_unknownObjectRelease();
}

id sub_2745F3800(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = sub_2745F385C(a1);
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void *sub_2745F385C(uint64_t a1)
{
  sub_27463AE9C();
  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809505F0, &unk_274657BF0));
  v2 = sub_27463959C();
  [v2 setHidden_];
  return v2;
}

id sub_2745F38D4()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___parameterListView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___parameterListView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___parameterListView);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_item + 8);
    objc_allocWithZone(type metadata accessor for AdditionalParameterListView(0));
    v6 = swift_unknownObjectRetain();
    v7 = sub_2745F6898(v6, v5);
    [v7 setHidden_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_2745F3984()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952620, &qword_27464B198);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40_1();
  v43 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF70, &qword_27464A690);
  OUTLINED_FUNCTION_1();
  v39 = v8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954950, &qword_274660098);
  OUTLINED_FUNCTION_1();
  v40 = v13;
  v41 = v12;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954958, &unk_2746600A0);
  OUTLINED_FUNCTION_1();
  v44 = v18;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  v42 = v20;
  *&v0[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___errorView] = 0;
  *&v0[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___importQuestionsView] = 0;
  *&v0[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___parameterListView] = 0;
  *&v0[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_parameterSelectionObserver] = 0;
  v21 = &v0[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_item];
  *v21 = v4;
  *(v21 + 1) = v2;
  v22 = type metadata accessor for ActionCellAuxiliaryContentView();
  v46.receiver = v0;
  v46.super_class = v22;
  swift_unknownObjectRetain();
  v23 = objc_msgSendSuper2(&v46, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = sub_2745F37E8();
  OUTLINED_FUNCTION_27_15();

  v25 = sub_2745F38D4();
  OUTLINED_FUNCTION_27_15();

  v26 = sub_2745F37F4();
  OUTLINED_FUNCTION_27_15();

  sub_2745F40E4();
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getAssociatedTypeWitness();
    v38 = v17;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = *(AssociatedConformanceWitness + 32);
    v30 = swift_checkMetadataState();
    v31 = v29(v30, AssociatedConformanceWitness);

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954960, &qword_27465C120);
    sub_274638F7C();
    swift_endAccess();

    sub_2746016D8(&qword_280952710);
    sub_274638FEC();
    (*(v39 + 8))(v11, v7);
    sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    v32 = sub_27463BCEC();
    v45 = v32;
    v33 = sub_27463BCDC();
    v34 = v43;
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v33);
    sub_2746016D8(&unk_280954968);
    sub_27460159C(&qword_280952640);
    v36 = v41;
    v35 = v42;
    sub_274638FDC();
    sub_27440CB1C(v34, &qword_280952620, &qword_27464B198);

    (*(v40 + 8))(v16, v36);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2746016D8(&unk_280954978);
    v37 = v38;
    Strong = sub_274638FFC();
    swift_unknownObjectRelease();

    (*(v44 + 8))(v35, v37);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *&v23[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_parameterSelectionObserver] = Strong;

  OUTLINED_FUNCTION_23();
}

char *sub_2745F3F34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2745F40E4();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsLayout];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *&result[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_item];
    swift_unknownObjectRetain();

    v9 = *(v8 + 32);
    swift_unknownObjectRelease();

    sub_274638F0C();
  }

  return result;
}

void sub_2745F4040()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___errorView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___importQuestionsView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___parameterListView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_parameterSelectionObserver) = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_2745F40E4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954840, &qword_27465FFB8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v46 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954848, &qword_27465FFC0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = &v0[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_item];
  v9 = *&v0[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_item + 8];
  v10 = swift_unknownObjectRetain();
  v11 = sub_2745F4570(v10, v9);
  v13 = v12;
  swift_unknownObjectRelease();
  v14 = sub_2745F37E8();
  v15 = v14;
  if (v13 == 254)
  {
    [v14 setHidden_];

    sub_2745F38D4();
    OUTLINED_FUNCTION_20_21();
    [v32 v33];

    sub_2745F37F4();
    OUTLINED_FUNCTION_20_21();
    [v34 v35];

    v36 = *(v8 + 1);
    v37 = *&v1[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___parameterListView];
    v38 = swift_unknownObjectRetain();
    sub_2745F6680(v38, v36);
  }

  else if (v13 == 255)
  {
    [v14 setHidden_];

    sub_2745F38D4();
    OUTLINED_FUNCTION_20_21();
    [v16 v17];

    sub_2745F37F4();
    OUTLINED_FUNCTION_20_21();
    [v18 v19];

    swift_getObjectType();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v23 = *(AssociatedConformanceWitness + 32);
      v24 = swift_checkMetadataState();
      v25 = v23(v24, AssociatedConformanceWitness);

      swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_32_13();
      sub_274638FAC();

      if (v47)
      {
        v26 = v48;
        v27 = v49;
        v28 = *&v1[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___importQuestionsView];
        v29 = OUTLINED_FUNCTION_5_0();
        sub_2745F5348(v29, v30, v26, v27, v31);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954850, &qword_274660010);
        sub_274600F38();
        v47 = sub_27463AE9C();
        sub_2746395AC();
      }
    }
  }

  else
  {
    [v14 setHidden_];

    sub_2745F38D4();
    OUTLINED_FUNCTION_20_21();
    [v39 v40];

    sub_2745F37F4();
    OUTLINED_FUNCTION_20_21();
    [v41 v42];

    v43 = *&v1[OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView____lazy_storage___errorView];
    sub_2745F5B40(v11, v13, v4);
    swift_getObjectType();
    v44 = swift_unknownObjectWeakLoadStrong();
    v45 = v44;
    if (v44)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v44 = v45;
    }

    sub_2745F4AE0(v44, v7);

    sub_27440CB1C(v4, &qword_280954840, &qword_27465FFB8);
    sub_274601240();
    v47 = sub_27463AE9C();
    sub_2746395AC();
    sub_274601520(v11, v13);
  }

  [v1 setNeedsLayout];
  OUTLINED_FUNCTION_23();
}

void *sub_2745F4570(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = *(a1 + 32);
  v4 = [*(v3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) isMissing];
  v5 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError);
  if (v4 || v5)
  {
    v6 = v5;
  }

  else
  {
    sub_2745E27D4();
    if (v7)
    {
      return v7;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v9 = Strong, swift_getAssociatedTypeWitness(), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), v11 = *(AssociatedConformanceWitness + 32), v12 = swift_checkMetadataState(), v13 = v11(v12, AssociatedConformanceWitness), v9, swift_getKeyPath(), swift_getKeyPath(), sub_274638FAC(), v13, , , v15))
      {

        return 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

uint64_t sub_2745F4714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954730, &qword_27465FED0);
  MEMORY[0x28223BE20](v34);
  v4 = &v33 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954738, &qword_27465FED8);
  MEMORY[0x28223BE20](v36);
  v6 = &v33 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954740, &qword_27465FEE0);
  MEMORY[0x28223BE20](v37);
  v38 = v6;
  v39 = &v33 - v7;
  if (a1)
  {
    v8 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_runner);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  v10 = type metadata accessor for WorkflowEditorOptions(0);
  sub_274600BB0(&qword_28094A730);
  v11 = sub_27463979C();
  v13 = v12;
  v41 = 0;
  v42 = 0;
  v44 = 0;
  v43 = 0;
  sub_27463ACDC();
  v33 = v45;
  v14 = v46;
  v15 = v47;
  v16 = v48;
  sub_274567204(v35, v4);
  v17 = &v4[*(v34 + 36)];
  *v17 = v8;
  *(v17 + 1) = v11;
  *(v17 + 2) = v13;
  *(v17 + 24) = v33;
  *(v17 + 5) = v14;
  *(v17 + 24) = v15;
  *(v17 + 7) = v16;
  if (a1)
  {
    v18 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
  }

  else
  {
    v18 = [objc_allocWithZone(v10) init];
  }

  v19 = v18;
  v20 = v38;
  v21 = sub_274638EEC();
  sub_27441277C(v4, v20, &qword_280954730, &qword_27465FED0);
  v22 = (v20 + *(v36 + 36));
  *v22 = v21;
  v22[1] = v19;
  v23 = v39;
  if (a1)
  {
    v24 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorResults);
  }

  else
  {
    v24 = [objc_allocWithZone(type metadata accessor for WorkflowEditorResults(0)) init];
  }

  v25 = v24;
  type metadata accessor for WorkflowEditorResults(0);
  sub_274600BB0(&unk_28094C450);
  v26 = sub_274638EEC();
  sub_27441277C(v20, v23, &qword_280954738, &qword_27465FED8);
  v27 = (v23 + *(v37 + 36));
  *v27 = v26;
  v27[1] = v25;
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    v29 = WFUserInterfaceFromViewController();
  }

  else
  {
    v29 = 0;
  }

  v30 = v40;
  sub_27441277C(v23, v40, &qword_280954740, &qword_27465FEE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809546E8, &qword_27465FE20);
  v32 = (v30 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = v29;
  return result;
}

uint64_t sub_2745F4AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954900, &unk_274660050);
  MEMORY[0x28223BE20](v34);
  v4 = &v33 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809548F0, &qword_274660048);
  MEMORY[0x28223BE20](v36);
  v6 = &v33 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809548E0, &qword_274660040);
  MEMORY[0x28223BE20](v37);
  v38 = v6;
  v39 = &v33 - v7;
  if (a1)
  {
    v8 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_runner);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  v10 = type metadata accessor for WorkflowEditorOptions(0);
  sub_274600BB0(&qword_28094A730);
  v11 = sub_27463979C();
  v13 = v12;
  v41 = 0;
  v42 = 0;
  v44 = 0;
  v43 = 0;
  sub_27463ACDC();
  v33 = v45;
  v14 = v46;
  v15 = v47;
  v16 = v48;
  sub_274412C20(v35, v4, &qword_280954840, &qword_27465FFB8);
  v17 = &v4[*(v34 + 36)];
  *v17 = v8;
  *(v17 + 1) = v11;
  *(v17 + 2) = v13;
  *(v17 + 24) = v33;
  *(v17 + 5) = v14;
  *(v17 + 24) = v15;
  *(v17 + 7) = v16;
  if (a1)
  {
    v18 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
  }

  else
  {
    v18 = [objc_allocWithZone(v10) init];
  }

  v19 = v18;
  v20 = v38;
  v21 = sub_274638EEC();
  sub_27441277C(v4, v20, &qword_280954900, &unk_274660050);
  v22 = (v20 + *(v36 + 36));
  *v22 = v21;
  v22[1] = v19;
  v23 = v39;
  if (a1)
  {
    v24 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorResults);
  }

  else
  {
    v24 = [objc_allocWithZone(type metadata accessor for WorkflowEditorResults(0)) init];
  }

  v25 = v24;
  type metadata accessor for WorkflowEditorResults(0);
  sub_274600BB0(&unk_28094C450);
  v26 = sub_274638EEC();
  sub_27441277C(v20, v23, &qword_2809548F0, &qword_274660048);
  v27 = (v23 + *(v37 + 36));
  *v27 = v26;
  v27[1] = v25;
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    v29 = WFUserInterfaceFromViewController();
  }

  else
  {
    v29 = 0;
  }

  v30 = v40;
  sub_27441277C(v23, v40, &qword_2809548E0, &qword_274660040);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954848, &qword_27465FFC0);
  v32 = (v30 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = v29;
  return result;
}

void *sub_2745F4EBC@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (a1)
  {
    v27 = *&a1[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_runner];
    v5 = v27;
  }

  else
  {
    v27 = 0;
  }

  v6 = type metadata accessor for WorkflowEditorOptions(0);
  sub_274600BB0(&qword_28094A730);
  v7 = sub_27463979C();
  v24 = v8;
  v25 = v7;
  memset(v34, 0, 26);
  sub_27463ACDC();
  v9 = v35[0];
  v10 = v35[1];
  v11 = v35[2];
  v12 = v35[3];
  v23 = v35[4];
  memcpy(__dst, v3, 0x59uLL);
  if (a1)
  {
    v13 = *&a1[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions];
    sub_274412C20(v3, v35, &qword_28094C8F8, &qword_27464E500);
    v14 = v13;
  }

  else
  {
    v15 = objc_allocWithZone(v6);
    sub_274412C20(v3, v35, &qword_28094C8F8, &qword_27464E500);
    v14 = [v15 init];
  }

  v26 = v14;
  memcpy(__src, __dst, 0x60uLL);
  __src[12] = v27;
  __src[13] = v25;
  __src[14] = v24;
  __src[15] = v9;
  __src[16] = v10;
  __src[17] = v11;
  LOWORD(__src[18]) = v12;
  *(&__src[18] + 2) = v52;
  HIWORD(__src[18]) = v53;
  __src[19] = v23;
  v22 = sub_274638EEC();
  memcpy(v55, __src, sizeof(v55));
  memcpy(v41, __dst, sizeof(v41));
  v42 = v27;
  v43 = v25;
  v44 = v24;
  v45 = v9;
  v46 = v10;
  v47 = v11;
  v48 = v12;
  v49 = v52;
  v50 = v53;
  v51 = v23;
  sub_274412C20(__src, v35, &qword_280954888, &qword_274660028);
  sub_27440CB1C(v41, &qword_280954888, &qword_274660028);
  v16 = a1;
  if (a1)
  {
    v17 = *&a1[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorResults];
  }

  else
  {
    v17 = [objc_allocWithZone(type metadata accessor for WorkflowEditorResults(0)) init];
  }

  v18 = v17;
  memcpy(v36, v55, 0xA0uLL);
  v36[20] = v22;
  v36[21] = v26;
  type metadata accessor for WorkflowEditorResults(0);
  sub_274600BB0(&unk_28094C450);
  v19 = sub_274638EEC();
  memcpy(v56, v36, sizeof(v56));
  memcpy(v37, v55, sizeof(v37));
  v38 = v22;
  v39 = v26;
  sub_274412C20(v36, v35, &qword_280954878, &qword_274660020);
  sub_27440CB1C(v37, &qword_280954878, &qword_274660020);
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    v16 = WFUserInterfaceFromViewController();
  }

  memcpy(v30, v56, 0xB0uLL);
  v30[22] = v19;
  v30[23] = v18;
  memcpy(v57, v30, sizeof(v57));
  memcpy(v31, v56, sizeof(v31));
  v32 = v19;
  v33 = v18;
  sub_274412C20(v30, v35, &qword_280954868, &qword_274660018);
  sub_27440CB1C(v31, &qword_280954868, &qword_274660018);
  memcpy(v34, v57, 0xC0uLL);
  v34[24] = KeyPath;
  v34[25] = v16;
  memcpy(v35, v57, 0xC0uLL);
  v35[24] = KeyPath;
  v35[25] = v16;
  sub_274412C20(v34, v29, &qword_280954850, &qword_274660010);
  sub_27440CB1C(v35, &qword_280954850, &qword_274660010);
  return memcpy(a2, v34, 0xD0uLL);
}

void sub_2745F5348(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(*(*(a1 + OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_item) + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_visibleParameters);
  __src[0] = MEMORY[0x277D84F90];
  v6 = sub_274453594();

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x277C58B20](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v10 = [v8 importQuestionBehavior];
    v11 = sub_27463B6AC();
    v13 = v12;

    if (v11 == sub_27463B6AC() && v13 == v14)
    {
    }

    else
    {
      v16 = sub_27463C6BC();

      if (v16)
      {
      }

      else
      {
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
      }
    }
  }

  v17 = __src[0];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a3;
  v19[4] = a4;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274600BB0(&qword_28094A730);

  v20 = sub_27463979C();
  v22 = v21;
  v23 = sub_27463A33C();
  sub_2746390AC();
  v35 = 0;
  v36[0] = v17;
  v36[1] = a2;
  v36[2] = sub_274601548;
  v36[3] = v19;
  v36[4] = v20;
  v36[5] = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = 0;
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = Strong;
  if (Strong)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Strong = v29;
  }

  sub_2745F4EBC(Strong, __src);

  sub_27440CB1C(v36, &qword_28094C8F8, &qword_27464E500);
  memcpy(a5, __src, 0xD0uLL);
}

void sub_2745F56BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(*(*(Strong + OBJC_IVAR____TtC14WorkflowEditor30ActionCellAuxiliaryContentView_item) + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    a3();
  }
}

uint64_t sub_2745F5760()
{
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  v2 = sub_2745F63C0(Width);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_274601594;
  *(v5 + 24) = v4;
  v10[4] = sub_274601878;
  v10[5] = v5;
  OUTLINED_FUNCTION_1_28();
  v10[1] = 1107296256;
  v10[2] = sub_2745F36FC;
  v10[3] = &block_descriptor_93;
  v6 = _Block_copy(v10);
  v7 = v0;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2745F58C4(void *a1, uint64_t a2)
{
  v4 = [a1 subviews];
  sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
  v5 = sub_27463B81C();

  result = sub_274453594();
  if (!result)
  {
LABEL_12:

    v18.receiver = a1;
    v18.super_class = type metadata accessor for ActionCellAuxiliaryContentView();
    return objc_msgSendSuper2(&v18, sel_layoutSubviews);
  }

  v7 = result;
  if (result >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x277C58B20](i, v5);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      v11 = 0.0;
      if (*(a2 + 16))
      {
        sub_274534EF0();
        v13 = 0.0;
        v14 = 0.0;
        v15 = 0.0;
        if (v16)
        {
          v17 = (*(a2 + 56) + 32 * v12);
          v11 = *v17;
          v13 = v17[1];
          v14 = v17[2];
          v15 = v17[3];
        }
      }

      else
      {
        v13 = 0.0;
        v14 = 0.0;
        v15 = 0.0;
      }

      [v10 setFrame_];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745F5A6C(double a1)
{
  v1 = sub_2745F63C0(a1);
  sub_2744F536C(v1);
  v3 = v2;

  sub_2745F36B8(v3);
}

uint64_t sub_2745F5B40@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809547C0, &qword_27465FF78);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v81 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809547C8, &qword_27465FF80);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_40_1();
  v84 = v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809547D0, &qword_27465FF88);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_40_1();
  v87 = v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809547D8, &unk_27465FF90);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = sub_27463AF6C();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v29 = &v81 - v28;
  if (!a2)
  {
    v45 = [a1 domain];
    v46 = sub_27463B6AC();
    v48 = v47;

    if (v46 == sub_27463B6AC() && v48 == v49)
    {
    }

    else
    {
      v51 = sub_27463C6BC();

      if ((v51 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([a1 code] == 12)
    {
      KeyPath = swift_getKeyPath();
      v61 = a1;
      v62 = sub_27463A38C();
      sub_2746390AC();
      LOBYTE(__dst[0]) = 0;
      LOBYTE(v92[0]) = 0;
      *v93 = v61;
      *&v93[8] = KeyPath;
      v93[16] = 0;
      v93[24] = v62;
      *&v93[32] = v63;
      *&v93[40] = v64;
      *&v93[48] = v65;
      *&v93[56] = v66;
      v93[64] = 0;
      v93[97] = 0;
LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954810, &qword_27464E508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C960, &qword_27464E518);
      sub_274482C24();
      sub_274482D88();
      OUTLINED_FUNCTION_32_13();
      sub_274639DDC();
      memcpy(v84, __dst, 0x62uLL);
      swift_storeEnumTagMultiPayload();
      sub_274412C20(__dst, v93, &unk_280954800, &qword_27465FFA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954800, &qword_27465FFA0);
      OUTLINED_FUNCTION_20_5();
      sub_2746016D8(v75);
      OUTLINED_FUNCTION_6_28();
      OUTLINED_FUNCTION_32_13();
      sub_274600EA4(v76);
      v77 = v87;
      sub_274639DDC();
      sub_274412C20(v77, v12, &qword_2809547D0, &qword_27465FF88);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C960, &qword_27464E518);
      sub_274600DC0();
      sub_274482D88();
      sub_274639DDC();
      OUTLINED_FUNCTION_32_13();
      sub_27440CB1C(v78, v79, v80);
      return sub_27440CB1C(v77, &qword_2809547D0, &qword_27465FF88);
    }

LABEL_14:
    v67 = sub_27463A31C();
    v68 = sub_2746390AC();
    v69 = OUTLINED_FUNCTION_16_23(v68);
    sub_2746390AC();
    LOBYTE(__dst[0]) = 0;
    LOBYTE(v92[0]) = 1;
    *v93 = a1;
    v93[8] = v67;
    *&v93[16] = v3;
    *&v93[24] = v4;
    *&v93[32] = v5;
    *&v93[40] = v6;
    v93[48] = 0;
    v93[56] = v69;
    *&v93[64] = v70;
    *&v93[72] = v71;
    *&v93[80] = v72;
    *&v93[88] = v73;
    *&v93[96] = 256;
    v74 = a1;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    sub_27463AF5C();
    v30 = sub_27463A31C();
    v31 = sub_2746390AC();
    v32 = OUTLINED_FUNCTION_16_23(v31);
    v83 = a3;
    v33 = v32;
    sub_2746390AC();
    LOBYTE(__dst[0]) = 0;
    v92[0] = a1;
    LOBYTE(v92[1]) = v30;
    v92[2] = v3;
    v92[3] = v4;
    v92[4] = v5;
    v92[5] = v6;
    LOBYTE(v92[6]) = 0;
    LOBYTE(v92[7]) = v33;
    v92[8] = v34;
    v92[9] = v35;
    v92[10] = v36;
    v92[11] = v37;
    LOBYTE(v92[12]) = 0;
    v38 = *(v22 + 16);
    v38(v25, v29, v20);
    memcpy(v91, v92, sizeof(v91));
    v38(v19, v25, v20);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954830, &unk_27465FFA8) + 48);
    memcpy(v93, v91, 0x61uLL);
    memcpy(&v19[v39], v91, 0x61uLL);
    memcpy(__dst, v91, 0x61uLL);
    sub_274600F24(a1, 1u);
    sub_274412C20(v92, v90, &unk_28094C9B0, &qword_27464E550);
    sub_274412C20(v93, v90, &unk_28094C9B0, &qword_27464E550);
    sub_27440CB1C(__dst, &unk_28094C9B0, &qword_27464E550);
    v40 = *(v22 + 8);
    v81 = v22 + 8;
    v82 = v40;
    v40(v25, v20);
    sub_274412C20(v19, v84, &unk_2809547D8, &unk_27465FF90);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954800, &qword_27465FFA0);
    OUTLINED_FUNCTION_20_5();
    sub_2746016D8(v41);
    OUTLINED_FUNCTION_6_28();
    sub_274600EA4(v42);
    v43 = v87;
    sub_274639DDC();
    sub_274412C20(v43, v12, &qword_2809547D0, &qword_27465FF88);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C960, &qword_27464E518);
    sub_274600DC0();
    sub_274482D88();
    sub_274639DDC();
    sub_27440CB1C(v92, &unk_28094C9B0, &qword_27464E550);
    sub_27440CB1C(v43, &qword_2809547D0, &qword_27465FF88);
    sub_27440CB1C(v19, &unk_2809547D8, &unk_27465FF90);
    return v82(v29, v20);
  }

  else
  {
    v52 = sub_27463A31C();
    v53 = sub_2746390AC();
    v54 = OUTLINED_FUNCTION_16_23(v53);
    sub_2746390AC();
    LOBYTE(__dst[0]) = 0;
    v93[0] = 0;
    *v12 = a1;
    v12[8] = v52;
    *(v12 + 2) = v3;
    *(v12 + 3) = v4;
    *(v12 + 4) = v5;
    *(v12 + 5) = v6;
    v12[48] = 0;
    v12[56] = v54;
    *(v12 + 8) = v55;
    *(v12 + 9) = v56;
    *(v12 + 10) = v57;
    *(v12 + 11) = v58;
    v12[96] = 0;
    swift_storeEnumTagMultiPayload();
    v59 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C960, &qword_27464E518);
    sub_274600DC0();
    sub_274482D88();
    return sub_274639DDC();
  }
}

uint64_t sub_2745F63C0(double a1)
{
  v2 = v1;
  sub_274538EB8(0, v36);
  v4 = sub_2745F37E8();
  sub_27463BF9C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_36(isUniquelyReferenced_nonNull_native, v6, v7, v8, v9, v10, v11, v12, v36[0], v36[1]);

  v13 = sub_2745F38D4();
  sub_27463BF9C();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_36(v14, v15, v16, v17, v18, v19, v20, v21, v36[0], v36[1]);

  v22 = sub_2745F37F4();
  sub_27463BF9C();
  v23 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_36(v23, v24, v25, v26, v27, v28, v29, v30, v36[0], v36[1]);

  v31 = __dst[0];
  memcpy(__dst, v36, 0x48uLL);
  __dst[9] = v31;
  v32 = [v2 subviews];
  sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
  v33 = sub_27463B81C();

  v34 = sub_274538F90(v33, a1);

  sub_27453B758(__dst);
  return v34;
}

uint64_t sub_2745F6558()
{
  swift_unknownObjectRelease();
}

uint64_t sub_2745F6680(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_item);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_2745F740C();

  return swift_unknownObjectRelease();
}

uint64_t sub_2745F66E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954748, &qword_27465FF18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_additionalSummaries;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v10(v8, v1 + v9, v2);
  v11 = sub_27463831C();
  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_additionalParameters;
  swift_beginAccess();
  v10(v5, v1 + v13, v2);
  v14 = sub_27463831C();
  v12(v5, v2);
  v17 = v11;
  sub_27445C574(v14);
  return v17;
}

id sub_2745F6898(uint64_t a1, uint64_t a2)
{
  sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
  sub_27463832C();
  sub_27463832C();
  v5 = &v2[OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_item];
  *v5 = a1;
  *(v5 + 1) = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AdditionalParameterListView(0);
  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

void sub_2745F698C()
{
  sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
  sub_27463832C();
  sub_27463832C();
  sub_27463C56C();
  __break(1u);
}

uint64_t sub_2745F6A90()
{
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  v2 = sub_2745F6E80(Width);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_274600DB8;
  *(v5 + 24) = v4;
  v10[4] = sub_2744830C4;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2745F36FC;
  v10[3] = &block_descriptor_71;
  v6 = _Block_copy(v10);
  v7 = v0;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2745F6C0C(void *a1, uint64_t a2)
{
  v4 = sub_2745F66E0();
  result = sub_274453594();
  if (!result)
  {
LABEL_12:

    v17.receiver = a1;
    v17.super_class = type metadata accessor for AdditionalParameterListView(0);
    return objc_msgSendSuper2(&v17, sel_layoutSubviews);
  }

  v6 = result;
  if (result >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x277C58B20](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      if (*(a2 + 16) && (sub_274534EF0(), (v11 & 1) != 0))
      {
        v12 = (*(a2 + 56) + 32 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[3];
      }

      else
      {
        [v9 frame];
      }

      [v9 setFrame_];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

double sub_2745F6D70(double a1)
{
  sub_2745F66E0();
  v2 = sub_274453594();

  v3 = 0.0;
  if (v2)
  {
    v4 = sub_2745F6E80(a1);
    sub_2744F536C(v4);
    v6 = v5;

    v7 = COERCE_DOUBLE(sub_2745F36B8(v6));
    v9 = v8;

    if ((v9 & 1) == 0 && v7 != 0.0)
    {
      return a1;
    }
  }

  return v3;
}

uint64_t sub_2745F6E80(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954748, &qword_27465FF18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  sub_274538EB8(0, v58);
  v55 = v58[0];
  v56 = v58[1];
  v57 = v58[2];
  v54 = v60;
  v7 = v59;
  v8 = v61;
  v9 = OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_additionalSummaries;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v47 = v1;
  v10(v6, v1 + v9, v3);
  v11 = sub_27463831C();
  (*(v4 + 8))(v6, v3);
  v53 = sub_274453594();
  if (v53)
  {
    v12 = 0;
    v52 = v11 & 0xC000000000000001;
    *&v50 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v8;
    while (1)
    {
      if (v52)
      {
        v13 = MEMORY[0x277C58B20](v12, v11);
      }

      else
      {
        if (v12 >= *(v50 + 16))
        {
          goto LABEL_40;
        }

        v13 = *(v11 + 8 * v12 + 32);
      }

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v15 = v13;
      v16 = sub_27463BF9C();
      swift_isUniquelyReferenced_nonNull_native();
      *&v62[0] = v7;
      v17 = sub_274534DD8(v16);
      if (__OFADD__(v7[2], (v18 & 1) == 0))
      {
        goto LABEL_35;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809547A8, &qword_27465FF60);
      if (sub_27463C4CC())
      {
        v21 = sub_274534DD8(v16);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_42;
        }

        v19 = v21;
      }

      v7 = *&v62[0];
      if (v20)
      {
        *(*(*&v62[0] + 56) + 8 * v19) = 0x4018000000000000;
      }

      else
      {
        *(*&v62[0] + 8 * (v19 >> 6) + 64) |= 1 << v19;
        *(v7[6] + 8 * v19) = v16;
        *(v7[7] + 8 * v19) = 0x4018000000000000;

        v23 = v7[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_38;
        }

        v7[2] = v25;
      }

      ++v12;
      v8 = v51;
      if (v14 == v53)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_17:

    v26 = sub_2745F66E0();
    v53 = sub_274453594();
    if (!v53)
    {
LABEL_33:

      v62[0] = v55;
      v62[1] = v56;
      v62[2] = v57;
      v64 = v54;
      v63 = v7;
      v65 = v8;
      v43 = sub_2745F66E0();
      v44 = sub_274538F90(v43, a1);

      sub_27453B758(v62);
      return v44;
    }

    v27 = 0;
    v52 = v26 & 0xC000000000000001;
    v48 = v26 & 0xFFFFFFFFFFFFFF8;
    v50 = xmmword_27465FC20;
    v49 = v7;
    while (1)
    {
      if (v52)
      {
        v28 = MEMORY[0x277C58B20](v27, v26);
      }

      else
      {
        if (v27 >= *(v48 + 16))
        {
          goto LABEL_41;
        }

        v28 = *(v26 + 8 * v27 + 32);
      }

      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v30 = v26;
      v31 = v28;
      v32 = sub_27463BF9C();
      swift_isUniquelyReferenced_nonNull_native();
      *&v62[0] = v8;
      v33 = sub_274534DD8(v32);
      if (__OFADD__(v8[2], (v34 & 1) == 0))
      {
        goto LABEL_37;
      }

      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809547B0, &unk_27465FF68);
      if (sub_27463C4CC())
      {
        v37 = sub_274534DD8(v32);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_42;
        }

        v35 = v37;
      }

      v8 = *&v62[0];
      if (v36)
      {
        v39 = (*(*&v62[0] + 56) + 16 * v35);
        v40 = *v39;
        *v39 = v50;
        sub_27453B740(v40);
      }

      else
      {
        *(*&v62[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
        *(v8[6] + 8 * v35) = v32;
        *(v8[7] + 16 * v35) = v50;

        v41 = v8[2];
        v24 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v24)
        {
          goto LABEL_39;
        }

        v8[2] = v42;
      }

      ++v27;
      v26 = v30;
      v7 = v49;
      if (v29 == v53)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
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
  result = sub_27463C71C();
  __break(1u);
  return result;
}

void sub_2745F740C()
{
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954748, &qword_27465FF18);
  v1 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v152 = &v150 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v153 = &v150 - v4;
  MEMORY[0x28223BE20](v5);
  v159 = &v150 - v6;
  MEMORY[0x28223BE20](v7);
  v160 = &v150 - v8;
  MEMORY[0x28223BE20](v9);
  v158 = &v150 - v10;
  MEMORY[0x28223BE20](v11);
  v156 = &v150 - v12;
  MEMORY[0x28223BE20](v13);
  v151 = &v150 - v14;
  MEMORY[0x28223BE20](v15);
  v168 = &v150 - v16;
  MEMORY[0x28223BE20](v17);
  v164 = &v150 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v150 - v20;
  v175 = &v0[OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_item];
  v22 = *(*&v0[OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_item] + 32);
  v23 = sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
  v24 = v22;
  v165 = v21;
  v166 = MEMORY[0x277D84F90];
  v154 = v23;
  sub_27463832C();
  v25 = *&v24[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_additionalParameterSummaries];
  v26 = *(v25 + 16);
  v174 = v0;
  v155 = v1;
  v157 = v24;
  if (v26)
  {
    v27 = OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_additionalSummaries;
    v28 = v24;

    v163 = v27;
    swift_beginAccess();
    v161 = (v1 + 8);
    v162 = v1 + 16;
    v29 = sub_274482950();
    v150 = v25;
    v30 = (v25 + 72);
    v31 = v173;
    v167 = v29;
    while (1)
    {
      v32 = *(v30 - 2);
      v33 = *(v30 - 1);
      v34 = *v30;
      *v181 = *(v30 - 5);
      *&v181[8] = *(v30 - 2);
      *&v181[24] = v32;
      *&v182 = v33;
      *(&v182 + 1) = v34;
      v177 = *v181;
      v178 = *&v181[16];
      v179 = v182;
      v172 = v32;
      swift_bridgeObjectRetain_n();
      v170 = v33;
      swift_bridgeObjectRetain_n();
      v35 = v34;
      swift_bridgeObjectRetain_n();
      v36 = v35;
      sub_27463C31C();
      v37 = v164;
      (*v162)(v164, &v174[v163], v31);
      sub_27463837C();
      (*v161)(v37, v31);
      sub_274430664(v180);
      v38 = v177;
      v171 = v26;
      if (!v177)
      {
        goto LABEL_7;
      }

      type metadata accessor for ActionCellSummaryView();
      v39 = swift_dynamicCastClass();
      if (!v39)
      {
        break;
      }

      v40 = v39;
      v41 = v175;
LABEL_8:
      v177 = *v181;
      v178 = *&v181[16];
      v179 = v182;

      v169 = v36;

      sub_27463C31C();
      *&v177 = v40;
      v44 = v40;
      v31 = v173;
      sub_27463838C();
      v45 = *(v41 + 8);
      v46 = swift_unknownObjectRetain();
      sub_274459324(v46, v45, v181, 0, MEMORY[0x277D84F90], 0, 16.0);

      swift_unknownObjectRelease();
      v30 += 6;
      v26 = (v171 - 1);
      if (v171 == 1)
      {

        v47 = v157;
        goto LABEL_11;
      }
    }

LABEL_7:
    v41 = v175;
    v42 = *(v175 + 8);
    objc_allocWithZone(type metadata accessor for ActionCellSummaryView());
    v43 = swift_unknownObjectRetain();
    v40 = sub_274459028(v43, v42);
    goto LABEL_8;
  }

  v48 = v24;
  v47 = v24;
LABEL_11:
  v49 = MEMORY[0x277D84F90];
  sub_27463832C();
  v50 = *&v47[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters];

  *&v177 = v49;
  v51 = sub_274453594();
  v52 = 0;
  v172 = v50 & 0xC000000000000001;
  while (1)
  {
    if (v51 == v52)
    {

      v164 = sub_274453594();
      if (v164)
      {
        *&v177 = 0;
        *(&v177 + 1) = 0xE000000000000000;
        sub_27463C38C();
        MEMORY[0x277C57EA0](0xD000000000000012, 0x800000027468FF50);
        *&v180[0] = *(*(*v175 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        sub_27463C4BC();
        v64 = v177;

        sub_27463C31C();
        v65 = OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_additionalParameters;
        v66 = v174;
        swift_beginAccess();
        v67 = v155;
        v171 = *(v155 + 16);
        v172 = v65;
        v68 = v66 + v65;
        v69 = v151;
        v70 = v173;
        v169 = (v155 + 16);
        (v171)(v151, v68, v173);
        sub_27463837C();
        v170 = *(v67 + 8);
        v167 = v67 + 8;
        v170(v69, v70);
        sub_274430664(v180);
        v71 = v176;
        if (!v176)
        {
          sub_2745F87A8(v66, &v177);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C998, &qword_27465FF20);
          sub_274600BF4();
          *&v177 = sub_27463AE9C();
          v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809505F0, &unk_274657BF0));
          v71 = sub_27463959C();
        }

        v180[0] = v64;
        sub_27463C31C();
        *&v180[0] = v71;
        v161 = v71;
        v73 = v173;
        sub_27463838C();
        v74 = 0;
        v162 = v166 & 0xFFFFFFFFFFFFFF8;
        v163 = v166 & 0xC000000000000001;
        while (v164 != v74)
        {
          if (v163)
          {
            v75 = MEMORY[0x277C58B20](v74, v166);
          }

          else
          {
            if (v74 >= *(v162 + 16))
            {
              goto LABEL_76;
            }

            v75 = *(v166 + 8 * v74 + 32);
          }

          v76 = v75;
          if (__OFADD__(v74, 1))
          {
            goto LABEL_75;
          }

          if (v74)
          {
            *&v177 = 0;
            *(&v177 + 1) = 0xE000000000000000;
            *&v180[0] = v75;
            sub_27463C4BC();
            MEMORY[0x277C57EA0](0x746172617065732DLL, 0xEA0000000000726FLL);
            v77 = v177;
            v180[0] = v177;

            sub_27463C31C();
            v78 = v156;
            (v171)(v156, &v174[v172], v73);
            sub_27463837C();
            v170(v78, v73);
            sub_274430664(&v177);
            v79 = *&v180[0];
            if (!*&v180[0])
            {
              type metadata accessor for SeparatorView();
              v79 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            }

            v180[0] = v77;
            sub_27463C31C();
            *&v180[0] = v79;
            sub_27463838C();
          }

          *&v180[0] = v76;
          sub_27463C31C();
          v176 = v76;
          sub_27463C31C();
          v80 = v158;
          (v171)(v158, &v174[v172], v73);
          sub_27463837C();
          v170(v80, v73);
          sub_274430664(v180);
          v81 = v176;
          if (!v176)
          {
            v82 = *(v175 + 8);
            v83 = objc_allocWithZone(type metadata accessor for ParameterView());
            v84 = v76;
            v85 = swift_unknownObjectRetain();
            v86 = v84;
            v73 = v173;
            v81 = sub_2745F8E98(v85, v82, v86);
          }

          *&v180[0] = v81;
          sub_27463838C();

          ++v74;
        }
      }

      sub_2745F88F8(v168, v160);
      v87 = OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_additionalSummaries;
      v88 = v174;
      swift_beginAccess();
      v89 = v155;
      v90 = v155 + 16;
      v91 = *(v155 + 16);
      v164 = v87;
      v92 = v88 + v87;
      v93 = v153;
      v94 = v173;
      (v91)(v153, v92, v173);
      v95 = OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_additionalParameters;
      swift_beginAccess();
      v169 = v95;
      v96 = &v95[v88];
      v97 = v152;
      v166 = v91;
      v167 = v90;
      (v91)(v152, v96, v94);
      sub_2745F88F8(v97, v159);
      v99 = v89 + 8;
      v98 = *(v89 + 8);
      v98(v97, v94);
      v170 = v98;
      v98(v93, v94);
      v100 = sub_2746382FC();
      v101 = sub_2745E1B10(v100);
      v102 = sub_2746382FC();
      v103 = sub_2745E1B10(v102);
      v104 = sub_2745F365C(v103, v101, sub_2745FCEA8, sub_2745FD764);

      v105 = sub_2746382FC();
      v106 = sub_2745E1B10(v105);
      v107 = sub_2746382FC();
      v108 = sub_2745E1B10(v107);
      v109 = sub_2745F365C(v108, v106, sub_2745FCEA8, sub_2745FD764);

      v110 = *(v104 + 16);

      if (v110)
      {
      }

      else
      {
        v111 = *(v109 + 16);

        v112 = v173;
        if (!v111)
        {
          goto LABEL_72;
        }
      }

      v113 = [v88 subviews];
      v114 = sub_27463B81C();

      v175 = v114;
      v115 = sub_274453594();
      v163 = v99;
      if (v115)
      {
        v116 = v115;
        if (v115 < 1)
        {
          goto LABEL_77;
        }

        v117 = 0;
        v118 = 0;
        v119 = v175 & 0xC000000000000001;
        v171 = &v178;
        do
        {
          if (v119)
          {
            v120 = MEMORY[0x277C58B20](v117, v175);
          }

          else
          {
            v120 = *(v175 + 8 * v117 + 32);
          }

          v121 = v120;
          v122 = sub_27463831C();
          *&v177 = v121;
          MEMORY[0x28223BE20](v122);
          *(&v150 - 2) = &v177;
          v123 = sub_27446ECA4(sub_274600D5C, (&v150 - 4), v122);

          if (v123)
          {
            [v121 removeFromSuperview];
          }

          else
          {
            v124 = swift_allocObject();
            *(v124 + 16) = v121;
            v125 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v126 = v121;
            v172 = v118;
            v127 = v126;
            v128 = sub_2745FB6C4(sub_274600D7C, v124, 0.15, 1.0);
            v129 = swift_allocObject();
            *(v129 + 16) = v127;
            *&v179 = sub_274600D90;
            *(&v179 + 1) = v129;
            *&v177 = MEMORY[0x277D85DD0];
            *(&v177 + 1) = 1107296256;
            *&v178 = sub_2745F3724;
            *(&v178 + 1) = &block_descriptor_44;
            v130 = _Block_copy(&v177);
            v131 = v127;
            v118 = v172;

            [v128 addCompletion_];
            _Block_release(v130);
            [v128 startAnimation];
          }

          ++v117;
        }

        while (v116 != v117);
      }

      v132 = sub_27463831C();
      v133 = sub_274453594();
      v134 = v174;
      if (v133)
      {
        v135 = v133;
        if (v133 < 1)
        {
          goto LABEL_78;
        }

        for (i = 0; i != v135; ++i)
        {
          if ((v132 & 0xC000000000000001) != 0)
          {
            v137 = MEMORY[0x277C58B20](i, v132);
          }

          else
          {
            v137 = *(v132 + 8 * i + 32);
          }

          v138 = v137;
          [v134 addSubview_];
          v139 = sub_27463831C();
          *&v177 = v138;
          MEMORY[0x28223BE20](v139);
          *(&v150 - 2) = &v177;
          v140 = sub_27446ECA4(sub_27460185C, (&v150 - 4), v139);

          if ((v140 & 1) == 0)
          {
            [v138 setAlpha_];
            v141 = swift_allocObject();
            *(v141 + 16) = v138;
            objc_allocWithZone(MEMORY[0x277D75D40]);
            v142 = v138;
            v143 = sub_2745FB6C4(sub_2744D07E8, v141, 0.4, 1.0);
            [v143 startAnimationAfterDelay_];
          }

          v134 = v174;
        }
      }

      v144 = v153;
      v145 = v166;
      v112 = v173;
      (v166)(v153, v165, v173);
      v146 = v164;
      swift_beginAccess();
      v147 = *(v155 + 40);
      v147(&v146[v134], v144, v112);
      swift_endAccess();
      v145(v144, v168, v112);
      v148 = v169;
      swift_beginAccess();
      v147(&v148[v134], v144, v112);
      swift_endAccess();
      [v134 setNeedsLayout];
LABEL_72:

      v149 = v170;
      v170(v159, v112);
      v149(v160, v112);
      v149(v168, v112);
      v149(v165, v112);
      return;
    }

    if (v172)
    {
      v53 = MEMORY[0x277C58B20](v52, v50);
    }

    else
    {
      if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v53 = *(v50 + 8 * v52 + 32);
    }

    v54 = v53;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    swift_unknownObjectRetain();
    v55 = sub_2745F86F0();
    v56 = swift_unknownObjectRelease();
    if (v55)
    {
      goto LABEL_27;
    }

    swift_unknownObjectRetain();
    v57 = sub_2745F8728();
    v56 = swift_unknownObjectRelease();
    if (v57)
    {
      goto LABEL_27;
    }

    if (sub_2744497AC() != 3)
    {
      goto LABEL_25;
    }

    v58 = [v54 key];
    v59 = sub_27463B6AC();
    v61 = v60;

    if (v59 == 0x6F72504D4C4C4657 && v61 == 0xEB0000000074706DLL)
    {

LABEL_27:
      MEMORY[0x277C57F30](v56);
      if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      v166 = v177;
      ++v52;
    }

    else
    {
      v63 = sub_27463C6BC();

      if (v63)
      {
        goto LABEL_27;
      }

LABEL_25:

      ++v52;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_2745F86F0()
{
  if (sub_2745FAE88())
  {
    return *(*(v0 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isExpanded);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2745F8728()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters);
  if (v2 >> 62)
  {
    result = sub_27463C27C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  return [*(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) parameterCollapsingBehavior] == 2;
}

double sub_2745F87A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_item) + 32);
  v4 = sub_2744497AC();

  if (v4 == 2)
  {
    if (qword_280949280 != -1)
    {
      swift_once();
    }

    v5 = qword_280965DC8;
    v6 = sub_27463ABDC();
  }

  else
  {
    v7 = [objc_opt_self() tertiarySystemFillColor];
    v6 = sub_27463AB0C();
  }

  v8 = v6;
  sub_27463B0CC();
  sub_2746392FC();
  *&v10[6] = v11;
  *&v10[22] = v12;
  *&v10[38] = v13;
  *(a2 + 10) = *v10;
  *a2 = v8;
  *(a2 + 8) = 256;
  *(a2 + 26) = *&v10[16];
  *(a2 + 42) = *&v10[32];
  *(a2 + 56) = *(&v13 + 1);
  result = 0.0;
  *(a2 + 64) = xmmword_27464D550;
  return result;
}

uint64_t sub_2745F88F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954790, &qword_27465FF50);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954748, &qword_27465FF18);
  v11 = *(*(v10 - 8) + 16);
  v11(a2, v3, v10);
  v11(v9, a1, v10);
  v12 = *(v7 + 44);
  sub_2746016D8(&unk_280954798);
  sub_27463BACC();
  while (1)
  {
    sub_27463BB0C();
    if (*&v9[v12] == v16[0])
    {
      break;
    }

    v13 = sub_27463BB3C();
    sub_274412C20(v14, &v17, &qword_2809547A0, &qword_27465FF58);
    v13(v16, 0);
    sub_27463BB1C();
    v21 = v17;
    v22 = v18;
    if (!v19)
    {
      break;
    }

    v17 = v21;
    v18 = v22;
    v16[0] = v20;
    sub_27463838C();
  }

  return sub_27440CB1C(v9, &qword_280954790, &qword_27465FF50);
}

uint64_t sub_2745F8B90()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_additionalSummaries;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954748, &qword_27465FF18);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE527AdditionalParameterListView_additionalParameters;

  return v5(v3, v2);
}

uint64_t type metadata accessor for AdditionalParameterListView(uint64_t a1)
{
  result = qword_2809544F0;
  if (!qword_2809544F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2745F8D84(uint64_t a1)
{
  sub_2745F8E20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2745F8E20(uint64_t a1)
{
  if (!qword_280954500)
  {
    sub_274412734(255, &qword_28094A4D8, 0x277D75D18);
    v1 = sub_27463835C();
    if (!v2)
    {
      atomic_store(v1, &qword_280954500);
    }
  }
}

id sub_2745F8E98(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView____lazy_storage___parameterView] = 0;
  v5 = &v3[OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView_item];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView_parameter] = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for ParameterView();
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = sub_2745F9174();
  [v7 addSubview_];

  swift_unknownObjectRelease();
  return v7;
}

void sub_2745F8F74()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView____lazy_storage___parameterView) = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_2745F9014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = sub_2745F9174();
  [v0 bounds];
  [v1 setFrame_];
}

double sub_2745F90C8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_2745F9174();
  [v4 sizeThatFits_];

  return a3;
}

id sub_2745F9174()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView____lazy_storage___parameterView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView____lazy_storage___parameterView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView____lazy_storage___parameterView);
  }

  else
  {
    v4 = sub_2745F91D8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2745F91D8(uint64_t a1)
{
  v76 = type metadata accessor for ParameterRowView(0);
  MEMORY[0x28223BE20](v76);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809546E8, &qword_27465FE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v67 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809546F0, &qword_27465FE28);
  MEMORY[0x28223BE20](v77);
  v8 = &v67 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809546F8, &qword_27465FE30);
  MEMORY[0x28223BE20](v78);
  v10 = &v67 - v9;
  v79 = a1;
  v12 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView_item);
  v11 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView_item + 8);
  ObjectType = swift_getObjectType();
  v80 = *(v12 + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  v73 = ObjectType;
  v74 = v11;
  if (Strong)
  {
    v15 = Strong;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = *(AssociatedConformanceWitness + 32);
    v18 = v80;
    v19 = swift_checkMetadataState();
    v20 = v17(v19, AssociatedConformanceWitness);
  }

  else
  {
    v21 = objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0));
    v22 = v80;
    v20 = [v21 init];
  }

  v75 = v12;
  v23 = *(v79 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView_parameter);
  v24 = *(v12 + 32);
  v25 = sub_2744498C0(v23);

  v26 = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v23, v26, &protocol descriptor for ViewableParameter) && (v28 = v27, v69 = swift_getObjectType(), v71 = v20, v29 = *&v80[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action], v68 = *(v28 + 24), v70 = v23, v30 = v29, v72 = v8, v31 = v3, v32 = v6, v33 = v10, v34 = v30, v35 = v29, v20 = v71, v36 = v68(v25, v35, v71, v69, v28), v34, v10 = v33, v6 = v32, v3 = v31, v8 = v72, v70, v36))
  {
  }

  else
  {
    v37 = v80;
    v71 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
    v38 = *&v80[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action];
    swift_unknownObjectWeakInit();
    v70 = v37;
    v39 = v23;

    v40 = v38;
    v41 = v20;
    v3[56] = sub_2746390EC() & 1;
    *(v3 + 8) = v42;
    v3[72] = v43 & 1;
    v44 = v76;
    v45 = v76[13];
    *&v3[v45] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
    swift_storeEnumTagMultiPayload();
    v46 = &v3[v44[14]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    v72 = v39;
    *v3 = v39;
    *(v3 + 1) = v25;
    *(v3 + 8) = 0;
    *(v3 + 3) = 0;
    *(v3 + 16) = 1;
    swift_unknownObjectWeakAssign();

    v76 = v41;
    *(v3 + 6) = v41;
    v47 = swift_unknownObjectWeakLoadStrong();
    v48 = v47;
    if (v47)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v47 = v48;
    }

    sub_2745F4714(v47, v6);

    sub_2745FAE2C(v3);
    KeyPath = swift_getKeyPath();
    v50 = &v8[*(v77 + 36)];
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v50[16] = 0;
    *v50 = KeyPath;
    sub_27441277C(v6, v8, &qword_2809546E8, &qword_27465FE20);
    sub_27441277C(v8, v10, &qword_2809546F0, &qword_27465FE28);
    v51 = &v10[*(v78 + 36)];
    *v51 = 0xD00000000000001BLL;
    *(v51 + 1) = 0x8000000274688E00;
    v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954708, &qword_27465FEB8));
    v53 = v70;
    v54 = sub_2745FA42C(v53, v10);
    v55 = objc_opt_self();
    v36 = v54;
    v56 = [v55 clearColor];
    [v36 setBackgroundColor_];

    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    sub_27463C38C();

    strcpy(v81, "editor.action.");
    HIBYTE(v81[1]) = -18;
    v57 = *&v80[v71];

    v58 = [v57 identifier];
    v59 = sub_27463B6AC();
    v61 = v60;

    MEMORY[0x277C57EA0](v59, v61);

    MEMORY[0x277C57EA0](46, 0xE100000000000000);
    v62 = [v72 key];
    v63 = sub_27463B6AC();
    v65 = v64;

    MEMORY[0x277C57EA0](v63, v65);

    sub_274600B4C(v81[0], v81[1], v36);
  }

  return v36;
}

void sub_2745F9940()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_B3A2D298447CAF2463BB59A9BDEDDEE513ParameterView____lazy_storage___parameterView);
}

id sub_2745F9A2C(double a1, double a2, double a3, double a4)
{
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SeparatorView();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 separatorColor];
  [v11 setBackgroundColor_];

  return v11;
}

double sub_2745F9BAC(double a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];

  return a1;
}

id sub_2745F9C88(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_2745F9D78()
{
  KeyPath = swift_getKeyPath();
  sub_2745F9F84(KeyPath);

  return *(v0 + 16);
}

uint64_t sub_2745F9E14(double a1, double a2)
{
  v5 = *v2;
  v16 = *(v2 + 1);
  *v15 = a1;
  *&v15[1] = a2;
  v6 = v5;
  type metadata accessor for CGSize(0);
  v8 = v7;
  v9 = sub_274600BB0(&unk_2809546E0);
  result = sub_2745FA0F4(&v16, v15, v8, v9);
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v14 = *(v6 + 80);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[2] = v2;
    *&v13[3] = a1;
    *&v14 = a2;
    sub_2745FA020(v12, sub_2745FAE1C, v13, MEMORY[0x277D84F78] + 8);
  }

  else
  {
    *(v2 + 2) = a1;
    *(v2 + 3) = a2;
  }

  return result;
}

uint64_t sub_2745FA120()
{
  v1 = qword_2809545C8;
  v2 = sub_27463811C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2745FA180()
{
  v0 = sub_2745FA120();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2745FA1D4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_27463810C();
  return v0;
}

uint64_t sub_2745FA200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FrameLayoutHostingView.BoundsBindingView.Cache(255, *(a1 + 16), *(a1 + 24), a4);
  sub_27463B02C();
  sub_27463B00C();
  return v5;
}

uint64_t sub_2745FA250(uint64_t a1)
{
  v2 = sub_27463965C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  sub_2745FA200(a1, v9, v10, v11);
  sub_2745F9D78();

  v12 = *(a1 + 24);
  sub_27463B0CC();
  sub_27463A8FC();
  v15[0] = v12;
  v15[1] = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  sub_2744E9688();
  v13 = *(v3 + 8);
  v13(v5, v2);
  sub_2744E9688();
  return (v13)(v8, v2);
}

uint64_t sub_2745FA42C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954710, &qword_27465FEC0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  v8 = qword_280954528;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954718, &qword_27465FEC8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_27463810C();
  *(v2 + v8) = v9;
  *(v2 + qword_280954530) = a1;
  sub_274412C20(a2, v7, &unk_2809546F8, &qword_27465FE30);
  sub_2746016D8(&unk_280954720);

  v10 = a1;
  sub_27463B01C();
  sub_2746016D8(&unk_280954728);
  v13[1] = sub_27463AE9C();
  v11 = sub_27463959C();

  sub_27440CB1C(a2, &unk_2809546F8, &qword_27465FE30);
  return v11;
}

void sub_2745FA63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_280954528;
  type metadata accessor for FrameLayoutHostingView.BoundsBindingView.Cache(0, *((*MEMORY[0x277D85000] & *v4) + qword_280954538), *((*MEMORY[0x277D85000] & *v4) + qword_280954538 + 8), a4);
  *(v4 + v5) = sub_2745F9D44();
  sub_27463C56C();
  __break(1u);
}

void sub_2745FA704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_280954528;
  type metadata accessor for FrameLayoutHostingView.BoundsBindingView.Cache(0, *((*MEMORY[0x277D85000] & *v4) + qword_280954538), *((*MEMORY[0x277D85000] & *v4) + qword_280954538 + 8), a4);
  *(v4 + v5) = sub_2745F9D44();
  sub_27463C56C();
  __break(1u);
}

id sub_2745FA7F4()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  sub_2745FA8C8();
  v3 = type metadata accessor for FrameLayoutHostingView(0, *(v1 + qword_280954538), *(v1 + qword_280954538 + 8), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_layoutSubviews);
}

void sub_2745FA880(void *a1)
{
  v1 = a1;
  sub_2745FA7F4();
}

id sub_2745FA8C8()
{
  [v0 bounds];
  [v0 sizeThatFits_];
  v4 = v3;
  sub_2745F9E14(v5, v3);
  result = [v0 bounds];
  if (v7 != v4)
  {

    sub_274638F0C();
  }

  return result;
}

double sub_2745FA988(double a1, double a2)
{
  v5 = *MEMORY[0x277D85000] & *v2;
  if (sub_2745F9D78() == 0.0 && v7 == 0.0 && a1 > 0.0)
  {
    sub_2745F9E14(a1, a2);
  }

  v8 = type metadata accessor for FrameLayoutHostingView(0, *(v5 + qword_280954538), *(v5 + qword_280954538 + 8), v6);
  v10.receiver = v2;
  v10.super_class = v8;
  objc_msgSendSuper2(&v10, sel_sizeThatFits_, a1, a2);
  return a1;
}

double sub_2745FAA6C(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_2745FA988(a2, a3);

  return v6;
}

void sub_2745FAAC0()
{

  v1 = *(v0 + qword_280954530);
}

id sub_2745FAB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FrameLayoutHostingView(0, *((*MEMORY[0x277D85000] & *v4) + qword_280954538), *((*MEMORY[0x277D85000] & *v4) + qword_280954538 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_2745FAB7C(uint64_t a1)
{

  v2 = *(a1 + qword_280954530);
}

uint64_t sub_2745FABE8(uint64_t a1)
{
  result = sub_27463811C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2745FAC9C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    type metadata accessor for FrameLayoutHostingView.BoundsBindingView.Cache(255, v2, *(a1 + 24), v3);
    v4 = sub_27463B02C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_2745FADC8()
{
  result = qword_2809546D8;
  if (!qword_2809546D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809546D8);
  }

  return result;
}

__n128 sub_2745FAE1C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_2745FAE2C(uint64_t a1)
{
  v2 = type metadata accessor for ParameterRowView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745FAE88()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters);
  if (v2 >> 62)
  {
    result = sub_27463C27C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  return [*(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) parameterCollapsingBehavior] != 2 && *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError) == 0;
}

uint64_t sub_2745FAF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809549A8, &qword_2746601E8);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809549B0, &qword_2746601F0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809549B8, &qword_2746601F8);
  MEMORY[0x28223BE20](v52);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809549C0, &qword_274660200);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = *v3;
  if (*v3)
  {
    v46 = &v44 - v19;
    v48 = v6;
    v49 = v18;
    v50 = v8;
    v21 = *(v3 + 8);
    if (v21)
    {
      v47 = v20;
      v22 = v21;
      v23 = sub_27443B4C4();

      v51 = a2;
      if (v23)
      {
        v24 = 1;
      }

      else
      {
        v27 = *(v3 + 40);
        v53 = *(v3 + 24);
        v54 = v27;
        v55 = *(v3 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809549E0, &qword_274660210);
        sub_27463ACEC();
        v24 = *(&v56 + 1) != 0;
      }

      KeyPath = swift_getKeyPath();
      v29 = swift_allocObject();
      *(v29 + 16) = v24;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809549C8, &qword_274660208);
      (*(*(v45 - 8) + 16))(v11, a1, v45);
      v30 = &v11[*(v9 + 36)];
      *v30 = KeyPath;
      v30[1] = sub_2744826D8;
      v30[2] = v29;
      v31 = swift_getKeyPath();
      v32 = *(v3 + 40);
      v53 = *(v3 + 24);
      v54 = v32;
      v55 = *(v3 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809549E0, &qword_274660210);
      sub_27463ACEC();
      v44 = v56;
      v33 = v57;
      v34 = v58;
      sub_27441277C(v11, v13, &qword_2809549B0, &qword_2746601F0);
      v35 = &v13[*(v52 + 36)];
      *v35 = v31;
      *(v35 + 8) = v44;
      *(v35 + 3) = v33;
      *(v35 + 16) = v34;
      v36 = v47;
      swift_beginAccess();
      v37 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEB0, &qword_2746565C0);
      sub_274638F7C();
      swift_endAccess();
      v38 = swift_allocObject();
      v39 = *(v3 + 16);
      *(v38 + 1) = *v3;
      *(v38 + 2) = v39;
      v40 = *(v3 + 48);
      *(v38 + 3) = *(v3 + 32);
      *(v38 + 4) = v40;
      sub_27441277C(v13, v16, &qword_2809549B8, &qword_2746601F8);
      v41 = &v16[*(v37 + 56)];
      *v41 = sub_27460171C;
      v41[1] = v38;
      v42 = v46;
      sub_27441277C(v16, v46, &qword_2809549C0, &qword_274660200);
      sub_274412C20(v42, v50, &qword_2809549C0, &qword_274660200);
      swift_storeEnumTagMultiPayload();
      sub_274601724(v3, &v53);
      sub_2746016D8(&unk_2809549D0);
      sub_2746016D8(&unk_2809549D8);
      sub_274639DDC();

      return sub_27440CB1C(v42, &qword_2809549C0, &qword_274660200);
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_274600BB0(&qword_28094A730);
      v43 = v20;
      result = sub_27463978C();
      __break(1u);
    }
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809549C8, &qword_274660208);
    (*(*(v25 - 8) + 16))(v8, a1, v25);
    swift_storeEnumTagMultiPayload();
    sub_2746016D8(&unk_2809549D0);
    sub_2746016D8(&unk_2809549D8);
    return sub_274639DDC();
  }

  return result;
}

uint64_t sub_2745FB588(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809549E0, &qword_274660210);
  return sub_27463ACFC();
}

double sub_2745FB654@<D0>(void *a1@<X8>)
{
  if (qword_280949338 != -1)
  {
    swift_once();
  }

  *a1 = qword_280965F78;

  return result;
}

id sub_2745FB6C4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    OUTLINED_FUNCTION_1_28();
    v10[1] = 1107296256;
    v10[2] = sub_27443E0E8;
    v10[3] = &block_descriptor_62_0;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithDuration:v7 dampingRatio:a3 animations:a4];
  _Block_release(v7);
  return v8;
}

uint64_t sub_2745FB7A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, double), double a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  result = a2(a1, isUniquelyReferenced_nonNull_native, a3);
  *v3 = v9;
  return result;
}

void sub_2745FB818()
{
  v2 = OUTLINED_FUNCTION_23_16();
  if (v3)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(OUTLINED_FUNCTION_40_9(v2), 1))
  {
    OUTLINED_FUNCTION_15_22();
    sub_2745FBB90(v1, v4, v5, v6, v7, sub_274430CA8);
    *v0 = v8;
LABEL_4:
    swift_isUniquelyReferenced_nonNull_native();
    v9 = OUTLINED_FUNCTION_19_18();
    sub_2745FC198(v9, v10, v11);
    OUTLINED_FUNCTION_24_13(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
    return;
  }

  __break(1u);
}

void sub_2745FB8A0()
{
  v2 = OUTLINED_FUNCTION_23_16();
  if (v3)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(OUTLINED_FUNCTION_40_9(v2), 1))
  {
    OUTLINED_FUNCTION_14_19();
    sub_2745FBB90(v1, v4, v5, v6, v7, sub_274430E90);
    *v0 = v8;
LABEL_4:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_19_18();
    sub_2745FC2C4();
    OUTLINED_FUNCTION_24_13(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    return;
  }

  __break(1u);
}

void sub_2745FB928(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094A560, &unk_2746493E0);
    v2 = sub_27463C60C();
    v15 = v2;
    sub_27463C51C();
    while (1)
    {
      v3 = sub_27463C55C();
      if (!v3)
      {

        return;
      }

      v13 = v3;
      sub_274412734(0, &qword_280950470, 0x277D7C0C0);
      swift_dynamicCast();
      sub_274412734(0, &qword_280950FD0, off_279ED92B8);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_274430AE8(v4 + 1, 1);
      }

      v2 = v15;
      v5 = sub_27463BF6C() & ~(-1 << *(v15 + 32));
      if (((-1 << v5) & ~*(v15 + 64 + 8 * (v5 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_35_4();
LABEL_15:
      OUTLINED_FUNCTION_21_19(v6);
      *(*(v15 + 48) + 8 * v12) = v14;
      *(*(v15 + 56) + 8 * v12) = v13;
      ++*(v15 + 16);
    }

    OUTLINED_FUNCTION_37_8();
    while (++v8 != v10 || (v9 & 1) == 0)
    {
      v11 = v8 == v10;
      if (v8 == v10)
      {
        v8 = 0;
      }

      v9 |= v11;
      if (*(v7 + 8 * v8) != -1)
      {
        OUTLINED_FUNCTION_33_3();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_2745FBB90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_27463C60C();
    v24 = v8;
    sub_27463C51C();
    while (1)
    {
      v9 = sub_27463C55C();
      if (!v9)
      {

        return;
      }

      v11 = v10;
      v23[0] = v9;
      type metadata accessor for WFEditorItem();
      swift_dynamicCast();
      v23[0] = v11;
      a5(0);
      swift_dynamicCast();
      v12 = *(v8 + 16);
      if (*(v8 + 24) <= v12)
      {
        a6(v12 + 1, 1);
      }

      v13 = v23[10];
      v8 = v24;
      v14 = v23[9];
      sub_27463C74C();
      (*(*v13 + 200))(v23);
      v15 = sub_27463C7AC() & ~(-1 << *(v8 + 32));
      if (((-1 << v15) & ~*(v8 + 64 + 8 * (v15 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_35_4();
LABEL_15:
      OUTLINED_FUNCTION_21_19(v16);
      *(*(v8 + 48) + 8 * v22) = v13;
      *(*(v8 + 56) + 8 * v22) = v14;
      ++*(v8 + 16);
    }

    OUTLINED_FUNCTION_37_8();
    while (++v18 != v20 || (v19 & 1) == 0)
    {
      v21 = v18 == v20;
      if (v18 == v20)
      {
        v18 = 0;
      }

      v19 |= v21;
      if (*(v17 + 8 * v18) != -1)
      {
        OUTLINED_FUNCTION_33_3();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_2745FBD98()
{
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_13_20(v5, v6, v7);
  OUTLINED_FUNCTION_0_49();
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_27463C71C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_33_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954998, &unk_2746600C8);
  if (OUTLINED_FUNCTION_9_24(v9))
  {
    v10 = OUTLINED_FUNCTION_31_13();
    sub_274534C48(v10, v0);
    OUTLINED_FUNCTION_2_37();
    if (!v12)
    {
      goto LABEL_14;
    }

    v4 = v11;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    OUTLINED_FUNCTION_56_0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_41_4();
    sub_2745FCB98(v14, v15, v0, v1, v16);
    OUTLINED_FUNCTION_56_0();
  }
}

void sub_2745FBE8C()
{
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_11_18();
  v5 = OUTLINED_FUNCTION_18_19(v3, v4);
  sub_274534D60(v5);
  OUTLINED_FUNCTION_0_49();
  if (v8)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for WFEditorItem();
    sub_27463C71C();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AC0, &unk_27465C520);
  if (OUTLINED_FUNCTION_10_32(v11))
  {
    sub_274534D60(v0);
    OUTLINED_FUNCTION_2_37();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  v14 = *v2;
  if (v10)
  {
    *(v14[7] + 8 * v9) = v1;
    OUTLINED_FUNCTION_56_0();
  }

  else
  {
    sub_2745FCB54(v9, v0, v1, v14);
    OUTLINED_FUNCTION_56_0();
  }
}

uint64_t sub_2745FBF78(void *a1, char a2, double a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_274534E1C();
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954928, &qword_274660060);
  result = sub_27463C4CC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_274534E1C();
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    type metadata accessor for WFEditorCell();
    result = sub_27463C71C();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a3;
  }

  else
  {
    sub_2745FCBBC(v9, a1, v13, a3);

    return a1;
  }

  return result;
}

uint64_t sub_2745FC098(uint64_t a1, char a2, double a3)
{
  sub_274534DD8(a1);
  OUTLINED_FUNCTION_0_49();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809547A8, &qword_27465FF60);
  result = sub_27463C4CC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_274534DD8(a1);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_27463C71C();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a3;
  }

  else
  {

    return sub_2745FCBBC(v9, a1, v13, a3);
  }

  return result;
}

void sub_2745FC198(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_274534D60(a2);
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952A98, &qword_27465C510);
  if ((sub_27463C4CC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_274534D60(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    type metadata accessor for WFEditorItem();
    sub_27463C71C();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = *(v14 + 56);
    v16 = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = a1;
  }

  else
  {
    sub_2745FCB30(v10, a2, a1, v14);
  }
}

void sub_2745FC2C4()
{
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_11_18();
  v5 = OUTLINED_FUNCTION_18_19(v3, v4);
  sub_274534D60(v5);
  OUTLINED_FUNCTION_0_49();
  if (v8)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for WFEditorItem();
    sub_27463C71C();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954930, &qword_274660068);
  if (OUTLINED_FUNCTION_10_32(v11))
  {
    sub_274534D60(v0);
    OUTLINED_FUNCTION_2_37();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  v14 = *v2;
  if (v10)
  {
    *(*(v14 + 56) + 8 * v9) = v1;
    OUTLINED_FUNCTION_56_0();
  }

  else
  {
    sub_2745FCB30(v9, v0, v1, v14);
    OUTLINED_FUNCTION_56_0();
  }
}

void sub_2745FC3B0()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_274534C48(v3, v1);
  OUTLINED_FUNCTION_0_49();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2C0, &qword_27464D1C8);
  if ((sub_27463C4CC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_274534C48(v4, v2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_27463C71C();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v0;
  if (v15)
  {
    v19 = v18[7] + 24 * v14;
    v20 = *v19;
    *v19 = v10;
    *(v19 + 8) = v8;
    *(v19 + 16) = v6;

    OUTLINED_FUNCTION_23();
  }

  else
  {
    sub_2745FCC00(v14, v4, v2, v10, v8, v6, v18);
    OUTLINED_FUNCTION_23();
  }
}

void sub_2745FC4FC()
{
  OUTLINED_FUNCTION_55_1();
  v4 = v3;
  v6 = v5;
  v8 = OUTLINED_FUNCTION_18_19(v5, v7);
  sub_274534C48(v8, v9);
  OUTLINED_FUNCTION_0_49();
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_27463C71C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_33_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809549A0, &qword_2746601E0);
  if (OUTLINED_FUNCTION_9_24(v11))
  {
    v12 = OUTLINED_FUNCTION_31_13();
    sub_274534C48(v12, v4);
    OUTLINED_FUNCTION_2_37();
    if (!v14)
    {
      goto LABEL_14;
    }

    v2 = v13;
  }

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v0 + 56) + 32 * v2));
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_56_0();

    sub_274464A50(v15, v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_41_4();
    sub_2745FCC54(v18, v19, v4, v6, v20);
    OUTLINED_FUNCTION_56_0();
  }
}

void sub_2745FC614()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_18_19(v7, v5);
  sub_274534D08(v9);
  OUTLINED_FUNCTION_0_49();
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_27463C71C();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  if (OUTLINED_FUNCTION_10_32(v15))
  {
    sub_274534D08(v6);
    OUTLINED_FUNCTION_2_37();
    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = v16;
  }

  v18 = *v0;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v13) = v8;
    OUTLINED_FUNCTION_23();
  }

  else
  {
    sub_2745FCB30(v13, v6, v8, v18);
    OUTLINED_FUNCTION_23();
  }
}

void sub_2745FC6F8(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  sub_274534EF0();
  OUTLINED_FUNCTION_0_49();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950550, &qword_274657B30);
  if ((sub_27463C4CC() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_274534EF0();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
    sub_27463C71C();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 32 * v14);
    *v19 = a3;
    v19[1] = a4;
    v19[2] = a5;
    v19[3] = a6;
  }

  else
  {
    sub_2745FCCC0(v14, a1, v18, a3, a4, a5, a6);

    v20 = a1;
  }
}

uint64_t sub_2745FC848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_55_1();
  v14 = v13;
  v16 = v15;
  sub_274534DD8(v17);
  OUTLINED_FUNCTION_0_49();
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_27463C71C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_33_8();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809547B0, &unk_27465FF68);
  if (OUTLINED_FUNCTION_9_24(v19))
  {
    v20 = OUTLINED_FUNCTION_31_13();
    sub_274534DD8(v20);
    OUTLINED_FUNCTION_2_37();
    if (!v22)
    {
      goto LABEL_14;
    }

    v12 = v21;
  }

  if (v11)
  {
    v23 = (*(*v10 + 56) + 16 * v12);
    *v23 = v16;
    v23[1] = v14;
    OUTLINED_FUNCTION_56_0();

    return sub_27453B740(v24);
  }

  else
  {
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_56_0();

    return sub_2745FCD0C(v27, v28, v29, v30, v31);
  }
}

void sub_2745FC93C()
{
  OUTLINED_FUNCTION_11_18();
  v4 = v3;
  v6 = v5;
  sub_274534C48(v7, v8);
  OUTLINED_FUNCTION_0_49();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954948, &qword_274660090);
  if ((OUTLINED_FUNCTION_10_32(v14) & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_274534C48(v1, v0);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_27463C71C();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v2;
  if (v13)
  {
    v18 = (v17[7] + 16 * v12);
    *v18 = v6;
    v18[1] = v4;
  }

  else
  {
    sub_2745FCD54(v12, v1, v0, v17, v6, v4);
  }
}

void sub_2745FCA4C()
{
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_13_20(v5, v6, v7);
  OUTLINED_FUNCTION_0_49();
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_27463C71C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_33_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954940, &qword_274660088);
  if (OUTLINED_FUNCTION_9_24(v9))
  {
    v10 = OUTLINED_FUNCTION_31_13();
    sub_274534C48(v10, v0);
    OUTLINED_FUNCTION_2_37();
    if (!v12)
    {
      goto LABEL_14;
    }

    v4 = v11;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    OUTLINED_FUNCTION_56_0();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_41_4();
    sub_2745FCB98(v15, v16, v0, v1, v17);
    OUTLINED_FUNCTION_56_0();
  }
}

unint64_t sub_2745FCB30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_22_11(a1, a2, a3, a4);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v6;
  }

  return result;
}

unint64_t sub_2745FCB54(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_2745FCB98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_17_18(a1, a2, a3, a4, a5);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
  }

  return result;
}

unint64_t sub_2745FCBBC(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_2745FCC00(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

_OWORD *sub_2745FCC54(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_274464A50(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_2745FCCC0(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

unint64_t sub_2745FCD0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2745FCD54(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = (a4[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a4[7] + 16 * result);
  *v7 = a5;
  v7[1] = a6;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_2745FCDA0(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_2745FE8EC(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_2745FCEA8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_27448E108(*(a1 + 48) + 40 * (v10 | (v9 << 6)), v12);
      sub_2745FE9DC(v12, v11);
      sub_274430664(v12);
      sub_27440CB1C(v11, &qword_28094A4B0, &unk_27465FF40);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_2745FCFD0(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_27463C27C())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_27463C23C();
    sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
    sub_27460159C(&qword_28094BD48);
    sub_27463BA7C();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_274406A24(a1);
      return;
    }

    while (1)
    {
      v16 = sub_2745FEB00(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_27463C2BC())
      {
        sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_2745FD21C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_2745FEC80(v11);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_2745FD334(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v54 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v41 = 0;
    v4 = 0;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1;
    v8 = -1 << *(a1 + 32);
    v45 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v5;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;
    v13 = 1;
    v47 = a1 + 56;
    v48 = a1;
    if ((v9 & v5) != 0)
    {
LABEL_6:
      v14 = v4;
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
      sub_27463C74C();
      MEMORY[0x277C58EA0](v17);
      v18 = sub_27463C7AC();
      v19 = -1 << *(v3 + 32);
      v20 = ~v19;
      while (1)
      {
        v4 = v18 & v20;
        v2 = (v18 & v20) >> 6;
        v7 = 1 << (v18 & v20);
        if ((v7 & *(v12 + 8 * v2)) == 0)
        {
          v4 = v14;
          v6 = v47;
          a1 = v48;
          v7 = -1;
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (*(*(v3 + 48) + 8 * v4) == v17)
        {
          break;
        }

        v18 = v4 + 1;
      }

      v51 = v45;
      v52 = v14;
      v53 = v10;
      v50[0] = v48;
      v50[1] = v47;
      v13 = (63 - v19) >> 6;
      v6 = 8 * v13;

      if (v13 > 0x80)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v42 = v13;
        v43 = &v40;
        MEMORY[0x28223BE20](v21);
        v4 = &v40 - v22;
        memcpy(&v40 - v22, (v3 + 56), v6);
        v23 = *(v4 + 8 * v2) & ~v7;
        v24 = *(v3 + 16);
        v46 = v4;
        *(v4 + 8 * v2) = v23;
        v25 = v24 - 1;
        v13 = 1;
        v2 = v47;
        v7 = v48;
LABEL_19:
        v44 = v25;
LABEL_20:
        while (v10)
        {
LABEL_25:
          v27 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          v6 = *(*(v7 + 48) + ((v14 << 9) | (8 * v27)));
          sub_27463C74C();
          v4 = v49;
          MEMORY[0x277C58EA0](v6);
          v28 = sub_27463C7AC();
          v29 = ~(-1 << *(v3 + 32));
          while (1)
          {
            v30 = v28 & v29;
            v31 = (v28 & v29) >> 6;
            v32 = 1 << (v28 & v29);
            if ((v32 & *(v12 + 8 * v31)) == 0)
            {
              break;
            }

            v28 = v30 + 1;
            if (*(*(v3 + 48) + 8 * v30) == v6)
            {
              v33 = v46[v31];
              v46[v31] = v33 & ~v32;
              if ((v33 & v32) == 0)
              {
                goto LABEL_20;
              }

              v25 = v44 - 1;
              if (__OFSUB__(v44, 1))
              {
                __break(1u);
              }

              if (v44 == 1)
              {

                v3 = MEMORY[0x277D84FA0];
                goto LABEL_33;
              }

              goto LABEL_19;
            }
          }
        }

        while (1)
        {
          v26 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v26 >= v11)
          {
            v3 = sub_2745FF9D0(v46, v42, v44, v3);
            goto LABEL_33;
          }

          v10 = *(v2 + 8 * v26);
          ++v14;
          if (v10)
          {
            v14 = v26;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v36 = swift_slowAlloc();
      v37 = v41;
      v38 = sub_2745FF7B0(v36, v13, (v3 + 56), v13, v3, v4, v50);
      if (v37)
      {

        result = MEMORY[0x277C5A270](v36, -1, -1);
        __break(1u);
        return result;
      }

      v39 = v38;

      MEMORY[0x277C5A270](v36, -1, -1);
      v7 = v50[0];
      v45 = v51;
      v3 = v39;
LABEL_33:
      v34 = v7;
    }

    else
    {
LABEL_7:
      v15 = v4;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_39;
        }

        if (v14 >= v11)
        {
          break;
        }

        v10 = *(v6 + 8 * v14);
        ++v15;
        if (v10)
        {
          goto LABEL_11;
        }
      }
    }

    sub_274406A24(v34);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v3;
}

uint64_t sub_2745FD764(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v51 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v3 = a1;
    v5 = a1 + 56;
    v4 = *(a1 + 56);
    v6 = -1 << *(a1 + 32);
    v37 = ~v6;
    if (-v6 < 64)
    {
      v7 = ~(-1 << -v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & v4;
    v9 = (63 - v6) >> 6;
    v10 = a2 + 56;
    v11 = 0;
    v12 = 0;

    v40 = v5;
    v38 = v9;
LABEL_6:
    v13 = v8;
    if (v8)
    {
LABEL_11:
      sub_27448E108(*(v3 + 48) + 40 * (__clz(__rbit64(v13)) | (v12 << 6)), &v41);
      if (*(&v42 + 1))
      {
        v8 = (v13 - 1) & v13;
        v44 = v41;
        v45 = v42;
        v46 = v43;
        v15 = sub_27463C2EC();
        v16 = ~(-1 << *(v2 + 32));
        while (1)
        {
          v11 = v15 & v16;
          v3 = (v15 & v16) >> 6;
          v9 = 1 << (v15 & v16);
          if ((v9 & *(v10 + 8 * v3)) == 0)
          {
            sub_274430664(&v44);
            v11 = v12;
            v3 = v39;
            v5 = v40;
            v9 = v38;
            goto LABEL_6;
          }

          sub_27448E108(*(v2 + 48) + 40 * v11, &v41);
          v17 = MEMORY[0x277C58A40](&v41, &v44);
          sub_274430664(&v41);
          if (v17)
          {
            break;
          }

          v15 = v11 + 1;
        }

        v48 = v37;
        v49 = v12;
        v50 = v8;
        v47[0] = v39;
        v47[1] = v40;
        v18 = sub_274430664(&v44);
        v19 = *(v2 + 32);
        v13 = ((1 << v19) + 63) >> 6;
        v5 = 8 * v13;
        if ((v19 & 0x3Fu) > 0xD)
        {
          goto LABEL_46;
        }

        while (1)
        {
          v33 = v13;
          v34 = &v32;
          MEMORY[0x28223BE20](v18);
          v11 = &v32 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
          memcpy(v11, (v2 + 56), v5);
          v20 = *(v11 + 8 * v3) & ~v9;
          v35 = v11;
          *(v11 + 8 * v3) = v20;
          v36 = *(v2 + 16) - 1;
          v13 = 40;
          v3 = v39;
          v5 = v40;
LABEL_19:
          if (v8)
          {
            goto LABEL_24;
          }

          while (1)
          {
            v21 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v21 >= v38)
            {
              v43 = 0;
              v41 = 0u;
              v42 = 0u;
LABEL_37:
              sub_27440CB1C(&v41, &qword_28094A4B0, &unk_27465FF40);
              v2 = sub_2745FFBD0(v35, v33, v36, v2);
              goto LABEL_38;
            }

            v8 = *(v5 + 8 * v21);
            ++v12;
            if (v8)
            {
              v12 = v21;
LABEL_24:
              v22 = __clz(__rbit64(v8));
              v8 &= v8 - 1;
              sub_27448E108(*(v3 + 48) + 40 * (v22 | (v12 << 6)), &v41);
              if (*(&v42 + 1))
              {
                v44 = v41;
                v45 = v42;
                v46 = v43;
                v11 = &v44;
                v23 = sub_27463C2EC();
                v24 = ~(-1 << *(v2 + 32));
                while (1)
                {
                  v25 = v23 & v24;
                  v3 = (v23 & v24) >> 6;
                  v9 = 1 << (v23 & v24);
                  if ((v9 & *(v10 + 8 * v3)) == 0)
                  {
                    break;
                  }

                  sub_27448E108(*(v2 + 48) + 40 * v25, &v41);
                  v11 = MEMORY[0x277C58A40](&v41, &v44);
                  sub_274430664(&v41);
                  v23 = v25 + 1;
                  if (v11)
                  {
                    sub_274430664(&v44);
                    v26 = v35[v3];
                    v35[v3] = v26 & ~v9;
                    if ((v26 & v9) != 0)
                    {
                      v27 = v36 - 1;
                      v5 = v40;
                      if (__OFSUB__(v36, 1))
                      {
                        goto LABEL_45;
                      }

                      --v36;
                      if (!v27)
                      {

                        v2 = MEMORY[0x277D84FA0];
                        v3 = v39;
                        goto LABEL_38;
                      }

LABEL_34:
                      v3 = v39;
                      goto LABEL_19;
                    }

LABEL_33:
                    v5 = v40;
                    goto LABEL_34;
                  }
                }

                sub_274430664(&v44);
                goto LABEL_33;
              }

              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:

          if (!swift_stdlib_isStackAllocationSafe())
          {
            break;
          }
        }

        v30 = swift_slowAlloc();
        v31 = sub_2745FF838(v30, v13, (v2 + 56), v13, v2, v11, v47);

        MEMORY[0x277C5A270](v30, -1, -1);
        v3 = v47[0];
        v37 = v48;
        v2 = v31;
LABEL_38:
        v28 = v3;
        goto LABEL_41;
      }
    }

    else
    {
      v14 = v11;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_44;
        }

        if (v12 >= v9)
        {
          break;
        }

        v13 = *(v5 + 8 * v12);
        ++v14;
        if (v13)
        {
          goto LABEL_11;
        }
      }

      v43 = 0;
      v41 = 0u;
      v42 = 0u;
    }

    sub_27440CB1C(&v41, &qword_28094A4B0, &unk_27465FF40);
    v28 = v3;
LABEL_41:
    sub_274406A24(v28);
    return v2;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2745FDCA4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v68 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = sub_27463C23C();
    sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
    sub_27460159C(&qword_28094BD48);
    sub_27463BA7C();
    v5 = v63;
    v6 = v64;
    v7 = v65;
    v8 = v66;
    v9 = v67;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);

    v7 = v11;
    v8 = 0;
  }

  v58 = v5;
  v59 = v6;
  v60 = v7;
  v61 = v8;
  v49 = v7;
  v14 = (v7 + 64) >> 6;
  v55 = (v4 + 56);
  v62 = v9;
  v51 = v6;
  v52 = v14;
  if (v5 < 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v15 = v8;
  v16 = v9;
  v17 = v8;
  if (v9)
  {
LABEL_14:
    v3 = ((v16 - 1) & v16);
    v2 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v2;
    v15 = v17;
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v14)
      {
        break;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_14;
      }
    }

    v2 = 0;
    v3 = 0;
  }

  v58 = v5;
  v59 = v6;
  v60 = v49;
  v61 = v15;
  v54 = v3;
  v62 = v3;
  if (!v2)
  {
LABEL_54:
    v41 = v5;
    goto LABEL_52;
  }

LABEL_19:
  v20 = v2;
  v21 = sub_27463BF6C();
  v53 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v21 & v53;
    v6 = (v21 & v53) >> 6;
    v14 = 1 << (v21 & v53);
    if ((v14 & v55[v6]) == 0)
    {

      v8 = v15;
      v9 = v54;
      v6 = v51;
      v14 = v52;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_17:
      v19 = sub_27463C2BC();
      if (!v19)
      {
        goto LABEL_54;
      }

      v56 = v19;
      sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
      swift_dynamicCast();
      v2 = v57;
      v15 = v8;
      v54 = v9;
      if (!v57)
      {
        goto LABEL_54;
      }

      goto LABEL_19;
    }

    sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
    v3 = *(*(v4 + 48) + 8 * v8);
    v2 = sub_27463BF7C();

    if (v2)
    {
      break;
    }

    v21 = v8 + 1;
  }

  v23 = *(v4 + 32);
  v46 = ((1 << v23) + 63) >> 6;
  v2 = 8 * v46;
  v3 = v52;
  if ((v23 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v47 = &v45;
    MEMORY[0x28223BE20](v22);
    v24 = &v45 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v24, v55, v2);
    v45 = 0;
    v25 = *&v24[8 * v6] & ~v14;
    v26 = *(v4 + 16);
    v53 = v24;
    *&v24[8 * v6] = v25;
    v27 = v26 - 1;
    v28 = v51;
    v6 = v54;
    v50 = v5;
LABEL_28:
    v48 = v27;
LABEL_29:
    while (2)
    {
      if (v5 < 0)
      {
        v33 = sub_27463C2BC();
        if (!v33)
        {
          goto LABEL_50;
        }

        v56 = v33;
        swift_dynamicCast();
        v31 = v57;
        if (!v57)
        {
          goto LABEL_50;
        }

LABEL_40:
        v54 = v6;
        v2 = v31;
        v34 = sub_27463BF6C();
        v35 = v4;
        v8 = ~(-1 << *(v4 + 32));
        do
        {
          v36 = v34 & v8;
          v37 = (v34 & v8) >> 6;
          v38 = 1 << (v34 & v8);
          if ((v38 & v55[v37]) == 0)
          {

            v4 = v35;
            v5 = v50;
            v28 = v51;
            v3 = v52;
            v6 = v54;
            goto LABEL_29;
          }

          v14 = *(*(v35 + 48) + 8 * v36);
          v2 = sub_27463BF7C();

          v34 = v36 + 1;
        }

        while ((v2 & 1) == 0);

        v3 = v52;
        v39 = *(v53 + 8 * v37);
        *(v53 + 8 * v37) = v39 & ~v38;
        v40 = (v39 & v38) == 0;
        v4 = v35;
        v5 = v50;
        v28 = v51;
        v6 = v54;
        if (v40)
        {
          continue;
        }

        v27 = v48 - 1;
        if (__OFSUB__(v48, 1))
        {
          __break(1u);
        }

        if (v48 == 1)
        {

          v4 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_28;
      }

      break;
    }

    if (v6)
    {
LABEL_35:
      v30 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v31 = *(*(v5 + 48) + ((v15 << 9) | (8 * v30)));
      v32 = v31;
LABEL_36:
      v58 = v5;
      v59 = v28;
      v60 = v49;
      v61 = v15;
      v62 = v6;
      if (!v31)
      {
LABEL_50:
        v4 = sub_2745FFDEC(v53, v46, v48, v4);
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    while (1)
    {
      v29 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v29 >= v3)
      {
        v31 = 0;
        v6 = 0;
        goto LABEL_36;
      }

      v6 = *(v28 + 8 * v29);
      ++v15;
      if (v6)
      {
        v15 = v29;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v43 = swift_slowAlloc();
  v44 = sub_2745FF8C0(v43, v46, v55, v46, v4, v8, &v58);

  MEMORY[0x277C5A270](v43, -1, -1);
  v4 = v44;
LABEL_51:
  v41 = v58;
LABEL_52:
  sub_274406A24(v41);
  return v4;
}

uint64_t sub_2745FE2D8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v62 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v5 = a1 + 56;
    v4 = *(a1 + 56);
    v6 = -1;
    v7 = -1 << *(a1 + 32);
    v54 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v4;
    v10 = (63 - v7) >> 6;
    v55 = (a2 + 56);

    v12 = 0;
    v50 = v10;
    v56 = v3;
    v52 = v11;
    v51 = v5;
    if (v9)
    {
      while (2)
      {
        v13 = v12;
LABEL_11:
        v15 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v2 = *(*(v11 + 48) + ((v13 << 9) | (8 * v15)));
        v57 = v11;
        v58 = v5;
        v59 = v54;
        v60 = v13;
        v61 = v9;
        sub_27463B6AC();
        sub_27463C74C();
        v53 = v2;
        sub_27463B71C();
        v16 = sub_27463C7AC();

        v17 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v5 = v16 & v17;
          v10 = v5 >> 6;
          v6 = 1 << v5;
          if (((1 << v5) & v55[v5 >> 6]) == 0)
          {
            break;
          }

          v18 = sub_27463B6AC();
          v20 = v19;
          if (v18 == sub_27463B6AC() && v20 == v21)
          {

LABEL_24:
            v3 = v56;
            v25 = *(v56 + 32);
            v47[0] = ((1 << v25) + 63) >> 6;
            v2 = (8 * v47[0]);
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_52;
            }

            while (1)
            {
              v47[1] = v47;
              MEMORY[0x28223BE20](v24);
              v5 = v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v5, v55, v2);
              v26 = *(v5 + 8 * v10) & ~v6;
              v27 = *(v3 + 16);
              v49 = v5;
              *(v5 + 8 * v10) = v26;
              v28 = v27 - 1;
              v29 = v52;
              v30 = v51;
              v31 = v50;
LABEL_26:
              v48 = v28;
LABEL_27:
              while (v9)
              {
LABEL_32:
                v33 = __clz(__rbit64(v9));
                v9 &= v9 - 1;
                v34 = *(*(v29 + 48) + ((v13 << 9) | (8 * v33)));
                v57 = v29;
                v58 = v30;
                v59 = v54;
                v60 = v13;
                v61 = v9;
                sub_27463B6AC();
                sub_27463C74C();
                v53 = v34;
                sub_27463B71C();
                v5 = sub_27463C7AC();

                v35 = ~(-1 << *(v3 + 32));
                while (1)
                {
                  v2 = (v5 & v35);
                  v10 = (v5 & v35) >> 6;
                  v6 = 1 << (v5 & v35);
                  if ((v6 & v55[v10]) == 0)
                  {

                    v3 = v56;
                    v29 = v52;
                    v30 = v51;
                    v31 = v50;
                    goto LABEL_27;
                  }

                  v36 = sub_27463B6AC();
                  v38 = v37;
                  v39 = sub_27463B6AC();
                  v5 = v40;
                  if (v36 == v39 && v38 == v40)
                  {
                    break;
                  }

                  v42 = sub_27463C6BC();

                  v5 = v2 + 1;
                  if (v42)
                  {

                    goto LABEL_42;
                  }
                }

LABEL_42:
                v43 = v49[v10];
                v49[v10] = v43 & ~v6;
                v3 = v56;
                v29 = v52;
                v30 = v51;
                v31 = v50;
                if ((v43 & v6) != 0)
                {
                  v28 = v48 - 1;
                  if (__OFSUB__(v48, 1))
                  {
                    __break(1u);
                  }

                  if (v48 == 1)
                  {

                    v3 = MEMORY[0x277D84FA0];
                    goto LABEL_47;
                  }

                  goto LABEL_26;
                }
              }

              while (1)
              {
                v32 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  break;
                }

                if (v32 >= v31)
                {
                  v57 = v29;
                  v58 = v30;
                  v59 = v54;
                  v60 = v13;
                  v61 = 0;
                  v3 = sub_2745FFFD8(v49, v47[0], v48, v3);
                  goto LABEL_47;
                }

                v9 = *(v30 + 8 * v32);
                ++v13;
                if (v9)
                {
                  v13 = v32;
                  goto LABEL_32;
                }
              }

              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v45 = swift_slowAlloc();
            v46 = sub_2745FF948(v45, v47[0], v55, v47[0], v3, v5, &v57);

            MEMORY[0x277C5A270](v45, -1, -1);
            v3 = v46;
LABEL_47:
            v11 = v57;
            goto LABEL_48;
          }

          v23 = sub_27463C6BC();

          if (v23)
          {

            goto LABEL_24;
          }

          v16 = v5 + 1;
        }

        v12 = v13;
        v3 = v56;
        v11 = v52;
        v5 = v51;
        v10 = v50;
        v6 = -1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = v12;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_51;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v5 + 8 * v13);
      ++v14;
      if (v9)
      {
        goto LABEL_11;
      }
    }

LABEL_48:
    sub_274406A24(v11);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v3;
}

void sub_2745FE8EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  sub_27463C74C();
  MEMORY[0x277C58EA0](a1);
  v6 = sub_27463C7AC();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      *a2 = 0;
      return;
    }

    if (*(*(v5 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2745252D8();
    v10 = v20;
  }

  *a2 = *(*(v10 + 48) + 8 * v8);
  v11 = sub_2746004B4(v8);
  OUTLINED_FUNCTION_24_13(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t sub_2745FE9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = sub_27463C2EC();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = result & v8;
    if (((*(v6 + 56 + (((result & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v8)) & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    sub_27448E108(*(v6 + 48) + 40 * v9, v15);
    v10 = MEMORY[0x277C58A40](v15, a1);
    sub_274430664(v15);
    if (v10)
    {
      break;
    }

    result = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  v15[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2745253F0();
    v12 = v15[0];
  }

  v13 = *(v12 + 48) + 40 * v9;
  v14 = *(v13 + 16);
  *a2 = *v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = *(v13 + 32);
  result = sub_274600650(v9);
  *v3 = v15[0];
  return result;
}

uint64_t sub_2745FEB00(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
    v9 = sub_27463BF6C();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = sub_27463BF7C();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v17 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2745253DC();
          v15 = v17;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_2746009C0();
        *v2 = v17;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_27463C2CC();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_274600214(v5, v6);

  return v8;
}

uint64_t sub_2745FEC80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_27463B6AC();
  sub_27463C74C();
  sub_27463B71C();
  v4 = sub_27463C7AC();

  v5 = ~(-1 << *(v3 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v3 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      return 0;
    }

    v7 = sub_27463B6AC();
    v9 = v8;
    if (v7 == sub_27463B6AC() && v9 == v10)
    {
      break;
    }

    v12 = sub_27463C6BC();

    if (v12)
    {
      goto LABEL_11;
    }

    v4 = v6 + 1;
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v26 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2745256F8();
    v15 = v26;
  }

  v13 = *(*(v15 + 48) + 8 * v6);
  v16 = sub_2746007FC(v6);
  OUTLINED_FUNCTION_24_13(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
  return v13;
}

uint64_t sub_2745FEDF8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for WFEditorCell();
    v9 = sub_27463BF6C();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = sub_27463BF7C();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v26 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_27452558C();
          v15 = v26;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_2746009C0();
        OUTLINED_FUNCTION_24_13(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_27463C2CC();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_274600370(v5, v6);

  return v8;
}

unint64_t sub_2745FEF64(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_2:
  while (1)
  {
    v11 = a5[3];
    v12 = a5[4];
    if (!v12)
    {
      break;
    }

    v13 = a5[3];
LABEL_7:
    v14 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    a5[3] = v13;
    a5[4] = (v12 - 1) & v12;
    sub_27463C74C();
    MEMORY[0x277C58EA0](v14);
    result = sub_27463C7AC();
    v15 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = 1 << (result & v15);
      if ((v18 & *(v10 + 8 * v17)) == 0)
      {
        break;
      }

      result = v16 + 1;
      if (*(*(a3 + 48) + 8 * v16) == v14)
      {
        v19 = v7[v17];
        v7[v17] = v19 & ~v18;
        if ((v19 & v18) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v9--, 1))
        {
          goto LABEL_16;
        }

        if (v9)
        {
          goto LABEL_2;
        }

        return MEMORY[0x277D84FA0];
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v11;
      a5[4] = 0;

      return sub_2745FF9D0(v7, a2, v9, a3);
    }

    v12 = *(a5[1] + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t *sub_2745FF0FC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v32 = v7 - 1;
  v8 = a3 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v9 = *a5;
      v10 = a5[1];
      v12 = a5[2];
      v11 = a5[3];
      v13 = a5[4];
      if (!v13)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= ((v12 + 64) >> 6))
          {
            v29 = 0;
            v27 = 0u;
            v28 = 0u;
            *a5 = v9;
            a5[1] = v10;
            a5[2] = v12;
            a5[3] = v11;
            a5[4] = 0;
            goto LABEL_17;
          }

          v13 = *(v10 + 8 * v14);
          ++v11;
          if (v13)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v14 = a5[3];
LABEL_7:
      v15 = (v13 - 1) & v13;
      sub_27448E108(*(v9 + 48) + 40 * (__clz(__rbit64(v13)) | (v14 << 6)), &v27);
      v16 = *(&v28 + 1);
      *a5 = v9;
      a5[1] = v10;
      a5[2] = v12;
      a5[3] = v14;
      a5[4] = v15;
      if (!v16)
      {
LABEL_17:
        sub_27440CB1C(&v27, &qword_28094A4B0, &unk_27465FF40);

        return sub_2745FFBD0(v26, a2, v32, a3);
      }

      v30[0] = v27;
      v30[1] = v28;
      v31 = v29;
      v17 = sub_27463C2EC();
      v18 = ~(-1 << *(a3 + 32));
      do
      {
        v19 = v17 & v18;
        v20 = (v17 & v18) >> 6;
        v21 = 1 << (v17 & v18);
        if ((v21 & *(v8 + 8 * v20)) == 0)
        {
          result = sub_274430664(v30);
          goto LABEL_2;
        }

        sub_27448E108(*(a3 + 48) + 40 * v19, &v27);
        v22 = MEMORY[0x277C58A40](&v27, v30);
        sub_274430664(&v27);
        v17 = v19 + 1;
      }

      while ((v22 & 1) == 0);
      result = sub_274430664(v30);
      v23 = v26[v20];
      v26[v20] = v23 & ~v21;
      if ((v23 & v21) == 0)
      {
        continue;
      }

      break;
    }

    v24 = v32 - 1;
    if (__OFSUB__(v32, 1))
    {
      goto LABEL_19;
    }

    --v32;
    if (v24)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

void sub_2745FF318(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_27463C2BC())
      {
        goto LABEL_25;
      }

      sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
      swift_dynamicCast();
      v13 = v29;
      if (!v29)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_2745FFDEC(a1, a2, v26, a3);
      return;
    }

LABEL_15:
    v16 = sub_27463BF6C();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_27463BF7C();

      v16 = v18 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = a1[v19];
    a1[v19] = v23 & ~v20;
    v24 = (v23 & v20) == 0;
    v5 = a5;
    if (v24)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_27;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_2745FF55C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v29 = a3 + 56;
  v27 = a5;
  while (2)
  {
    v25 = v7;
    do
    {
LABEL_3:
      v8 = a5[3];
      v9 = a5[4];
      if (!v9)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((a5[2] + 64) >> 6))
          {
            a5[3] = v8;
            a5[4] = 0;

            sub_2745FFFD8(a1, a2, v25, a3);
            return;
          }

          v9 = *(a5[1] + 8 * v10);
          ++v8;
          if (v9)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v10 = a5[3];
LABEL_8:
      v11 = *(*(*a5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_27463B6AC();
      sub_27463C74C();
      v28 = v11;
      sub_27463B71C();
      v12 = sub_27463C7AC();

      v13 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v14 = v12 & v13;
        v15 = (v12 & v13) >> 6;
        v16 = 1 << (v12 & v13);
        if ((v16 & *(v29 + 8 * v15)) == 0)
        {

          a5 = v27;
          goto LABEL_3;
        }

        v17 = sub_27463B6AC();
        v19 = v18;
        if (v17 == sub_27463B6AC() && v19 == v20)
        {
          break;
        }

        v22 = sub_27463C6BC();

        v12 = v14 + 1;
        if (v22)
        {

          goto LABEL_18;
        }
      }

LABEL_18:
      a5 = v27;
      v23 = a1[v15];
      a1[v15] = v23 & ~v16;
    }

    while ((v23 & v16) == 0);
    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
LABEL_24:
      __break(1u);
      return;
    }

    if (v25 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_2745FF7B0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_2745FEF64(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t *sub_2745FF838(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_2745FF0FC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_2745FF8C0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_2745FF318(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_2745FF948(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_2745FF55C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_2745FF9D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954910, &qword_274656920);
  result = sub_27463C35C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_27463C74C();
    MEMORY[0x277C58EA0](v16);
    result = sub_27463C7AC();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2745FFBD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF98, &qword_2746568A8);
  result = sub_27463C35C();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_27448E108(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = sub_27463C2EC();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
LABEL_27:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_27;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2745FFDEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954990, &qword_2746600C0);
  result = sub_27463C35C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_27463BF6C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2745FFFD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954A00, &unk_274656A30);
  result = sub_27463C35C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_27463B6AC();
    sub_27463C74C();
    v17 = v16;
    sub_27463B71C();
    v18 = sub_27463C7AC();

    v19 = -1 << *(v9 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v28;
    v10 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v29 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2746004B4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_27463C20C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_27463C74C();
        MEMORY[0x277C58EA0](v10);
        v11 = sub_27463C7AC() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_274600650(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_27463C20C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_27448E108(*(v3 + 48) + 40 * v6, v23);
        v10 = sub_27463C2EC();
        sub_274430664(v23);
        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = v14 + 40 * v2;
            v16 = (v14 + 40 * v6);
            if (v2 != v6 || v15 >= v16 + 40)
            {
              v18 = *v16;
              v19 = v16[1];
              *(v15 + 32) = *(v16 + 4);
              *v15 = v18;
              *(v15 + 16) = v19;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2746007FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_27463C20C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_27463B6AC();
        sub_27463C74C();
        sub_27463B71C();
        v10 = sub_27463C7AC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2746009C0()
{
  OUTLINED_FUNCTION_55_1();
  v2 = v1;
  v3 = *v0;
  v4 = *v0 + 56;
  v5 = -1 << *(*v0 + 32);
  v6 = (v1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_27463C20C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_27463BF6C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
    OUTLINED_FUNCTION_56_0();
  }
}

void sub_274600B4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  [a3 setAccessibilityIdentifier_];
}

unint64_t sub_274600BB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_93(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_274600BF4()
{
  result = qword_280954760;
  if (!qword_280954760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C998, &qword_27465FF20);
    sub_274600C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954760);
  }

  return result;
}

unint64_t sub_274600C80()
{
  result = qword_280954768;
  if (!qword_280954768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954770, &qword_27465FF28);
    sub_2746016D8(&unk_280954778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954768);
  }

  return result;
}

double block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_274600DC0()
{
  result = qword_2809547E8;
  if (!qword_2809547E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809547D0, &qword_27465FF88);
    sub_2746016D8(&unk_2809547F0);
    sub_274600EA4(&unk_2809547F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809547E8);
  }

  return result;
}

unint64_t sub_274600EA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_93(a1);
  if (!result)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    v6();
    sub_274482D88();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

id sub_274600F24(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

unint64_t sub_274600F38()
{
  result = qword_280954858;
  if (!qword_280954858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954850, &qword_274660010);
    sub_274600FF0();
    sub_2746016D8(&qword_2809548C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954858);
  }

  return result;
}

unint64_t sub_274600FF0()
{
  result = qword_280954860;
  if (!qword_280954860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954868, &qword_274660018);
    sub_2746010A8();
    sub_2746016D8(&unk_2809548B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954860);
  }

  return result;
}

unint64_t sub_2746010A8()
{
  result = qword_280954870;
  if (!qword_280954870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954878, &qword_274660020);
    sub_274601160();
    sub_2746016D8(&qword_2809548A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954870);
  }

  return result;
}

unint64_t sub_274601160()
{
  result = qword_280954880;
  if (!qword_280954880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954888, &qword_274660028);
    sub_274482A00();
    sub_2746011EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954880);
  }

  return result;
}

unint64_t sub_2746011EC()
{
  result = qword_280954898;
  if (!qword_280954898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954898);
  }

  return result;
}

unint64_t sub_274601240()
{
  result = qword_2809548D0;
  if (!qword_2809548D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954848, &qword_27465FFC0);
    sub_2746012F8();
    sub_2746016D8(&qword_2809548C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809548D0);
  }

  return result;
}

unint64_t sub_2746012F8()
{
  result = qword_2809548D8;
  if (!qword_2809548D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809548E0, &qword_274660040);
    sub_2746013B0();
    sub_2746016D8(&unk_2809548B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809548D8);
  }

  return result;
}

unint64_t sub_2746013B0()
{
  result = qword_2809548E8;
  if (!qword_2809548E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809548F0, &qword_274660048);
    sub_274601468();
    sub_2746016D8(&qword_2809548A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809548E8);
  }

  return result;
}

unint64_t sub_274601468()
{
  result = qword_2809548F8;
  if (!qword_2809548F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954900, &unk_274660050);
    sub_274600EA4(&unk_280954908);
    sub_2746011EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809548F8);
  }

  return result;
}

void sub_274601520(id a1, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    sub_274601534(a1, a2);
  }
}

void sub_274601534(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

uint64_t objectdestroy_64Tm()
{

  return swift_deallocObject();
}

unint64_t sub_27460159C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_93(a1);
  if (!result)
  {
    sub_274412734(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2746015E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_274601638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_2746016D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_93(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27460176C()
{
  result = qword_2809549F0;
  if (!qword_2809549F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809549F8, qword_274660298);
    sub_2746016D8(&unk_2809549D0);
    sub_2746016D8(&unk_2809549D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809549F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_2745FC848(3, 0, v10, a1, a5, a6, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1)
{

  return sub_27463C4CC();
}

uint64_t OUTLINED_FUNCTION_10_32(uint64_t a1)
{

  return sub_27463C4CC();
}

unint64_t OUTLINED_FUNCTION_13_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_274534C48(a2, a3);
}

uint64_t OUTLINED_FUNCTION_16_23(uint64_t a1)
{

  return sub_27463A38C();
}

unint64_t OUTLINED_FUNCTION_17_18(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(*(a5 + 56) + 8 * result) = a4;
  return result;
}

unint64_t OUTLINED_FUNCTION_22_11(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a4 + 48) + 8 * result) = a2;
  *(*(a4 + 56) + 8 * result) = a3;
  return result;
}

id OUTLINED_FUNCTION_27_15()
{

  return [v2 (v1 + 2040)];
}

uint64_t OUTLINED_FUNCTION_40_9(uint64_t a1)
{

  return sub_27463C27C();
}

id ParameterHostingView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_1_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_0_0();

  return [v2 v3];
}

char *ParameterHostingView.init(frame:)()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + OBJC_IVAR___WFParameterHostingView_initialState) = 0;
  *(v0 + OBJC_IVAR___WFParameterHostingView_updatedState) = 0;
  sub_27463AE9C();
  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A20, &unk_2746602F0));
  *(v0 + OBJC_IVAR___WFParameterHostingView_hostingController) = sub_274638A7C();
  type metadata accessor for ParameterHostingView();
  v2 = OUTLINED_FUNCTION_0_0();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  v6 = *&v5[OBJC_IVAR___WFParameterHostingView_hostingController];
  v7 = v5;
  v8 = [v6 view];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];

    [v7 addSubview_];
  }

  return v7;
}

void sub_274601CFC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ParameterHostingView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR___WFParameterHostingView_hostingController] view];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    CGRectGetWidth(v4);
    CGSizeMake();
    sub_274639CAC();
    [v2 frame];
    [v2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_274601E1C()
{
  *(v0 + OBJC_IVAR___WFParameterHostingView_initialState) = 0;
  *(v0 + OBJC_IVAR___WFParameterHostingView_updatedState) = 0;
  sub_27463C56C();
  __break(1u);
}

uint64_t sub_274601F28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_274602390(a1, a2, a3, a4, a5, v8, 0, 1, a6, a7);
  return sub_27440CB1C(v8, &unk_2809507C0, &qword_274649C60);
}

uint64_t sub_274602070(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v18 = a10;
  v17 = a11;
  v19 = a9;
  sub_27445EAD4(a7, &v29, &unk_28094A230, &qword_27464D1B0);
  if (v30)
  {
    sub_274464A50(&v29, v28);
    v30 = &type metadata for WidgetConfigurationContext;
    v31 = &protocol witness table for WidgetConfigurationContext;
    v20 = a4;
    v21 = a1;
    v22 = a2;
    v23 = a5;
    v24 = swift_allocObject();
    *&v29 = v24;
    sub_274464A50(v28, (v24 + 24));
    *(v24 + 16) = a6;
    *(v24 + 56) = a8;
    a5 = v23;
    a2 = v22;
    a1 = v21;
    a4 = v20;
    v19 = a9;
    v17 = a11;
    v18 = a10;
  }

  else
  {
    sub_27440CB1C(&v29, &unk_28094A230, &qword_27464D1B0);
    v30 = &type metadata for FocusConfigurationContext;
    v31 = &protocol witness table for FocusConfigurationContext;
    *&v29 = a6;
    *(&v29 + 1) = a8;
  }

  sub_2744306B8(&v29, v28);
  v25 = a8;
  sub_274602390(a1, a2, a3 & 1, a4 & 1, a5, v28, v19, 0, v18, v17);
  sub_27440CB1C(v28, &unk_2809507C0, &qword_274649C60);
  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t sub_274602390(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v126 = a8;
  v110 = a7;
  v127 = a6;
  v109 = a5;
  v108 = __PAIR64__(a4, a3);
  v107 = a1;
  *&v106 = a9;
  v105 = a10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A30, &qword_274660330) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v104 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A38, &qword_274660338);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40_1();
  v116 = v18;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A40, &qword_274660340);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  v119 = v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A48, &qword_274660348);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_40_1();
  v115 = v22;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A50, &unk_274660350);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_40_1();
  v120 = v24;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A58, &qword_274660360);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_40_1();
  v118 = v26;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A60, &qword_274660368);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v104 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954A68, &unk_274660370);
  v124 = *(v30 - 8);
  v125 = v30;
  MEMORY[0x28223BE20](v30);
  v121 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v122 = &v104 - v33;
  *(v11 + OBJC_IVAR___WFParameterHostingView_initialState) = a2;
  swift_unknownObjectRelease();
  *(v11 + OBJC_IVAR___WFParameterHostingView_updatedState) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_27463B9CC();

  v35 = sub_27463B9BC();
  OUTLINED_FUNCTION_68_0();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v34;

  OUTLINED_FUNCTION_5();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v39 = v105;

  v40 = sub_27463B9BC();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v37;
  v42 = v106;
  v41[4] = v38;
  v41[5] = v42;
  v41[6] = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
  sub_27463AF0C();
  v106 = v128;
  v43 = v129;
  type metadata accessor for BindingParameterStateDataSource();
  OUTLINED_FUNCTION_68_0();
  v44 = swift_allocObject();
  *(v44 + 16) = v106;
  *(v44 + 32) = v43;
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_68_0();
  swift_allocObject();
  sub_27458265C(v44, v45, v46, v47, v48, v49, v50, v51, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110, v111, v112);
  v53 = v52;
  v54 = *(v127 + 24);
  v55 = objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0));

  v56 = [v55 init];
  swift_unknownObjectWeakInit();
  v16[56] = sub_2746390EC() & 1;
  *(v16 + 8) = v57;
  v16[72] = v58 & 1;
  v59 = type metadata accessor for ParameterRowView(0);
  v60 = *(v59 + 52);
  *&v16[v60] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  swift_storeEnumTagMultiPayload();
  v61 = &v16[*(v59 + 56)];
  *v61 = swift_getKeyPath();
  v61[8] = 0;
  v62 = v107;
  *v16 = v107;
  *(v16 + 1) = v53;
  *&v106 = v53;
  v16[16] = v108;
  v16[17] = BYTE4(v108);
  *(v16 + 3) = 0;
  *(v16 + 16) = 1;
  swift_unknownObjectWeakAssign();
  *(v16 + 6) = v56;
  v63 = [v62 key];
  v64 = sub_27463B6AC();
  v66 = v65;

  v67 = v110;
  v68 = &v16[*(v13 + 60)];
  *v68 = v64;
  v68[1] = v66;
  if (v67)
  {
    v69 = v67;
    v70 = sub_27463AB0C();
    KeyPath = swift_getKeyPath();
    *&v128 = v70;

    v72 = sub_27463930C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v72 = 0;
  }

  v73 = v54 == 0;
  v74 = v116;
  sub_27445EAD4(v16, v116, &qword_280954A30, &qword_274660330);

  v75 = (v74 + *(v112 + 36));
  *v75 = KeyPath;
  v75[1] = v72;
  sub_27440CB1C(v16, &qword_280954A30, &qword_274660330);
  v76 = swift_getKeyPath();
  v77 = v119;
  v78 = (v119 + *(v111 + 36));
  v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD30, &qword_274651640) + 28);
  v80 = sub_27463969C();
  __swift_storeEnumTagSinglePayload(v78 + v79, 1, 1, v80);
  *v78 = v76;
  sub_27445EA84(v74, v77, &qword_280954A38, &qword_274660338);
  v81 = swift_getKeyPath();
  v82 = v115;
  v83 = (v115 + *(v113 + 36));
  sub_27445EAD4(v127, (v83 + 1), &unk_2809507C0, &qword_274649C60);
  *v83 = v81;
  sub_27445EA84(v77, v82, &qword_280954A40, &qword_274660340);
  v84 = swift_getKeyPath();
  v85 = v82;
  v86 = v120;
  sub_27445EA84(v85, v120, &qword_280954A48, &qword_274660348);
  v87 = v86 + *(v114 + 36);
  *v87 = v84;
  *(v87 + 8) = v73;
  v88 = swift_getKeyPath();
  v127 = *(v11 + OBJC_IVAR___WFParameterHostingView_hostingController);
  v89 = WFUserInterfaceFromViewController();
  v90 = v118;
  sub_27445EA84(v86, v118, &qword_280954A50, &unk_274660350);
  v91 = (v90 + *(v117 + 36));
  *v91 = v88;
  v91[1] = v89;
  v92 = swift_getKeyPath();
  LOBYTE(v89) = v126 & 1;
  sub_27445EA84(v90, v29, &qword_280954A58, &qword_274660360);
  v93 = v123;
  v94 = &v29[*(v123 + 36)];
  *v94 = v92;
  v94[8] = v89;
  sub_27463B08C();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A78, &unk_274660490);
  v96 = sub_274603410();
  v97 = sub_27460388C();
  v98 = MEMORY[0x277CE1350];
  v99 = MEMORY[0x277CE1340];
  v100 = v122;
  sub_27463AA7C();
  sub_27440CB1C(v29, &qword_280954A60, &qword_274660368);
  v102 = v124;
  v101 = v125;
  (*(v124 + 16))(v121, v100, v125);
  *&v128 = v93;
  *(&v128 + 1) = v98;
  v129 = v95;
  v130 = v96;
  v131 = v99;
  v132 = v97;
  swift_getOpaqueTypeConformance2();
  *&v128 = sub_27463AE9C();
  sub_274639CEC();

  return (*(v102 + 8))(v100, v101);
}

void sub_274602D78(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v4 = Strong, v5 = *(Strong + OBJC_IVAR___WFParameterHostingView_updatedState), swift_unknownObjectRetain(), v4, !v5))
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v5 = *(v6 + OBJC_IVAR___WFParameterHostingView_initialState);
      swift_unknownObjectRetain();
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
}

uint64_t sub_274602E34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void))
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(Strong + OBJC_IVAR___WFParameterHostingView_updatedState) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  return a5(v6, 0);
}

void *sub_274602ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27463B0CC();
  sub_27463973C();
  sub_27445EAD4(a1, a2, &qword_280954A60, &qword_274660368);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954A78, &unk_274660490);
  return memcpy((a2 + *(v4 + 36)), __src, 0x70uLL);
}

void sub_274603044(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR___WFParameterHostingView_hostingController);
    v11 = a1;
    v3 = [v2 parentViewController];
    if (v3)
    {
      v4 = v3;
      sub_274603358();
      v10 = v11;
      v5 = sub_27463BF7C();

      if (v5)
      {

        v6 = v10;
LABEL_10:

        return;
      }
    }

    else
    {
      v9 = v11;
    }

    [v11 addChildViewController_];
    [v2 didMoveToParentViewController_];

    v6 = v11;
    goto LABEL_10;
  }

  v7 = *(v1 + OBJC_IVAR___WFParameterHostingView_hostingController);
  v8 = [v7 parentViewController];
  if (v8)
  {

    [v7 willMoveToParentViewController_];
    sub_27463AE9C();
    sub_274639CEC();
    [v7 removeFromParentViewController];
  }
}

id ParameterHostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_274603358()
{
  result = qword_280954130;
  if (!qword_280954130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280954130);
  }

  return result;
}

uint64_t sub_2746033B8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x277C56160]();
  *a1 = result;
  return result;
}

unint64_t sub_274603410()
{
  result = qword_280954A80;
  if (!qword_280954A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954A60, &qword_274660368);
    sub_2746034C8();
    sub_27440CA78(&unk_280954AF0, &unk_28094AD70, &unk_274649F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954A80);
  }

  return result;
}

unint64_t sub_2746034C8()
{
  result = qword_280954A88;
  if (!qword_280954A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954A58, &qword_274660360);
    sub_274603580();
    sub_27440CA78(&qword_2809548C0, &qword_2809548C8, &qword_2746604B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954A88);
  }

  return result;
}

unint64_t sub_274603580()
{
  result = qword_280954A90;
  if (!qword_280954A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954A50, &unk_274660350);
    sub_274603638();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60, &qword_27464E7D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954A90);
  }

  return result;
}

unint64_t sub_274603638()
{
  result = qword_280954A98;
  if (!qword_280954A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954A48, &qword_274660348);
    sub_2746036F0();
    sub_27440CA78(&qword_280954AD0, &qword_280954AD8, &unk_2746604A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954A98);
  }

  return result;
}

unint64_t sub_2746036F0()
{
  result = qword_280954AA0;
  if (!qword_280954AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954A40, &qword_274660340);
    sub_2746037A8();
    sub_27440CA78(&qword_28094DD88, &qword_28094DD30, &qword_274651640, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954AA0);
  }

  return result;
}

unint64_t sub_2746037A8()
{
  result = qword_280954AA8;
  if (!qword_280954AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954A38, &qword_274660338);
    sub_27440CA78(&unk_280954AB0, &qword_280954A30, &qword_274660330, MEMORY[0x277CE1148]);
    sub_27440CA78(&unk_28094CCA0, &unk_280954AC0, &qword_27464EA90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954AA8);
  }

  return result;
}

unint64_t sub_27460388C()
{
  result = qword_280954B00;
  if (!qword_280954B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280954A78, &unk_274660490);
    sub_274603410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954B00);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_280965D08 == -1)
  {
    if (qword_280965D10)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280965D10)
    {
      return _availability_version_check();
    }
  }

  if (qword_280965D00 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280965CF4 > a3)
      {
        return 1;
      }

      if (dword_280965CF4 >= a3)
      {
        return dword_280965CF8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280965D10;
  if (qword_280965D10)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280965D10 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x277C59830](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_280965CF4, &dword_280965CF8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

uint64_t __WorkflowUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WorkflowUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFTextFieldKeyboardAppearanceFromTraitCollection(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 == 1)
  {
    return 2;
  }

  else
  {
    return v1 == 2;
  }
}

void sub_27460B704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_287);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, sizeof(v4));
  if (dladdr(WFCurrentBundle, &v4) && v4.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v4.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_2743F0000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

uint64_t WFShouldShowAddButtonForParameter(void *a1, int a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if ([v7 isRangedSizeArray] && objc_msgSend(v7, "arrayMaxCountForWidgetFamily:", 3) <= a4)
  {
    v12 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v7 moduleSummaryShowsAddButtonForState:v8];
LABEL_14:
      v12 = v9;
      goto LABEL_15;
    }

    v10 = v8;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;

    v14 = [v13 variable];

    v12 = 0;
    if (a2 && !v14)
    {
      v9 = [v7 allowsMultipleValues];
      goto LABEL_14;
    }
  }

LABEL_15:

  return v12;
}

void sub_27460D8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27460DE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_274610684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27461098C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_274610E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initHUShortcutsTriggerViewUtilities()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_1212);
  }

  result = objc_getClass("HUShortcutsTriggerViewUtilities");
  classHUShortcutsTriggerViewUtilities = result;
  getHUShortcutsTriggerViewUtilitiesClass = HUShortcutsTriggerViewUtilitiesFunction;
  return result;
}

void *__HomeUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib = result;
  return result;
}

Class initHUTriggerActionFlow()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_1212);
  }

  result = objc_getClass("HUTriggerActionFlow");
  classHUTriggerActionFlow = result;
  getHUTriggerActionFlowClass = HUTriggerActionFlowFunction;
  return result;
}

Class initHUTriggerBuilderContext()
{
  if (HomeLibrary_sOnce != -1)
  {
    dispatch_once(&HomeLibrary_sOnce, &__block_literal_global_239);
  }

  result = objc_getClass("HUTriggerBuilderContext");
  classHUTriggerBuilderContext = result;
  getHUTriggerBuilderContextClass = HUTriggerBuilderContextFunction;
  return result;
}

void *__HomeLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib = result;
  return result;
}

Class initHFPlaceholderTriggerBuilder()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_1212);
  }

  result = objc_getClass("HFPlaceholderTriggerBuilder");
  classHFPlaceholderTriggerBuilder = result;
  getHFPlaceholderTriggerBuilderClass = HFPlaceholderTriggerBuilderFunction;
  return result;
}

Class initHUTriggerSummaryViewController()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_1212);
  }

  result = objc_getClass("HUTriggerSummaryViewController");
  classHUTriggerSummaryViewController = result;
  getHUTriggerSummaryViewControllerClass = HUTriggerSummaryViewControllerFunction;
  return result;
}

id WFAttributedTextFromSerializedTagString(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v3;
  v6 = [v3 componentsSeparatedByString:{@", "}];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 length])
        {
          v12 = [(WFValueTextAttachment *)[WFTagTextAttachment alloc] initWithData:0 ofType:0];
          [(WFValueTextAttachment *)v12 setAttributes:v4];
          [(WFValueTextAttachment *)v12 setStringValue:v11];
          v13 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v12];
          [v5 appendAttributedString:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if (v4)
  {
    [v5 addAttributes:v4 range:{0, objc_msgSend(v5, "length")}];
  }

  v14 = [v5 copy];

  return v14;
}

id WFSerializedTagStringFromAttributedText(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = *MEMORY[0x277D74060];
  v4 = [v1 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __WFSerializedTagStringFromAttributedText_block_invoke;
  v8[3] = &unk_279EDBA90;
  v9 = v2;
  v5 = v2;
  [v1 enumerateAttribute:v3 inRange:0 options:v4 usingBlock:{0, v8}];

  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

void __WFSerializedTagStringFromAttributedText_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v5 stringValue];
    [v3 addObject:v4];
  }
}

id WFAttributedStringFromContactEntries(void *a1, void *a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v21 = v7;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(WFValueTextAttachment *)[WFContactTextAttachment alloc] initWithData:0 ofType:0];
        [(WFValueTextAttachment *)v14 setAttributes:v6];
        v15 = [v13 type];
        if (v15 == 2)
        {
          if (!a3)
          {
            goto LABEL_16;
          }

          v16 = [v13 emailAddress];
          v17 = [v16 address];
        }

        else
        {
          if (v15 != 1)
          {
            if (v15)
            {
              goto LABEL_16;
            }

            v16 = [v13 contact];
            [(WFContactTextAttachment *)v14 setValue:v16];
            goto LABEL_15;
          }

          if (!a3)
          {
            goto LABEL_16;
          }

          v16 = [v13 phoneNumber];
          v17 = [v16 string];
        }

        v18 = v17;
        [(WFValueTextAttachment *)v14 setStringValue:v17];

        v7 = v21;
LABEL_15:

        v19 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v14];
        [v7 appendAttributedString:v19];

LABEL_16:
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  if (v6)
  {
    [v7 addAttributes:v6 range:{0, objc_msgSend(v7, "length")}];
  }

  return v7;
}

id WFContactStateFromAttributedString(void *a1)
{
  v1 = MEMORY[0x277D7C2A8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = WFContactEntriesFromAttributedString(v2);

  v5 = [v3 initWithParameterStates:v4];

  return v5;
}

id WFContactEntriesFromAttributedString(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = *MEMORY[0x277D74060];
  v4 = [v1 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __WFContactEntriesFromAttributedString_block_invoke;
  v7[3] = &unk_279EDBAD8;
  v5 = v2;
  v8 = v5;
  [v1 enumerateAttribute:v3 inRange:0 options:v4 usingBlock:{0, v7}];

  return v5;
}

void __WFContactEntriesFromAttributedString_block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v9 value];

    v4 = *(a1 + 32);
    v5 = objc_alloc(MEMORY[0x277CFC2C0]);
    if (v3)
    {
      v6 = [v9 value];
      v7 = [v5 initWithContact:v6];
    }

    else
    {
      v6 = [v9 stringValue];
      v7 = [v5 initWithHandleString:v6];
    }

    v8 = v7;
    [v4 addObject:v7];
  }
}

void sub_274617598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27461D404(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_27461DFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27461F008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

objc_class *WFModuleSummaryEditorClassForParameterClass(objc_class *a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [(objc_class *)a1 moduleSummaryEditorClass];
  }

  else if (a1)
  {
    while (1)
    {
      v3 = NSStringFromClass(a1);
      v4 = [v3 stringByAppendingString:@"SummaryEditor"];
      v5 = NSClassFromString(v4);

      if ([(objc_class *)v5 isSubclassOfClass:objc_opt_class()])
      {
        break;
      }

      v2 = [(objc_class *)a1 superclass];
      a1 = v2;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

LABEL_9:

  return v2;
}

void sub_274624BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2746252D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_274626434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initHUShortcutsTriggerViewUtilities_3365()
{
  if (HomeUILibrary_sOnce_3366 != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce_3366, &__block_literal_global_3367);
  }

  result = objc_getClass("HUShortcutsTriggerViewUtilities");
  classHUShortcutsTriggerViewUtilities_3368 = result;
  getHUShortcutsTriggerViewUtilitiesClass_3363 = HUShortcutsTriggerViewUtilitiesFunction_3370;
  return result;
}

void *__HomeUILibrary_block_invoke_3373()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib_3374 = result;
  return result;
}

Class initHUShortcutsTriggerViewAccessoryPickerConfiguration()
{
  if (HomeUILibrary_sOnce_3366 != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce_3366, &__block_literal_global_3367);
  }

  result = objc_getClass("HUShortcutsTriggerViewAccessoryPickerConfiguration");
  classHUShortcutsTriggerViewAccessoryPickerConfiguration = result;
  getHUShortcutsTriggerViewAccessoryPickerConfigurationClass = HUShortcutsTriggerViewAccessoryPickerConfigurationFunction;
  return result;
}

uint64_t WFParameterStateIsMultipleValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t WFParameterStateIsVariable(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = v1;
  v4 = v3;
  if (isKindOfClass)
  {
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = v5;

    v8 = [v7 value];

    if ([v8 count])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 1;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __WFParameterStateIsVariable_block_invoke;
      v13[3] = &unk_279EDBF20;
      v13[4] = &v14;
      [v8 enumerateObjectsUsingBlock:v13];
      v9 = *(v15 + 24);
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v10 = v6;

    v11 = [v10 variable];

    v9 = v11 != 0;
  }

  return v9 & 1;
}

void sub_274628390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WFParameterStateIsVariable_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24) == 1)
  {
    result = WFParameterStateIsVariable(a2);
    v6 = *(*(a1 + 32) + 8);
  }

  else
  {
    result = 0;
  }

  *(v6 + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

void *WFMultipleParameterStateValues(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [v3 parameterStates];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

id WFModuleSummaryEditorInitialState(void *a1)
{
  v1 = a1;
  v2 = [v1 initialArrayState];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 initialState];
  }

  v5 = v4;

  return v5;
}

id WFMultipleParameterStateMake(objc_class *a1, void *a2)
{
  v3 = a2;
  if ([(objc_class *)a1 isSubclassOfClass:objc_opt_class()])
  {
    v4 = [[a1 alloc] initWithParameterStates:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getWFWFContactComposeRecipientLogObject()
{
  if (getWFWFContactComposeRecipientLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWFContactComposeRecipientLogObject_onceToken, &__block_literal_global_164);
  }

  v1 = getWFWFContactComposeRecipientLogObject_log;

  return v1;
}

void __getWFWFContactComposeRecipientLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D7A500], "WFContactComposeRecipient");
  v1 = getWFWFContactComposeRecipientLogObject_log;
  getWFWFContactComposeRecipientLogObject_log = v0;
}

id getWFWFContactFieldEntryLogObject()
{
  if (getWFWFContactFieldEntryLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWFContactFieldEntryLogObject_onceToken, &__block_literal_global_3663);
  }

  v1 = getWFWFContactFieldEntryLogObject_log;

  return v1;
}

void __getWFWFContactFieldEntryLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D7A500], "WFContactFieldEntry");
  v1 = getWFWFContactFieldEntryLogObject_log;
  getWFWFContactFieldEntryLogObject_log = v0;
}

uint64_t __WFContactForSpecificHandle_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id WFEnforceClass(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_2743F0000, v5, OS_LOG_TYPE_FAULT, "%s Failed to get map item for recent contact: %{public}@ %@", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id CLPlacemarkFromMapItem(void *a1)
{
  v1 = a1;
  v2 = [v1 placemark];
  v3 = MEMORY[0x277CBEB38];
  v4 = [v1 placemark];
  v5 = [v4 addressDictionary];
  v6 = [v3 dictionaryWithDictionary:v5];

  v7 = [v6 objectForKeyedSubscript:@"Name"];
  if (!v7)
  {
    v8 = [v1 name];

    if (!v8)
    {
      goto LABEL_5;
    }

    v7 = [v1 name];
    [v6 setObject:v7 forKeyedSubscript:@"Name"];
  }

LABEL_5:
  v9 = objc_alloc(MEMORY[0x277CBFC40]);
  v10 = [v2 location];
  v11 = [v2 region];
  v12 = [v2 areasOfInterest];
  v13 = [v9 initWithLocation:v10 addressDictionary:v6 region:v11 areasOfInterest:v12];

  return v13;
}

id MKMapItemWithPlacemark(void *a1)
{
  v1 = MEMORY[0x277CD4F00];
  v2 = a1;
  v3 = [[v1 alloc] initWithPlacemark:v2];
  v4 = [objc_alloc(MEMORY[0x277CD4E80]) initWithPlacemark:v3];
  v5 = [v2 name];

  [v4 setName:v5];

  return v4;
}

void sub_274633E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2746342D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2746345E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_274635CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  MEMORY[0x282123638](mapPoint, *&mapPoint.y);
  result.longitude = v2;
  result.latitude = v1;
  return result;
}

MKCoordinateRegion MKCoordinateRegionForMapRect(MKMapRect rect)
{
  MEMORY[0x282123640](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.span.longitudeDelta = v4;
  result.span.latitudeDelta = v3;
  result.center.longitude = v2;
  result.center.latitude = v1;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x282123648](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

MKMapRect MKMapRectUnion(MKMapRect rect1, MKMapRect rect2)
{
  MEMORY[0x2821236C0](rect1.origin, *&rect1.origin.y, rect1.size, *&rect1.size.height, rect2.origin, *&rect2.origin.y, rect2.size, *&rect2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}