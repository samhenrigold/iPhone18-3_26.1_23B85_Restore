uint64_t sub_23B9E5698@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SubscriptionOptionButtonModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SubscriptionPickerSubscribeButtonModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23B9E17F0())
  {
    sub_23B9E1F20(v7);
    sub_23BA41268(a1);
    v8 = type metadata accessor for SubscriptionPickerSubscribeButtonModel;
    v9 = v7;
  }

  else
  {
    sub_23B9E1B78(v4);
    sub_23BB9B2D8(a1);
    v8 = type metadata accessor for SubscriptionOptionButtonModel;
    v9 = v4;
  }

  return sub_23B9E71B8(v9, v8);
}

uint64_t sub_23B9E57B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SubscriptionOptionButtonModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3E8, &unk_23BBE9F00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for SubscriptionPickerSubscribeButtonModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23B9E17F0())
  {
    sub_23B9E1F20(v14);
    if (*&v14[*(v12 + 20) + 16] == 3)
    {
      v15 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
      v16 = v10;
      v17 = 1;
    }

    else
    {
      sub_23BB95108();
      v15 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
      v19 = *(v15 + 20);
      sub_23BB95108();
      v20 = _s11PriceStringOMa(0);
      __swift_storeEnumTagSinglePayload(&v10[v19], 0, 1, v20);
      v16 = v10;
      v17 = 0;
    }

    __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
    sub_23B979688();
    sub_23B9E71B8(v14, type metadata accessor for SubscriptionPickerSubscribeButtonModel);
    sub_23B979688();
    type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v15) == 1)
    {
      v21 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      v22 = a1;
      v23 = 1;
    }

    else
    {
      sub_23B9E7210();
      v24 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      swift_storeEnumTagMultiPayload();
      v22 = a1;
      v23 = 0;
      v21 = v24;
    }

    return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
  }

  else
  {
    sub_23B9E1B78(v4);
    sub_23BB9B410(a1);
    return sub_23B9E71B8(v4, type metadata accessor for SubscriptionOptionButtonModel);
  }
}

uint64_t sub_23B9E5ACC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0 + *(type metadata accessor for SubscriptionStoreButton(0) + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  if (*(v8 + 33) == 1)
  {
    sub_23B9A165C(*v8, v10, v11);
  }

  else
  {

    sub_23BBDD5A8();
    v25 = v10;
    v14 = sub_23BBDB338();
    v26 = v0;
    v15 = v13;
    v16 = v14;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v17 = sub_23B9A163C(v9, v25, v11, v12, v15, 0);
    (*(v5 + 8))(v7, v4, v17);
    v9 = v27;
    v10 = v28;
    v11 = v29;
  }

  if (v11 == 1)
  {
    goto LABEL_5;
  }

  type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B979510();
  v19 = sub_23BBDCC88();
  if (__swift_getEnumTagSinglePayload(v3, 1, v19) != 1)
  {
    sub_23B9A1648(v9, v10, v11);
    sub_23B979910(v3, &unk_27E19FEF0, &unk_23BBE3E40);
LABEL_15:
    v18 = 0;
    return v18 & 1;
  }

  sub_23B979910(v3, &unk_27E19FEF0, &unk_23BBE3E40);
  v20 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  if (!v11)
  {

    goto LABEL_15;
  }

  if (v10 != v20 || v11 != v21)
  {
    v18 = sub_23BBDDA88();

    sub_23B9A1648(v9, v10, v11);
    return v18 & 1;
  }

  sub_23B9A1648(v9, v10, v11);
LABEL_5:
  v18 = 1;
  return v18 & 1;
}

double SubscriptionStoreButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for SubscriptionStoreButton(0);
  v4 = v3 - 8;
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = sub_23BBDA928();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8, &qword_23BBE98B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A380, &qword_23BBE9D88);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A388, &unk_23BBE9D90);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v18);
  v54 = &v47 - v19;
  v51 = v13;
  sub_23B9E5698(v13);
  *&v53[0] = v10;
  sub_23B9E57B4(v10);
  v50 = sub_23B9E21D8();
  v20 = *(v4 + 36);
  memcpy(__dst, (v2 + v20), 0x4AuLL);
  if ((__dst[9] & 0x100) != 0)
  {
    memcpy(v59, (v2 + v20), sizeof(v59));
    memcpy(v58, (v2 + v20), 0x4AuLL);
    sub_23B9E6BA4(v58, &v56);
  }

  else
  {

    sub_23BBDD5A8();
    v21 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(__dst, &qword_27E19A390, &unk_23BC009F0);
    (*(v47 + 8))(v7, v48);
  }

  memcpy(v58, v59, 0x49uLL);
  sub_23B9E64A4(v58);
  sub_23B9E7268();
  v22 = swift_allocObject();
  sub_23B9E7210();
  v23 = *(v2 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0) + 20));
  if (v23)
  {
    v49 = v22;
    v24 = v2 + *(type metadata accessor for Subscription(0) + 20);
    v25 = *(v24 + 8);
    if (v25 == 2)
    {
      v26 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v28 = v27;
    }

    else
    {
      v26 = *v24;
      v28 = v25 & 1;
    }

    v30 = v25 == 2;
    v29 = v23(v26, v28, v30);
    sub_23B979A38(v26, v28, v30);
    v22 = v49;
  }

  else
  {
    v29 = 0;
  }

  v31 = v58[0];
  *&v17[v14[11]] = v29;
  v32 = &v17[v14[14]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = &v17[v14[15]];
  *v33 = swift_getKeyPath();
  v33[40] = 0;
  v34 = &v17[v14[16]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  sub_23B9E7210();
  sub_23B979688();
  v35 = &v17[v14[10]];
  *v35 = sub_23B9E67EC;
  v35[1] = v22;
  v17[v14[12]] = v31;
  *&v17[v14[13]] = v50;
  LOBYTE(v34) = sub_23B9E5ACC();
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v34 & 1;
  v38 = v54;
  sub_23B979688();
  v39 = &v38[*(v52 + 36)];
  *v39 = KeyPath;
  v39[1] = sub_23B9E6B94;
  v39[2] = v37;
  v40 = sub_23BBDC318();
  v42 = v41;
  sub_23B9E684C(v2, &v56);
  *v53 = v56;
  v43 = v57;
  v44 = v55;
  sub_23B979688();
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A398, &qword_23BBE9E38) + 36);
  result = v53[0];
  *v45 = *v53;
  *(v45 + 16) = v43;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  return result;
}

uint64_t sub_23B9E6430(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for SubscriptionStoreButton(0) + 20);
  v3 = *(v2 + 32);
  v6[1] = *(v2 + 16);
  v6[2] = v3;
  v7 = *(v2 + 48);
  v6[0] = *v2;
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  return (*(a1 + *(v4 + 24)))(a1, v6);
}

uint64_t sub_23B9E64F8()
{
  v1 = type metadata accessor for SubscriptionStoreButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v2);
  v4 = *(type metadata accessor for SubscriptionStoreControlOption(0) + 20);
  v5 = sub_23BBDCC88();
  if (!__swift_getEnumTagSinglePayload(v2 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  if (*(v2 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0) + 20)))
  {
  }

  v6 = v2 + v1[6];
  sub_23B9A163C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 33));
  v7 = v2 + v1[7];
  sub_23B9E66F8(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 73));
  sub_23B97B5C0(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  sub_23B9B6460(*(v2 + v1[9]), *(v2 + v1[9] + 8));

  return swift_deallocObject();
}

double sub_23B9E66F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  if (a11)
  {
    sub_23B9E672C(a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
  }

  return result;
}

void sub_23B9E672C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 4)
  {

    sub_23B9E67A8(a5, a6, a7, a8);
  }
}

void sub_23B9E67A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_23B9E67EC()
{
  v1 = *(type metadata accessor for SubscriptionStoreButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23B9E6430(v2);
}

uint64_t sub_23B9E684C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for SubscriptionStoreButton(0) + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  if (*(v8 + 33) == 1)
  {
    sub_23B9A165C(*v8, v10, v11);
  }

  else
  {

    sub_23BBDD5A8();
    v20 = v4;
    v14 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v15 = sub_23B9A163C(v9, v10, v11, v12, v13, 0);
    (*(v5 + 8))(v7, v20, v15);
    v9 = v22;
    v10 = v23;
    v11 = v24;
  }

  if (v11 == 1)
  {
    v21 = 0;
    result = sub_23BBDBF58();
    v17 = v22;
    v18 = v23;
  }

  else
  {
    result = sub_23B9A1648(v9, v10, v11);
    v17 = 0;
    v18 = 1;
  }

  *a2 = 0;
  a2[1] = v17;
  a2[2] = v18;
  return result;
}

uint64_t sub_23B9E6AD8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBDA8B8();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9E6B00()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBDA8B8();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9E6C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23B9E6D00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_23B9E6DAC(uint64_t a1)
{
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(319);
  if (v1 <= 0x3F)
  {
    sub_23B9E6F2C(319, &qword_27E19A3B0, &type metadata for ClientOverrideValues, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23B985190(319, &qword_27E198B98, &qword_27E1988B0, &qword_23BBE6660);
      if (v3 <= 0x3F)
      {
        sub_23B9E6F2C(319, &qword_27E19A3B8, &type metadata for SubscriptionStoreButtonLabel, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23B9E6F2C(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_23B985190(319, &qword_27E19A3C0, &qword_27E19A3C8, &unk_23BBE9EE0);
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

void sub_23B9E6F2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_23B9E6F80()
{
  result = qword_27E19A3D0;
  if (!qword_27E19A3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A398, &qword_23BBE9E38);
    sub_23B9E7038();
    sub_23B97B518(&qword_27E199E38, &qword_27E199E10, &unk_23BBE9EF0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A3D0);
  }

  return result;
}

unint64_t sub_23B9E7038()
{
  result = qword_27E19A3D8;
  if (!qword_27E19A3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A388, &unk_23BBE9D90);
    sub_23B97B518(&qword_27E19A3E0, &qword_27E19A380, &qword_23BBE9D88, &unk_23BC04130);
    sub_23B97B518(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A3D8);
  }

  return result;
}

void sub_23B9E711C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_23B9E7160()
{
  result = qword_27E198BC0;
  if (!qword_27E198BC0)
  {
    sub_23BBDCBE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BC0);
  }

  return result;
}

uint64_t sub_23B9E71B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9E7210()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B9E7268()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B9E72D4(char a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v9[0] = a1;
  v9[1] = a2 & 1;
  v10 = a7;
  v11 = a8;
  v12 = a3;
  v13 = a4;
  return MEMORY[0x23EEB43C0](v9, a5, &type metadata for ContainerRelativeCommonUIGridModifier, a6);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23B9E7334(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t sub_23B9E7370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23B9E73E4(uint64_t result, char a2)
{
  switch(a2)
  {
    case 1:
      if (result + 1 > 2)
      {
        v8 = result + 1;
      }

      else
      {
        v8 = 2;
      }

      if (result == 7)
      {
        result = 10;
      }

      else
      {
        result = v8;
      }

      break;
    case 2:
      if ((result & 0xFE) != 0)
      {
        v6 = result;
      }

      else
      {
        v6 = 1;
      }

      v7 = v6 + 2;
      if (result == 7)
      {
        result = 12;
      }

      else
      {
        result = v7;
      }

      break;
    case 3:
      if ((result & 0xFE) != 0)
      {
        result = result;
      }

      else
      {
        result = 1;
      }

      break;
    case 4:
      v5 = result + 3;
      if (result > 4u)
      {
        v5 = result + 4;
      }

      if (result >= 2u)
      {
        result = v5;
      }

      else
      {
        result = 3;
      }

      break;
    case 5:
      if (result <= 1uLL)
      {
        v9 = 1;
      }

      else
      {
        v9 = result;
      }

      if (result <= 2u)
      {
        result = v9 + 1;
      }

      else
      {
        result = result;
      }

      break;
    default:
      if (result <= 5u)
      {
        v2 = 5;
      }

      else
      {
        v2 = result;
      }

      v3 = v2 - 2;
      if (result == 3)
      {
        v4 = 2;
      }

      else
      {
        v4 = v3;
      }

      if (result >= 3u)
      {
        result = v4;
      }

      else
      {
        result = 1;
      }

      break;
  }

  return result;
}

double sub_23B9E74EC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 0:
      result = 1.5;
      if (a1 != 2)
      {
        goto LABEL_12;
      }

      return result;
    case 3:
      if ((a1 - 1) >= 7u || ((0x71u >> (a1 - 1)) & 1) == 0)
      {
        goto LABEL_12;
      }

      v3 = (a1 - 1);
      v4 = &unk_23BBEA118;
      goto LABEL_11;
    case 4:
      if (a1 >= 2u)
      {
        goto LABEL_12;
      }

      result = 3.33333333;
      break;
    case 5:
      if (a1 >= 3u)
      {
        goto LABEL_12;
      }

      v3 = a1;
      v4 = &unk_23BBEA100;
LABEL_11:
      result = v4[v3];
      break;
    default:
LABEL_12:
      result = sub_23B9E73E4(a1, a2);
      break;
  }

  return result;
}

double sub_23B9E75CC(double a1)
{
  if (*(v1 + 32))
  {
    sub_23BBDB348();
  }

  else
  {
    sub_23BBDB358();
  }

  sub_23BBDA9D8();
  v2 = swift_allocObject();
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A400, &qword_23BBE9FE8);
  sub_23B9E7820();
  sub_23BBDB9F8();

  return result;
}

double sub_23B9E76C0(double a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = v5 + a1;
  KeyPath = swift_getKeyPath();
  v14 = sub_23BBAF41C(v6, KeyPath, &unk_284E56E40, v8, v9, v10, v11, v12, v13);

  if (v14 == 8)
  {
    v15 = 7;
  }

  else
  {
    v15 = v14;
  }

  v16 = *a3;
  v17 = *(a3 + 1);
  if (v17)
  {
    v18 = sub_23B9E74EC(v15, v16);
  }

  else
  {
    v18 = sub_23B9E73E4(v15, v16);
  }

  v19 = 0.0;
  if (v17)
  {
    v20 = 60.0;
    if ((v15 & 0xFE) == 0)
    {
      v20 = 36.0;
    }

    v19 = v20 + dbl_23BBEA150[v15] + v5 * -0.5;
  }

  return (a1 - v19 - (v18 * *(a3 + 16) + -1.0) * dbl_23BBEA150[v15]) / (v18 * *(a3 + 16));
}

unint64_t sub_23B9E7820()
{
  result = qword_27E19A408;
  if (!qword_27E19A408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A400, &qword_23BBE9FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A408);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommonUIGrid.Variant(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23B9E7954);
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

uint64_t _s20LocalizationResourceV5StyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CommonUIGrid(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x23B9E7AE0);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23B9E7B18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A400, &qword_23BBE9FE8);
  sub_23B9E7820();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23B9E7B80()
{
  result = qword_27E19A410;
  if (!qword_27E19A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A410);
  }

  return result;
}

unint64_t sub_23B9E7BD8()
{
  result = qword_27E19A418;
  if (!qword_27E19A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A418);
  }

  return result;
}

uint64_t View.refundRequestSheet(for:isPresented:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = 0;
  v18 = 0;
  __src[0] = swift_getKeyPath();
  LOBYTE(__src[1]) = 0;
  __src[2] = sub_23B9E7D28;
  __src[3] = 0;
  LOBYTE(__src[4]) = 0;
  __src[5] = a1;
  __src[6] = a2;
  __src[7] = a3;
  LOBYTE(__src[8]) = a4;
  __src[9] = a5;
  __src[10] = a6;

  sub_23B9794F0(a5, a6);
  MEMORY[0x23EEB43C0](__src, a7, &type metadata for RefundRequestSheetModifier, a8);
  memcpy(__dst, __src, 0x58uLL);
  return sub_23B9E8A18(__dst);
}

uint64_t sub_23B9E7D28()
{
  type metadata accessor for RefundRequestCoordinator();
  swift_allocObject();
  return sub_23B9EA0D8();
}

uint64_t sub_23B9E7D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v12 = *(v2 + 48);
  v13 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  v6 = v15;
  v7 = v16;
  v8 = swift_allocObject();
  memcpy((v8 + 16), v3, 0x58uLL);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A428, &qword_23BBEA3F8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A430, &unk_23BBEA400) + 36);
  *v10 = v14;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = sub_23B9EA1E8;
  *(v10 + 32) = v8;
  return sub_23B9EA1F0(v3, &v12);
}

uint64_t sub_23B9E7E94(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for SKLogger(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *a2;
  v40 = *a2;
  v41 = *(a2 + 8);
  if (v41 == 1)
  {
    v17 = v16;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v36 = v12;

    sub_23BBDD5A8();
    v18 = v9;
    v19 = sub_23BBDB338();
    sub_23BBD9978();

    v9 = v18;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA92C(&v40, &unk_27E19B5D0, &unk_23BBEA410);
    (*(v11 + 8))(v14, v36);
    v16 = v37;
    if (!v37)
    {
      goto LABEL_10;
    }
  }

  v20 = [v16 scene];

  if (v20)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      if (v15)
      {
        v22 = v21;
        v23 = sub_23BBDD368();
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
        sub_23BBDD308();
        sub_23B9EA1F0(a2, &v37);
        v24 = v20;
        v25 = sub_23BBDD2F8();
        v26 = swift_allocObject();
        v27 = MEMORY[0x277D85700];
        v26[2] = v25;
        v26[3] = v27;
        memcpy(v26 + 4, a2, 0x58uLL);
        v26[15] = v22;
        sub_23BB142C0(0, 0, v6);

        sub_23B9EA92C(v6, &qword_27E198320, &unk_23BBEEBC0);
      }

      else
      {
      }

      return sub_23B9E83A4(a2);
    }
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438, &qword_23BBEB4F0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23BBE7F10;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 32) = 0xD00000000000004BLL;
  *(v28 + 40) = 0x800000023BBE08F0;
  sub_23BBDDB98();

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v7, qword_27E1BFC88);
  sub_23B9EA228(v29, v9);
  v30 = sub_23BBD9988();
  v31 = sub_23BBD99A8();
  (*(*(v31 - 8) + 8))(v9, v31);
  v32 = sub_23BBDD598();
  if (os_log_type_enabled(v30, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_23B970000, v30, v32, "Attempting to present an refundRequestSheet without being in the hierarchy.", v33, 2u);
    MEMORY[0x23EEB6DC0](v33, -1, -1);
  }

  v37 = *(a2 + 48);
  v38 = *(a2 + 64);
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC0F8();
  return sub_23B9E83A4(a2);
}

uint64_t sub_23B9E83A4(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3 - 8];
  v5 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_23BBDD308();
  sub_23B9EA1F0(a1, v11);
  v6 = sub_23BBDD2F8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, a1, 0x58uLL);
  sub_23BB142C0(0, 0, v4);

  return sub_23B9EA92C(v4, &qword_27E198320, &unk_23BBEEBC0);
}

uint64_t sub_23B9E84DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23BBDD308();
  v5[4] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_23B9E8574, v7, v6);
}

uint64_t sub_23B9E8574()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 16);
  *(v0 + 56) = *(v1 + 16);
  *(v0 + 64) = *(v1 + 24);
  *(v0 + 136) = *(v1 + 32);
  *(v0 + 72) = type metadata accessor for RefundRequestCoordinator();
  *(v0 + 80) = sub_23B9EA62C();
  OUTLINED_FUNCTION_6_9();
  v2 = sub_23BBD9C48();
  *(v0 + 88) = v2;

  return MEMORY[0x2822009F8](sub_23B9E8624, v2, 0);
}

uint64_t sub_23B9E8624()
{
  OUTLINED_FUNCTION_3_13();
  v0[12] = swift_unknownObjectWeakLoadStrong();
  v1 = v0[5];
  v2 = v0[6];

  return MEMORY[0x2822009F8](sub_23B9E868C, v1, v2);
}

uint64_t sub_23B9E868C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 96);

  if (v1)
  {

    OUTLINED_FUNCTION_1_16();

    return v2();
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = sub_23BBD9C48();
    *(v0 + 104) = v5;
    *(v0 + 112) = v4[5];
    *(v0 + 120) = v4[9];
    *(v0 + 128) = v4[10];

    return MEMORY[0x2822009F8](sub_23B9E8764, v5, 0);
  }
}

uint64_t sub_23B9E8764()
{
  OUTLINED_FUNCTION_3_13();
  sub_23B9E882C(*(v0 + 112), *(v0 + 24), *(v0 + 120), *(v0 + 128));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_23B9E87D4, v1, v2);
}

uint64_t sub_23B9E87D4()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23B9E882C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_23BBDD308();

  v14 = a2;
  sub_23B9794F0(a3, a4);
  v15 = sub_23BBDD2F8();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v5;
  v16[5] = a1;
  v16[6] = v14;
  v16[7] = a3;
  v16[8] = a4;
  sub_23BB142C0(0, 0, v12);

  return sub_23B9EA92C(v12, &qword_27E198320, &unk_23BBEEBC0);
}

uint64_t sub_23B9E898C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDA658();
  *a1 = result;
  return result;
}

uint64_t sub_23B9E89B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDA658();
  *a1 = result;
  return result;
}

uint64_t sub_23B9E8A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_23BBDD308();
  v8[3] = sub_23BBDD2F8();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_23B9E8B78;

  return sub_23B9E8D04(a5, a6, a7, a8);
}

uint64_t sub_23B9E8B78()
{
  OUTLINED_FUNCTION_3_13();

  sub_23BBDD2D8();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](sub_23B9E8CAC, v0, v1);
}

uint64_t sub_23B9E8CAC()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23B9E8D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = sub_23BBDC6E8();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A448, &qword_23BBEA448);
  v5[27] = swift_task_alloc();
  v7 = sub_23BBDC728();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = type metadata accessor for SKLogger(0);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B9E8EDC, v4, 0);
}

uint64_t sub_23B9E8EDC()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 152);
  swift_unknownObjectWeakAssign();
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 128);
    *(v0 + 16) = *(v1 + 112);
    *(v0 + 24) = v2;
    *(v0 + 32) = v3 & 1;
    *(v0 + 33) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
    sub_23BBDC0F8();
  }

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 280);
  v5 = __swift_project_value_buffer(*(v0 + 248), qword_27E1BFC88);
  *(v0 + 288) = v5;
  sub_23B9EA228(v5, v4);
  v6 = sub_23BBD9988();
  v7 = sub_23BBD99A8();
  *(v0 + 296) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  *(v0 + 304) = v9;
  *(v0 + 312) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v7);
  v10 = sub_23BBDD5B8();
  if (os_log_type_enabled(v6, v10))
  {
    v11 = *(v0 + 120);
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = v11;
    OUTLINED_FUNCTION_16_5(&dword_23B970000, v13, v14, "Presenting overlay for transactionID %{public}llu.");
    OUTLINED_FUNCTION_15_3();
  }

  v15 = swift_task_alloc();
  *(v0 + 320) = v15;
  *v15 = v0;
  v15[1] = sub_23B9E90F8;
  v16 = *(v0 + 240);
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);

  return MEMORY[0x28212C508](v16, v17, v18);
}

uint64_t sub_23B9E90F8()
{
  OUTLINED_FUNCTION_4_11();
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_23B9E95C4;
  }

  else
  {
    v4 = sub_23B9E9220;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23B9E9220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_15_5();
  v13 = *(v12 + 304);
  v14 = *(v12 + 296);
  v15 = *(v12 + 272);
  sub_23B9EA228(*(v12 + 288), v15);
  v16 = sub_23BBD9988();
  v13(v15, v14);
  v17 = sub_23BBDD5B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v12 + 120);
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    *(v19 + 4) = v18;
    OUTLINED_FUNCTION_16_5(&dword_23B970000, v20, v21, "Presenting overlay completed for transactionID %{public}llu.");
    OUTLINED_FUNCTION_15_3();
  }

  v22 = *(v12 + 152);

  v23 = *(v22 + 120);
  if (v23)
  {
    v24 = *(v12 + 152);
    v25 = *(v24 + 128);
    *(v12 + 88) = *(v24 + 112);
    *(v12 + 96) = v23;
    *(v12 + 104) = v25 & 1;
    *(v12 + 36) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
    sub_23BBDC0F8();
  }

  v26 = *(v12 + 136);
  swift_unknownObjectWeakAssign();
  v27 = *(v12 + 232);
  if (v26)
  {
    (*(v27 + 16))(*(v12 + 216), *(v12 + 240), *(v12 + 224));
    OUTLINED_FUNCTION_6_9();
    swift_storeEnumTagMultiPayload();
    sub_23BBDD308();
    *(v12 + 336) = sub_23BBDD2F8();
    sub_23BBDD2D8();
    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_5_13();

    return MEMORY[0x2822009F8](v28, v29, v30);
  }

  else
  {
    (*(v27 + 8))(*(v12 + 240), *(v12 + 224));
    OUTLINED_FUNCTION_0_15();

    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_5_13();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }
}

uint64_t sub_23B9E9480()
{
  OUTLINED_FUNCTION_4_11();
  v3 = OUTLINED_FUNCTION_11_8(*(v1 + 336));
  v2(v0, v3);
  sub_23B9EA92C(v0, &qword_27E19A448, &qword_23BBEA448);
  v4 = OUTLINED_FUNCTION_7_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23B9E9508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_15_5();
  (*(v12[29] + 8))(v12[30], v12[28]);
  OUTLINED_FUNCTION_0_15();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_5_13();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_23B9E95C4()
{
  v59 = v0;
  v1 = *(v0 + 328);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450, &unk_23BBEA450);
  OUTLINED_FUNCTION_6_9();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  if (v3)
  {
    v8 = *(v0 + 264);
    v55 = *(v0 + 304);
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v54 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);

    (*(v11 + 32))(v10, v9, v12);
    sub_23B9EA228(v6, v8);
    v53 = *(v11 + 16);
    v53(v54, v10, v12);
    v13 = sub_23BBD9988();
    v55(v8, v7);
    v14 = sub_23BBDD598();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 184);
    if (v15)
    {
      v57 = v14;
      v17 = *(v0 + 168);
      v18 = *(v0 + 176);
      v19 = *(v0 + 160);
      v20 = *(v0 + 120);
      v21 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58 = v56;
      *v21 = 134349314;
      *(v21 + 4) = v20;
      *(v21 + 12) = 2082;
      (*(v17 + 104))(v18, *MEMORY[0x277CDD108], v19);
      v22 = sub_23BBDC6D8();
      v23 = *(v17 + 8);
      v23(v18, v19);
      if (v22)
      {
        v24 = 0xD000000000000028;
      }

      else
      {
        v24 = 0x64656C696166;
      }

      if (v22)
      {
        v25 = 0x800000023BBE0940;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      v23(v16, v19);
      v26 = sub_23BA5AB90(v24, v25, &v58);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_23B970000, v13, v57, "Refund request for transactionID %{public}llu %{public}s.", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    else
    {
      v42 = *(v0 + 160);
      v43 = *(v0 + 168);

      v23 = *(v43 + 8);
      v23(v16, v42);
    }

    *(v0 + 344) = v23;
    v44 = *(v0 + 152);
    swift_unknownObjectWeakAssign();
    v45 = *(v44 + 120);
    if (v45)
    {
      v46 = *(v0 + 152);
      v47 = *(v46 + 128);
      *(v0 + 64) = *(v46 + 112);
      *(v0 + 72) = v45;
      *(v0 + 80) = v47 & 1;
      *(v0 + 35) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
      sub_23BBDC0F8();
    }

    if (*(v0 + 136))
    {
      v53(*(v0 + 216), *(v0 + 192), *(v0 + 160));
      OUTLINED_FUNCTION_6_9();
      swift_storeEnumTagMultiPayload();
      sub_23BBDD308();
      *(v0 + 352) = sub_23BBDD2F8();
      sub_23BBDD2D8();
      OUTLINED_FUNCTION_12_7();
      v41 = sub_23B9E9C24;
      goto LABEL_21;
    }

    v49 = OUTLINED_FUNCTION_14_7();
    v50(v49);
    v48 = *(v0 + 112);
  }

  else
  {
    v27 = *(v0 + 256);

    sub_23B9EA228(v6, v27);
    v28 = v4;
    v29 = sub_23BBD9988();
    v5(v27, v7);
    v30 = sub_23BBDD598();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 120);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 134349314;
      *(v32 + 4) = v31;
      *(v32 + 12) = 2114;
      v34 = sub_23BBD9658();
      *(v32 + 14) = v34;
      *v33 = v34;
      _os_log_impl(&dword_23B970000, v29, v30, "Refund request for transactionID %{public}llu failed due to error %{public}@.", v32, 0x16u);
      sub_23B9EA92C(v33, &qword_27E19A458, &qword_23BBEB530);
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    v35 = *(v0 + 152);

    swift_unknownObjectWeakAssign();
    v36 = *(v35 + 120);
    if (v36)
    {
      v37 = *(v0 + 152);
      v38 = *(v37 + 128);
      *(v0 + 40) = *(v37 + 112);
      *(v0 + 48) = v36;
      *(v0 + 56) = v38 & 1;
      *(v0 + 34) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
      sub_23BBDC0F8();
    }

    if (*(v0 + 136))
    {
      (*(*(v0 + 168) + 104))(*(v0 + 216), *MEMORY[0x277CDD110], *(v0 + 160));
      OUTLINED_FUNCTION_6_9();
      swift_storeEnumTagMultiPayload();
      sub_23BBDD308();
      *(v0 + 360) = sub_23BBDD2F8();
      sub_23BBDD2D8();
      OUTLINED_FUNCTION_12_7();
      v41 = sub_23B9E9D68;
LABEL_21:

      return MEMORY[0x2822009F8](v41, v39, v40);
    }

    v48 = *(v0 + 328);
  }

  OUTLINED_FUNCTION_0_15();

  OUTLINED_FUNCTION_1_16();

  return v51();
}

uint64_t sub_23B9E9C24()
{
  OUTLINED_FUNCTION_4_11();
  v3 = OUTLINED_FUNCTION_11_8(*(v1 + 352));
  v2(v0, v3);
  sub_23B9EA92C(v0, &qword_27E19A448, &qword_23BBEA448);
  v4 = OUTLINED_FUNCTION_7_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23B9E9CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_15_5();
  v13 = OUTLINED_FUNCTION_14_7();
  v14(v13);

  OUTLINED_FUNCTION_0_15();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_5_13();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_23B9E9D68()
{
  OUTLINED_FUNCTION_4_11();
  v3 = OUTLINED_FUNCTION_11_8(*(v1 + 360));
  v2(v0, v3);
  sub_23B9EA92C(v0, &qword_27E19A448, &qword_23BBEA448);
  v4 = OUTLINED_FUNCTION_7_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23B9E9DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_15_5();

  OUTLINED_FUNCTION_0_15();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_5_13();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_23B9E9E9C()
{
  v1 = sub_23B9EAA78(*(v0 + 112), *(v0 + 120));
  MEMORY[0x23EEB6E70](v0 + 136, v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23B9E9ED0()
{
  v0 = sub_23B9E9E9C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23B9E9F1C(void *a1)
{
  sub_23BBDA358();
  sub_23B9E9F80();
  return swift_getWitnessTable();
}

unint64_t sub_23B9E9F80()
{
  result = qword_27E19A420;
  if (!qword_27E19A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A420);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy8StoreKit11TransactionV19RefundRequestStatusOAE0eF5ErrorOGIegn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B9EA00C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_23B9EA04C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B9EA0D8()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_23B9EA11C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBD9A28();
  *a1 = result;
  return result;
}

uint64_t sub_23B9EA16C()
{
  sub_23B9EA1D4(*(v0 + 16), *(v0 + 24));
  sub_23B9EA1E0(*(v0 + 32), *(v0 + 40));

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

double sub_23B9EA1D4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_23B9EA228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9EA28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_23BBDD308();
  v4[9] = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_23B9EA324, v6, v5);
}

uint64_t sub_23B9EA324()
{
  v1 = *(v0 + 64);
  type metadata accessor for RefundRequestCoordinator();
  sub_23B9EA62C();
  OUTLINED_FUNCTION_6_9();
  v2 = sub_23BBD9C48();
  *(v0 + 96) = v2;
  v3 = *(v1 + 64);
  *(v0 + 16) = *(v1 + 48);
  *(v0 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  v4 = *(v0 + 48);
  *(v0 + 104) = *(v0 + 40);
  *(v0 + 112) = v4;
  *(v0 + 33) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_23B9EA40C, v2, 0);
}

uint64_t sub_23B9EA40C()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *(v3 + 112) = *(v0 + 104);
  *(v3 + 120) = v2;
  *(v3 + 128) = v1;

  sub_23B9EAA78(v4, v5);

  v6 = *(v0 + 80);
  v7 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_23B9EA4CC, v6, v7);
}

uint64_t sub_23B9EA4CC()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23B9EA524()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13_7();

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23B9EA580()
{
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_10(v2);
  *v3 = v4;
  v3[1] = sub_23B9EABA4;
  v5 = OUTLINED_FUNCTION_2_11();

  return sub_23B9E84DC(v5, v6, v7, v8, v1);
}

unint64_t sub_23B9EA62C()
{
  result = qword_27E19A440;
  if (!qword_27E19A440)
  {
    type metadata accessor for RefundRequestCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A440);
  }

  return result;
}

uint64_t sub_23B9EA684()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23B9EA6DC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_8_10(v6);
  *v7 = v8;
  v7[1] = sub_23B9EA7A4;
  v9 = OUTLINED_FUNCTION_2_11();

  return sub_23B9E8A9C(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t sub_23B9EA7A4()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

void sub_23B9EA8B8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_23B9EA92C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B9EA98C()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13_7();

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23B9EA9E0()
{
  OUTLINED_FUNCTION_4_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v1[1] = sub_23B9EABA4;
  v3 = OUTLINED_FUNCTION_2_11();

  return sub_23B9EA28C(v3, v4, v5, v6);
}

double sub_23B9EAA78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_23B9EAAC0()
{
  result = qword_27E19A460;
  if (!qword_27E19A460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A430, &unk_23BBEA400);
    sub_23B97B518(&qword_27E19A468, &qword_27E19A428, &qword_23BBEA3F8, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E19A470, &unk_27E19B600, qword_23BBEA470, MEMORY[0x277CE05A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A460);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15()
{
}

double OUTLINED_FUNCTION_11_8(uint64_t a1)
{

  return result;
}

double OUTLINED_FUNCTION_13_7()
{
  sub_23B9EA1D4(*(v0 + 32), *(v0 + 40));
  sub_23B9EA1E0(*(v0 + 48), *(v0 + 56));

  return result;
}

void OUTLINED_FUNCTION_16_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_23B9EAD24(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBD99A8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23B9EAD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBD99A8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SKLogger(uint64_t a1)
{
  result = qword_27E19A478;
  if (!qword_27E19A478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B9EAE18(uint64_t a1)
{
  result = sub_23BBD99A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B9EAE84()
{
  v0 = type metadata accessor for SKLogger(0);
  __swift_allocate_value_buffer(v0, qword_27E1BFC88);
  __swift_project_value_buffer(v0, qword_27E1BFC88);
  return sub_23BBD9998();
}

void sub_23B9EAEFC()
{
  v16 = MEMORY[0x277D84F90];
  v0 = 8;
  sub_23BA92BE8();
  v1 = v16;
  do
  {
    v14 = 0;
    MEMORY[0x23EEB6DD0](&v14, 8);
    v14 >>= 60;
    sub_23B9EB0B8();
    v2 = sub_23BBDD138();
    v4 = v3;
    v16 = v1;
    v5 = v1[2];
    if (v5 >= v1[3] >> 1)
    {
      sub_23BA92BE8();
      v1 = v16;
    }

    v1[2] = v5 + 1;
    v6 = &v1[2 * v5];
    v6[4] = v2;
    v6[5] = v4;
    --v0;
  }

  while (v0);
  v7 = 0;
  v8 = 0;
  v9 = v1 + 5;
  v10 = v5 + 1;
  v11 = 0xE000000000000000;
  while (1)
  {
    if (v10 == v7)
    {

      return;
    }

    if (v7 >= v1[2])
    {
      break;
    }

    ++v7;
    v12 = *v9;
    v16 = *(v9 - 1);
    v17 = v12;
    v14 = v8;
    v15 = v11;

    v14 = sub_23BBDD158();
    v15 = v13;
    sub_23BBDD0A8();

    v8 = v14;
    v11 = v15;
    v9 += 2;
  }

  __break(1u);
}

unint64_t sub_23B9EB0B8()
{
  result = qword_27E19A488;
  if (!qword_27E19A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A488);
  }

  return result;
}

uint64_t sub_23B9EB10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v30 = a2;
  v31 = v5;
  v32 = v4;
  v33 = v6;
  v34 = v7;
  v8 = type metadata accessor for SubscriptionStoreMainContainerContent.Kind(0, &v31);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v27 = &v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99FCE0(v2, v12, qword_27E19A490, qword_23BBEA4A0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23B979910(v12, qword_27E19A490, qword_23BBEA4A0);
    v16 = v2 + *(a1 + 52);
    v31 = v5;
    v32 = v4;
    v33 = v6;
    v34 = v7;
    v17 = *(type metadata accessor for SubscriptionStoreContainerContext(0, &v31) + 52);
    v19 = type metadata accessor for SubscriptionStoreControlConfiguration(0, v4, v7, v18);
    (*(*(v19 - 8) + 16))(v30, v16 + v17, v19);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v21 = v30;
    sub_23B9ECE7C(v12, v15);
    v22 = &v15[*(v13 + 28)];
    if (v22[8])
    {
      v23 = v27;
      sub_23B9ECE7C(v15, v27);
    }

    else
    {
      v24 = *v22;
      v31 = v5;
      v32 = v4;
      v33 = v6;
      v34 = v7;
      type metadata accessor for SubscriptionStoreContainerContext(0, &v31);
      type metadata accessor for SubscriptionStoreControlConfiguration(0, v4, v7, v25);
      v23 = v27;
      sub_23B9785B0(v24);
      sub_23B9ECF98(v15);
    }

    v26 = v29;
    swift_storeEnumTagMultiPayload();
    return (*(v28 + 32))(v21, v23, v26);
  }
}

uint64_t sub_23B9EB408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_23BBDD648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  sub_23B9EB580(v3, v6, &v12 - v9);
  if (__swift_getEnumTagSinglePayload(v10, 1, v6) != 1)
  {
    return (*(*(v6 - 8) + 32))(a2, v10, v6);
  }

  (*(v8 + 8))(v10, v7);
  return (*(*(v6 - 8) + 16))(a2, v3 + *(a1 + 52), v6);
}

uint64_t sub_23B9EB580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-1] - v7;
  sub_23B99FCE0(a1, &v17[-1] - v7, qword_27E19A490, qword_23BBEA4A0);
  v9 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v10 = qword_27E19A490;
    v11 = qword_23BBEA4A0;
    v12 = v8;
LABEL_6:
    sub_23B979910(v12, v10, v11);
    v13 = 0;
    goto LABEL_7;
  }

  sub_23B99FCE0(&v8[*(v9 + 24)], &v18, &qword_27E19A528, &unk_23BBEA560);
  sub_23B9ECF98(v8);
  if (!v19[0])
  {
    v10 = &qword_27E19A528;
    v11 = &unk_23BBEA560;
    v12 = &v18;
    goto LABEL_6;
  }

  sub_23B9ECFF4(v19, v17);
  sub_23B9ED050(&v18);
  v13 = v17[0];

  sub_23B9ED0A4(v17);
LABEL_7:
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A530, &unk_23BBF7D40);
  v14 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v14 ^ 1u, 1, a2);
}

uint64_t sub_23B9EB730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = OUTLINED_FUNCTION_8_11();
  type metadata accessor for SubscriptionStoreContainerContext(v7, v8);
  OUTLINED_FUNCTION_7();
  v105 = v10;
  v106 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_2();
  v103 = v12;
  v124 = v4;
  v125 = v3;
  v13 = OUTLINED_FUNCTION_8_11();
  type metadata accessor for NestedSubscriptionOptionContentView(v13, v14);
  OUTLINED_FUNCTION_7();
  v111 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_5();
  v110 = v17;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v18);
  v109 = &v90 - v19;
  v102 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_5();
  v96 = v21;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v22);
  v117 = &v90 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_2();
  v98 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_2();
  v95 = v27;
  MEMORY[0x28223BE20](v28);
  v94 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SubscriptionStoreControl(0, v4, v5, v30);
  OUTLINED_FUNCTION_7();
  v97 = v31;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_22_2();
  v93 = v33;
  v114 = v34;
  v35 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v104 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_5();
  v101 = v38;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v39);
  v100 = &v90 - v40;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v41);
  v99 = &v90 - v42;
  v44 = type metadata accessor for SubscriptionStoreControlConfiguration(0, v3, v6, v43);
  OUTLINED_FUNCTION_7();
  v115 = v45;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v90 - v47;
  v116 = v4;
  v124 = v4;
  v125 = v3;
  v107 = v6;
  v108 = v3;
  v118 = v5;
  v49 = OUTLINED_FUNCTION_8_11();
  type metadata accessor for SubscriptionStoreMainContainerContent.Kind(v49, v50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v51);
  v53 = &v90 - v52;
  v113 = v35;
  sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v119 = v55;
  v120 = v54;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v56);
  v58 = &v90 - v57;
  v59 = v112;
  sub_23B9EB10C(a1, v53);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v117;
    sub_23B9ECE7C(v53, v117);
    v61 = v96;
    sub_23B9ECEE0(v60, v96);
    v62 = v103;
    (*(v105 + 16))(v103, v59 + *(a1 + 52), v106);
    sub_23BABEC68(v61, v62, v110);
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_7();
    sub_23B9D2D88();
    v63 = *(v111 + 8);
    v64 = OUTLINED_FUNCTION_9_7();
    v63(v64);
    OUTLINED_FUNCTION_11_9();
    sub_23B9D2D88();
    OUTLINED_FUNCTION_1_17();
    WitnessTable = swift_getWitnessTable();
    v66 = sub_23B9ECF44();
    v130 = WitnessTable;
    v131 = v66;
    OUTLINED_FUNCTION_0();
    swift_getWitnessTable();
    sub_23BA82E14();
    v67 = OUTLINED_FUNCTION_9_7();
    v63(v67);
    v68 = OUTLINED_FUNCTION_11_9();
    v63(v68);
    sub_23B9ECF98(v117);
  }

  else
  {
    v117 = v58;
    v69 = v114;
    (*(v115 + 32))(v48, v53, v44);
    v70 = v94;
    v71 = v59;
    sub_23B9EB408(a1, v94);
    v72 = v95;
    sub_23B977BC0(v44);
    v73 = v93;
    sub_23BB1AFA0(v70, v72, v116, v93);
    v74 = v98;
    sub_23B99FCE0(v71, v98, qword_27E19A490, qword_23BBEA4A0);
    v75 = v102;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, 1, v102);
    v91 = v48;
    v92 = v44;
    if (EnumTagSinglePayload == 1)
    {
      sub_23B979910(v74, qword_27E19A490, qword_23BBEA4A0);
      bzero(&v124, 0x157uLL);
    }

    else
    {
      sub_23B99FCE0(v74 + *(v75 + 24), &v124, &qword_27E19A528, &unk_23BBEA560);
      sub_23B9ECF98(v74);
    }

    OUTLINED_FUNCTION_1_17();
    v77 = swift_getWitnessTable();
    sub_23BA2241C(&v124, v69, v77);
    sub_23B979910(&v124, &qword_27E19A528, &unk_23BBEA560);
    (*(v97 + 8))(v73, v69);
    v78 = sub_23B9ECF44();
    v122 = v77;
    v123 = v78;
    OUTLINED_FUNCTION_0();
    v79 = v113;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_11_9();
    sub_23B9D2D88();
    v80 = v101;
    OUTLINED_FUNCTION_9_7();
    sub_23B9D2D88();
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    v58 = v117;
    sub_23BA82D64();
    v81 = *(v104 + 8);
    v81(v80, v79);
    v82 = OUTLINED_FUNCTION_9_7();
    (v81)(v82);
    v83 = OUTLINED_FUNCTION_11_9();
    (v81)(v83);
    (*(v115 + 8))(v91, v92);
  }

  OUTLINED_FUNCTION_1_17();
  v84 = swift_getWitnessTable();
  v85 = sub_23B9ECF44();
  v128 = v84;
  v129 = v85;
  OUTLINED_FUNCTION_0();
  v86 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_12();
  v87 = swift_getWitnessTable();
  v126 = v86;
  v127 = v87;
  OUTLINED_FUNCTION_2_7();
  v88 = v120;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v119 + 8))(v58, v88);
}

uint64_t sub_23B9EBFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23B9EC094(a1, a3);
  v5 = OUTLINED_FUNCTION_12_8();
  v7 = *(type metadata accessor for SubscriptionStoreMainContainerContent(v5, v6) + 52);
  v8 = OUTLINED_FUNCTION_12_8();
  type metadata accessor for SubscriptionStoreContainerContext(v8, v9);
  OUTLINED_FUNCTION_4_1();
  return (*(v10 + 32))(a3 + v7, a2);
}

uint64_t sub_23B9EC094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23B9EC11C(uint64_t a1)
{
  sub_23B9ECDC4(319);
  if (v3 <= 0x3F)
  {
    v8 = 0;
    v10 = v2;
    v4 = *(a1 + 32);
    v7[0] = *(a1 + 16);
    v7[1] = v4;
    v5 = type metadata accessor for SubscriptionStoreContainerContext(319, v7);
    if (v6 <= 0x3F)
    {
      v9 = 0;
      v11 = v5;
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B9EC1AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = sub_23BBDC208();
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v49 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  v47 = v4;
  v48 = *(a3 + 16);
  v8 = *(v48 - 8);
  v9 = v7 - 1;
  v10 = *(v8 + 84);
  v11 = sub_23BBDCDB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v14 - 1;
  if ((v14 - 1) <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14 - 1;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v5 + 80);
  if (v6)
  {
    v20 = *(v5 + 64);
  }

  else
  {
    v20 = *(v5 + 64) + 1;
  }

  v21 = *(v12 + 80);
  v22 = *(*(v11 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v23 = (((v20 + ((v19 + 40) & ~v19) + ((v20 + v19) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8;
  v24 = v21 & 0xF8;
  v25 = v24 | 7;
  v26 = v24 | 7 | *(v8 + 80);
  v27 = *(v8 + 64) + (v24 | 7);
  v28 = v23 + v26 + 10;
  if (a2 <= v18)
  {
    goto LABEL_40;
  }

  v29 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + ((v24 + 87) & ~v25) + (v27 & ~v25) + (v28 & ~v26) + 12;
  v30 = 8 * v29;
  if (v29 <= 3)
  {
    v32 = ((a2 - v18 + ~(-1 << v30)) >> v30) + 1;
    if (HIWORD(v32))
    {
      v31 = *(a1 + v29);
      if (!v31)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

    if (v32 > 0xFF)
    {
      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

    if (v32 < 2)
    {
LABEL_40:
      if (v9 < v17)
      {
        v36 = (a1 + v28) & ~v26;
        if (v10 >= v16)
        {

          return __swift_getEnumTagSinglePayload(v36, v10, v48);
        }

        else
        {
          v37 = ((((v27 + v36) & ~v25) + 23) & 0xFFFFFFFFFFFFFFF8);
          if (v15 < 0)
          {
            v43 = (v25 + ((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v25;
            if (v13 < 0xFD)
            {
              v45 = *(((v22 + v43 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v45 >= 2)
              {
                v46 = (v45 + 2147483646) & 0x7FFFFFFF;
              }

              else
              {
                v46 = -1;
              }

              if ((v46 + 1) >= 2)
              {
                EnumTagSinglePayload = v46;
              }

              else
              {
                EnumTagSinglePayload = 0;
              }
            }

            else
            {
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, v13, v11);
            }

            if (EnumTagSinglePayload >= 2)
            {
              return EnumTagSinglePayload - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v38 = *v37;
            if (*v37 >= 0xFFFFFFFF)
            {
              LODWORD(v38) = -1;
            }

            return (v38 + 1);
          }
        }
      }

      if ((v49 & 0x80000000) != 0)
      {
        if (!v6)
        {
          return 0;
        }

        v42 = __swift_getEnumTagSinglePayload((a1 + v19 + 40) & ~v19, v6, v47);
        if (v42 < 2)
        {
          return 0;
        }

        v41 = v42 - 1;
      }

      else
      {
        v40 = *(a1 + 3);
        if (v40 >= 0xFFFFFFFF)
        {
          LODWORD(v40) = -1;
        }

        v41 = v40 + 1;
      }

      result = v41 - 1;
      if (v41 > 1)
      {
        return result;
      }

      return 0;
    }
  }

  v31 = *(a1 + v29);
  if (!*(a1 + v29))
  {
    goto LABEL_40;
  }

LABEL_30:
  v33 = (v31 - 1) << v30;
  if (v29 > 3)
  {
    v33 = 0;
  }

  if (v29)
  {
    if (v29 <= 3)
    {
      v34 = v29;
    }

    else
    {
      v34 = 4;
    }

    switch(v34)
    {
      case 2:
        v35 = *a1;
        break;
      case 3:
        v35 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v35 = *a1;
        break;
      default:
        v35 = *a1;
        break;
    }
  }

  else
  {
    v35 = 0;
  }

  return v18 + (v35 | v33) + 1;
}

void sub_23B9EC600(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v68 = sub_23BBDC208();
  v5 = *(v68 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v70 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  v69 = *(a4 + 16);
  v8 = *(v69 - 8);
  v71 = v7;
  v9 = v7 - 1;
  v10 = *(v8 + 84);
  v11 = sub_23BBDCDB8();
  v75 = 0;
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v14 - 1;
  if (v14 - 1 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14 - 1;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v5 + 80);
  v20 = *(v5 + 64);
  if (v6)
  {
    v21 = *(v5 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = ((v21 + v19) & ~v19) + v21;
  v23 = v22 + ((v19 + 40) & ~v19);
  v24 = *(v12 + 80) & 0xF8;
  v25 = v24 | 7;
  v26 = v24 | 7 | *(v8 + 80);
  v27 = *(v8 + 64) + (v24 | 7);
  v28 = *(*(v11 - 8) + 64);
  v29 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v30 = ((((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8) + v26 + 10;
  v31 = ((v24 + 87) & ~(v24 | 7)) + v29;
  v32 = v31 + (v27 & ~(v24 | 7)) + 1;
  v33 = v32 + (v30 & ~v26) + 2;
  v34 = 8 * v33;
  if (a3 > v18)
  {
    if (v33 <= 3)
    {
      v36 = ((a3 - v18 + ~(-1 << v34)) >> v34) + 1;
      if (HIWORD(v36))
      {
        v35 = 4;
      }

      else
      {
        if (v36 < 0x100)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (v36 >= 2)
        {
          v35 = v37;
        }

        else
        {
          v35 = 0;
        }
      }
    }

    else
    {
      v35 = 1;
    }

    v75 = v35;
  }

  if (v18 < a2)
  {
    v38 = ~v18 + a2;
    if (v33 < 4)
    {
      v39 = (v38 >> v34) + 1;
      if (v32 + (v30 & ~v26) != -2)
      {
        v43 = v38 & ~(-1 << v34);
        bzero(a1, v33);
        if (v33 == 3)
        {
          *a1 = v43;
          *(a1 + 2) = BYTE2(v43);
        }

        else
        {
          if (v33 != 2)
          {
            v55 = v75;
            *a1 = v38;
            goto LABEL_75;
          }

          *a1 = v43;
        }
      }
    }

    else
    {
      bzero(a1, v33);
      *a1 = v38;
      v39 = 1;
    }

    v55 = v75;
LABEL_75:
    switch(v55)
    {
      case 1:
        *(a1 + v33) = v39;
        return;
      case 2:
        *(a1 + v33) = v39;
        return;
      case 3:
        goto LABEL_130;
      case 4:
        *(a1 + v33) = v39;
        return;
      default:
        return;
    }
  }

  v40 = ~v19;
  v41 = ~v26;
  v42 = ~v25;
  switch(v75)
  {
    case 1:
      *(a1 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    case 2:
      *(a1 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    case 3:
LABEL_130:
      __break(1u);
      JUMPOUT(0x23B9ECD5CLL);
    case 4:
      *(a1 + v33) = 0;
      goto LABEL_43;
    default:
LABEL_43:
      if (!a2)
      {
        return;
      }

LABEL_44:
      if (v9 < v17)
      {
        v44 = ((a1 + v30) & v41);
        if (v17 < a2)
        {
          v45 = (v32 + 2);
          if (v45 <= 3)
          {
            v46 = ~(-1 << (8 * (v32 + 2)));
          }

          else
          {
            v46 = -1;
          }

          if (v32 != -2)
          {
            v47 = v46 & (~v17 + a2);
            if (v45 <= 3)
            {
              v48 = v32 + 2;
            }

            else
            {
              v48 = 4;
            }

            bzero(((a1 + v30) & v41), v45);
            switch(v48)
            {
              case 2:
                goto LABEL_68;
              case 3:
                goto LABEL_91;
              case 4:
                goto LABEL_121;
              default:
                goto LABEL_122;
            }
          }

          return;
        }

        if (v10 >= v16)
        {
          v56 = (a1 + v30) & v41;
          v57 = a2;
          v13 = v10;
          v11 = v69;
        }

        else
        {
          v44 = (&v44[v27] & v42);
          if (v16 < a2)
          {
            if (v31 <= 2)
            {
              v51 = ~(-1 << (8 * (v31 + 1)));
            }

            else
            {
              v51 = -1;
            }

            v47 = v51 & (~v16 + a2);
            if (v31 <= 2)
            {
              v52 = v31 + 1;
            }

            else
            {
              v52 = 4;
            }

            bzero(v44, (v31 + 1));
            switch(v52)
            {
              case 2:
LABEL_68:
                *v44 = v47;
                break;
              case 3:
LABEL_91:
                *v44 = v47;
                v44[2] = BYTE2(v47);
                break;
              case 4:
                goto LABEL_121;
              default:
                goto LABEL_122;
            }

            return;
          }

          v58 = ((v44 + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v59 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v59 = a2 - 1;
            }

            *v58 = v59;
            return;
          }

          v64 = v25 + ((((v58 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
          v44 = (v64 & v42);
          if (v15 < a2)
          {
            v47 = a2 - v14;
            goto LABEL_120;
          }

          v47 = a2 - v14;
          if (a2 >= v14)
          {
LABEL_120:
            bzero((v64 & v42), ((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
            if (v29 <= 3)
            {
LABEL_122:
              *v44 = v47;
            }

            else
            {
LABEL_121:
              *v44 = v47;
            }

            return;
          }

          v57 = a2 + 1;
          if (v13 < 0xFD)
          {
            v67 = &v44[v28 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFC)
            {
              *v67 = 0;
              *(v67 + 8) = 0;
              *v67 = a2 - 253;
            }

            else
            {
              *(v67 + 8) = a2 + 3;
            }

            return;
          }

          v56 = v64 & v42;
        }

        goto LABEL_82;
      }

      v49 = ((((v23 + 7) & 0xFFFFFFF8) + 350) & 0xFFFFFFF8) + 10;
      if (v9 < a2)
      {
        v50 = a2 - v71;
        bzero(a1, ((((v23 + 7) & 0xFFFFFFF8) + 350) & 0xFFFFFFF8) + 10);
        if (v49 <= 3)
        {
          *a1 = v50;
        }

        else
        {
          *a1 = v50;
        }

        return;
      }

      v53 = a2 - v71;
      if (a2 >= v71)
      {
        bzero(a1, ((((v23 + 7) & 0xFFFFFFF8) + 350) & 0xFFFFFFF8) + 10);
        if (v49 <= 3)
        {
          *a1 = v53;
        }

        else
        {
          *a1 = v53;
        }

        return;
      }

      v54 = a2 + 1;
      if ((v70 & 0x80000000) == 0)
      {
        if (v54 < 0)
        {
          *(a1 + 4) = 0u;
          *(a1 + 12) = 0u;
          *a1 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(a1 + 3) = a2;
        }

        return;
      }

      v60 = ((a1 + v19 + 40) & v40);
      if (a2 >= v70)
      {
        if (v22 <= 3)
        {
          v65 = ~(-1 << (8 * v22));
        }

        else
        {
          v65 = -1;
        }

        if (v22)
        {
          v62 = v65 & (a2 - v70);
          if (v22 <= 3)
          {
            v66 = v22;
          }

          else
          {
            v66 = 4;
          }

          bzero(v60, v22);
          switch(v66)
          {
            case 2:
LABEL_126:
              *v60 = v62;
              break;
            case 3:
LABEL_124:
              *v60 = v62;
              v60[2] = BYTE2(v62);
              break;
            case 4:
LABEL_125:
              *v60 = v62;
              break;
            default:
LABEL_113:
              *v60 = v62;
              break;
          }
        }
      }

      else
      {
        v13 = v6;
        if (a2 + 2 <= v6)
        {
          v56 = (a1 + v19 + 40) & v40;
          v57 = a2 + 2;
          v11 = v68;
LABEL_82:

          __swift_storeEnumTagSinglePayload(v56, v57, v13, v11);
          return;
        }

        if (v20 <= 3)
        {
          v61 = ~(-1 << (8 * v20));
        }

        else
        {
          v61 = -1;
        }

        if (v20)
        {
          v62 = v61 & (v54 - v6);
          if (v20 <= 3)
          {
            v63 = v20;
          }

          else
          {
            v63 = 4;
          }

          bzero(v60, v20);
          switch(v63)
          {
            case 2:
              goto LABEL_126;
            case 3:
              goto LABEL_124;
            case 4:
              goto LABEL_125;
            default:
              goto LABEL_113;
          }
        }
      }

      return;
  }
}

void sub_23B9ECDC4(uint64_t a1)
{
  if (!qword_27E19A518)
  {
    type metadata accessor for SubscriptionStoreContentConfiguration(255);
    v1 = sub_23BBDD648();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19A518);
    }
  }
}

uint64_t sub_23B9ECE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9ECEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B9ECF44()
{
  result = qword_27E19A520;
  if (!qword_27E19A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A520);
  }

  return result;
}

uint64_t sub_23B9ECF98(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9ED0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreControlConfiguration(319, *(a1 + 24), *(a1 + 40), a4);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for SubscriptionStoreContentConfiguration(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B9ED17C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 1);
  v6 = *a1;
  type metadata accessor for SubscriptionStoreControl(255, *a1, *(a1 + 2), a4);
  sub_23BBDA358();
  v7[0] = v6;
  v7[1] = v5;
  type metadata accessor for NestedSubscriptionOptionContentView(255, v7);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_1_17();
  swift_getWitnessTable();
  sub_23B9ECF44();
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_11()
{
  *(v0 + 288) = v1;
  *(v0 + 296) = v2;
  return 0;
}

uint64_t EntitlementTaskState.value.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  (*(v3 + 16))(v6 - v5);
  OUTLINED_FUNCTION_16_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(a1 + 16);
    v8 = OUTLINED_FUNCTION_35_0();
    v9(v8);
    OUTLINED_FUNCTION_20_2();
    v13 = v7;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_16_4();
    v15(v14);
    OUTLINED_FUNCTION_8_1();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t EntitlementTaskState<A>.transaction.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D0, &unk_23BBEA590);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - v1;
  v3 = OUTLINED_FUNCTION_16_4();
  sub_23B989ECC(v3, v4, &qword_27E19A5D0, &unk_23BBEA590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = OUTLINED_FUNCTION_6_9();
    return sub_23B989918(v5, v6, v7, v8);
  }

  else
  {
    sub_23B979910(v2, &qword_27E19A5D0, &unk_23BBEA590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8, &qword_23BBFC110);
    OUTLINED_FUNCTION_8_1();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t EntitlementTaskState.map<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  OUTLINED_FUNCTION_3_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v15 = OUTLINED_FUNCTION_40_0(v14);
  v16(v15);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    *a3 = *v4;
    OUTLINED_FUNCTION_39(result, v18, v19, v20);
    return swift_storeEnumTagMultiPayload();
  }

  if (result != 1 || ((*(v8 + 32))(v12, v4, v6), a1(v12), result = (*(v8 + 8))(v12, v6), !v3))
  {
    OUTLINED_FUNCTION_39(result, v18, v19, v20);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t EntitlementTaskState.map<A>(_:)()
{
  OUTLINED_FUNCTION_3_13();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = *(v4 + 16);
  OUTLINED_FUNCTION_3_2();
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_37_0();
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_46_0();
  v9 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23B9ED7B0()
{
  OUTLINED_FUNCTION_4_11();
  v2 = OUTLINED_FUNCTION_34_0();
  v3(v2);
  OUTLINED_FUNCTION_6_9();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = OUTLINED_FUNCTION_44_0();
      v6(v5);
      OUTLINED_FUNCTION_9_8();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_4();
      *(v1 + 104) = v7;
      *v7 = v8;
      v9 = OUTLINED_FUNCTION_32_0(v7);

      return v10(v9);
    }

    OUTLINED_FUNCTION_51_0();
    type metadata accessor for EntitlementTaskState(0, v16, v17, v18);
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    *v0 = *v12;
    type metadata accessor for EntitlementTaskState(0, v13, v14, v15);
    OUTLINED_FUNCTION_29_1();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_56_0();

  OUTLINED_FUNCTION_2_13();

  return v19();
}

uint64_t sub_23B9ED90C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23B9EDA08()
{
  OUTLINED_FUNCTION_3_13();
  v1 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  type metadata accessor for EntitlementTaskState(0, v1, v2, v3);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_56_0();

  OUTLINED_FUNCTION_2_13();

  return v4();
}

uint64_t sub_23B9EDAA0()
{
  OUTLINED_FUNCTION_3_13();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_1_16();

  return v1();
}

uint64_t EntitlementTaskState.flatMap<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_3_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v16 = OUTLINED_FUNCTION_40_0(v15);
  v17(v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v9 + 32))(v13, v4, v7);
      a1(v13);
      return (*(v9 + 8))(v13, v7);
    }

    type metadata accessor for EntitlementTaskState(0, a3, v19, v20);
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    *a4 = *v4;
    type metadata accessor for EntitlementTaskState(0, a3, v19, v20);
    OUTLINED_FUNCTION_29_1();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t EntitlementTaskState.flatMap<A>(_:)()
{
  OUTLINED_FUNCTION_3_13();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = *(v4 + 16);
  OUTLINED_FUNCTION_3_2();
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_37_0();
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_46_0();
  v9 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23B9EDDE0()
{
  OUTLINED_FUNCTION_4_11();
  v2 = OUTLINED_FUNCTION_34_0();
  v3(v2);
  OUTLINED_FUNCTION_6_9();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = OUTLINED_FUNCTION_44_0();
      v6(v5);
      OUTLINED_FUNCTION_9_8();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_4();
      *(v1 + 104) = v7;
      *v7 = v8;
      v9 = OUTLINED_FUNCTION_32_0(v7);

      return v10(v9);
    }

    OUTLINED_FUNCTION_51_0();
    type metadata accessor for EntitlementTaskState(0, v16, v17, v18);
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    *v0 = *v12;
    type metadata accessor for EntitlementTaskState(0, v13, v14, v15);
    OUTLINED_FUNCTION_29_1();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_56_0();

  OUTLINED_FUNCTION_2_13();

  return v19();
}

uint64_t sub_23B9EDF3C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23B9EE038()
{
  OUTLINED_FUNCTION_3_13();
  (*(v0[9] + 8))(v0[10], v0[8]);
  OUTLINED_FUNCTION_56_0();

  OUTLINED_FUNCTION_2_13();

  return v1();
}

uint64_t View.currentEntitlementTask(for:priority:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CurrentEntitlementViewModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  sub_23BBDD368();
  OUTLINED_FUNCTION_4_1();
  (*(v15 + 16))(v14, a3);
  v16 = (v14 + *(v10 + 20));
  *v16 = a1;
  v16[1] = a2;
  v17 = (v14 + *(v10 + 24));
  *v17 = a4;
  v17[1] = a5;

  v18 = OUTLINED_FUNCTION_35_0();
  MEMORY[0x23EEB43C0](v18);
  return sub_23B9EE218(v14);
}

uint64_t type metadata accessor for CurrentEntitlementViewModifier(uint64_t a1)
{
  result = qword_27E19A678;
  if (!qword_27E19A678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B9EE218(uint64_t a1)
{
  v2 = type metadata accessor for CurrentEntitlementViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9EE274(uint64_t a1)
{
  result = sub_23B9EE60C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B9EE2EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
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
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
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
    goto LABEL_22;
  }

LABEL_14:
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

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_23B9EE420(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23B9EE5E4);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
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
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_23B9EE60C()
{
  result = qword_27E19A668;
  if (!qword_27E19A668)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27E19A668);
  }

  return result;
}

uint64_t sub_23B9EE668(uint64_t *a1)
{
  type metadata accessor for CurrentEntitlementViewModifier(255);
  sub_23BBDA358();
  sub_23B9F3838(&qword_27E19A670, type metadata accessor for CurrentEntitlementViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_23B9EE718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDD368();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_23B9EE7DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDD368();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_23B9EE888(uint64_t a1)
{
  result = sub_23BBDD368();
  if (v2 <= 0x3F)
  {
    result = sub_23B975E04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B9EE930()
{
  v0 = type metadata accessor for SKLogger(0);
  __swift_allocate_value_buffer(v0, qword_27E19A5B8);
  __swift_project_value_buffer(v0, qword_27E19A5B8);
  return sub_23BBD9998();
}

uint64_t sub_23B9EE9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for CurrentEntitlementViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = (v3 + *(v9 + 28));
  v12 = *v10;
  v11 = v10[1];
  sub_23B9F3284(v3, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_23B9F32EC(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A688, &qword_23BBEA6A0) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A690, &qword_23BBEA6A8);
  v17 = *(v16 + 36);
  v18 = sub_23BBDD368();
  (*(*(v18 - 8) + 16))(&v15[v17], v3, v18);
  v19 = &v15[*(v16 + 40)];
  *v19 = v12;
  *(v19 + 1) = v11;
  *v15 = &unk_23BBEA698;
  *(v15 + 1) = v14;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A698, &qword_23BBEA6B0);
  (*(*(v20 - 8) + 16))(a2, a1, v20);
}

uint64_t sub_23B9EEB98(uint64_t a1)
{
  v1[87] = a1;
  v1[93] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8, &qword_23BBFC110);
  v1[94] = swift_task_alloc();
  v1[95] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6A0, &qword_23BBEA6B8);
  v1[96] = swift_task_alloc();
  v1[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6A8, &unk_23BBEA6C0);
  v1[98] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6B0, &unk_23BBF56B0);
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0, &qword_23BBEA5A0);
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6B8, &qword_23BBEA6D0);
  v1[110] = swift_task_alloc();
  v2 = type metadata accessor for CurrentEntitlementViewModifier(0);
  v1[111] = v2;
  v3 = *(v2 - 8);
  v1[112] = v3;
  v1[113] = *(v3 + 64);
  v1[114] = swift_task_alloc();
  v1[115] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6C0, &qword_23BBEA6D8);
  v1[116] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6C8, &qword_23BBEA6E0);
  v1[117] = v4;
  v1[118] = *(v4 - 8);
  v1[119] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6D0, &unk_23BBEA6E8);
  v1[120] = v5;
  v1[121] = *(v5 - 8);
  v1[122] = swift_task_alloc();
  v1[123] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D0, &unk_23BBEA590);
  v1[124] = swift_task_alloc();
  v6 = sub_23BBDC8A8();
  v1[125] = v6;
  v1[126] = *(v6 - 8);
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  v1[129] = swift_task_alloc();
  v7 = sub_23BBDCDB8();
  v1[130] = v7;
  v1[131] = *(v7 - 8);
  v1[132] = swift_task_alloc();
  sub_23BBDD308();
  v1[133] = sub_23BBDD2F8();
  v9 = sub_23BBDD2D8();
  v1[134] = v9;
  v1[135] = v8;

  return MEMORY[0x2822009F8](sub_23B9EF09C, v9, v8);
}

uint64_t sub_23B9EF09C()
{
  OUTLINED_FUNCTION_4_11();
  if (qword_27E1976D8 != -1)
  {
    swift_once();
  }

  v1 = v0[111];
  v2 = v0[87];
  v3 = type metadata accessor for SKLogger(0);
  v0[136] = __swift_project_value_buffer(v3, qword_27E19A5B8);
  sub_23B9EAEFC();
  v0[137] = v4;
  v0[138] = v5;
  sub_23BBDC5E8();
  v0[139] = sub_23BBDC5A8();
  v6 = (v2 + *(v1 + 20));
  v0[140] = *v6;
  v0[141] = v6[1];
  sub_23B9F3838(&qword_27E19A6D8, MEMORY[0x277CDD078]);
  v8 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23B9EF1DC, v8, v7);
}

uint64_t sub_23B9EF1DC()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BBDC4F8();

  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);

  return MEMORY[0x2822009F8](sub_23B9EF254, v2, v1);
}

uint64_t sub_23B9EF254()
{
  v50 = v0;
  v1 = v0[129];
  OUTLINED_FUNCTION_33_0(v1);
  if (v2)
  {
    sub_23B979910(v1, &qword_27E1987F0, &unk_23BBE5E10);
  }

  else
  {
    v3 = v0[128];
    v4 = v0[127];
    v5 = v0[126];
    v6 = v0[125];
    v7 = OUTLINED_FUNCTION_16_4();
    v8(v7);
    sub_23BBDCD28();
    sub_23BBDC858();
    v9 = sub_23B9A06CC(v3, v4);
    v10 = *(v5 + 8);
    v10(v4, v6);
    v10(v3, v6);
    if (v9)
    {
      v11 = v0[141];
      v12 = v0[140];
      sub_23BBDD768();

      v48 = 0xD00000000000002CLL;
      v49 = 0x800000023BBE0A10;
      MEMORY[0x23EEB5890](v12, v11);
      v13 = sub_23BBDD578();

      v14 = sub_23BBD9988();

      v15 = os_log_type_enabled(v14, v13);
      v16 = v0[138];
      if (v15)
      {
        v17 = v0[137];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 136446466;
        v47 = v19;
        v48 = 91;
        v49 = 0xE100000000000000;
        MEMORY[0x23EEB5890](v17, v16);
        MEMORY[0x23EEB5890](8285, 0xE200000000000000);
        v20 = sub_23BA5AB90(91, 0xE100000000000000, &v47);

        *(v18 + 4) = v20;
        *(v18 + 12) = 2082;
        v21 = sub_23BA5AB90(0xD00000000000002CLL, 0x800000023BBE0A10, &v47);

        *(v18 + 14) = v21;
        _os_log_impl(&dword_23B970000, v14, v13, "%{public}s%{public}s", v18, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_45_0();
        MEMORY[0x23EEB6DC0](v18, -1, -1);
      }

      else
      {
      }

      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_16();
      v46 = v40;
      v41 = swift_task_alloc();
      v0[142] = v41;
      *v41 = v0;
      v41[1] = sub_23B9EF810;
      v42 = OUTLINED_FUNCTION_25_2();

      return v46(v42);
    }

    (*(v0[131] + 8))(v0[132], v0[130]);
  }

  v22 = v0[119];
  v23 = v0[118];
  v24 = v0[117];
  v25 = v0[114];
  v26 = v0[112];
  v45 = v0[103];
  v44 = v0[87];
  sub_23BBDC688();
  v27 = OUTLINED_FUNCTION_16_4();
  sub_23B9F3284(v27, v28);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = swift_allocObject();
  sub_23B9F32EC(v25, v30 + v29);
  sub_23B9F3964(&qword_27E19A6E0, &qword_27E19A6C0, &qword_23BBEA6D8);
  sub_23BBDD9A8();
  MEMORY[0x23EEB6140](v24);
  sub_23BBDD3A8();
  sub_23BBDD958();
  (*(v23 + 8))(v22, v24);
  OUTLINED_FUNCTION_16_4();
  sub_23BBDD998();
  v31 = swift_task_alloc();
  v0[143] = v31;
  *(v31 + 16) = v44;
  swift_asyncLet_begin();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v45);
  if (qword_27E1977B8 != -1)
  {
    swift_once();
  }

  v35 = qword_27E1BFD68;
  v0[144] = qword_27E1BFD68;

  return MEMORY[0x2822009F8](sub_23B9EFAA0, v35, 0);
}

uint64_t sub_23B9EF810()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  v2 = *(v0 + 992);
  v3 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B979910(v2, &qword_27E19A5D0, &unk_23BBEA590);
  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 1080);
  v7 = *(v0 + 1072);

  return MEMORY[0x2822009F8](sub_23B9EF950, v7, v6);
}

uint64_t sub_23B9EF950()
{

  v0 = OUTLINED_FUNCTION_6_9();
  v1(v0);
  OUTLINED_FUNCTION_8_12();

  OUTLINED_FUNCTION_1_16();

  return v2();
}

uint64_t sub_23B9EFAA0()
{
  OUTLINED_FUNCTION_3_13();
  v1 = OUTLINED_FUNCTION_36_0();
  sub_23BA9BE1C(v1, v2, v0[101]);
  v3 = v0[135];
  v4 = v0[134];

  return MEMORY[0x2822009F8](sub_23B9EFB08, v4, v3);
}

uint64_t sub_23B9EFB08()
{
  v1 = v0[111];
  v2 = v0[101];
  if (__swift_getEnumTagSinglePayload(v2, 1, v0[103]) == 1)
  {
    v3 = v0[87];
    sub_23B979910(v2, &qword_27E19A6B0, &unk_23BBF56B0);
    v4 = (v3 + *(v1 + 24));
    v0[145] = *v4;
    v0[146] = v4[1];
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_16();
    v21 = v5;
    v6 = swift_task_alloc();
    v0[147] = v6;
    *v6 = v0;
    v7 = sub_23B9EFD0C;
  }

  else
  {
    v8 = v0[87];
    OUTLINED_FUNCTION_47_0();
    sub_23B989918(v9, v10, v11, v12);
    v13 = (v8 + *(v1 + 24));
    v0[148] = *v13;
    v0[149] = v13[1];
    OUTLINED_FUNCTION_47_0();
    sub_23B989ECC(v14, v15, v16, v17);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_16();
    v21 = v18;
    v6 = swift_task_alloc();
    v0[150] = v6;
    *v6 = v0;
    v7 = sub_23B9EFE68;
  }

  v6[1] = v7;
  v19 = OUTLINED_FUNCTION_25_2();

  return v21(v19);
}

uint64_t sub_23B9EFD0C()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;
  v4 = v1[124];
  *v3 = *v0;

  sub_23B979910(v4, &qword_27E19A5D0, &unk_23BBEA590);
  v5 = v1[145];
  v2[152] = v1[146];
  v2[151] = v5;
  OUTLINED_FUNCTION_23_3();
  v6 = v1[109];

  return MEMORY[0x282200928](v2 + 2, v6);
}

uint64_t sub_23B9EFE68()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  v2 = *(v0 + 992);
  v3 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B979910(v2, &qword_27E19A5D0, &unk_23BBEA590);
  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 1080);
  v7 = *(v0 + 1072);

  return MEMORY[0x2822009F8](sub_23B9EFFA8, v7, v6);
}

uint64_t sub_23B9EFFA8()
{
  v27 = v0;
  OUTLINED_FUNCTION_52_0();
  v3 = *(v0 + 864);
  v4 = *(v0 + 824);
  v5 = *(v0 + 816);
  sub_23B979910(v5, &qword_27E19A6B0, &unk_23BBF56B0);
  sub_23B989ECC(v3, v5, qword_27E19A5E0, &qword_23BBEA5A0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
  sub_23BBDD768();

  v25 = 0xD00000000000002FLL;
  v26 = 0x800000023BBE09E0;
  MEMORY[0x23EEB5890](v2, v1);

  LOBYTE(v4) = sub_23BBDD578();

  v9 = sub_23BBD9988();

  if (os_log_type_enabled(v9, v4))
  {
    v23 = *(v0 + 864);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_31_0(4.8752e-34);
    MEMORY[0x23EEB5890](8285, 0xE200000000000000);
    sub_23BA5AB90(v25, v26, &v24);

    v16 = OUTLINED_FUNCTION_38(v12, v13, v14, v15);

    *(v10 + 14) = v16;
    OUTLINED_FUNCTION_54(&dword_23B970000, v17, v18, "%{public}s%{public}s");
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v11, -1, -1);
    OUTLINED_FUNCTION_45_0();

    v19 = v23;
  }

  else
  {
    v20 = *(v0 + 864);

    v19 = v20;
  }

  sub_23B979910(v19, qword_27E19A5E0, &qword_23BBEA5A0);
  *(v0 + 1208) = *(v0 + 1184);
  OUTLINED_FUNCTION_23_3();
  v21 = *(v0 + 872);

  return MEMORY[0x282200928](v0 + 16, v21);
}

uint64_t sub_23B9F0244()
{
  OUTLINED_FUNCTION_41_0();
  v1 = v0[151];
  v2 = v0[107];
  v3 = v0[102];
  sub_23B989ECC(v0[109], v2, qword_27E19A5E0, &qword_23BBEA5A0);
  if (sub_23B9F19D0(v3, v2))
  {
    sub_23B989ECC(v0[107], v0[124], qword_27E19A5E0, &qword_23BBEA5A0);
    swift_storeEnumTagMultiPayload();
    v14 = (v1 + *v1);
    v4 = swift_task_alloc();
    v0[153] = v4;
    *v4 = v0;
    v4[1] = sub_23B9F0420;
    v5 = OUTLINED_FUNCTION_25_2();

    return v14(v5);
  }

  else
  {
    sub_23B979910(v0[102], &qword_27E19A6B0, &unk_23BBF56B0);

    v7 = OUTLINED_FUNCTION_49();
    sub_23B989ECC(v7, v3, qword_27E19A5E0, &qword_23BBEA5A0);
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
    v11 = OUTLINED_FUNCTION_18_8();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_23B9F0420()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  v2 = *(v0 + 992);
  v3 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B979910(v2, &qword_27E19A5D0, &unk_23BBEA590);
  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 1080);
  v7 = *(v0 + 1072);

  return MEMORY[0x2822009F8](sub_23B9F0560, v7, v6);
}

uint64_t sub_23B9F0560()
{
  v67 = v0;
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[100];
  v4 = v0[98];
  v5 = v0[97];
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
  v9 = *(v5 + 48);
  v10 = &qword_27E19A6B0;
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_47_0();
  sub_23B989ECC(v11, v12, v13, v14);
  OUTLINED_FUNCTION_47_0();
  sub_23B989ECC(v15, v16, v17, v18);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v1);
  v20 = v0[103];
  if (EnumTagSinglePayload == 1)
  {
    sub_23B979910(v0[100], &qword_27E19A6B0, &unk_23BBF56B0);
    OUTLINED_FUNCTION_33_0(v4 + v9);
    if (!v21)
    {
      goto LABEL_8;
    }

    v22 = v0[98];

    sub_23B979910(v22, &qword_27E19A6B0, &unk_23BBF56B0);
LABEL_21:
    v38 = v0[102];
    goto LABEL_22;
  }

  sub_23B989ECC(v0[98], v0[99], &qword_27E19A6B0, &unk_23BBF56B0);
  OUTLINED_FUNCTION_33_0(v4 + v9);
  if (v21)
  {
    v23 = v0[99];
    sub_23B979910(v0[100], &qword_27E19A6B0, &unk_23BBF56B0);
    sub_23B979910(v23, qword_27E19A5E0, &qword_23BBEA5A0);
LABEL_8:
    v24 = v0[98];
    v25 = &qword_27E19A6A8;
    v26 = &unk_23BBEA6C0;
LABEL_9:
    sub_23B979910(v24, v25, v26);
    goto LABEL_10;
  }

  v40 = v0[96];
  v41 = v0[93];
  v42 = *(v0[95] + 48);
  v3 = qword_27E19A5E0;
  v10 = &qword_23BBEA5A0;
  sub_23B989ECC(v0[99], v40, qword_27E19A5E0, &qword_23BBEA5A0);
  sub_23B989918(v4 + v9, v40 + v42, qword_27E19A5E0, &qword_23BBEA5A0);
  v43 = __swift_getEnumTagSinglePayload(v40, 1, v41);
  if (v43 == 1)
  {
    v44 = v0[93];
    sub_23B979910(v0[100], &qword_27E19A6B0, &unk_23BBF56B0);
    if (__swift_getEnumTagSinglePayload(v40 + v42, 1, v44) == 1)
    {
      v45 = v0[99];
      v20 = v0[98];
      v2 = qword_27E19A5E0;
      sub_23B979910(v0[96], qword_27E19A5E0, &qword_23BBEA5A0);
      sub_23B979910(v45, qword_27E19A5E0, &qword_23BBEA5A0);
      sub_23B979910(v20, &qword_27E19A6B0, &unk_23BBF56B0);
LABEL_20:

      goto LABEL_21;
    }

LABEL_18:
    v50 = v0[99];
    v51 = v0[98];
    sub_23B979910(v0[96], &qword_27E19A6A0, &qword_23BBEA6B8);
    sub_23B979910(v50, qword_27E19A5E0, &qword_23BBEA5A0);
    v25 = &qword_27E19A6B0;
    v26 = &unk_23BBF56B0;
    v24 = v51;
    goto LABEL_9;
  }

  v46 = v0[93];
  sub_23B989ECC(v0[96], v0[106], qword_27E19A5E0, &qword_23BBEA5A0);
  v47 = __swift_getEnumTagSinglePayload(v40 + v42, 1, v46);
  v48 = v0[106];
  v49 = v0[100];
  if (v47 == 1)
  {
    sub_23B979910(v0[100], &qword_27E19A6B0, &unk_23BBF56B0);
    sub_23B979910(v48, &qword_27E19A5D8, &qword_23BBFC110);
    goto LABEL_18;
  }

  v61 = v0[99];
  v63 = v0[98];
  v10 = v0[96];
  v52 = v0[94];
  v3 = &qword_27E19A5D8;
  sub_23B989918(v40 + v42, v52, &qword_27E19A5D8, &qword_23BBFC110);
  sub_23BBDC758();
  sub_23B9F3838(&qword_27E19A6E8, MEMORY[0x277CDD128]);
  v20 = sub_23BBDC7A8();
  sub_23B979910(v52, &qword_27E19A5D8, &qword_23BBFC110);
  v2 = &unk_23BBF56B0;
  sub_23B979910(v49, &qword_27E19A6B0, &unk_23BBF56B0);
  sub_23B979910(v48, &qword_27E19A5D8, &qword_23BBFC110);
  sub_23B979910(v10, qword_27E19A5E0, &qword_23BBEA5A0);
  sub_23B979910(v61, qword_27E19A5E0, &qword_23BBEA5A0);
  sub_23B979910(v63, &qword_27E19A6B0, &unk_23BBF56B0);
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_10:
  OUTLINED_FUNCTION_52_0();
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_23BBDD768();
  MEMORY[0x23EEB5890](0xD000000000000028, 0x800000023BBE0990);
  MEMORY[0x23EEB5890](v10, v3);
  MEMORY[0x23EEB5890](0xD00000000000001ALL, 0x800000023BBE09C0);
  v27 = sub_23BBDD578();

  v20 = sub_23BBD9988();

  v28 = os_log_type_enabled(v20, v27);
  v2 = v0[138];
  if (v28)
  {
    v62 = v0[102];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_31_0(4.8752e-34);
    MEMORY[0x23EEB5890](8285, 0xE200000000000000);
    sub_23BA5AB90(v65, v66, &v64);

    v35 = OUTLINED_FUNCTION_38(v31, v32, v33, v34);

    *(v29 + 14) = v35;
    OUTLINED_FUNCTION_54(&dword_23B970000, v36, v37, "%{public}s%{public}s");
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v30, -1, -1);
    OUTLINED_FUNCTION_45_0();

    v38 = v62;
  }

  else
  {
    v39 = v0[102];

    v38 = v39;
  }

LABEL_22:
  sub_23B979910(v38, &qword_27E19A6B0, &unk_23BBF56B0);
  v53 = OUTLINED_FUNCTION_49();
  sub_23B989ECC(v53, v2, qword_27E19A5E0, &qword_23BBEA5A0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v20);
  v57 = OUTLINED_FUNCTION_18_8();

  return MEMORY[0x2822009F8](v57, v58, v59);
}

uint64_t sub_23B9F0BD0()
{
  OUTLINED_FUNCTION_3_13();
  v1 = OUTLINED_FUNCTION_36_0();
  sub_23BA9BF0C(v1, v2, *(v0 + 856));
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1232) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_8(v3);

  return v6(v5);
}

uint64_t sub_23B9F0C48()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 1080);
    v8 = *(v3 + 1072);
    v9 = sub_23B9F159C;
  }

  else
  {
    v7 = *(v3 + 1080);
    v8 = *(v3 + 1072);
    v9 = sub_23B9F0D60;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23B9F0D60()
{
  OUTLINED_FUNCTION_4_11();
  v1 = v0[105];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[93]) == 1)
  {
    v2 = v0[102];
    sub_23B979910(v0[107], qword_27E19A5E0, &qword_23BBEA5A0);
    sub_23B979910(v2, &qword_27E19A6B0, &unk_23BBF56B0);
    sub_23B979910(v0[105], qword_27E19A5E0, &qword_23BBEA5A0);
    v3 = OUTLINED_FUNCTION_17_6();

    return MEMORY[0x282200920](v3);
  }

  else
  {
    sub_23B979910(v1, qword_27E19A5E0, &qword_23BBEA5A0);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    v0[155] = v4;
    *v4 = v5;
    v4[1] = sub_23B9F0EA8;
    v6 = v0[141];
    v7 = v0[140];
    v8 = v0[104];

    return MEMORY[0x28212C510](v8, v7, v6);
  }
}

uint64_t sub_23B9F0EA8()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_42_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;

  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1080);
  v6 = *(v0 + 1072);

  return MEMORY[0x2822009F8](sub_23B9F0FB4, v6, v5);
}

uint64_t sub_23B9F0FB4()
{
  OUTLINED_FUNCTION_41_0();
  if (sub_23B9F19D0(*(v2 + 816), *(v2 + 832)))
  {
    v4 = *(v2 + 1208);
    sub_23B989ECC(*(v2 + 832), *(v2 + 992), qword_27E19A5E0, &qword_23BBEA5A0);
    OUTLINED_FUNCTION_35_0();
    swift_storeEnumTagMultiPayload();
    v14 = (v4 + *v4);
    v5 = swift_task_alloc();
    *(v2 + 1248) = v5;
    *v5 = v2;
    v5[1] = sub_23B9F1160;
    v6 = OUTLINED_FUNCTION_25_2();

    return v14(v6);
  }

  else
  {
    OUTLINED_FUNCTION_48_0();
    sub_23B979910(v3, &qword_27E19A6B0, &unk_23BBF56B0);
    sub_23B989ECC(v0, v3, qword_27E19A5E0, &qword_23BBEA5A0);
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
    v11 = OUTLINED_FUNCTION_19_4();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_23B9F1160()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  v2 = *(v0 + 992);
  v3 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B979910(v2, &qword_27E19A5D0, &unk_23BBEA590);
  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 1080);
  v7 = *(v0 + 1072);

  return MEMORY[0x2822009F8](sub_23B9F12A0, v7, v6);
}

uint64_t sub_23B9F12A0()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_48_0();
  sub_23B979910(v2, &qword_27E19A6B0, &unk_23BBF56B0);
  sub_23B989ECC(v0, v2, qword_27E19A5E0, &qword_23BBEA5A0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v1);
  v6 = OUTLINED_FUNCTION_19_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23B9F1338()
{
  OUTLINED_FUNCTION_3_13();
  v1 = OUTLINED_FUNCTION_36_0();
  sub_23BA9BF0C(v1, v2, v0[104]);
  v3 = v0[135];
  v4 = v0[134];

  return MEMORY[0x2822009F8](sub_23B9F13A0, v4, v3);
}

uint64_t sub_23B9F13A0()
{
  OUTLINED_FUNCTION_3_13();
  sub_23B979910(*(v0 + 832), qword_27E19A5E0, &qword_23BBEA5A0);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1232) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_8(v1);

  return v4(v3);
}

uint64_t sub_23B9F1440()
{

  v0 = OUTLINED_FUNCTION_35_0();
  v1(v0);
  OUTLINED_FUNCTION_8_12();

  OUTLINED_FUNCTION_1_16();

  return v2();
}

uint64_t sub_23B9F159C()
{
  OUTLINED_FUNCTION_41_0();
  v1 = v0[102];
  v2 = v0[93];
  sub_23B979910(v0[107], qword_27E19A5E0, &qword_23BBEA5A0);
  sub_23B979910(v1, &qword_27E19A6B0, &unk_23BBF56B0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  sub_23B979910(v0[105], qword_27E19A5E0, &qword_23BBEA5A0);
  v6 = OUTLINED_FUNCTION_17_6();

  return MEMORY[0x282200920](v6);
}

uint64_t sub_23B9F1658(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_23BBDC758();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B9F1718, 0, 0);
}

uint64_t sub_23B9F1718()
{
  OUTLINED_FUNCTION_41_0();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8, &qword_23BBFC110);
  sub_23BBDC798();
  v5 = sub_23BBDC748();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = (v4 + *(type metadata accessor for CurrentEntitlementViewModifier(0) + 20));
  if (v5 == *v8 && v7 == v8[1])
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23BBDDA88();
  }

  v11 = v0[1];

  return v11(v10 & 1);
}

uint64_t sub_23B9F1820(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23B9F1840, 0, 0);
}

uint64_t sub_23B9F1840()
{
  OUTLINED_FUNCTION_3_13();
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for CurrentEntitlementViewModifier(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  v0[4] = v5;
  *v5 = v6;
  v5[1] = sub_23B9F18F0;
  v7 = v0[2];

  return MEMORY[0x28212C510](v7, v4, v3);
}

uint64_t sub_23B9F18F0()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  OUTLINED_FUNCTION_2_13();

  return v3();
}

uint64_t sub_23B9F19D0(char *a1, uint64_t a2)
{
  v80 = a2;
  v81 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6A0, &qword_23BBEA6B8);
  MEMORY[0x28223BE20](v79);
  v3 = &v68 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6F8, &qword_23BBEA720);
  MEMORY[0x28223BE20](v72);
  v74 = &v68 - v4;
  v5 = sub_23BBDC758();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8, &qword_23BBFC110);
  MEMORY[0x28223BE20](v9);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v68 - v12;
  MEMORY[0x28223BE20](v13);
  v68 = &v68 - v14;
  MEMORY[0x28223BE20](v15);
  v77 = &v68 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6B0, &unk_23BBF56B0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0, &qword_23BBEA5A0);
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v68 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v68 - v32;
  sub_23B989ECC(v81, v21, &qword_27E19A6B0, &unk_23BBF56B0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    v34 = &qword_27E19A6B0;
    v35 = &unk_23BBF56B0;
    v36 = v21;
LABEL_21:
    sub_23B979910(v36, v34, v35);
    v40 = 1;
    return v40 & 1;
  }

  sub_23B989918(v21, v33, qword_27E19A5E0, &qword_23BBEA5A0);
  sub_23B989ECC(v33, v30, qword_27E19A5E0, &qword_23BBEA5A0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v9) == 1)
  {
    v27 = v30;
    v37 = v80;
    goto LABEL_7;
  }

  v38 = v78;
  sub_23B989918(v30, v78, &qword_27E19A5D8, &qword_23BBFC110);
  v37 = v80;
  sub_23B989ECC(v80, v27, qword_27E19A5E0, &qword_23BBEA5A0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v9) != 1)
  {
    v41 = v77;
    sub_23B989918(v27, v77, &qword_27E19A5D8, &qword_23BBFC110);
    v42 = v74;
    v43 = v74 + *(v72 + 48);
    sub_23B989ECC(v38, v74, &qword_27E19A5D8, &qword_23BBFC110);
    sub_23B989ECC(v41, v43, &qword_27E19A5D8, &qword_23BBFC110);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v68;
      sub_23B989ECC(v42, v68, &qword_27E19A5D8, &qword_23BBFC110);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v46 = v73;
      if (EnumCaseMultiPayload == 1)
      {
        v81 = v33;
        v48 = v75;
        v47 = v76;
        v49 = *(v75 + 32);
        v50 = v71;
        v49(v71, v44, v76);
        v49(v46, v43, v47);
LABEL_24:
        sub_23B979910(v42, &qword_27E19A5D8, &qword_23BBFC110);
        v60 = sub_23BBDC718();
        v62 = v61;
        v63 = *(v48 + 8);
        v63(v50, v47);
        v64 = sub_23BBDC718();
        v66 = v65;
        v63(v46, v47);
        v67 = MEMORY[0x23EEB1FC0](v60, v62, v64, v66);
        sub_23B9A940C(v64, v66);
        sub_23B9A940C(v60, v62);
        sub_23B979910(v77, &qword_27E19A5D8, &qword_23BBFC110);
        sub_23B979910(v78, &qword_27E19A5D8, &qword_23BBFC110);
        sub_23B979910(v81, qword_27E19A5E0, &qword_23BBEA5A0);
        v40 = v67 ^ 1;
        return v40 & 1;
      }

      sub_23B979910(v77, &qword_27E19A5D8, &qword_23BBFC110);
      sub_23B979910(v38, &qword_27E19A5D8, &qword_23BBFC110);
      sub_23B979910(v33, qword_27E19A5E0, &qword_23BBEA5A0);
    }

    else
    {
      v44 = v69;
      sub_23B989ECC(v42, v69, &qword_27E19A5D8, &qword_23BBFC110);
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A700, &qword_23BBEA728) + 48);
      v54 = swift_getEnumCaseMultiPayload();
      v46 = v73;
      if (v54 != 1)
      {
        v81 = v33;
        v48 = v75;
        v47 = v76;
        v57 = *(v75 + 32);
        v57(v71, v44, v76);
        v57(v46, v43, v47);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A708, &qword_23BBEA730);
        v59 = *(*(v58 - 8) + 8);
        v59(v43 + v53, v58);
        v59(v44 + v53, v58);
        v50 = v71;
        goto LABEL_24;
      }

      sub_23B979910(v77, &qword_27E19A5D8, &qword_23BBFC110);
      sub_23B979910(v38, &qword_27E19A5D8, &qword_23BBFC110);
      sub_23B979910(v33, qword_27E19A5E0, &qword_23BBEA5A0);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A708, &qword_23BBEA730);
      (*(*(v55 - 8) + 8))(v44 + v53, v55);
    }

    (*(v75 + 8))(v44, v76);
    v34 = &qword_27E19A6F8;
    v35 = &qword_23BBEA720;
    v36 = v42;
    goto LABEL_21;
  }

  sub_23B979910(v38, &qword_27E19A5D8, &qword_23BBFC110);
LABEL_7:
  sub_23B979910(v27, qword_27E19A5E0, &qword_23BBEA5A0);
  v39 = *(v79 + 48);
  sub_23B989ECC(v33, v3, qword_27E19A5E0, &qword_23BBEA5A0);
  sub_23B989ECC(v37, &v3[v39], qword_27E19A5E0, &qword_23BBEA5A0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v9) != 1)
  {
    sub_23B989ECC(v3, v24, qword_27E19A5E0, &qword_23BBEA5A0);
    if (__swift_getEnumTagSinglePayload(&v3[v39], 1, v9) != 1)
    {
      v51 = v70;
      sub_23B989918(&v3[v39], v70, &qword_27E19A5D8, &qword_23BBFC110);
      sub_23B9F3838(&qword_27E19A6E8, MEMORY[0x277CDD128]);
      v52 = sub_23BBDC7A8();
      sub_23B979910(v51, &qword_27E19A5D8, &qword_23BBFC110);
      sub_23B979910(v33, qword_27E19A5E0, &qword_23BBEA5A0);
      sub_23B979910(v24, &qword_27E19A5D8, &qword_23BBFC110);
      sub_23B979910(v3, qword_27E19A5E0, &qword_23BBEA5A0);
      v40 = v52 ^ 1;
      return v40 & 1;
    }

    sub_23B979910(v33, qword_27E19A5E0, &qword_23BBEA5A0);
    sub_23B979910(v24, &qword_27E19A5D8, &qword_23BBFC110);
LABEL_12:
    v34 = &qword_27E19A6A0;
    v35 = &qword_23BBEA6B8;
    v36 = v3;
    goto LABEL_21;
  }

  sub_23B979910(v33, qword_27E19A5E0, &qword_23BBEA5A0);
  if (__swift_getEnumTagSinglePayload(&v3[v39], 1, v9) != 1)
  {
    goto LABEL_12;
  }

  sub_23B979910(v3, qword_27E19A5E0, &qword_23BBEA5A0);
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_23B9F2414(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0, &qword_23BBEA5A0);
  v2[8] = swift_task_alloc();
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8, &qword_23BBFC110);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B9F24EC, 0, 0);
}

uint64_t sub_23B9F24EC()
{
  OUTLINED_FUNCTION_4_11();
  v0[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6D0, &unk_23BBEA6E8);
  v0[12] = sub_23BBDD978();
  v1 = OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_24_4(&qword_27E19A6F0);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  v0[13] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15_6(v3);

  return MEMORY[0x282200308](v5);
}

uint64_t sub_23B9F25C0()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    (*(v3 + 96))();
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23B9F26D4()
{
  OUTLINED_FUNCTION_4_11();
  v1 = v0[8];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[9]) == 1)
  {
    sub_23B979910(v1, qword_27E19A5E0, &qword_23BBEA5A0);
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);

    OUTLINED_FUNCTION_2_13();

    return v6();
  }

  else
  {
    sub_23B989918(v1, v0[10], &qword_27E19A5D8, &qword_23BBFC110);
    sub_23BBDD958();
    v0[15] = v8;
    OUTLINED_FUNCTION_10_7();
    v12 = v9;
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_23B9F28D0;
    v11 = v0[10];

    return v12(v11);
  }
}

uint64_t sub_23B9F284C()
{
  OUTLINED_FUNCTION_3_13();
  (*(v0 + 96))();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

uint64_t sub_23B9F28D0()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;
  *(v6 + 136) = v5;

  v7 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23B9F29D4()
{
  OUTLINED_FUNCTION_4_11();
  if (*(v0 + 136) == 1)
  {
    sub_23B989918(*(v0 + 80), *(v0 + 48), &qword_27E19A5D8, &qword_23BBFC110);
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);

    OUTLINED_FUNCTION_2_13();

    return v5();
  }

  else
  {
    sub_23B979910(*(v0 + 80), &qword_27E19A5D8, &qword_23BBFC110);
    *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6D0, &unk_23BBEA6E8);
    *(v0 + 96) = sub_23BBDD978();
    v7 = OUTLINED_FUNCTION_35_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_24_4(&qword_27E19A6F0);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 104) = v9;
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_15_6(v9);

    return MEMORY[0x282200308](v11);
  }
}

uint64_t sub_23B9F2B3C()
{
  OUTLINED_FUNCTION_3_13();
  v1[6] = v2;
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A710, &qword_23BBEA740);
  v1[8] = OUTLINED_FUNCTION_46_0();
  v3 = sub_23BBDCB38();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = OUTLINED_FUNCTION_46_0();
  v4 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23B9F2C18()
{
  OUTLINED_FUNCTION_4_11();
  v0[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A718, &qword_23BBEA748);
  v0[13] = sub_23BBDD978();
  sub_23BBDCB18();
  OUTLINED_FUNCTION_22_3();
  sub_23B9F3838(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  v0[14] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_8(v3);

  return MEMORY[0x282200308](v5);
}

uint64_t sub_23B9F2CF4()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    (*(v3 + 104))();
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23B9F2E08()
{
  OUTLINED_FUNCTION_41_0();
  v2 = v0[8];
  v1 = v0[9];
  OUTLINED_FUNCTION_33_0(v2);
  if (v3)
  {
    sub_23B979910(v2, &qword_27E19A710, &qword_23BBEA740);
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);

    OUTLINED_FUNCTION_2_13();

    return v8();
  }

  else
  {
    v10 = v0[11];
    v11 = v0[10];
    v12 = *(v11 + 32);
    v0[16] = v12;
    v0[17] = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v10, v2, v1);
    sub_23BBDD958();
    v0[18] = v13;
    OUTLINED_FUNCTION_10_7();
    v17 = v14;
    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_23B9F3014;
    v16 = v0[11];

    return v17(v16);
  }
}

uint64_t sub_23B9F2F90()
{
  OUTLINED_FUNCTION_3_13();
  (*(v0 + 104))();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

uint64_t sub_23B9F3014()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;
  *(v6 + 160) = v5;

  v7 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23B9F3118()
{
  OUTLINED_FUNCTION_4_11();
  if (*(v0 + 160) == 1)
  {
    (*(v0 + 128))(*(v0 + 48), *(v0 + 88), *(v0 + 72));
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);

    OUTLINED_FUNCTION_2_13();

    return v5();
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A718, &qword_23BBEA748);
    *(v0 + 104) = sub_23BBDD978();
    sub_23BBDCB18();
    OUTLINED_FUNCTION_22_3();
    sub_23B9F3838(v7, v8);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 112) = v9;
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_13_8(v9);

    return MEMORY[0x282200308](v11);
  }
}

uint64_t sub_23B9F3284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentEntitlementViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9F32EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentEntitlementViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9F3350()
{
  OUTLINED_FUNCTION_3_13();
  v2 = *(type metadata accessor for CurrentEntitlementViewModifier(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_23B9F3414;

  return sub_23B9EEB98(v0 + v3);
}

uint64_t sub_23B9F3414()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t objectdestroyTm_0()
{
  type metadata accessor for CurrentEntitlementViewModifier(0);
  OUTLINED_FUNCTION_37_0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_23BBDD368();
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_23B9F35E0()
{
  OUTLINED_FUNCTION_4_11();
  v3 = v2;
  v4 = *(type metadata accessor for CurrentEntitlementViewModifier(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B9F36B4;

  return sub_23B9F1658(v3, v0 + v5);
}

uint64_t sub_23B9F36B4()
{
  OUTLINED_FUNCTION_3_13();
  v2 = v1;
  OUTLINED_FUNCTION_21_4();
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_23B9F37A0()
{
  OUTLINED_FUNCTION_3_13();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_23B9F3414;

  return sub_23B9F1820(v3, v4);
}

uint64_t sub_23B9F3838(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_29_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B9F3880()
{
  result = qword_27E19A728;
  if (!qword_27E19A728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A688, &qword_23BBEA6A0);
    sub_23B9F3964(&qword_27E19A730, &qword_27E19A698, &qword_23BBEA6B0);
    sub_23B9F3964(qword_27E19A738, &qword_27E19A690, &qword_23BBEA6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A728);
  }

  return result;
}

uint64_t sub_23B9F3964(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_29_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_12()
{
  *(v1 - 80) = *(v0 + 752);
}

uint64_t OUTLINED_FUNCTION_24_4(unint64_t *a1)
{

  return sub_23B9F3964(a1, v1, v2);
}

void OUTLINED_FUNCTION_31_0(float a1)
{
  *v1 = a1;

  JUMPOUT(0x23EEB5890);
}

unint64_t OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v7 + 4) = v5;
  *(v7 + 12) = 2082;

  return sub_23BA5AB90(v6, v4, va);
}

void OUTLINED_FUNCTION_45_0()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_56_0()
{
}

uint64_t sub_23B9F3F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_23BB03A88(a1, a2);
    if (v3)
    {
    }
  }

  return OUTLINED_FUNCTION_17_0();
}

double sub_23B9F3F60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_23BB03A88(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_23B9F4E64(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_23B9F3FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_23BB03A88(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B9F4014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_23BB03A88(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

double sub_23B9F4060@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_23BB03CD0(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_23B9F4E64(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23B9F40C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = sub_23BB03CD0(a1);
    if (v4)
    {
      v5 = *(*(a2 + 56) + 24 * v3 + 16);
      v6 = OUTLINED_FUNCTION_17_0();
      sub_23B9BDCD4(v6, v7, v5);
    }
  }

  return OUTLINED_FUNCTION_17_0();
}

uint64_t sub_23B9F4134()
{
  v0 = sub_23BBDA908();
  if (v0)
  {
    return v0;
  }

  v1 = objc_opt_self();
  v2 = sub_23B9F4D84([v1 mainBundle]);
  if (!v2)
  {
    return sub_23BBDA8F8();
  }

  sub_23B9F3F60(0xD000000000000011, 0x800000023BBE0A60, v2, &v9);

  if (!v10)
  {
    sub_23B9F4DFC(&v9);
    return sub_23BBDA8F8();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_23BBDA8F8();
  }

  v3 = [v1 mainBundle];
  v4 = sub_23BBDBDC8();
  sub_23BBDBD78();
  v6 = v5;
  sub_23BBDBD88();
  OUTLINED_FUNCTION_1_19();
  sub_23BBDBDA8();
  OUTLINED_FUNCTION_1_19();
  sub_23BBDBD98();
  if (v6 <= 0.0)
  {
    v7 = sub_23BBDA8F8();

    return v7;
  }

  return v4;
}

double sub_23B9F429C@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_23BBE7F10;
  return result;
}

uint64_t sub_23B9F42C0(uint64_t a1, uint64_t a2)
{
  v20 = *(a2 + 16);
  v19 = *(v20 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBD9BF8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDA5E8();
  v15 = (*(v12 + 88))(v14, v11);
  v16 = *MEMORY[0x277CDF3C0];
  (*(v12 + 8))(v14, v11);
  if (v15 == v16)
  {
    (*(v7 + 16))(v10, v21 + *(a2 + 52), v6);
  }

  else
  {
    (*(v19 + 16))(v4, v21, v20);
  }

  return sub_23BBD9DF8();
}

uint64_t sub_23B9F4520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23B9F42C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B9F4548@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = v3;
  v7 = sub_23BBD9BF8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDA5E8();
  v11 = (*(v8 + 88))(v10, v7);
  v12 = *MEMORY[0x277CDF3C0];
  (*(v8 + 8))(v10, v7);
  if (v11 == v12)
  {
    v4 += *(a1 + 36);
  }

  return (*(*(*(a1 + 16) - 8) + 16))(a2, v4);
}

uint64_t sub_23B9F4698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_23BBDCF38() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ColorSchemeAdaptiveShapeStyleSameType(0, a3, a5, v7);
  return sub_23BBDCF38() & 1;
}

float sub_23B9F47D4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_23BBD9BF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = sub_23BBDA928();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  sub_23BBDA5E8();
  v16 = (*(v5 + 88))(v7, v4);
  if (v16 == *MEMORY[0x277CDF3D0])
  {
    (*(v5 + 104))(v10, *MEMORY[0x277CDF3C0], v4);
  }

  else if (v16 == *MEMORY[0x277CDF3C0])
  {
    (*(v5 + 104))(v10);
  }

  else
  {
    sub_23BBDA5E8();
    (*(v5 + 8))(v7, v4);
  }

  sub_23BBDA5F8();
  sub_23BBD9B58();
  (*(v12 + 8))(v15, v11);
  return v18;
}

void sub_23B9F4A6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = sub_23B9F47D4(a1, a2, a4);
  *(a3 + 4) = v5;
  *(a3 + 8) = v6;
  *(a3 + 12) = v7;
}

uint64_t sub_23B9F4AF8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v8 - v5;
  sub_23BBD9B58();
  swift_getAssociatedConformanceWitness();
  sub_23BBD9B58();
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

uint64_t sub_23B9F4C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  sub_23BBDDBB8();
  a3(v7, a1, a2);
  return sub_23BBDDBF8();
}

uint64_t sub_23B9F4C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_23BBDDBB8();
  a4(v8, a2, v6);
  return sub_23BBDDBF8();
}

uint64_t sub_23B9F4D84(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23BBDCE28();

  return v3;
}

uint64_t sub_23B9F4DFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEE0, qword_23BBEA8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9F4E64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B9F4ED8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B9F4F64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_23B9F513C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23B9F53C8);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

uint64_t sub_23B9F5428(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B9F5498(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_23B9F55F8(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
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

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
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
        goto LABEL_37;
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

      goto LABEL_24;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23B9F5810);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
      }

      return;
  }
}

uint64_t sub_23B9F585C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B9F58CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23B9F5A18(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v17 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v17))
      {
        v12 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v12 = v18;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v16 = (v13 >> v9) + 1;
      if (v8)
      {
        v19 = v13 & ~(-1 << v9);
        v20 = OUTLINED_FUNCTION_17_0();
        bzero(v20, v21);
        if (v8 == 3)
        {
          *a1 = v19;
          *(a1 + 2) = BYTE2(v19);
        }

        else if (v8 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      v14 = OUTLINED_FUNCTION_17_0();
      bzero(v14, v15);
      *a1 = v13;
      v16 = 1;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v8) = v16;
        return;
      case 2:
        *(a1 + v8) = v16;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *(a1 + v8) = v16;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      *(a1 + v8) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *(a1 + v8) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23B9F5C14);
    case 4:
      *(a1 + v8) = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_23B9F5C54(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_23B9F5E04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23B9F5F50(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23B9F6154);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_23B9F61D8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v17 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v6 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 16);
  v15(v6, v5);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = *(a1 + 24);
  v14 = *(a1 + 16);
  *(v8 + 16) = v14;
  *(v8 + 24) = v9;
  v10 = *(v3 + 32);
  v10(v8 + v7, v6, a1);
  (v15)(v6, v16, a1);
  v11 = swift_allocObject();
  *(v11 + 16) = v14;
  *(v11 + 24) = v9;
  result = (v10)(v11 + v7, v6, a1);
  v13 = v17;
  *v17 = sub_23B9F67FC;
  v13[1] = v8;
  v13[2] = sub_23B9F68E8;
  v13[3] = v11;
  return result;
}

uint64_t sub_23B9F637C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E0, &unk_23BBEAC90);
  if (swift_dynamicCast())
  {
    sub_23B98473C(v22, v24);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v7 = sub_23BBD95B8();
    if (v8)
    {
      *&v22[0] = v7;
      *(&v22[0] + 1) = v8;
      sub_23B9F6A08();
      v9 = sub_23BBDB678();
      v11 = v10;
      v13 = v12;
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_23B9F69A0(v22);
  }

  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v17 = qword_27E1BF840;
  result = sub_23BBDB648();
  v9 = result;
  v11 = v18;
  v13 = v19;
  v15 = v20;
LABEL_9:
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_23B9F65B8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E0, &unk_23BBEAC90);
  if (swift_dynamicCast())
  {
    sub_23B98473C(v22, v24);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v7 = sub_23BBD95A8();
    if (v8)
    {
      *&v22[0] = v7;
      *(&v22[0] + 1) = v8;
      sub_23B9F6A08();
      v9 = sub_23BBDB678();
      v11 = v10;
      v13 = v12;
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_23B9F69A0(v22);
  }

  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v17 = qword_27E1BF840;
  result = sub_23BBDB648();
  v9 = result;
  v11 = v18;
  v13 = v19;
  v15 = v20;
LABEL_9:
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  return result;
}

uint64_t objectdestroyTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for ErrorView(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_23B9F6900(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ErrorView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_23B9F69A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E8, &unk_23BBEC6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B9F6A08()
{
  result = qword_27E19A9F0;
  if (!qword_27E19A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A9F0);
  }

  return result;
}

unint64_t sub_23B9F6A60()
{
  result = qword_27E19A9F8;
  if (!qword_27E19A9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA00, qword_23BBEACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A9F8);
  }

  return result;
}

uint64_t sub_23B9F6AC8()
{
  v1 = v0;
  v2 = sub_23BBDCE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23BBDD018();
    v13 = v12;

    v14 = sub_23BB02B28(v11, v13);
    v50 = v1;
    v15 = v14;
    v17 = v16;
    sub_23B9A935C();
    sub_23BBDCDE8();
    sub_23B9A93B4(v15, v17);
    sub_23BB05734(v15, v17, v5);
    sub_23B9A940C(v15, v17);
    sub_23BBDCDD8();
    (*(v3 + 8))(v5, v2);
    v18 = v15;
    v1 = v50;
    v19 = sub_23B9A940C(v18, v17);
    v20 = sub_23BB02FE4(v8, v19);
    v22 = v21;

    v23 = sub_23BBD97D8();
    v25 = v24;
    sub_23B9A940C(v20, v22);
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = sub_23B9D4CA8(v23, v25);

  if (v26)
  {
    return 0;
  }

  sub_23BBC909C();
  if (!v27)
  {
    return 0;
  }

  v28 = v27;
  v29 = *(v1 + 40);
  v52 = *(v1 + 24);
  v53[0] = v29;
  *(v53 + 15) = *(v1 + 55);
  v30 = sub_23BBC9488(v27);
  if (!v30)
  {
LABEL_17:

    return 0;
  }

  v31 = v30;
  type metadata accessor for StoreViewPurchaseEvent(0);
  sub_23BBC9A58();
  if (!v32)
  {

    goto LABEL_17;
  }

  v33 = v32;
  sub_23BBC9CD8();
  if (!v34)
  {

    goto LABEL_17;
  }

  v35 = v34;
  v36 = sub_23BB024A0(v31, v28, 1);
  v37 = sub_23BB024A0(v33, v36, 0);
  v38 = sub_23BB024A0(v35, v37, 1);
  v39 = 0;
  v40 = 0;
  do
  {
    v41 = v39;
    v42 = &unk_284E56F08 + 16 * v40;
    v43 = *(v42 + 4);
    v44 = *(v42 + 5);

    v45 = sub_23BB03A88(v43, v44);
    v47 = v46;

    if (v47)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v51 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010, qword_23BBE7230);
      sub_23BBDD8D8();
      v38 = v51;

      sub_23B9A9318();
      sub_23BBDD8F8();
    }

    v39 = 1;
    v40 = 1;
  }

  while ((v41 & 1) == 0);
  return v38;
}

uint64_t type metadata accessor for StoreViewPurchaseEvent(uint64_t a1)
{
  result = qword_27E19AA08;
  if (!qword_27E19AA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B9F6F58(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 == 2147483646)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = type metadata accessor for ProductViewBaseEvent(0);
    if (*(*(v10 - 8) + 84) == a2)
    {
      v11 = v10;
      v12 = *(a3 + 24);
    }

    else
    {
      v11 = type metadata accessor for MintViewBasePurchaseEvent(0);
      v12 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_23B9F7044(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v9 = type metadata accessor for ProductViewBaseEvent(0);
    if (*(*(v9 - 8) + 84) == a3)
    {
      v10 = v9;
      v11 = *(a4 + 24);
    }

    else
    {
      v10 = type metadata accessor for MintViewBasePurchaseEvent(0);
      v11 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v6 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_23B9F710C(uint64_t a1, double a2)
{
  result = type metadata accessor for ProductViewBaseEvent(319);
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for MintViewBasePurchaseEvent(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23B9F71BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23B9F71FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B9F7274(double a1)
{
  v2 = sub_23BBDAD08();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982A0, qword_23BBEADC0);
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v19[-v12];
  v14 = v1[1];
  v15 = *(v1 + 16);
  v16 = v1[3];
  v20 = *v1;
  v21 = v14;
  v22 = v15;
  v23 = v16;

  sub_23BBDBFA8();
  sub_23BBDA568();
  sub_23B9F7474();
  sub_23B9F74D8(v17);
  sub_23BBDB758();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

unint64_t sub_23B9F7474()
{
  result = qword_27E1982C8;
  if (!qword_27E1982C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982A0, qword_23BBEADC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1982C8);
  }

  return result;
}

unint64_t sub_23B9F74D8(double a1)
{
  result = qword_27E197F30;
  if (!qword_27E197F30)
  {
    sub_23BBDAD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197F30);
  }

  return result;
}

uint64_t sub_23B9F7530()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982A0, qword_23BBEADC0);
  sub_23BBDAD08();
  sub_23B9F7474();
  sub_23B9F74D8(v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B9F75C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA18, qword_23BBF1050);
    OUTLINED_FUNCTION_10_2();
    if (*(v11 + 84) != v3)
    {
      return OUTLINED_FUNCTION_2_14(*(a3 + 28));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_23B9F76CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA18, qword_23BBF1050);
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 28)) = v4 + 1;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

void sub_23B9F77E8(uint64_t a1)
{
  sub_23B9FB36C(319, &qword_27E198820, type metadata accessor for SubscriptionOfferViewButtonConfiguration, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23B9FB36C(319, &qword_27E198D28, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23B9F78EC(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B9F78EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27E19AA30)
  {
    v4 = type metadata accessor for IdiomValue(0, &type metadata for SubscriptionOfferViewDetailLink.Style, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27E19AA30);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SubscriptionOfferViewDetailLink.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23B9F7A08);
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

unint64_t sub_23B9F7A44()
{
  result = qword_27E19AA38;
  if (!qword_27E19AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AA38);
  }

  return result;
}

uint64_t sub_23B9F7A98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v15[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA40, &qword_23BBEAED0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  v6 = (v15 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA48, &qword_23BBEAED8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  sub_23B9F7CD8(v2, v6);
  v15[4] = v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA50, &qword_23BBEAEE0);
  v12 = sub_23B9FA854();
  v13 = sub_23B9FAD04();
  sub_23BBDBA78();
  sub_23B979910(v6, &qword_27E19AA40, &qword_23BBEAED0);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v15[6] = v3;
  v15[7] = v11;
  v15[8] = v12;
  v15[9] = v13;
  swift_getOpaqueTypeConformance2();
  sub_23BBDBA28();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_23B9F7CD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v48 = type metadata accessor for SubscriptionOfferViewDetailLinkPlaceholder(0);
  MEMORY[0x28223BE20](v48);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AAF8, &qword_23BBEAF30);
  MEMORY[0x28223BE20](v44);
  v46 = &v39 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA88, &qword_23BBEAF00);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA78, &qword_23BBEAEF0);
  MEMORY[0x28223BE20](v45);
  v42 = (&v39 - v7);
  v8 = sub_23BBDA438();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - v15;
  v17 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99FCE0(a1, v16, &qword_27E198800, qword_23BBE5E20);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_23B979910(v16, &qword_27E198800, qword_23BBE5E20);
  }

  else
  {
    v39 = v19;
    sub_23B9FADB4(v16, v19);
    v20 = type metadata accessor for SubscriptionOfferViewDetailLink(0);
    sub_23B9B75DC();
    sub_23BBDA428();
    sub_23B9FAC9C(&qword_27E198E48, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    v21 = sub_23BBDD6A8();
    v22 = v43[1];
    v22(v10, v8);
    v23 = (v22)(v13, v8);
    if ((v21 & 1) == 0)
    {
      v43 = &v39;
      v28 = v39;
      MEMORY[0x28223BE20](v23);
      *(&v39 - 2) = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB00, &qword_23BBEAFA8);
      v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A168, &qword_23BBEAFB0);
      v30 = sub_23B97B518(&qword_27E19A198, &qword_27E19A168, &qword_23BBEAFB0, MEMORY[0x277CDEFF0]);
      v31 = sub_23B9FAF08();
      v49 = v29;
      v50 = &type metadata for SubscriptionOfferViewDetailLinkLabelStyle;
      v51 = v30;
      v52 = v31;
      swift_getOpaqueTypeConformance2();
      v32 = v41;
      sub_23BBDBFA8();
      v33 = *(a1 + *(v20 + 20));
      KeyPath = swift_getKeyPath();
      v35 = sub_23BB4CB20(v33);
      v36 = v32 + *(v40 + 36);
      *v36 = KeyPath;
      *(v36 + 8) = v35;
      v37 = v42;
      sub_23B9F882C(*(a1 + *(v20 + 28)), v42);
      sub_23B979910(v32, &qword_27E19AA88, &qword_23BBEAF00);
      sub_23B9FAF64(v37, v46);
      swift_storeEnumTagMultiPayload();
      sub_23B9FA994();
      sub_23B9FAC9C(&qword_27E19AAC8, type metadata accessor for SubscriptionOfferViewDetailLinkPlaceholder, &unk_23BBEB150);
      sub_23BBDACD8();
      sub_23B979910(v37, &qword_27E19AA78, &qword_23BBEAEF0);
      v26 = type metadata accessor for SubscriptionOfferViewButtonConfiguration;
      v27 = v28;
      return sub_23B9FAEA8(v27, v26);
    }

    sub_23B9FAEA8(v39, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
  }

  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199730, &unk_23BBE9850);
  swift_storeEnumTagMultiPayload();
  v24 = v48;
  v25 = *(v48 + 20);
  *(v4 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  *(v4 + *(v24 + 24)) = sub_23BBDC2A8() & 1;
  sub_23B9FB9B0(v4, v46, type metadata accessor for SubscriptionOfferViewDetailLinkPlaceholder);
  swift_storeEnumTagMultiPayload();
  sub_23B9FA994();
  sub_23B9FAC9C(&qword_27E19AAC8, type metadata accessor for SubscriptionOfferViewDetailLinkPlaceholder, &unk_23BBEB150);
  sub_23BBDACD8();
  v26 = type metadata accessor for SubscriptionOfferViewDetailLinkPlaceholder;
  v27 = v4;
  return sub_23B9FAEA8(v27, v26);
}

uint64_t sub_23B9F8418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A168, &qword_23BBEAFB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-v4];
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A178, &qword_23BBEB060);
  sub_23B9DBBEC();
  sub_23BBDBE98();
  sub_23B97B518(&qword_27E19A198, &qword_27E19A168, &qword_23BBEAFB0, MEMORY[0x277CDEFF0]);
  sub_23B9FAF08();
  sub_23BBDB6E8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23B9F85BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBD96B8();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_23BBDB668();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_23B9F8694@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A190, &unk_23BBE9870);
  MEMORY[0x28223BE20](v2);
  v4 = (&v11 - v3);
  if (sub_23BBDC2A8())
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }

  else
  {
    v6 = sub_23BBDBE38();
    v7 = (v4 + *(v2 + 36));
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F48, &qword_23BBE7130) + 28);
    v9 = *MEMORY[0x277CE1050];
    v10 = sub_23BBDBE58();
    (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
    *v7 = swift_getKeyPath();
    *v4 = v6;
    sub_23B9FAFEC(v4, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }
}

uint64_t sub_23B9F882C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v55 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AAB8, &qword_23BBEAF18);
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v5 = &v42 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB10, &qword_23BBEAFE0);
  v48 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v7 = &v42 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB18, &qword_23BBEAFE8);
  MEMORY[0x28223BE20](v50);
  v52 = &v42 - v8;
  v9 = type metadata accessor for InAppStoreButtonStyle(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA80, &qword_23BBEAEF8);
  v12 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v14 = &v42 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB20, &qword_23BBEAFF0);
  MEMORY[0x28223BE20](v51);
  v17 = &v42 - v16;
  if (a1)
  {
    v47 = v12;
    v48 = v15;
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    v18 = v9[5];
    *&v11[v18] = swift_getKeyPath();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
    swift_storeEnumTagMultiPayload();
    v19 = v9[6];
    *&v11[v19] = swift_getKeyPath();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
    swift_storeEnumTagMultiPayload();
    v20 = v9[7];
    *&v11[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199730, &unk_23BBE9850);
    swift_storeEnumTagMultiPayload();
    v11[v9[8]] = 2;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA88, &qword_23BBEAF00);
    v22 = sub_23B9FAB64();
    v23 = sub_23B9FAC9C(&qword_27E19A160, type metadata accessor for InAppStoreButtonStyle, &unk_23BBFF8D4);
    v43 = v21;
    v44 = v22;
    sub_23BBDB988();
    sub_23B9FAEA8(v11, type metadata accessor for InAppStoreButtonStyle);
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    v24 = v9[5];
    *&v11[v24] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v25 = v9[6];
    *&v11[v25] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v26 = v9[7];
    *&v11[v26] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v11[v9[8]] = 2;
    v56 = v21;
    v57 = v9;
    v58 = v22;
    v59 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = v17;
    v42 = v17;
    v29 = v49;
    sub_23BBDBA48();
    sub_23B9FAEA8(v11, type metadata accessor for InAppStoreButtonStyle);
    (*(v47 + 8))(v14, v29);
    v30 = v51;
    (*(v48 + 16))(v52, v28, v51);
    swift_storeEnumTagMultiPayload();
    v56 = v29;
    v57 = v9;
    v58 = OpaqueTypeConformance2;
    v59 = v23;
    swift_getOpaqueTypeConformance2();
    v31 = sub_23B9FAC48();
    v56 = v43;
    v57 = &type metadata for PlainInAppStoreButtonStyle;
    v58 = v44;
    v59 = v31;
    v32 = swift_getOpaqueTypeConformance2();
    v56 = v53;
    v57 = &type metadata for PlainInAppStoreButtonStyle;
    v58 = v32;
    v59 = v31;
    swift_getOpaqueTypeConformance2();
    sub_23BBDACD8();
    return (*(v48 + 8))(v42, v30);
  }

  else
  {
    LOBYTE(v56) = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA88, &qword_23BBEAF00);
    v46 = v34;
    v35 = sub_23B9FAB64();
    v36 = sub_23B9FAC48();
    sub_23BBDB988();
    v60[0] = 0;
    v56 = v34;
    v57 = &type metadata for PlainInAppStoreButtonStyle;
    v58 = v35;
    v59 = v36;
    v47 = swift_getOpaqueTypeConformance2();
    v37 = v53;
    sub_23BBDBA48();
    (*(v3 + 8))(v5, v37);
    v38 = v48;
    v39 = v54;
    (*(v48 + 16))(v52, v7, v54);
    swift_storeEnumTagMultiPayload();
    v40 = sub_23B9FAC9C(&qword_27E19A160, type metadata accessor for InAppStoreButtonStyle, &unk_23BBFF8D4);
    v56 = v46;
    v57 = v9;
    v58 = v35;
    v59 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v56 = v49;
    v57 = v9;
    v58 = v41;
    v59 = v40;
    swift_getOpaqueTypeConformance2();
    v56 = v37;
    v57 = &type metadata for PlainInAppStoreButtonStyle;
    v58 = v47;
    v59 = v36;
    swift_getOpaqueTypeConformance2();
    sub_23BBDACD8();
    return (*(v38 + 8))(v7, v39);
  }
}

uint64_t sub_23B9F906C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AAE0, &unk_23BBEAF20);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v26 - v4;
  v5 = sub_23BBDA438();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99FCE0(a1, v14, &qword_27E198800, qword_23BBE5E20);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_23B979910(v14, &qword_27E198800, qword_23BBE5E20);
  }

  else
  {
    sub_23B9FADB4(v14, v17);
    type metadata accessor for SubscriptionOfferViewDetailLink(0);
    sub_23B9B75DC();
    sub_23BBDA428();
    sub_23B9FAC9C(&qword_27E198E48, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    v18 = sub_23BBDD6A8();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v20 = (v19)(v11, v5);
    if ((v18 & 1) == 0)
    {
      MEMORY[0x28223BE20](v20);
      *(&v26 - 2) = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AAE8, &qword_23BC07EF0);
      sub_23B9FAE20();
      v24 = v26;
      sub_23BBDBFA8();
      sub_23B9FAEA8(v17, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
      v23 = v28;
      v22 = v29;
      (*(v27 + 32))(v29, v24, v28);
      v21 = 0;
      return __swift_storeEnumTagSinglePayload(v22, v21, 1, v23);
    }

    sub_23B9FAEA8(v17, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
  }

  v21 = 1;
  v23 = v28;
  v22 = v29;
  return __swift_storeEnumTagSinglePayload(v22, v21, 1, v23);
}

uint64_t sub_23B9F946C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23BBD96B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99FCE0(a1, v10, &qword_27E198800, qword_23BBE5E20);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_23B979910(v10, &qword_27E198800, qword_23BBE5E20);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    sub_23B9FADB4(v10, v13);
    (*(v5 + 16))(v7, v13, v4);
    v15 = sub_23BBDB668();
    v16 = v19;
    v21 = v20;
    v18 = v22;
    result = sub_23B9FAEA8(v13, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
    v17 = v21 & 1;
  }

  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v18;
  return result;
}

uint64_t sub_23B9F9690@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23BBDA9D8();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABF8, &qword_23BBEB1F0);
  return sub_23B9F96E8((a2 + *(v3 + 44)));
}

uint64_t sub_23B9F96E8@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v2 = sub_23BBDAFB8();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_23BBDAFD8();
  v28 = *(v9 - 8);
  v10 = v28;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_23BBDAFE8();
  sub_23BBDAFC8();
  v16 = *(v10 + 16);
  v16(v12, v15, v9);
  v17 = *(v3 + 16);
  v17(v5, v8, v2);
  v18 = v29;
  v16(v29, v12, v9);
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AC00, &qword_23BBEB1F8) + 48)];
  v20 = v26;
  v17(v19, v5, v26);
  v21 = *(v27 + 8);
  v22 = v8;
  v23 = v20;
  v21(v22, v20);
  v24 = *(v28 + 8);
  v24(v15, v9);
  v21(v5, v23);
  return (v24)(v12, v9);
}

uint64_t sub_23B9F997C@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v45 = a1;
  v46 = sub_23BBDA468();
  MEMORY[0x28223BE20](v46);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABE0, &qword_23BBEB1E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABE8, &qword_23BBEB1E8);
  MEMORY[0x28223BE20](v42);
  v10 = &v37 - v9;
  v43 = sub_23BBDC148();
  MEMORY[0x28223BE20](v43);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDA508();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABA0, &qword_23BBEB1C0);
  MEMORY[0x28223BE20](v19);
  v44 = &v37 - v20;
  if (*(v3 + *(type metadata accessor for SubscriptionOfferViewDetailLinkPlaceholder(0) + 24)) != 1)
  {
    v23 = *(v46 + 20);
    v24 = *MEMORY[0x277CE0118];
    v25 = sub_23BBDAA88();
    (*(*(v25 - 8) + 104))(&v5[v23], v24, v25);
    __asm { FMOV            V0.2D, #2.0 }

    *v5 = _Q0;
    sub_23B9FB9B0(v5, v8, MEMORY[0x277CDFC08]);
    swift_storeEnumTagMultiPayload();
    sub_23B9FB714();
    sub_23B9FAC9C(&qword_27E19ABB8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_23BBDACD8();
    return sub_23B9FAEA8(v5, MEMORY[0x277CDFC08]);
  }

  v38 = v10;
  v39 = v6;
  v40 = v8;
  sub_23B9B7604();
  sub_23BBDA4F8();
  sub_23B9FAC9C(&qword_27E19ABF0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBC0]);
  v21 = sub_23BBDCF38();
  v22 = *(v13 + 8);
  v22(v15, v12);
  if (v21)
  {
    v22(v18, v12);
  }

  else
  {
    sub_23BBDA4E8();
    v32 = sub_23BBDCF38();
    v22(v15, v12);
    v22(v18, v12);
    if ((v32 & 1) == 0)
    {
      sub_23B9B7604();
      (*(v13 + 16))(v38, v15, v12);
      swift_storeEnumTagMultiPayload();
      sub_23B9FAC9C(&qword_27E19ABA8, MEMORY[0x277CE1260], MEMORY[0x277CE1250]);
      sub_23B9FAC9C(&qword_27E19ABB0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBA8]);
      v36 = v44;
      sub_23BBDACD8();
      v22(v15, v12);
      goto LABEL_8;
    }
  }

  v33 = *MEMORY[0x277CE0118];
  v34 = sub_23BBDAA88();
  v35 = v41;
  (*(*(v34 - 8) + 104))(v41, v33, v34);
  sub_23B9FB9B0(v35, v38, MEMORY[0x277CE1260]);
  swift_storeEnumTagMultiPayload();
  sub_23B9FAC9C(&qword_27E19ABA8, MEMORY[0x277CE1260], MEMORY[0x277CE1250]);
  sub_23B9FAC9C(&qword_27E19ABB0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBA8]);
  v36 = v44;
  sub_23BBDACD8();
  sub_23B9FAEA8(v35, MEMORY[0x277CE1260]);
LABEL_8:
  sub_23B99FCE0(v36, v40, &qword_27E19ABA0, &qword_23BBEB1C0);
  swift_storeEnumTagMultiPayload();
  sub_23B9FB714();
  sub_23B9FAC9C(&qword_27E19ABB8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
  sub_23BBDACD8();
  return sub_23B979910(v36, &qword_27E19ABA0, &qword_23BBEB1C0);
}

uint64_t sub_23B9FA0B0()
{
  v0 = sub_23BBDA308();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = sub_23BBDC2A8();
  type metadata accessor for SubscriptionOfferViewDetailLinkPlaceholder(0);
  sub_23B9B70F0();
  if (v7)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CDFA10], v0);
    v8 = sub_23BBDA2F8();
    v9 = *(v1 + 8);
    v9(v3, v0);
    v9(v6, v0);
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      sub_23B9B70F0();
      v10 = sub_23BBDA2E8();
      v9(v6, v0);
    }
  }

  else
  {
    v10 = sub_23BBDA2E8();
    (*(v1 + 8))(v6, v0);
  }

  return v10 & 1;
}

uint64_t sub_23B9FA270@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = sub_23BBDB148();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB60, &qword_23BBEB1A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v19 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB68, &qword_23BBEB1A8);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB70, &qword_23BBEB1B0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  sub_23B9F997C(v8, v13);
  v16 = *(v1 + *(type metadata accessor for SubscriptionOfferViewDetailLinkPlaceholder(0) + 24));
  v17 = sub_23B9FA0B0();
  sub_23B9FA548(v16, v17 & 1);
  sub_23B979910(v8, &qword_27E19AB60, &qword_23BBEB1A0);
  sub_23BBDB118();
  sub_23B9FB540();
  sub_23BBDB968();
  (*(v3 + 8))(v5, v2);
  sub_23B979910(v11, &qword_27E19AB68, &qword_23BBEB1A8);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  sub_23B9FB8BC();

  sub_23BBDBA28();

  return sub_23B979910(v15, &qword_27E19AB70, &qword_23BBEB1B0);
}

uint64_t sub_23B9FA548(char a1, char a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABC8, &unk_23BBEB1C8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABD8, &qword_23BBEB1D8);
  MEMORY[0x28223BE20](v10);
  v12 = &v31[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB88, &qword_23BBEB1B8);
  MEMORY[0x28223BE20](v13);
  v15 = &v31[-v14];
  if (a1)
  {
    sub_23BA19634(a2 & 1, __src);
    v32 = 0;
    v16 = sub_23BBDC318();
    v18 = v17;
    v19 = v32;
    sub_23B99FCE0(v4, v15, &qword_27E19AB60, &qword_23BBEB1A0);
    v20 = &v15[*(v13 + 36)];
    memcpy(v20, __src, 0x59uLL);
    v20[89] = v19;
    *(v20 + 12) = v16;
    *(v20 + 13) = v18;
    sub_23B99FCE0(v15, v12, &qword_27E19AB88, &qword_23BBEB1B8);
    swift_storeEnumTagMultiPayload();
    sub_23B9FB5CC();
    sub_23B9FB800();
    sub_23BBDACD8();
    v21 = v15;
    v22 = &qword_27E19AB88;
    v23 = &qword_23BBEB1B8;
  }

  else
  {
    v24 = &v9[*(v7 + 36)];
    sub_23B974140(a2 & 1);
    v25 = sub_23BBDC318();
    v27 = v26;
    v28 = type metadata accessor for LayoutMetricsModifier(0);
    v24[*(v28 + 20)] = 1;
    v29 = &v24[*(v28 + 24)];
    *v29 = v25;
    v29[1] = v27;
    sub_23B99FCE0(v4, v9, &qword_27E19AB60, &qword_23BBEB1A0);
    sub_23B99FCE0(v9, v12, &qword_27E19ABC8, &unk_23BBEB1C8);
    swift_storeEnumTagMultiPayload();
    sub_23B9FB5CC();
    sub_23B9FB800();
    sub_23BBDACD8();
    v21 = v9;
    v22 = &qword_27E19ABC8;
    v23 = &unk_23BBEB1C8;
  }

  return sub_23B979910(v21, v22, v23);
}

unint64_t sub_23B9FA854()
{
  result = qword_27E19AA58;
  if (!qword_27E19AA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA40, &qword_23BBEAED0);
    sub_23B9FA8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AA58);
  }

  return result;
}

unint64_t sub_23B9FA8D8()
{
  result = qword_27E19AA60;
  if (!qword_27E19AA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA68, &qword_23BBEAEE8);
    sub_23B9FA994();
    sub_23B9FAC9C(&qword_27E19AAC8, type metadata accessor for SubscriptionOfferViewDetailLinkPlaceholder, &unk_23BBEB150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AA60);
  }

  return result;
}

unint64_t sub_23B9FA994()
{
  result = qword_27E19AA70;
  if (!qword_27E19AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA78, &qword_23BBEAEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA80, &qword_23BBEAEF8);
    type metadata accessor for InAppStoreButtonStyle(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA88, &qword_23BBEAF00);
    sub_23B9FAB64();
    sub_23B9FAC9C(&qword_27E19A160, type metadata accessor for InAppStoreButtonStyle, &unk_23BBFF8D4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAB8, &qword_23BBEAF18);
    sub_23B9FAC48();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AA70);
  }

  return result;
}

unint64_t sub_23B9FAB64()
{
  result = qword_27E19AA90;
  if (!qword_27E19AA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA88, &qword_23BBEAF00);
    sub_23B97B518(&qword_27E19AA98, &qword_27E19AAA0, &qword_23BBEAF08, MEMORY[0x277CDF028]);
    sub_23B97B518(&qword_27E19AAA8, &qword_27E19AAB0, &qword_23BBEAF10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AA90);
  }

  return result;
}

unint64_t sub_23B9FAC48()
{
  result = qword_27E19AAC0;
  if (!qword_27E19AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AAC0);
  }

  return result;
}

uint64_t sub_23B9FAC9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B9FAD04()
{
  result = qword_27E19AAD0;
  if (!qword_27E19AAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA50, &qword_23BBEAEE0);
    sub_23B97B518(&qword_27E19AAD8, &qword_27E19AAE0, &unk_23BBEAF20, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AAD0);
  }

  return result;
}

uint64_t sub_23B9FADB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B9FAE20()
{
  result = qword_27E19AAF0;
  if (!qword_27E19AAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAE8, &qword_23BC07EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AAF0);
  }

  return result;
}

uint64_t sub_23B9FAEA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23B9FAF08()
{
  result = qword_27E19AB08;
  if (!qword_27E19AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AB08);
  }

  return result;
}

uint64_t sub_23B9FAF64(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA78, &qword_23BBEAEF0);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B9FAFEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A190, &unk_23BBE9870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9FB070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28, &unk_23BBF3C90);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
    OUTLINED_FUNCTION_10_2();
    if (*(v11 + 84) != v3)
    {
      return OUTLINED_FUNCTION_2_14(*(a3 + 24));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_23B9FB174(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28, &unk_23BBF3C90);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 24)) = v4 + 1;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

void sub_23B9FB270(uint64_t a1)
{
  sub_23B9FB36C(319, &qword_27E19AB48, MEMORY[0x277CDDBB8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23B9FB36C(319, &qword_27E198D30, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23B9F78EC(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B9FB36C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23B9FB3E4()
{
  result = qword_27E19AB50;
  if (!qword_27E19AB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AB58, &qword_23BBEB110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA40, &qword_23BBEAED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AA50, &qword_23BBEAEE0);
    sub_23B9FA854();
    sub_23B9FAD04();
    swift_getOpaqueTypeConformance2();
    sub_23B9FAC9C(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AB50);
  }

  return result;
}

unint64_t sub_23B9FB540()
{
  result = qword_27E19AB78;
  if (!qword_27E19AB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AB68, &qword_23BBEB1A8);
    sub_23B9FB5CC();
    sub_23B9FB800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AB78);
  }

  return result;
}

unint64_t sub_23B9FB5CC()
{
  result = qword_27E19AB80;
  if (!qword_27E19AB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AB88, &qword_23BBEB1B8);
    sub_23B9FB658();
    sub_23B9A6A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AB80);
  }

  return result;
}

unint64_t sub_23B9FB658()
{
  result = qword_27E19AB90;
  if (!qword_27E19AB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AB60, &qword_23BBEB1A0);
    sub_23B9FB714();
    sub_23B9FAC9C(&qword_27E19ABB8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AB90);
  }

  return result;
}

unint64_t sub_23B9FB714()
{
  result = qword_27E19AB98;
  if (!qword_27E19AB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ABA0, &qword_23BBEB1C0);
    sub_23B9FAC9C(&qword_27E19ABA8, MEMORY[0x277CE1260], MEMORY[0x277CE1250]);
    sub_23B9FAC9C(&qword_27E19ABB0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AB98);
  }

  return result;
}

unint64_t sub_23B9FB800()
{
  result = qword_27E19ABC0;
  if (!qword_27E19ABC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ABC8, &unk_23BBEB1C8);
    sub_23B9FB658();
    sub_23B9FAC9C(&qword_27E198D70, type metadata accessor for LayoutMetricsModifier, &unk_23BBE3CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ABC0);
  }

  return result;
}

unint64_t sub_23B9FB8BC()
{
  result = qword_27E19ABD0;
  if (!qword_27E19ABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AB70, &qword_23BBEB1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AB68, &qword_23BBEB1A8);
    sub_23B9FB540();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1991E0, &qword_27E1991D0, &qword_23BBE7740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ABD0);
  }

  return result;
}

uint64_t sub_23B9FB9B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_23B9FBA14()
{
  result = qword_27E19AC08;
  if (!qword_27E19AC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AC10, qword_23BBEB200);
    sub_23B9FB8BC();
    sub_23B9FAC9C(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AC08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_14@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 2)
  {
    return v2 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_23B9FBB28(uint64_t a1)
{
  sub_23B9CE1B4(319, &qword_27E199C80, &qword_27E199C88, qword_23BBEB260, type metadata accessor for EntitlementTaskState);
  if (v1 <= 0x3F)
  {
    sub_23B975E04();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_23B9FC744(319, &qword_27E197B28, type metadata accessor for Subscription, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23B9FC7A8(319, &qword_27E19ACA8, &type metadata for Product.SubscriptionRelationship, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23B9FC7A8(319, &qword_27E19ACB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_23B9FC744(319, &qword_27E199C90, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_23B9FC7A8(319, &qword_27E19ACB8, &type metadata for AnySubscriptionOfferViewStyle, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_23B9CE1B4(319, &qword_27E199C98, qword_27E199BF8, &qword_23BBE8DF0, MEMORY[0x277CE10B8]);
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

uint64_t sub_23B9FBD84(int *a1, unsigned int a2, uint64_t a3)
{
  v51 = *(a3 + 24);
  v4 = *(v51 - 8);
  v5 = *(v4 + 84);
  v48 = sub_23BBDCDB8();
  v6 = *(v48 - 8);
  if (*(v6 + 84) <= 0xFDu)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v49 = v7;
  v50 = *(v6 + 84);
  v8 = v7 - 1;
  if (v5 <= v7 - 1)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = v5;
  }

  v10 = *(sub_23BBD9848() - 8);
  v11 = v10;
  if (v8 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12 - 1;
  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v4 + 80);
  v17 = *(v6 + 64);
  v18 = *(v10 + 64);
  v19 = 8;
  if (v18 > 8)
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 80) & 0xF8;
  v21 = v20 | 7;
  v22 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v4 + 64) + 1;
  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = v19 + 8;
  v26 = v20 + 48;
  if (v15 < a2)
  {
    v27 = ((((((v22 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + ((v26 + ((v25 + ((v24 + ((v17 + ((v23 + v21 + ((v16 + 32) & ~v16)) & ~v21) + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 8;
    if ((v27 & 0xFFFFFFF8) != 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = a2 - v15 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    switch(v30)
    {
      case 1:
        v31 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          break;
        }

        goto LABEL_36;
      case 2:
        v31 = *(a1 + v27);
        if (*(a1 + v27))
        {
          goto LABEL_36;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B9FC1E4);
      case 4:
        v31 = *(a1 + v27);
        if (!v31)
        {
          break;
        }

LABEL_36:
        v33 = v31 - 1;
        if ((v27 & 0xFFFFFFF8) != 0)
        {
          v33 = 0;
          v34 = *a1;
        }

        else
        {
          v34 = 0;
        }

        return v15 + (v34 | v33) + 1;
      default:
        break;
    }
  }

  v35 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v14 & 0x80000000) != 0)
  {
    v37 = (v35 + v16 + 32) & ~v16;
    if (v5 == v15)
    {

      return __swift_getEnumTagSinglePayload(v37, v5, v51);
    }

    else
    {
      v38 = (v23 + v37 + v21) & ~v21;
      if (v8 == v15)
      {
        if (v50 < 0xFD)
        {
          v43 = *(((v17 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v43 >= 2)
          {
            v44 = (v43 + 2147483646) & 0x7FFFFFFF;
          }

          else
          {
            v44 = -1;
          }

          if ((v44 + 1) >= 2)
          {
            EnumTagSinglePayload = v44;
          }

          else
          {
            EnumTagSinglePayload = 0;
          }
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, v50, v48);
        }

        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v40 = (v26 + ((v25 + ((v24 + ((v17 + v38 + 39) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & ~v21;
        if (v49 <= 0)
        {
          if (v50 < 0xFD)
          {
            v46 = *(((v17 + v40 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v46 >= 2)
            {
              v47 = (v46 + 2147483646) & 0x7FFFFFFF;
            }

            else
            {
              v47 = -1;
            }

            if ((v47 + 1) >= 2)
            {
              v45 = v47;
            }

            else
            {
              v45 = 0;
            }
          }

          else
          {
            v45 = __swift_getEnumTagSinglePayload(v40, v50, v48);
          }

          v42 = v45 - 1;
          if (v45 < 2)
          {
            v42 = 0;
          }
        }

        else
        {
          v41 = *(((v40 + v22 + 9) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v41 >= 0xFFFFFFFF)
          {
            LODWORD(v41) = -1;
          }

          v42 = v41 + 1;
        }

        if (v42 >= 2)
        {
          return v42 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v36 = *(v35 + 16);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }
}

void sub_23B9FC1F8(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v54 = *(a4 + 24);
  v5 = *(v54 - 8);
  v6 = *(v5 + 84);
  v51 = sub_23BBDCDB8();
  v7 = *(v51 - 8);
  if (*(v7 + 84) <= 0xFDu)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v52 = *(v7 + 84);
  v53 = v8;
  v9 = v8 - 1;
  if (v6 <= v8 - 1)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = *(sub_23BBD9848() - 8);
  v12 = v11;
  if (v9 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v9;
  }

  if (v10 <= v13 - 1)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = v10;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v5 + 80);
  v17 = *(v7 + 80) & 0xF8;
  v18 = v17 | 7;
  v19 = *(v7 + 64);
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v5 + 64) + 1;
  v22 = (v21 + (v17 | 7) + ((v16 + 32) & ~v16)) & ~(v17 | 7);
  v23 = *(v11 + 64);
  v24 = 8;
  if (v23 > 8)
  {
    v24 = v23;
  }

  v25 = *(v12 + 80) & 0xF8 | 7;
  v26 = v24 + 8;
  v27 = v17 + 48;
  v28 = ((((((v20 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + ((v27 + ((v24 + 8 + ((v25 + ((v19 + v22 + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v25)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 8;
  if (v15 >= a3)
  {
    v31 = 0;
  }

  else
  {
    if (((((((v20 + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + ((v27 + ((v24 + 8 + ((v25 + ((v19 + v22 + 55) & 0xFFFFFFF8) + 8) & ~v25)) & 0xFFFFFFF8)) & ~v18) == -8)
    {
      v29 = a3 - v15 + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  if (a2 > v15)
  {
    if (v28)
    {
      v32 = 1;
    }

    else
    {
      v32 = a2 - v15;
    }

    if (v28)
    {
      v33 = ~v15 + a2;
      bzero(a1, v28);
      *a1 = v33;
    }

    switch(v31)
    {
      case 1:
        *(a1 + v28) = v32;
        return;
      case 2:
        *(a1 + v28) = v32;
        return;
      case 3:
        goto LABEL_88;
      case 4:
        *(a1 + v28) = v32;
        return;
      default:
        return;
    }
  }

  v34 = v20 + 9;
  v35 = ~v18;
  switch(v31)
  {
    case 1:
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    case 2:
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    case 3:
LABEL_88:
      __break(1u);
      JUMPOUT(0x23B9FC704);
    case 4:
      *(a1 + v28) = 0;
      goto LABEL_45;
    default:
LABEL_45:
      if (!a2)
      {
        return;
      }

LABEL_46:
      v36 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v14 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v37 = a2 & 0x7FFFFFFF;
          *(v36 + 24) = 0;
        }

        else
        {
          v37 = a2 - 1;
        }

        *(v36 + 16) = v37;
        return;
      }

      v38 = (v36 + v16 + 32) & ~v16;
      if (v6 != v15)
      {
        v42 = ((v21 + v38 + v18) & v35);
        if (v9 == v15)
        {
          v43 = a2 - v53;
          if (a2 < v53)
          {
            v39 = a2 + 1;
            v40 = v52;
            if (v52 >= 0xFD)
            {
LABEL_62:
              v38 = v42;
              v41 = v51;
              goto LABEL_53;
            }

            v47 = &v42[v19 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 <= 0xFC)
            {
              v48 = a2 + 3;
LABEL_71:
              *(v47 + 8) = v48;
              return;
            }

            v50 = a2 - 253;
            goto LABEL_80;
          }
        }

        else
        {
          v42 = ((v27 + ((v26 + ((v25 + (&v42[v19 + 39] & 0xFFFFFFFFFFFFFFF8) + 24) & ~v25)) & 0xFFFFFFFFFFFFFFF8)) & v35);
          v43 = a2 - v13;
          if (a2 >= v13)
          {
            v46 = (((v20 + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
            if (v46 == -24)
            {
              return;
            }

            bzero(v42, (v46 + 24));
            goto LABEL_77;
          }

          v44 = a2 + 1;
          if (v53 > 0)
          {
            if (v44 < 0)
            {
              v45 = a2 - 0x7FFFFFFF;
            }

            else
            {
              v45 = a2;
            }

            *((&v42[v34] & 0xFFFFFFFFFFFFFFF8) + 8) = v45;
            return;
          }

          v43 = a2 - v9;
          if (a2 < v9)
          {
            v39 = a2 + 2;
            if (v39 > v53)
            {
              v49 = v44 - v53;
              bzero(v42, v20 + 9);
              if (v34 <= 3)
              {
                *v42 = v49;
              }

              else
              {
                *v42 = v49;
              }

              return;
            }

            v40 = v52;
            if (v52 >= 0xFD)
            {
              goto LABEL_62;
            }

            v47 = &v42[v19 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 <= 0xFB)
            {
              v48 = ((a2 + 2) & 0xFE | a2 & 1) + 2;
              goto LABEL_71;
            }

            v50 = a2 - 252;
LABEL_80:
            *v47 = 0;
            *(v47 + 8) = 0;
            *v47 = v50;
            return;
          }
        }

        bzero(v42, v20 + 9);
        if (v34 <= 3)
        {
          *v42 = v43;
          return;
        }

LABEL_77:
        *v42 = v43;
        return;
      }

      v39 = a2;
      v40 = v6;
      v41 = v54;
LABEL_53:

      __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      return;
  }
}