uint64_t sub_23BA2D830()
{
  _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_8_3();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_23BBDD368();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v3);
  OUTLINED_FUNCTION_43_1(v0[7]);

  OUTLINED_FUNCTION_43_1(v0[8]);

  v5 = v0[9];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v6 + 8))(v3 + v5);
  OUTLINED_FUNCTION_68();

  return swift_deallocObject();
}

uint64_t sub_23BA2D93C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_13_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_10(v4);
  *v5 = v6;
  v5[1] = sub_23B9F3414;

  return sub_23BA2860C(v0 + v3);
}

uint64_t sub_23BA2D9F8()
{
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_64(v1);

  return sub_23BA28E7C(v3, v4);
}

uint64_t sub_23BA2DA88()
{
  _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_8_3();
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = (v3 + 32) & ~v3;
  sub_23BBDD368();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v1 + v4);
  OUTLINED_FUNCTION_43_1(v0[7]);

  OUTLINED_FUNCTION_43_1(v0[8]);

  v6 = v0[9];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v7 + 8))(v1 + v4 + v6);
  OUTLINED_FUNCTION_68();

  return swift_deallocObject();
}

uint64_t sub_23BA2DB9C(uint64_t a1)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v1 = _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_13_0(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_10(v2);
  *v3 = v4;
  v3[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_80();

  return sub_23BA29C60(v5, v6, v7, v8);
}

uint64_t sub_23BA2DC74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA2DCBC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_3();
  v5(v4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_23BA2DD14()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_14_10();
  _s26CollectionTaskViewModifierVMa(v3, v4, v5, v6);
  OUTLINED_FUNCTION_19_0();
  v8 = v1 + ((*(v7 + 80) + 40) & ~*(v7 + 80));
  sub_23BBDD368();
  OUTLINED_FUNCTION_12_1();
  (*(v9 + 8))(v8);
  v10 = v8 + v0[11];
  v11 = OUTLINED_FUNCTION_14_10();
  _s6TaskIDOMa(v11, v12, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v15 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_43_1(v0[12]);

  v16 = v0[13];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v17 + 8))(v8 + v16);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BA2DE78()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v1 = _s26CollectionTaskViewModifierVMa(0, v0[2], v0[3], v0[4]);
  OUTLINED_FUNCTION_13_0(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_10(v2);
  *v3 = v4;
  v3[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_80();

  return sub_23BA2A118(v5, v6, v7, v8);
}

uint64_t sub_23BA2DF5C(uint64_t a1)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_64(v2);
  OUTLINED_FUNCTION_80();

  return sub_23BA2A470(v4, v5, v6, v7, v8);
}

uint64_t sub_23BA2E008()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *(v1 + 32);
  v3 = OUTLINED_FUNCTION_14_10();
  _s26CollectionTaskViewModifierVMa(v3, v4, v5, v6);
  OUTLINED_FUNCTION_19_0();
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  sub_23BBDD368();
  OUTLINED_FUNCTION_12_1();
  (*(v9 + 8))(v1 + v8);
  v10 = v1 + v8 + v0[11];
  v11 = OUTLINED_FUNCTION_14_10();
  _s6TaskIDOMa(v11, v12, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v15 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_43_1(v0[12]);

  v16 = v0[13];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v17 + 8))(v1 + v8 + v16);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BA2E174(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = _s26CollectionTaskViewModifierVMa(0, v3, v4, v5);
  OUTLINED_FUNCTION_13_0(v6);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_8_10(v11);
  *v12 = v13;
  v12[1] = sub_23BA027BC;

  return sub_23BA2D010(a1, v9, v10, v1 + v8, v3, v4, v5);
}

unint64_t sub_23BA2E284()
{
  result = qword_27E19BEC8;
  if (!qword_27E19BEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE78, &unk_23BBEE420);
    sub_23B97B518(&qword_27E19BED0, &qword_27E19BE80, &qword_23BBEE430, MEMORY[0x277CE04B0]);
    sub_23B97B518(qword_27E19A738, &qword_27E19A690, &qword_23BBEA6A8, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BEC8);
  }

  return result;
}

uint64_t sub_23BA2E368(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = OUTLINED_FUNCTION_18_1();
  _s26CollectionTaskViewModifierVMa(v3, v4, v1, v2);
  OUTLINED_FUNCTION_28_1();
  swift_getWitnessTable();
  sub_23BBDAE98();
  v5 = OUTLINED_FUNCTION_18_1();
  _s6TaskIDOMa(v5, v6, v1, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDAAE8();
  sub_23BBDA358();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_6_12()
{
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_23BA25D24(v0, _s16TaskViewModifierVMa);
}

void OUTLINED_FUNCTION_34_1()
{
  v6 = (v3 + *(v1 + 20));
  *v6 = v5;
  v6[1] = v2;
  v7 = (v3 + *(v1 + 24));
  *v7 = v4;
  v7[1] = v0;
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  v7 = v0 + *(v3 + 44);
  *v7 = v1;
  *(v7 + 8) = v4;
  *(v7 + 16) = 1;
  v8 = (v0 + *(v3 + 48));
  *v8 = v5;
  v8[1] = v2;
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_57_0()
{
}

void OUTLINED_FUNCTION_58_0()
{

  JUMPOUT(0x23EEB43C0);
}

void OUTLINED_FUNCTION_59_0()
{

  JUMPOUT(0x23EEB43C0);
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_23BA2E964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BED8, &unk_23BBEE4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SubscriptionStorePickerStyleItemConfiguration.subscription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDCDB8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SubscriptionStorePickerStyleItemConfiguration.subscriptionInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BED8, &unk_23BBEE4B0) + 36);
  v4 = sub_23BBDCB58();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionStorePickerStyleItemConfiguration.currentOption.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EE0, &qword_23BBE6DF8);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_23BA2EC24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BED8, &unk_23BBEE4B0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BA2EC8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BED8, &unk_23BBEE4B0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SubscriptionStorePickerStyleItemConfiguration(uint64_t a1)
{
  result = qword_27E19BEE0;
  if (!qword_27E19BEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BA2ED30(uint64_t a1)
{
  sub_23BA2ED9C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23BA2ED9C(uint64_t a1)
{
  if (!qword_27E19BEF0)
  {
    v2 = sub_23BA2EDF8();
    v4 = type metadata accessor for SubscriptionItemBaseConfiguration(a1, &type metadata for SubscriptionStorePickerStyleItemConfiguration.Icon, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27E19BEF0);
    }
  }
}

unint64_t sub_23BA2EDF8()
{
  result = qword_27E19BEF8;
  if (!qword_27E19BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BEF8);
  }

  return result;
}

_BYTE *sub_23BA2EE80(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BA2EF1CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BA2EF6C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B995828();
  *v0 = result;
  return result;
}

__n128 CompactPickerSubscriptionStoreControlStyle.Placement.init(rawValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

unint64_t static CompactPickerSubscriptionStoreControlStyle.Placement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_284E5C940;
  result = sub_23BA2F010();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23BA2F010()
{
  result = qword_27E19BF00;
  if (!qword_27E19BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF00);
  }

  return result;
}

double static CompactPickerSubscriptionStoreControlStyle.Placement.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static CompactPickerSubscriptionStoreControlStyle.Placement.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

void static CompactPickerSubscriptionStoreControlStyle.Placement.buttonsInBottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

void CompactPickerSubscriptionStoreControlStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  sub_23BA30108(a1, &v35 - v9, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  sub_23BA30108(a1, v7, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_23BA2F6CC(v7, v12 + v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF08, &qword_23BBEE678);
  v14 = v13[14];
  v15 = v13[15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  __swift_storeEnumTagSinglePayload(a2 + v15, 1, 1, v16);
  v17 = a2 + v13[16];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  v18 = a2 + v13[17];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a2 + v13[18];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868, &qword_23BBEE720) + 48));
  sub_23BA2F6CC(v10, a2);
  *v20 = sub_23BA2F730;
  v20[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF10, &qword_23BBEE728);
  swift_storeEnumTagMultiPayload();
  v21 = (a2 + v13[13]);
  *v21 = sub_23BA2F7B0;
  v21[1] = 0;
  *(a2 + v14) = 0;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF18, &qword_23BBEE758);
  OUTLINED_FUNCTION_1_25();
  *v23 = KeyPath;
  *(v23 + 8) = 0;
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF20, &qword_23BBEE788);
  OUTLINED_FUNCTION_1_25();
  *v26 = v24;
  v26[1] = sub_23BA2F9C8;
  v26[2] = v25;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF28, &qword_23BBEE790);
  OUTLINED_FUNCTION_1_25();
  *v29 = v27;
  v29[1] = sub_23BA2F9D0;
  v29[2] = v28;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF30, &qword_23BBEE7C0);
  OUTLINED_FUNCTION_1_25();
  *v32 = v30;
  v32[1] = sub_23B99B524;
  v32[2] = v31;
  v33 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BF38, &qword_23BBEE7F0);
  OUTLINED_FUNCTION_1_25();
  *v34 = v33;
  *(v34 + 8) = 0;
}

uint64_t sub_23BA2F47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BA30108(a2, v11, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  sub_23BA30108(a1, v8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  return sub_23BB8DC90(v11, v8, a3);
}

uint64_t sub_23BA2F590()
{
  v1 = *(type metadata accessor for SubscriptionStoreControlStyleConfiguration(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  if (*(v2 + 48))
  {
  }

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020) + 60);
  v4 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    v5 = sub_23BBDCDB8();
    (*(*(v5 - 8) + 8))(v2 + v3, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_23BA2F6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA2F730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SubscriptionStoreControlStyleConfiguration(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23BA2F47C(a1, v6, a2);
}

uint64_t sub_23BA2F7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BA30108(a1, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v4 = type metadata accessor for SubscriptionStoreButton(0);
  v5 = a2 + v4[5];
  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 73) = 0;
  v8 = a2 + v4[8];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a2 + v4[9];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

uint64_t sub_23BA2F8D0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAF2460();
  *v0 = result;
  return result;
}

uint64_t sub_23BA2F8F8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAF2460();
  *v0 = result;
  return result;
}

uint64_t sub_23BA2F968()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B995828();
  *v0 = result;
  return result;
}

uint64_t sub_23BA2F9E0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB3E9EC(v1);
  *v0 = result & 1;
  return result;
}

uint64_t sub_23BA2FA0C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB3E9EC(v1);
  *v0 = result & 1;
  return result;
}

unint64_t sub_23BA2FA80(uint64_t a1)
{
  result = sub_23BA2FAA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA2FAA8()
{
  result = qword_27E19BF40;
  if (!qword_27E19BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF40);
  }

  return result;
}

unint64_t sub_23BA2FB1C()
{
  result = qword_27E19BF48;
  if (!qword_27E19BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompactPickerSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BA2FC0CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BA2FC50()
{
  result = qword_27E19BF50;
  if (!qword_27E19BF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF38, &qword_23BBEE7F0);
    sub_23BA2FD08();
    sub_23B97B518(&qword_27E19BF90, &qword_27E19BF98, &qword_23BBEE918, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF50);
  }

  return result;
}

unint64_t sub_23BA2FD08()
{
  result = qword_27E19BF58;
  if (!qword_27E19BF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF30, &qword_23BBEE7C0);
    sub_23BA2FDC0();
    sub_23B97B518(&qword_27E198898, &qword_27E1988A0, &unk_23BBE7DB0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF58);
  }

  return result;
}

unint64_t sub_23BA2FDC0()
{
  result = qword_27E19BF60;
  if (!qword_27E19BF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF28, &qword_23BBEE790);
    sub_23BA2FE78();
    sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0, &unk_23BBF2AA0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF60);
  }

  return result;
}

unint64_t sub_23BA2FE78()
{
  result = qword_27E19BF68;
  if (!qword_27E19BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF20, &qword_23BBEE788);
    sub_23BA2FF30();
    sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0, &unk_23BBF2AA0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF68);
  }

  return result;
}

unint64_t sub_23BA2FF30()
{
  result = qword_27E19BF70;
  if (!qword_27E19BF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF18, &qword_23BBEE758);
    sub_23B97B518(&qword_27E19BF78, &qword_27E19BF08, &qword_23BBEE678, &protocol conformance descriptor for SubscriptionStorePicker<A, B>);
    sub_23B97B518(&qword_27E19BF80, &qword_27E19BF88, &qword_23BBEE910, MEMORY[0x277CE0858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF70);
  }

  return result;
}

unint64_t sub_23BA30024()
{
  result = qword_27E19BFA0;
  if (!qword_27E19BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BFA0);
  }

  return result;
}

unint64_t sub_23BA30078(uint64_t a1)
{
  result = sub_23BA300A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA300A0()
{
  result = qword_27E19BFA8;
  if (!qword_27E19BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BFA8);
  }

  return result;
}

uint64_t sub_23BA30108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t View.appStoreMerchandising(isPresented:kind:onDismiss:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v25 = a7;
  v14 = type metadata accessor for AppStoreMerchandisingSheetModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 24);
  sub_23BBDC4E8();
  OUTLINED_FUNCTION_4_1();
  (*(v20 + 16))(&v17[v19], a4);
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  *(v17 + 2) = sub_23BA30340;
  *(v17 + 3) = 0;
  v17[32] = 0;
  v21 = &v17[*(v14 + 28)];
  *v21 = a1;
  *(v21 + 1) = a2;
  v21[16] = a3;
  v22 = &v17[*(v14 + 32)];
  *v22 = a5;
  *(v22 + 1) = a6;

  sub_23B9794F0(a5, a6);
  MEMORY[0x23EEB43C0](v17, v25, v14, v26);
  return sub_23BA30378(v17);
}

uint64_t type metadata accessor for AppStoreMerchandisingSheetModifier(uint64_t a1)
{
  result = qword_27E19BFB8;
  if (!qword_27E19BFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BA30340()
{
  type metadata accessor for AppStoreMerchandisingCoordinator();
  swift_allocObject();
  return sub_23B9EA0D8();
}

uint64_t sub_23BA30378(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreMerchandisingSheetModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA303D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AppStoreMerchandisingSheetModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = v2 + *(v8 + 36);
  v10 = *v9;
  v11 = *(v9 + 8);
  LOBYTE(v9) = *(v9 + 16);
  v22 = v10;
  v23 = v11;
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  v12 = v20[0];
  v13 = v20[1];
  v14 = v21;
  sub_23BA328BC(v2, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreMerchandisingSheetModifier);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_23BA327EC(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BFD8, &qword_23BBEEBB0);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BFE0, &qword_23BBEEBB8);
  v19 = a2 + *(result + 36);
  *v19 = v12;
  *(v19 + 8) = v13;
  *(v19 + 16) = v14;
  *(v19 + 24) = sub_23BA32850;
  *(v19 + 32) = v16;
  return result;
}

uint64_t sub_23BA305A4(unsigned __int8 *a1, uint64_t a2)
{
  v44 = type metadata accessor for AppStoreMerchandisingSheetModifier(0);
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for SKLogger(0);
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *a2;
  v46 = a2;
  if (*(a2 + 8) == 1)
  {
    v16 = v15;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v17 = sub_23BBDB338();
    v41 = v8;
    v18 = v17;
    sub_23BBD9978();

    v8 = v41;
    sub_23BBDA918();
    swift_getAtKeyPath();
    v19 = sub_23B9EA1D4(v15, 0);
    (*(v11 + 8))(v13, v10, v19);
    v15 = v48;
    if (!v48)
    {
      goto LABEL_10;
    }
  }

  v20 = [v15 scene];

  if (v20)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      if (v14)
      {
        v22 = v21;
        v23 = sub_23BBDD368();
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v23);
        v24 = v43;
        sub_23BA328BC(v46, v43, type metadata accessor for AppStoreMerchandisingSheetModifier);
        sub_23BBDD308();
        v25 = v20;
        v26 = sub_23BBDD2F8();
        v27 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v28 = swift_allocObject();
        v29 = MEMORY[0x277D85700];
        *(v28 + 16) = v26;
        *(v28 + 24) = v29;
        sub_23BA327EC(v24, v28 + v27);
        *(v28 + ((v4 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
        sub_23BB142C0(0, 0, v7);

        sub_23B979910(v7, &qword_27E198320, &unk_23BBEEBC0);
      }

      else
      {
      }

      return sub_23BA30B54(v46);
    }
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438, &qword_23BBEB4F0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23BBE7F10;
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 32) = 0xD000000000000050;
  *(v30 + 40) = 0x800000023BBE0DB0;
  sub_23BBDDB98();

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v8, qword_27E1BFC88);
  v32 = v45;
  sub_23BA328BC(v31, v45, type metadata accessor for SKLogger);
  v33 = sub_23BBD9988();
  v34 = sub_23BBD99A8();
  (*(*(v34 - 8) + 8))(v32, v34);
  v35 = sub_23BBDD598();
  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23B970000, v33, v35, "Attempting to present an App Store merchandising without being in the hierarchy.", v36, 2u);
    MEMORY[0x23EEB6DC0](v36, -1, -1);
  }

  v37 = v46 + *(v44 + 28);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v37) = *(v37 + 16);
  v48 = v38;
  v49 = v39;
  v50 = v37;
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC0F8();
  return sub_23BA30B54(v46);
}

uint64_t sub_23BA30B54(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreMerchandisingSheetModifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_23BA328BC(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreMerchandisingSheetModifier);
  sub_23BBDD308();
  v9 = sub_23BBDD2F8();
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_23BA327EC(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_23BB142C0(0, 0, v7);

  return sub_23B979910(v7, &qword_27E198320, &unk_23BBEEBC0);
}

uint64_t sub_23BA30D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23BBDD308();
  v5[4] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_23BA30DB4, v7, v6);
}

uint64_t sub_23BA30DB4()
{
  v1 = *(v0 + 16);
  *(v0 + 56) = *(v1 + 16);
  *(v0 + 64) = *(v1 + 24);
  *(v0 + 132) = *(v1 + 32);
  *(v0 + 72) = type metadata accessor for AppStoreMerchandisingCoordinator();
  OUTLINED_FUNCTION_4_15();
  *(v0 + 80) = sub_23BA32644(v2, v3, &unk_23BBEEB48);
  v4 = OUTLINED_FUNCTION_17_7();
  *(v0 + 88) = v4;

  return MEMORY[0x2822009F8](sub_23BA30E7C, v4, 0);
}

uint64_t sub_23BA30E7C()
{
  OUTLINED_FUNCTION_3_13();
  v0[12] = swift_unknownObjectWeakLoadStrong();
  v1 = v0[5];
  v2 = v0[6];

  return MEMORY[0x2822009F8](sub_23BA30EE4, v1, v2);
}

uint64_t sub_23BA30EE4()
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
    v6 = type metadata accessor for AppStoreMerchandisingSheetModifier(0);
    *(v0 + 128) = *(v6 + 24);
    v7 = (v4 + *(v6 + 32));
    *(v0 + 112) = *v7;
    *(v0 + 120) = v7[1];

    return MEMORY[0x2822009F8](sub_23BA30FD0, v5, 0);
  }
}

uint64_t sub_23BA30FD0()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BA31048(*(v0 + 16) + *(v0 + 128), *(v0 + 24), *(v0 + 112), *(v0 + 120), v1);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_23B9E87D4, v2, v3);
}

uint64_t sub_23BA31048(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v29 = a3;
  v11 = sub_23BBDC4E8();
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v12 + 16))(v14, a1, v11);
  sub_23BBDD308();

  v30 = a2;
  v19 = a4;
  sub_23B9794F0(a3, a4);
  v20 = sub_23BBDD2F8();
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 2) = v20;
  *(v23 + 3) = v24;
  *(v23 + 4) = v6;
  (*(v12 + 32))(&v23[v21], v14, v31);
  v25 = v29;
  *&v23[v22] = v30;
  v26 = &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v26 = v25;
  v26[1] = v19;
  sub_23BB142C0(0, 0, v17);

  return sub_23B979910(v17, &qword_27E198320, &unk_23BBEEBC0);
}

uint64_t sub_23BA3129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_23BBDD308();
  v8[3] = sub_23BBDD2F8();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_23BA31378;

  return sub_23BA314A4(a5, a6, a7, a8);
}

uint64_t sub_23BA31378()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23B9E8CAC, v4, v3);
}

uint64_t sub_23BA314A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v5[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BFE8, &unk_23BBEEBF8);
  v5[19] = swift_task_alloc();
  v6 = sub_23BBDC4D8();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BA315A8, v4, 0);
}

uint64_t sub_23BA315A8()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BBDD308();
  *(v0 + 184) = sub_23BBDD2F8();
  v2 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA31638, v2, v1);
}

uint64_t sub_23BA31638()
{
  OUTLINED_FUNCTION_3_13();
  v1 = v0[17];
  v2 = v0[14];

  v0[24] = [v2 _persistenceIdentifier];

  return MEMORY[0x2822009F8](sub_23BA316C0, v1, 0);
}

uint64_t sub_23BA316C0()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = sub_23BBDD018();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[25] = v4;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_23BA31798;
  v6 = v0[22];
  v7 = v0[13];

  return MEMORY[0x28212C3B8](v6, v7, v2, v4);
}

uint64_t sub_23BA31798()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v5 = v4;
  *(v3 + 216) = v0;

  if (v0)
  {
    v6 = *(v3 + 136);
    v7 = sub_23BA31D88;
  }

  else
  {
    v8 = *(v3 + 136);

    v7 = sub_23BA318B0;
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_23BA318B0()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 128);
    *(v0 + 40) = *(v1 + 112);
    *(v0 + 48) = v2;
    *(v0 + 56) = v3 & 1;
    *(v0 + 34) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
    sub_23BBDC0F8();
  }

  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
  }

  v4 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v4, qword_27E1BFC88);
  OUTLINED_FUNCTION_15_12();
  sub_23BBDD768();
  *(v0 + 80) = v25;
  *(v0 + 88) = v27;
  MEMORY[0x23EEB5890](0xD00000000000002BLL, 0x800000023BBE0E40);
  sub_23BBDD8B8();
  v5 = sub_23BBDD588();

  v6 = sub_23BBD9988();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_21_6(4.8752e-34, v26, v8, v9, v10);
    v16 = OUTLINED_FUNCTION_11_13(v11, v12, v13, v14, v15);

    *(v7 + 14) = v16;
    OUTLINED_FUNCTION_19_7(&dword_23B970000, v17, v18, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  else
  {
  }

  v19 = *(v0 + 168);
  if (*(v0 + 120))
  {
    (*(v19 + 16))(*(v0 + 152), *(v0 + 176), *(v0 + 160));
    swift_storeEnumTagMultiPayload();
    v20 = swift_task_alloc();
    *(v0 + 224) = v20;
    *v20 = v0;
    OUTLINED_FUNCTION_13_13(v20);
    OUTLINED_FUNCTION_22_6();

    __asm { BRAA            X1, X16 }
  }

  (*(v19 + 8))(*(v0 + 176), *(v0 + 160));
  OUTLINED_FUNCTION_24_6();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_22_6();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23BA31BF0()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B979910(v2, &qword_27E19BFE8, &unk_23BBEEBF8);
  v5 = OUTLINED_FUNCTION_8_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BA31D14()
{
  OUTLINED_FUNCTION_3_13();
  (*(v0[21] + 8))(v0[22], v0[20]);
  OUTLINED_FUNCTION_24_6();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

void sub_23BA31D88()
{

  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
  }

  v1 = *(v0 + 216);
  v2 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v2, qword_27E1BFC88);
  OUTLINED_FUNCTION_15_12();
  sub_23BBDD768();
  *(v0 + 64) = v26;
  *(v0 + 72) = v28;
  MEMORY[0x23EEB5890](0xD000000000000024, 0x800000023BBE0E10);
  *(v0 + 96) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450, &unk_23BBEA450);
  sub_23BBDD8B8();
  LOBYTE(v1) = sub_23BBDD588();

  v3 = sub_23BBD9988();

  if (os_log_type_enabled(v3, v1))
  {
    v4 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_21_6(4.8752e-34, v27, v5, v6, v7);
    v13 = OUTLINED_FUNCTION_11_13(v8, v9, v10, v11, v12);

    *(v4 + 14) = v13;
    OUTLINED_FUNCTION_19_7(&dword_23B970000, v14, v15, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  else
  {
  }

  v16 = *(v0 + 136);
  v17 = *(v16 + 120);
  if (v17)
  {
    v18 = *(v16 + 128);
    *(v0 + 16) = *(v16 + 112);
    *(v0 + 24) = v17;
    *(v0 + 32) = v18 & 1;
    *(v0 + 33) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
    sub_23BBDC0F8();
  }

  v19 = *(v0 + 216);
  if (*(v0 + 120))
  {
    **(v0 + 152) = v19;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v21 = swift_task_alloc();
    *(v0 + 232) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_13_13(v21);
    OUTLINED_FUNCTION_22_6();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_24_6();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_22_6();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23BA320BC()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B979910(v2, &qword_27E19BFE8, &unk_23BBEEBF8);
  v5 = OUTLINED_FUNCTION_8_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BA321E0()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_24_6();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

uint64_t sub_23BA32268(uint64_t *a1)
{
  type metadata accessor for AppStoreMerchandisingSheetModifier(255);
  sub_23BBDA358();
  sub_23BA32644(&qword_27E19BFB0, type metadata accessor for AppStoreMerchandisingSheetModifier, &unk_23BBEEAF8);
  return swift_getWitnessTable();
}

uint64_t sub_23BA32318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_8();
  v6 = sub_23BBDC4E8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23BA323DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_23BBDC4E8();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23BA3248C(uint64_t a1)
{
  sub_23BA3268C(319, &qword_27E19ACD8, &qword_27E19ACE0, &qword_23BBEB418, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23BA325B0(319);
    if (v2 <= 0x3F)
    {
      sub_23BBDC4E8();
      if (v3 <= 0x3F)
      {
        sub_23BA017D4();
        if (v4 <= 0x3F)
        {
          sub_23BA3268C(319, &qword_27E197B10, &qword_27E197B18, qword_23BBE3DF0, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23BA325B0(uint64_t a1)
{
  if (!qword_27E19BFC8)
  {
    type metadata accessor for AppStoreMerchandisingCoordinator();
    sub_23BA32644(&qword_27E19BFD0, type metadata accessor for AppStoreMerchandisingCoordinator, &unk_23BBEEB48);
    v1 = sub_23BBD9C58();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19BFC8);
    }
  }
}

uint64_t sub_23BA32644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23BA3268C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23BA3270C()
{
  type metadata accessor for AppStoreMerchandisingSheetModifier(0);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_14_11();

  OUTLINED_FUNCTION_10_11();
  if (v3)
  {
  }

  OUTLINED_FUNCTION_17_9();

  return swift_deallocObject();
}

uint64_t sub_23BA327EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreMerchandisingSheetModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA32850()
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3 = *(type metadata accessor for AppStoreMerchandisingSheetModifier(v2) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23BA305A4(v0, v4);
}

uint64_t sub_23BA328BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA3291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_23BBDD308();
  v4[9] = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_23BA329B4, v6, v5);
}

uint64_t sub_23BA329B4()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 64);
  type metadata accessor for AppStoreMerchandisingCoordinator();
  OUTLINED_FUNCTION_4_15();
  sub_23BA32644(v2, v3, &unk_23BBEEB48);
  *(v0 + 96) = OUTLINED_FUNCTION_17_7();
  v4 = (v1 + *(type metadata accessor for AppStoreMerchandisingSheetModifier(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = *(v4 + 16);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  v7 = *(v0 + 48);
  *(v0 + 104) = *(v0 + 40);
  *(v0 + 112) = v7;
  *(v0 + 33) = *(v0 + 56);
  v8 = OUTLINED_FUNCTION_8_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23BA32AB8()
{
  type metadata accessor for AppStoreMerchandisingSheetModifier(0);
  OUTLINED_FUNCTION_8_3();
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_4_1();
  (*(v7 + 8))(v1 + v2);
  OUTLINED_FUNCTION_14_11();

  OUTLINED_FUNCTION_10_11();
  if (v8)
  {
  }

  OUTLINED_FUNCTION_17_9();

  return swift_deallocObject();
}

uint64_t sub_23BA32BB4()
{
  OUTLINED_FUNCTION_41_0();
  v2 = OUTLINED_FUNCTION_15_8();
  v3 = *(type metadata accessor for AppStoreMerchandisingSheetModifier(v2) - 8);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_9_11();

  return sub_23BA30D1C(v6, v7, v8, v9, v4);
}

uint64_t sub_23BA32CC4(double a1)
{
  v2 = sub_23BBDC4E8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  if (*(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  OUTLINED_FUNCTION_17_9();

  return swift_deallocObject();
}

uint64_t sub_23BA32DC4(uint64_t a1, double a2)
{
  v4 = *(sub_23BBDC4E8() - 8);
  v5 = (*(v4 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v5);
  v8 = *(v2 + 32);
  v9 = *(v2 + v6);
  v10 = *(v2 + v6 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_23B9F3414;
  OUTLINED_FUNCTION_9_11();

  return sub_23BA3129C(v12, v13, v14, v8, v15, v7, v9, v10);
}

uint64_t sub_23BA32F10()
{
  type metadata accessor for AppStoreMerchandisingSheetModifier(0);
  OUTLINED_FUNCTION_8_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_14_11();

  OUTLINED_FUNCTION_10_11();
  if (v3)
  {
  }

  OUTLINED_FUNCTION_17_9();

  return swift_deallocObject();
}

uint64_t sub_23BA32FF8()
{
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for AppStoreMerchandisingSheetModifier(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_9_11();

  return sub_23BA3291C(v3, v4, v5, v6);
}

unint64_t sub_23BA330DC()
{
  result = qword_27E19BFF0;
  if (!qword_27E19BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BFE0, &qword_23BBEEBB8);
    sub_23B97B518(qword_27E19BFF8, &qword_27E19BFD8, &qword_23BBEEBB0, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E19A470, &unk_27E19B600, qword_23BBEA470, MEMORY[0x277CE05A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BFF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_18()
{
  sub_23B9EA1D4(*(v0 + v1), *(v0 + v1 + 8));
  sub_23B9EA1E0(*(v0 + v1 + 16), *(v0 + v1 + 24));

  return sub_23BBDC4E8();
}

unint64_t OUTLINED_FUNCTION_11_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 + 4) = a1;
  *(v6 + 12) = 2082;

  return sub_23BA5AB90(v7, v5, va);
}

double OUTLINED_FUNCTION_14_11()
{

  return result;
}

void OUTLINED_FUNCTION_19_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

unint64_t OUTLINED_FUNCTION_21_6(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v5 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_24_6()
{
}

uint64_t sub_23BA33338@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for ProductViewIconWrapper(0, a2, a4, a4);
  v7 = *(v6 + 36);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v8 = *(v6 + 40);
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B0, qword_23BBEEC80);
  v9 = swift_storeEnumTagMultiPayload();
  return a1(v9);
}

uint64_t sub_23BA33418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8, &qword_23BBE8330);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_3(v95 - v5);
  v107 = *(a1 + 16);
  v6 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
  v7 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v104 = v8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_3(v95 - v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C088, &unk_23BBEED30);
  v108 = v7;
  v11 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v106 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_3(v95 - v16);
  v17 = sub_23BBDA438();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  v23 = v95 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v95 - v25;
  v113 = v11;
  v112 = sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v111 = v27;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13_3(v95 - v29);
  v109 = *(v6 - 8);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  v34 = v95 - v33;
  v35 = *(a1 + 24);
  sub_23BBDB718();
  v103 = a1;
  v107 = v2;
  sub_23B9B75DC();
  sub_23BBDA428();
  sub_23B9E10FC();
  v36 = sub_23BBDD6A8();
  v98 = v19;
  v37 = *(v19 + 8);
  v37(v23, v17);
  v37(v26, v17);
  if (v36)
  {
    v96 = v37;
    v100 = v35;
    v121 = v35;
    v122 = MEMORY[0x277CE01B0];
    WitnessTable = swift_getWitnessTable();
    sub_23B9AD794();
    v39 = v101;
    v99 = v6;
    sub_23BBDB8A8();
    swift_getKeyPath();
    v40 = v115;
    sub_23B9B767C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v17);
    v42 = v39;
    v97 = v34;
    if (EnumTagSinglePayload == 1)
    {
      v120 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50, &unk_23BBE6CA0);
      sub_23B97B518(&qword_27E198E58, &qword_27E198E50, &unk_23BBE6CA0, MEMORY[0x277D83970]);
      v43 = v102;
      sub_23BBDD6C8();
      v44 = __swift_getEnumTagSinglePayload(v115, 1, v17);
      v45 = v108;
      if (v44 != 1)
      {
        sub_23BA3473C(v115);
      }
    }

    else
    {
      v43 = v102;
      (*(v98 + 32))(v102, v115, v17);
      v45 = v108;
    }

    OUTLINED_FUNCTION_0_24();
    v68 = sub_23B97B518(v64, v65, v66, v67);
    v95[1] = WitnessTable;
    v118 = WitnessTable;
    v119 = v68;
    OUTLINED_FUNCTION_8_2();
    v69 = swift_getWitnessTable();
    sub_23BBDB748();

    v96(v43, v17);
    (*(v104 + 8))(v42, v45);
    OUTLINED_FUNCTION_1_15();
    v74 = sub_23B97B518(v70, v71, v72, v73);
    v116 = v69;
    v117 = v74;
    v75 = v113;
    swift_getWitnessTable();
    v76 = v105;
    OUTLINED_FUNCTION_9_12();
    sub_23B9D2D88();
    v77 = *(v106 + 8);
    v78 = OUTLINED_FUNCTION_9_12();
    v77(v78);
    sub_23B9D2D88();
    v63 = v110;
    OUTLINED_FUNCTION_9_12();
    v79 = v99;
    sub_23BA82D64();
    v80 = OUTLINED_FUNCTION_9_12();
    v77(v80);
    (v77)(v76, v75);
    (*(v109 + 8))(v97, v79);
    v35 = v100;
    v62 = MEMORY[0x277CE01B0];
  }

  else
  {
    v135 = v35;
    v136 = MEMORY[0x277CE01B0];
    OUTLINED_FUNCTION_8_2();
    v46 = swift_getWitnessTable();
    v47 = v99;
    sub_23B9D2D88();
    v48 = v100;
    sub_23B9D2D88();
    OUTLINED_FUNCTION_0_24();
    v53 = sub_23B97B518(v49, v50, v51, v52);
    v133 = v46;
    v134 = v53;
    v54 = swift_getWitnessTable();
    OUTLINED_FUNCTION_1_15();
    v59 = sub_23B97B518(v55, v56, v57, v58);
    v131 = v54;
    v132 = v59;
    swift_getWitnessTable();
    v60 = v110;
    sub_23BA82E14();
    v61 = *(v109 + 8);
    v61(v48, v6);
    v61(v47, v6);
    v61(v34, v6);
    v62 = MEMORY[0x277CE01B0];
    v63 = v60;
  }

  v129 = v35;
  v130 = v62;
  OUTLINED_FUNCTION_8_2();
  v81 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_24();
  v86 = sub_23B97B518(v82, v83, v84, v85);
  v127 = v81;
  v128 = v86;
  v87 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v92 = sub_23B97B518(v88, v89, v90, v91);
  v125 = v87;
  v126 = v92;
  v123 = swift_getWitnessTable();
  v124 = v81;
  OUTLINED_FUNCTION_2_7();
  v93 = v112;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v111 + 8))(v63, v93);
}

uint64_t sub_23BA33E90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8, &qword_23BBE8330);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  sub_23BA33F20(a1, &v6 - v3);
  return sub_23BBBE2B0(v4);
}

uint64_t sub_23BA33F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8, &qword_23BBE8330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23BA33F90(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23BA3463C(319);
    if (v2 <= 0x3F)
    {
      sub_23BA34694(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA34030(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_23BBDA438() - 8);
  v9 = v8;
  v10 = *(v8 + 64);
  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v7;
  }

  if (!*(v9 + 84))
  {
    ++v10;
  }

  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_32;
  }

  v15 = v10 + ((v11 + v13 + (v14 & ~v13) + 1) & ~v13) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    if (v19 < 2)
    {
LABEL_32:
      if (v7 < 0xFE)
      {
        v23 = *(((a1 + v14) & ~v13) + v11);
        if (v23 >= 2)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_32;
  }

LABEL_22:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_23BA342A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(sub_23BBDA438() - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v10 + 64);
  }

  if (v9 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v9;
  }

  v15 = *(v11 + 84) == 0;
  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = *(v8 + 64) + v16;
  v18 = v13 + 1;
  if (v15)
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v19 = v12 + ((v13 + 1 + v16 + (v17 & ~v16)) & ~v16) + 1;
  v20 = 8 * v19;
  if (a3 <= v14)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v14 < a2)
  {
    v22 = ~v14 + a2;
    if (v19 < 4)
    {
      v23 = (v22 >> v20) + 1;
      if (v19)
      {
        v26 = v22 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v19 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v19] = v23;
        return;
      case 2:
        *&a1[v19] = v23;
        return;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v19] = v23;
        return;
      default:
        return;
    }
  }

  switch(v21)
  {
    case 1:
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 3:
LABEL_62:
      __break(1u);
      JUMPOUT(0x23BA34604);
    case 4:
      *&a1[v19] = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (a2)
      {
LABEL_34:
        if (v9 < 0xFE)
        {
          v27 = (&a1[v17] & ~v16);
          if (a2 > 0xFE)
          {
            if (v18 <= 3)
            {
              v28 = ~(-1 << (8 * v18));
            }

            else
            {
              v28 = -1;
            }

            if (v18)
            {
              v29 = v28 & (a2 - 255);
              if (v18 <= 3)
              {
                v30 = v18;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v18);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }
          }

          else
          {
            v27[v13] = -a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }
      }

      return;
  }
}

void sub_23BA3463C(uint64_t a1)
{
  if (!qword_27E198D28)
  {
    sub_23BBDA438();
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E198D28);
    }
  }
}

void sub_23BA34694(uint64_t a1)
{
  if (!qword_27E19C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1997B8, &qword_23BBE8330);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19C080);
    }
  }
}

uint64_t sub_23BA3473C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8, &qword_23BBE8330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA347A4(void *a1)
{
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C088, &unk_23BBEED30);
  sub_23BBDA358();
  sub_23BBDACE8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_24();
  sub_23B97B518(v1, &qword_27E1991D0, &qword_23BBE7740, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v3, &qword_27E19C088, &unk_23BBEED30, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

uint64_t sub_23BA34960(uint64_t a1)
{
  sub_23BBD9848();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_23BBDA858();
}

double sub_23BA34A18()
{
  v0.n128_f64[0] = sub_23BAC7C28(v12);
  *&result = OUTLINED_FUNCTION_18_10(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11, v9, *v12, v12[2]).n128_u64[0];
  return result;
}

uint64_t sub_23BA34A50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v1;
  v8 = *(a1 + 32);
  v9 = v8;

  sub_23B979510();
  return sub_23BAC7C7C(v7, v2, v3, v4, v5);
}

uint64_t sub_23BA34AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Subscription(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v3, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v13 = sub_23BA373CC();
    MEMORY[0x23EEB50B0](v13);
    sub_23BA3A4B8(v12, type metadata accessor for Subscription);
    v14 = 0;
  }

  else
  {
    (*(v6 + 8))(v8, a1);
    v14 = 1;
  }

  v15 = sub_23BBD9848();
  return __swift_storeEnumTagSinglePayload(a2, v14, 1, v15);
}

uint64_t sub_23BA34C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 64);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  LODWORD(v9) = *(v9 + 40);
  v18 = v11;
  if (v9 == 1)
  {

    v15 = v18;
  }

  else
  {

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v17 = sub_23B9AD3D4(v10, v18, *(&v18 + 1), v12, v13, 0);
    result = (*(v6 + 8))(v8, v5, v17);
    v10 = v19;
    v15 = v20;
    v12 = v21;
    v13 = v22;
  }

  *a2 = v10;
  *(a2 + 8) = v15;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  return result;
}

void SubscriptionOfferView.init(id:icon:placeholderIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_0();
  v23 = v22;
  v25 = v24;
  v63 = v27;
  v64 = v26;
  v66 = v28;
  v67 = v29;
  v61 = v30;
  v62 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_3_2();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_6();
  v65 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v58 - v39;
  v68 = v41;
  v69 = v42;
  v70 = a21;
  v71 = a22;
  v43 = OUTLINED_FUNCTION_9_13();
  v45 = type metadata accessor for SubscriptionOfferView(v43, v44);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v47 = v62;
  *v33 = v61;
  v33[1] = v47;
  v68 = v25;
  v69 = v23;
  v59 = v25;
  v60 = a22;
  v70 = a21;
  v71 = a22;
  OUTLINED_FUNCTION_8_16();
  v48 = swift_storeEnumTagMultiPayload();
  v64(v48);
  v49 = swift_allocObject();
  *(v49 + 2) = v25;
  *(v49 + 3) = v23;
  *(v49 + 4) = a21;
  *(v49 + 5) = a22;
  v50 = v67;
  *(v49 + 6) = v66;
  *(v49 + 7) = v50;
  v51 = (v33 + v45[13]);
  *v51 = sub_23BA35314;
  v51[1] = v49;
  v52 = *(v35 + 32);
  v53 = v65;
  v52(v65, v40, v23);
  v54 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v55 = swift_allocObject();
  v56 = v60;
  v55[2] = v59;
  v55[3] = v23;
  v55[4] = a21;
  v55[5] = v56;
  v52(v55 + v54, v53, v23);
  v57 = (v33 + v45[14]);
  *v57 = sub_23BA3A8A8;
  v57[1] = v55;
  OUTLINED_FUNCTION_19_8(v45[15]);
  OUTLINED_FUNCTION_9_1();
}

double sub_23BA35018()
{
  v0.n128_f64[0] = sub_23BAC7C28(v12);
  *&result = OUTLINED_FUNCTION_18_10(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11, v9, *v12, v12[2]).n128_u64[0];
  return result;
}

uint64_t sub_23BA3506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v28[0] = a4;
  v28[1] = a5;
  v27 = a6;
  v28[2] = a6;
  v28[3] = a7;
  v18 = type metadata accessor for PromotionalIconLoadingView(0, v28);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_23BBDCD58();
  v21 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    sub_23B9846E8(v14, &qword_27E19C300, &qword_23BBFCF30);
    v22 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v22);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v21 - 8) + 8))(v14, v21);
  }

  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();

  sub_23BBB10AC(v17, v26, a3, KeyPath, v24, a4, a5, v27, v20, a7);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA352DC()
{

  return swift_deallocObject();
}

void SubscriptionOfferView.init(id:prefersPromotionalIcon:icon:placeholderIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_0();
  v23 = v22;
  v85 = v25;
  v86 = v24;
  v81 = v27;
  v82 = v26;
  v87 = v28;
  v77 = v29;
  v78 = v30;
  v32 = v31;
  v91 = a22;
  OUTLINED_FUNCTION_3_2();
  v83 = v33;
  v84 = *(v34 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20_6();
  v80 = v36;
  MEMORY[0x28223BE20](v37);
  v89 = &v75 - v38;
  OUTLINED_FUNCTION_3_2();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v75 = &v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v75 - v45;
  v92 = v47;
  v93 = a21;
  v94 = a22;
  v95 = v48;
  v49 = v48;
  v90 = v48;
  v50 = OUTLINED_FUNCTION_21_7();
  v79 = type metadata accessor for SubscriptionOfferView(v50, v51);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v53 = v78;
  *v32 = v77;
  v32[1] = v53;
  v76 = v32;
  v88 = v23;
  v92 = v23;
  v93 = a21;
  v94 = a22;
  v95 = v49;
  v54 = OUTLINED_FUNCTION_21_7();
  type metadata accessor for SubscriptionOfferView.Storage(v54, v55);
  OUTLINED_FUNCTION_14_12();
  v56 = swift_storeEnumTagMultiPayload();
  v57 = v82(v56);
  v58 = v89;
  v86(v57);
  v86 = *(v40 + 32);
  (v86)(&v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v23);
  v59 = v83;
  v60 = v80;
  (*(v83 + 16))(v80, v58, a21);
  v61 = (*(v40 + 80) + 49) & ~*(v40 + 80);
  v62 = *(v59 + 80);
  v63 = (v42 + v61 + v62) & ~v62;
  v64 = swift_allocObject();
  *(v64 + 16) = v88;
  *(v64 + 24) = a21;
  v65 = v90;
  *(v64 + 32) = v91;
  *(v64 + 40) = v65;
  *(v64 + 48) = v87;
  (v86)(v64 + v61, v75);
  v66 = *(v59 + 32);
  v67 = v64 + v63;
  v68 = v60;
  v66(v67, v60, a21);
  v69 = v79;
  v70 = v76;
  v71 = (v76 + *(v79 + 52));
  *v71 = sub_23BA35B20;
  v71[1] = v64;
  v66(v68, v89, a21);
  v72 = swift_allocObject();
  v72[2] = v88;
  v72[3] = a21;
  v73 = v90;
  v72[4] = v91;
  v72[5] = v73;
  v66(v72 + ((v62 + 48) & ~v62), v68, a21);
  v74 = (v70 + *(v69 + 56));
  *v74 = sub_23BA35BB8;
  v74[1] = v72;
  *(v70 + *(v69 + 60)) = 0;
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA35698(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v12 = sub_23BBDD648();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_23BBDD648();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v32 - v22;
  v38[0] = a5;
  v38[1] = a6;
  v36 = a8;
  v37 = a7;
  v38[2] = a7;
  v38[3] = a8;
  v24 = type metadata accessor for PromotionalIconLoadingView(0, v38);
  MEMORY[0x28223BE20](v24);
  v26 = &v32 - v25;
  sub_23BBDCD58();
  v27 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
  {
    sub_23B9846E8(v20, &qword_27E19C300, &qword_23BBFCF30);
    v28 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v28);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v27 - 8) + 8))(v20, v27);
  }

  (*(*(a5 - 8) + 16))(v17, v33, a5);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, a5);
  (*(*(a6 - 8) + 16))(v14, v34, a6);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, a6);
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  sub_23BBB1200(v35 & 1, v23, v17, v14, KeyPath, v30, a5, a6, v26, v37, v36);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA35A2C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_1_4();
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_23BA35B20(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(*(*(v1 + 16) - 8) + 80);
  return sub_23BA35698(a1, *(v1 + 48), v1 + ((v3 + 49) & ~v3), v1 + ((((v3 + 49) & ~v3) + *(*(*(v1 + 16) - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), *(v1 + 16), v2, *(v1 + 32), *(v1 + 40));
}

void SubscriptionOfferView.init<>(id:prefersPromotionalIcon:icon:)()
{
  OUTLINED_FUNCTION_22_7();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  LOBYTE(v13) = v4;
  v10 = sub_23B9AD84C();
  SubscriptionOfferView.init(id:prefersPromotionalIcon:icon:placeholderIcon:)(v9, v7, v5, v3, v2, sub_23BA35CB0, v12, v1, &type metadata for AutomaticProductPlaceholderIcon, v0, v10, v11, v12[0], v12[1], v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t SubscriptionOfferView.init<>(id:prefersPromotionalIcon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C098, &qword_23BBEED68);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_16(KeyPath);
  *a4 = a1;
  a4[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A0, &unk_23BBEED70);
  swift_storeEnumTagMultiPayload();
  result = OUTLINED_FUNCTION_24_7(&unk_284E5CB10);
  *(result + 16) = a3;
  v11 = (a4 + v8[13]);
  *v11 = sub_23BA35DB0;
  v11[1] = result;
  v12 = (a4 + v8[14]);
  *v12 = sub_23BA39B28;
  v12[1] = 0;
  *(a4 + v8[15]) = a3;
  return result;
}

void sub_23BA35DCC(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277CE1410];
  *(a1 + 24) = MEMORY[0x277CE1428];
  *(a1 + 32) = v1;
}

void SubscriptionOfferView.init<>(_:icon:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v30 = v4;
  v31 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for Subscription(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v32 = v3;
  v33 = MEMORY[0x277CE1428];
  v16 = MEMORY[0x277CE1410];
  v34 = v1;
  v35 = MEMORY[0x277CE1410];
  v17 = OUTLINED_FUNCTION_9_13();
  v19 = type metadata accessor for SubscriptionOfferView(v17, v18);
  v20 = v9 + v19[16];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 0;
  sub_23BB4E690(v7, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_23B9846E8(v13, qword_27E197A68, qword_23BBE3D90);
    v21 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v23 = v22;
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v24 + 8))(v7);
    *v9 = v21;
    v9[1] = v23;
  }

  else
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v25 + 8))(v7);
    OUTLINED_FUNCTION_7_20();
    sub_23BA373CC();
    sub_23BA373CC();
  }

  v32 = v3;
  v33 = MEMORY[0x277CE1428];
  v34 = v1;
  v35 = v16;
  OUTLINED_FUNCTION_8_16();
  swift_storeEnumTagMultiPayload();
  v26 = swift_allocObject();
  *(v26 + 2) = v3;
  *(v26 + 3) = v1;
  v27 = v31;
  *(v26 + 4) = v30;
  *(v26 + 5) = v27;
  v28 = (v9 + v19[13]);
  *v28 = sub_23BA36314;
  v28[1] = v26;
  v29 = (v9 + v19[14]);
  *v29 = sub_23BA39B28;
  v29[1] = 0;
  OUTLINED_FUNCTION_19_8(v19[15]);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA36060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v25[0] = a4;
  v25[1] = MEMORY[0x277CE1428];
  v14 = MEMORY[0x277CE1410];
  v25[2] = a5;
  v25[3] = MEMORY[0x277CE1410];
  v15 = type metadata accessor for PromotionalIconLoadingView(0, v25);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_23BBDCD58();
  v18 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v10, 1, v18) == 1)
  {
    sub_23B9846E8(v10, &qword_27E19C300, &qword_23BBFCF30);
    v19 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v18 - 8) + 8))(v10, v18);
  }

  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();

  sub_23BBB10AC(v13, v24, a3, KeyPath, v21, a4, MEMORY[0x277CE1428], a5, v17, v14);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA362DC()
{

  return swift_deallocObject();
}

void SubscriptionOfferView.init<>(_:prefersPromotionalIcon:icon:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v41 = v5;
  v42 = v4;
  v44 = v6;
  v39 = v7;
  v9 = v8;
  OUTLINED_FUNCTION_3_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_6();
  v43 = v13;
  MEMORY[0x28223BE20](v14);
  v40 = &v39 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v16);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for Subscription(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v45 = v3;
  v46 = MEMORY[0x277CE1428];
  v22 = v1;
  v47 = v1;
  v48 = MEMORY[0x277CE1410];
  v23 = OUTLINED_FUNCTION_9_13();
  v25 = type metadata accessor for SubscriptionOfferView(v23, v24);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_16(KeyPath);
  v27 = v39;
  sub_23BB4E690(v39, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_23B9846E8(v19, qword_27E197A68, qword_23BBE3D90);
    *v9 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v9[1] = v28;
  }

  else
  {
    sub_23BA373CC();
    sub_23BA373CC();
  }

  v45 = v3;
  v46 = MEMORY[0x277CE1428];
  v47 = v22;
  v29 = v22;
  v48 = MEMORY[0x277CE1410];
  OUTLINED_FUNCTION_8_16();
  v30 = swift_storeEnumTagMultiPayload();
  v31 = v40;
  v42(v30);
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v32 + 8))(v27);
  v33 = *(v11 + 32);
  v34 = v43;
  v33(v43, v31, v3);
  v35 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v3;
  *(v36 + 24) = v29;
  *(v36 + 32) = v44 & 1;
  v33(v36 + v35, v34, v3);
  v37 = (v9 + v25[13]);
  *v37 = sub_23BA369FC;
  v37[1] = v36;
  v38 = (v9 + v25[14]);
  *v38 = sub_23BA39B28;
  v38[1] = 0;
  OUTLINED_FUNCTION_19_8(v25[15]);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA36678(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v8 = sub_23BBDD648();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25[-v15];
  v27[0] = a4;
  v27[1] = MEMORY[0x277CE1428];
  v27[2] = a5;
  v27[3] = MEMORY[0x277CE1410];
  v17 = type metadata accessor for PromotionalIconLoadingView(0, v27);
  MEMORY[0x28223BE20](v17);
  v19 = &v25[-v18];
  sub_23BBDCD58();
  v20 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v13, 1, v20) == 1)
  {
    sub_23B9846E8(v13, &qword_27E19C300, &qword_23BBFCF30);
    v21 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v21);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v20 - 8) + 8))(v13, v20);
  }

  (*(*(a4 - 8) + 16))(v10, a3, a4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, a4);
  LOBYTE(v27[0]) = 1;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  sub_23BBB1200(v26 & 1, v16, v10, v27, KeyPath, v23, a4, MEMORY[0x277CE1428], v19, a5, MEMORY[0x277CE1410]);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA36988()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_15_13();

  return swift_deallocObject();
}

uint64_t SubscriptionOfferView.init<>(_:prefersPromotionalIcon:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Subscription(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C098, &qword_23BBEED68);
  v13 = a3 + v12[16];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 0;
  sub_23BB4E690(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_23B9846E8(v9, qword_27E197A68, qword_23BBE3D90);
    v14 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v16 = v15;
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v17 + 8))(a1);
    *a3 = v14;
    a3[1] = v16;
  }

  else
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v18 + 8))(a1);
    OUTLINED_FUNCTION_7_20();
    sub_23BA373CC();
    sub_23BA373CC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A0, &unk_23BBEED70);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  result = OUTLINED_FUNCTION_24_7(&unk_284E5CB88);
  *(result + 16) = a2 & 1;
  v20 = (a3 + v12[13]);
  *v20 = sub_23BA3A8AC;
  v20[1] = result;
  v21 = (a3 + v12[14]);
  *v21 = sub_23BA39B28;
  v21[1] = 0;
  *(a3 + v12[15]) = 0;
  return result;
}

uint64_t sub_23BA36C88(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C320, &qword_23BBFF3B0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  sub_23BBDCD58();
  v16 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    sub_23B9846E8(v6, &qword_27E19C300, &qword_23BBFCF30);
    v17 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  }

  else
  {
    sub_23BBDCD38();
    OUTLINED_FUNCTION_1_4();
    (*(v18 + 8))(v6, v16);
  }

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = &v14[v11[16]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v14[v11[13]];
  if (a2)
  {
    *v22 = 257;
    v23 = 1;
  }

  else
  {
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = -1;
  }

  v22[16] = v23;
  v24 = v11[14];
  v25 = v11[15];
  sub_23B979688();
  *&v14[v24] = KeyPath;
  *&v14[v25] = v20;
  sub_23B979688();
  sub_23B97B518(&qword_27E19C328, &qword_27E19C320, &qword_23BBFF3B0, &unk_23BC05438);
  return sub_23BBDC0D8();
}

void SubscriptionOfferView.init<>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  v21 = v20;
  v22 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  MEMORY[0x28223BE20](v22 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A8, &qword_23BBEED80);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_17(KeyPath);
  sub_23BA3A574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0B0, &unk_23BBEED88);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  sub_23BA3A574();
  v25 = swift_allocObject();
  sub_23BA373CC();
  v26 = (v21 + v23[13]);
  *v26 = sub_23BA37424;
  v26[1] = v25;
  sub_23BA373CC();
  v27 = swift_allocObject();
  sub_23BA373CC();
  v28 = (v21 + v23[14]);
  *v28 = sub_23BA37780;
  v28[1] = v27;
  OUTLINED_FUNCTION_19_8(v23[15]);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA3712C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C310, &qword_23BBEEF98);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_23BBDCD58();
  v12 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
  {
    sub_23B9846E8(v5, &qword_27E19C300, &qword_23BBFCF30);
    v13 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v14 = *(a2 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(0) + 36));
  v15 = v9[14];
  *&v11[v15] = swift_getKeyPath();
  v16 = v9[15];
  *&v11[v16] = swift_getKeyPath();
  v17 = &v11[v9[16]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v11[v9[13]];
  *v18 = v14;
  *(v18 + 1) = 0;
  v18[16] = 3;
  sub_23B979688();
  sub_23B97B518(&qword_27E19C318, &qword_27E19C310, &qword_23BBEEF98, &unk_23BC05438);

  return sub_23BBDC0D8();
}

uint64_t sub_23BA373CC()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BA37424(uint64_t a1)
{
  v3 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  OUTLINED_FUNCTION_13_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_23BA3712C(a1, v5);
}

uint64_t sub_23BA37490@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(0) + 36));
  a2[3] = &type metadata for SubscriptionOfferViewStyleConfiguration.Icon;
  a2[4] = sub_23BA3A828();
  *a2 = v3;
}

uint64_t objectdestroy_23Tm()
{
  OUTLINED_FUNCTION_10_0();
  v1 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v5 + 8))(v0 + v2);
  }

  v6 = v3 + v1[5];
  v7 = type metadata accessor for SubscriptionComparator.Compared(0);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v8 + 8))(v6);
    v9 = *(v7 + 20);
    v10 = sub_23BBDCC88();
    if (!__swift_getEnumTagSinglePayload(v6 + v9, 1, v10))
    {
      OUTLINED_FUNCTION_1_4();
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  if (*(v3 + v1[6]))
  {
  }

  if (*(v3 + v1[7]))
  {
  }

  v12 = v1[8];
  v13 = sub_23BBDCC88();
  if (!__swift_getEnumTagSinglePayload(v3 + v12, 1, v13))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v14 + 8))(v3 + v12, v13);
  }

  sub_23B99A808(*(v3 + v1[10]), *(v3 + v1[10] + 8), *(v3 + v1[10] + 16));

  v15 = v1[12];
  v16 = sub_23BBDCDB8();
  if (!__swift_getEnumTagSinglePayload(v3 + v15, 1, v16))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v17 + 8))(v3 + v15, v16);
  }

  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BA37780@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  OUTLINED_FUNCTION_13_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_23BA37490(v5, a1);
}

void SubscriptionOfferView.init(groupID:visibleRelationship:icon:placeholderIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_0();
  v23 = v22;
  v86 = v25;
  v87 = v24;
  v84 = v27;
  v85 = v26;
  v81 = v28;
  v82 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_3_2();
  v90 = v32;
  v89 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_20_6();
  v88 = v35;
  MEMORY[0x28223BE20](v36);
  v83 = &v75 - v37;
  OUTLINED_FUNCTION_3_2();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20_6();
  v79 = v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v75 - v43;
  v46 = *v45;
  v92 = v47;
  v93 = a21;
  v77 = a21;
  v78 = a22;
  v94 = a22;
  v95 = v48;
  v49 = v48;
  v91 = v48;
  v50 = OUTLINED_FUNCTION_21_7();
  v80 = type metadata accessor for SubscriptionOfferView(v50, v51);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_17(KeyPath);
  v53 = v82;
  *v31 = v81;
  v31[1] = v53;
  v31[2] = v46;
  v92 = v23;
  v93 = a21;
  v94 = a22;
  v95 = v49;
  v54 = OUTLINED_FUNCTION_21_7();
  type metadata accessor for SubscriptionOfferView.Storage(v54, v55);
  OUTLINED_FUNCTION_14_12();
  v56 = swift_storeEnumTagMultiPayload();
  v57 = v85(v56);
  v58 = v83;
  v87(v57);
  v59 = *(v39 + 32);
  v60 = v79;
  v59(v79, v44, v23);
  v61 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v62 = swift_allocObject();
  v76 = v23;
  v63 = v77;
  v64 = v78;
  *(v62 + 2) = v23;
  *(v62 + 3) = v63;
  v65 = v91;
  *(v62 + 4) = v64;
  *(v62 + 5) = v65;
  v59(v62 + v61, v60, v23);
  v66 = v80;
  v67 = (v31 + *(v80 + 52));
  *v67 = sub_23BA37C44;
  v67[1] = v62;
  v68 = v90 + 32;
  v69 = *(v90 + 32);
  v70 = v88;
  v69(v88, v58, v63);
  v71 = (*(v68 + 48) + 48) & ~*(v68 + 48);
  v72 = swift_allocObject();
  v72[2] = v76;
  v72[3] = v63;
  v73 = v91;
  v72[4] = v64;
  v72[5] = v73;
  v69(v72 + v71, v70, v63);
  v74 = (v31 + *(v66 + 56));
  *v74 = sub_23BA3A8A8;
  v74[1] = v72;
  OUTLINED_FUNCTION_19_8(*(v66 + 60));
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA37B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return sub_23BBDC0D8();
}

uint64_t sub_23BA37BD0()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_15_13();

  return swift_deallocObject();
}

uint64_t sub_23BA37C84@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  OUTLINED_FUNCTION_1_4();
  v4 = *(v3 + 16);

  return v4();
}

uint64_t objectdestroy_2Tm()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_15_13();

  return swift_deallocObject();
}

void SubscriptionOfferView.init<>(groupID:visibleRelationship:icon:)()
{
  OUTLINED_FUNCTION_22_7();
  v5 = v4;
  v7 = v6;
  var48[0] = *v8;
  v9 = sub_23B9AD84C();
  SubscriptionOfferView.init(groupID:visibleRelationship:icon:placeholderIcon:)(v7, v5, var48, v3, v2, sub_23B9D2750, 0, v1, &type metadata for AutomaticProductPlaceholderIcon, v0, v9, var48[0], var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
}

uint64_t SubscriptionOfferView.init<>(groupID:visibleRelationship:)()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v5 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C098, &qword_23BBEED68);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_16(KeyPath);
  *v3 = v1;
  v3[1] = v0;
  v3[2] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A0, &unk_23BBEED70);
  result = swift_storeEnumTagMultiPayload();
  v9 = (v3 + v6[13]);
  *v9 = sub_23BA39B24;
  v9[1] = 0;
  v10 = (v3 + v6[14]);
  *v10 = sub_23BA39B28;
  v10[1] = 0;
  *(v3 + v6[15]) = 0;
  return result;
}

uint64_t SubscriptionOfferView.init<>(groupID:visibleRelationship:useAppIcon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v9 = *a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C098, &qword_23BBEED68);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_17(KeyPath);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0A0, &unk_23BBEED70);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_24_7(&unk_284E5CC50);
  *(v12 + 16) = a4;
  v13 = (a5 + v10[13]);
  *v13 = sub_23BA39B2C;
  v13[1] = v12;
  result = OUTLINED_FUNCTION_24_7(&unk_284E5CC78);
  *(result + 16) = a4;
  v15 = (a5 + v10[14]);
  *v15 = sub_23BA39B34;
  v15[1] = result;
  *(a5 + v10[15]) = 0;
  return result;
}

uint64_t sub_23BA37FD4(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_23BB6F948(0, 0, &v3, 80.0, 80.0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C2D0, &qword_23BBEEF78);
  sub_23BA3A6CC();
  return sub_23BBDC0D8();
}

uint64_t sub_23BA3807C@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C2B0, &qword_23BBEEF68);
  sub_23BA3A5CC(&qword_27E19C2B8, &qword_27E19C2B0, &qword_23BBEEF68, sub_23BA3A648);
  result = sub_23BBDC0D8();
  v4 = MEMORY[0x277CE11C0];
  a2[3] = MEMORY[0x277CE11C8];
  a2[4] = v4;
  *a2 = result;
  return result;
}

void SubscriptionOfferView.body.getter()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v44 = v3;
  sub_23BBDB148();
  OUTLINED_FUNCTION_3_2();
  v42 = v5;
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v41 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08, &qword_23BBE8F80);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0B8, &qword_23BBEED98);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = (&v39 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0C0, &qword_23BBEEDA0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C0C8, &qword_23BBEEDA8);
  OUTLINED_FUNCTION_3_2();
  v39 = v21;
  v40 = v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v25 = v2[2];
  v26 = v2[3];
  v28 = v2[4];
  v27 = v2[5];
  sub_23BA38588(v0, v25, v26, v28, v27, v15);
  v45 = v25;
  v46 = v26;
  v47 = v28;
  v48 = v27;
  v29 = OUTLINED_FUNCTION_9_13();
  v31 = type metadata accessor for SubscriptionOfferView.Storage(v29, v30);
  sub_23BA34AB8(v31, v11);
  v32 = sub_23BBD9848();
  LOBYTE(v27) = __swift_getEnumTagSinglePayload(v11, 1, v32) == 1;
  sub_23B9846E8(v11, qword_27E199D08, &qword_23BBE8F80);
  v33 = &v19[*(v16 + 36)];
  *v33 = v27;
  if (qword_27E1977A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for StorefrontObserver(0);
  sub_23BA3A340(&qword_27E19C0D0, type metadata accessor for StorefrontObserver, &unk_23BBF5420);

  *(v33 + 1) = sub_23BBDA0E8();
  *(v33 + 2) = v34;
  v35 = *(type metadata accessor for StorefrontLocaleViewModifier(0) + 24);
  *&v33[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  swift_storeEnumTagMultiPayload();
  sub_23B979688();
  v36 = v41;
  sub_23BBDB138();
  v37 = sub_23BA39B64();
  sub_23BBDB968();
  (*(v42 + 8))(v36, v43);
  sub_23B9846E8(v19, &qword_27E19C0C0, &qword_23BBEEDA0);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v45 = v16;
  v46 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v40;
  sub_23BBDBA28();

  (*(v39 + 8))(v24, v38);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA38588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v150 = a1;
  v145 = a6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C280, &unk_23BBEEEF8);
  MEMORY[0x28223BE20](v127);
  v126 = &v119 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030, &qword_23BBE95D0);
  MEMORY[0x28223BE20](v11 - 8);
  v122 = &v119 - v12;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D20, &unk_23BBEEE20);
  MEMORY[0x28223BE20](v125);
  v124 = &v119 - v13;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C288, &qword_23BBEEF08);
  MEMORY[0x28223BE20](v132);
  v134 = (&v119 - v14);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C150, &qword_23BBEEE18);
  MEMORY[0x28223BE20](v133);
  v123 = &v119 - v15;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C140, &qword_23BBEEE10);
  MEMORY[0x28223BE20](v138);
  v136 = &v119 - v16;
  v121 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  MEMORY[0x28223BE20](v121);
  v120 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v135 = &v119 - v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C290, &qword_23BBEEF10);
  MEMORY[0x28223BE20](v142);
  v137 = (&v119 - v20);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C130, &qword_23BBEEE08);
  MEMORY[0x28223BE20](v149);
  v144 = (&v119 - v21);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C298, &qword_23BBEEF18);
  MEMORY[0x28223BE20](v146);
  v148 = &v119 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C2A0, &unk_23BBEEF20);
  MEMORY[0x28223BE20](v139);
  v141 = &v119 - v23;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C100, &qword_23BBEEDF0);
  MEMORY[0x28223BE20](v147);
  *&v143 = &v119 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  MEMORY[0x28223BE20](v131);
  v130 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v129 = &v119 - v27;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C110, &qword_23BBEEDF8);
  MEMORY[0x28223BE20](v140);
  v29 = &v119 - v28;
  v128 = type metadata accessor for Subscription(0);
  MEMORY[0x28223BE20](v128);
  v31 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  *__src = a2;
  *&__src[8] = a3;
  v33 = a3;
  v34 = a4;
  *&__src[16] = a4;
  *&__src[24] = a5;
  v35 = a5;
  v36 = type metadata accessor for SubscriptionOfferView.Storage(0, __src);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v119 - v38;
  (*(v40 + 16))(&v119 - v38, v150, v36, v37);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v92 = *(v39 + 1);
      v144 = *v39;
      v142 = v92;
      *__src = v32;
      *&__src[8] = v33;
      *&__src[16] = v34;
      *&__src[24] = v35;
      v93 = type metadata accessor for SubscriptionOfferView(0, __src);
      v94 = v150;
      v95 = (v150 + v93[13]);
      v96 = *v95;
      v97 = v95[1];
      v98 = swift_allocObject();
      *(v98 + 16) = v96;
      *(v98 + 24) = v97;
      v99 = *(v94 + v93[14]);

      v99(__src, v100);
      v101 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      v102 = MEMORY[0x28223BE20](v101);
      (*(v104 + 16))(&v119 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0), v102);
      v105 = sub_23BBDC0D8();
      LOBYTE(v93) = *(v94 + v93[15]);
      LOBYTE(v160) = 0;
      v156 = 0;
      LOBYTE(v157) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B720, qword_23BBED2D0);
      sub_23BBDBF58();
      v106 = v151;
      LOBYTE(v99) = v152;
      v107 = v153;
      v156 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730, &qword_23BBF4A30);
      sub_23BBDBF58();
      v109 = v151;
      v108 = v152;
      __swift_destroy_boxed_opaque_existential_1(__src);
      *__src = v144;
      *&__src[8] = v142;
      *&__src[16] = 0;
      __src[24] = v160;
      *&__src[32] = sub_23BA3A8A4;
      *&__src[40] = v98;
      *&__src[48] = v105;
      __src[56] = v93;
      *&__src[64] = v106;
      __src[72] = v99;
      *&__src[80] = v107;
      *&__src[88] = v109;
      *&__src[96] = v108;
      memcpy(v141, __src, 0x68uLL);
      swift_storeEnumTagMultiPayload();
      sub_23B979510();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C120, &qword_23BBEEE00);
      sub_23B97B518(&qword_27E19C108, &qword_27E19C110, &qword_23BBEEDF8, &unk_23BBEB280);
      sub_23B97B518(&qword_27E19C118, &qword_27E19C120, &qword_23BBEEE00, &unk_23BBED388);
      v59 = v143;
      sub_23BBDACD8();
      v60 = &qword_27E19C100;
      v61 = &qword_23BBEEDF0;
      sub_23B979510();
      goto LABEL_7;
    case 2u:
      v144 = type metadata accessor for Subscription;
      v119 = v31;
      sub_23BA373CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B8, &qword_23BBE8180);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_23BBE7F10;
      v137 = type metadata accessor for Subscription;
      sub_23BA3A574();
      *__src = v32;
      *&__src[8] = v33;
      *&__src[16] = v34;
      *&__src[24] = v35;
      v62 = type metadata accessor for SubscriptionOfferView(0, __src);
      v63 = v150;
      v64 = (v150 + v62[13]);
      v65 = *v64;
      v66 = v64[1];
      v67 = swift_allocObject();
      v138 = v67;
      *(v67 + 16) = v65;
      *(v67 + 24) = v66;
      v68 = *(v63 + v62[14]);

      v68(__src, v69);
      v70 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      v71 = MEMORY[0x28223BE20](v70);
      (*(v73 + 16))(&v119 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0), v71);
      v74 = sub_23BBDC0D8();
      v75 = *(v63 + v62[15]);
      v76 = v140;
      v77 = *(v140 + 64);
      sub_23BA3A574();
      __swift_storeEnumTagSinglePayload(&v29[v77], 0, 1, v128);
      *(v29 + 4) = v74;
      v78 = v76[19];
      *&v29[v78] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
      swift_storeEnumTagMultiPayload();
      v79 = &v29[v76[20]];
      *v79 = swift_getKeyPath();
      *(v79 + 8) = 0u;
      *(v79 + 24) = 0u;
      v79[40] = 0;
      v80 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
      v81 = v129;
      __swift_storeEnumTagSinglePayload(v129, 1, 1, v80);
      sub_23B979510();
      sub_23BBDBF58();
      sub_23B9846E8(v81, qword_27E199BF8, &qword_23BBE8DF0);
      *v29 = v142;
      v29[8] = 1;
      v82 = v138;
      *(v29 + 2) = sub_23BA3A8A4;
      *(v29 + 3) = v82;
      v29[40] = v75;
      *&v29[v76[18]] = MEMORY[0x277D84F90];
      v83 = &v29[v76[17]];
      *v83 = 0;
      v83[8] = 1;
      __swift_destroy_boxed_opaque_existential_1(__src);
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C120, &qword_23BBEEE00);
      sub_23B97B518(&qword_27E19C108, &qword_27E19C110, &qword_23BBEEDF8, &unk_23BBEB280);
      sub_23B97B518(&qword_27E19C118, &qword_27E19C120, &qword_23BBEEE00, &unk_23BBED388);
      v84 = v143;
      sub_23BBDACD8();
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BA39CD8();
      sub_23BA39DBC();
      sub_23BBDACD8();
      sub_23B9846E8(v84, &qword_27E19C100, &qword_23BBEEDF0);
      sub_23B9846E8(v29, &qword_27E19C110, &qword_23BBEEDF8);
      v85 = v119;
      v86 = v144;
      goto LABEL_10;
    case 3u:
      v87 = v135;
      sub_23BA373CC();
      *__src = v32;
      *&__src[8] = v33;
      *&__src[16] = v34;
      *&__src[24] = v35;
      v88 = type metadata accessor for SubscriptionOfferView(0, __src);
      sub_23BA34C54(v88, &v156);
      sub_23BB6BC9C(&v151);

      v160 = v158;
      sub_23B9846E8(&v160, &qword_27E19C2A8, &qword_23BBEEF30);
      if (v151)
      {
        v89 = v154;
        v90 = v151(v87);
        *v134 = v90;
        swift_storeEnumTagMultiPayload();
        sub_23BA39F00();
        swift_retain_n();
        v91 = v136;
        sub_23BBDACD8();

        *__src = v89;
        sub_23B9846E8(__src, &qword_27E19C2A8, &qword_23BBEEF30);
      }

      else
      {
        sub_23BA34C54(v88, __src);

        v159 = *&__src[32];
        sub_23B9846E8(&v159, &qword_27E19C2A8, &qword_23BBEEF30);
        swift_dynamicCastMetatype();
        v111 = v120;
        sub_23BA3A574();
        v112 = v122;
        sub_23B998C6C(v111, v122);
        v113 = *&v87[*(v121 + 36)];

        v114 = v124;
        sub_23BADDBE4(v112, v113, v124);
        v115 = v114 + *(v125 + 36);
        sub_23BA3A574();
        v116 = *(type metadata accessor for ConfigureSubscriptionOfferViewEnvironmentViewModifier(0) + 20);
        *(v115 + v116) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
        swift_storeEnumTagMultiPayload();
        sub_23B979510();
        swift_storeEnumTagMultiPayload();
        sub_23B97B75C();
        v117 = v123;
        sub_23BBDACD8();
        sub_23B9846E8(v114, &qword_27E197D20, &unk_23BBEEE20);
        sub_23B979510();
        swift_storeEnumTagMultiPayload();
        sub_23BA39F00();
        v91 = v136;
        sub_23BBDACD8();
        sub_23B9846E8(v117, &qword_27E19C150, &qword_23BBEEE18);
      }

      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C120, &qword_23BBEEE00);
      sub_23B97B518(&qword_27E19C118, &qword_27E19C120, &qword_23BBEEE00, &unk_23BBED388);
      sub_23BA39E74();
      v118 = v144;
      sub_23BBDACD8();
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BA39CD8();
      sub_23BA39DBC();
      sub_23BBDACD8();
      sub_23B9846E8(v118, &qword_27E19C130, &qword_23BBEEE08);
      sub_23B9846E8(v91, &qword_27E19C140, &qword_23BBEEE10);
      v86 = type metadata accessor for SubscriptionOfferViewStyleConfiguration;
      v85 = v87;
LABEL_10:
      result = sub_23BA3A4B8(v85, v86);
      break;
    default:
      v143 = *v39;
      v41 = v137;
      v141 = *(v39 + 2);
      *__src = v32;
      *&__src[8] = v33;
      *&__src[16] = v34;
      *&__src[24] = v35;
      v42 = type metadata accessor for SubscriptionOfferView(0, __src);
      v43 = v150;
      v44 = (v150 + v42[13]);
      v45 = *v44;
      v46 = v44[1];
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      *(v47 + 24) = v46;
      v48 = *(v43 + v42[14]);

      v48(__src, v49);
      v50 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      v51 = MEMORY[0x28223BE20](v50);
      (*(v53 + 16))(&v119 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
      v54 = sub_23BBDC0D8();
      LOBYTE(v42) = *(v43 + v42[15]);
      LOBYTE(v160) = 1;
      v156 = 0;
      LOBYTE(v157) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B720, qword_23BBED2D0);
      sub_23BBDBF58();
      v55 = v151;
      LOBYTE(v48) = v152;
      v56 = v153;
      v156 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730, &qword_23BBF4A30);
      sub_23BBDBF58();
      v57 = v151;
      v58 = v152;
      __swift_destroy_boxed_opaque_existential_1(__src);
      *__src = v143;
      *&__src[16] = v141;
      __src[24] = v160;
      *&__src[32] = sub_23BA3A544;
      *&__src[40] = v47;
      *&__src[48] = v54;
      __src[56] = v42;
      *&__src[64] = v55;
      __src[72] = v48;
      *&__src[80] = v56;
      *&__src[88] = v57;
      *&__src[96] = v58;
      memcpy(v41, __src, 0x68uLL);
      swift_storeEnumTagMultiPayload();
      sub_23B979510();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C120, &qword_23BBEEE00);
      sub_23B97B518(&qword_27E19C118, &qword_27E19C120, &qword_23BBEEE00, &unk_23BBED388);
      sub_23BA39E74();
      v59 = v144;
      sub_23BBDACD8();
      v60 = &qword_27E19C130;
      v61 = &qword_23BBEEE08;
      sub_23B979510();
LABEL_7:
      swift_storeEnumTagMultiPayload();
      sub_23BA39CD8();
      sub_23BA39DBC();
      sub_23BBDACD8();
      sub_23B9846E8(__src, &qword_27E19C120, &qword_23BBEEE00);
      result = sub_23B9846E8(v59, v60, v61);
      break;
  }

  return result;
}

unint64_t sub_23BA39B64()
{
  result = qword_27E19C0D8;
  if (!qword_27E19C0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C0C0, &qword_23BBEEDA0);
    sub_23BA3A5CC(&qword_27E19C0E0, &qword_27E19C0B8, &qword_23BBEED98, sub_23BA39C4C);
    sub_23BA3A340(qword_27E19C158, type metadata accessor for StorefrontLocaleViewModifier, &unk_23BBF53D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C0D8);
  }

  return result;
}

unint64_t sub_23BA39C4C()
{
  result = qword_27E19C0E8;
  if (!qword_27E19C0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C0F0, &qword_23BBEEDE8);
    sub_23BA39CD8();
    sub_23BA39DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C0E8);
  }

  return result;
}

unint64_t sub_23BA39CD8()
{
  result = qword_27E19C0F8;
  if (!qword_27E19C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C100, &qword_23BBEEDF0);
    sub_23B97B518(&qword_27E19C108, &qword_27E19C110, &qword_23BBEEDF8, &unk_23BBEB280);
    sub_23B97B518(&qword_27E19C118, &qword_27E19C120, &qword_23BBEEE00, &unk_23BBED388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C0F8);
  }

  return result;
}

unint64_t sub_23BA39DBC()
{
  result = qword_27E19C128;
  if (!qword_27E19C128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C130, &qword_23BBEEE08);
    sub_23B97B518(&qword_27E19C118, &qword_27E19C120, &qword_23BBEEE00, &unk_23BBED388);
    sub_23BA39E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C128);
  }

  return result;
}

unint64_t sub_23BA39E74()
{
  result = qword_27E19C138;
  if (!qword_27E19C138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C140, &qword_23BBEEE10);
    sub_23BA39F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C138);
  }

  return result;
}

unint64_t sub_23BA39F00()
{
  result = qword_27E19C148;
  if (!qword_27E19C148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C150, &qword_23BBEEE18);
    sub_23B97B75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C148);
  }

  return result;
}

void sub_23BA39FC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = v1;
  v2 = type metadata accessor for SubscriptionOfferView.Storage(319, &v8);
  if (v3 <= 0x3F)
  {
    *&v8 = v2;
    v4 = sub_23B975E04();
    if (v5 <= 0x3F)
    {
      *(&v8 + 1) = v4;
      *&v9 = v4;
      *(&v9 + 1) = MEMORY[0x277D839B0];
      sub_23BA3A1F4();
      if (v7 <= 0x3F)
      {
        v10 = v6;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA3A094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v10[0] = *(a3 + 16);
  v10[1] = v6;
  v7 = type metadata accessor for SubscriptionOfferView.Storage(0, v10);
  if (*(*(v7 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  v9 = *(a1 + *(a3 + 52));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_23BA3A150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  v10[0] = *(a4 + 16);
  v10[1] = v8;
  result = type metadata accessor for SubscriptionOfferView.Storage(0, v10);
  if (*(*(result - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52)) = (a2 - 1);
  return result;
}

void sub_23BA3A1F4()
{
  if (!qword_27E19ACB8)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19ACB8);
    }
  }
}

unint64_t sub_23BA3A248()
{
  result = qword_27E19C1E0;
  if (!qword_27E19C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19C1E8, &qword_23BBEEED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C0C0, &qword_23BBEEDA0);
    sub_23BA39B64();
    swift_getOpaqueTypeConformance2();
    sub_23BA3A340(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C1E0);
  }

  return result;
}

uint64_t sub_23BA3A340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23BA3A388(uint64_t a1)
{
  sub_23BA3A424();
  if (v1 <= 0x3F)
  {
    sub_23BA3A488();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Subscription(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SubscriptionOfferViewStyleConfiguration(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_23BA3A424()
{
  if (!qword_27E19C270)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E19C270);
    }
  }
}

uint64_t sub_23BA3A488()
{
  result = qword_27E19C278;
  if (!qword_27E19C278)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27E19C278);
  }

  return result;
}

uint64_t sub_23BA3A4B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BA3A50C()
{

  return swift_deallocObject();
}

uint64_t sub_23BA3A544@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_23BA3A574()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BA3A5CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23BA3A648()
{
  result = qword_27E19C2C0;
  if (!qword_27E19C2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C2C8, &qword_23BBEEF70);
    sub_23B9AD84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2C0);
  }

  return result;
}

unint64_t sub_23BA3A6CC()
{
  result = qword_27E19C2D8;
  if (!qword_27E19C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C2D0, &qword_23BBEEF78);
    sub_23BA3A750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2D8);
  }

  return result;
}

unint64_t sub_23BA3A750()
{
  result = qword_27E19C2E0;
  if (!qword_27E19C2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C2E8, &unk_23BBEEF80);
    sub_23BA3A7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2E0);
  }

  return result;
}

unint64_t sub_23BA3A7D4()
{
  result = qword_27E19C2F0;
  if (!qword_27E19C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2F0);
  }

  return result;
}

unint64_t sub_23BA3A828()
{
  result = qword_27E19C2F8;
  if (!qword_27E19C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C2F8);
  }

  return result;
}

double OUTLINED_FUNCTION_4_16(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0;
  return result;
}

double OUTLINED_FUNCTION_5_17(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0;
  return result;
}

double OUTLINED_FUNCTION_17_10(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_18_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, __int128 a12, uint64_t a13)
{
  result = a11;
  *v13 = a11;
  *(v13 + 16) = a12;
  *(v13 + 32) = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t a1)
{

  return swift_allocObject();
}

double SubscriptionStoreView.init(groupID:visibleRelationships:marketingContent:)@<D0>(ValueMetadata *a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v16 = *v15;
  *&v21 = v17;
  *(&v21 + 1) = v18;
  v22 = v16;
  v23 = 1;
  v19(v17, v18, v15, v19);
  return sub_23BA3B958(&v21, v14, 0, a6, a7, x8_0);
}

uint64_t sub_23BA3AA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23B99FCE0(v2 + *(a1 + 44), v12, &qword_27E1996C8, &qword_23BBE8198);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v13;
  }

  else
  {
    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_23BA3ABEC(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v8);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_23BA3AD3C(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
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
    return v11[15];
  }

  return v8;
}

uint64_t sub_23BA3AEC8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D8, &unk_23BBFBD20);
  sub_23BBDBF68();
  return v2;
}

uint64_t sub_23BA3AF74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF68();
  return v2;
}

uint64_t sub_23BA3B038(uint64_t a1)
{
  type metadata accessor for SubscriptionStoreViewEventConfiguration(0);
  sub_23BBDBF58();
  return v2;
}

uint64_t sub_23BA3B074(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D0, &unk_23BBEF4F0);
  sub_23BBDBF68();
  return v2;
}

unint64_t sub_23BA3B0CC(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 72);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    LOBYTE(v12) = BYTE1(*v7);
    BYTE1(v12) = BYTE2(v8);
    BYTE2(v12) = BYTE3(v8);
    HIBYTE(v12) = BYTE4(v8);
  }

  else
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[11];
  }

  return v8 | (v12 << 8);
}

void *sub_23BA3B24C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (v2 + *(a1 + 76)), sizeof(__dst));
  sub_23BA5DACC(__src);
  return memcpy(a2, __src, 0x51uLL);
}

uint64_t sub_23BA3B2A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Subscription(0) - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[24] == 2 && *(*v1 + 16))
  {
    v7 = sub_23BA3FDD4(*v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Subscription);
    MEMORY[0x23EEB50B0](v7);
    sub_23BA3FE34(v6, type metadata accessor for Subscription);
    v8 = sub_23BBD9848();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  }

  else
  {
    v10 = sub_23BBD9848();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }
}

double sub_23BA3B400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = swift_getKeyPath();
  *(a6 + 72) = 0;
  *(a6 + 80) = swift_getKeyPath();
  *(a6 + 88) = 0;
  *(a6 + 96) = swift_getKeyPath();
  *(a6 + 104) = 0;
  *(a6 + 112) = swift_getKeyPath();
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 136) = 0;
  *(a6 + 144) = 0;
  sub_23BBDBF58();
  *(a6 + 152) = v19;
  sub_23BBDBF58();
  *(a6 + 168) = v19;
  *(a6 + 176) = *(&v19 + 1);
  type metadata accessor for SubscriptionStoreViewEventConfiguration(0);
  swift_allocObject();
  v18 = sub_23BB15FA0();
  sub_23BBDBF58();
  *(a6 + 184) = v19;
  *(a6 + 200) = swift_getKeyPath();
  *(a6 + 208) = 0;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  LOBYTE(v18) = 0;
  v12 = swift_getKeyPath();
  v23[0] = 0;
  v13 = swift_getKeyPath();
  v22[0] = 0;
  v14 = swift_getKeyPath();
  v21[0] = 0;
  *(a6 + 216) = KeyPath;
  *(a6 + 224) = 0;
  *(a6 + 225) = *v23;
  *(a6 + 228) = *&v23[3];
  *(a6 + 232) = v11;
  *(a6 + 240) = 0;
  *(a6 + 241) = *v22;
  *(a6 + 244) = *&v22[3];
  *(a6 + 248) = v12;
  *(a6 + 256) = 0;
  *(a6 + 257) = *v21;
  *(a6 + 260) = *&v21[3];
  *(a6 + 264) = v13;
  *(a6 + 272) = 0;
  *(a6 + 280) = 0;
  *(a6 + 284) = *&v20[3];
  *(a6 + 281) = *v20;
  *(a6 + 288) = v14;
  *(a6 + 296) = 0;
  *(a6 + 304) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 25) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D0, &unk_23BBEF4F0);
  sub_23BBDBF68();
  *(v18 + 59) = 0;

  return result;
}

double sub_23BA3B664@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4E0, &unk_23BBF5CF0);
  v10 = a7 + v9[11];
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(KeyPath);
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(v12);
  v13 = a7 + v9[14];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  v14 = v9[15];
  sub_23BBDBF58();
  *(a7 + v14) = v31;
  v15 = a7 + v9[16];
  sub_23BBDBF58();
  *v15 = v31;
  *(v15 + 8) = *(&v31 + 1);
  v16 = (a7 + v9[17]);
  type metadata accessor for SubscriptionStoreViewEventConfiguration(0);
  swift_allocObject();
  v30 = sub_23BB15FA0();
  sub_23BBDBF58();
  *v16 = v31;
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(v17);
  v18 = a7 + v9[19];
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  LOBYTE(v30) = 0;
  v21 = swift_getKeyPath();
  v35[0] = 0;
  v22 = swift_getKeyPath();
  v34[0] = 0;
  v23 = swift_getKeyPath();
  v33[0] = 0;
  *v18 = v19;
  *(v18 + 8) = 0;
  *(v18 + 9) = *v35;
  *(v18 + 12) = *&v35[3];
  *(v18 + 16) = v20;
  *(v18 + 24) = 0;
  *(v18 + 25) = *v34;
  *(v18 + 28) = *&v34[3];
  *(v18 + 32) = v21;
  *(v18 + 40) = 0;
  *(v18 + 41) = *v33;
  *(v18 + 44) = *&v33[3];
  *(v18 + 48) = v22;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 68) = *&v32[3];
  *(v18 + 65) = *v32;
  *(v18 + 72) = v23;
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  sub_23BA3FDD4(a5, a7 + v9[9], type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent);
  *(a7 + v9[10]) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D0, &unk_23BBEF4F0);
  sub_23BBDBF68();
  sub_23BA3FE34(a5, type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent);
  *(v30 + 59) = 1;

  return result;
}

double sub_23BA3B958@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = *a1;
  v9 = *(a1 + 2);
  v32 = *(a1 + 24);
  v10 = type metadata accessor for SubscriptionStoreView(0, a4, a5, a4);
  v11 = a6 + v10[11];
  *v11 = swift_getKeyPath();
  *(v11 + 40) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(KeyPath);
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(v13);
  v14 = a6 + v10[14];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v15 = (a6 + v10[15]);
  *v15 = sub_23BA3AE90(0);
  v15[1] = v16;
  v17 = a6 + v10[16];
  *v17 = sub_23B9BE5CC(0) & 1;
  *(v17 + 8) = v18;
  v19 = (a6 + v10[17]);
  type metadata accessor for SubscriptionStoreViewEventConfiguration(0);
  swift_allocObject();
  v20 = sub_23BB15FA0();
  *v19 = sub_23BA3B038(v20);
  v19[1] = v21;
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_21_8(v22);
  v23 = a6 + v10[19];
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  *v23 = v24;
  *(v23 + 8) = 0;
  *(v23 + 16) = v25;
  *(v23 + 24) = 0;
  *(v23 + 32) = v26;
  *(v23 + 40) = 0;
  *(v23 + 48) = v27;
  *(v23 + 56) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = v28;
  *(v23 + 80) = 0;
  *(v23 + 88) = 0;
  *a6 = v33;
  *(a6 + 16) = v9;
  *(a6 + 24) = v32;
  Description = a4[-1].Description;
  Description[2](a6 + v10[9], a2, a4);
  *(a6 + v10[10]) = a3;
  v30 = sub_23BA3B074(v10);
  (Description[1])(a2, a4);
  *(v30 + 59) = a4 != &type metadata for AutomaticSubscriptionStoreMarketingContent;

  return result;
}

uint64_t SubscriptionStoreView.init<A>(productIDs:marketingContent:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, ValueMetadata *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_3_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  (*(v17 + 16))(v20 - v19, a1, v21);
  v26 = 0;
  v25 = sub_23BBDD2B8();
  v27 = 0;
  a2();
  v22 = sub_23BA3B958(&v25, v15, 0, a3, a5, a7);
  return (*(v17 + 8))(a1, a4, v22);
}

uint64_t SubscriptionStoreView.init<A>(subscriptions:marketingContent:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, uint64_t, uint64_t, uint64_t)@<X1>, ValueMetadata *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  v25 = 0;
  v24 = sub_23BA52E70(v16, 0, 1, v17, v18);
  v26 = 2;
  a2(v24, v19, v20, v21);
  sub_23BA3B958(&v24, v15, 0, a3, a5, a6);
  OUTLINED_FUNCTION_1_4();
  return (*(v22 + 8))(a1, a4);
}

uint64_t SubscriptionStoreView.init<A>(productIDs:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v8 = OUTLINED_FUNCTION_13_14(v7);
  v9(v8);
  sub_23B9B0108();
  v10 = OUTLINED_FUNCTION_19_9();
  SubscriptionStoreView.init<A>(productIDs:marketingContent:)(v10, v11, v12, v13, v14, v15);
  return (*(v5 + 8))(a1, a2);
}

uint64_t SubscriptionStoreView.init<A>(subscriptions:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v8 = OUTLINED_FUNCTION_13_14(v7);
  v9(v8);
  sub_23B9B0108();
  v10 = OUTLINED_FUNCTION_19_9();
  SubscriptionStoreView.init<A>(subscriptions:marketingContent:)(v10, v11, v12, v13, v14, v15);
  return (*(v5 + 8))(a1, a2);
}

uint64_t sub_23BA3C064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(v3 + 24) == 1;
  result = sub_23BA3AEC8(a2);
  v9 = *(v3 + *(a2 + 40));
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = result;
  *(a3 + 24) = v9;
  return result;
}

void sub_23BA3C0C8(uint64_t a1)
{
  if (sub_23BA3AD3C(a1) == 3)
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10.origin.x = v3;
    v10.origin.y = v5;
    v10.size.width = v7;
    v10.size.height = v9;
    CGRectGetWidth(v10);
  }
}

uint64_t sub_23BA3C178(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_23BBDA358();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v11 = sub_23BA3AEC8(a1);
  v12 = sub_23BB0607C(v11);
  v13 = sub_23BA3AF74(a1);
  v14 = *(v1 + *(a1 + 40));
  v15 = *(a1 + 24);
  sub_23B97AA68(v12 & 1, v13 & 1, (v14 & 1) == 0, v3, v15);
  v16 = sub_23B97B560();
  v19[0] = v15;
  v19[1] = v16;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v17 = *(v5 + 8);
  v17(v7, v4);
  sub_23B9D2D88();
  return (v17)(v10, v4);
}

uint64_t SubscriptionStoreView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v228 = a1;
  v241 = a2;
  sub_23BBDB148();
  OUTLINED_FUNCTION_3_2();
  v239 = v4;
  v240 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v238 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08, &qword_23BBE8F80);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_2();
  v237 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810, &qword_23BBE8398);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_2();
  v236 = v12;
  OUTLINED_FUNCTION_3_2();
  v257 = v13;
  v253 = *(v14 + 64);
  MEMORY[0x28223BE20](v15);
  v252 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = *(a1 + 16);
  sub_23BBDA358();
  v17 = *(a1 + 24);
  v255 = v17;
  v18 = sub_23B97B560();
  v292 = v17;
  v293 = v18;
  v245 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v20 = OUTLINED_FUNCTION_15_4();
  v23 = type metadata accessor for SubscriptionStoreDynamicView(v20, v21, WitnessTable, v22);
  OUTLINED_FUNCTION_26_3(v23);
  v24 = OUTLINED_FUNCTION_15_4();
  type metadata accessor for ProductChangeCountTracker(v24, v25, WitnessTable, v26);
  v251 = sub_23BBDACE8();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_3_2();
  v249 = v28;
  v250 = v27;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22_2();
  v242 = v30;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v247 = v31;
  OUTLINED_FUNCTION_3_2();
  v223 = v32;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_2();
  v244 = v34;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v248 = v35;
  OUTLINED_FUNCTION_3_2();
  v227 = v36;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22_2();
  v246 = v38;
  v39 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v229 = v40;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_2();
  v218 = v42;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8, &qword_23BBEF050);
  OUTLINED_FUNCTION_22_8();
  v191 = v39;
  v43 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v232 = v44;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22_2();
  v222 = v46;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C330, &qword_23BBEF058);
  v194 = v43;
  v47 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v231 = v48;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_22_2();
  v224 = v50;
  v195 = v47;
  v51 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v233 = v52;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_22_2();
  v225 = v54;
  type metadata accessor for StorefrontLocaleViewModifier(255);
  v200 = v51;
  v55 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v234 = v56;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_22_2();
  v226 = v58;
  v201 = v55;
  v59 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v235 = v60;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_22_2();
  v230 = v62;
  v63 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_5_18(v63);
  v64 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_17();
  v65 = swift_getWitnessTable();
  v290 = v64;
  v291 = v65;
  v187 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_17(v187);
  v186 = swift_getWitnessTable();
  v66 = MEMORY[0x277CDFC60];
  v288 = v186;
  v289 = MEMORY[0x277CDFC60];
  v67 = swift_getWitnessTable();
  v188 = v67;
  v68 = sub_23BA3D728();
  v286 = v67;
  v287 = v68;
  v69 = swift_getWitnessTable();
  v189 = v69;
  v70 = sub_23BA3D77C();
  v284 = v69;
  v285 = v70;
  v71 = swift_getWitnessTable();
  v190 = v71;
  v72 = sub_23BA3E900(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050);
  v282 = v71;
  v283 = v72;
  v73 = swift_getWitnessTable();
  v192 = v73;
  v74 = sub_23BA3E900(&qword_27E19C348, &qword_27E19C330, &qword_23BBEF058);
  v280 = v73;
  v281 = v74;
  v75 = swift_getWitnessTable();
  v193 = v75;
  v76 = sub_23BA3D7D0();
  v278 = v75;
  v279 = v76;
  v77 = swift_getWitnessTable();
  v196 = v77;
  OUTLINED_FUNCTION_6_13();
  v80 = sub_23BA3FC18(v78, v79, &unk_23BBF53D0);
  v276 = v77;
  v277 = v80;
  v199 = swift_getWitnessTable();
  v274 = v199;
  v275 = v66;
  v204 = v59;
  v203 = swift_getWitnessTable();
  *&v271 = v59;
  *(&v271 + 1) = v203;
  v206 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v207 = v81;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_22_2();
  v197 = v83;
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_22_8();
  v205 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v210 = v84;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_22_2();
  v198 = v86;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C358, &qword_23BBEF060);
  OUTLINED_FUNCTION_22_8();
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v209 = v87;
  OUTLINED_FUNCTION_3_2();
  v214 = v88;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_22_2();
  v243 = v90;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v213 = v91;
  OUTLINED_FUNCTION_3_2();
  v219 = v92;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_22_2();
  v208 = v94;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v215 = v95;
  OUTLINED_FUNCTION_3_2();
  v220 = v96;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_22_2();
  v211 = v98;
  v217 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v221 = v99;
  MEMORY[0x28223BE20](v100);
  v212 = &v186 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v216 = &v186 - v103;
  v104 = v256;
  v258 = v256;
  v259 = v255;
  v105 = v254;
  v260 = v254;
  v106 = v242;
  sub_23BBDBE18();
  sub_23BBDC318();
  v107 = v250;
  sub_23BBDBB18();
  (*(v249 + 8))(v106, v107);
  v108 = v257;
  v109 = *(v257 + 16);
  v251 = v257 + 16;
  v250 = v109;
  v110 = v252;
  v111 = v228;
  v109(v252, v105, v228);
  v249 = *(v108 + 80);
  v112 = (v249 + 32) & ~v249;
  v113 = swift_allocObject();
  *(v113 + 16) = v104;
  v114 = v255;
  *(v113 + 24) = v255;
  v115 = *(v108 + 32);
  v116 = v110;
  v117 = v111;
  v115(v113 + v112, v116, v111);
  v242 = v115;
  v257 = v108 + 32;
  v118 = v247;
  v119 = v244;
  sub_23BB06140(sub_23BA3E188, v113, v247, v188);

  (*(v223 + 8))(v119, v118);
  v120 = v252;
  v121 = v254;
  v250(v252, v254, v117);
  v187 = v112;
  v122 = swift_allocObject();
  *(v122 + 16) = v256;
  *(v122 + 24) = v114;
  v115(v122 + v112, v120, v117);
  v123 = v218;
  v124 = v248;
  v125 = v246;
  sub_23BB2FDBC(sub_23BA3E250, v122, v248);

  (*(v227 + 8))(v125, v124);
  v126 = sub_23BA3AEC8(v117);
  LOBYTE(v122) = sub_23BB0607C(v126);
  v127 = v121;
  v128 = sub_23BA3AF74(v117);
  v129 = v222;
  v130 = v191;
  sub_23B97AB94(v122 & 1, v128 & 1, v191, v190);
  (*(v229 + 8))(v123, v130);
  swift_getKeyPath();
  v131 = v117;
  sub_23BA3AA74(v117, &v271);
  sub_23BA3AEC8(v117);
  sub_23BA3ABEC(v117);
  v132 = v236;
  sub_23BACC004();

  sub_23B97ADDC(&v271);
  v133 = v224;
  v134 = v194;
  sub_23BBDB748();

  sub_23B979910(v132, &qword_27E199810, &qword_23BBE8398);
  (*(v232 + 8))(v129, v134);
  v135 = v225;
  v136 = v195;
  v137 = sub_23BA02F24(v195, v193);
  (*(v231 + 8))(v133, v136, v137);
  v138 = *(v127 + 2);
  v139 = *(v127 + 24);
  v140 = v127;
  v271 = *v127;
  v272 = v138;
  v273 = v139;
  v141 = v237;
  sub_23BA3B2A4(v237);
  v142 = sub_23BBD9848();
  LOBYTE(v125) = __swift_getEnumTagSinglePayload(v141, 1, v142) == 1;
  sub_23B979910(v141, qword_27E199D08, &qword_23BBE8F80);
  v143 = v226;
  v144 = v200;
  sub_23BA98F9C(v125, v200, v196);
  (*(v233 + 8))(v135, v144);
  sub_23BA3C0C8(v131);
  sub_23BBDC318();
  v145 = v201;
  v146 = v230;
  sub_23BBDBB18();
  (*(v234 + 8))(v143, v145);
  v147 = v238;
  sub_23BBDB138();
  v148 = v197;
  v150 = v203;
  v149 = v204;
  sub_23BBDB968();
  (*(v239 + 8))(v147, v240);
  (*(v235 + 8))(v146, v149);
  KeyPath = swift_getKeyPath();
  *&v271 = v149;
  *(&v271 + 1) = v150;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v153 = v198;
  v154 = OpaqueTypeMetadata2;
  sub_23B9968C4(KeyPath, OpaqueTypeMetadata2, OpaqueTypeConformance2);

  (*(v207 + 8))(v148, v154);
  v155 = v131;
  v156 = sub_23BA3B074(v131);
  OUTLINED_FUNCTION_7_21();
  v159 = sub_23BA3FC18(v157, v158, MEMORY[0x277CDE458]);
  v269 = OpaqueTypeConformance2;
  v270 = v159;
  v160 = v205;
  v161 = swift_getWitnessTable();
  sub_23BB14550(v156, v160, v161);

  (*(v210 + 8))(v153, v160);
  v162 = v252;
  v250(v252, v140, v155);
  v163 = OUTLINED_FUNCTION_25_4(&unk_284E5CE30);
  v164 = OUTLINED_FUNCTION_20_7(v163);
  v165 = v155;
  (v242)(v164);
  v166 = sub_23BA3E900(&qword_27E19C360, &qword_27E19C358, &qword_23BBEF060);
  v267 = v161;
  v268 = v166;
  v167 = v209;
  v168 = swift_getWitnessTable();
  v169 = v208;
  v170 = v243;
  sub_23BBDBBF8();

  (*(v214 + 8))(v170, v167);
  v250(v162, v254, v165);
  v171 = OUTLINED_FUNCTION_25_4(&unk_284E5CE58);
  v172 = OUTLINED_FUNCTION_20_7(v171);
  (v242)(v172);
  v173 = MEMORY[0x277CE0790];
  v265 = v168;
  v266 = MEMORY[0x277CE0790];
  v174 = v213;
  v175 = swift_getWitnessTable();
  v176 = v211;
  sub_23BBDB778();

  (*(v219 + 8))(v169, v174);
  v263 = v175;
  v264 = v173;
  v177 = v215;
  v178 = swift_getWitnessTable();
  v179 = v212;
  v180 = sub_23BB6FA24(v177, v178);
  (*(v220 + 8))(v176, v177, v180);
  v181 = sub_23BA3EBE0();
  v261 = v178;
  v262 = v181;
  v182 = v217;
  swift_getWitnessTable();
  v183 = v216;
  sub_23B9D2D88();
  v184 = *(v221 + 8);
  v184(v179, v182);
  sub_23B9D2D88();
  return (v184)(v183, v182);
}

unint64_t sub_23BA3D728()
{
  result = qword_27E19C338;
  if (!qword_27E19C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C338);
  }

  return result;
}

unint64_t sub_23BA3D77C()
{
  result = qword_27E19C340;
  if (!qword_27E19C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C340);
  }

  return result;
}

unint64_t sub_23BA3D7D0()
{
  result = qword_27E19C350;
  if (!qword_27E19C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C350);
  }

  return result;
}

uint64_t sub_23BA3D824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v7 = sub_23BBDA358();
  v57 = a3;
  v82 = a3;
  v83 = sub_23B97B560();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for ProductChangeCountTracker(0, v7, WitnessTable, v9);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v51 - v14;
  v58 = WitnessTable;
  v16 = type metadata accessor for SubscriptionStoreDynamicView(255, v7, WitnessTable, v15);
  v17 = sub_23BBDACE8();
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v54 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v55 = *(v16 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v53 = &v51 - v26;
  v62 = v27;
  v61 = sub_23BBDACE8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v51 - v29;
  v30 = *a1;
  v31 = a1[1];
  v32 = a1[2];
  if (*(a1 + 24))
  {
    if (*(a1 + 24) != 1)
    {
      v74 = 15;
      sub_23BA3FD38(v30, v31, v32, 2);
      v44 = type metadata accessor for SubscriptionStoreView(0, a2, v57, v43);
      sub_23BA3C064(&v74, v44, &v78);
      v74 = v78;
      v75 = v79;
      v76 = v80;
      v77 = v81;
      sub_23BA3C178(v44);
      sub_23BACB3B0(v30, &v74, v21, v7, v58, v12);
      swift_getWitnessTable();
      v45 = v51;
      sub_23B9D2D88();
      v46 = *(v52 + 8);
      v46(v12, v10);
      sub_23B9D2D88();
      v72 = swift_getWitnessTable();
      v73 = v72;
      swift_getWitnessTable();
      v42 = v59;
      sub_23BA82E14();
      v46(v12, v10);
      v46(v45, v10);
      goto LABEL_7;
    }

    v74 = a1[2];
    v33 = type metadata accessor for SubscriptionStoreView(0, a2, v57, v28);

    sub_23BA3C064(&v74, v33, &v78);
    v74 = v78;
    v75 = v79;
    v76 = v80;
    v77 = v81;
    sub_23BA3C178(v33);
    sub_23BA97CC4(v30, v31, 1, &v74, v21, v7, v58, v24);
    v34 = swift_getWitnessTable();
    v35 = v53;
    sub_23B9D2D88();
    v36 = *(v55 + 8);
    v36(v24, v16);
    sub_23B9D2D88();
    v37 = v54;
    sub_23BA82D64();
    v64 = v34;
    v65 = v34;
  }

  else
  {
    v74 = 15;
    sub_23BA3FD38(v30, v31, v32, 0);
    v39 = type metadata accessor for SubscriptionStoreView(0, a2, v57, v38);
    sub_23BA3C064(&v74, v39, &v78);
    v74 = v78;
    v75 = v79;
    v76 = v80;
    v77 = v81;
    sub_23BA3C178(v39);
    sub_23BA97CC4(v30, 0, 0, &v74, v21, v7, v58, v24);
    v40 = swift_getWitnessTable();
    v35 = v53;
    sub_23B9D2D88();
    v36 = *(v55 + 8);
    v36(v24, v16);
    sub_23B9D2D88();
    v37 = v54;
    sub_23BA82E14();
    v66 = v40;
    v67 = v40;
  }

  v41 = v62;
  swift_getWitnessTable();
  swift_getWitnessTable();
  v42 = v59;
  sub_23BA82D64();
  (*(v56 + 8))(v37, v41);
  v36(v24, v16);
  v36(v35, v16);
LABEL_7:
  v70 = swift_getWitnessTable();
  v71 = v70;
  v47 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v68 = v47;
  v69 = v48;
  v49 = v61;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v60 + 8))(v42, v49);
}

uint64_t sub_23BA3E158(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4 || a4 == 2 || a4 == 1)
  {
  }

  return v4;
}

double sub_23BA3E17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_23BA3E188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = type metadata accessor for SubscriptionStoreView(0, v6, v7, a4);
  OUTLINED_FUNCTION_13_0(v8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_23BA3E0FC(a1, v10, v6, v7);
}

uint64_t sub_23BA3E250(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = type metadata accessor for SubscriptionStoreView(0, v6, v7, a4);
  OUTLINED_FUNCTION_13_0(v8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_23BA3E210(a1, v10, v6, v7);
}

uint64_t sub_23BA3E374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SubscriptionStoreView(0, a2, a3, a4);
  sub_23BA3B074(v5);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  sub_23BA3FD38(*a1, v9, v10, v11);
  sub_23BA3B24C(v5, v12);
  sub_23BA3B0CC(v5);
  sub_23BB145C4();
  sub_23B979500(v12[0], v12[1]);
  sub_23B979500(v12[2], v12[3]);
  sub_23B979500(v12[4], v12[5]);
  sub_23B979500(v12[6], v12[7]);
  v15 = v13;
  v16 = v14;
  sub_23B979910(&v15, &qword_27E19B400, &qword_23BBFF360);

  sub_23BA3E158(v8, v9, v10, v11);
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v6, qword_27E1BFC88);
  sub_23BBDD5B8();
  return sub_23B9D395C();
}

double sub_23BA3E4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SubscriptionStoreView(0, a2, a3, a4);
  sub_23BA3B074(v4);
  sub_23BA3B24C(v4, v7);
  v5 = sub_23BA3B0CC(v4);
  sub_23BB14788(v7, v5 & 0xFFFFFFFFFFLL);
  sub_23B979500(v7[0], v7[1]);
  sub_23B979500(v7[2], v7[3]);
  sub_23B979500(v7[4], v7[5]);
  sub_23B979500(v7[6], v7[7]);
  v10 = v8;
  v11 = v9;
  sub_23B979910(&v10, &qword_27E19B400, &qword_23BBFF360);

  sub_23BA3B074(v4);
  sub_23BB148CC();

  return result;
}

uint64_t AutomaticSubscriptionStoreMarketingContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(type metadata accessor for SubscriptionStoreDefaultMarketingView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860, &qword_23BBE83E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BA3E708@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Product.SubscriptionRelationship.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23BA3E748@<X0>(uint64_t *a1@<X8>)
{
  result = Product.SubscriptionRelationship.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23BA3E7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_13_0(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_23B99FCE0(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_23BA3E864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BADA1E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BA3E890(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23BADA220(v1, v2);
}

uint64_t sub_23BA3E900(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for SubscriptionStoreView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  sub_23BA3E158(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24));
  (*(*(v5 - 8) + 8))(v7 + v6[9], v5);
  v8 = v7 + v6[11];
  if (*(v8 + 40))
  {
    if (*(v8 + 24) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }

  else
  {
  }

  v9 = OUTLINED_FUNCTION_7_9(v6[12]);
  j__swift_release(v9);
  v10 = OUTLINED_FUNCTION_7_9(v6[13]);
  sub_23B97B450(v10, v11);
  v12 = v7 + v6[14];
  sub_23BA3E17C(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32));

  v13 = OUTLINED_FUNCTION_7_9(v6[18]);
  sub_23B97B450(v13, v14);
  v15 = v7 + v6[19];
  j__swift_release(*v15);
  j__swift_release(*(v15 + 16));
  j__swift_release(*(v15 + 32));
  v17.n128_f64[0] = sub_23BA15630(*(v15 + 48), *(v15 + 56), *(v15 + 64), v16);
  sub_23BA15630(*(v15 + 72), *(v15 + 80), *(v15 + 88), v17);

  return swift_deallocObject();
}

uint64_t sub_23BA3EB4C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SubscriptionStoreView(0, v5, v6, a4);
  OUTLINED_FUNCTION_13_0(v7);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a1(v9, v5, v6);
}

unint64_t sub_23BA3EBE0()
{
  result = qword_27E19C368;
  if (!qword_27E19C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C368);
  }

  return result;
}

uint64_t sub_23BA3EC34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BADA1E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23BA3ED18()
{
  result = qword_27E19C370;
  if (!qword_27E19C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C370);
  }

  return result;
}

unint64_t sub_23BA3ED70()
{
  result = qword_27E19C378;
  if (!qword_27E19C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C378);
  }

  return result;
}

unint64_t sub_23BA3EDC8()
{
  result = qword_27E19C380;
  if (!qword_27E19C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C380);
  }

  return result;
}

unint64_t sub_23BA3EE20()
{
  result = qword_27E19C388[0];
  if (!qword_27E19C388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19C388);
  }

  return result;
}

void sub_23BA3EE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionStoreView.Storage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_23BA3F5AC(319, &qword_27E19C410, &type metadata for SubscriptionStoreControlBackgroundStyleInternal, MEMORY[0x277CDF468]);
      if (v6 <= 0x3F)
      {
        sub_23BA3F4E4(319);
        if (v7 <= 0x3F)
        {
          sub_23BA3F5AC(319, &qword_27E198D38, &type metadata for InterfaceIdiom, MEMORY[0x277CDF468]);
          if (v8 <= 0x3F)
          {
            sub_23BA3F548(319, &qword_27E19C428, type metadata accessor for CGRect, MEMORY[0x277CDF468]);
            if (v9 <= 0x3F)
            {
              sub_23BA3F5AC(319, &qword_27E19C430, &type metadata for SubscriptionStoreBackgroundState, MEMORY[0x277CE10B8]);
              if (v10 <= 0x3F)
              {
                sub_23BA3F5AC(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v11 <= 0x3F)
                {
                  sub_23BA3F548(319, &qword_27E19C438, type metadata accessor for SubscriptionStoreViewEventConfiguration, MEMORY[0x277CE10B8]);
                  if (v12 <= 0x3F)
                  {
                    sub_23BA3F5AC(319, &qword_27E19C440, &_s26AuxiliaryButtonsVisibilityVN, MEMORY[0x277CDF468]);
                    if (v13 <= 0x3F)
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

uint64_t sub_23BA3F0E8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 < a2)
  {
    v10 = ((((((((((v7 + 25) & ~v7) + v8) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89;
    v11 = (a2 - v9 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = a1[v10];
        if (!a1[v10])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *&a1[v10];
        if (*&a1[v10])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA3F27CLL);
      case 4:
        v15 = *&a1[v10];
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = (v15 - 1) << (8 * (((((((((((v7 + 25) & ~v7) + v8) & 0xF8) - 105) & 0xF8) + 23) & 0xF8) + 39) & 0xF8) + 89));
        if (v10 <= 3)
        {
          v18 = *a1;
        }

        else
        {
          v17 = 0;
          v18 = *a1;
        }

        return v9 + (v18 | v17) + 1;
      default:
        break;
    }
  }

  v19 = &a1[v7 + 25] & ~v7;
  if (v6 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(v19, v6, v4);
  }

  v20 = *((((((v19 + v8) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_23BA3F290(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64);
  v12 = ((((((((((v10 + 25) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = (a3 - v9 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v9 < a2)
  {
    v17 = ~v9 + a2;
    bzero(a1, ((((((((((v10 + 25) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89);
    if (v12 <= 3)
    {
      v18 = (v17 >> 8) + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v12 > 3)
    {
      *a1 = v17;
    }

    else
    {
      *a1 = v17;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v18;
        return;
      case 2:
        *&a1[v12] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v12] = v18;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BA3F4BCLL);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        v19 = &a1[v10 + 25] & ~v10;
        if (v8 < 0x7FFFFFFF)
        {
          v20 = ((((((v19 + v11) & 0xFFFFFFFFFFFFFFF8) + 151) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v21 = a2 & 0x7FFFFFFF;
            v20[1] = 0;
          }

          else
          {
            v21 = (a2 - 1);
          }

          *v20 = v21;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }
      }

      return;
  }
}

void sub_23BA3F4E4(uint64_t a1)
{
  if (!qword_27E19C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C420, qword_23BBEF3C8);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19C418);
    }
  }
}

void sub_23BA3F548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23BA3F5AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AutomaticSubscriptionStoreMarketingContent(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BA3F698);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s24SubscriptionRelationshipVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s24SubscriptionRelationshipVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_23BA3F728(void *a1)
{
  sub_23BBDA358();
  sub_23B97B560();
  WitnessTable = swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_15_4();
  v5 = type metadata accessor for SubscriptionStoreDynamicView(v2, v3, WitnessTable, v4);
  OUTLINED_FUNCTION_26_3(v5);
  v6 = OUTLINED_FUNCTION_15_4();
  type metadata accessor for ProductChangeCountTracker(v6, v7, WitnessTable, v8);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDBE28();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8, &qword_23BBEF050);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C330, &qword_23BBEF058);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for StorefrontLocaleViewModifier(255);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  v9 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_5_18(v9);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_17();
  swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_17(v10);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BA3D728();
  swift_getWitnessTable();
  sub_23BA3D77C();
  swift_getWitnessTable();
  sub_23BA3E900(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050);
  swift_getWitnessTable();
  sub_23BA3E900(&qword_27E19C348, &qword_27E19C330, &qword_23BBEF058);
  swift_getWitnessTable();
  sub_23BA3D7D0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_13();
  sub_23BA3FC18(v11, v12, &unk_23BBF53D0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C358, &qword_23BBEF060);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_21();
  sub_23BA3FC18(v13, v14, MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  sub_23BA3E900(&qword_27E19C360, &qword_27E19C358, &qword_23BBEF060);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BA3EBE0();
  return swift_getWitnessTable();
}

uint64_t sub_23BA3FC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA3FC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BA3FCA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t sub_23BA3FCE8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23BA3FD38(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4 || a4 == 2 || a4 == 1)
  {
  }

  return v4;
}

void sub_23BA3FD70(uint64_t a1@<X8>)
{
  *a1 = sub_23BADA598();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_23BA3FDD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA3FE34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t result)
{
  *(v1 - 120) = result;
  *(v1 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_20_7(uint64_t a1)
{
  v3 = *(v1 + 552);
  *(a1 + 16) = *(v1 + 560);
  *(a1 + 24) = v3;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_3(uint64_t a1)
{

  return sub_23BBDACE8();
}

double sub_23BA40034@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBD96B8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_23BBDCD08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  sub_23BA160B0(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199660, &qword_23BBEF900);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    (*(v9 + 32))(v14, v7, v8);
    sub_23BACBE14(v11);
    sub_23BB72A48();
    v15 = *(v9 + 8);
    v15(v11, v8);
    *&v22 = sub_23BBDB668();
    *(&v22 + 1) = v16;
    *&v23 = v17 & 1;
    *(&v23 + 1) = v18;
    v24 = 0;
    sub_23BA40B30();
    sub_23BBDACD8();
    v15(v14, v8);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_23B9EA92C(v7, &qword_27E198848, &qword_23BBFA090);
    v22 = 0u;
    v23 = 0u;
    v24 = 1;
    sub_23BA40B30();
    sub_23BBDACD8();
  }

  result = *v25;
  v20 = v25[1];
  v21 = v26;
  *a2 = v25[0];
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  return result;
}

uint64_t sub_23BA40344()
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](0);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA40390(uint64_t a1)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](0);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA403D0()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_23BBDD5A8();
    v6 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

double AutomaticSubscriptionOptionGroupLabel.body.getter@<D0>(uint64_t a1@<X8>)
{
  if (sub_23BA403D0() == 1)
  {
    v3 = sub_23BA408C4(v1, &v104);
    if (*(&v105 + 1))
    {
      OUTLINED_FUNCTION_1_26(v3, v4, v5, v6, v7, v8, v9, v10, v72, v76, v80, v84, v88, v92, v96, v100, v104, v105, v106, v107, v108, v109);
      OUTLINED_FUNCTION_2_19(v11, v12, v13, v14, v15, v16, v17, v18, v73, v77, v81, v85, v89, v93, v97, v101, v104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F0, &qword_23BBEF6B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F8, &qword_23BBEF6C0);
      sub_23BA40AA4();
      sub_23BA40B84();
      sub_23BBDACD8();
      sub_23B9EA92C(&v108, &qword_27E19C538, &qword_23BBEF6D8);
      v19 = v104;
      v20 = v105;
      v21 = v106;
      v22 = BYTE1(v106);
    }

    else
    {
      sub_23B9EA92C(&v104, &qword_27E19C4E8, &qword_23BBEF6B0);
      *&v104 = sub_23BA40934;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      LOWORD(v106) = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F0, &qword_23BBEF6B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F8, &qword_23BBEF6C0);
      sub_23BA40AA4();
      v43 = sub_23BA40B84();
      OUTLINED_FUNCTION_0_25(v43, v44, v45, v46, v43, v47, v48, v49, v72, v76, v80, v84, v88, v92, v96, v100, v104);
      sub_23BBDACD8();
      v19 = v108;
      v20 = v109;
      v21 = v110;
      v22 = HIBYTE(v110);
    }

    if (v22)
    {
      v50 = 256;
    }

    else
    {
      v50 = 0;
    }

    v104 = v19;
    v105 = v20;
    LOWORD(v106) = v50 | v21;
    BYTE2(v106) = 1;
  }

  else
  {
    v23 = sub_23BA408C4(v1, &v104);
    if (*(&v105 + 1))
    {
      OUTLINED_FUNCTION_1_26(v23, v24, v25, v26, v27, v28, v29, v30, v72, v76, v80, v84, v88, v92, v96, v100, v104, v105, v106, v107, v108, v109);
      OUTLINED_FUNCTION_2_19(v31, v32, v33, v34, v35, v36, v37, v38, v75, v79, v83, v87, v91, v95, v99, v103, v104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F0, &qword_23BBEF6B8);
      sub_23BA40AA4();
      sub_23BBDACD8();
      sub_23B9EA92C(&v108, &qword_27E19C538, &qword_23BBEF6D8);
      v39 = v104;
      v40 = v105;
      v41 = v106;
      v42 = BYTE1(v106);
    }

    else
    {
      sub_23B9EA92C(&v104, &qword_27E19C4E8, &qword_23BBEF6B0);
      sub_23BBDAA48();
      if (qword_27E197628 != -1)
      {
        swift_once();
      }

      v51 = qword_27E1BF840;
      LOWORD(v76) = 256;
      *&v104 = sub_23BBDB648();
      *(&v104 + 1) = v52;
      *&v105 = v53 & 1;
      *(&v105 + 1) = v54;
      LOWORD(v106) = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4F0, &qword_23BBEF6B8);
      v55 = sub_23BA40AA4();
      OUTLINED_FUNCTION_0_25(v55, v56, MEMORY[0x277CE0BD8], v55, MEMORY[0x277CE0BC8], v57, v58, v59, 0, v76, v80, v84, v88, v92, v96, v100, v104);
      sub_23BBDACD8();
      v39 = v108;
      v40 = v109;
      v41 = v110;
      v42 = HIBYTE(v110);
    }

    if (v42)
    {
      v60 = 256;
    }

    else
    {
      v60 = 0;
    }

    v104 = v39;
    v105 = v40;
    LOWORD(v106) = v60 | v41;
    BYTE2(v106) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C518, &qword_23BBEF6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C520, &qword_23BBEF6D0);
  sub_23BA40C10();
  v61 = sub_23BA40C9C();
  OUTLINED_FUNCTION_0_25(v61, v62, v63, v64, v61, v65, v66, v67, v74, v78, v82, v86, v90, v94, v98, v102, v104);
  sub_23BBDACD8();
  result = *&v108;
  v69 = v109;
  v70 = v110;
  v71 = v111;
  *a1 = v108;
  *(a1 + 16) = v69;
  *(a1 + 32) = v70;
  *(a1 + 34) = v71;
  return result;
}

uint64_t sub_23BA408C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4E8, &qword_23BBEF6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23BA40934()
{
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v0, qword_27E1BFC88);
  v1 = sub_23BBDD5A8();
  log = sub_23BBD9988();
  if (os_log_type_enabled(log, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446466;
    *(v2 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v5);
    *(v2 + 12) = 2082;
    *(v2 + 14) = sub_23BA5AB90(0xD00000000000003ALL, 0x800000023BBE0ED0, &v5);
    _os_log_impl(&dword_23B970000, log, v1, "%{public}s%{public}s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v3, -1, -1);
    MEMORY[0x23EEB6DC0](v2, -1, -1);
  }
}

unint64_t sub_23BA40AA4()
{
  result = qword_27E19C500;
  if (!qword_27E19C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C4F0, &qword_23BBEF6B8);
    sub_23BA40B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C500);
  }

  return result;
}

unint64_t sub_23BA40B30()
{
  result = qword_27E19C508;
  if (!qword_27E19C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C508);
  }

  return result;
}

unint64_t sub_23BA40B84()
{
  result = qword_27E19C510;
  if (!qword_27E19C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C4F8, &qword_23BBEF6C0);
    sub_23BA40B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C510);
  }

  return result;
}

unint64_t sub_23BA40C10()
{
  result = qword_27E19C528;
  if (!qword_27E19C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C518, &qword_23BBEF6C8);
    sub_23BA40AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C528);
  }

  return result;
}

unint64_t sub_23BA40C9C()
{
  result = qword_27E19C530;
  if (!qword_27E19C530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C520, &qword_23BBEF6D0);
    sub_23BA40AA4();
    sub_23BA40B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C530);
  }

  return result;
}

uint64_t sub_23BA40D44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDBE38();
  v4 = sub_23BBDBD48();
  v5 = sub_23BBDBCE8();
  result = sub_23BBDB398();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI37AutomaticSubscriptionOptionGroupLabelV08StandardI0O5label_SH_p13representedIDtSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23BA40DF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23BA40E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_23BA40EC0()
{
  result = qword_27E19C540;
  if (!qword_27E19C540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C548, &qword_23BBEF818);
    sub_23BA40C10();
    sub_23BA40C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C540);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomaticSubscriptionOptionGroupLabel.StandardLabel(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BA40FF8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BA41034()
{
  result = qword_27E19C550;
  if (!qword_27E19C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C550);
  }

  return result;
}

unint64_t sub_23BA410A8()
{
  result = qword_27E19C558;
  if (!qword_27E19C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C560, &qword_23BBEF908);
    sub_23BA41160();
    sub_23B97B518(&qword_27E19C578, &qword_27E19C580, qword_23BBEF920, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C558);
  }

  return result;
}

unint64_t sub_23BA41160()
{
  result = qword_27E19C568;
  if (!qword_27E19C568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C570, &unk_23BBEF910);
    sub_23B97B518(&qword_27E1981A0, &qword_27E198188, &unk_23BBECC80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C568);
  }

  return result;
}

double OUTLINED_FUNCTION_1_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22)
{
  a21 = a17;
  a22 = a18;
  *(v22 + 32) = a19;

  return sub_23BA40034(&a21, &a17);
}

uint64_t sub_23BA41268@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v54 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v52[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52[-v15];
  v17 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = v2 + *(type metadata accessor for SubscriptionPickerSubscribeButtonModel(0) + 20);
  v24 = *(v23 + 16);
  switch(v24)
  {
    case 0:
    case 2:
      v25 = type metadata accessor for SubscriptionStoreCopyWriter(0);
      sub_23BA41848(v2 + *(v25 + 40), v16);
      if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
      {
        sub_23B9C8F9C(v16);
      }

      else
      {
        (*(v19 + 32))(v22, v16, v17);
        sub_23BBDCBF8();
        sub_23BBDCBD8();
        v53 = sub_23B9A0684(v13, v10);
        v5 = (v54 + 8);
        v36 = *(v54 + 8);
        v36(v10, v6);
        v36(v13, v6);
        if (v53)
        {
          sub_23BBDAA48();
          OUTLINED_FUNCTION_1_27();
          (*(v19 + 8))(v22, v17);
          v37 = v55;
LABEL_17:
          *v37 = v5;
          v37[1] = v2;
          *(v37 + 16) = v6 & 1;
          v37[3] = v10;
          goto LABEL_20;
        }

        (*(v19 + 8))(v22, v17);
      }

      v37 = v55;
      sub_23BBDAA48();
      OUTLINED_FUNCTION_1_27();
      goto LABEL_17;
    case 1:
      v26 = *(v2 + *(type metadata accessor for SubscriptionStoreCopyWriter(0) + 36));
      if ((v26 & 8) != 0)
      {
        sub_23BBDAA28();
        sub_23BBDAA18();
        sub_23BBDAA08();
        sub_23BBDAA18();
        v29 = sub_23BBDAA58();
      }

      else
      {
        v27 = *(v2 + 24);
        v28 = *(v2 + 32);
        if ((v26 & 6) != 0)
        {
          v29 = sub_23BB747BC(v27, v28);
        }

        else
        {

          v29 = sub_23BBDAA48();
        }
      }

      v51 = v55;
      *v55 = v29;
      v51[1] = v30;
      *(v51 + 16) = v31 & 1;
      v51[3] = v32;
LABEL_20:
      type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      return swift_storeEnumTagMultiPayload();
    case 3:
      v33 = v55;
      sub_23BB95108();
      v34 = *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
      sub_23BB95108();
      v35 = _s11PriceStringOMa(0);
      __swift_storeEnumTagSinglePayload(v33 + v34, 0, 1, v35);
      type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      goto LABEL_11;
    default:
      v38 = *(v23 + 24);
      v39 = *(v23 + 32);
      v40 = *(v23 + 8);

      v41 = OUTLINED_FUNCTION_0_26();
      sub_23B9E711C(v41, v42, v43, v44);
      v45 = OUTLINED_FUNCTION_0_26();
      sub_23B9E67A8(v45, v46, v47, v48);
      v49 = v55;
      *v55 = v40;
      v49[1] = v24;
      *(v49 + 16) = v38 & 1;
      v49[3] = v39;
      type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
LABEL_11:

      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t type metadata accessor for SubscriptionPickerSubscribeButtonModel(uint64_t a1)
{
  result = qword_27E19C588;
  if (!qword_27E19C588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BA41848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA418CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 4;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23BA4199C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 + 3);
  }

  return result;
}

uint64_t sub_23BA41A48(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_23BA41AE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5A0, &qword_23BBEFA18);
  sub_23BBDC118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5A8, &qword_23BBEFAA8);
  sub_23BA425C8();
  sub_23BBDBC88();

  return result;
}

id sub_23BA41BAC()
{
  v9 = *v0;
  v10 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5A0, &qword_23BBEFA18);
  sub_23BBDC118();
  v1 = v8;
  v2 = type metadata accessor for UIKitIndexView.Coordinator();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtCV17_StoreKit_SwiftUIP33_C3D66C71BBD115CD7E02F3EACA7B285614UIKitIndexView11Coordinator__value];
  *v4 = v7;
  *(v4 + 2) = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_23BA41C48()
{
  v0 = sub_23BBDA928();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  [v7 setAllowsContinuousInteraction_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5C8, &unk_23BBEFB90);
  sub_23BBDB158();
  v8 = v17;
  [v7 addTarget:v17 action:sel_valueChanged_ forControlEvents:4096];

  v9 = sub_23BBDAF18();
  sub_23BBDB168();
  LODWORD(v17) = v9;
  sub_23BA42800();
  if (!sub_23BBD9B68())
  {
    v10 = [objc_opt_self() tertiaryLabelColor];
    sub_23BBDBCA8();
  }

  v11 = sub_23BBDD5D8();
  v12 = *(v1 + 8);
  v12(v6, v0);
  [v7 setPageIndicatorTintColor_];

  v13 = sub_23BBDAEF8();
  sub_23BBDB168();
  LODWORD(v17) = v13;
  if (!sub_23BBD9B68())
  {
    sub_23BBDBD68();
  }

  v14 = sub_23BBDD5D8();
  v12(v3, v0);
  [v7 setCurrentPageIndicatorTintColor_];

  return v7;
}

id sub_23BA41ECC(void *a1)
{
  v6 = *v1;
  v7 = *(v1 + 2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5A0, &qword_23BBEFA18);
  MEMORY[0x23EEB48C0](&v5, v3);
  [a1 setCurrentPage_];
  [a1 setNumberOfPages_];
  return [a1 setBackgroundStyle_];
}

double sub_23BA42008(void *a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_23BA420D0(KeyPath, [a1 interactionState] == 2, sub_23BA42500, &v5);

  return result;
}

uint64_t sub_23BA420D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_setAtWritableKeyPath();

  sub_23BBDA3B8();
}

uint64_t sub_23BA42290@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23BBD9C88();
  *a2 = result & 1;
  return result;
}

id sub_23BA42368@<X0>(void *a1@<X8>)
{
  result = sub_23BA41BAC();
  *a1 = result;
  return result;
}

uint64_t sub_23BA42410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA427AC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23BA42474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA427AC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23BA424D8(uint64_t a1)
{
  sub_23BA427AC();
  sub_23BBDAC88();
  __break(1u);
}

uint64_t sub_23BA4251C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23BA4255C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23BA425C8()
{
  result = qword_27E19C5B0;
  if (!qword_27E19C5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C5A8, &qword_23BBEFAA8);
    sub_23BA4264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5B0);
  }

  return result;
}

unint64_t sub_23BA4264C()
{
  result = qword_27E19C5B8;
  if (!qword_27E19C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5B8);
  }

  return result;
}

uint64_t sub_23BA426A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23BA426E0(uint64_t result, int a2, int a3)
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

uint64_t sub_23BA42738()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C5A8, &qword_23BBEFAA8);
  sub_23BA425C8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BA427AC()
{
  result = qword_27E19C5C0;
  if (!qword_27E19C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5C0);
  }

  return result;
}

unint64_t sub_23BA42800()
{
  result = qword_27E19C5D0;
  if (!qword_27E19C5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E19C5D0);
  }

  return result;
}

uint64_t View.offerCodeRedemption(isPresented:onCompletion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = 0;
  v16 = 0;
  v15[0] = swift_getKeyPath();
  LOBYTE(v15[1]) = 0;
  v15[2] = a1;
  v15[3] = a2;
  LOBYTE(v15[4]) = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = sub_23BA4293C;
  v15[8] = 0;
  LOBYTE(v15[9]) = 0;

  MEMORY[0x23EEB43C0](v15, a6, &type metadata for OfferCodeRedeemSheetModifier, a7);
  memcpy(__dst, v15, 0x49uLL);
  return sub_23BA42974(__dst);
}

uint64_t sub_23BA4293C()
{
  type metadata accessor for OfferCodeRedeemCoordinator();
  swift_allocObject();
  return sub_23B9EA0D8();
}

uint64_t sub_23BA429A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v12 = *(v2 + 16);
  v13 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  v6 = v15;
  v7 = v16;
  v8 = swift_allocObject();
  memcpy((v8 + 16), v3, 0x49uLL);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5E0, &qword_23BBEFDD8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C5E8, &unk_23BBEFDE0) + 36);
  *v10 = v14;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = sub_23BA44318;
  *(v10 + 32) = v8;
  return sub_23BA44320(v3, &v12);
}

double sub_23BA42AD8(unsigned __int8 *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for SKLogger(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *a2;
  v44 = *a2;
  v45 = a2[8];
  if (v45 == 1)
  {
    v17 = v16;
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = v12;

    sub_23BBDD5A8();
    v18 = v9;
    v19 = sub_23BBDB338();
    sub_23BBD9978();

    v9 = v18;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA92C(&v44, &unk_27E19B5D0, &unk_23BBEA410);
    (*(v11 + 8))(v14, v40);
    v16 = v41;
    if (!v41)
    {
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438, &qword_23BBEB4F0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_23BBE7F10;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 32) = 0xD00000000000004DLL;
      *(v28 + 40) = 0x800000023BBE1020;
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
        _os_log_impl(&dword_23B970000, v30, v32, "Attempting to present offer code redeem sheet without being in the hierarchy.", v33, 2u);
        MEMORY[0x23EEB6DC0](v33, -1, -1);
      }

      v34 = *(a2 + 5);
      v35 = sub_23BBDC608();
      sub_23BA44600(&qword_27E19BE90, MEMORY[0x277CDD0D0], MEMORY[0x277CDD0D8]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277CDD0C8], v35);
      v34(v36, 1);

      v41 = *(a2 + 1);
      v42 = a2[32];
      v43 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
      sub_23BBDC0F8();
      return sub_23BA4306C(a2);
    }
  }

  v20 = [v16 scene];

  if (!v20)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    goto LABEL_11;
  }

  if (v15)
  {
    v22 = v21;
    v23 = sub_23BBDD368();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
    sub_23BBDD308();
    sub_23BA44320(a2, &v41);
    v24 = v20;
    v25 = sub_23BBDD2F8();
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    v26[2] = v25;
    v26[3] = v27;
    memcpy(v26 + 4, a2, 0x49uLL);
    v26[14] = v22;
    sub_23BB5D2B8();
  }

  return sub_23BA4306C(a2);
}

double sub_23BA4306C(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  v5 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_23BBDD308();
  sub_23BA44320(a1, v10);
  v6 = sub_23BBDD2F8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, a1, 0x49uLL);
  sub_23BB5D2B8();

  return result;
}

uint64_t sub_23BA43184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23BBDD308();
  v5[4] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_23BA4321C, v7, v6);
}

uint64_t sub_23BA4321C()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 16);
  *(v0 + 56) = *(v1 + 56);
  *(v0 + 64) = *(v1 + 64);
  *(v0 + 128) = *(v1 + 72);
  *(v0 + 72) = type metadata accessor for OfferCodeRedeemCoordinator();
  OUTLINED_FUNCTION_0_27();
  *(v0 + 80) = sub_23BA44600(v2, v3, &unk_23BBEFD70);
  v4 = OUTLINED_FUNCTION_17_7();
  *(v0 + 88) = v4;

  return MEMORY[0x2822009F8](sub_23BA432E0, v4, 0);
}

uint64_t sub_23BA432E0()
{
  OUTLINED_FUNCTION_3_13();
  v0[12] = swift_unknownObjectWeakLoadStrong();
  v1 = v0[5];
  v2 = v0[6];

  return MEMORY[0x2822009F8](sub_23BA43348, v1, v2);
}

uint64_t sub_23BA43348()
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
    *(v0 + 112) = *(v4 + 40);
    *(v0 + 120) = *(v4 + 48);

    return MEMORY[0x2822009F8](sub_23BA43418, v5, 0);
  }
}

uint64_t sub_23BA43418()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BA43488(*(v0 + 24), *(v0 + 112), *(v0 + 120));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_23B9E87D4, v1, v2);
}

double sub_23BA43488(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_23BBDD308();

  v12 = a1;

  v13 = sub_23BBDD2F8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v4;
  v14[5] = v12;
  v14[6] = a2;
  v14[7] = a3;
  sub_23BB5D2B8();

  return result;
}

uint64_t sub_23BA43610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_23BBDD308();
  v7[3] = sub_23BBDD2F8();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_23BA436E4;

  return sub_23BA43814(a5, a6, a7);
}

uint64_t sub_23BA436E4()
{
  OUTLINED_FUNCTION_3_13();

  sub_23BBDD2D8();
  v0 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23BA43814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[15] = type metadata accessor for SKLogger(0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BA438C4, v3, 0);
}

uint64_t sub_23BA438C4()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 112);
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

  v4 = *(v0 + 144);
  v5 = __swift_project_value_buffer(*(v0 + 120), qword_27E1BFC88);
  *(v0 + 152) = v5;
  sub_23B9EA228(v5, v4);
  v6 = sub_23BBD9988();
  v7 = sub_23BBD99A8();
  *(v0 + 160) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v7);
  v10 = sub_23BBDD5B8();
  if (os_log_type_enabled(v6, v10))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_23B970000, v11, v12, "Presenting offer code redeem sheet.");
    OUTLINED_FUNCTION_15_3();
  }

  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_23BA43ACC;
  v14 = *(v0 + 88);

  return MEMORY[0x28212C3E0](v14);
}

uint64_t sub_23BA43ACC()
{
  OUTLINED_FUNCTION_4_11();
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_23BA43E08;
  }

  else
  {
    v4 = sub_23BA43BF4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23BA43BF4()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  sub_23B9EA228(*(v0 + 152), v3);
  v4 = sub_23BBD9988();
  v1(v3, v2);
  v5 = sub_23BBDD5B8();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_23B970000, v6, v7, "Presenting overlay completed for redeem sheet.");
    OUTLINED_FUNCTION_15_3();
  }

  v8 = *(v0 + 112);

  v9 = *(v8 + 120);
  if (v9)
  {
    v10 = *(v0 + 112);
    v11 = *(v10 + 128);
    *(v0 + 64) = *(v10 + 112);
    *(v0 + 72) = v9;
    *(v0 + 80) = v11 & 1;
    *(v0 + 35) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
    sub_23BBDC0F8();
  }

  swift_unknownObjectWeakAssign();
  sub_23BBDD308();
  *(v0 + 200) = sub_23BBDD2F8();
  sub_23BBDD2D8();
  v12 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23BA43D80()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 96);

  v1(0, 0);

  OUTLINED_FUNCTION_1_16();

  return v2();
}

uint64_t sub_23BA43E08()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  sub_23B9EA228(*(v0 + 152), v4);
  v5 = v1;
  v6 = sub_23BBD9988();
  v2(v4, v3);
  v7 = sub_23BBDD598();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = sub_23BBD9658();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_23B970000, v6, v7, "Error presenting offer code sheet %{public}@.", v8, 0xCu);
    sub_23B9EA92C(v9, &qword_27E19A458, &qword_23BBEB530);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  v11 = *(v0 + 112);

  swift_unknownObjectWeakAssign();
  v12 = *(v11 + 120);
  if (v12)
  {
    v13 = *(v0 + 112);
    v14 = *(v13 + 128);
    *(v0 + 40) = *(v13 + 112);
    *(v0 + 48) = v12;
    *(v0 + 56) = v14 & 1;
    *(v0 + 34) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
    sub_23BBDC0F8();
  }

  v15 = *(v0 + 192);
  sub_23BBDD308();
  v16 = v15;
  *(v0 + 208) = sub_23BBDD2F8();
  sub_23BBDD2D8();
  v17 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_23BA4400C()
{
  OUTLINED_FUNCTION_4_11();
  v1 = v0[24];
  v2 = v0[14];
  v3 = v0[12];

  v3(v1, 1);

  return MEMORY[0x2822009F8](sub_23BA4409C, v2, 0);
}

uint64_t sub_23BA4409C()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

uint64_t sub_23BA44134(void *a1)
{
  sub_23BBDA358();
  sub_23BA44198();
  return swift_getWitnessTable();
}

unint64_t sub_23BA44198()
{
  result = qword_27E19C5D8;
  if (!qword_27E19C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5D8);
  }

  return result;
}

uint64_t sub_23BA441F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_23BA44238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BA442B8()
{
  sub_23B9EA1D4(*(v0 + 16), *(v0 + 24));

  sub_23B9EA1E0(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_23BA44358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_23BBDD308();
  v4[9] = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_23BA443F0, v6, v5);
}

uint64_t sub_23BA443F0()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 64);
  type metadata accessor for OfferCodeRedeemCoordinator();
  OUTLINED_FUNCTION_0_27();
  sub_23BA44600(v2, v3, &unk_23BBEFD70);
  v4 = OUTLINED_FUNCTION_17_7();
  *(v0 + 96) = v4;
  v5 = *(v1 + 32);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 32) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  v6 = *(v0 + 48);
  *(v0 + 104) = *(v0 + 40);
  *(v0 + 112) = v6;
  *(v0 + 33) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_23BA01CF4, v4, 0);
}

uint64_t sub_23BA444E8()
{
  swift_unknownObjectRelease();
  sub_23B9EA1D4(*(v0 + 32), *(v0 + 40));

  sub_23B9EA1E0(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_23BA44558()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 112);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_10(v2);
  *v3 = v4;
  v3[1] = sub_23B9EABA4;
  v5 = OUTLINED_FUNCTION_2_11();

  return sub_23BA43184(v5, v6, v7, v8, v1);
}

uint64_t sub_23BA44600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA44648()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23BA44698()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_10(v5);
  *v6 = v7;
  v6[1] = sub_23B9EA7A4;
  v8 = OUTLINED_FUNCTION_2_11();

  return sub_23BA43610(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_23BA44758()
{
  swift_unknownObjectRelease();
  sub_23B9EA1D4(*(v0 + 32), *(v0 + 40));

  sub_23B9EA1E0(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_23BA447C0()
{
  OUTLINED_FUNCTION_4_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v1[1] = sub_23B9EABA4;
  v3 = OUTLINED_FUNCTION_2_11();

  return sub_23BA44358(v3, v4, v5, v6);
}

unint64_t sub_23BA4485C()
{
  result = qword_27E19C5F8;
  if (!qword_27E19C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C5E8, &unk_23BBEFDE0);
    sub_23B97B518(&qword_27E19C600, &qword_27E19C5E0, &qword_23BBEFDD8, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E19A470, &unk_27E19B600, qword_23BBEA470, MEMORY[0x277CE05A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C5F8);
  }

  return result;
}

uint64_t sub_23BA44958(uint64_t a1, uint64_t a2)
{
  IsDisabledModifier = type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27E197748 != -1)
  {
    swift_once();
  }

  type metadata accessor for CanMakePaymentsCache(0);
  sub_23BA46A98(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache, &unk_23BBEFE88);

  *v7 = sub_23BBDA0E8();
  v7[1] = v8;
  v9 = *(IsDisabledModifier + 20);
  *(v7 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0, &unk_23BBEC890);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEB43C0](v7, a1, IsDisabledModifier, a2);
  return sub_23BA46414(v7, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
}

uint64_t sub_23BA44AE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BBD9A58();

  return v1;
}

uint64_t sub_23BA44B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a1;
  v28 = a2;
  IsDisabledModifier = type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);
  v25 = *(IsDisabledModifier - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](IsDisabledModifier);
  v6 = sub_23BBD9B28();
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C670, &qword_23BBF0020);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = sub_23BA44AE8();
  v14 = (v13 != 2) ^ v13;
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14 & 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C678, &unk_23BBF0058);
  (*(*(v17 - 8) + 16))(v12, v24, v17);
  v18 = &v12[*(v10 + 36)];
  *v18 = KeyPath;
  v18[1] = sub_23B989418;
  v18[2] = v16;
  sub_23B9B7830();
  sub_23BA46758(v3, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_23BA468D0(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_23BA469B4();
  sub_23BA46A98(&qword_27E19C690, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v21 = v26;
  sub_23BBDBC08();

  (*(v27 + 8))(v9, v21);
  return sub_23BA46AE0(v12);
}

double sub_23BA44E90(double a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23BBD9B28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a3, v4, v6);
  LODWORD(a3) = (*(v5 + 88))(v8, v4);
  v9 = *MEMORY[0x277CDD6B8];
  (*(v5 + 8))(v8, v4);
  if (a3 == v9)
  {
    return sub_23BA44FB4();
  }

  return result;
}

double sub_23BA44FB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task;
  if (!*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task))
  {
    sub_23BBDD318();
    v7 = sub_23BBDD368();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    sub_23BBDD308();

    v8 = sub_23BBDD2F8();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = &unk_23BBF0070;
    v9[5] = v1;
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = &unk_23BBF0078;
    v11[5] = v9;
    swift_unknownObjectRetain();
    sub_23BB5D2B8();
    *(v1 + v6) = v12;
  }

  return result;
}

uint64_t sub_23BA45138(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23BBD9A68();
}

uint64_t sub_23BA451A8()
{
  type metadata accessor for CanMakePaymentsCache(0);
  swift_allocObject();
  result = sub_23BA451E8();
  qword_27E19C608 = result;
  return result;
}

uint64_t sub_23BA451E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C640, &qword_23BBEFEC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  v9 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache__canMakePayments;
  v18[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199218, &qword_23BBFA470);
  sub_23BBD9A48();
  (*(v6 + 32))(v1 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task;
  *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task) = 0;
  sub_23BBD9998();
  v11 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  sub_23BBDD308();

  v12 = sub_23BBDD2F8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = &unk_23BBEFED8;
  v13[5] = v1;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = &unk_23BBF5510;
  v15[5] = v13;
  swift_unknownObjectRetain();
  sub_23BB5D2B8();
  *(v1 + v10) = v16;

  return v1;
}

uint64_t sub_23BA45478()
{
  v0[2] = sub_23BBDD308();
  v0[3] = sub_23BBDD2F8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BA45524;

  return sub_23BA45650();
}

uint64_t sub_23BA45524()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA46CCC, v4, v3);
}

uint64_t sub_23BA45650()
{
  v1[5] = v0;
  sub_23BBDD308();
  v1[6] = sub_23BBDD2F8();
  v3 = sub_23BBDD2D8();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_23BA456E8, v3, v2);
}

uint64_t sub_23BA456E8()
{
  OUTLINED_FUNCTION_41_0();
  *(v0 + 72) = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_log;
  v1 = sub_23BBDD588();
  v2 = sub_23BBD9988();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_13_15(4.8752e-34, v4, v5, v6, v7, v8, v9, v10, v11, v4);
    OUTLINED_FUNCTION_8_18(v12);
    *(v3 + 14) = sub_23BA5AB90(0xD000000000000023, v13, v14);
    OUTLINED_FUNCTION_12_13(&dword_23B970000, v15, v16, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v18 = OUTLINED_FUNCTION_9_15(v17);

  return MEMORY[0x28212C3E8](v18);
}

uint64_t sub_23BA45840(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 88) = v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);
  if (v1)
  {
    v7 = sub_23BA45AF0;
  }

  else
  {
    v7 = sub_23BA45988;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23BA45988()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 96);

  v2 = sub_23BA44AE8();
  if (v2 == 2 || ((v1 ^ v2) & 1) != 0)
  {
    v3 = *(v0 + 96);
    sub_23BA45138(v3);
    if ((v3 & 1) == 0)
    {
      v4 = sub_23BBDD5B8();
      v5 = sub_23BBD9988();
      if (os_log_type_enabled(v5, v4))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v15 = OUTLINED_FUNCTION_13_15(4.8752e-34, v7, v8, v9, v10, v11, v12, v13, v14, v7);
        OUTLINED_FUNCTION_8_18(v15);
        *(v6 + 14) = sub_23BA5AB90(0xD00000000000002ELL, v16, v17);
        OUTLINED_FUNCTION_12_13(&dword_23B970000, v18, v19, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }
    }
  }

  *(*(v0 + 40) + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task) = 0;

  OUTLINED_FUNCTION_1_16();

  return v20();
}

uint64_t sub_23BA45AF0()
{
  v13 = v0;
  v1 = v0[11];

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_23BBDD768();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x23EEB5890](0xD000000000000026, 0x800000023BBE1140);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450, &unk_23BBEA450);
  sub_23BBDD8B8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_23BBDD598();

  v5 = sub_23BBD9988();

  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_23BA5AB90(0, 0xE000000000000000, v12);
    *(v8 + 12) = 2082;
    v9 = sub_23BA5AB90(v2, v3, v12);

    *(v8 + 14) = v9;
    _os_log_impl(&dword_23B970000, v5, v4, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  else
  {
  }

  *(v0[5] + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_task) = 0;

  OUTLINED_FUNCTION_1_16();

  return v10();
}

uint64_t sub_23BA45D18()
{
  OUTLINED_FUNCTION_3_13();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_18(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_9_15(v2);

  return v5();
}

uint64_t sub_23BA45DF4()
{
  OUTLINED_FUNCTION_3_13();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_18(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_9_15(v2);

  return v5();
}

uint64_t sub_23BA45ED0()
{
  v0[2] = sub_23BBDD308();
  v0[3] = sub_23BBDD2F8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BA31378;

  return sub_23BA45650();
}

uint64_t sub_23BA45F7C()
{
  v1 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache__canMakePayments;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C640, &qword_23BBEFEC8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23BA46414(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_BF465AA955C6DF5DC446870E7AC4033020CanMakePaymentsCache_log, type metadata accessor for SKLogger);
  return v0;
}

uint64_t sub_23BA4601C()
{
  v0 = sub_23BA45F7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_23BA46098(uint64_t a1)
{
  sub_23BA4616C(319);
  if (v1 <= 0x3F)
  {
    sub_23BBD99A8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23BA4616C(uint64_t a1)
{
  if (!qword_27E19C638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199218, &qword_23BBFA470);
    v1 = sub_23BBD9A78();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19C638);
    }
  }
}

uint64_t sub_23BA461D0()
{
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_15(v1);

  return sub_23BA45478();
}

uint64_t sub_23BA46258()
{
  OUTLINED_FUNCTION_41_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_17(v1);

  return v4(v3);
}

uint64_t sub_23BA462F4()
{
  OUTLINED_FUNCTION_41_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_28(v1);

  return v4(v3);
}

uint64_t sub_23BA46398@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA44AE8();
  *a1 = result;
  return result;
}

uint64_t sub_23BA46414(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BA46480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C648, &unk_23BBEFF90);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23BA46528(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C648, &unk_23BBEFF90);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BA465B4(uint64_t a1)
{
  sub_23BA46638(319);
  if (v2 <= 0x3F)
  {
    sub_23BA466CC(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA46638(uint64_t a1)
{
  if (!qword_27E19C660)
  {
    type metadata accessor for CanMakePaymentsCache(255);
    sub_23BA46A98(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache, &unk_23BBEFE88);
    v1 = sub_23BBDA0F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19C660);
    }
  }
}

void sub_23BA466CC(uint64_t a1, double a2)
{
  if (!qword_27E19C668)
  {
    sub_23BBD9B28();
    v2 = sub_23BBD9C18();
    if (!v3)
    {
      atomic_store(v2, &qword_27E19C668);
    }
  }
}

uint64_t sub_23BA46758(uint64_t a1, uint64_t a2)
{
  IsDisabledModifier = type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);
  (*(*(IsDisabledModifier - 8) + 16))(a2, a1, IsDisabledModifier);
  return a2;
}

uint64_t sub_23BA467BC()
{
  v1 = (type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0, &unk_23BBEC890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9B28();
    OUTLINED_FUNCTION_4_1();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BA468D0(uint64_t a1, uint64_t a2)
{
  IsDisabledModifier = type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);
  (*(*(IsDisabledModifier - 8) + 32))(a2, a1, IsDisabledModifier);
  return a2;
}

double sub_23BA46934(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0);

  return sub_23BA44E90(v4, a1, a2);
}

unint64_t sub_23BA469B4()
{
  result = qword_27E19C680;
  if (!qword_27E19C680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C670, &qword_23BBF0020);
    sub_23B97B518(&qword_27E19C688, &qword_27E19C678, &unk_23BBF0058, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C680);
  }

  return result;
}

uint64_t sub_23BA46A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA46AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C670, &qword_23BBF0020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA46B48()
{
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_15(v1);

  return sub_23BA45ED0();
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23BA46C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C670, &qword_23BBF0020);
  sub_23BBD9B28();
  sub_23BA469B4();
  sub_23BA46A98(&qword_27E19C690, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_12_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

unint64_t OUTLINED_FUNCTION_13_15(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, &a10);
}

void sub_23BA46DB8(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  *a1 = sub_23BA46DE4;
  a1[1] = 0;
  a1[2] = sub_23BA46EC4;
  a1[3] = 0;
}

uint64_t sub_23BA46DE4@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23BA46EC4@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23BA46FAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23BA47000(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23BA47094()
{
  result = qword_27E19C698;
  if (!qword_27E19C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C698);
  }

  return result;
}

uint64_t sub_23BA470E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB51588();
  *a1 = result;
  return result;
}

uint64_t sub_23BA47114(double a1)
{
  SubscriptionStoreControlStyleConfiguration.options.getter();
  v7 = v2;
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = *(v1 + 48);
  sub_23BA473B4(v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6A0, &unk_23BBFE6E0);
  type metadata accessor for SubscriptionOfferViewNoCodeControl(0);
  sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0, &unk_23BBFE6E0, MEMORY[0x277D83980]);
  sub_23BA47438(&qword_27E19C6B0, type metadata accessor for SubscriptionOfferViewNoCodeControl, &unk_23BBF01F0);
  sub_23BA47438(&qword_27E19C6B8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option, &protocol conformance descriptor for SubscriptionStoreControlStyleConfiguration.Option);
  return sub_23BBDC198();
}

uint64_t sub_23BA4729C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  v12 = a2[2];
  v13 = *(a2 + 48);
  sub_23BA4807C(a1, a3, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v6 = a3 + *(type metadata accessor for SubscriptionOfferViewNoCodeControl(0) + 20);
  v7 = v11;
  *v6 = v10;
  *(v6 + 16) = v7;
  *(v6 + 32) = v12;
  *(v6 + 48) = v13;
  return sub_23BA473B4(a2, v9);
}

uint64_t sub_23BA47374()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for SubscriptionOfferViewNoCodeControl(uint64_t a1)
{
  result = qword_27E19C6C0;
  if (!qword_27E19C6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BA47438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA47494(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_23BA47564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_23BA47610(uint64_t a1)
{
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(319);
  if (v1 <= 0x3F)
  {
    sub_23BA47694();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA47694()
{
  if (!qword_27E19A3B0)
  {
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19A3B0);
    }
  }
}

unint64_t sub_23BA476E8()
{
  result = qword_27E19C6D0;
  if (!qword_27E19C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6D8, &qword_23BBF01E8);
    sub_23BA47438(&qword_27E19C6B0, type metadata accessor for SubscriptionOfferViewNoCodeControl, &unk_23BBF01F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C6D0);
  }

  return result;
}

uint64_t sub_23BA477B8@<X0>(uint64_t a2@<X8>)
{
  if (sub_23BBDC2A8())
  {
    v4 = sub_23BBDAB58();
  }

  else
  {
    v4 = sub_23BBDAB48();
  }

  v5 = v4;
  if (qword_27E197690 != -1)
  {
    swift_once();
  }

  v6 = qword_27E1BFC50;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6E0, &qword_23BBF0240);
  return sub_23BA4785C(v2, a2 + *(v7 + 44));
}

uint64_t sub_23BA4785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for SubscriptionStoreButton(0);
  MEMORY[0x28223BE20](v3);
  v5 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6E8, &qword_23BBF0248);
  MEMORY[0x28223BE20](v6);
  v82 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6F0, &qword_23BBF0250);
  MEMORY[0x28223BE20](v10);
  v77 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = v74 - v13;
  v14 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  MEMORY[0x28223BE20](v14);
  v16 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6F8, &qword_23BBF0258);
  MEMORY[0x28223BE20](v17 - 8);
  v80 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v81 = v74 - v20;
  MEMORY[0x28223BE20](v21);
  v78 = v74 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v74 - v24;
  v26 = sub_23BBDC2A8();
  v27 = 1;
  v84 = v25;
  if (v26)
  {
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    v89[0] = 0;
    sub_23BBDBF58();
    v28 = v88;
    v16[16] = v87;
    *(v16 + 3) = v28;
    v29 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
    v30 = v14;
    v31 = v6;
    v32 = v76;
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v29);
    sub_23B99FCE0(v32, v77, &qword_27E19C6F0, &qword_23BBF0250);
    sub_23BBDBF58();
    v33 = v32;
    v6 = v31;
    v14 = v30;
    sub_23B979910(v33, &qword_27E19C6F0, &qword_23BBF0250);
    v34 = *(v30 + 28);
    *&v16[v34] = sub_23BBDCFE8();
    v25 = v84;
    sub_23BA48108(v16, v84, v35);
    v27 = 0;
  }

  v74[1] = v10;
  __swift_storeEnumTagSinglePayload(v25, v27, 1, v14);
  sub_23BA4807C(a1, v5, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v36 = a1 + *(type metadata accessor for SubscriptionOfferViewNoCodeControl(0) + 20);
  v37 = *(v36 + 32);
  v38 = *(v36 + 40);
  v39 = *(v36 + 48);
  v40 = &v5[v3[5]];
  *v40 = 0u;
  *(v40 + 1) = 0u;
  *(v40 + 2) = 0u;
  v40[48] = 0;
  v41 = &v5[v3[6]];
  v42 = *v36;
  v75 = *(v36 + 16);
  v85 = v42;
  *v41 = swift_getKeyPath();
  *(v41 + 1) = 0;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 16) = 0;
  v43 = &v5[v3[7]];
  KeyPath = swift_getKeyPath();
  v89[0] = 0;
  *v43 = KeyPath;
  v43[73] = 0;
  v45 = &v5[v3[8]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  v46 = &v5[v3[9]];
  *v46 = swift_getKeyPath();
  v46[8] = 0;

  v47 = v75;
  *v40 = v85;
  *(v40 + 1) = v47;
  *(v40 + 4) = v37;
  *(v40 + 5) = v38;
  v40[48] = v39;
  v48 = sub_23BBDAA48();
  v50 = v49;
  v52 = v51;
  v54 = v53 & 1;
  v55 = v79;
  sub_23BA4807C(v5, v79, type metadata accessor for SubscriptionStoreButton);
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C700, &qword_23BBF0300) + 36);
  *v56 = 1;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v54;
  *(v56 + 32) = v52;
  *(v56 + 40) = 0u;
  *(v56 + 56) = 0u;
  *(v56 + 72) = 0;
  sub_23B99B7B8(v5, 0.0);
  if (qword_27E197688 != -1)
  {
    swift_once();
  }

  v85 = xmmword_27E1BFC30;
  v75 = *&qword_27E1BFC40;
  v57 = sub_23BBDB398();
  v58 = v55 + *(v6 + 36);
  *v58 = v57;
  *(v58 + 24) = v75;
  *(v58 + 8) = v85;
  *(v58 + 40) = 0;
  if (sub_23BBDC2A8())
  {
    v59 = 1;
    v60 = v78;
  }

  else
  {
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    v86 = 0;
    sub_23BBDBF58();
    v61 = v88;
    v16[16] = v87;
    *(v16 + 3) = v61;
    v62 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
    v63 = v76;
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v62);
    sub_23B99FCE0(v63, v77, &qword_27E19C6F0, &qword_23BBF0250);
    sub_23BBDBF58();
    sub_23B979910(v63, &qword_27E19C6F0, &qword_23BBF0250);
    v64 = *(v14 + 28);
    *&v16[v64] = sub_23BBDCFE8();
    v60 = v78;
    sub_23BA48108(v16, v78, v65);
    v59 = 0;
  }

  __swift_storeEnumTagSinglePayload(v60, v59, 1, v14);
  v66 = v84;
  v67 = v81;
  sub_23B99FCE0(v84, v81, &qword_27E19C6F8, &qword_23BBF0258);
  v68 = v82;
  sub_23B99FCE0(v55, v82, &qword_27E19C6E8, &qword_23BBF0248);
  v69 = v80;
  sub_23B99FCE0(v60, v80, &qword_27E19C6F8, &qword_23BBF0258);
  v70 = v55;
  v71 = v83;
  sub_23B99FCE0(v67, v83, &qword_27E19C6F8, &qword_23BBF0258);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C708, &qword_23BBF0330);
  sub_23B99FCE0(v68, v71 + *(v72 + 48), &qword_27E19C6E8, &qword_23BBF0248);
  sub_23B99FCE0(v69, v71 + *(v72 + 64), &qword_27E19C6F8, &qword_23BBF0258);
  sub_23B979910(v60, &qword_27E19C6F8, &qword_23BBF0258);
  sub_23B979910(v70, &qword_27E19C6E8, &qword_23BBF0248);
  sub_23B979910(v66, &qword_27E19C6F8, &qword_23BBF0258);
  sub_23B979910(v69, &qword_27E19C6F8, &qword_23BBF0258);
  sub_23B979910(v68, &qword_27E19C6E8, &qword_23BBF0248);
  return sub_23B979910(v67, &qword_27E19C6F8, &qword_23BBF0258);
}

uint64_t sub_23BA4807C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA480DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB51588();
  *a1 = result;
  return result;
}

uint64_t sub_23BA48108(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_23BA481B0(uint64_t a1)
{
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(319);
  if (v1 <= 0x3F)
  {
    sub_23B9CE218(319, &qword_27E197B20, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_23B9CE218(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BA482D4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | v7;
  v12 = v10 | v7 | 7;
  v13 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 8;
  v15 = v13 + 10;
  if (v15 <= v14)
  {
    v15 = v14;
  }

  if (v15 <= 3)
  {
    v15 = 3;
  }

  v16 = v15 + ((((v7 + 16) & ~v7) + v8 + v12) & ~v12);
  if (v16 + 1 > ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  if (v17 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v17;
  }

  v21 = *(v19 + 84);
  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = *(v19 + 84);
  }

  v23 = *(v19 + 80);
  v24 = *(v19 + 64);
  if (!a2)
  {
    return 0;
  }

  v25 = ((v20 + 1 + v12) & ~v12) + v20 + 1;
  v26 = v23 + 19;
  if (v22 < a2)
  {
    v27 = ((((v26 + ((v25 + ((v11 + 32) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + v24) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v27 <= 3)
    {
      v28 = ((a2 - v22 + 255) >> 8) + 1;
    }

    else
    {
      v28 = 2;
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
        v31 = a1[v27];
        if (!a1[v27])
        {
          break;
        }

        goto LABEL_32;
      case 2:
        v31 = *&a1[v27];
        if (*&a1[v27])
        {
          goto LABEL_32;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA485D4);
      case 4:
        v31 = *&a1[v27];
        if (!v31)
        {
          break;
        }

LABEL_32:
        v33 = (v31 - 1) << (8 * v27);
        if (v27 <= 3)
        {
          v34 = *a1;
        }

        else
        {
          v33 = 0;
          v34 = *a1;
        }

        return v22 + (v34 | v33) + 1;
      default:
        break;
    }
  }

  if ((v21 & 0x80000000) != 0)
  {

    return __swift_getEnumTagSinglePayload((v26 + ((v25 + (&a1[v12 + 32] & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v23, v21, v18);
  }

  else
  {
    v35 = *(a1 + 1);
    if (v35 >= 0xFFFFFFFF)
    {
      LODWORD(v35) = -1;
    }

    return (v35 + 1);
  }
}