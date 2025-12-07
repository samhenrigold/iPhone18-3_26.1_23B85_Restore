uint64_t sub_2384332AC()
{
  v1 = _s6MediumVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 + 20);
  v8 = sub_23875BC40();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v6 + 28);
  v10 = sub_23875E8A0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v14 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875E7A0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238433524()
{
  v1 = _s6MediumVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 + 20);
  v8 = sub_23875BC40();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v6 + 28);
  v10 = sub_23875E8A0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v14 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875E7A0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 2, v2 | 7);
}

uint64_t sub_23843379C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2384337D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238433890(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238433940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderActionsMenuContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238433A74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderActionsMenuContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238433BB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15B90, &qword_238784718);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A310, &unk_2387655D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15B98, &qword_238784720);
  type metadata accessor for ExtractedOrderActionsItems(255);
  sub_23843A3E8(&qword_27DF15BA0, &qword_27DF15B98, &qword_238784720, MEMORY[0x277CE04B0]);
  sub_23874DB94(&qword_27DF0A308, type metadata accessor for ExtractedOrderActionsItems, &unk_238765668);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2384397A8(OpaqueTypeConformance2, v1, v2);
  sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238433D5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15BA8, &qword_238784758);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC48, &unk_23876C048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15BB0, &qword_238784760);
  type metadata accessor for OrderActionsItems(255);
  sub_23843A3E8(&qword_27DF15BB8, &qword_27DF15BB0, &qword_238784760, MEMORY[0x277CE04B0]);
  sub_23874DB94(&qword_27DF0CC40, type metadata accessor for OrderActionsItems, &unk_23876C0F8);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2384397A8(OpaqueTypeConformance2, v1, v2);
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238433F24()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_238433F78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238434034(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2384340F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15C88, &qword_238784BB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A310, &unk_2387655D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15C90, &unk_238784BC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BE8, &qword_238779830);
  sub_23843A3E8(&qword_27DF15C98, &qword_27DF15C90, &unk_238784BC0, MEMORY[0x277CE04B0]);
  v0 = MEMORY[0x277CE14C0];
  sub_23843A3E8(&qword_27DF11BF8, &qword_27DF11BE8, &qword_238779830, MEMORY[0x277CE14C0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2384397A8(OpaqueTypeConformance2, v2, v3);
  sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0, v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2384342D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_238434410(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238434550()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238434588()
{
  v1 = type metadata accessor for OrderImportPreview(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C600();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C6D0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23843475C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2384347C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238434834(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_238434848@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2384348A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2384348B8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

id FKUILocalizedString(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 bundleWithIdentifier:@"com.apple.FinanceKitUI"];
  v7 = [v6 localizedStringForKey:v5 value:&stru_284B32030 table:v4];

  return v7;
}

id FKUILocalizedStringWithFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = FKUILocalizedString(a1, a2);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];

  return v10;
}

uint64_t FinancialConnectionUIExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a2;
  v34 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DA0, &qword_238761C40);
  MEMORY[0x28223BE20](v7 - 8);
  v32 = &v29 - v8;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(v9 + 16);
  v16(&v29 - v14, v4, a1, v13);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v33 = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = *(v9 + 32);
  v19(v18 + v17, v15, a1);
  v20 = v31;
  (v16)(v31, v4, a1);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = a1;
  *(v21 + 24) = v22;
  v23 = (v19)(v21 + v17, v20, a1);
  sub_238436638(v23, v24, v25);
  v26 = v32;
  sub_238757760();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DB0, &unk_238761C48);
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_23843668C();
  return sub_23875BF70();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2384364CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v10[3] = a3;
  v10[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_23865FE60(a1, v10);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_238436638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF08DA8;
  if (!qword_27DF08DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08DA8);
  }

  return result;
}

unint64_t sub_23843668C()
{
  result = qword_27DF08DB8;
  if (!qword_27DF08DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08DB0, &unk_238761C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08DB8);
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

uint64_t FinancialConnectionUIExtensionAuthorizationScene.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FinancialConnectionUIExtensionAuthorizationScene.body.getter(uint64_t a1)
{
  v6 = *v1;
  v3 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;

  return MEMORY[0x2821169D0](0xD000000000000013, 0x8000000238785170, sub_2384369C8, v3, sub_23843765C, 0, v5, *(&v5 + 1));
}

uint64_t sub_238436814@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
  sub_23844EA0C();
  v12 = *(v5 + 8);
  v12(v7, a2);
  sub_23844EA0C();
  v12(v10, a2);
}

uint64_t sub_238436A78(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  swift_getWitnessTable();
  sub_23875C040();
  return sub_23875F760();
}

uint64_t sub_238436AE0(uint64_t a1, id *a2)
{
  result = sub_23875EA60();
  *a2 = 0;
  return result;
}

uint64_t sub_238436B58(uint64_t a1, id *a2)
{
  v3 = sub_23875EA70();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_238436BD8@<X0>(uint64_t *a2@<X8>)
{
  sub_23875EA80();
  v3 = sub_23875EA50();

  *a2 = v3;
  return result;
}

uint64_t sub_238436C24(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x23EE60A10](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_238436C78(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x23EE60A20](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_238436CF8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_23875C030();
}

uint64_t sub_238436D64(uint64_t a1)
{
  sub_238437988(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  sub_238437988(&qword_27DF09098, type metadata accessor for PKAnalyticsKey, &unk_2387620B8);

  return sub_23875F580();
}

uint64_t sub_238436E20(uint64_t a1)
{
  sub_238437988(&qword_27DF09080, type metadata accessor for PKAnalyticsSubject, &unk_238762250);
  sub_238437988(&qword_27DF09088, type metadata accessor for PKAnalyticsSubject, &unk_2387621F8);

  return sub_23875F580();
}

uint64_t sub_238436EDC(uint64_t a1)
{
  sub_238437988(&qword_27DF09148, type metadata accessor for CIContextOption, &unk_23876259C);
  sub_238437988(&qword_27DF09150, type metadata accessor for CIContextOption, &unk_23876253C);

  return sub_23875F580();
}

uint64_t sub_238436F98(uint64_t a1)
{
  sub_238437988(&qword_27DF09138, type metadata accessor for OpenExternalURLOptionsKey, &unk_2387628B0);
  sub_238437988(&qword_27DF09140, type metadata accessor for OpenExternalURLOptionsKey, &unk_2387626A0);

  return sub_23875F580();
}

uint64_t sub_238437054(uint64_t a1)
{
  sub_238437988(&qword_27DF09128, type metadata accessor for URLResourceKey, &unk_238762820);
  sub_238437988(&qword_27DF09130, type metadata accessor for URLResourceKey, &unk_2387627C0);

  return sub_23875F580();
}

uint64_t sub_238437110(uint64_t a1)
{
  sub_238437988(&qword_27DF091F0, type metadata accessor for Key, &unk_238762EF4);
  sub_238437988(&qword_27DF091F8, type metadata accessor for Key, &unk_238762E48);

  return sub_23875F580();
}

uint64_t sub_2384371CC(uint64_t a1)
{
  sub_238437988(&qword_27DF09228, type metadata accessor for AttributeName, &unk_238762F38);
  sub_238437988(&qword_27DF09230, type metadata accessor for AttributeName, &unk_238762A84);

  return sub_23875F580();
}

uint64_t sub_238437288@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23875EA50();

  *a2 = v3;
  return result;
}

uint64_t sub_2384372D0(uint64_t a1)
{
  sub_238437988(&qword_27DF09218, type metadata accessor for TraitKey, &unk_238762BF8);
  sub_238437988(&qword_27DF09220, type metadata accessor for TraitKey, &unk_238762B98);

  return sub_23875F580();
}

double sub_23843738C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_238437398(uint64_t a1)
{
  sub_238437988(&qword_27DF09200, type metadata accessor for Weight, &unk_238762D50);
  v1 = sub_238437988(&qword_27DF09208, type metadata accessor for Weight, &unk_238762CF0);
  sub_238438414(v1, v2, v3);
  return sub_23875F580();
}

uint64_t sub_238437460()
{
  v0 = sub_23875EA80();
  v1 = MEMORY[0x23EE636B0](v0);

  return v1;
}

uint64_t sub_23843749C(uint64_t a1)
{
  sub_23875EA80();
  sub_23875EB30();
}

uint64_t sub_2384374F0()
{
  sub_23875EA80();
  sub_23875F700();
  sub_23875EB30();
  v0 = sub_23875F760();

  return v0;
}

uint64_t sub_23843756C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x23EE64220](*&v1);
}

uint64_t sub_2384375A8(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_2384375C0(void *a1, uint64_t *a2)
{
  v2 = sub_23875EA80();
  v4 = v3;
  if (v2 == sub_23875EA80() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23875F630();
  }

  return v7 & 1;
}

unint64_t sub_238437664()
{
  result = qword_27DF08DC0;
  if (!qword_27DF08DC0)
  {
    sub_23875C830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08DC0);
  }

  return result;
}

uint64_t sub_2384376B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238437744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_238437798(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2384377E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2384378E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238437904(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_238437988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_238437D40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238437D60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_238438414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09210;
  if (!qword_27DF09210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09210);
  }

  return result;
}

void sub_23843847C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23843856C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384385A4(uint64_t a1)
{
  type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_238438628(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238438628(uint64_t a1)
{
  if (!qword_2814F09B0)
  {
    sub_23875C450();
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_2814F09B0);
    }
  }
}

uint64_t sub_2384386A8(uint64_t a1)
{
  result = _s19ShippingFulfillmentO12StatusValuesVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23843872C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = 0;
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v6 && ((a1[24] ^ a2[24]) & 1) == 0)
  {
    v8 = a1;
    if (sub_23860ADBC(&a1[*(a3 + 20)], &a2[*(a3 + 20)]))
    {
      v10 = *(a3 + 24);
      v11 = *&v8[v10];
      v12 = *&v8[v10 + 8];
      v13 = &a2[v10];
      if (v11 == *v13 && v12 == *(v13 + 1))
      {
        return 1;
      }

      else
      {

        return sub_23875F630();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238438814()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092C8, &qword_238763070);
  MEMORY[0x28223BE20](v1);
  v3 = v8 - v2;
  *v3 = sub_23875CE60();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092D0, &qword_238763078);
  sub_23843898C(v0, &v3[*(v4 + 44)]);
  v5 = *(v0 + 8);
  v8[2] = 0;
  v8[3] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000036, 0x8000000238785660);
  v8[1] = v5;
  v6 = sub_23875F600();
  MEMORY[0x23EE63650](v6);

  sub_238439680();
  sub_23875DE00();

  return sub_238439884(v3, &qword_27DF092C8, &qword_238763070);
}

uint64_t sub_23843898C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v49 = sub_23875DFD0();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_23875C450();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v42[-v9];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092E0, &qword_238763080);
  MEMORY[0x28223BE20](v46);
  v52 = &v42[-v11];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092E8, &qword_238763088);
  MEMORY[0x28223BE20](v50);
  v54 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v51 = &v42[-v14];
  MEMORY[0x28223BE20](v15);
  v53 = &v42[-v16];
  sub_23875ED50();
  v55 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v45 = sub_23875D030();
  v62 = 1;
  sub_238439128(v44, &v58);
  v69 = *&v59[80];
  v70[0] = *&v59[96];
  *(v70 + 12) = *&v59[108];
  v65 = *&v59[16];
  v66 = *&v59[32];
  v67 = *&v59[48];
  v68 = *&v59[64];
  v63 = v58;
  v64 = *v59;
  v71[6] = *&v59[80];
  v72[0] = *&v59[96];
  *(v72 + 12) = *&v59[108];
  v71[2] = *&v59[16];
  v71[3] = *&v59[32];
  v71[4] = *&v59[48];
  v71[5] = *&v59[64];
  v71[0] = v58;
  v71[1] = *v59;
  sub_23843981C(&v63, &v56, &qword_27DF092F0, &qword_238763090);
  sub_238439884(v71, &qword_27DF092F0, &qword_238763090);
  *&v61[87] = v68;
  *&v61[103] = v69;
  *&v61[119] = v70[0];
  *&v61[131] = *(v70 + 12);
  *&v61[23] = v64;
  *&v61[39] = v65;
  *&v61[55] = v66;
  *&v61[71] = v67;
  *&v61[7] = v63;
  v43 = v62;
  type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment(0);
  sub_2384D4E38(v10);
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3D0], v4);
  v17 = sub_23875C440();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  v19 = objc_opt_self();
  v20 = &selRef_systemGray4Color;
  if ((v17 & 1) == 0)
  {
    v20 = &selRef_systemGray2Color;
  }

  v21 = [v19 *v20];
  v44 = sub_23875DFB0();
  v22 = sub_23875E040();
  (*(v47 + 104))(v48, *MEMORY[0x277CE0EE0], v49);
  v23 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_238763098);
  v25 = v52;
  v26 = &v52[*(v46 + 36)];
  v27 = type metadata accessor for OrderImageStyleModifier(0);
  *&v26[*(v27 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v26[*(v27 + 40)] = swift_getKeyPath(byte_2387630D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v26 = xmmword_238762FA0;
  *(v26 + 2) = 0;
  v26[24] = 1;
  *(v26 + 4) = v23;
  v26[40] = 1;
  *v25 = v44;
  v25[1] = v22;
  v25[2] = 0x3FD999999999999ALL;
  v28 = swift_getKeyPath(byte_2387630D0);
  v29 = v51;
  v30 = &v51[*(v50 + 36)];
  *v30 = v28;
  swift_storeEnumTagMultiPayload();
  *(v30 + *(type metadata accessor for OrderImageVignette(0) + 20)) = 1;
  sub_2384396E4(v25, v29, &qword_27DF092E0, &qword_238763080);
  v31 = v53;
  sub_2384396E4(v29, v53, &qword_27DF092E8, &qword_238763088);
  v32 = v54;
  sub_23843981C(v31, v54, &qword_27DF092E8, &qword_238763088);
  v33 = v45;
  v56 = v45;
  LOBYTE(v26) = v43;
  v57[0] = v43;
  *&v57[113] = *&v61[112];
  *&v57[97] = *&v61[96];
  *&v57[129] = *&v61[128];
  v34 = *&v61[143];
  *&v57[144] = *&v61[143];
  *&v57[33] = *&v61[32];
  *&v57[49] = *&v61[48];
  *&v57[65] = *&v61[64];
  *&v57[81] = *&v61[80];
  *&v57[1] = *v61;
  *&v57[17] = *&v61[16];
  v35 = *&v57[128];
  *(a2 + 128) = *&v57[112];
  *(a2 + 144) = v35;
  *(a2 + 160) = v34;
  v36 = *&v57[64];
  *(a2 + 64) = *&v57[48];
  *(a2 + 80) = v36;
  v37 = *&v57[96];
  *(a2 + 96) = *&v57[80];
  *(a2 + 112) = v37;
  v38 = *v57;
  *a2 = v56;
  *(a2 + 16) = v38;
  v39 = *&v57[32];
  *(a2 + 32) = *&v57[16];
  *(a2 + 48) = v39;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09300, &qword_238763108);
  sub_23843981C(v32, a2 + *(v40 + 64), &qword_27DF092E8, &qword_238763088);
  sub_23843981C(&v56, &v58, &qword_27DF09308, &qword_238763110);
  sub_238439884(v31, &qword_27DF092E8, &qword_238763088);
  sub_238439884(v32, &qword_27DF092E8, &qword_238763088);
  *&v59[97] = *&v61[96];
  *&v59[113] = *&v61[112];
  *v60 = *&v61[128];
  *&v59[33] = *&v61[32];
  *&v59[49] = *&v61[48];
  *&v59[65] = *&v61[64];
  *&v59[81] = *&v61[80];
  *&v59[1] = *v61;
  v58 = v33;
  v59[0] = v26;
  *&v60[15] = *&v61[143];
  *&v59[17] = *&v61[16];
  sub_238439884(&v58, &qword_27DF09308, &qword_238763110);
}

uint64_t sub_238439128@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v73 = a2;
  v3 = sub_23875BE40();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23875BE20();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23875BD20();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v72 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *a1;
  v10 = *(a1 + 1);
  v70 = *(a1 + 2);
  v71 = v10;
  v11 = a1[24];
  v68 = v9;
  v69 = v11;
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v67 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  sub_2384399A0(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa, &unk_238777678);
  sub_238759950();
  v12 = sub_23843974C(v8);
  v63 = sub_2384397A8(v12, v13, v14);
  v15 = sub_23875DAA0();
  v17 = v16;
  v19 = v18;

  sub_23875D8E0();
  v20 = sub_23875DA60();
  v22 = v21;
  v24 = v23;
  v62 = a1;

  sub_2384397FC(v15, v17, v19 & 1);

  sub_23875D890();
  v25 = sub_23875D9E0();
  v27 = v26;
  LOBYTE(v17) = v28;
  sub_2384397FC(v20, v22, v24 & 1);

  LODWORD(v82) = sub_23875D420();
  v29 = sub_23875DA20();
  v64 = v30;
  v65 = v29;
  v32 = v31;
  v66 = v33;
  sub_2384397FC(v25, v27, v17 & 1);

  v34 = &v62[*(v67 + 24)];
  v35 = *(v34 + 1);
  v82 = *v34;
  v83 = v35;

  v36 = sub_23875DAA0();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  KeyPath = swift_getKeyPath(byte_238763118);
  v44 = sub_23875D820();
  v45 = swift_getKeyPath(byte_238763148);
  v40 &= 1u;
  LOBYTE(v82) = v40;
  LOBYTE(v78) = 0;
  v46 = sub_23875D420();
  v75 = v32 & 1;
  *&v78 = v36;
  *(&v78 + 1) = v38;
  LOBYTE(v79) = v40;
  v47 = *v77;
  *(&v79 + 1) = *v77;
  DWORD1(v79) = *&v77[3];
  *(&v79 + 1) = v42;
  *&v80 = KeyPath;
  DWORD1(v81[0]) = *&v76[3];
  v48 = *v76;
  *(v81 + 1) = *v76;
  *(&v80 + 1) = 1;
  LOBYTE(v81[0]) = 0;
  *(&v81[0] + 1) = v45;
  *&v81[1] = v44;
  DWORD2(v81[1]) = v46;
  v49 = v73;
  *v73 = v68;
  v50 = v75;
  v51 = v70;
  *(v49 + 1) = v71;
  *(v49 + 2) = v51;
  v49[24] = v69;
  v52 = v64;
  v53 = v65;
  *(v49 + 4) = v65;
  *(v49 + 5) = v52;
  v49[48] = v50;
  *(v49 + 7) = v66;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  *(v49 + 124) = *(v81 + 12);
  v57 = v81[0];
  *(v49 + 6) = v56;
  *(v49 + 7) = v57;
  *(v49 + 4) = v54;
  *(v49 + 5) = v55;
  v82 = v36;
  v83 = v38;
  v84 = v40;
  *&v85[3] = *&v77[3];
  *v85 = v47;
  v86 = v42;
  v87 = KeyPath;
  v88 = 1;
  v89 = 0;
  *&v90[3] = *&v76[3];
  *v90 = v48;
  v91 = v45;
  v92 = v44;
  v93 = v46;
  v58 = v53;
  v59 = v52;
  sub_23843980C(v53, v52, v32 & 1);

  sub_23843981C(&v78, &v74, &qword_27DF09318, &unk_23877D280);
  sub_238439884(&v82, &qword_27DF09318, &unk_23877D280);
  sub_2384397FC(v58, v59, v32 & 1);
}

unint64_t sub_238439680()
{
  result = qword_27DF092D8;
  if (!qword_27DF092D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF092C8, &qword_238763070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF092D8);
  }

  return result;
}

uint64_t sub_2384396E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23843974C(uint64_t a1)
{
  v2 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2384397A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2814F08D0;
  if (!qword_2814F08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F08D0);
  }

  return result;
}

uint64_t sub_2384397FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23843980C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23843981C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238439884(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2384398E4()
{
  result = qword_27DF09320;
  if (!qword_27DF09320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09328, &qword_238763180);
    sub_238439680();
    sub_2384399A0(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09320);
  }

  return result;
}

uint64_t sub_2384399A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s5EmptyVMa(uint64_t a1)
{
  result = qword_2814F1118;
  if (!qword_2814F1118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238439A5C(uint64_t a1)
{
  sub_238439AC8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_238439AC8(uint64_t a1)
{
  if (!qword_2814F09B8)
  {
    sub_23875E7D0();
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_2814F09B8);
    }
  }
}

uint64_t sub_238439B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46[1] = a1;
  v48 = a2;
  v2 = sub_23875E7D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2387591F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09350, &qword_2387631F0);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v46 - v13;
  sub_23875ED50();
  v46[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 104))(v9, *MEMORY[0x277CC77B0], v6);
  v15 = sub_238758A40();
  v17 = v16;
  v18 = (*(v7 + 8))(v9, v6);
  v49 = v15;
  v50 = v17;
  sub_2384397A8(v18, v19, v20);
  v21 = sub_23875DAA0();
  v23 = v22;
  v25 = v24;
  sub_2384D4E60(v5);
  v26 = (*(v3 + 88))(v5, v2);
  if (v26 == *MEMORY[0x277CE3B68])
  {
    sub_23875D7F0();
  }

  else if (v26 == *MEMORY[0x277CE3B60])
  {
    sub_23875D8E0();
  }

  else
  {
    sub_23875D820();
    (*(v3 + 8))(v5, v2);
  }

  v27 = sub_23875DA60();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_2384397FC(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath(byte_2387631F8);
  v49 = v27;
  v50 = v29;
  v31 &= 1u;
  LOBYTE(v51) = v31;
  v52 = v33;
  v53 = KeyPath;
  v54 = 2;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09358, &unk_238774FB0);
  sub_23843A174();
  sub_23875DE00();
  sub_2384397FC(v27, v29, v31);

  v35 = sub_23875CE60();
  sub_23843A020(&v49);
  v36 = v49;
  LOBYTE(v27) = v50;
  v37 = v51;
  v38 = v52;
  v39 = v53;
  LOBYTE(v49) = 1;
  v56 = v50;
  v40 = v47;
  sub_23843A22C(v14, v47);
  v41 = v48;
  sub_23843A22C(v40, v48);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09368, &qword_238763228);
  v43 = v41 + *(v42 + 48);
  *v43 = 0x4020000000000000;
  *(v43 + 8) = 0;
  v44 = v41 + *(v42 + 64);
  *v44 = v35;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  *(v44 + 24) = v36;
  *(v44 + 32) = v27;
  *(v44 + 40) = v37;
  *(v44 + 48) = v38;
  *(v44 + 56) = v39;

  sub_23843A29C(v14);

  sub_23843A29C(v40);
}

uint64_t sub_23843A020@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();
  v3 = sub_23875D8E0();
  KeyPath = swift_getKeyPath(byte_238763230);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v3;
}

uint64_t sub_23843A0FC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D030();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09340, &qword_2387631E0);
  sub_238439B3C(v2, a2 + *(v4 + 44));
  v5 = sub_23875D440();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09348, &qword_2387631E8);
  *(a2 + *(result + 36)) = v5;
  return result;
}

unint64_t sub_23843A174()
{
  result = qword_2814F0988;
  if (!qword_2814F0988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09358, &unk_238774FB0);
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0988);
  }

  return result;
}

uint64_t sub_23843A22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09350, &qword_2387631F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23843A29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09350, &qword_2387631F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23843A304()
{
  result = qword_2814F0970;
  if (!qword_2814F0970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09348, &qword_2387631E8);
    sub_23843A3E8(&qword_2814F08F0, &qword_27DF09370, &qword_238763260, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0970);
  }

  return result;
}

uint64_t sub_23843A3E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23843A430()
{
  v0 = sub_238759910();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_23875F3A0();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EE63F70](v6, v1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(v1 + 8 * v6 + 32);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v8 = v7;
      v9 = [v8 image];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v10 = v9;
    v11 = sub_23875EA80();
    v18 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_238497C2C(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_238497C2C((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v18;
  }

  while (v4 != v3);
LABEL_24:

  v16 = *(v5 + 2);

  if (v16 < 5)
  {
    return sub_23875F600();
  }

  v19 = sub_23875F600();
  MEMORY[0x23EE63650](43, 0xE100000000000000);
  return v19;
}

uint64_t sub_23843A644(uint64_t a1)
{
  if (a1 < 0)
  {
    return *&aOpen[8 * sub_23875A7C0()];
  }

  v1 = sub_23875AA30();
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6)
      {
        return 0x6575737369;
      }

      else
      {
        return 0x656C6C65636E6163;
      }
    }

    else if (v1 == 4)
    {
      return 0x65726576696C6564;
    }

    else if (sub_23875AA00())
    {
      return 0x6863746170736964;
    }

    else
    {
      return 0x64657070696873;
    }
  }

  else if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0x7961576568546E6FLL;
    }

    else
    {
      return 0x6544726F4674756FLL;
    }
  }

  else if (v1)
  {
    if (sub_23875AA00())
    {
      return 0x6E69726170657270;
    }

    else
    {
      return 0x69737365636F7270;
    }
  }

  else
  {
    return 1852141679;
  }
}

uint64_t sub_23843A804(unint64_t a1, SEL *a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v2 = [a1 & 0x7FFFFFFFFFFFFFFFLL *a2];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = [a1 *a2];
    if (v2)
    {
LABEL_3:
      v3 = v2;
      v4 = sub_23875EA80();

      return v4;
    }
  }

  return sub_23875EA80();
}

uint64_t sub_23843A894(unint64_t a1)
{
  v2 = sub_23875BB30();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v11);
  v30 = &v29 - v12;
  v13 = sub_23875BC40();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v32 = a1;
  v23 = [v32 shippedDate];
  if (v23)
  {
    v24 = v23;
    sub_23875BBE0();

    (*(v14 + 56))(v19, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v19, 1, 1, v13);
  }

  sub_23843AC44(v19, v22);
  if ((*(v14 + 48))(v22, 1, v13))
  {

    sub_23843ACB4(v22);
    return 0;
  }

  (*(v14 + 16))(v16, v22, v13);
  v26 = sub_23843ACB4(v22);
  MEMORY[0x23EE5FF10](v26);
  sub_23875BB00();
  v27 = *(v31 + 8);
  v27(v4, v2);
  sub_23875BB20();
  v27(v7, v2);
  v28 = v30;
  sub_23875BB10();
  v27(v10, v2);
  sub_23843AD1C();
  sub_23875BC20();

  v27(v28, v2);
  (*(v14 + 8))(v16, v13);
  return v33;
}

uint64_t sub_23843AC44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23843ACB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23843AD1C()
{
  result = qword_27DF09378;
  if (!qword_27DF09378)
  {
    sub_23875BB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09378);
  }

  return result;
}

uint64_t sub_23843AD74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09380, &qword_2387632C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = [v0 payment];
  if (!v8)
  {
    return 0;
  }

  sub_238758FE0();
  v9 = sub_238759C30();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {

    v11 = 1701736302;
  }

  else
  {
    sub_23843B530(v7, v3);
    v12 = (*(v10 + 88))(v3, v9);
    if (v12 == *MEMORY[0x277CC7C80])
    {

      v11 = 0x676E69646E6570;
    }

    else if (v12 == *MEMORY[0x277CC7C68])
    {

      v11 = 0x7A69726F68747561;
    }

    else if (v12 == *MEMORY[0x277CC7C70])
    {

      v11 = 1684627824;
    }

    else if (v12 == *MEMORY[0x277CC7C90])
    {

      v11 = 0x6465646E75666572;
    }

    else if (v12 == *MEMORY[0x277CC7C88])
    {

      v11 = 0x64656E696C636564;
    }

    else
    {
      v13 = *MEMORY[0x277CC7C78];
      v14 = v12;

      if (v14 == v13)
      {
        v11 = 0x646564696F76;
      }

      else
      {
        (*(v10 + 8))(v3, v9);
        v11 = 0;
      }
    }
  }

  sub_23843B4C8(v7);
  return v11;
}

void sub_23843B030(void *a1)
{
  v2 = sub_238758D20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isMarkedAsComplete])
  {

    goto LABEL_4;
  }

  sub_23875A570();
  v7 = (*(v3 + 88))(v6, v2);
  v8 = *MEMORY[0x277CC7480];
  (*(v3 + 8))(v6, v2);
  if (v7 != v8)
  {
LABEL_4:
    sub_23875EA80();
    return;
  }

  v9 = sub_23875A4F0();
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_16:

    goto LABEL_4;
  }

  v11 = 0;
  while (v11 < *(v9 + 16))
  {
    v12 = *(v9 + 8 * v11 + 32);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      sub_23875A7C0();
      v15 = sub_238759A10();
      v16 = sub_238759A10();
    }

    else
    {
      v13 = v12;
      sub_23875AA30();
      v14 = sub_23875A240();
      if (v14 == sub_23875A240())
      {

        goto LABEL_9;
      }

      sub_23875AA30();
      v15 = sub_23875A240();
      v16 = sub_23875A240();
    }

    v17 = v16;

    if (v15 != v17)
    {
      goto LABEL_16;
    }

LABEL_9:
    if (v10 == ++v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_23843B254()
{
  v1 = v0;
  v2 = sub_23875BB30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = sub_23875BC40();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v1 updatedDate];
  sub_23875BBE0();

  MEMORY[0x23EE5FF10]();
  sub_23875BB00();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_23875BB20();
  v21(v8, v2);
  sub_23875BB10();
  v21(v11, v2);
  sub_23843AD1C();
  sub_23875BC20();
  v21(v14, v2);
  (*(v16 + 8))(v19, v15);
  return v23;
}

uint64_t sub_23843B4C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09380, &qword_2387632C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23843B530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09380, &qword_2387632C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23843B5A0()
{
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23843B618()
{
  swift_getKeyPath("(F{E");
  swift_getKeyPath("\bF{E");
  sub_23875C2D0();
}

void *BankConnectAccountConnectionViewModel.__allocating_init(institution:consentID:paymentPass:flowType:bankConnectService:store:ignoreConnectedAccounts:autocompletionDelay:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a8;
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v34 = a7;
  v35 = a11;
  v32 = a6;
  v33 = a10;
  v31 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = swift_allocObject();
  LOBYTE(a5) = *a5;
  v37 = 0;
  v38 = 0;
  v39 = 3;
  sub_23875C290();
  v20 = sub_23875A9F0();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_23843981C(v18, v15, &qword_27DF0D390, &unk_238763350);
  sub_23875C290();
  sub_238439884(v18, &qword_27DF0D390, &unk_238763350);
  *(v19 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_shouldLoadData) = 1;
  v21 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
  v22 = sub_238757B60();
  (*(*(v22 - 8) + 32))(v19 + v21, a1, v22);
  v23 = (v19 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_consentID);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  v19[6] = v30;
  *(v19 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType) = a5;
  v25 = v34;
  v19[2] = v32;
  v19[3] = v25;
  *(v19 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_ignoreConnectedAccounts) = v36;
  *(v19 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay) = v31;
  v26 = v35;
  v19[4] = v33;
  v19[5] = v26;
  return v19;
}

char *BankConnectAccountConnectionViewModel.init(institution:consentID:paymentPass:flowType:bankConnectService:store:ignoreConnectedAccounts:autocompletionDelay:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = a8;
  v41 = a3;
  v42 = a4;
  v39 = a1;
  v40 = a2;
  v46 = a7;
  v47 = a11;
  v44 = a6;
  v45 = a10;
  v43 = a9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  v13 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v15 = &v36[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v16);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v36[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093A0, &qword_238763360);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v36[-v24];
  v37 = *a5;
  v26 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__state;
  v49 = 0;
  v50 = 0;
  v51 = 3;
  sub_23875C290();
  (*(v23 + 32))(&v11[v26], v25, v22);
  v27 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__selectedAccountFQAI;
  v28 = sub_23875A9F0();
  (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
  sub_23843981C(v21, v18, &qword_27DF0D390, &unk_238763350);
  sub_23875C290();
  sub_238439884(v21, &qword_27DF0D390, &unk_238763350);
  (*(v13 + 32))(&v11[v27], v15, v38);
  v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_shouldLoadData] = 1;
  v29 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
  v30 = sub_238757B60();
  (*(*(v30 - 8) + 32))(&v11[v29], v39, v30);
  v31 = &v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_consentID];
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;
  *(v11 + 6) = v42;
  v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType] = v37;
  v33 = v46;
  *(v11 + 2) = v44;
  *(v11 + 3) = v33;
  v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_ignoreConnectedAccounts] = v48;
  *&v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay] = v43;
  v34 = v47;
  *(v11 + 4) = v45;
  *(v11 + 5) = v34;
  return v11;
}

uint64_t sub_23843BC84()
{
  v1[27] = v0;
  v2 = sub_23875C1E0();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_23875A9F0();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = sub_238758680();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = sub_23875AAB0();
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  sub_23875ED50();
  v1[45] = sub_23875ED40();
  v7 = sub_23875ECE0();
  v1[46] = v7;
  v1[47] = v6;

  return MEMORY[0x2822009F8](sub_23843BEF4, v7, v6);
}

uint64_t sub_23843BEF4()
{
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (*(v0 + 32))
  {
    if (v3 != 3 || v2 | v1)
    {
      sub_2384488D8(v1, v2, v3);

      sub_23875C120();
      v4 = sub_23875C1B0();
      v5 = sub_23875EFE0();
      v6 = os_log_type_enabled(v4, v5);
      v8 = *(v0 + 232);
      v7 = *(v0 + 240);
      v9 = *(v0 + 224);
      if (v6)
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2383F8000, v4, v5, "Inconsistent state! The account is being connected already!", v10, 2u);
        MEMORY[0x23EE64DF0](v10, -1, -1);
      }

      (*(v8 + 8))(v7, v9);

      v11 = *(v0 + 8);

      return v11();
    }
  }

  else
  {
    sub_2384488D8(v1, v2, v3);
  }

  v13 = *(v0 + 216);
  swift_getKeyPath("@F{E");
  *(v0 + 40) = xmmword_2387632D0;
  *(v0 + 56) = 3;

  sub_23875C2E0();
  v14 = *(v13 + 48);
  *(v0 + 384) = v14;
  if (v14)
  {
    v15 = *(v0 + 216);
    v16 = [v14 primaryAccountIdentifier];
    v17 = sub_23875EA80();
    v19 = v18;

    *(v0 + 392) = v19;
    swift_getKeyPath("(F{E");
    swift_getKeyPath("\bF{E");
    sub_23875C2D0();

    v20 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
    v21 = *(v15 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_ignoreConnectedAccounts);
    v22 = swift_task_alloc();
    *(v0 + 400) = v22;
    *v22 = v0;
    v22[1] = sub_23843C2E8;
    v23 = *(v0 + 352);
    v24 = *(v0 + 320);

    return MEMORY[0x282117DA8](v23, v17, v19, v24, v15 + v20, 1, v21);
  }

  else
  {
    v25 = *(v0 + 216);
    v26 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
    v27 = swift_task_alloc();
    *(v0 + 456) = v27;
    *v27 = v0;
    v27[1] = sub_23843CEB4;

    return MEMORY[0x282117DD0](v25 + v26);
  }
}

uint64_t sub_23843C2E8()
{
  v2 = *v1;
  (*v1)[51] = v0;

  sub_238439884(v2[40], &qword_27DF0D390, &unk_238763350);

  v3 = v2[47];
  v4 = v2[46];
  if (v0)
  {
    v5 = sub_23843D9FC;
  }

  else
  {
    v5 = sub_23843C468;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23843C468()
{
  v27 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  (*(v3 + 16))(v1, *(v0 + 352), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277CC81A0])
  {
    v5 = *(v0 + 344);
    (*(*(v0 + 336) + 96))(v5, *(v0 + 328));
    v6 = *v5;
    *(v0 + 416) = v6;
    v26 = 0;
    sub_23843F8DC(&v26);
    v7 = swift_task_alloc();
    *(v0 + 424) = v7;
    *v7 = v0;
    v7[1] = sub_23843C878;

    return sub_23843E038(v6);
  }

  else if (v4 == *MEMORY[0x277CC8198])
  {
    v9 = *(v0 + 384);
    v11 = *(v0 + 336);
    v10 = *(v0 + 344);
    v12 = *(v0 + 328);

    (*(v11 + 96))(v10, v12);
    v13 = *v10;
    swift_getKeyPath("@F{E");
    *(v0 + 136) = v9;
    *(v0 + 144) = v13;
    *(v0 + 152) = 0;

    v14 = v9;

    sub_23875C2E0();
    if (*(v13 + 16))
    {
      v15 = *(v0 + 296);
      v16 = *(v0 + 272);
      v17 = *(v0 + 280);
      (*(v17 + 16))(v15, v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);

      sub_238758530();
      (*(v17 + 8))(v15, v16);
      v18 = 0;
    }

    else
    {

      v18 = 1;
    }

    v19 = *(v0 + 384);
    v20 = *(v0 + 336);
    v24 = *(v0 + 328);
    v25 = *(v0 + 352);
    v22 = *(v0 + 304);
    v21 = *(v0 + 312);
    (*(*(v0 + 256) + 56))(v21, v18, 1, *(v0 + 248));
    swift_getKeyPath("(F{E");
    swift_getKeyPath("\bF{E");
    sub_23843981C(v21, v22, &qword_27DF0D390, &unk_238763350);

    sub_23875C2E0();

    sub_238439884(v21, &qword_27DF0D390, &unk_238763350);
    (*(v20 + 8))(v25, v24);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    return sub_23875F520();
  }
}

uint64_t sub_23843C878()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 432) = v3;
  *v3 = v2;
  v3[1] = sub_23843C9D0;
  v4 = *(v1 + 416);

  return sub_23843E804(v4);
}

uint64_t sub_23843C9D0()
{
  v1 = *v0;

  v2 = *(v1 + 376);
  v3 = *(v1 + 368);

  return MEMORY[0x2822009F8](sub_23843CAF0, v3, v2);
}

uint64_t sub_23843CAF0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 216);
  swift_getKeyPath("@F{E");
  *(v0 + 160) = v1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;

  sub_23875C2E0();
  v3 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay);
  v4 = swift_task_alloc();
  *(v0 + 440) = v4;
  *v4 = v0;
  v4[1] = sub_23843CBF8;

  return MEMORY[0x282200480](v3);
}

uint64_t sub_23843CBF8()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);
  if (v0)
  {
    v5 = sub_23843DB88;
  }

  else
  {
    v5 = sub_23843CD34;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23843CD34()
{
  v13 = v0;

  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 384);
  v5 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  if (v3 == 1)
  {
    v8 = *(v0 + 216);
    sub_2384488D8(v1, v2, 1);
    v9 = *(v8 + 32);
    v12 = 0;
    v9(&v12);
  }

  else
  {
    sub_2384488D8(v1, v2, v3);
  }

  (*(v7 + 8))(v5, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23843CEB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 464) = a1;
  *(v4 + 472) = v1;

  v5 = *(v3 + 376);
  v6 = *(v3 + 368);
  if (v1)
  {
    v7 = sub_23843DD30;
  }

  else
  {
    v7 = sub_23843CFF8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23843CFF8()
{
  v40 = v0;
  v1 = *(v0 + 464);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 256);
    v39[0] = MEMORY[0x277D84F90];
    sub_2385FE468(0, v2, 0);
    v3 = v39[0];
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v36 = *(v4 + 56);
    v37 = v6;
    v38 = v0;
    v34 = (v4 - 8);
    v35 = (v5 + 8);
    do
    {
      v8 = *(v0 + 288);
      v9 = v3;
      v11 = *(v0 + 264);
      v10 = *(v0 + 272);
      v12 = *(v0 + 248);
      v37(v8, v7, v10);
      sub_238758530();
      v13 = sub_23875A9E0();
      v15 = v14;
      (*v35)(v11, v12);
      v16 = v10;
      v3 = v9;
      (*v34)(v8, v16);
      v39[0] = v9;
      v18 = v9[2];
      v17 = v9[3];
      if (v18 >= v17 >> 1)
      {
        sub_2385FE468((v17 > 1), v18 + 1, 1);
        v3 = v39[0];
      }

      v3[2] = v18 + 1;
      v19 = &v3[2 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v15;
      v7 += v36;
      --v2;
      v0 = v38;
    }

    while (v2);
  }

  v20 = *(v0 + 472);
  v21 = *(v0 + 216);
  v22 = sub_238758010();
  v23 = swift_task_alloc();
  v23[2] = v21;
  v23[3] = v3;
  v23[4] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  sub_23875F120();
  if (v20)
  {

    v24 = *(v0 + 216);
    v39[0] = v20;
    v25 = v20;
    v26 = v20;
    sub_23843F8DC(v39);
    sub_238448A54(v20);
    swift_getKeyPath("@F{E");
    *(v0 + 64) = v20;
    *(v0 + 72) = 0;
    *(v0 + 80) = 2;

    v27 = v20;
    sub_23875C2E0();
    v28 = *(v24 + 32);
    v39[0] = v20;
    v28(v39);

    sub_238448A54(v39[0]);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 464);

    v32 = *(v0 + 208);
    v39[0] = v31;
    sub_238569AA0(v32);
    *(v0 + 480) = v31;
    v33 = swift_task_alloc();
    *(v0 + 488) = v33;
    *v33 = v0;
    v33[1] = sub_23843D3E8;

    return sub_23843E038(v31);
  }
}

uint64_t sub_23843D3E8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 496) = v3;
  *v3 = v2;
  v3[1] = sub_23843D540;
  v4 = *(v1 + 480);

  return sub_23843E804(v4);
}

uint64_t sub_23843D540()
{
  v1 = *v0;

  v2 = *(v1 + 376);
  v3 = *(v1 + 368);

  return MEMORY[0x2822009F8](sub_23843D660, v3, v2);
}

uint64_t sub_23843D660()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 216);
  swift_getKeyPath("@F{E");
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;

  sub_23875C2E0();
  v3 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay);
  v4 = swift_task_alloc();
  *(v0 + 504) = v4;
  *v4 = v0;
  v4[1] = sub_23843D768;

  return MEMORY[0x282200480](v3);
}

uint64_t sub_23843D768()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);
  if (v0)
  {
    v5 = sub_23843DEB4;
  }

  else
  {
    v5 = sub_23843D8A4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23843D8A4()
{
  v9 = v0;

  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  if (v3 == 1)
  {
    v4 = *(v0 + 216);
    sub_2384488D8(v1, v2, 1);
    v5 = *(v4 + 32);
    v8 = 0;
    v5(&v8);
  }

  else
  {
    sub_2384488D8(v1, v2, v3);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23843D9FC()
{
  v11 = v0;
  v1 = *(v0 + 384);

  v2 = *(v0 + 408);
  v3 = *(v0 + 216);
  v10 = v2;
  v4 = v2;
  v5 = v2;
  sub_23843F8DC(&v10);
  sub_238448A54(v2);
  swift_getKeyPath("@F{E");
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 2;

  v6 = v2;
  sub_23875C2E0();
  v7 = *(v3 + 32);
  v10 = v2;
  v7(&v10);

  sub_238448A54(v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23843DB88()
{
  v14 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 448);
  v6 = *(v0 + 216);
  v13 = v5;
  v7 = v5;
  v8 = v5;
  sub_23843F8DC(&v13);
  sub_238448A54(v5);
  swift_getKeyPath("@F{E");
  *(v0 + 64) = v5;
  *(v0 + 72) = 0;
  *(v0 + 80) = 2;

  v9 = v5;
  sub_23875C2E0();
  v10 = *(v6 + 32);
  v13 = v5;
  v10(&v13);

  sub_238448A54(v13);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23843DD30()
{
  v10 = v0;

  v1 = *(v0 + 472);
  v2 = *(v0 + 216);
  v9 = v1;
  v3 = v1;
  v4 = v1;
  sub_23843F8DC(&v9);
  sub_238448A54(v1);
  swift_getKeyPath("@F{E");
  *(v0 + 64) = v1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 2;

  v5 = v1;
  sub_23875C2E0();
  v6 = *(v2 + 32);
  v9 = v1;
  v6(&v9);

  sub_238448A54(v9);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23843DEB4()
{
  v10 = v0;

  v1 = *(v0 + 512);
  v2 = *(v0 + 216);
  v9 = v1;
  v3 = v1;
  v4 = v1;
  sub_23843F8DC(&v9);
  sub_238448A54(v1);
  swift_getKeyPath("@F{E");
  *(v0 + 64) = v1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 2;

  v5 = v1;
  sub_23875C2E0();
  v6 = *(v2 + 32);
  v9 = v1;
  v6(&v9);

  sub_238448A54(v9);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23843E038(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23875C1E0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_23875A9F0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_23875ED50();
  v2[10] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v2[11] = v6;
  v2[12] = v5;

  return MEMORY[0x2822009F8](sub_23843E188, v6, v5);
}

uint64_t sub_23843E188()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 104) = v1;
  if (v1)
  {
    *(v0 + 112) = *(*(v0 + 24) + 16);
    v2 = *(sub_238758680() - 8);
    *(v0 + 152) = *(v2 + 80);
    *(v0 + 120) = *(v2 + 72);
    *(v0 + 128) = 0;
    sub_238758530();
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = sub_23843E2F8;
    v4 = *(v0 + 72);

    return MEMORY[0x282117DB0](v4);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23843E2F8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_23843E5B4;
  }

  else
  {
    v8 = sub_23843E490;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23843E490(uint64_t a1)
{
  v2 = v1[16] + 1;
  if (v2 == v1[13])
  {

    v3 = v1[1];

    return v3();
  }

  else
  {
    v1[16] = v2;
    sub_238758530();
    v5 = swift_task_alloc();
    v1[17] = v5;
    *v5 = v1;
    v5[1] = sub_23843E2F8;
    v6 = v1[9];

    return MEMORY[0x282117DB0](v6);
  }
}

uint64_t sub_23843E5B4(uint64_t a1)
{
  v2 = v1[18];
  sub_23875C120();
  v3 = v2;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to load payment info after connecting an account. %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  v11 = v1[18];
  v13 = v1[5];
  v12 = v1[6];
  v14 = v1[4];

  (*(v13 + 8))(v12, v14);
  v15 = v1[16] + 1;
  if (v15 == v1[13])
  {

    v16 = v1[1];

    return v16();
  }

  else
  {
    v1[16] = v15;
    sub_238758530();
    v18 = swift_task_alloc();
    v1[17] = v18;
    *v18 = v1;
    v18[1] = sub_23843E2F8;
    v19 = v1[9];

    return MEMORY[0x282117DB0](v19);
  }
}

uint64_t sub_23843E804(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23875C1E0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_23875A9F0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_23875ED50();
  v2[10] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v2[11] = v6;
  v2[12] = v5;

  return MEMORY[0x2822009F8](sub_23843E954, v6, v5);
}

uint64_t sub_23843E954()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 104) = v1;
  if (v1)
  {
    *(v0 + 112) = *(*(v0 + 24) + 16);
    v2 = *(sub_238758680() - 8);
    *(v0 + 152) = *(v2 + 80);
    *(v0 + 120) = *(v2 + 72);
    *(v0 + 128) = 0;
    sub_238758530();
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = sub_23843EAC4;
    v4 = *(v0 + 72);

    return MEMORY[0x282117DF8](v4);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23843EAC4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_23843ED80;
  }

  else
  {
    v8 = sub_23843EC5C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23843EC5C(uint64_t a1)
{
  v2 = v1[16] + 1;
  if (v2 == v1[13])
  {

    v3 = v1[1];

    return v3();
  }

  else
  {
    v1[16] = v2;
    sub_238758530();
    v5 = swift_task_alloc();
    v1[17] = v5;
    *v5 = v1;
    v5[1] = sub_23843EAC4;
    v6 = v1[9];

    return MEMORY[0x282117DF8](v6);
  }
}

uint64_t sub_23843ED80(uint64_t a1)
{
  v2 = v1[18];
  sub_23875C120();
  v3 = v2;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to schedule historical transactions data loading after connecting an account.\n%@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  v11 = v1[18];
  v13 = v1[5];
  v12 = v1[6];
  v14 = v1[4];

  (*(v13 + 8))(v12, v14);
  v15 = v1[16] + 1;
  if (v15 == v1[13])
  {

    v16 = v1[1];

    return v16();
  }

  else
  {
    v1[16] = v15;
    sub_238758530();
    v18 = swift_task_alloc();
    v1[17] = v18;
    *v18 = v1;
    v18[1] = sub_23843EAC4;
    v19 = v1[9];

    return MEMORY[0x282117DF8](v19);
  }
}

void sub_23843EFD0(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35 = a3;
  v33 = a4;
  v34 = a2;
  v37 = sub_238758680();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v30 - v7;
  sub_238759780();
  v8 = sub_238759710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2387632E0;
  *(v9 + 32) = sub_238759740();
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2387632F0;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  *(v10 + 64) = sub_23843A3E8(&qword_27DF09558, &qword_27DF09550, &qword_2387638E0, MEMORY[0x277CC9C50]);
  *(v10 + 32) = v34;

  *(v9 + 40) = sub_23875EF80();
  v11 = MEMORY[0x277D84F90];
  *(v9 + 48) = sub_23875EF80();
  v12 = sub_23875EC60();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v8 setPredicate_];
  v14 = v36;
  v15 = sub_23875F140();
  if (v14)
  {

    return;
  }

  v16 = v15;
  v18 = v31;
  v17 = v32;
  if (!(v15 >> 62))
  {
    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v33;
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_18:

    *v20 = MEMORY[0x277D84F90];
    return;
  }

  v19 = sub_23875F3A0();
  v20 = v33;
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_5:
  v38 = v11;
  sub_2385FE488(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    v35 = 0;
    v36 = v8;
    v21 = v38;
    if ((v16 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        MEMORY[0x23EE63F70](i, v16);
        sub_238758690();
        v38 = v21;
        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2385FE488((v23 > 1), v24 + 1, 1);
          v21 = v38;
        }

        *(v21 + 16) = v24 + 1;
        (*(v4 + 32))(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v18, v37);
      }
    }

    else
    {
      v25 = 32;
      do
      {
        v26 = *(v16 + v25);
        sub_238758690();
        v38 = v21;
        v27 = v17;
        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2385FE488((v28 > 1), v29 + 1, 1);
          v21 = v38;
        }

        *(v21 + 16) = v29 + 1;
        (*(v4 + 32))(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v27, v37);
        v25 += 8;
        --v19;
        v17 = v27;
      }

      while (v19);
    }

    *v33 = v21;
  }
}

void sub_23843F46C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  if (v18)
  {
    sub_2384488D8(v16, v17, v18);
  }

  else
  {

    swift_getKeyPath("(F{E");
    swift_getKeyPath("\bF{E");
    sub_23875C2D0();

    v9 = sub_23875A9F0();
    v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
    sub_238439884(v8, &qword_27DF0D390, &unk_238763350);
    if (v10 != 1)
    {
      v11 = sub_23875ED80();
      (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
      sub_23875ED50();

      v12 = sub_23875ED40();
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D85700];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v1;
      sub_2386C3BA4(0, 0, v4, &unk_2387638B8, v13);
    }
  }
}

uint64_t sub_23843F6F4()
{
  v0[2] = sub_23875ED50();
  v0[3] = sub_23875ED40();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23843F7A0;

  return sub_23843BC84();
}

uint64_t sub_23843F7A0()
{

  v1 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238449A88, v1, v0);
}

void sub_23843F8DC(uint64_t *a1)
{
  v2 = sub_23875A820();
  v45 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    if (v5 == 1)
    {
      *(inited + 16) = xmmword_238763300;
      v7 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      *(inited + 40) = 0x6B6E694C6B6E6162;
      *(inited + 48) = 0xEF6572756C696146;
      v8 = *MEMORY[0x277D384B8];
      *(inited + 56) = *MEMORY[0x277D384B8];
      *(inited + 64) = 0x6B6E694C6B6E6162;
      *(inited + 72) = 0xEF73736563637553;
      v9 = v7;
      v10 = v8;
      *(inited + 80) = sub_23875EA50();
      sub_23875A7E0();
      v11 = sub_23867B330(v4);
      v13 = v12;
      (*(v45 + 8))(v4, v2);
      *(inited + 88) = v11;
      *(inited + 96) = v13;
    }

    else
    {
      *(inited + 16) = xmmword_238763320;
      v25 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      v44 = inited + 32;
      *(inited + 40) = 0x6B6E694C6B6E6162;
      *(inited + 48) = 0xEF6572756C696146;
      v26 = *MEMORY[0x277D384B8];
      v27 = MEMORY[0x277D383A8];
      *(inited + 56) = *MEMORY[0x277D384B8];
      *(inited + 64) = 0x6B6E694C6B6E6162;
      v43 = v2;
      v28 = *v27;
      *(inited + 72) = 0xEF73736563637553;
      *(inited + 80) = v28;
      *(inited + 88) = 3223604;
      *(inited + 96) = 0xE300000000000000;
      v29 = *MEMORY[0x277D383C0];
      *(inited + 104) = *MEMORY[0x277D383C0];
      swift_getErrorValue();
      v30 = v25;
      v31 = v26;
      v32 = v28;
      v33 = v29;
      *(inited + 112) = sub_23875F690();
      *(inited + 120) = v34;
      *(inited + 128) = sub_23875EA50();
      sub_23875A7E0();
      v35 = sub_23867B330(v4);
      v37 = v36;
      (*(v45 + 8))(v4, v43);
      *(inited + 136) = v35;
      *(inited + 144) = v37;
    }

    sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    v14 = swift_initStackObject();
    v15 = MEMORY[0x277D383D8];
    *(v14 + 16) = xmmword_238763310;
    v16 = *v15;
    *(v14 + 32) = v16;
    *(v14 + 40) = 0x6B6E694C6B6E6162;
    *(v14 + 48) = 0xEF73736563637553;
    v17 = *MEMORY[0x277D384B8];
    *(v14 + 56) = *MEMORY[0x277D384B8];
    *(v14 + 64) = 0x6B6E694C6B6E6162;
    v18 = *MEMORY[0x277D383A8];
    *(v14 + 72) = 0xEF73736563637553;
    *(v14 + 80) = v18;
    *(v14 + 88) = 3158066;
    *(v14 + 96) = 0xE300000000000000;
    v19 = v16;
    v20 = v17;
    v21 = v18;
    *(v14 + 104) = sub_23875EA50();
    sub_23875A7E0();
    v22 = sub_23867B330(v4);
    v24 = v23;
    (*(v45 + 8))(v4, v2);
    *(v14 + 112) = v22;
    *(v14 + 120) = v24;
    sub_23854B138(v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  }

  swift_arrayDestroy();
  if (*(v46 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType))
  {
    v38 = MEMORY[0x277D38550];
  }

  else
  {
    v38 = MEMORY[0x277D38560];
  }

  v39 = *v38;
  v40 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238448540(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v41 = sub_23875E910();

  [v40 subject:v39 sendEvent:v41];
}

uint64_t BankConnectAccountConnectionViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
  v2 = sub_238757B60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093A0, &qword_238763360);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__selectedAccountFQAI;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t BankConnectAccountConnectionViewModel.__deallocating_deinit()
{
  BankConnectAccountConnectionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23843FF88@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_23843FFC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23843981C(v2, &v14 - v9, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C880();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t BankConnectAccountConnectionView.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = swift_getKeyPath("xI{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for BankConnectAccountConnectionView(0);
  v5 = a2 + *(result + 20);
  *v5 = sub_238447830;
  *(v5 + 1) = a1;
  v5[16] = 0;
  return result;
}

uint64_t BankConnectAccountConnectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093A8, &unk_2387633A0);
  v58 = *(v1 - 8);
  v59 = v1;
  MEMORY[0x28223BE20](v1);
  v57 = v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DD0, &qword_238761C58);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = v46 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093B0, &qword_2387633B0);
  MEMORY[0x28223BE20](v54);
  v6 = v46 - v5;
  *v6 = sub_23875D020();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_23875ED50();
  v52 = sub_23875ED40();
  v53 = v7;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093B8, &qword_2387633B8) + 44)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093C0, &qword_2387633C0);
  v51 = v46;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v46 - v10;
  v12 = sub_23875D760();
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093C8, &qword_2387633C8);
  sub_238447860();
  v13 = sub_23875C410();
  v49 = v46;
  MEMORY[0x28223BE20](v13);
  sub_23875D020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093E8, &qword_2387633D8);
  sub_23843A3E8(&qword_27DF093F0, &qword_27DF093C0, &qword_2387633C0, MEMORY[0x277CDD6E0]);
  sub_238447950(&qword_27DF093F8, &qword_27DF093E8, &qword_2387633D8, sub_238447920);
  v14 = v50;
  sub_23875DBA0();
  (*(v9 + 8))(v11, v8);
  v15 = sub_23875C910();
  v16 = sub_23875D7A0();

  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09430, &qword_2387633F8) + 36)];
  *v17 = v15;
  v17[8] = v16;
  sub_23843A3E8(&qword_27DF09438, &qword_27DF093B0, &qword_2387633B0, MEMORY[0x277CE1198]);
  v18 = v61;
  sub_23875DE40();
  sub_2383FB5F8(v6);
  v19 = type metadata accessor for BankConnectAccountConnectionView(0);
  v54 = v46;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  sub_238448588(v62, v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectAccountConnectionView);
  v22 = sub_23875ED40();
  v23 = *(v20 + 80);
  v53 = ~v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = MEMORY[0x277D85700];
  sub_2384485F0(v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + ((v23 + 32) & ~v23), type metadata accessor for BankConnectAccountConnectionView);
  v52 = sub_23875ED80();
  v25 = *(v52 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v52);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v46 - v27;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v49 = sub_23875C830();
    v50 = v46;
    v48 = *(v49 - 1);
    MEMORY[0x28223BE20](v49);
    v47 = v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_23875F470();

    v64 = 0xD000000000000040;
    v65 = 0x80000002387857B0;
    v63 = 301;
    v30 = sub_23875F600();
    v51 = v46;
    MEMORY[0x23EE63650](v30);

    v46[1] = v46;
    v32 = MEMORY[0x28223BE20](v31);
    v33 = v52;
    (*(v25 + 16))(v46 - v27, v28, v52, v32);
    v34 = v47;
    sub_23875C820();
    (*(v25 + 8))(v28, v33);
    v35 = v57;
    (*(v55 + 32))(v57, v61, v56);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DD8, &unk_238761C60);
    v37 = (*(v48 + 32))(&v35[*(v36 + 36)], v34, v49);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DE0, &qword_238763420);
    v35 = v57;
    v39 = &v57[*(v38 + 36)];
    v40 = sub_23875C6E0();
    (*(v25 + 32))(&v39[*(v40 + 20)], v28, v52);
    *v39 = &unk_238763408;
    *(v39 + 1) = v24;
    v37 = (*(v55 + 32))(v35, v18, v56);
  }

  MEMORY[0x28223BE20](v37);
  sub_238448588(v62, v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectAccountConnectionView);
  v41 = (v23 + 16) & v53;
  v42 = swift_allocObject();
  sub_2384485F0(v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for BankConnectAccountConnectionView);
  v43 = v60;
  (*(v58 + 32))(v60, v35, v59);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09440, &qword_238763418);
  v45 = (v43 + *(result + 36));
  *v45 = sub_238447B68;
  v45[1] = v42;
  v45[2] = 0;
  v45[3] = 0;
  return result;
}

uint64_t sub_238440C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09598, &qword_238763910);
  sub_238440D58(a1, (a2 + *(v4 + 44)));
  v5 = sub_23875D790();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093C8, &qword_2387633C8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_238440D58@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v103 = a2;
  v3 = sub_23875C880();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v96 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = &v87 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095A0, &qword_238763918);
  MEMORY[0x28223BE20](v91);
  v94 = (&v87 - v7);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095A8, &qword_238763920);
  MEMORY[0x28223BE20](v93);
  v102 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v87 - v10;
  MEMORY[0x28223BE20](v11);
  v101 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095B0, &qword_238763928);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v87 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095B8, &qword_238763930);
  MEMORY[0x28223BE20](v88);
  v90 = &v87 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095C0, &qword_238763938);
  MEMORY[0x28223BE20](v89);
  v100 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v87 - v19;
  MEMORY[0x28223BE20](v21);
  v111 = &v87 - v22;
  v23 = sub_238757B60();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v97 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  v87 = a1;
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  v27 = sub_23875C490();
  (*(v24 + 16))(v26, v27 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution, v23);

  LOBYTE(v112) = 0;
  v118[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v104 = *(&v137 + 1);
  v105 = v137;
  v28 = sub_238757B40();
  v108 = v29;
  v109 = v28;
  (*(v24 + 8))(v26, v23);
  v107 = v112;
  v110 = sub_23875D770();
  sub_23875C3D0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  *v15 = sub_23875D030();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095C8, &qword_238763970);
  sub_2384417B8(&v15[*(v38 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  v39 = v90;
  sub_2384396E4(v15, v90, &qword_27DF095B0, &qword_238763928);
  v40 = (v39 + *(v88 + 36));
  v41 = v142;
  v40[4] = v141;
  v40[5] = v41;
  v40[6] = v143;
  v42 = v138;
  *v40 = v137;
  v40[1] = v42;
  v43 = v140;
  v40[2] = v139;
  v40[3] = v43;
  v44 = sub_23875D770();
  sub_23875C3D0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_2384396E4(v39, v20, &qword_27DF095B8, &qword_238763930);
  v53 = &v20[*(v89 + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  v54 = v111;
  sub_2384396E4(v20, v111, &qword_27DF095C0, &qword_238763938);
  v55 = v94;
  sub_238441A98(v94);
  LOBYTE(v39) = sub_23875D790();
  sub_23875C3D0();
  v56 = v55 + *(v91 + 36);
  *v56 = v39;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *(v56 + 3) = v59;
  *(v56 + 4) = v60;
  v56[40] = 0;
  v61 = sub_23875D770();
  v62 = v95;
  sub_23843FFC8(v95);
  v64 = v98;
  v63 = v99;
  v65 = v96;
  (*(v98 + 104))(v96, *MEMORY[0x277CDF9D8], v99);
  sub_23875C870();
  v66 = *(v64 + 8);
  v66(v65, v63);
  v66(v62, v63);
  sub_23875C3D0();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v92;
  sub_2384396E4(v55, v92, &qword_27DF095A0, &qword_238763918);
  v76 = v75 + *(v93 + 36);
  *v76 = v61;
  *(v76 + 8) = v68;
  *(v76 + 16) = v70;
  *(v76 + 24) = v72;
  *(v76 + 32) = v74;
  *(v76 + 40) = 0;
  v77 = v101;
  sub_2384396E4(v75, v101, &qword_27DF095A8, &qword_238763920);
  v78 = v100;
  sub_23843981C(v54, v100, &qword_27DF095C0, &qword_238763938);
  v79 = v102;
  sub_23843981C(v77, v102, &qword_27DF095A8, &qword_238763920);
  *&v112 = v109;
  *(&v112 + 1) = v108;
  LOBYTE(v113) = 3;
  *(&v113 + 1) = v135[0];
  DWORD1(v113) = *(v135 + 3);
  *(&v113 + 1) = 0x3FB999999999999ALL;
  *&v114 = KeyPath;
  BYTE8(v114) = v107;
  HIDWORD(v114) = *&v134[3];
  *(&v114 + 9) = *v134;
  *&v115 = v105;
  *(&v115 + 1) = v104;
  LOBYTE(v116) = v110;
  DWORD1(v116) = *&v136[3];
  *(&v116 + 1) = *v136;
  *(&v116 + 1) = v31;
  *&v117[0] = v33;
  *(&v117[0] + 1) = v35;
  *&v117[1] = v37;
  BYTE8(v117[1]) = 0;
  v80 = v113;
  v81 = v103;
  *v103 = v112;
  v81[1] = v80;
  v82 = v114;
  v83 = v115;
  *(v81 + 89) = *(v117 + 9);
  v84 = v117[0];
  v81[4] = v116;
  v81[5] = v84;
  v81[2] = v82;
  v81[3] = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095D0, &qword_238763978);
  sub_23843981C(v78, v81 + *(v85 + 48), &qword_27DF095C0, &qword_238763938);
  sub_23843981C(v79, v81 + *(v85 + 64), &qword_27DF095A8, &qword_238763920);
  sub_23843981C(&v112, v118, &qword_27DF095D8, &qword_238763980);
  sub_238439884(v77, &qword_27DF095A8, &qword_238763920);
  sub_238439884(v111, &qword_27DF095C0, &qword_238763938);
  sub_238439884(v79, &qword_27DF095A8, &qword_238763920);
  sub_238439884(v78, &qword_27DF095C0, &qword_238763938);
  v118[0] = v109;
  v118[1] = v108;
  v119 = 3;
  *v120 = v135[0];
  *&v120[3] = *(v135 + 3);
  v121 = 0x3FB999999999999ALL;
  v122 = KeyPath;
  v123 = v107;
  *v124 = *v134;
  *&v124[3] = *&v134[3];
  v125 = v105;
  v126 = v104;
  v127 = v110;
  *&v128[3] = *&v136[3];
  *v128 = *v136;
  v129 = v31;
  v130 = v33;
  v131 = v35;
  v132 = v37;
  v133 = 0;
  sub_238439884(v118, &qword_27DF095D8, &qword_238763980);
}

uint64_t sub_2384417B8@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09618, &qword_2387639A8);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v8 = sub_23875CE60();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09620, &qword_2387639B0);
  sub_2384432A0(&v8[*(v9 + 44)]);
  v10 = sub_23875D790();
  sub_23875C3D0();
  v11 = &v8[*(v3 + 36)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v16 = sub_238443DA0();
  if (v17)
  {
    *&v35 = v16;
    *(&v35 + 1) = v17;
    sub_2384397A8(v16, v17, v18);
    *&v32 = sub_23875DAA0();
    *(&v32 + 1) = v19;
    *&v33 = v20 & 1;
    *(&v33 + 1) = v21;
    v34 = 0;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v34 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09628, &qword_2387639B8);
  sub_238448D98();
  sub_23875D1B0();
  v30 = v35;
  v31 = v36;
  v22 = v37;
  sub_23843981C(v8, v5, &qword_27DF09618, &qword_2387639A8);
  sub_23843981C(v5, a2, &qword_27DF09618, &qword_2387639A8);
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09640, &qword_2387639C0) + 48);
  v25 = v30;
  v24 = v31;
  *v23 = v30;
  *(v23 + 16) = v24;
  *(v23 + 32) = v22;
  v26 = v25;
  v27 = v24;
  v28 = *(&v24 + 1);
  sub_238448E78(v25, *(&v25 + 1), v24, *(&v24 + 1), v22);
  sub_238439884(v8, &qword_27DF09618, &qword_2387639A8);
  sub_238448EBC(v26, *(&v26 + 1), v27, v28, v22);
  sub_238439884(v5, &qword_27DF09618, &qword_2387639A8);
}

void *sub_238441A98@<X0>(void *a1@<X8>)
{
  v26 = a1;
  v21 = type metadata accessor for ConnectedAccountsView(0);
  MEMORY[0x28223BE20](v21);
  v18 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095E0, &qword_238763988);
  MEMORY[0x28223BE20](v24);
  v25 = &v16 - v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095E8, &qword_238763990);
  MEMORY[0x28223BE20](v19);
  v4 = &v16 - v3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095F0, &qword_238763998);
  MEMORY[0x28223BE20](v23);
  v22 = &v16 - v5;
  v20 = type metadata accessor for BankConnectAccountPickerView(0);
  MEMORY[0x28223BE20](v20);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  v8 = v28;
  if (v29 == 1)
  {
    v17 = v28;
    v12 = v27;

    v13 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType);

    LOBYTE(v27) = v13;
    v14 = v18;
    sub_238442D70(v12, &v27, v18);
    sub_238448588(v14, v4, type metadata accessor for ConnectedAccountsView);
    swift_storeEnumTagMultiPayload();
    sub_238448540(&qword_27DF09600, type metadata accessor for BankConnectAccountPickerView, &unk_238765BE8);
    sub_238448540(&qword_27DF09608, type metadata accessor for ConnectedAccountsView, &unk_2387636E8);
    v15 = v22;
    sub_23875D1B0();
    sub_23843981C(v15, v25, &qword_27DF095F0, &qword_238763998);
    swift_storeEnumTagMultiPayload();
    sub_238448CAC();
    sub_23875D1B0();
    sub_2384488D8(v12, v17, 1);
    sub_238439884(v15, &qword_27DF095F0, &qword_238763998);
    return sub_23844875C(v14, type metadata accessor for ConnectedAccountsView);
  }

  else if (v29)
  {
    sub_2384488D8(v27, v28, v29);
    swift_storeEnumTagMultiPayload();
    sub_238448CAC();
    return sub_23875D1B0();
  }

  else
  {
    v18 = v27;

    sub_23875C4A0();
    swift_getKeyPath("(F{E");
    v9 = v20;
    sub_23875C7C0();

    *v7 = swift_getKeyPath("xI{E");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v9 + 20)) = v8;
    sub_238448588(v7, v4, type metadata accessor for BankConnectAccountPickerView);
    swift_storeEnumTagMultiPayload();
    sub_238448540(&qword_27DF09600, type metadata accessor for BankConnectAccountPickerView, &unk_238765BE8);
    sub_238448540(&qword_27DF09608, type metadata accessor for ConnectedAccountsView, &unk_2387636E8);
    v10 = v22;
    sub_23875D1B0();
    sub_23843981C(v10, v25, &qword_27DF095F0, &qword_238763998);
    swift_storeEnumTagMultiPayload();
    sub_238448CAC();
    sub_23875D1B0();
    sub_2384488D8(v18, v8, 0);
    sub_238439884(v10, &qword_27DF095F0, &qword_238763998);
    return sub_23844875C(v7, type metadata accessor for BankConnectAccountPickerView);
  }
}

uint64_t sub_238442130@<X0>(void *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23844228C(a1);
  v2 = sub_23875D770();
  sub_23875C3D0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09408, &qword_2387633E0) + 36);
  *v11 = v2;
  *(v11 + 1) = v4;
  *(v11 + 2) = v6;
  *(v11 + 3) = v8;
  *(v11 + 4) = v10;
  v11[40] = 0;
  v12 = sub_23875D7A0();
  sub_23875C3D0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093E8, &qword_2387633D8);
  v22 = a1 + *(result + 36);
  *v22 = v12;
  *(v22 + 1) = v14;
  *(v22 + 2) = v16;
  *(v22 + 3) = v18;
  *(v22 + 4) = v20;
  v22[40] = 0;
  return result;
}

void *sub_23844228C@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09560, &qword_2387638E8);
  MEMORY[0x28223BE20](v3);
  v5 = v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09428, &qword_2387633F0);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  v10 = v16;
  v11 = v17;
  if (v18)
  {
    sub_2384488D8(v16, v17, v18);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF09420, &qword_27DF09428, &qword_2387633F0, MEMORY[0x277CE0370]);
    return sub_23875D1B0();
  }

  else
  {
    v14[0] = v14;
    MEMORY[0x28223BE20](v9);
    v14[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09568, &qword_2387638F0);
    v14[1] = a1;
    sub_23843A3E8(&qword_27DF09570, &qword_27DF09568, &qword_2387638F0, MEMORY[0x277CE1198]);
    sub_23875D1D0();
    v13 = v15;
    (*(v15 + 16))(v5, v8, v6);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF09420, &qword_27DF09428, &qword_2387633F0, MEMORY[0x277CE0370]);
    sub_23875D1B0();
    sub_2384488D8(v10, v11, 0);
    return (*(v13 + 8))(v8, v6);
  }
}

uint64_t sub_238442648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_23875ED50();
  v3[3] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_2384426E0, v5, v4);
}

uint64_t sub_2384426E0()
{
  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  *(v0 + 48) = sub_23875C490();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2384427F0;

  return sub_23843BC84();
}

uint64_t sub_2384427F0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_238449A88, v3, v2);
}

uint64_t sub_238442934(uint64_t a1)
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  v5 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType);

  v6 = MEMORY[0x277D38550];
  if (!v5)
  {
    v6 = MEMORY[0x277D38560];
  }

  v7 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v9 = sub_23867B330(v4);
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v12 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v7, 17, v12);
}

uint64_t sub_238442BC4()
{
  swift_getKeyPath("(F{E");
  swift_getKeyPath("\bF{E");
  sub_23875C2D0();
}

uint64_t sub_238442C40(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_23843981C(a1, &v10 - v7, &qword_27DF0D390, &unk_238763350);
  swift_getKeyPath("(F{E");
  swift_getKeyPath("\bF{E");
  sub_23843981C(v8, v5, &qword_27DF0D390, &unk_238763350);

  sub_23875C2E0();
  return sub_238439884(v8, &qword_27DF0D390, &unk_238763350);
}

void sub_238442D70(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09610, &qword_2387639A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094B0, &qword_2387675F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v37[-v11];
  v53 = sub_238758680();
  v12 = *(v53 - 8);
  v13 = MEMORY[0x28223BE20](v53);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a2;
  *a3 = swift_getKeyPath(" G{E", v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v41 = type metadata accessor for ConnectedAccountsView(0);
  v17 = *(v41 + 20);
  *(a3 + v17) = swift_getKeyPath("xI{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v18 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v19 = v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v52 = v18;
    v38 = v16;
    v50 = v9;
    v40 = a3;
    v21 = sub_23875ED50();
    v23 = *(v12 + 16);
    v22 = v12 + 16;
    v47 = v23;
    v48 = v21;
    v24 = *(v22 + 64);
    v39 = a1;
    v25 = a1 + ((v24 + 32) & ~v24);
    v44 = (v22 + 16);
    v46 = (v10 + 56);
    v42 = (v22 - 8);
    v26 = v22;
    v27 = MEMORY[0x277D84F90];
    v49 = v26;
    v45 = *(v26 + 56);
    v43 = v10;
    v23(v15, v25, v53);
    while (1)
    {
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238758570();
      if (v28)
      {
        v29 = sub_23875EA50();
      }

      else
      {
        v29 = 0;
      }

      v30 = [v52 passWithFPANIdentifier_];

      if (v30)
      {
        v31 = v50;
        v32 = *(v50 + 48);
        (*v44)(v8, v15, v53);
        v33 = 0;
        *&v8[v32] = v30;
      }

      else
      {
        (*v42)(v15, v53);
        v33 = 1;
        v31 = v50;
      }

      (*v46)(v8, v33, 1, v31);

      if ((*(v10 + 48))(v8, 1, v31) == 1)
      {
        sub_238439884(v8, &qword_27DF09610, &qword_2387639A0);
      }

      else
      {
        sub_2384396E4(v8, v51, &qword_27DF094B0, &qword_2387675F0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_238497F9C(0, v27[2] + 1, 1, v27);
        }

        v35 = v27[2];
        v34 = v27[3];
        if (v35 >= v34 >> 1)
        {
          v27 = sub_238497F9C((v34 > 1), v35 + 1, 1, v27);
        }

        v27[2] = v35 + 1;
        sub_2384396E4(v51, v27 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35, &qword_27DF094B0, &qword_2387675F0);
      }

      v25 += v45;
      if (!--v20)
      {
        break;
      }

      v47(v15, v25, v53);
    }

    a3 = v40;
    LOBYTE(v16) = v38;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v36 = v41;
  *(a3 + *(v41 + 24)) = v27;
  *(a3 + *(v36 + 28)) = v16;
}

uint64_t sub_2384432A0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09648, &qword_2387639C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  sub_23875ED50();
  v20[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_2384434C4();
  v22 = v8;
  sub_2384397A8(v21, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_23844387C();
  sub_23843981C(v7, v4, &qword_27DF09648, &qword_2387639C8);
  *a1 = v10;
  *(a1 + 8) = v12;
  v14 &= 1u;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09650, &unk_2387639D0);
  sub_23843981C(v4, a1 + *(v17 + 48), &qword_27DF09648, &qword_2387639C8);
  v18 = a1 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_23843980C(v10, v12, v14);

  sub_238439884(v7, &qword_27DF09648, &qword_2387639C8);
  sub_238439884(v4, &qword_27DF09648, &qword_2387639C8);
  sub_2384397FC(v10, v12, v14);
}

uint64_t sub_2384434C4()
{
  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  if (v19 == 1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v6 = qword_2814F1B90;
    v7 = sub_23875EA50();
    v8 = sub_23875EA50();
    v9 = sub_23875EA50();
    v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

    v5 = sub_23875EA80();
    sub_2384488D8(v17, v18, 1);
  }

  else if (v19)
  {
    sub_2384488D8(v17, v18, v19);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v11 = qword_2814F1B90;
    v12 = sub_23875EA50();
    v13 = sub_23875EA50();
    v14 = sub_23875EA50();
    v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

    v5 = sub_23875EA80();
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v0 = qword_2814F1B90;
    v1 = sub_23875EA50();
    v2 = sub_23875EA50();
    v3 = sub_23875EA50();
    v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

    v5 = sub_23875EA80();
    sub_2384488D8(v17, v18, 0);
  }

  return v5;
}

void sub_23844387C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12EA0, &qword_238775F70);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09658, &qword_2387639E0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  v8 = v20;
  if (v21 == 1)
  {
    v11 = sub_23875E0D0();
    v12 = sub_23875DFC0();
    KeyPath = swift_getKeyPath(byte_238763A00);
    v16 = v11;
    v17 = KeyPath;
    v18 = v12;
    v19 = 1;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09678, &unk_2387639F0);
    sub_238448F8C();
    sub_23875D1B0();
    v14 = v21;
    v15 = v22;
    *v7 = v20;
    *(v7 + 2) = v14;
    v7[24] = v15;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09660, &qword_2387639E8);
    sub_238448F00();
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70, MEMORY[0x277CDD7F8]);
    sub_23875D1B0();
    sub_2384488D8(v8, *(&v8 + 1), 1);
  }

  else if (v21)
  {
    sub_2384488D8(v20, *(&v20 + 1), v21);
    sub_23875C530();
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09660, &qword_2387639E8);
    sub_238448F00();
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70, MEMORY[0x277CDD7F8]);
    sub_23875D1B0();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v19 = 0;
    v18 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09678, &unk_2387639F0);
    sub_238448F8C();
    sub_23875D1B0();
    v9 = v21;
    v10 = v22;
    *v7 = v20;
    *(v7 + 2) = v9;
    v7[24] = v10;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09660, &qword_2387639E8);
    sub_238448F00();
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70, MEMORY[0x277CDD7F8]);
    sub_23875D1B0();
    sub_2384488D8(v8, *(&v8 + 1), 0);
  }
}

uint64_t sub_238443DA0()
{
  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  v0 = v27;
  v1 = v29;
  if (v31)
  {
    if (v31 == 3 && v27 == 1 && !v29)
    {
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v2 = qword_2814F1B90;
      v3 = sub_23875EA50();
      v4 = sub_23875EA50();
      v5 = sub_23875EA50();
      v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

      v7 = sub_23875EA80();
      return v7;
    }

    else
    {
      sub_2384488D8(v27, v29, v31);
      return 0;
    }
  }

  else
  {
    v9 = [v27 localizedDescription];
    v10 = sub_23875EA80();
    v12 = v11;

    v28 = v10;
    v30 = v12;
    v13 = [v0 primaryAccountNumberSuffix];
    if (!v13)
    {
      sub_23875EA80();
      v13 = sub_23875EA50();
    }

    v14 = PKMaskedPaymentPAN();

    if (v14)
    {
      v15 = sub_23875EA80();
      v17 = v16;

      MEMORY[0x23EE63650](v15, v17);

      MEMORY[0x23EE63650](32, 0xE100000000000000);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2387632F0;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_238448C58(v18, v19, v20);
    *(v18 + 32) = v28;
    *(v18 + 40) = v30;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v21 = qword_2814F1B90;
    v22 = sub_23875EA50();
    v23 = sub_23875EA50();
    v24 = sub_23875EA50();
    v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

    sub_23875EA80();
    v26 = sub_23875EAA0();

    sub_2384488D8(v0, v1, 0);

    return v26;
  }
}

uint64_t sub_2384441E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09578, &qword_2387638F8);
  sub_2384442BC(a1, a2 + *(v4 + 44));
}

uint64_t sub_2384442BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for BankConnectAccountConnectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v38 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = (&v38 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v38 - v15);
  sub_23875ED50();
  v40 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_238444774();
  v19 = v18;
  sub_23875CFC0();
  sub_238448588(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectAccountConnectionView);
  v39 = a1;
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_2384485F0(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for BankConnectAccountConnectionView);
  *v16 = v17;
  v16[1] = v19;
  *(v16 + *(v7 + 40)) = 0;
  v22 = (v16 + *(v7 + 44));
  *v22 = sub_238448BB4;
  v22[1] = v21;
  v38 = v5;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v23 = qword_2814F1B90;
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = sub_23875EA50();
  v27 = [v23 localizedStringForKey:v24 value:v25 table:{v26, v38}];

  v28 = sub_23875EA80();
  v30 = v29;

  sub_23875CFC0();
  sub_238448588(v39, v6, type metadata accessor for BankConnectAccountConnectionView);
  v31 = swift_allocObject();
  sub_2384485F0(v6, v31 + v20, type metadata accessor for BankConnectAccountConnectionView);
  *v13 = v28;
  v13[1] = v30;
  *(v13 + *(v7 + 40)) = 0;
  v32 = (v13 + *(v7 + 44));
  *v32 = sub_238448C40;
  v32[1] = v31;
  v33 = v41;
  sub_23843981C(v16, v41, &qword_27DF09580, &qword_238763900);
  v34 = v42;
  sub_23843981C(v13, v42, &qword_27DF09580, &qword_238763900);
  v35 = v43;
  sub_23843981C(v33, v43, &qword_27DF09580, &qword_238763900);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09588, &qword_238763908);
  sub_23843981C(v34, v35 + *(v36 + 48), &qword_27DF09580, &qword_238763900);
  sub_238439884(v13, &qword_27DF09580, &qword_238763900);
  sub_238439884(v16, &qword_27DF09580, &qword_238763900);
  sub_238439884(v34, &qword_27DF09580, &qword_238763900);
  sub_238439884(v33, &qword_27DF09580, &qword_238763900);
}

uint64_t sub_238444774()
{
  v0 = sub_238757B60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2387632F0;
  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  v5 = sub_23875C490();
  (*(v1 + 16))(v3, v5 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution, v0);

  v6 = sub_238757B50();
  v8 = v7;
  v9 = (*(v1 + 8))(v3, v0);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_238448C58(v9, v10, v11);
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

  sub_23875EA80();
  v17 = sub_23875EAA0();

  return v17;
}

uint64_t sub_238444A3C(uint64_t a1)
{
  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  sub_23843F46C();
}

uint64_t sub_238444AF0(uint64_t a1)
{
  type metadata accessor for BankConnectAccountConnectionView(0);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  v4[0] = 1;
  sub_23843F8DC(v4);

  v1 = sub_23875C490();
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  if (v5)
  {
    sub_2384488D8(v4[0], v4[1], v5);
  }

  else
  {

    v2 = *(v1 + 32);
    v4[0] = 1;
    v2(v4);
  }
}

uint64_t sub_238444C60(uint64_t a1)
{
  v2 = type metadata accessor for ConnectedAccountsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10[1] = *(a1 + *(v2 + 24));
  swift_getKeyPath(byte_238763790);
  sub_238448588(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConnectedAccountsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2384485F0(v5, v7 + v6, type metadata accessor for ConnectedAccountsView);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_238448658;
  *(v8 + 24) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094F8, &qword_2387637C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094D8, &qword_238763748);
  sub_23843A3E8(&qword_27DF09500, &qword_27DF094F8, &qword_2387637C8, MEMORY[0x277D83980]);
  sub_238448540(&qword_27DF09508, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
  sub_23843A3E8(&qword_27DF094D0, &qword_27DF094D8, &qword_238763748, MEMORY[0x277CE14C0]);
  sub_23875E370();
}

uint64_t sub_238444F44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v116 = a3;
  v102 = a2;
  v105 = a1;
  v113 = a4;
  v4 = sub_23875C880();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v92 = &v84 - v7;
  v95 = sub_23875E360();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09510, &qword_2387637D0);
  v111 = *(v9 - 8);
  v112 = v9;
  MEMORY[0x28223BE20](v9);
  v90 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v84 - v12;
  v13 = sub_238758680();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v84 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09518, &qword_2387637D8);
  MEMORY[0x28223BE20](v103);
  v106 = &v84 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094B0, &qword_2387675F0);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v18 - 8);
  v85 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = &v84 - v21;
  MEMORY[0x28223BE20](v22);
  v115 = &v84 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09528, &qword_238765CE0);
  MEMORY[0x28223BE20](v24 - 8);
  v110 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v109 = &v84 - v27;
  v28 = sub_23875BCB0();
  v100 = *(v28 - 8);
  v101 = v28;
  MEMORY[0x28223BE20](v28);
  v99 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ConnectedAccountView(0);
  MEMORY[0x28223BE20](v30);
  v108 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v84 - v33;
  sub_23875ED50();
  v107 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = type metadata accessor for ConnectedAccountsView(0);
  v36 = *(v116 + *(v35 + 28));
  v37 = *(v14 + 16);
  v38 = v105;
  v37(v34, v105, v13);
  v39 = v102;
  *&v34[v30[5]] = v102;
  v34[v30[6]] = v36;
  *&v34[v30[7]] = xmmword_238763330;
  v40 = &v34[v30[8]];
  *v40 = sub_238445F18;
  *(v40 + 1) = 0;
  v40[16] = 0;
  v41 = v30[9];
  *&v34[v41] = swift_getKeyPath("xI{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v98 = v30[10];
  type metadata accessor for AnalyticsSession();
  v42 = swift_allocObject();
  v43 = v39;
  v44 = v99;
  sub_23875BCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v45 = swift_allocObject();
  *(v45 + ((*(*v45 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v100 + 32))(v45 + *(*v45 + *MEMORY[0x277D841D0] + 16), v44, v101);
  *(v42 + 16) = v45;
  *&v34[v98] = v42;
  v46 = v115;
  v37(v115, v38, v13);
  v47 = *(v14 + 56);
  v48 = 1;
  v47(v46, 0, 1, v13);
  v104 = v34;
  v105 = v35;
  v49 = *(v116 + *(v35 + 24));
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v87;
    sub_23843981C(v49 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * (v50 - 1), v87, &qword_27DF094B0, &qword_2387675F0);

    v52 = v114;
    (*(v14 + 32))(v114, v51, v13);
    v48 = 0;
    v53 = v106;
  }

  else
  {
    v53 = v106;
    v52 = v114;
  }

  v47(v52, v48, 1, v13);
  v54 = *(v103 + 48);
  sub_23843981C(v46, v53, &qword_27DF09520, &unk_2387637E0);
  sub_23843981C(v52, v53 + v54, &qword_27DF09520, &unk_2387637E0);
  v55 = *(v14 + 48);
  if (v55(v53, 1, v13) == 1)
  {
    sub_238439884(v52, &qword_27DF09520, &unk_2387637E0);
    sub_238439884(v46, &qword_27DF09520, &unk_2387637E0);
    v56 = v55(v53 + v54, 1, v13);
    v57 = v104;
    if (v56 == 1)
    {
      sub_238439884(v53, &qword_27DF09520, &unk_2387637E0);
LABEL_17:
      v74 = 1;
      v69 = v112;
      v73 = v109;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v58 = v85;
  sub_23843981C(v53, v85, &qword_27DF09520, &unk_2387637E0);
  if (v55(v53 + v54, 1, v13) == 1)
  {
    sub_238439884(v114, &qword_27DF09520, &unk_2387637E0);
    sub_238439884(v115, &qword_27DF09520, &unk_2387637E0);
    (*(v14 + 8))(v58, v13);
    v57 = v104;
LABEL_11:
    sub_238439884(v53, &qword_27DF09518, &qword_2387637D8);
    goto LABEL_12;
  }

  v75 = v53 + v54;
  v76 = v84;
  (*(v14 + 32))(v84, v75, v13);
  sub_238448540(&qword_27DF09538, MEMORY[0x277CC6F70], MEMORY[0x277CC6F80]);
  v77 = sub_23875E9E0();
  v78 = *(v14 + 8);
  v78(v76, v13);
  sub_238439884(v114, &qword_27DF09520, &unk_2387637E0);
  sub_238439884(v115, &qword_27DF09520, &unk_2387637E0);
  v78(v58, v13);
  sub_238439884(v53, &qword_27DF09520, &unk_2387637E0);
  v57 = v104;
  if (v77)
  {
    goto LABEL_17;
  }

LABEL_12:
  v59 = v91;
  sub_23875E350();
  v60 = v92;
  sub_2384D5138(v92);
  v62 = v96;
  v61 = v97;
  v63 = v93;
  (*(v96 + 104))(v93, *MEMORY[0x277CDF9D8], v97);
  v64 = sub_23875C870();
  v65 = *(v62 + 8);
  v65(v63, v61);
  v65(v60, v61);
  if (v64)
  {
    v66 = 0x4028000000000000;
  }

  else
  {
    v66 = 0x4030000000000000;
  }

  v67 = sub_23875D780();
  v68 = v90;
  (*(v94 + 32))(v90, v59, v95);
  v69 = v112;
  v70 = &v68[*(v112 + 36)];
  *v70 = v67;
  *(v70 + 1) = 0;
  *(v70 + 2) = v66;
  *(v70 + 3) = 0;
  *(v70 + 4) = 0;
  v70[40] = 0;
  v71 = v68;
  v72 = v89;
  sub_2384396E4(v71, v89, &qword_27DF09510, &qword_2387637D0);
  v73 = v109;
  sub_2384396E4(v72, v109, &qword_27DF09510, &qword_2387637D0);
  v74 = 0;
LABEL_18:
  (*(v111 + 56))(v73, v74, 1, v69);
  v79 = v108;
  sub_238448588(v57, v108, type metadata accessor for ConnectedAccountView);
  v80 = v110;
  sub_23843981C(v73, v110, &qword_27DF09528, &qword_238765CE0);
  v81 = v113;
  sub_238448588(v79, v113, type metadata accessor for ConnectedAccountView);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09530, &qword_2387637F8);
  sub_23843981C(v80, v81 + *(v82 + 48), &qword_27DF09528, &qword_238765CE0);
  sub_238439884(v73, &qword_27DF09528, &qword_238765CE0);
  sub_23844875C(v57, type metadata accessor for ConnectedAccountView);
  sub_238439884(v80, &qword_27DF09528, &qword_238765CE0);
  sub_23844875C(v79, type metadata accessor for ConnectedAccountView);
}

uint64_t sub_238445CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContinuousGroupBoxStyle(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094B8, &qword_238763738);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094C0, &qword_238763740);
  sub_23844848C();
  sub_23875E470();
  *v5 = swift_getKeyPath(" G{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v3 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF094E0, &qword_27DF094B8, &qword_238763738, MEMORY[0x277CDF118]);
  sub_238448540(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle, &protocol conformance descriptor for ContinuousGroupBoxStyle);
  sub_23875DC00();
  sub_23844875C(v5, type metadata accessor for ContinuousGroupBoxStyle);
  (*(v7 + 8))(v9, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094F0, &qword_238763788);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_238445F18()
{
  type metadata accessor for PassLoader(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875C290();
  *(v0 + OBJC_IVAR____TtC12FinanceKitUI10PassLoader_cachedPass) = 0;
  v1 = v0 + OBJC_IVAR____TtC12FinanceKitUI10PassLoader_cachedSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  return v0;
}

uint64_t sub_238445FAC@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096C8, &qword_238763A98);
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v54 - v3;
  v67 = sub_23875CE60();
  v82 = 0;
  sub_238446978(&v73);
  v91 = v78;
  v92 = v79;
  v93[0] = v80[0];
  *(v93 + 9) = *(v80 + 9);
  v88 = v75;
  v89 = v76;
  v90 = v77;
  v86 = v73;
  v87 = v74;
  v94[5] = v78;
  v94[6] = v79;
  v95[0] = v80[0];
  *(v95 + 9) = *(v80 + 9);
  v94[2] = v75;
  v94[3] = v76;
  v94[4] = v77;
  v94[0] = v73;
  v94[1] = v74;
  sub_23843981C(&v86, v72, &qword_27DF096D0, &qword_238763AA0);
  sub_238439884(v94, &qword_27DF096D0, &qword_238763AA0);
  *(&v81[5] + 7) = v91;
  *(&v81[6] + 7) = v92;
  *(&v81[7] + 7) = v93[0];
  v81[8] = *(v93 + 9);
  *(&v81[1] + 7) = v87;
  *(&v81[2] + 7) = v88;
  *(&v81[3] + 7) = v89;
  *(&v81[4] + 7) = v90;
  *(v81 + 7) = v86;
  v66 = v82;
  v5 = sub_23875C880();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConnectedAccountView(0);
  v10 = sub_2384D5138(v8);
  v11 = MEMORY[0x28223BE20](v10);
  (*(v6 + 104))(v8, *MEMORY[0x277CDF9D8], v5, v11);
  LOBYTE(v7) = sub_23875C870();
  v12 = *(v6 + 8);
  v12(v8, v5);
  v12(v8, v5);
  v13 = 0x4028000000000000;
  if ((v7 & 1) == 0)
  {
    v13 = 0x4030000000000000;
  }

  v63 = v13;
  v14 = sub_23875D780();
  v60 = v14;
  v64 = v54;
  v83 = 0;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v68 = v1;
  sub_238448588(v1, v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConnectedAccountView);
  sub_23875ED50();
  v17 = sub_23875ED40();
  v18 = *(v15 + 80);
  v61 = ~v18;
  v62 = v18;
  v19 = (v18 + 32) & ~v18;
  v65 = v16;
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  sub_2384485F0(v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ConnectedAccountView);
  v22 = sub_23875ED80();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v54 - v25;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v27 = sub_23875C830();
    v59 = v54;
    v56 = *(v27 - 8);
    v57 = v27;
    MEMORY[0x28223BE20](v27);
    v55 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v73 = 0;
    *(&v73 + 1) = 0xE000000000000000;
    sub_23875F470();

    *&v73 = 0xD000000000000040;
    *(&v73 + 1) = 0x80000002387857B0;
    v72[0] = 521;
    v29 = sub_23875F600();
    v58 = v54;
    MEMORY[0x23EE63650](v29);

    v54[1] = v54;
    v31 = MEMORY[0x28223BE20](v30);
    (*(v23 + 16))(v54 - v25, v54 - v25, v22, v31);
    v32 = v55;
    sub_23875C820();
    (*(v23 + 8))(v26, v22);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DE8, &unk_238761C70);
    v34 = (*(v56 + 32))(&v4[*(v33 + 36)], v32, v57);
    v35 = v81[4];
    *(v4 + 97) = v81[5];
    v36 = v81[7];
    *(v4 + 113) = v81[6];
    *(v4 + 129) = v36;
    *(v4 + 145) = v81[8];
    v37 = v81[0];
    *(v4 + 33) = v81[1];
    v38 = v81[3];
    *(v4 + 49) = v81[2];
    *(v4 + 65) = v38;
    *(v4 + 81) = v35;
    *v4 = v67;
    *(v4 + 1) = 0x4030000000000000;
    v4[16] = v66;
    *(v4 + 17) = v37;
  }

  else
  {
    v40 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DF8, &unk_238761C80) + 36)];
    v41 = sub_23875C6E0();
    v34 = (*(v23 + 32))(&v40[*(v41 + 20)], v54 - v25, v22);
    *v40 = &unk_238763AB0;
    *(v40 + 1) = v20;
    v42 = v81[1];
    *(v4 + 17) = v81[0];
    v43 = v81[5];
    *(v4 + 81) = v81[4];
    v44 = v81[2];
    *(v4 + 65) = v81[3];
    *(v4 + 49) = v44;
    *(v4 + 33) = v42;
    *(v4 + 145) = v81[8];
    v45 = v81[6];
    *(v4 + 129) = v81[7];
    *(v4 + 113) = v45;
    *v4 = v67;
    *(v4 + 1) = 0x4030000000000000;
    v4[16] = v66;
    *(v4 + 97) = v43;
  }

  *(v4 + 161) = *v85;
  *(v4 + 41) = *&v85[3];
  v4[168] = v60;
  *(v4 + 169) = *v84;
  *(v4 + 43) = *&v84[3];
  v39 = v63;
  *(v4 + 22) = 0x4028000000000000;
  *(v4 + 23) = v39;
  *(v4 + 24) = 0x4028000000000000;
  *(v4 + 25) = v39;
  v4[208] = 0;
  v46 = v65;
  MEMORY[0x28223BE20](v34);
  v47 = v54 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238448588(v68, v47, type metadata accessor for ConnectedAccountView);
  v48 = (v62 + 16) & v61;
  v49 = swift_allocObject();
  sub_2384485F0(v47, v49 + v48, type metadata accessor for ConnectedAccountView);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_238449598;
  *(v50 + 24) = v49;
  v51 = v71;
  (*(v69 + 32))(v71, v4, v70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096D8, &unk_238763AC0);
  v53 = (v51 + *(result + 36));
  *v53 = sub_2384495F4;
  v53[1] = v50;
  v53[2] = 0;
  v53[3] = 0;
  return result;
}

uint64_t sub_238446978@<X0>(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_23875D030();
  sub_238446B60(&v23);
  v4 = v23;
  v5 = v24;
  v6 = *(&v24 + 1);
  sub_238446DC0(&v16);
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v21[2] = v18;
  v21[3] = v19;
  v23 = v16;
  v24 = v17;
  v15 = 0;
  v14 = v5;
  v13 = 1;
  v22 = v20;
  v21[0] = v16;
  v21[1] = v17;
  *&v12[7] = v16;
  v12[71] = v20;
  *&v12[55] = v19;
  *&v12[39] = v18;
  *&v12[23] = v17;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  v7 = *&v12[16];
  *(a2 + 65) = *v12;
  v8 = *&v12[32];
  v9 = *&v12[48];
  *(a2 + 129) = *&v12[64];
  *(a2 + 113) = v9;
  *(a2 + 97) = v8;
  *(a2 + 81) = v7;
  sub_23843980C(v4, *(&v4 + 1), v5);

  sub_23843981C(v21, &v11, &qword_27DF096E0, &qword_238763AD0);
  sub_238439884(&v23, &qword_27DF096E0, &qword_238763AD0);
  sub_2384397FC(v4, *(&v4 + 1), v5);
}

uint64_t sub_238446B60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_238757FC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875CEF0();
  MEMORY[0x28223BE20](v6 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875CED0();
  sub_23875CEC0();
  sub_2387585B0();
  sub_23875CEB0();

  sub_23875CEC0();
  sub_2387585C0();
  sub_238757FB0();
  (*(v3 + 8))(v5, v2);
  sub_23875CEB0();

  sub_23875CEC0();
  sub_23875CF10();
  v7 = sub_23875DA90();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

__n128 sub_238446DC0@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConnectedAccountView(0);
  type metadata accessor for PassLoader(0);
  sub_238448540(&qword_27DF096B8, type metadata accessor for PassLoader, &unk_23876D0D0);
  sub_23875C490();
  swift_getKeyPath("XD{E");
  swift_getKeyPath("8D{E");
  sub_23875C2D0();

  if (v9)
  {
    v2 = v9;
    sub_23875E0C0();
    sub_23875E4A0();
    sub_23875C5C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096E8, &unk_238763B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096F0, &unk_238775090);
    sub_2384495FC();
    sub_238449760();
    sub_23875D1B0();

    v11 = v6;
    v12 = v7;
    v13 = v8;
    v9 = v4;
    v10 = v5;
  }

  else
  {
    sub_23875E020();
    swift_getKeyPath(byte_238763A00);
    sub_23875E4A0();
    sub_23875C5C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096E8, &unk_238763B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096F0, &unk_238775090);
    sub_2384495FC();
    sub_238449760();
    sub_23875D1B0();
  }

  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_2384470A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_23875ED50();
  v3[3] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_238447140, v5, v4);
}

uint64_t sub_238447140()
{
  v1 = v0[2];
  v2 = type metadata accessor for ConnectedAccountView(0);
  type metadata accessor for PassLoader(0);
  sub_238448540(&qword_27DF096B8, type metadata accessor for PassLoader, &unk_23876D0D0);
  v0[6] = sub_23875C490();
  v3 = *(v1 + *(v2 + 20));
  v4 = (v1 + *(v2 + 28));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23844728C;

  return sub_238517CC4(v3, 1911, v5, v6);
}

uint64_t sub_23844728C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2384473D0, v3, v2);
}

uint64_t sub_2384473D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_238447430()
{
  v1 = sub_23875C1E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConnectedAccountView(0);
  if (*(v0 + *(v5 + 24)))
  {
    v6 = MEMORY[0x277D38550];
  }

  else
  {
    v6 = MEMORY[0x277D38560];
  }

  v22 = *v6;
  v7 = objc_opt_self();
  v8 = [v7 reporterForSubject_];
  if (v8)
  {

    sub_23875C120();
    v9 = v22;
    v10 = sub_23875C1B0();
    v11 = sub_23875EFE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      v14 = sub_23875EA80();
      v16 = sub_2384615AC(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2383F8000, v10, v11, "Analytics session for %s has already been started", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x23EE64DF0](v13, -1, -1);
      MEMORY[0x23EE64DF0](v12, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    [v7 beginSubjectReporting_];
    v17 = *(*(v0 + *(v5 + 40)) + 16);
    v18 = *(*v17 + *MEMORY[0x277D841D0] + 16);
    v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v17 + v19));
    v20 = sub_23875BCB0();
    (*(*(v20 - 8) + 8))(v17 + v18, v20);
    sub_23875BCA0();
    os_unfair_lock_unlock((v17 + v19));
    v21 = v22;
  }
}

uint64_t sub_238447768(uint64_t a1)
{
  v2 = sub_23875C880();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23875CAD0();
}

unint64_t sub_238447860()
{
  result = qword_27DF093D0;
  if (!qword_27DF093D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF093C8, &qword_2387633C8);
    sub_23843A3E8(&qword_27DF093D8, &qword_27DF093E0, &qword_2387633D0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF093D0);
  }

  return result;
}

uint64_t sub_238447950(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2384479D4()
{
  result = qword_27DF09410;
  if (!qword_27DF09410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09418, &qword_2387633E8);
    sub_23843A3E8(&qword_27DF09420, &qword_27DF09428, &qword_2387633F0, MEMORY[0x277CE0370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09410);
  }

  return result;
}

uint64_t sub_238447A8C()
{
  v2 = *(type metadata accessor for BankConnectAccountConnectionView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238449A7C;

  return sub_238442648(v4, v5, v0 + v3);
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI38BankConnectAccountConnectionViewResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_238447BCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238447C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_238447C80(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_238447CD8(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_238447E90();
    if (v2 <= 0x3F)
    {
      sub_238448320(319, &qword_27DF09460, &qword_27DF0D390, &unk_238763350, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_238447E90()
{
  if (!qword_27DF09458)
  {
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF09458);
    }
  }
}

void sub_238447F08(uint64_t a1)
{
  sub_2384482CC(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
  if (v1 <= 0x3F)
  {
    sub_238447FA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238447FA8(uint64_t a1)
{
  if (!qword_27DF09480)
  {
    type metadata accessor for BankConnectAccountConnectionViewModel(255);
    sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel, &protocol conformance descriptor for BankConnectAccountConnectionViewModel);
    v1 = sub_23875C4B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF09480);
    }
  }
}

unint64_t sub_23844803C()
{
  result = qword_27DF09490;
  if (!qword_27DF09490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09440, &qword_238763418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08DD0, &qword_238761C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF093B0, &qword_2387633B0);
    sub_23843A3E8(&qword_27DF09438, &qword_27DF093B0, &qword_2387633B0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09490);
  }

  return result;
}

void sub_2384481C4(uint64_t a1)
{
  sub_2384482CC(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_2384482CC(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_238448320(319, &qword_27DF094A8, &qword_27DF094B0, &qword_2387675F0, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384482CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_238448320(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI37BankConnectAccountConnectionViewModelC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
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

uint64_t sub_2384483B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2384483FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_238448440(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_23844848C()
{
  result = qword_27DF094C8;
  if (!qword_27DF094C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF094C0, &qword_238763740);
    sub_23843A3E8(&qword_27DF094D0, &qword_27DF094D8, &qword_238763748, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF094C8);
  }

  return result;
}

uint64_t sub_238448540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238448588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384485F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238448658@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ConnectedAccountsView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_238444F44(a1, a2, v8, a3);
}

uint64_t sub_2384486E0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094B0, &qword_2387675F0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_23844875C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2384487BC@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath("@F{E");
  sub_23875C2D0();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_238448844(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_getKeyPath("@F{E");

  sub_2384489F0(v2, v3, v4);
  return sub_23875C2E0();
}

void sub_2384488D8(void *a1, void *a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return;
      }
    }
  }
}

uint64_t sub_23844893C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238449A7C;

  return sub_23843F6F4();
}

id sub_2384489F0(id result, void *a2, char a3)
{
  if (a3 == 2)
  {

    return result;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return result;
      }

      v4 = result;
    }
  }
}

void sub_238448A54(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for BankConnectAccountConnectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23875C880();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_2383FC164(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238448BCC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BankConnectAccountConnectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_238448C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09590;
  if (!qword_27DF09590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09590);
  }

  return result;
}

unint64_t sub_238448CAC()
{
  result = qword_27DF095F8;
  if (!qword_27DF095F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF095F0, &qword_238763998);
    sub_238448540(&qword_27DF09600, type metadata accessor for BankConnectAccountPickerView, &unk_238765BE8);
    sub_238448540(&qword_27DF09608, type metadata accessor for ConnectedAccountsView, &unk_2387636E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF095F8);
  }

  return result;
}

unint64_t sub_238448D98()
{
  result = qword_27DF09630;
  if (!qword_27DF09630)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09628, &qword_2387639B8);
    sub_238448E24(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09630);
  }

  return result;
}

unint64_t sub_238448E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09638;
  if (!qword_27DF09638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09638);
  }

  return result;
}

uint64_t sub_238448E78(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_23843980C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_238448EBC(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_2384397FC(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_238448F00()
{
  result = qword_27DF09668;
  if (!qword_27DF09668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09660, &qword_2387639E8);
    sub_238448F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09668);
  }

  return result;
}

unint64_t sub_238448F8C()
{
  result = qword_27DF09670;
  if (!qword_27DF09670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09678, &unk_2387639F0);
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09670);
  }

  return result;
}

void sub_23844906C(uint64_t a1)
{
  sub_238758680();
  if (v1 <= 0x3F)
  {
    sub_238449184(319, &qword_27DF096A8, 0x277D38080);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_2384491CC(319);
        if (v4 <= 0x3F)
        {
          sub_2384482CC(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for AnalyticsSession();
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

uint64_t sub_238449184(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_2384491CC(uint64_t a1)
{
  if (!qword_27DF096B0)
  {
    type metadata accessor for PassLoader(255);
    sub_238448540(&qword_27DF096B8, type metadata accessor for PassLoader, &unk_23876D0D0);
    v1 = sub_23875C4B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF096B0);
    }
  }
}

unint64_t sub_238449260()
{
  result = qword_27DF096C0;
  if (!qword_27DF096C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF094F0, &qword_238763788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF094B8, &qword_238763738);
    type metadata accessor for ContinuousGroupBoxStyle(255);
    sub_23843A3E8(&qword_27DF094E0, &qword_27DF094B8, &qword_238763738, MEMORY[0x277CDF118]);
    sub_238448540(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle, &protocol conformance descriptor for ContinuousGroupBoxStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF096C0);
  }

  return result;
}

uint64_t sub_2384493C8()
{
  v2 = *(type metadata accessor for ConnectedAccountView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_2384470A8(v4, v5, v0 + v3);
}

uint64_t sub_2384494A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2384495FC()
{
  result = qword_27DF096F8;
  if (!qword_27DF096F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF096E8, &unk_238763B20);
    v3 = sub_238449688();
    sub_23844970C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF096F8);
  }

  return result;
}

unint64_t sub_238449688()
{
  result = qword_27DF09700;
  if (!qword_27DF09700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09708, &unk_238763B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09700);
  }

  return result;
}

unint64_t sub_23844970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09710;
  if (!qword_27DF09710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09710);
  }

  return result;
}

unint64_t sub_238449760()
{
  result = qword_27DF09718;
  if (!qword_27DF09718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF096F0, &unk_238775090);
    sub_2384497EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09718);
  }

  return result;
}

unint64_t sub_2384497EC()
{
  result = qword_27DF09720;
  if (!qword_27DF09720)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09728, &unk_238766140);
    sub_2384498A4(v1, v2, v3);
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09720);
  }

  return result;
}

unint64_t sub_2384498A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09730;
  if (!qword_27DF09730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09730);
  }

  return result;
}

unint64_t sub_2384498F8()
{
  result = qword_27DF09738;
  if (!qword_27DF09738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF096D8, &unk_238763AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08DF0, &qword_238763B40);
    sub_2384499C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09738);
  }

  return result;
}

unint64_t sub_2384499C0()
{
  result = qword_27DF09740;
  if (!qword_27DF09740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08DF0, &qword_238763B40);
    sub_23843A3E8(&qword_27DF09748, &qword_27DF09750, &qword_238763B48, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09740);
  }

  return result;
}

unint64_t sub_238449A8C(char a1)
{
  result = 0x736144726564726FLL;
  switch(a1)
  {
    case 1:
    case 23:
    case 29:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0x746544726564726FLL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 8:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
    case 27:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6174654473736170;
      break;
    case 13:
    case 17:
    case 18:
    case 19:
      result = 0x6B6E694C6B6E6162;
      break;
    case 14:
      result = 0x50746E65736E6F63;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x7469576572616873;
      break;
    case 20:
      result = 0x5079636176697270;
      break;
    case 21:
      result = 0x53746E756F636361;
      break;
    case 22:
      result = 0x44746E756F636361;
      break;
    case 24:
    case 28:
      result = 0xD000000000000016;
      break;
    case 25:
      result = 0xD000000000000024;
      break;
    case 26:
      result = 0x41746E756F636361;
      break;
    case 30:
    case 31:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AnalyticsSession.__allocating_init()()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  sub_23875BCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v1 + 32))(v5 + *(*v5 + *MEMORY[0x277D841D0] + 16), v3, v0);
  *(v4 + 16) = v5;
  return v4;
}

Swift::Void __swiftcall AnalyticsSession.refreshSessionID()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = sub_23875BCB0();
  (*(*(v4 - 8) + 8))(v1 + v2, v4);
  sub_23875BCA0();

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t AnalyticsSession.init()()
{
  v1 = sub_23875BCB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 32))(v5 + *(*v5 + *MEMORY[0x277D841D0] + 16), v4, v1);
  *(v0 + 16) = v5;
  return v0;
}

uint64_t sub_23844A1DC@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v1 = sub_23875E740();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875EAD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23875E770();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875E760();
  sub_23875BC50();
  sub_23875EAC0();
  v9 = sub_23875EA90();
  v11 = v10;

  v12 = *(v4 + 8);
  v44 = v3;
  result = v12(v6, v3);
  if (v11 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_23844C8EC(v9, v11);
  sub_23844BF58(v9, v11, v8);
  sub_23844C940(v9, v11);
  sub_23844C940(v9, v11);
  sub_23875A6F0();
  sub_23875EAC0();
  v14 = sub_23875EA90();
  v16 = v15;

  result = v12(v6, v44);
  if (v16 >> 60 == 15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_23844C8EC(v14, v16);
  sub_23844BF58(v14, v16, v8);
  sub_23844C940(v14, v16);
  sub_23844C940(v14, v16);
  sub_23875A6D0();
  sub_23875EAC0();
  v17 = sub_23875EA90();
  v19 = v18;

  result = v12(v6, v44);
  if (v19 >> 60 != 15)
  {
    sub_23844C8EC(v17, v19);
    sub_23844BF58(v17, v19, v8);
    sub_23844C940(v17, v19);
    sub_23844C940(v17, v19);
    v20 = v34;
    sub_23875E750();
    v21 = v37;
    v42 = v37;
    v43 = sub_23844D7E8(&qword_27DF09790, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    v23 = v36;
    (*(v36 + 16))(boxed_opaque_existential_1, v20, v21);
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_23875B6A0();
    (*(v23 + 8))(v20, v21);
    v24 = v39;
    v25 = v40;
    v26 = __swift_destroy_boxed_opaque_existential_1(v41);
    v41[0] = v24;
    v41[1] = v25;
    sub_23844C9EC(v26, v27, v28);
    v29 = sub_23875B4F0();
    v31 = v30;
    (*(v33 + 8))(v8, v35);
    result = sub_23844C954(v24, v25);
    v32 = v38;
    *v38 = v29;
    v32[1] = v31;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_23844A6B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v36 = a1;
  v42 = a2;
  v35 = a3;
  v3 = sub_23875E740();
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875EAD0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_23875E770();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875E760();
  sub_23875BC50();
  sub_23875EAC0();
  v11 = sub_23875EA90();
  v13 = v12;

  v14 = *(v6 + 8);
  result = v14(v8, v5);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_23844C8EC(v11, v13);
    sub_23844BF58(v11, v13, v10);
    sub_23844C940(v11, v13);
    sub_23844C940(v11, v13);
    sub_23875EAC0();
    v16 = sub_23875EA90();
    v18 = v17;
    result = v14(v8, v5);
    if (v18 >> 60 != 15)
    {
      sub_23844C8EC(v16, v18);
      sub_23844BF58(v16, v18, v10);
      sub_23844C940(v16, v18);
      sub_23844C940(v16, v18);
      v19 = v32;
      sub_23875E750();
      v40 = v3;
      v41 = sub_23844D7E8(&qword_27DF09790, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      v21 = v34;
      (*(v34 + 16))(boxed_opaque_existential_1, v19, v3);
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_23875B6A0();
      (*(v21 + 8))(v19, v3);
      v22 = v37;
      v23 = v38;
      v24 = __swift_destroy_boxed_opaque_existential_1(v39);
      v39[0] = v22;
      v39[1] = v23;
      sub_23844C9EC(v24, v25, v26);
      v27 = sub_23875B4F0();
      v29 = v28;
      (*(v31 + 8))(v10, v33);
      result = sub_23844C954(v22, v23);
      v30 = v35;
      *v35 = v27;
      v30[1] = v29;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnalyticsSession.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23844AB34@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23875BCB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnalyticsSession();
  v6 = swift_allocObject();
  sub_23875BCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = (*(v3 + 32))(v7 + *(*v7 + *MEMORY[0x277D841D0] + 16), v5, v2);
  *(v6 + 16) = v7;
  *a1 = v6;
  return result;
}

uint64_t EnvironmentValues.analyticsSession.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23844ACFC(a1, a2, a3);
  sub_23875CDC0();
  return v4;
}

unint64_t sub_23844ACFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09758;
  if (!qword_27DF09758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09758);
  }

  return result;
}

uint64_t (*EnvironmentValues.analyticsSession.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = v3;
  a1[3] = sub_23844ACFC(a1, a2, a3);
  sub_23875CDC0();
  return sub_23844ADEC;
}

uint64_t sub_23844ADEC(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_23875CDD0();
  }

  sub_23875CDD0();
}

uint64_t getEnumTagSinglePayload for Analytics(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Analytics(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderDetailsFulfillmentIndex.FulfillmentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OrderDetailsFulfillmentIndex.FulfillmentType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Analytics.PageTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Analytics.PageTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23844B288(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_238449A8C(*a1);
  v5 = v4;
  if (v3 == sub_238449A8C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23875F630();
  }

  return v8 & 1;
}

uint64_t sub_23844B310()
{
  v1 = *v0;
  sub_23875F700();
  sub_238449A8C(v1);
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_23844B374(uint64_t a1)
{
  sub_238449A8C(*v1);
  sub_23875EB30();
}

uint64_t sub_23844B3C8()
{
  v1 = *v0;
  sub_23875F700();
  sub_238449A8C(v1);
  sub_23875EB30();

  return sub_23875F760();
}

unint64_t sub_23844B428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23844CA40(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_23844B458@<X0>(unint64_t *a1@<X8>)
{
  result = sub_238449A8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23844B488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09760;
  if (!qword_27DF09760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09760);
  }

  return result;
}

uint64_t sub_23844B4DC(char a1)
{
  result = 0x6C436574656C6564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6C6954726564726FLL;
      break;
    case 4:
      result = 0x776F4E746F6ELL;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      v3 = 0x6567616E616DLL;
      goto LABEL_41;
    case 7:
      result = 0x53746361746E6F63;
      break;
    case 8:
    case 47:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 23:
      result = 0x746E61686372656DLL;
      break;
    case 11:
      result = 0x65646F63726162;
      break;
    case 12:
      result = 0x6F4C70756B636970;
      break;
    case 13:
      result = 0x676E696B63617274;
      break;
    case 14:
      result = 0x6372654D6C6C6163;
      break;
    case 15:
      result = 0x72654D6C69616D65;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x686372654D4C5255;
      break;
    case 18:
      result = 0x6F4373416B72616DLL;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x746F4E6573756170;
      break;
    case 21:
      result = 0x4E65737561506E75;
      break;
    case 22:
      v3 = 0x6574656C6564;
LABEL_41:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x724F000000000000;
      break;
    case 24:
      result = 0x65756E69746E6F63;
      break;
    case 25:
      result = 0x61426B6E696C6572;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x656C6553776F6873;
      break;
    case 30:
      result = 0x7463656C65736564;
      break;
    case 31:
      result = 1701736292;
      break;
    case 32:
      result = 0x686372616573;
      break;
    case 33:
      result = 0x6574656C6564;
      break;
    case 34:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0x6C65636E6163;
      break;
    case 36:
      result = 1801675106;
      break;
    case 37:
      result = 0x6572616873;
      break;
    case 38:
      result = 0x6B63617274;
      break;
    case 39:
      result = 0x6565726761;
      break;
    case 40:
      result = 0x6565726761736964;
      break;
    case 41:
      result = 0x7463656C6573;
      break;
    case 42:
      result = 0x7463656C65736564;
      break;
    case 43:
      result = 1868983913;
      break;
    case 44:
      result = 0xD00000000000001CLL;
      break;
    case 45:
      result = 0x7055656D75736572;
      break;
    case 46:
      result = 0x6470556573756170;
      break;
    case 49:
      result = 0x74616C506F546F67;
      break;
    case 50:
      result = 0x726143656C707061;
      break;
    case 51:
      result = 0x736143656C707061;
      break;
    case 52:
      result = 0x766153656C707061;
      break;
    case 53:
      result = 0xD000000000000010;
      break;
    case 54:
      result = 0x7A696D6F74737563;
      break;
    case 55:
      result = 0x416E776F6E6B6E75;
      break;
    case 56:
      result = 0x616D456B63696C63;
      break;
    case 57:
      result = 0x6565536C69616D65;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_23844BB0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x63697373616C63;
  }

  else
  {
    v3 = 1818845549;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x63697373616C63;
  }

  else
  {
    v5 = 1818845549;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23875F630();
  }

  return v8 & 1;
}

uint64_t sub_23844BBAC()
{
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_23844BC28(uint64_t a1)
{
  sub_23875EB30();
}

uint64_t sub_23844BC90()
{
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_23844BD08@<X0>(char *a2@<X8>)
{
  v3 = sub_23875F590();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_23844BD68(uint64_t *a1@<X8>)
{
  v2 = 1818845549;
  if (*v1)
  {
    v2 = 0x63697373616C63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_23844BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09768;
  if (!qword_27DF09768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09768);
  }

  return result;
}

uint64_t sub_23844BDF8(uint64_t a1, void (*a2)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
  sub_23875C6B0();
}

_BYTE *sub_23844BEC4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_23844D630(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_23844D6E8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_23844D764(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_23844BF58(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_23875E770();
      sub_23844D7E8(&qword_27DF097A0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_23875E730();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_23844C138(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_23844C138(v5, v6);
  }

  sub_23875E770();
  sub_23844D7E8(&qword_27DF097A0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_23875E730();
}

uint64_t sub_23844C138(uint64_t a1, uint64_t a2)
{
  result = sub_23875B550();
  if (!result || (result = sub_23875B570(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_23875B560();
      sub_23875E770();
      sub_23844D7E8(&qword_27DF097A0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_23875E730();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23844C224(uint64_t a1)
{
  v2 = sub_23875BE00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09778, &qword_238763D70);
    v9 = sub_23875F450();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_23844D7E8(&qword_27DF09780, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_23875E950();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_23844D7E8(&qword_27DF09788, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_23875E9E0();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23844C544(uint64_t a1)
{
  v20[1] = a1;
  v21 = sub_23875BC40();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = sub_23875B650();
  v4 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BE20();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BDB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09770, &qword_2387776B0);
  v10 = sub_23875BE00();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2387632F0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277CC9968], v10);
  sub_23844C224(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  sub_23875BBF0();
  sub_23875BD80();

  (*(v1 + 8))(v3, v21);
  v14 = sub_23875B5A0();
  LOBYTE(v1) = v15;
  (*(v4 + 8))(v6, v20[0]);
  if (v1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v16 < 10001)
  {
    v25 = v16;
    v18 = sub_23875F600();
  }

  else
  {
    v24 = 10000;
    v25 = sub_23875F600();
    v26 = v17;
    MEMORY[0x23EE63650](43, 0xE100000000000000);
    v18 = v25;
  }

  (*(v22 + 8))(v9, v23);
  return v18;
}

uint64_t sub_23844C8EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23844C940(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23844C954(result, a2);
  }

  return result;
}

uint64_t sub_23844C954(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23844C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF09798;
  if (!qword_27DF09798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09798);
  }

  return result;
}

unint64_t sub_23844CA40(uint64_t a1, uint64_t a2)
{
  v2 = sub_23875F640();

  if (v2 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v2;
  }
}

void sub_23844CAA0(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = sub_23875EA80();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763B60;
  v11 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v12 = *MEMORY[0x277D384B8];
  *(inited + 56) = *MEMORY[0x277D384B8];
  *(inited + 64) = sub_238449A8C(a2);
  *(inited + 72) = v13;
  v14 = v11;
  v15 = v12;
  v16 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v16;
  sub_2385C3214(a3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v20);

  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23844D7E8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v19 = sub_23875E910();

  [v18 subject:a1 sendEvent:v19];
}

uint64_t sub_23844CC84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x8000000238785D30 == a2;
  if (v4 || (sub_23875F630() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000238785D50 == a2 || (sub_23875F630() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000238785D70 == a2 || (sub_23875F630() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000238785DA0 == a2 || (sub_23875F630() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000238785DC0 == a2 || (sub_23875F630() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C7070612E6D6F63 && a2 == 0xEE007370614D2E65)
  {

    return 5;
  }

  else
  {
    v6 = sub_23875F630();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_23844CE88(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23875F3A0();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF097A8, &qword_238763D78);
      result = sub_23875F450();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_23875F3A0();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x23EE63F70](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_23875C220();
    sub_23844D7E8(&qword_27DF097B0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_23875E950();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_23844D7E8(&qword_27DF097B8, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_23875E9E0();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_23844D11C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF097C0, &qword_238763D80);
    v3 = sub_23875F450();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_23875EA80();
      sub_23875F700();
      v27 = v7;
      sub_23875EB30();
      v8 = sub_23875F760();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_23875EA80();
        v18 = v17;
        if (v16 == sub_23875EA80() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_23875F630();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23844D310(uint64_t a1)
{
  v2 = sub_23875CF40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF097C8, &qword_238763D88);
    v9 = sub_23875F450();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_23844D7E8(&qword_27DF097D0, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      v16 = sub_23875E950();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_23844D7E8(&qword_27DF097D8, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
          v23 = sub_23875E9E0();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23844D630(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_23844D6E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_23875B580();
  swift_allocObject();
  result = sub_23875B540();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23875B970();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_23844D764(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_23875B580();
  swift_allocObject();
  result = sub_23875B540();
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

uint64_t sub_23844D7E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23844D868(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_23875E550();
}

uint64_t sub_23844DA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a1;
  v21 = a2;
  v20 = sub_23875CF90();
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09880, &qword_238763E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF097E0, &qword_238763D90);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  sub_23875E0D0();
  v11 = *MEMORY[0x277CE1020];
  v12 = sub_23875E120();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v7, v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v14 = sub_23875E110();

  sub_238439884(v7, &qword_27DF09880, &qword_238763E20);
  v15 = sub_23875DFC0();
  KeyPath = swift_getKeyPath(byte_238763E28);
  v17 = 0.0;
  if (*(v19[1] + *(v19[0] + 36)))
  {
    v17 = 1.0;
  }

  v22 = v14;
  v23 = KeyPath;
  v24 = v15;
  v25 = v17;
  sub_23875CF80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09878, &qword_23876AEA0);
  sub_23844E928();
  sub_23875DDE0();
  (*(v2 + 8))(v4, v20);

  sub_23875C8B0();
  return sub_238439884(v10, qword_27DF097E0, &qword_238763D90);
}

uint64_t AccountTimeSharingRow.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a1;
  v29 = a2;
  v3 = sub_23875D590();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DF097E0, &qword_238763D90);
  v23 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_23875E540();
  swift_getWitnessTable();
  v5 = sub_23875E260();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  WitnessTable = swift_getWitnessTable();
  v33 = v5;
  v34 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_23875CE60();
  v17 = *(v24 + 24);
  v30 = v23;
  v31 = v17;
  v32 = v26;
  sub_23875E250();
  v18 = v25;
  sub_23875D580();
  sub_23875DD60();
  (*(v27 + 8))(v18, v28);
  (*(v6 + 8))(v8, v5);
  v19 = *(v11 + 16);
  v19(v16, v13, OpaqueTypeMetadata2);
  v20 = *(v11 + 8);
  v20(v13, OpaqueTypeMetadata2);
  v19(v29, v16, OpaqueTypeMetadata2);
  return (v20)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_23844E0CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF097E0, &qword_238763D90);
  MEMORY[0x28223BE20](v23);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_23875ED50();
  v25 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = v26;
  v18 = type metadata accessor for AccountTimeSharingRow(0, a2, v26, v16);
  v19 = v24;
  sub_23844DA38(v18, v15);
  v20 = *(v5 + 16);
  v20(v10, v19, a2);
  sub_23844E82C(v15, v12);
  v34[0] = v12;
  v20(v7, v10, a2);
  v32 = 0;
  v33 = 1;
  v34[1] = v7;
  v34[2] = &v32;
  v31[0] = v23;
  v31[1] = a2;
  v31[2] = MEMORY[0x277CE1180];
  v28 = sub_23844E89C();
  v29 = v17;
  v30 = MEMORY[0x277CE1170];
  sub_23844D868(v34, 3uLL, v31);
  v21 = *(v5 + 8);
  v21(v10, a2);
  sub_238439884(v15, qword_27DF097E0, &qword_238763D90);
  v21(v7, a2);
  sub_238439884(v12, qword_27DF097E0, &qword_238763D90);
}

uint64_t sub_23844E3FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23844E474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_23844E5E8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_23844E82C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF097E0, &qword_238763D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23844E89C()
{
  result = qword_27DF09868;
  if (!qword_27DF09868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DF097E0, &qword_238763D90);
    sub_23844E928();
    sub_23844E9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09868);
  }

  return result;
}

unint64_t sub_23844E928()
{
  result = qword_27DF09870;
  if (!qword_27DF09870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09878, &qword_23876AEA0);
    sub_238448F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09870);
  }

  return result;
}

unint64_t sub_23844E9B4()
{
  result = qword_27DF09330;
  if (!qword_27DF09330)
  {
    sub_23875D6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09330);
  }

  return result;
}

uint64_t sub_23844EA10()
{
  v0 = sub_23875BE40();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23875BE20();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23875BD20();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2387595E0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23875A130();
  __swift_allocate_value_buffer(v4, qword_27DF2F628);
  __swift_project_value_buffer(v4, qword_27DF2F628);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  return sub_23875A110();
}

uint64_t sub_23844EBB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_23875F600();
  }

  v5 = sub_23875F600();
  MEMORY[0x23EE63650](95, 0xE100000000000000);
  v4 = sub_23875F600();
  MEMORY[0x23EE63650](v4);

  return v5;
}

uint64_t sub_23844EC6C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099A0, &qword_2387640F8);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099A8, &qword_238764100);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099B0, qword_238764108);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  sub_23843A3E8(&qword_27DF099B8, &qword_27DF099A8, &qword_238764100, MEMORY[0x277CC90F8]);
  sub_23875B700();
  swift_getKeyPath("PD{E");
  sub_23875B6E0();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_23875B6F0();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099C0, &qword_238764148);
  a4[4] = sub_238453A78();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_23843A3E8(&qword_27DF099E8, &qword_27DF099B0, qword_238764108, MEMORY[0x277CC90C0]);
  sub_23843A3E8(&qword_27DF099F0, &qword_27DF099A0, &qword_2387640F8, MEMORY[0x277CC9080]);
  v17 = v21;
  sub_23875B6D0();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

void sub_23844EFD8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 monthAndYear];
  v4 = sub_23875EA80();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_23844F030@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099F8, &qword_238764150);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF099A8, &qword_238764100);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A00, &unk_238764158);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18[-v14];
  sub_23843A3E8(&qword_27DF099B8, &qword_27DF099A8, &qword_238764100, MEMORY[0x277CC90F8]);
  sub_23875B700();
  swift_getKeyPath(byte_238764168);
  sub_23875B6E0();

  (*(v9 + 8))(v11, v8);
  v22 = v19;
  sub_23875B6F0();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A08, &unk_238764190);
  a3[4] = sub_238453BAC();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_23843A3E8(&qword_27DF09A28, &qword_27DF09A00, &unk_238764158, MEMORY[0x277CC90C0]);
  sub_23843A3E8(&qword_27DF09A30, &qword_27DF099F8, &qword_238764150, MEMORY[0x277CC9080]);
  v16 = v20;
  sub_23875B6D0();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

id sub_23844F39C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 year];
  *a2 = result;
  return result;
}

id sub_23844F3E4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09990, &qword_2387640F0);
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_238763E60;
  v7 = sub_23875A230();
  result = MEMORY[0x23EE5ECD0]();
  *(v6 + 32) = result;
  if ((a3 & 1) == 0)
  {
    if (qword_27DF08C90 == -1)
    {
LABEL_6:
      v9 = sub_23875A130();
      __swift_project_value_buffer(v9, qword_27DF2F628);
      v10 = sub_23875A120();
      v12 = v11;
      MEMORY[0x28223BE20](v10);
      *(&v17 - 2) = v13;
      *(&v17 - 1) = v12;
      v18 = v7;
      sub_23875BE70();

      goto LABEL_7;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (a1 < -32768)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 >= 0x8000)
  {
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  *(&v17 - 8) = a1;
  v18 = v7;
  sub_23875BE70();
LABEL_7:
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  v14 = sub_23875EF90();
  if (!v14)
  {
    v14 = [objc_opt_self() predicateWithValue_];
  }

  *(v6 + 40) = v14;
  v15 = sub_23875EC60();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v16;
}

uint64_t sub_23844F680()
{
  v0 = sub_23875BD30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BE20();
  __swift_allocate_value_buffer(v4, qword_27DF098C0);
  __swift_project_value_buffer(v4, qword_27DF098C0);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9810], v0);
  sub_23875BD40();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_23844F7A0()
{
  v0 = sub_23875BE40();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23875BE20();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23875BD20();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23875B7F0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_23875BAD0();
  __swift_allocate_value_buffer(v10, qword_27DF098D8);
  __swift_project_value_buffer(v10, qword_27DF098D8);
  v11 = sub_23875BA40();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = sub_23875BA10();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_23875B7D0();
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  return sub_23875BA50();
}

uint64_t sub_23844FA6C(uint64_t a1, uint64_t a2, int a3)
{
  v61 = a3;
  v59 = a2;
  v60 = a1;
  v3 = sub_23875BA90();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BAB0();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BAD0();
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v47 - v10;
  MEMORY[0x28223BE20](v11);
  v56 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_23875BC40();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v62 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v47 - v23;
  v25 = sub_23875B650();
  v51 = *(v25 - 8);
  v52 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF08C98 != -1)
  {
    swift_once();
  }

  v28 = sub_23875BE20();
  v29 = __swift_project_value_buffer(v28, qword_27DF098C0);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v24, v29, v28);
  (*(v30 + 56))(v24, 0, 1, v28);
  v31 = sub_23875BE40();
  (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  v32 = v61;
  sub_23875B620();
  sub_23875B5C0();
  result = (*(v17 + 48))(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v62, v15, v16);
    v34 = v56;
    v35 = v54;
    if (qword_27DF08CA0 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v7, qword_27DF098D8);
    (*(v35 + 16))(v34, v36, v7);
    if (v32)
    {
      v37 = v53;
      sub_23875BA80();
      v38 = v55;
      sub_23875BA60();
      (*(v57 + 8))(v37, v58);
      sub_238453D6C(&qword_27DF09978, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      v39 = v62;
      sub_23875BC20();
      v40 = *(v35 + 8);
      v40(v38, v7);
      v40(v34, v7);
      (*(v17 + 8))(v39, v16);
    }

    else
    {
      v41 = v47;
      sub_23875BAA0();
      v42 = v48;
      sub_23875BA70();
      (*(v49 + 8))(v41, v50);
      v43 = v53;
      sub_23875BA80();
      v44 = v55;
      sub_23875BA60();
      (*(v57 + 8))(v43, v58);
      v45 = *(v35 + 8);
      v45(v42, v7);
      sub_238453D6C(&qword_27DF09978, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      v46 = v62;
      sub_23875BC20();
      v45(v44, v7);
      v45(v34, v7);
      (*(v17 + 8))(v46, v16);
    }

    (*(v51 + 8))(v27, v52);
    return v63;
  }

  return result;
}

uint64_t sub_23845027C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_23875F700();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x23EE641F0](0);
    v4 = v1;
    v1 = v2;
  }

  MEMORY[0x23EE641F0](v4);
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t sub_2384502F8()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 8);
    MEMORY[0x23EE641F0](0);
    v2 = v1;
    v1 = v3;
  }

  MEMORY[0x23EE641F0](v2);
  return MEMORY[0x23EE641F0](v1);
}