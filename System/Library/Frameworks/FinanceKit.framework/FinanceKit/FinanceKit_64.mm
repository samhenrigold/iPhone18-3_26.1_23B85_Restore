uint64_t BankConnectTransactionsDataLoader.DateQuery.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BankConnectTransactionsDataLoader.DateQuery.startDate.setter(uint64_t a1)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BankConnectTransactionsDataLoader.DateQuery.endDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BankConnectTransactionsDataLoader.DateQuery(0) + 20);

  return sub_1B72DFF88(a1, v3);
}

uint64_t BankConnectTransactionsDataLoader.DateQuery.init(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for BankConnectTransactionsDataLoader.DateQuery(0) + 20);
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  (*(v8 + 56))(a3 + v6, 1, 1, v7);
  (*(v8 + 32))(a3, a1, v7);

  return sub_1B72DFF88(a2, a3 + v6);
}

uint64_t BankConnectTransactionsDataLoader.DateQuery.init(_:now:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for BankConnectTransactionsDataLoader.DateQuery(0);
  v14 = *(v7 + 56);
  v21 = *(v13 + 20);
  v14(a3 + v21, 1, 1, v6);
  v22 = a3;
  sub_1B77FEA48();
  sub_1B77FEA18();
  v15 = a2;
  LOBYTE(a3) = sub_1B77FF8D8();
  v16 = *(v7 + 8);
  v17 = v9;
  v18 = 1;
  v16(v17, v6);
  if (a3)
  {
    sub_1B77FEA18();
    v18 = 0;
  }

  v16(v15, v6);
  v19 = sub_1B77FEA78();
  (*(*(v19 - 8) + 8))(a1, v19);
  v14(v12, v18, 1, v6);
  return sub_1B72DFF88(v12, v22 + v21);
}

unint64_t BankConnectTransactionsDataLoader.DateQuery.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1B77FF818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1B7801A78();

  v18 = 0xD000000000000015;
  v19 = 0x80000001B788DD50;
  MEMORY[0x1B8CA2B90](v8);
  sub_1B77AE558(&qword_1EDAF65F8, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
  sub_1B77FF968();
  v9 = *(v5 + 8);
  v9(v7, v4);
  MEMORY[0x1B8CA4D30](v16, v17);

  MEMORY[0x1B8CA4D30](0x746144646E65202CLL, 0xEB00000000203A65);
  v10 = type metadata accessor for BankConnectTransactionsDataLoader.DateQuery(0);
  sub_1B7205588(v0 + *(v10 + 20), v3, &qword_1EB98EBD0, &unk_1B7809780);
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    sub_1B7205418(v3, &qword_1EB98EBD0, &unk_1B7809780);
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    MEMORY[0x1B8CA2B90]();
    sub_1B77FF968();
    v9(v7, v4);
    (*(v12 + 8))(v3, v11);
    v14 = v16;
    v13 = v17;
  }

  MEMORY[0x1B8CA4D30](v14, v13);

  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  return v18;
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for BankConnectTransactionsDataLoader.DateQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(type metadata accessor for UserPresence(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v16 = *(v5 + 64);

  v8 = v0 + v3;
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = v1[7];
  if (!(*(v10 + 48))(v8 + v12, 1, v9))
  {
    v11(v8 + v12, v9);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68, &qword_1B781EB70);
  if (!(*(*(v13 - 8) + 48))(v0 + v7, 1, v13))
  {
    v14 = sub_1B77FFA18();
    (*(*(v14 - 8) + 8))(v0 + v7, v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + v16, v2 | v6 | 7);
}

uint64_t sub_1B77ADA6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BankConnectTransactionsDataLoader.DateQuery(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UserPresence(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1B7201BB0;

  return sub_1B77AA1CC(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

uint64_t dispatch thunk of BankConnectTransactionsDataLoading.loadTransactions(for:using:userPresence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B723838C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BankConnectTransactionsDataLoading.loadHistoricalTransactions(for:using:userPresence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B723838C;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1B77ADED8(uint64_t a1)
{
  sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    sub_1B72F2B80(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B77ADFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B77AE3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DCD0, &unk_1B786C620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77AE41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B77AE484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B77AE558(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B77AE618()
{
  result = qword_1EB99E200;
  if (!qword_1EB99E200)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedOrderReturnStatus, &type metadata for ManagedOrderReturnStatus, v0, v1);
    atomic_store(result, &qword_1EB99E200);
  }

  return result;
}

id MapsTransactionInsightInput.xpcValue.getter()
{
  v1 = type metadata accessor for MapsTransactionInsightInput(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77B058C(v0, v3, type metadata accessor for MapsTransactionInsightInput);
  v4 = type metadata accessor for MapsTransactionInsightInput.XPC(0);
  v5 = objc_allocWithZone(v4);
  sub_1B77B058C(v3, v5 + OBJC_IVAR___XPCMapsTransactionInsightInput_value, type metadata accessor for MapsTransactionInsightInput);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1B77B06C8(v3, type metadata accessor for MapsTransactionInsightInput);
  return v6;
}

uint64_t MapsTransactionInsightInput.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MapsTransactionInsightInput(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MapsTransactionInsightInput.accountID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapsTransactionInsightInput(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MapsTransactionInsightInput.applePayInsight.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MapsTransactionInsightInput(0) + 24);

  return sub_1B77B0658(a1, v3);
}

uint64_t MapsTransactionInsightInput.bankMerchantInformation.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MapsTransactionInsightInput(0) + 28));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_1B7205588(v10, &v9, &qword_1EB99E218, &qword_1B786C708);
}

__n128 MapsTransactionInsightInput.bankMerchantInformation.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for MapsTransactionInsightInput(0) + 28));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_1B7205418(v8, &qword_1EB99E218, &qword_1B786C708);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

double MapsTransactionInsightInput.mapsUserIdentifier.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MapsTransactionInsightInput(0) + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);

  return result;
}

__n128 MapsTransactionInsightInput.mapsUserIdentifier.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for MapsTransactionInsightInput(0) + 32));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t MapsTransactionInsightInput.institutionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsTransactionInsightInput(0) + 36));

  return v1;
}

void MapsTransactionInsightInput.institutionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsTransactionInsightInput(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t MapsTransactionInsightInput.includeNearbyTransactionLocations.setter(char a1)
{
  result = type metadata accessor for MapsTransactionInsightInput(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

double MapsTransactionInsightInput.countryCodes.getter()
{
  type metadata accessor for MapsTransactionInsightInput(0);

  return result;
}

void MapsTransactionInsightInput.countryCodes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapsTransactionInsightInput(0) + 44);

  *(v1 + v3) = a1;
}

__n128 MapsTransactionInsightInput.init(transaction:applePayInsight:bankMerchantInformation:mapsUserIdentifier:institutionIdentifier:includeNearbyTransactionLocations:countryCodes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = *a4;
  v27 = a4[1].n128_u64[0];
  v13 = type metadata accessor for MapsTransactionInsightInput(0);
  v14 = v13[6];
  v15 = type metadata accessor for ApplePayTransactionInsight(0);
  (*(*(v15 - 8) + 56))(a9 + v14, 1, 1, v15);
  v16 = a9 + v13[7];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0;
  v17 = (a9 + v13[8]);
  v17->n128_u64[0] = 0;
  v17->n128_u64[1] = 0;
  v17[1].n128_u64[0] = 0;
  sub_1B77B058C(a1, a9, type metadata accessor for InternalTransaction);
  v18 = *(type metadata accessor for InternalTransaction(0) + 20);
  v19 = v13[5];
  v20 = sub_1B77FFA18();
  (*(*(v20 - 8) + 16))(a9 + v19, a1 + v18, v20);
  sub_1B77B06C8(a1, type metadata accessor for InternalTransaction);
  sub_1B77B0658(a2, a9 + v14);
  v21 = *(v16 + 48);
  v33[2] = *(v16 + 32);
  v33[3] = v21;
  v33[4] = *(v16 + 64);
  v22 = *(v16 + 16);
  v33[0] = *v16;
  v33[1] = v22;
  sub_1B7205418(v33, &qword_1EB99E218, &qword_1B786C708);
  v23 = a3[3];
  *(v16 + 32) = a3[2];
  *(v16 + 48) = v23;
  *(v16 + 64) = a3[4];
  v24 = a3[1];
  *v16 = *a3;
  *(v16 + 16) = v24;

  result = v28;
  *v17 = v28;
  v17[1].n128_u64[0] = v27;
  v26 = (a9 + v13[9]);
  *v26 = a5;
  v26[1] = a6;
  *(a9 + v13[10]) = a7;
  *(a9 + v13[11]) = a8;
  return result;
}

uint64_t sub_1B77AF074()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000021;
    if (v1 != 6)
    {
      v5 = 0x437972746E756F63;
    }

    v6 = 0xD000000000000012;
    if (v1 != 4)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x746361736E617274;
    v3 = 0x796150656C707061;
    if (v1 != 2)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0)
    {
      v2 = 0x49746E756F636361;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1B77AF1A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B77B17E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B77AF1D0(uint64_t a1)
{
  v2 = sub_1B77B1324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77AF20C(uint64_t a1)
{
  v2 = sub_1B77B1324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsTransactionInsightInput.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E220, &unk_1B786C710);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77B1324();
  sub_1B78023F8();
  LOBYTE(v28[0]) = 0;
  type metadata accessor for InternalTransaction(0);
  sub_1B77B13CC(&unk_1EB99E230, type metadata accessor for InternalTransaction, protocol conformance descriptor for InternalTransaction);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for MapsTransactionInsightInput(0);
    LOBYTE(v28[0]) = 1;
    sub_1B77FFA18();
    sub_1B77B13CC(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1B7801FC8();
    v32[0] = 2;
    type metadata accessor for ApplePayTransactionInsight(0);
    sub_1B77B13CC(&unk_1EB99E240, type metadata accessor for ApplePayTransactionInsight, protocol conformance descriptor for ApplePayTransactionInsight);
    sub_1B7801F38();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    v12 = v10[3];
    v29 = v10[2];
    v30 = v12;
    v13 = v10[3];
    v31 = v10[4];
    v14 = v10[1];
    v28[0] = *v10;
    v28[1] = v14;
    v24 = v11;
    v25 = v29;
    v15 = v10[4];
    v26 = v13;
    v27 = v15;
    v23 = v28[0];
    v22 = 3;
    sub_1B7205588(v28, v21, &qword_1EB99E218, &qword_1B786C708);
    sub_1B774AF24();
    sub_1B7801F38();
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[0] = v23;
    v21[1] = v24;
    sub_1B7205418(v21, &qword_1EB99E218, &qword_1B786C708);
    v16 = (v3 + v9[8]);
    v19 = *v16;
    v20 = *(v16 + 1);
    HIBYTE(v18) = 4;
    sub_1B77B1378();

    sub_1B7801F38();

    LOBYTE(v19) = 5;
    sub_1B7801F78();
    LOBYTE(v19) = 6;
    sub_1B7801F88();
    v19 = *(v3 + v9[11]);
    HIBYTE(v18) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D80, &qword_1B783C460);
    sub_1B72FFDB4(&qword_1EB99E260, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

void MapsTransactionInsightInput.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E210, &qword_1B786C700);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v36 - v4;
  v44 = sub_1B77FFA18();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for InternalTransaction(0);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E268, &qword_1B786C720);
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v36 - v7;
  v9 = type metadata accessor for MapsTransactionInsightInput(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for ApplePayTransactionInsight(0);
  v15 = *(*(v14 - 8) + 56);
  v66 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = &v12[*(v9 + 28)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = 1;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v46 = v9;
  v17 = &v12[*(v9 + 32)];
  *v17 = 0;
  *(v17 + 1) = 0;
  v49 = a1;
  v50 = v17;
  *(v17 + 2) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77B1324();
  v45 = v8;
  v18 = v48;
  sub_1B78023C8();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_1B7205418(&v12[v66], &qword_1EB99E210, &qword_1B786C700);
    v22 = *(v16 + 3);
    v63 = *(v16 + 2);
    v64 = v22;
    v65 = *(v16 + 4);
    v23 = *(v16 + 1);
    v61 = *v16;
    v62 = v23;
    sub_1B7205418(&v61, &qword_1EB99E218, &qword_1B786C708);
  }

  else
  {
    *&v48 = v14;
    v19 = v40;
    v20 = v44;
    LOBYTE(v61) = 0;
    sub_1B77B13CC(&unk_1EB99E270, type metadata accessor for InternalTransaction, protocol conformance descriptor for InternalTransaction);
    v21 = v42;
    sub_1B7801E48();
    sub_1B77B1A98(v21, v12, type metadata accessor for InternalTransaction);
    LOBYTE(v61) = 1;
    sub_1B77B13CC(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1B7801E48();
    (*(v39 + 32))(&v12[*(v46 + 20)], v19, v20);
    LOBYTE(v61) = 2;
    sub_1B77B13CC(&unk_1EB99E280, type metadata accessor for ApplePayTransactionInsight, protocol conformance descriptor for ApplePayTransactionInsight);
    v24 = v38;
    sub_1B7801DB8();
    sub_1B77B0658(v24, &v12[v66]);
    v60 = 3;
    sub_1B774B020();
    sub_1B7801DB8();
    v56 = v63;
    v57 = v64;
    v54 = v61;
    v55 = v62;
    v25 = *(v16 + 3);
    v59[2] = *(v16 + 2);
    v59[3] = v25;
    v59[4] = *(v16 + 4);
    v26 = *v16;
    v59[1] = *(v16 + 1);
    v58 = v65;
    v59[0] = v26;
    sub_1B7205418(v59, &qword_1EB99E218, &qword_1B786C708);
    v27 = v57;
    *(v16 + 2) = v56;
    *(v16 + 3) = v27;
    *(v16 + 4) = v58;
    v28 = v55;
    *v16 = v54;
    *(v16 + 1) = v28;
    v51 = 4;
    sub_1B77B1414();
    sub_1B7801DB8();
    v48 = v52;
    v29 = v53;
    v30 = v50;

    *v30 = v48;
    *(v30 + 2) = v29;
    LOBYTE(v52) = 5;
    v31 = sub_1B7801DF8();
    v32 = v43;
    v33 = v46;
    v34 = &v12[*(v46 + 36)];
    *v34 = v31;
    v34[1] = v35;
    LOBYTE(v52) = 6;
    v12[*(v33 + 40)] = sub_1B7801E08() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D80, &qword_1B783C460);
    v51 = 7;
    sub_1B72FFDB4(&qword_1EB991D78, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1B7801E48();
    (*(v32 + 8))(v45, v47);
    *&v12[*(v33 + 44)] = v52;
    sub_1B77B058C(v12, v37, type metadata accessor for MapsTransactionInsightInput);
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_1B77B06C8(v12, type metadata accessor for MapsTransactionInsightInput);
  }
}

void MapsTransactionInsightInput.init(from:mapsUserIdentifier:countryCodes:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E210, &qword_1B786C700);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = a2[1];
  v46 = *a2;
  v45 = v10;
  v44 = a2[2];
  v11 = type metadata accessor for MapsTransactionInsightInput(0);
  v12 = v11[6];
  v13 = type metadata accessor for ApplePayTransactionInsight(0);
  v14 = *(v13 - 8);
  v43 = *(v14 + 56);
  v42 = v14 + 56;
  v43(a4 + v12, 1, 1, v13);
  v15 = a4 + v11[7];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0;
  v16 = (a4 + v11[8]);
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  v17 = a1;
  InternalTransaction.init(_:)(v17, a4);
  v18 = *(type metadata accessor for InternalTransaction(0) + 20);
  v19 = v11[5];
  v20 = sub_1B77FFA18();
  (*(*(v20 - 8) + 16))(a4 + v19, a4 + v18, v20);
  v21 = [v17 insightsObject];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 applePayInsightObject];

    if (v23)
    {
      ApplePayTransactionInsight.init(_:)(v23, v9);
      v43(v9, 0, 1, v13);
      sub_1B77B0658(v9, a4 + v12);
    }
  }

  v24 = [v17 insightsObject];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 bankMerchantInformationInsightObject];

    if (v26)
    {
      TransactionMerchantInformation.init(_:)(v26, v48);
      v27 = *(v15 + 48);
      v49[2] = *(v15 + 32);
      v49[3] = v27;
      v49[4] = *(v15 + 64);
      v28 = *(v15 + 16);
      v49[0] = *v15;
      v49[1] = v28;
      sub_1B7205418(v49, &qword_1EB99E218, &qword_1B786C708);
      v29 = v48[3];
      *(v15 + 32) = v48[2];
      *(v15 + 48) = v29;
      *(v15 + 64) = v48[4];
      v30 = v48[1];
      *v15 = v48[0];
      *(v15 + 16) = v30;
    }
  }

  v31 = v45;
  *v16 = v46;
  v16[1] = v31;
  v16[2] = v44;
  v32 = [v17 accountObject];
  v33 = [v32 institutionId];

  v34 = sub_1B7800868();
  v36 = v35;

  v37 = (a4 + v11[9]);
  *v37 = v34;
  v37[1] = v36;
  *(a4 + v11[11]) = v47;
  v38 = [v17 insightsObject];
  if (v38 && (v39 = v38, v40 = [v38 mapsInsightObject], v39, v40))
  {
    v41 = [v40 includeLocationsInTheNextRetry];

    v17 = v40;
  }

  else
  {
    v41 = 0;
  }

  *(a4 + v11[10]) = v41;
}

id MapsTransactionInsightInput.XPC.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B77B058C(a1, v3 + OBJC_IVAR___XPCMapsTransactionInsightInput_value, type metadata accessor for MapsTransactionInsightInput);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B77B06C8(a1, type metadata accessor for MapsTransactionInsightInput);
  return v4;
}

id MapsTransactionInsightInput.XPC.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1B77B058C(a1, v1 + OBJC_IVAR___XPCMapsTransactionInsightInput_value, type metadata accessor for MapsTransactionInsightInput);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B77B06C8(a1, type metadata accessor for MapsTransactionInsightInput);
  return v4;
}

uint64_t sub_1B77B058C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B77B05F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTransaction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77B0658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E210, &qword_1B786C700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77B06C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id MapsTransactionInsightInput.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7209CFC(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id MapsTransactionInsightInput.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7209CFC(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id MapsTransactionInsightInput.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsTransactionInsightInput.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B77B0A90(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B77B058C(a1, v3 + OBJC_IVAR___XPCMapsTransactionInsightInput_value, type metadata accessor for MapsTransactionInsightInput);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B77B06C8(a1, type metadata accessor for MapsTransactionInsightInput);
  return v4;
}

uint64_t _s10FinanceKit27MapsTransactionInsightInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplePayTransactionInsight(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E210, &qword_1B786C700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E2F8, &qword_1B786C948);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  if ((static InternalTransaction.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    goto LABEL_35;
  }

  v14 = type metadata accessor for MapsTransactionInsightInput(0);
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_35;
  }

  v53 = v14;
  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  v52 = a1;
  sub_1B7205588(a1 + v15, v13, &qword_1EB99E210, &qword_1B786C700);
  v17 = a2 + v15;
  v18 = a2;
  v19 = v16;
  sub_1B7205588(v17, &v13[v16], &qword_1EB99E210, &qword_1B786C700);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_1B7205418(v13, &qword_1EB99E210, &qword_1B786C700);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1B7205588(v13, v10, &qword_1EB99E210, &qword_1B786C700);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    sub_1B77B06C8(v10, type metadata accessor for ApplePayTransactionInsight);
LABEL_8:
    sub_1B7205418(v13, &qword_1EB99E2F8, &qword_1B786C948);
LABEL_35:
    v50 = 0;
    return v50 & 1;
  }

  sub_1B77B1A98(&v13[v19], v7, type metadata accessor for ApplePayTransactionInsight);
  v21 = static ApplePayTransactionInsight.== infix(_:_:)();
  sub_1B77B06C8(v7, type metadata accessor for ApplePayTransactionInsight);
  sub_1B77B06C8(v10, type metadata accessor for ApplePayTransactionInsight);
  sub_1B7205418(v13, &qword_1EB99E210, &qword_1B786C700);
  if ((v21 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_10:
  v22 = v52;
  v23 = v52 + v53[7];
  v24 = *(v23 + 48);
  v82 = *(v23 + 32);
  v83 = v24;
  v84 = *(v23 + 64);
  v25 = *(v23 + 16);
  v80 = *v23;
  v81 = v25;
  v26 = v18 + v53[7];
  v27 = *(v26 + 64);
  v88 = *(v26 + 48);
  v89 = v27;
  v28 = *(v26 + 32);
  v86 = *(v26 + 16);
  v87 = v28;
  v85 = *v26;
  v79 = v80;
  v29 = v81;
  v30 = *(v23 + 40);
  v75 = *(v23 + 24);
  v76 = v30;
  v77 = *(v23 + 56);
  v78 = *(v23 + 72);
  v74 = v85;
  v31 = v86;
  v32 = *(v26 + 24);
  v33 = *(v26 + 40);
  v34 = *(v26 + 56);
  v73 = *(v26 + 72);
  v71 = v33;
  v72 = v34;
  v70 = v32;
  if (v81 == 1)
  {
    if (v86 == 1)
    {
      v63 = *v23;
      *(v64 + 8) = *(v23 + 24);
      *(&v64[1] + 8) = *(v23 + 40);
      *(&v64[2] + 8) = *(v23 + 56);
      v35 = *(v23 + 72);
      *&v64[0] = 1;
      *(&v64[3] + 1) = v35;
      sub_1B7205588(&v80, &v58, &qword_1EB99E218, &qword_1B786C708);
      sub_1B7205588(&v85, &v58, &qword_1EB99E218, &qword_1B786C708);
      sub_1B7205418(&v63, &qword_1EB99E218, &qword_1B786C708);
      goto LABEL_18;
    }

    sub_1B7205588(&v80, &v63, &qword_1EB99E218, &qword_1B786C708);
    sub_1B7205588(&v85, &v63, &qword_1EB99E218, &qword_1B786C708);
    goto LABEL_16;
  }

  v63 = *v23;
  *(v64 + 8) = *(v23 + 24);
  *(&v64[1] + 8) = *(v23 + 40);
  *(&v64[2] + 8) = *(v23 + 56);
  v36 = *(v23 + 72);
  *&v64[0] = v81;
  *(&v64[3] + 1) = v36;
  v58 = v63;
  v59 = v64[0];
  v60 = v64[1];
  v61 = v64[2];
  v62 = v64[3];
  if (v86 == 1)
  {
    v57[1] = v64[1];
    v57[2] = v64[2];
    v57[3] = v64[3];
    v56 = v63;
    v57[0] = v64[0];
    sub_1B7205588(&v80, v55, &qword_1EB99E218, &qword_1B786C708);
    sub_1B7205588(&v85, v55, &qword_1EB99E218, &qword_1B786C708);
    sub_1B7205588(&v63, v55, &qword_1EB99E218, &qword_1B786C708);
    sub_1B76630AC(&v56);
LABEL_16:
    v63 = v79;
    *(v64 + 8) = v75;
    *(&v64[1] + 8) = v76;
    *(&v64[2] + 8) = v77;
    *&v64[0] = v29;
    *(&v64[3] + 1) = v78;
    v64[4] = v74;
    v65 = v31;
    v69 = v73;
    v68 = v72;
    v67 = v71;
    v66 = v70;
    sub_1B7205418(&v63, &unk_1EB99E300, &unk_1B786C950);
    goto LABEL_35;
  }

  v56 = *v26;
  *(v57 + 8) = *(v26 + 24);
  *(&v57[1] + 8) = *(v26 + 40);
  *(&v57[2] + 8) = *(v26 + 56);
  *(&v57[3] + 1) = *(v26 + 72);
  *&v57[0] = v86;
  sub_1B7205588(&v80, v55, &qword_1EB99E218, &qword_1B786C708);
  sub_1B7205588(&v85, v55, &qword_1EB99E218, &qword_1B786C708);
  sub_1B7205588(&v63, v55, &qword_1EB99E218, &qword_1B786C708);
  v37 = _s10FinanceKit30TransactionMerchantInformationV2eeoiySbAC_ACtFZ_0(&v58, &v56);
  v54[2] = v57[1];
  v54[3] = v57[2];
  v54[4] = v57[3];
  v54[0] = v56;
  v54[1] = v57[0];
  sub_1B76630AC(v54);
  v55[2] = v60;
  v55[3] = v61;
  v55[4] = v62;
  v55[0] = v58;
  v55[1] = v59;
  sub_1B76630AC(v55);
  v56 = v79;
  *(v57 + 8) = v75;
  *(&v57[1] + 8) = v76;
  *(&v57[2] + 8) = v77;
  *&v57[0] = v29;
  *(&v57[3] + 1) = v78;
  sub_1B7205418(&v56, &qword_1EB99E218, &qword_1B786C708);
  if (!v37)
  {
    goto LABEL_35;
  }

LABEL_18:
  v38 = v53[8];
  v39 = (v22 + v38);
  v40 = *(v22 + v38 + 8);
  v41 = (v18 + v38);
  v42 = v41[1];
  if (!v40)
  {
    if (!v42)
    {

      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (!v42)
  {
LABEL_24:

    goto LABEL_35;
  }

  v43 = v39[2];
  v44 = v41[2];
  if (*v39 == *v41 && v40 == v42)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_26;
  }

  v45 = sub_1B78020F8();
  swift_bridgeObjectRetain_n();
  if ((v45 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_35;
  }

LABEL_26:
  swift_bridgeObjectRelease_n();
  if (v43 != v44)
  {
    goto LABEL_35;
  }

LABEL_29:
  v46 = v53[9];
  v47 = *(v22 + v46);
  v48 = *(v22 + v46 + 8);
  v49 = (v18 + v46);
  if ((v47 != *v49 || v48 != v49[1]) && (sub_1B78020F8() & 1) == 0 || *(v22 + v53[10]) != *(v18 + v53[10]))
  {
    goto LABEL_35;
  }

  v50 = sub_1B72F4734(*(v22 + v53[11]), *(v18 + v53[11]));
  return v50 & 1;
}

unint64_t sub_1B77B1324()
{
  result = qword_1EB99E228;
  if (!qword_1EB99E228)
  {
    result = swift_getWitnessTable(byte_1B786C8F4, &type metadata for MapsTransactionInsightInput.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E228);
  }

  return result;
}

unint64_t sub_1B77B1378()
{
  result = qword_1EB99E250;
  if (!qword_1EB99E250)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectMapsUserIdentifier, &type metadata for BankConnectMapsUserIdentifier, v0, v1);
    atomic_store(result, &qword_1EB99E250);
  }

  return result;
}

uint64_t sub_1B77B13CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B77B1414()
{
  result = qword_1EB99E290;
  if (!qword_1EB99E290)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectMapsUserIdentifier, &type metadata for BankConnectMapsUserIdentifier, v0, v1);
    atomic_store(result, &qword_1EB99E290);
  }

  return result;
}

void sub_1B77B1490(uint64_t a1)
{
  type metadata accessor for InternalTransaction(319);
  if (v1 <= 0x3F)
  {
    sub_1B77FFA18();
    if (v2 <= 0x3F)
    {
      sub_1B77B15AC(319);
      if (v3 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB99E2B0, &type metadata for TransactionMerchantInformation);
        if (v4 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EB99E2B8, &type metadata for BankConnectMapsUserIdentifier);
          if (v5 <= 0x3F)
          {
            sub_1B73747EC();
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

void sub_1B77B15AC(uint64_t a1)
{
  if (!qword_1EB99E2A8)
  {
    type metadata accessor for ApplePayTransactionInsight(255);
    v1 = sub_1B7801768();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB99E2A8);
    }
  }
}

uint64_t sub_1B77B160C(uint64_t a1)
{
  result = type metadata accessor for MapsTransactionInsightInput(319);
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

unint64_t sub_1B77B16DC()
{
  result = qword_1EB99E2E0;
  if (!qword_1EB99E2E0)
  {
    result = swift_getWitnessTable(asc_1B786C8CC, &type metadata for MapsTransactionInsightInput.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E2E0);
  }

  return result;
}

unint64_t sub_1B77B1734()
{
  result = qword_1EB99E2E8;
  if (!qword_1EB99E2E8)
  {
    result = swift_getWitnessTable(byte_1B786C83C, &type metadata for MapsTransactionInsightInput.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E2E8);
  }

  return result;
}

unint64_t sub_1B77B178C()
{
  result = qword_1EB99E2F0;
  if (!qword_1EB99E2F0)
  {
    result = swift_getWitnessTable(byte_1B786C864, &type metadata for MapsTransactionInsightInput.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E2F0);
  }

  return result;
}

uint64_t sub_1B77B17E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796150656C707061 && a2 == 0xEF74686769736E49 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B788DDD0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B788DDF0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B788DE10 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001B788DE30 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEC0000007365646FLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B77B1A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Transaction.init(id:accountId:transactionAmount:foreignCurrencyAmount:foreignCurrencyExchangeRate:creditDebitIndicator:transactionDescription:originalTransactionDescription:merchantCategoryCode:merchantName:transactionType:status:transactionDate:postedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 *a14, uint64_t a15, uint64_t a16, char *a17, char *a18, uint64_t a19, uint64_t a20)
{
  v26 = *(a4 + 4);
  v44 = *a8;
  v45 = *(a14 + 2);
  v46 = *a14;
  v49 = *a17;
  v50 = *a18;
  v27 = sub_1B77FFA18();
  v28 = *(*(v27 - 8) + 32);
  v42 = a4[1];
  v43 = *a4;
  v28(a9, a1, v27);
  v29 = type metadata accessor for Transaction(0);
  v28(a9 + v29[5], a2, v27);
  v30 = a9 + v29[6];
  v31 = *(a3 + 16);
  *v30 = *a3;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a3 + 32);
  v32 = a9 + v29[7];
  *v32 = v43;
  *(v32 + 16) = v42;
  *(v32 + 32) = v26;
  v33 = a9 + v29[8];
  *v33 = a5;
  *(v33 + 8) = a6;
  *(v33 + 16) = a7;
  *(v33 + 20) = BYTE4(a7) & 1;
  *(a9 + v29[9]) = v44;
  v34 = (a9 + v29[10]);
  *v34 = a10;
  v34[1] = a11;
  v35 = (a9 + v29[11]);
  *v35 = a12;
  v35[1] = a13;
  v36 = a9 + v29[12];
  *v36 = v46;
  *(v36 + 2) = v45;
  v37 = (a9 + v29[13]);
  *v37 = a15;
  v37[1] = a16;
  *(a9 + v29[14]) = v49;
  *(a9 + v29[15]) = v50;
  v38 = v29[16];
  v39 = sub_1B77FF988();
  (*(*(v39 - 8) + 32))(a9 + v38, a19, v39);
  v40 = a9 + v29[17];

  return sub_1B7205340(a20, v40);
}

uint64_t type metadata accessor for Transaction(uint64_t a1)
{
  result = qword_1EDAF8EA8;
  if (!qword_1EDAF8EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MerchantCategoryCode.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_1B75D589C(a1, a2, 10);
    v9 = v29;

    if ((v9 & 0x10000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v7 = sub_1B7801B48();
      v5 = v30;
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          LOWORD(v9) = 0;
          if (v7)
          {
            v16 = v7 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = (10 * v9);
              if (v18 != 10 * v9)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if ((v18 + v17) != v9)
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v8 != 45)
    {
      if (v5)
      {
        LOWORD(v9) = 0;
        if (v7)
        {
          while (1)
          {
            v22 = *v7 - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = (10 * v9);
            if (v23 != 10 * v9)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if ((v23 + v22) != v9)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOWORD(v9) = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v32 = v5;
      v27 = v5;

      if (v27)
      {
LABEL_63:
        LOWORD(v9) = 0;
        v28 = 1;
LABEL_67:
        *a3 = v9;
        *(a3 + 2) = v28;
        return;
      }

LABEL_66:
      v28 = 0;
      goto LABEL_67;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        LOWORD(v9) = 0;
        if (v7)
        {
          v10 = v7 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = (10 * v9);
            if (v12 != 10 * v9)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if ((v12 - v11) != v9)
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v31[0] = a1;
  v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v4)
      {
        LOWORD(v9) = 0;
        v24 = v31;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = (10 * v9);
          if (v26 != 10 * v9)
          {
            break;
          }

          v9 = v26 + v25;
          if ((v26 + v25) != v9)
          {
            break;
          }

          ++v24;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        LOWORD(v9) = 0;
        v13 = v31 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = (10 * v9);
          if (v15 != 10 * v9)
          {
            break;
          }

          v9 = v15 - v14;
          if ((v15 - v14) != v9)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      LOWORD(v9) = 0;
      v19 = v31 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = (10 * v9);
        if (v21 != 10 * v9)
        {
          break;
        }

        v9 = v21 + v20;
        if ((v21 + v20) != v9)
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
}

uint64_t MerchantCategoryCode.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  v3 = MEMORY[0x1E69E72E8];
  *(v2 + 56) = MEMORY[0x1E69E7290];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1;

  return sub_1B78008B8();
}

uint64_t sub_1B77B2244()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  v3 = MEMORY[0x1E69E72E8];
  *(v2 + 56) = MEMORY[0x1E69E7290];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1;

  return sub_1B78008B8();
}

void sub_1B77B22C8(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 24) = MEMORY[0x1E69E7290];
  *a1 = v2;
}

uint64_t Transaction.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Transaction.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Transaction(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Transaction.transactionAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Transaction(0) + 24);
  v9 = *(v3 + 32);
  v4 = v9;
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  *a1 = v8[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  return sub_1B7215720(v8, v7);
}

double Transaction.foreignCurrencyAmount.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Transaction(0) + 28);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;

  return result;
}

uint64_t Transaction.creditDebitIndicator.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Transaction(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t Transaction.transactionDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for Transaction(0) + 40));

  return v1;
}

uint64_t Transaction.originalTransactionDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for Transaction(0) + 44));

  return v1;
}

uint64_t Transaction.merchantCategoryCode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Transaction(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 2);
  *a1 = v5;
  *(a1 + 2) = v4;
  return result;
}

uint64_t Transaction.merchantName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Transaction(0) + 52));

  return v1;
}

uint64_t Transaction.transactionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Transaction(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t Transaction.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Transaction(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t Transaction.transactionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Transaction(0) + 64);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Transaction.postedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Transaction(0) + 68);

  return sub_1B7280900(v3, a1);
}

unint64_t sub_1B77B2714(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x49746E756F636361;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x746E61686372656DLL;
      break;
    case 10:
    case 12:
      result = 0x746361736E617274;
      break;
    case 11:
      result = 0x737574617473;
      break;
    case 13:
      result = 0x6144646574736F70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B77B28C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B77B5318(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B77B28E8(uint64_t a1)
{
  v2 = sub_1B77B4710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77B2924(uint64_t a1)
{
  v2 = sub_1B77B4710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Transaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E318, &qword_1B786C970);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77B4710();
  sub_1B78023F8();
  LOBYTE(v33[0]) = 0;
  sub_1B77FFA18();
  sub_1B71A6BF4(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for Transaction(0);
    v35[0] = 1;
    sub_1B7801FC8();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v33[0] = *v10;
    v33[1] = v11;
    v34 = *(v10 + 4);
    v12 = v10[1];
    v30 = *v10;
    v31 = v12;
    v32 = *(v10 + 4);
    v29 = 2;
    sub_1B7215720(v33, v27);
    sub_1B7215044();
    sub_1B7801FC8();
    v27[0] = v30;
    v27[1] = v31;
    v28 = v32;
    sub_1B721722C(v27);
    v13 = (v3 + v9[7]);
    v14 = *(v13 + 4);
    v15 = v13[1];
    v24 = *v13;
    v25 = v15;
    v26 = v14;
    v23 = 3;

    sub_1B7801F38();

    v16 = (v3 + v9[8]);
    v17 = *(v16 + 4);
    v18 = *(v16 + 20);
    v24 = *v16;
    LODWORD(v25) = v17;
    BYTE4(v25) = v18;
    v23 = 4;
    type metadata accessor for Decimal(0);
    sub_1B71A6BF4(&unk_1EB99DA30, type metadata accessor for Decimal, MEMORY[0x1E6969FD8]);
    sub_1B7801F38();
    LOBYTE(v24) = *(v3 + v9[9]);
    v23 = 5;
    sub_1B721BF7C();
    sub_1B7801FC8();
    LOBYTE(v24) = 6;
    sub_1B7801F78();
    LOBYTE(v24) = 7;
    sub_1B7801F78();
    v19 = (v3 + v9[12]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 2);
    LOWORD(v24) = v20;
    BYTE2(v24) = v19;
    v23 = 8;
    sub_1B7408BE0();
    sub_1B7801F38();
    LOBYTE(v24) = 9;
    sub_1B7801EF8();
    LOBYTE(v24) = *(v3 + v9[14]);
    v23 = 10;
    sub_1B744B428();
    sub_1B7801FC8();
    LOBYTE(v24) = *(v3 + v9[15]);
    v23 = 11;
    sub_1B744B7F4();
    sub_1B7801FC8();
    LOBYTE(v24) = 12;
    sub_1B77FF988();
    sub_1B71A6BF4(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801FC8();
    LOBYTE(v24) = 13;
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

void Transaction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v43 - v4;
  v5 = sub_1B77FF988();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFA18();
  v51 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v43 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E328, &qword_1B786C978);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v43 - v12;
  v14 = type metadata accessor for Transaction(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77B4710();
  v55 = v13;
  v17 = v56;
  sub_1B78023C8();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v56 = a1;
    v45 = v14;
    v44 = v16;
    LOBYTE(v60) = 0;
    sub_1B71A6BF4(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1B7801E48();
    v18 = v7;
    v19 = *(v51 + 32);
    v20 = v44;
    v19(v44, v53, v18);
    LOBYTE(v60) = 1;
    sub_1B7801E48();
    v43 = v18;
    v53 = 0;
    v21 = v18;
    v22 = v45;
    v19(&v20[v45[5]], v10, v21);
    v64 = 2;
    sub_1B72153F8();
    sub_1B7801E48();
    v23 = &v20[v22[6]];
    v24 = v61;
    *v23 = v60;
    *(v23 + 1) = v24;
    *(v23 + 4) = v62;
    v63 = 3;
    sub_1B7801DB8();
    v25 = v59;
    v26 = &v20[v22[7]];
    v27 = v58;
    *v26 = v57;
    *(v26 + 1) = v27;
    *(v26 + 4) = v25;
    type metadata accessor for Decimal(0);
    v63 = 4;
    sub_1B71A6BF4(&unk_1EB99DAA0, type metadata accessor for Decimal, MEMORY[0x1E6969FE8]);
    sub_1B7801DB8();
    v28 = v58;
    v29 = BYTE4(v58);
    v30 = &v20[v22[8]];
    *v30 = v57;
    *(v30 + 4) = v28;
    v30[20] = v29;
    v63 = 5;
    sub_1B721BFD0();
    sub_1B7801E48();
    v20[v22[9]] = v57;
    LOBYTE(v57) = 6;
    v31 = sub_1B7801DF8();
    v32 = &v20[v22[10]];
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v57) = 7;
    v34 = sub_1B7801DF8();
    v35 = &v20[v22[11]];
    *v35 = v34;
    v35[1] = v36;
    v63 = 8;
    sub_1B7408B8C();
    sub_1B7801DB8();
    v37 = BYTE2(v57);
    v38 = &v20[v45[12]];
    *v38 = v57;
    v38[2] = v37;
    LOBYTE(v57) = 9;
    v39 = sub_1B7801D78();
    v40 = &v44[v45[13]];
    *v40 = v39;
    v40[1] = v41;
    v63 = 10;
    sub_1B744B350();
    sub_1B7801E48();
    v44[v45[14]] = v57;
    v63 = 11;
    sub_1B744B71C();
    sub_1B7801E48();
    v44[v45[15]] = v57;
    LOBYTE(v57) = 12;
    sub_1B71A6BF4(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1B7801E48();
    (*(v49 + 32))(&v44[v45[16]], v48, v50);
    LOBYTE(v57) = 13;
    sub_1B7801DB8();
    (*(v52 + 8))(v55, v54);
    v42 = v44;
    sub_1B7205340(v47, &v44[v45[17]]);
    sub_1B77B4764(v42, v46);
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_1B77B47C8(v42, type metadata accessor for Transaction);
  }
}

uint64_t sub_1B77B3B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v5 = *(v3 + 32);
  v9 = v5;
  *a2 = v8[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  return sub_1B7215720(v8, v7);
}

double sub_1B77B3BA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 28);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;

  return result;
}

uint64_t sub_1B77B3C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_1B77FF988();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Transaction.init(internalTransaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);
  v5(a2, a1, v4);
  v6 = type metadata accessor for InternalTransaction(0);
  v7 = v6[5];
  v8 = type metadata accessor for Transaction(0);
  v5(a2 + v8[5], a1 + v7, v4);
  v9 = a1 + v6[8];
  v39 = *(v9 + 32);
  v10 = v39;
  v11 = *(v9 + 16);
  v38[0] = *v9;
  v38[1] = v11;
  v12 = a2 + v8[6];
  *v12 = v38[0];
  *(v12 + 16) = v11;
  *(v12 + 32) = v10;
  v13 = a1 + v6[9];
  v14 = *(v13 + 32);
  v15 = a2 + v8[7];
  v16 = *(v13 + 16);
  *v15 = *v13;
  *(v15 + 16) = v16;
  *(v15 + 32) = v14;
  v17 = a1 + v6[10];
  LODWORD(v15) = *(v17 + 16);
  v18 = *(v17 + 20);
  v19 = a2 + v8[8];
  *v19 = *v17;
  *(v19 + 16) = v15;
  *(v19 + 20) = v18;
  *(a2 + v8[9]) = *(a1 + v6[11]);
  sub_1B7215720(v38, v37);

  v20 = InternalTransaction.displayDescription.getter();
  v21 = (a2 + v8[10]);
  *v21 = v20;
  v21[1] = v22;
  v23 = (a1 + v6[15]);
  v24 = *v23;
  v25 = v23[1];
  v26 = (a2 + v8[11]);
  *v26 = v24;
  v26[1] = v25;
  v27 = a1 + v6[12];
  LOWORD(v24) = *v27;
  LOBYTE(v27) = *(v27 + 2);
  v28 = a2 + v8[12];
  *v28 = v24;
  *(v28 + 2) = v27;
  v29 = (a1 + v6[13]);
  v30 = *v29;
  v31 = v29[1];
  v32 = (a2 + v8[13]);
  *v32 = v30;
  v32[1] = v31;
  *(a2 + v8[14]) = *(a1 + v6[16]);
  *(a2 + v8[15]) = *(a1 + v6[17]);
  v33 = v6[19];
  v34 = v8[16];
  v35 = sub_1B77FF988();
  (*(*(v35 - 8) + 16))(a2 + v34, a1 + v33, v35);
  sub_1B7280900(a1 + v6[20], a2 + v8[17]);

  return sub_1B77B47C8(a1, type metadata accessor for InternalTransaction);
}

double static ManagedTransaction.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98EB68 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_1B77B3F90()
{
  if (qword_1EB98EB68 != -1)
  {
    swift_once();
  }

  return result;
}

BOOL _s10FinanceKit11TransactionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for Transaction(0);
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v15 = (a1 + v14[6]);
  *&v79[1] = *(v15 + 4);
  v16 = v15[1];
  v78 = *v15;
  v79[0] = v16;
  v17 = (a2 + v14[6]);
  *&v81[1] = *(v17 + 4);
  v18 = v17[1];
  v80 = *v17;
  v81[0] = v18;
  sub_1B7215720(&v78, &v73);
  sub_1B7215720(&v80, &v73);
  if ((MEMORY[0x1B8CA5970](v78, *(&v78 + 1), LODWORD(v79[0]), v80, *(&v80 + 1), LODWORD(v81[0])) & 1) == 0)
  {
    sub_1B721722C(&v80);
    sub_1B721722C(&v78);
    return 0;
  }

  if (*(&v79[0] + 1) == *(&v81[0] + 1) && *&v79[1] == *&v81[1])
  {
    sub_1B721722C(&v80);
    sub_1B721722C(&v78);
  }

  else
  {
    v19 = sub_1B78020F8();
    sub_1B721722C(&v80);
    sub_1B721722C(&v78);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v69 = v5;
  v20 = v14[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 32);
  v23 = (a2 + v20);
  v24 = v23[4];
  if (v22)
  {
    v72 = v22;
    v26 = v21[2];
    v25 = v21[3];
    v29 = v21;
    v27 = *v21;
    v28 = v29[1];
    if (v24)
    {
      v68 = v25;
      v66 = *v23;
      v65 = v23[1];
      v31 = v23[2];
      v30 = v23[3];
      v64 = v31;
      v63 = v30;
      v70 = v27;
      v71 = v28;
      swift_bridgeObjectRetain_n();

      v67 = v26;
      if (MEMORY[0x1B8CA5970](v70, v71, v26, v66, v65, v64))
      {
        v32 = v72;
        if (v68 == v63 && v72 == v24)
        {

LABEL_23:
          v73 = v70;
          v74 = v71;
          v75 = v67;
          v76 = v68;
          v77 = v32;
          sub_1B721722C(&v73);
          goto LABEL_24;
        }

        LODWORD(v66) = sub_1B78020F8();

        if (v66)
        {
          goto LABEL_23;
        }
      }

      else
      {

        v32 = v72;
      }

      v73 = v70;
      v74 = v71;
      v75 = v67;
      v76 = v68;
      v77 = v32;
      sub_1B721722C(&v73);

      return 0;
    }

    v73 = v27;
    v74 = v28;
    v75 = v26;
    v76 = v25;
    v77 = v72;
    swift_bridgeObjectRetain_n();
    sub_1B721722C(&v73);
LABEL_18:

    return 0;
  }

  if (v24)
  {

    goto LABEL_18;
  }

LABEL_24:

  v33 = v14[8];
  v34 = a1 + v33;
  v35 = *(a1 + v33 + 20);
  v36 = a2 + v33;
  if (v35)
  {
    if (!*(v36 + 20))
    {
      return 0;
    }
  }

  else if ((*(v36 + 20) & 1) != 0 || (MEMORY[0x1B8CA5970](*v34, *(v34 + 8), *(v34 + 16), *v36, *(v36 + 8), *(v36 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v14[9]) != *(a2 + v14[9]))
  {
    return 0;
  }

  v38 = v14[10];
  v39 = *(a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  if ((v39 != *v41 || v40 != v41[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v42 = v14[11];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  if ((v43 != *v45 || v44 != v45[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v46 = v14[12];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 2);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 2);
  if (v48)
  {
    if (!v50)
    {
      return 0;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  v51 = v14[13];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  if (*(a1 + v14[14]) != *(a2 + v14[14]) || *(a1 + v14[15]) != *(a2 + v14[15]) || (sub_1B77FF918() & 1) == 0)
  {
    return 0;
  }

  v56 = v14[17];
  v57 = *(v11 + 48);
  sub_1B7280900(a1 + v56, v13);
  sub_1B7280900(a2 + v56, &v13[v57]);
  v58 = *(v69 + 48);
  if (v58(v13, 1, v4) != 1)
  {
    sub_1B7280900(v13, v10);
    if (v58(&v13[v57], 1, v4) == 1)
    {
      (*(v69 + 8))(v10, v4);
      goto LABEL_58;
    }

    v59 = v69;
    (*(v69 + 32))(v7, &v13[v57], v4);
    sub_1B71A6BF4(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v60 = sub_1B7800828();
    v61 = *(v59 + 8);
    v61(v7, v4);
    v61(v10, v4);
    sub_1B7205418(v13, &qword_1EB98EBD0, &unk_1B7809780);
    return (v60 & 1) != 0;
  }

  if (v58(&v13[v57], 1, v4) != 1)
  {
LABEL_58:
    sub_1B7205418(v13, &qword_1EB98FCE0, &qword_1B7813550);
    return 0;
  }

  sub_1B7205418(v13, &qword_1EB98EBD0, &unk_1B7809780);
  return 1;
}

unint64_t sub_1B77B4710()
{
  result = qword_1EB99E320;
  if (!qword_1EB99E320)
  {
    result = swift_getWitnessTable(asc_1B786CD98, &type metadata for Transaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E320);
  }

  return result;
}

uint64_t sub_1B77B4764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77B47C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _s10FinanceKit18ManagedTransactionC14mappedKeyPathsSDys03AnyF4PathCSSGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8, &qword_1B7809FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B786C960;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746E756F6D61;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x79636E6572727563;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "foreignAmount");
  *(inited + 102) = -4864;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "foreignAmount");
  *(inited + 126) = -4864;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x436E676965726F66;
  *(inited + 144) = 0xEF79636E65727275;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "foreignAmount");
  *(inited + 174) = -4864;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x436E676965726F66;
  *(inited + 192) = 0xEF79636E65727275;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD00000000000001BLL;
  *(inited + 216) = 0x80000001B788B7C0;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 25705;
  *(inited + 240) = 0xE200000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x49746E756F636361;
  *(inited + 264) = 0xE900000000000064;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000019;
  *(inited + 288) = 0x80000001B78822D0;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000019;
  *(inited + 312) = 0x80000001B78822D0;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000019;
  *(inited + 336) = 0x80000001B7875460;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000019;
  *(inited + 360) = 0x80000001B7875460;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000019;
  *(inited + 384) = 0x80000001B7875460;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000014;
  *(inited + 408) = 0x80000001B788B7E0;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000014;
  *(inited + 432) = 0x80000001B788B7E0;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x6156737574617473;
  *(inited + 456) = 0xEB0000000065756CLL;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x6156737574617473;
  *(inited + 480) = 0xEB0000000065756CLL;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x746361736E617274;
  *(inited + 504) = 0xEF657461446E6F69;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0x6144646574736F70;
  *(inited + 528) = 0xEA00000000006574;
  *(inited + 536) = swift_getKeyPath();
  strcpy((inited + 544), "merchantName");
  *(inited + 557) = 0;
  *(inited + 558) = -5120;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000016;
  *(inited + 576) = 0x80000001B7882370;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD00000000000001ELL;
  *(inited + 600) = 0x80000001B788B770;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0, &qword_1B780D3E0);
  swift_arrayDestroy();
  return v1;
}

unint64_t _s10FinanceKit18ManagedTransactionC20comparablePredicatesSDys10AnyKeyPathCSo11NSPredicateCGSgvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F208, &qword_1B786A0A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = swift_getKeyPath();
  v1 = sub_1B7800838();
  v2 = objc_opt_self();
  v3 = [v2 expressionForKeyPath_];

  v4 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v3 rightExpression:v4 modifier:0 type:5 options:0];

  *(inited + 40) = v5;
  v6 = sub_1B7202524(inited);
  swift_setDeallocating();
  sub_1B7205418(inited + 32, &unk_1EB99DBB0, &unk_1B7808F60);
  return v6;
}

unint64_t sub_1B77B4DA8()
{
  result = qword_1EB99E330;
  if (!qword_1EB99E330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MerchantCategoryCode, &type metadata for MerchantCategoryCode, v0, v1);
    atomic_store(result, &qword_1EB99E330);
  }

  return result;
}

uint64_t sub_1B77B4E44(uint64_t a1)
{
  result = sub_1B71A6BF4(&qword_1EB99A768, type metadata accessor for Transaction, protocol conformance descriptor for Transaction);
  *(a1 + 8) = result;
  return result;
}

void sub_1B77B4ED4(uint64_t a1)
{
  sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, qword_1EDAFCF10, &type metadata for CurrencyAmount);
    if (v2 <= 0x3F)
    {
      sub_1B77B506C(319, &qword_1EDAFC4A8, type metadata accessor for Decimal);
      if (v3 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EDAFCC50, &type metadata for MerchantCategoryCode);
        if (v4 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            sub_1B77FF988();
            if (v6 <= 0x3F)
            {
              sub_1B77B506C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
              if (v7 <= 0x3F)
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

void sub_1B77B506C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B77B5214()
{
  result = qword_1EB99E338;
  if (!qword_1EB99E338)
  {
    result = swift_getWitnessTable(byte_1B786CD70, &type metadata for Transaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E338);
  }

  return result;
}

unint64_t sub_1B77B526C()
{
  result = qword_1EB99E340;
  if (!qword_1EB99E340)
  {
    result = swift_getWitnessTable(byte_1B786CCE0, &type metadata for Transaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E340);
  }

  return result;
}

unint64_t sub_1B77B52C4()
{
  result = qword_1EB99E348;
  if (!qword_1EB99E348)
  {
    result = swift_getWitnessTable(asc_1B786CD08, &type metadata for Transaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E348);
  }

  return result;
}

uint64_t sub_1B77B5318(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B788CAC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B788CAE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B788B7C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875C70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7882370 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B788B770 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B787E2A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC000000656D614ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657461446E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6144646574736F70 && a2 == 0xEA00000000006574)
  {

    return 13;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_1B77B5780()
{
  result = qword_1EB99E350;
  if (!qword_1EB99E350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MerchantCategoryCode, &type metadata for MerchantCategoryCode, v0, v1);
    atomic_store(result, &qword_1EB99E350);
  }

  return result;
}

uint64_t BankConnectInstitutionMatchingCacheError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t BankConnectInstitutionMatchingCache.__allocating_init(store:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = [*(a1 + 16) newBackgroundContext];
  *(v2 + 112) = v3;
  [v3 setMergePolicy_];

  return v2;
}

uint64_t BankConnectInstitutionMatchingCache.init(store:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = [*(a1 + 16) newBackgroundContext];
  *(v1 + 112) = v3;
  [v3 setMergePolicy_];

  return v1;
}

uint64_t sub_1B77B591C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a2;
  v5 = sub_1B78000B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v38 - v9;
  v10 = type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  if (qword_1EB98EAB0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EB994960);
  v46 = a1;
  sub_1B77B707C(a1, v15);

  v40 = v16;
  v17 = sub_1B7800098();
  v18 = sub_1B78011B8();

  v19 = os_log_type_enabled(v17, v18);
  v41 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v39 = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v47 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1B71A3EF8(v45, a3, &v47);
    *(v21 + 12) = 2080;
    sub_1B77B707C(v15, v13);
    v23 = sub_1B7800908();
    v24 = v5;
    v26 = v25;
    sub_1B77B70E0(v15);
    v27 = sub_1B71A3EF8(v23, v26, &v47);
    v5 = v24;

    *(v21 + 14) = v27;
    _os_log_impl(&dword_1B7198000, v17, v18, "Asked to add institutions response to cache for pass serial: %s. response: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v22, -1, -1);
    v28 = v21;
    v6 = v39;
    MEMORY[0x1B8CA7A40](v28, -1, -1);
  }

  else
  {

    sub_1B77B70E0(v15);
  }

  v29 = v46;
  v30 = v44;
  sub_1B7280900(v46 + *(v10 + 20), v44);
  v31 = sub_1B77FF988();
  v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
  sub_1B71F31EC(v30);
  if (v32 == 1)
  {
    sub_1B77B713C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v34 = v42;
    v35 = v43;
    v36 = (*(v6 + 16))(v43, v40, v5);
    MEMORY[0x1EEE9AC00](v36);
    v37 = v41;
    *(&v38 - 6) = v45;
    *(&v38 - 5) = v37;
    *(&v38 - 4) = v29;
    *(&v38 - 3) = v34;
    *(&v38 - 2) = v35;
    sub_1B7801468();
    return (*(v6 + 8))(v35, v5);
  }
}

void sub_1B77B5D8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24[1] = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ManagedInstitutionMatchingResponse();
  sub_1B77B707C(a3, v12);
  v13 = *(a4 + 112);

  v14 = v13;
  v15 = ManagedInstitutionMatchingResponse.__allocating_init(passSerial:institutionsResponseWithExpiration:context:)(a1, a2, v12, v14);
  if (!v5)
  {

    v24[0] = 0;
    v16 = [v14 save_];
    v17 = v24[0];
    if (v16)
    {

      v18 = v17;
      v19 = sub_1B7800098();
      v20 = sub_1B78011B8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_1B71A3EF8(a1, a2, v24);
        _os_log_impl(&dword_1B7198000, v19, v20, "Added cache entry for pass serial: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1B8CA7A40](v22, -1, -1);
        MEMORY[0x1B8CA7A40](v21, -1, -1);
      }
    }

    else
    {
      v23 = v24[0];
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

uint64_t sub_1B77B5FBC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[2] = a3;
  v5 = sub_1B78000B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB98EAB0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EB994960);

  v10 = sub_1B7800098();
  v11 = sub_1B78011B8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = v6;
    v13 = v12;
    v14 = v5;
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136315138;
    *(v13 + 4) = sub_1B71A3EF8(a1, a2, &v22);
    _os_log_impl(&dword_1B7198000, v10, v11, "Retrieving institutions response from cache for pass serial: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = v15;
    v5 = v14;
    MEMORY[0x1B8CA7A40](v16, -1, -1);
    v17 = v13;
    v6 = v21[0];
    MEMORY[0x1B8CA7A40](v17, -1, -1);
  }

  v18 = v21[1];
  v19 = (*(v6 + 16))(v8, v9, v5);
  MEMORY[0x1EEE9AC00](v19);
  v21[-4] = a1;
  v21[-3] = a2;
  v21[-2] = v18;
  v21[-1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E360, &qword_1B786D1A8);
  sub_1B7801468();
  return (*(v6 + 8))(v8, v5);
}

void sub_1B77B6258(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = a3;
  v37 = a5;
  v38 = a4;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInstitutionMatchingResponse();
  v44.receiver = swift_getObjCClassFromMetadata();
  v44.super_class = &OBJC_METACLASS____TtC10FinanceKit34ManagedInstitutionMatchingResponse;
  v42 = objc_msgSendSuper2(&v44, sel_fetchRequest);
  sub_1B77FF938();
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7808C50;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1B721FF04();
  v36 = a1;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v39 = a2;

  v12 = sub_1B77FF8B8();
  *(v11 + 96) = sub_1B7205540(0, &qword_1EDAF93C8, 0x1E695DF00);
  *(v11 + 104) = sub_1B71B592C();
  *(v11 + 72) = v12;
  v13 = sub_1B78010E8();
  v14 = v7;
  v15 = v42;
  (*(v8 + 8))(v10, v14);
  [v15 setPredicate_];

  v16 = v41;
  v17 = sub_1B7801498();
  if (v16)
  {

    return;
  }

  v18 = v39;
  if (v17 >> 62)
  {
    v27 = v17;
    v28 = sub_1B7801958();
    v17 = v27;
    v19 = v18;
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_10:

    v26 = 1;
    goto LABEL_11;
  }

  v19 = v39;
  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1B8CA5DC0](0);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v20 = *(v17 + 32);
  }

  v21 = v20;

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  v22 = [v21 institutionsResponseData];
  v23 = sub_1B77FF5B8();
  v25 = v24;

  sub_1B72CFDBC();
  sub_1B77FE8D8();

  sub_1B720A388(v23, v25);

  v26 = v45;
LABEL_11:

  sub_1B77B7354(v26);
  v29 = sub_1B7800098();
  v30 = sub_1B78011B8();
  sub_1B77B7364(v26);

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45 = v32;
    *v31 = 136315394;
    v43 = v26;
    sub_1B77B7354(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E360, &qword_1B786D1A8);
    v33 = sub_1B7800908();
    v35 = sub_1B71A3EF8(v33, v34, &v45);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1B71A3EF8(v36, v19, &v45);
    _os_log_impl(&dword_1B7198000, v29, v30, "Returning cached response: %s from cache for pass serial: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v32, -1, -1);
    MEMORY[0x1B8CA7A40](v31, -1, -1);
  }

  else
  {
  }

  *v37 = v26;
}

uint64_t sub_1B77B6730(uint64_t a1)
{
  v3 = sub_1B78000B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB98EAB0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_1EB994960);
  v11 = *(v7 + 16);
  v31 = a1;
  v11(v9, a1, v6);
  v30 = v10;
  v12 = sub_1B7800098();
  v13 = sub_1B78011B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27[1] = v1;
    v17 = v16;
    v34 = v16;
    *v15 = 136315138;
    sub_1B72D0FA4();
    v18 = sub_1B7802068();
    v28 = v4;
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1B71A3EF8(v18, v20, &v34);
    v4 = v28;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1B7198000, v12, v13, "Asked to remove expired responses from cache for expiration: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1B8CA7A40](v17, -1, -1);
    v22 = v15;
    v3 = v29;
    MEMORY[0x1B8CA7A40](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = v32;
  v23 = v33;
  v25 = (*(v4 + 16))(v33, v30, v3);
  MEMORY[0x1EEE9AC00](v25);
  v27[-4] = v31;
  v27[-3] = v24;
  v27[-2] = v23;
  sub_1B7801468();
  return (*(v4 + 8))(v23, v3);
}

void sub_1B77B6AB4(uint64_t a1, uint64_t a2)
{
  v49[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for ManagedInstitutionMatchingResponse();
  v48.receiver = swift_getObjCClassFromMetadata();
  v48.super_class = &OBJC_METACLASS____TtC10FinanceKit34ManagedInstitutionMatchingResponse;
  v4 = objc_msgSendSuper2(&v48, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = sub_1B77FF8B8();
  *(v5 + 56) = sub_1B7205540(0, &qword_1EDAF93C8, 0x1E695DF00);
  *(v5 + 64) = sub_1B71B592C();
  *(v5 + 32) = v6;
  v7 = sub_1B78010E8();
  [v4 setPredicate_];

  v8 = *(a2 + 112);
  v9 = sub_1B7801498();
  if (v2)
  {
    goto LABEL_34;
  }

  v10 = v9;
  v11 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
  {
    v13 = MEMORY[0x1E69E7CC0];
    v47 = v4;
    if (i)
    {
      v49[0] = MEMORY[0x1E69E7CC0];
      sub_1B71FDB50(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
      }

      v45 = v11;
      v46 = v8;
      v13 = v49[0];
      if ((v10 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          MEMORY[0x1B8CA5DC0](v4, v10);
          v14 = [swift_unknownObjectRetain() passSerial];
          v15 = sub_1B7800868();
          v17 = v16;
          swift_unknownObjectRelease_n();

          v49[0] = v13;
          v19 = v13[2];
          v18 = v13[3];
          if (v19 >= v18 >> 1)
          {
            sub_1B71FDB50((v18 > 1), v19 + 1, 1);
            v13 = v49[0];
          }

          v4 = (v4 + 1);
          v13[2] = v19 + 1;
          v20 = &v13[2 * v19];
          v20[4] = v15;
          v20[5] = v17;
        }

        while (i != v4);
      }

      else
      {
        v4 = (v10 + 32);
        do
        {
          v21 = *v4;
          v22 = [v21 passSerial];
          v23 = sub_1B7800868();
          v25 = v24;

          v49[0] = v13;
          v27 = v13[2];
          v26 = v13[3];
          if (v27 >= v26 >> 1)
          {
            sub_1B71FDB50((v26 > 1), v27 + 1, 1);
            v13 = v49[0];
          }

          v13[2] = v27 + 1;
          v28 = &v13[2 * v27];
          v28[4] = v23;
          v28[5] = v25;
          ++v4;
          --i;
        }

        while (i);
      }

      v11 = v45;
      v8 = v46;
    }

    v29 = v11 ? sub_1B7801958() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v8;
    if (!v29)
    {
      break;
    }

    v31 = 0;
    v11 = v10 & 0xC000000000000001;
    v8 = (v10 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v11)
      {
        v4 = v10;
        v32 = MEMORY[0x1B8CA5DC0](v31, v10);
      }

      else
      {
        if (v31 >= v8[2])
        {
          goto LABEL_38;
        }

        v4 = v10;
        v32 = *(v10 + 8 * v31 + 32);
      }

      v33 = v32;
      v10 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      [v30 deleteObject_];

      ++v31;
      v34 = v10 == v29;
      v10 = v4;
      if (v34)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_30:

  v49[0] = 0;
  if (![v30 save_])
  {
    v44 = v49[0];

    sub_1B77FF318();

    swift_willThrow();
    v4 = v47;
LABEL_34:

    return;
  }

  v35 = v49[0];

  v36 = sub_1B7800098();
  v37 = sub_1B78011B8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v49[0] = v39;
    *v38 = 136315138;
    v40 = MEMORY[0x1B8CA4F60](v13, MEMORY[0x1E69E6158]);
    v42 = v41;

    v43 = sub_1B71A3EF8(v40, v42, v49);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_1B7198000, v36, v37, "Removed the following expired results from cache: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1B8CA7A40](v39, -1, -1);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
  }

  else
  {
  }
}

uint64_t BankConnectInstitutionMatchingCache.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B77B707C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77B70E0(uint64_t a1)
{
  v2 = type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B77B713C()
{
  result = qword_1EB99E358;
  if (!qword_1EB99E358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectInstitutionMatchingCacheError, &type metadata for BankConnectInstitutionMatchingCacheError, v0, v1);
    atomic_store(result, &qword_1EB99E358);
  }

  return result;
}

unint64_t sub_1B77B71F8()
{
  result = qword_1EB99E368;
  if (!qword_1EB99E368)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectInstitutionMatchingCacheError, &type metadata for BankConnectInstitutionMatchingCacheError, v0, v1);
    atomic_store(result, &qword_1EB99E368);
  }

  return result;
}

double sub_1B77B7354(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_1B77B7364(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedAccountDataDeleter.delete(fullyQualifiedAccountIdentifier:context:)(FinanceKit::FullyQualifiedAccountIdentifier fullyQualifiedAccountIdentifier, NSManagedObjectContext context)
{
  object = fullyQualifiedAccountIdentifier.accountID._object;
  countAndFlagsBits = fullyQualifiedAccountIdentifier.accountID._countAndFlagsBits;
  v4 = type metadata accessor for RawBankConnectData.Actions(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FF338();
  v33 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v34 = *countAndFlagsBits;
  v13 = *(countAndFlagsBits + 16);
  v14 = *(countAndFlagsBits + 24);
  type metadata accessor for ManagedInternalAccount();
  v37 = v34;
  v38 = v13;
  v39 = v14;
  v15 = v35;
  v16 = static ManagedInternalAccount.existingAccount(with:in:)(&v37);
  if (!v15)
  {
    *&v34 = v10;
    v35 = v6;
    if (v16)
    {
      v32 = 0;
      v17 = v16;
      if ([v16 isAccountEnabled])
      {
        sub_1B77B77B0();
        swift_allocError();
        *v18 = 1;
        swift_willThrow();
      }

      else
      {
        v31 = v17;
        v20 = [v17 accountBalanceObjects];
        sub_1B78014D8();

        sub_1B77FF328();
        while (v39)
        {
          sub_1B72051F0(&v37, v36);
          sub_1B77B7950();
          swift_dynamicCast();
          v21 = v40;
          [object deleteObject_];

          sub_1B77FF328();
        }

        v22 = *(v33 + 8);
        v22(v12, v7);
        v23 = [v31 transactionObjects];
        v24 = v34;
        sub_1B78014D8();
        while (1)
        {

          sub_1B77FF328();
          if (!v39)
          {
            break;
          }

          sub_1B72051F0(&v37, v36);
          sub_1B77B7950();
          swift_dynamicCast();
          v23 = v40;
          [object deleteObject_];
        }

        v22(v24, v7);
        v25 = v31;
        v26 = [v31 actionsObject];
        [object deleteObject_];
        v27 = v35;
        if (qword_1EB98E9C8 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v4, qword_1EBA45918);
        sub_1B77B7804(v28, v27);
        v29 = [objc_allocWithZone(type metadata accessor for ManagedAccountActions()) initWithContext_];
        _s10FinanceKit21ManagedAccountActionsC6update_5usingyAC_AA18RawBankConnectDataO0E0VtFZ_0(v29, v27);
        sub_1B77B78F4(v27);
        [v25 setActionsObject_];
      }
    }

    else
    {
      sub_1B77B77B0();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }
}

unint64_t sub_1B77B77B0()
{
  result = qword_1EB99E370;
  if (!qword_1EB99E370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedAccountDataDeleter.AccountDataDeletingError, &type metadata for ManagedAccountDataDeleter.AccountDataDeletingError, v0, v1);
    atomic_store(result, &qword_1EB99E370);
  }

  return result;
}

uint64_t sub_1B77B7804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Actions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ManagedAccountDataDeleter.AccountDataDeletingError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t sub_1B77B78F4(uint64_t a1)
{
  v2 = type metadata accessor for RawBankConnectData.Actions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B77B7950()
{
  result = qword_1EB990590;
  if (!qword_1EB990590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB990590);
  }

  return result;
}

unint64_t sub_1B77B79A0()
{
  result = qword_1EB99E378;
  if (!qword_1EB99E378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedAccountDataDeleter.AccountDataDeletingError, &type metadata for ManagedAccountDataDeleter.AccountDataDeletingError, v0, v1);
    atomic_store(result, &qword_1EB99E378);
  }

  return result;
}

uint64_t ManagedApplePayMerchantTokenDeferredPaymentDetails.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538, &unk_1B7813260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v8;
  v14 = v7;
  v9 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(0);
  sub_1B72DD85C(a1 + *(v9 + 20), v6);

  ManagedApplePayMerchantTokenDeferredPaymentDetails.__allocating_init(amount:paymentDateComponents:context:)(v13, v6, a2);
  v11 = v10;
  sub_1B77B7E60(a1);
  return v11;
}

void ManagedApplePayMerchantTokenDeferredPaymentDetails.__allocating_init(amount:paymentDateComponents:context:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v39 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538, &unk_1B7813260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_1B77FED28();
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = objc_allocWithZone(v4);
  v37 = a3;
  v18 = [v17 initWithContext_];
  v19 = v18;
  if (v16)
  {
    v20 = sub_1B7801608();
  }

  else
  {
    v20 = 0;
  }

  [v18 setAmountValue_];

  v21 = v10;
  if (v16)
  {
    v41[0] = v12;
    v41[1] = v13;
    v41[2] = v14;
    v41[3] = v15;
    v41[4] = v16;
    sub_1B7215720(v41, v40);
    v22 = sub_1B7800838();
  }

  else
  {
    v22 = 0;
  }

  v23 = v39;
  [v18 setAmountCurrencyCode_];

  sub_1B72DD85C(v23, v9);
  v24 = v38;
  if ((*(v38 + 48))(v9, 1, v10) == 1)
  {

    sub_1B77B7EBC(v23);
    sub_1B77B7EBC(v9);
    return;
  }

  v25 = v36;
  (*(v24 + 32))();
  v26 = sub_1B77FEC58();
  if (v27)
  {
    goto LABEL_25;
  }

  if (v26 < -32768)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v26 >= 0x8000)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = sub_1B7802288();
  [v18 setPaymentYear_];

  v29 = sub_1B77FEC78();
  if (v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v29 < -32768)
  {
    goto LABEL_21;
  }

  if (v29 >= 0x8000)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = sub_1B7802288();
  [v18 setPaymentMonth_];

  v32 = sub_1B77FEC08();
  if ((v33 & 1) == 0)
  {
    v34 = v32;

    if (v34 >= -32768)
    {
      if (v34 < 0x8000)
      {
        v35 = sub_1B7802288();
        [v18 setPaymentDay_];

        sub_1B77B7EBC(v23);
        (*(v24 + 8))(v25, v21);
        return;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1B77B7E60(uint64_t a1)
{
  v2 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B77B7EBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538, &unk_1B7813260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double ManagedApplePayMerchantTokenDeferredPaymentDetails.amount.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 amountValue];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 amountCurrencyCode];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B7800868();
      v10 = v9;

      v11 = sub_1B7801678();
      CurrencyAmount.init(_:currencyCode:)(v11, v12, v13, v8, v10, v17);

      v14 = v18;
      result = *v17;
      v16 = v17[1];
      *a1 = v17[0];
      *(a1 + 16) = v16;
      *(a1 + 32) = v14;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ManagedApplePayMerchantTokenDeferredPaymentDetails.paymentDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1B77FFB08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = [v2 paymentYear];
  if (v14)
  {
    v15 = v14;
    v16 = [v2 paymentMonth];
    if (v16)
    {
      v17 = v16;
      v18 = [v2 paymentDay];
      if (v18)
      {
        v19 = v18;
        (*(v8 + 104))(v10, *MEMORY[0x1E6969830], v7);
        sub_1B77FFB18();
        (*(v8 + 8))(v10, v7);
        v20 = sub_1B77FFC88();
        (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
        v21 = sub_1B77FFCF8();
        (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
        [v15 integerValue];
        [v17 integerValue];
        [v19 integerValue];
        sub_1B77FECD8();

        v22 = sub_1B77FED28();
        return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
      }
    }

    else
    {
      v17 = v15;
    }
  }

  v24 = sub_1B77FED28();
  v25 = *(*(v24 - 8) + 56);

  return v25(a1, 1, 1, v24);
}

id ManagedApplePayMerchantTokenDeferredPaymentDetails.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenDeferredPaymentDetails.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenDeferredPaymentDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BankConnectWebServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B77B85F8()
{
  result = qword_1EB99E380;
  if (!qword_1EB99E380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectWebServiceError, &type metadata for BankConnectWebServiceError, v0, v1);
    atomic_store(result, &qword_1EB99E380);
  }

  return result;
}

id ManagedFoundInMailItemImporter.addOrUpdateFoundInMailItem(_:in:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for FoundInMailItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ManagedFoundInMailItem();
  v9 = v8;
  v10 = static ManagedFoundInMailItem.mailItem(withMessageID:in:)(*a1, a1[1]);
  if (!v2)
  {
    v9 = v10;
    if (v10)
    {
      ManagedFoundInMailItem.update(with:context:)(a1, a2);
    }

    else
    {
      sub_1B7437084(a1, v7);
      v9 = [objc_allocWithZone(v8) initWithContext_];
      ManagedFoundInMailItem.update(with:context:)(v7, a2);

      sub_1B74370E8(v7);
      ManagedFoundInMailItem.orderDetails.getter();
    }
  }

  return v9;
}

uint64_t TransactionStatisticsCollection.currency.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransactionStatisticsCollection.statistics(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TransactionStatistics(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ExtractedOrderConfigurationEmailItem.BrandType.rawValue.getter()
{
  v1 = v0[1];
  v2 = 0x72656972726163;
  if (v1 != 1)
  {
    v2 = *v0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x746E61686372656DLL;
  }

  sub_1B7237C18(*v0, v1);
  return v3;
}

void ExtractedOrderConfigurationEmailItem.BrandType.init(rawValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x746E61686372656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x72656972726163 && v3 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  *a3 = v4;
  a3[1] = v3;
}

uint64_t ExtractedOrderConfigurationEmailItem.brandDisplayName.getter()
{
  v1 = *v0;

  return v1;
}

void ExtractedOrderConfigurationEmailItem.brandDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ExtractedOrderConfigurationEmailItem.brandType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B7237C18(v2, v3);
}

uint64_t ExtractedOrderConfigurationEmailItem.brandType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B7237BC4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ExtractedOrderConfigurationEmailItem.updatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExtractedOrderConfigurationEmailItem(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ExtractedOrderConfigurationEmailItem(uint64_t a1)
{
  result = qword_1EB99E3B8;
  if (!qword_1EB99E3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExtractedOrderConfigurationEmailItem.updatedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedOrderConfigurationEmailItem(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExtractedOrderConfigurationEmailItem.init(brandDisplayName:brandType:updatedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = *a3;
  v7 = *(type metadata accessor for ExtractedOrderConfigurationEmailItem(0) + 24);
  v8 = sub_1B77FF988();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_1B77B8D30()
{
  v1 = 0x707954646E617262;
  if (*v0 != 1)
  {
    v1 = 0x4464657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1B77B8D9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B77B9CF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B77B8DC4(uint64_t a1)
{
  v2 = sub_1B77B98F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77B8E00(uint64_t a1)
{
  v2 = sub_1B77B98F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrderConfigurationEmailItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E388, &qword_1B786D5B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77B98F4();
  sub_1B78023F8();
  LOBYTE(v12) = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v12 = *(v3 + 16);
    v13 = v9;
    v11[15] = 1;
    sub_1B7237C18(v12, v9);
    sub_1B77B9948();
    sub_1B7801FC8();
    sub_1B7237BC4(v12, v13);
    type metadata accessor for ExtractedOrderConfigurationEmailItem(0);
    LOBYTE(v12) = 2;
    sub_1B77FF988();
    sub_1B71A6F54(&qword_1EDAF65F0, MEMORY[0x1E6969538]);
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

void ExtractedOrderConfigurationEmailItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_1B77FF988();
  v18 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E3A0, &qword_1B786D5B8);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ExtractedOrderConfigurationEmailItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77B98F4();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = a1;
    v12 = v20;
    v13 = v21;
    LOBYTE(v23) = 0;
    *v10 = sub_1B7801DF8();
    *(v10 + 1) = v14;
    v17 = v14;
    v24 = 1;
    sub_1B77B999C();
    sub_1B7801E48();
    *(v10 + 1) = v23;
    LOBYTE(v23) = 2;
    sub_1B71A6F54(&unk_1EDAF65E0, MEMORY[0x1E6969558]);
    v16 = v5;
    sub_1B7801E48();
    (*(v12 + 8))(v7, v22);
    (*(v18 + 32))(&v10[*(v8 + 24)], v16, v13);
    sub_1B77B99F0(v10, v19);
    __swift_destroy_boxed_opaque_existential_1(v11);
    sub_1B77B9A54(v10, type metadata accessor for ExtractedOrderConfigurationEmailItem);
  }
}

uint64_t FinanceStore.extractedOrderConfigurationEmailItem(forEmailAddress:updatedDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for FinanceStore.Message(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77B9498, 0, 0);
}

uint64_t sub_1B77B9498()
{
  v1 = v0[8];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999CB8, &unk_1B784CEC0) + 48);
  *v1 = v4;
  *(v1 + 1) = v3;
  v6 = sub_1B77FF988();
  (*(*(v6 - 8) + 16))(&v1[v5], v2, v6);
  swift_storeEnumTagMultiPayload();

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1B77B95E0;
  v8 = v0[8];
  v9 = v0[2];

  return sub_1B7277D20(v9, v8);
}

uint64_t sub_1B77B95E0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 80) = v0;

  sub_1B77B9A54(v2, type metadata accessor for FinanceStore.Message);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B726E850, 0, 0);
}

uint64_t _s10FinanceKit36ExtractedOrderConfigurationEmailItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[2];
  v8 = a2[3];
  v9 = 0xE700000000000000;
  v10 = 0x72656972726163;
  if (v6 != 1)
  {
    v10 = a1[2];
    v9 = a1[3];
  }

  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x746E61686372656DLL;
  }

  if (v6)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x72656972726163;
  if (v8 != 1)
  {
    v14 = a2[2];
    v13 = a2[3];
  }

  if (v8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x746E61686372656DLL;
  }

  if (v8)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  if (v11 != v15 || v12 != v16)
  {
    v17 = sub_1B78020F8();
    sub_1B7237C18(v5, v6);
    sub_1B7237C18(v7, v8);

    if (v17)
    {
      goto LABEL_26;
    }

    return 0;
  }

  sub_1B7237C18(a1[2], a1[3]);
  sub_1B7237C18(v7, v8);

LABEL_26:
  type metadata accessor for ExtractedOrderConfigurationEmailItem(0);

  return sub_1B77FF918();
}

unint64_t sub_1B77B98F4()
{
  result = qword_1EB99E390;
  if (!qword_1EB99E390)
  {
    result = swift_getWitnessTable(asc_1B786D894, &type metadata for ExtractedOrderConfigurationEmailItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E390);
  }

  return result;
}

unint64_t sub_1B77B9948()
{
  result = qword_1EB99E398;
  if (!qword_1EB99E398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExtractedOrderConfigurationEmailItem.BrandType, &type metadata for ExtractedOrderConfigurationEmailItem.BrandType, v0, v1);
    atomic_store(result, &qword_1EB99E398);
  }

  return result;
}

unint64_t sub_1B77B999C()
{
  result = qword_1EB99E3A8;
  if (!qword_1EB99E3A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExtractedOrderConfigurationEmailItem.BrandType, &type metadata for ExtractedOrderConfigurationEmailItem.BrandType, v0, v1);
    atomic_store(result, &qword_1EB99E3A8);
  }

  return result;
}

uint64_t sub_1B77B99F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderConfigurationEmailItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77B9A54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B77B9AB8()
{
  result = qword_1EB99E3B0;
  if (!qword_1EB99E3B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExtractedOrderConfigurationEmailItem.BrandType, &type metadata for ExtractedOrderConfigurationEmailItem.BrandType, v0, v1);
    atomic_store(result, &qword_1EB99E3B0);
  }

  return result;
}

uint64_t sub_1B77B9B34(uint64_t a1)
{
  result = sub_1B77FF988();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit36ExtractedOrderConfigurationEmailItemV9BrandTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1B77B9BF4()
{
  result = qword_1EB99E3C8;
  if (!qword_1EB99E3C8)
  {
    result = swift_getWitnessTable(aB7_0, &type metadata for ExtractedOrderConfigurationEmailItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E3C8);
  }

  return result;
}

unint64_t sub_1B77B9C4C()
{
  result = qword_1EB99E3D0;
  if (!qword_1EB99E3D0)
  {
    result = swift_getWitnessTable(byte_1B786D7DC, &type metadata for ExtractedOrderConfigurationEmailItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E3D0);
  }

  return result;
}

unint64_t sub_1B77B9CA4()
{
  result = qword_1EB99E3D8;
  if (!qword_1EB99E3D8)
  {
    result = swift_getWitnessTable(asc_1B786D804, &type metadata for ExtractedOrderConfigurationEmailItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E3D8);
  }

  return result;
}

uint64_t sub_1B77B9CF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001B787A9A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954646E617262 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4464657461647075 && a2 == 0xEB00000000657461)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1B77B9E28()
{
  result = qword_1EB99E3E0;
  if (!qword_1EB99E3E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExtractedOrderConfigurationEmailItem.BrandType, &type metadata for ExtractedOrderConfigurationEmailItem.BrandType, v0, v1);
    atomic_store(result, &qword_1EB99E3E0);
  }

  return result;
}

id TransactionStatisticsCollectionQuery.predicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TransactionStatisticsCollectionQuery.anchorDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransactionStatisticsCollectionQuery(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TransactionStatisticsCollectionQuery(uint64_t a1)
{
  result = qword_1EB99E3E8;
  if (!qword_1EB99E3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransactionStatisticsCollectionQuery.anchorDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TransactionStatisticsCollectionQuery(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TransactionStatisticsCollectionQuery.intervalComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransactionStatisticsCollectionQuery(0) + 28);
  v4 = sub_1B77FED28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TransactionStatisticsCollectionQuery.intervalComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TransactionStatisticsCollectionQuery(0) + 28);
  v4 = sub_1B77FED28();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TransactionStatisticsCollectionQuery.init(predicate:options:anchorDate:intervalComponents:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  *a5 = a1;
  *(a5 + 8) = v8;
  v9 = type metadata accessor for TransactionStatisticsCollectionQuery(0);
  v10 = *(v9 + 24);
  v11 = sub_1B77FF988();
  (*(*(v11 - 8) + 32))(a5 + v10, a3, v11);
  v12 = *(v9 + 28);
  v13 = sub_1B77FED28();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

id sub_1B77BA2D8()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t _s10FinanceKit36TransactionStatisticsCollectionQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1B729D790();
    v6 = v5;
    v7 = v4;
    v8 = sub_1B7801558();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    type metadata accessor for TransactionStatisticsCollectionQuery(0);
    if (sub_1B77FF918())
    {

      JUMPOUT(0x1B8CA2F10);
    }
  }

  return 0;
}

void sub_1B77BA40C(uint64_t a1)
{
  sub_1B729D9E4(319);
  if (v1 <= 0x3F)
  {
    sub_1B77FF988();
    if (v2 <= 0x3F)
    {
      sub_1B77FED28();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t InternalAccountAsyncSequence.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  sub_1B7227AFC(v1 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_accountID, &v44 - v6);
  v8 = *(v1 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyToken);
  LOBYTE(v9) = *(v1 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyToken + 8);
  LOBYTE(v10) = *(v1 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_isMonitoring);
  sub_1B719B06C(v1 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyProvider, v55);
  v11 = *(v1 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_coreDataStore);
  v46 = v7;
  sub_1B7227AFC(v7, v5);
  sub_1B719B06C(v55, v53);
  sub_1B72274E8(v8, v9);
  v12 = sub_1B72020F4(&unk_1F2F42500);
  sub_1B7205418(&unk_1F2F42520, &qword_1EB98F4D8, &qword_1B7809240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E3F8, &qword_1B786D970);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = MEMORY[0x1E69E7CC0];
  *(v13 + qword_1EDB08720) = 0;
  v14 = v13 + qword_1EDB086F0;
  *v14 = 0;
  *(v14 + 8) = -1;
  v15 = qword_1EDB08700;
  if (qword_1EDAF6588 != -1)
  {
LABEL_23:
    swift_once();
  }

  v16 = sub_1B78000B8();
  v17 = __swift_project_value_buffer(v16, qword_1EDAF6590);
  (*(*(v16 - 8) + 16))(v13 + v15, v17, v16);
  sub_1B7227AFC(v5, v13 + qword_1EDB086F8);
  *(v13 + 32) = v10;
  *(v13 + qword_1EDB08748) = v11;
  v18 = (v13 + qword_1EDB08740);
  *v18 = sub_1B77BAFBC;
  v18[1] = 0;
  v19 = *v14;
  *v14 = v8;
  v20 = *(v14 + 8);
  *(v14 + 8) = v9;

  sub_1B7201CF8(v19, v20);
  v21 = *__swift_project_boxed_opaque_existential_1(v53, v54);
  v22 = type metadata accessor for FinanceStore();
  v10 = &off_1F2F66960;
  v51 = v22;
  v52 = &off_1F2F66960;
  v50[0] = v21;
  sub_1B719B06C(v50, v49);
  v9 = swift_allocObject();
  sub_1B71E4C44(v49, v9 + 16);

  __swift_destroy_boxed_opaque_existential_1(v50);
  v23 = (v13 + qword_1EDB08708);
  *v23 = &unk_1B7810520;
  v23[1] = v9;
  v24 = *__swift_project_boxed_opaque_existential_1(v53, v54);
  v51 = v22;
  v52 = &off_1F2F66960;
  v50[0] = v24;
  sub_1B719B06C(v50, v49);
  v25 = swift_allocObject();
  sub_1B71E4C44(v49, v25 + 16);

  __swift_destroy_boxed_opaque_existential_1(v50);
  v26 = (v13 + qword_1EDB08718);
  *v26 = &unk_1B7824A70;
  v26[1] = v25;
  *(v13 + qword_1EDB08710) = v12;
  v27 = [objc_opt_self() defaultCenter];
  sub_1B78013F8();

  sub_1B78013C8();
  v28 = [*(v11 + 16) persistentStoreCoordinator];
  v29 = [v28 persistentStores];

  sub_1B72BB97C();
  v12 = sub_1B7800C38();

  v45 = v5;
  v44 = v13;
  if (!(v12 >> 62))
  {
    v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_25:

    v38 = 0;
    v40 = 0;
    v36 = v45;
    v37 = v44;
    goto LABEL_26;
  }

  v11 = sub_1B7801958();
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_4:
  v8 = 0;
  v14 = 0x6C61636F4CLL;
  v48 = v12 & 0xC000000000000001;
  v15 = v12 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v48)
    {
      v30 = MEMORY[0x1B8CA5DC0](v8, v12);
    }

    else
    {
      if (v8 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v30 = *(v12 + 8 * v8 + 32);
    }

    v5 = v30;
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = [v30 configurationName];
    v31 = sub_1B7800868();
    v13 = v32;

    if (v31 == 0x6C61636F4CLL && v13 == 0xE500000000000000)
    {
      break;
    }

    v34 = sub_1B78020F8();

    if (v34)
    {
      goto LABEL_18;
    }

    ++v8;
    if (v9 == v11)
    {
      goto LABEL_25;
    }
  }

LABEL_18:

  v35 = [v5 identifier];

  v36 = v45;
  v37 = v44;
  if (v35)
  {
    v38 = sub_1B7800868();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

LABEL_26:
  v41 = (v37 + qword_1EDB08730);
  *v41 = v38;
  v41[1] = v40;
  *(v37 + qword_1EDB08728) = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v42 = _os_activity_create(&dword_1B7198000, "FinancialDataAsyncIterator", qword_1EDAFA650, OS_ACTIVITY_FLAG_DETACHED);
  sub_1B7205418(v36, &unk_1EB993A10, &qword_1B780B4A0);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_1B7205418(v46, &unk_1EB993A10, &qword_1B780B4A0);
  result = __swift_destroy_boxed_opaque_existential_1(v53);
  *(v37 + qword_1EDB08738) = v42;
  *v47 = v37;
  return result;
}

uint64_t InternalAccountAsyncSequence.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return sub_1B73DFFE4(a1);
}

uint64_t sub_1B77BAC6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B723838C;

  return sub_1B73DFFE4(a1);
}

uint64_t sub_1B77BAD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B7800CD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B77BADB8, v6);
}

uint64_t sub_1B77BADB8()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1B73DE6C4;
  v2 = *(v0 + 24);

  return sub_1B73DFFE4(v2);
}

uint64_t InternalAccountAsyncSequence.deinit()
{
  sub_1B7205418(v0 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_accountID, &unk_1EB993A10, &qword_1B780B4A0);
  sub_1B7201CF8(*(v0 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyToken), *(v0 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyToken + 8));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyProvider));

  return v0;
}

uint64_t InternalAccountAsyncSequence.__deallocating_deinit()
{
  sub_1B7205418(v0 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_accountID, &unk_1EB993A10, &qword_1B780B4A0);
  sub_1B7201CF8(*(v0 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyToken), *(v0 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyToken + 8));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyProvider));

  return swift_deallocClassInstance();
}

double sub_1B77BAF84@<D0>(uint64_t *a1@<X8>)
{
  InternalAccountAsyncSequence.makeAsyncIterator()(a1);

  return result;
}

unint64_t sub_1B77BAFF4()
{
  result = qword_1EB99E400;
  if (!qword_1EB99E400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InternalAccountAsyncSequence.Iterator, &type metadata for InternalAccountAsyncSequence.Iterator, v0, v1);
    atomic_store(result, &qword_1EB99E400);
  }

  return result;
}

uint64_t type metadata accessor for InternalAccountAsyncSequence(uint64_t a1)
{
  result = qword_1EB99E408;
  if (!qword_1EB99E408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B77BB09C(uint64_t a1)
{
  sub_1B73F170C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B77BB180(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOWORD(v4) = 0;
  }

  *a2 = v4;
}

void sub_1B77BB1D8(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1B77BB230(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
}

unint64_t sub_1B77BB2D8()
{
  result = qword_1EB99E418;
  if (!qword_1EB99E418)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatisticsOption, &type metadata for TransactionStatisticsOption, v0, v1);
    atomic_store(result, &qword_1EB99E418);
  }

  return result;
}

unint64_t sub_1B77BB330()
{
  result = qword_1EB99E420;
  if (!qword_1EB99E420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatisticsOption, &type metadata for TransactionStatisticsOption, v0, v1);
    atomic_store(result, &qword_1EB99E420);
  }

  return result;
}

unint64_t sub_1B77BB438()
{
  result = qword_1EB99E428;
  if (!qword_1EB99E428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatisticsOption, &type metadata for TransactionStatisticsOption, v0, v1);
    atomic_store(result, &qword_1EB99E428);
  }

  return result;
}

unint64_t sub_1B77BB490()
{
  result = qword_1EB99E430;
  if (!qword_1EB99E430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatisticsOption, &type metadata for TransactionStatisticsOption, v0, v1);
    atomic_store(result, &qword_1EB99E430);
  }

  return result;
}

BOOL sub_1B77BB520(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1B77BB550@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1B77BB57C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for TransactionStatisticsOption(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for TransactionStatisticsOption(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

id WalletExposedDB.__allocating_init(store:migratedAccountsProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store] = a1;
  sub_1B719B06C(a2, &v6[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_migratedAccountsProvider]);
  v7 = qword_1EDAFB7C0;

  if (v7 != -1)
  {
    swift_once();
  }

  *&v6[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_financeStore] = qword_1EDAFB7C8;
  v10.receiver = v6;
  v10.super_class = v3;

  v8 = objc_msgSendSuper2(&v10, sel_init);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

id WalletExposedDB.init(store:migratedAccountsProvider:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store] = a1;
  sub_1B719B06C(a2, &v2[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_migratedAccountsProvider]);
  v4 = qword_1EDAFB7C0;

  if (v4 != -1)
  {
    swift_once();
  }

  *&v2[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_financeStore] = qword_1EDAFB7C8;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WalletExposedDB();

  v5 = objc_msgSendSuper2(&v7, sel_init);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

id WalletExposedDB.__allocating_init(store:financeStore:migratedAccountsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_1B77BBD6C(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

id WalletExposedDB.init(store:financeStore:migratedAccountsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_1B77BBC94(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v13;
}

id WalletExposedDB.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalletExposedDB.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalletExposedDB();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B77BBC94(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *&a4[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store] = a1;
  sub_1B719B06C(v15, &a4[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_migratedAccountsProvider]);
  *&a4[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_financeStore] = a2;
  v14.receiver = a4;
  v14.super_class = type metadata accessor for WalletExposedDB();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

id sub_1B77BBD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(type metadata accessor for WalletExposedDB());
  (*(v11 + 16))(v13, a3, a5);
  return sub_1B77BBC94(a1, a2, v13, v14, a5, a6);
}

id sub_1B77BBE68()
{
  if (qword_1EDAF8960 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAF8968;
  os_unfair_lock_lock((qword_1EDAF8968 + 24));
  sub_1B75E5458(v1 + 2, v8);
  os_unfair_lock_unlock(v1 + 6);
  if (!v0)
  {
    v2 = *(v8[0] + 16);

    if (qword_1EDAFB7C0 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDAFB7C8;
    v4 = type metadata accessor for WalletExposedDB();
    v5 = objc_allocWithZone(v4);
    v8[3] = type metadata accessor for FinanceStore();
    v8[4] = &protocol witness table for FinanceStore;
    v8[0] = v3;
    *&v5[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store] = v2;
    sub_1B719B06C(v8, &v5[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_migratedAccountsProvider]);
    *&v5[OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_financeStore] = v3;
    v7.receiver = v5;
    v7.super_class = v4;
    swift_retain_n();
    v1 = objc_msgSendSuper2(&v7, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ExtensionTerminator.terminateProcess(forBundleIdentifier:explanation:)(FinanceKit::BundleIdentifier forBundleIdentifier, Swift::String explanation)
{
  countAndFlagsBits = explanation._countAndFlagsBits;
  object = forBundleIdentifier.rawValue._object;
  v5 = *forBundleIdentifier.rawValue._countAndFlagsBits;
  v6 = *(forBundleIdentifier.rawValue._countAndFlagsBits + 8);
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  v10[0] = v5;
  v10[1] = v6;
  v9 = (*(v8 + 8))(&v11, v10, object, countAndFlagsBits, v7, v8);
  v11(v9);
}

double sub_1B77BC100(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  v12[0] = v6;
  v12[1] = v7;
  v10 = (*(v9 + 8))(&v13, v12, a2, a3, v8, v9);
  v13(v10);

  return result;
}

id FKAuthorizationSession.init(_:)(void *a1)
{
  v2 = sub_1B77FFA18();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - v7;
  v9 = ManagedAuthorizationSession.authorizationType.getter();
  v10 = [a1 id];
  sub_1B77FF9E8();

  v33 = sub_1B77FF9B8();
  v11 = *(v3 + 8);
  v11(v8, v2);
  v31 = [a1 consentId];
  v12 = [a1 consentToken];
  v13 = [a1 consentAuthorizationURI];
  v14 = [a1 extensionPayload];
  if (v14)
  {
    v15 = v14;

    v16 = sub_1B7800708();
  }

  else
  {
    v16 = 0;
  }

  v32 = v9;
  v17 = objc_allocWithZone(FKAuthorizationConsent);
  v18 = v31;
  v19 = [v17 initWithConsentId:v31 token:v12 authorizationURI:v13 extensionPayload:v16];

  v20 = [a1 codeVerifier];
  v21 = [a1 previousConsentUUID];
  if (v21)
  {
    v22 = v21;
    sub_1B77FF9E8();

    v23 = sub_1B77FF9B8();
    v11(v6, v2);
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B759DE50();
  v25 = FKInstitution.init(_:)([a1 institutionObject]);
  v26 = [a1 fpanId];
  LOWORD(v30) = v32;
  v27 = v33;
  v28 = [v24 initWithSessionId:v33 consent:v19 codeVerifier:v20 previousConsentUUID:v23 institution:v25 fpanId:v26 authorizationType:v30];

  return v28;
}

uint64_t FKAuthorizationSession.authorizationSession.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_1B77FFA18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 sessionId];
  v64 = v13;
  sub_1B77FF9E8();

  v15 = [v2 consent];
  v16 = [v15 consentId];
  v17 = sub_1B7800868();
  v62 = v18;
  v63 = v17;

  v19 = [v15 token];
  v20 = sub_1B7800868();
  v60 = v21;
  v61 = v20;

  v22 = [v15 authorizationURI];
  v23 = sub_1B7800868();
  v58 = v24;
  v59 = v23;

  v25 = [v15 extensionPayload];
  if (v25)
  {
    v26 = v25;
    v57 = sub_1B7800728();
  }

  else
  {

    v57 = 0;
  }

  v27 = [v2 previousConsentUUID];
  if (v27)
  {
    v28 = v27;
    sub_1B77FF9E8();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v65 = v11;
  v66 = v10;
  v30 = *(v11 + 56);
  v67 = v9;
  v30(v9, v29, 1, v10);
  v31 = [v2 codeVerifier];
  v32 = sub_1B7800868();
  v55 = v33;
  v56 = v32;

  v34 = [v2 institution];
  FKInstitution.institution.getter(v6);

  v35 = [v2 fpanId];
  if (v35)
  {
    v36 = v35;
    v37 = v6;
    v38 = sub_1B7800868();
    v40 = v39;
  }

  else
  {
    v37 = v6;
    v38 = 0;
    v40 = 0;
  }

  v41 = [v2 authorizationType];
  if (v41 == 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = v41 == 1;
  }

  v43 = type metadata accessor for BankConnectAuthorizationSession(0);
  v44 = v43[7];
  v45 = v66;
  v30((a1 + v44), 1, 1, v66);
  v46 = (a1 + v43[9]);
  (*(v65 + 32))(a1, v64, v45);
  v47 = (a1 + v43[5]);
  v48 = v62;
  *v47 = v63;
  v47[1] = v48;
  v49 = v60;
  v47[2] = v61;
  v47[3] = v49;
  v50 = v58;
  v47[4] = v59;
  v47[5] = v50;
  v47[6] = v57;
  sub_1B741129C(v67, a1 + v44);
  v51 = (a1 + v43[6]);
  v52 = v55;
  *v51 = v56;
  v51[1] = v52;
  result = sub_1B739983C(v37, a1 + v43[8]);
  *v46 = v38;
  v46[1] = v40;
  *(a1 + v43[10]) = v42;
  return result;
}

void FKAuthorizationConsent.authorizationConsent.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 consentId];
  v5 = sub_1B7800868();
  v7 = v6;

  v8 = [v2 token];
  v9 = sub_1B7800868();
  v11 = v10;

  v12 = [v2 authorizationURI];
  v13 = sub_1B7800868();
  v15 = v14;

  v16 = [v2 extensionPayload];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B7800728();
  }

  else
  {
    v18 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v13;
  a1[5] = v15;
  a1[6] = v18;
}

uint64_t TransactionStatus.localizedDescription.getter()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

FinanceKit::TransactionStatus_optional __swiftcall TransactionStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B77BCD48()
{
  result = qword_1EB99E450;
  if (!qword_1EB99E450)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994DB8, &qword_1B782C380);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB99E450);
  }

  return result;
}

unint64_t sub_1B77BCDCC()
{
  result = qword_1EB99E458;
  if (!qword_1EB99E458)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatus, &type metadata for TransactionStatus, v0, v1);
    atomic_store(result, &qword_1EB99E458);
  }

  return result;
}

unint64_t static ManagedMapsBrand.brand(withMUID:in:)(uint64_t a1)
{
  v2 = v1;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit16ManagedMapsBrand;
  v4 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E76D8];
  *(v5 + 16) = xmmword_1B7807CD0;
  v7 = MEMORY[0x1E69E7738];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  v8 = sub_1B78010E8();
  [v4 setPredicate_];

  result = sub_1B7801498();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v2 = v10;

    return v2;
  }

  __break(1u);
  return result;
}

void ManagedMapsBrand.update(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B77BE7D4(a1, v2, type metadata accessor for MapsBrand, type metadata accessor for MapsBrand, type metadata accessor for MapsBrand);
  v7 = type metadata accessor for MapsBrand(0);
  sub_1B7205588(a1 + *(v7 + 64), v6, &unk_1EB994C70, &qword_1B7809800);
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF3F8();
    (*(v9 + 8))(v6, v8);
  }

  [v2 setLogoURL_];
}

uint64_t *ManagedMapsBrand.__allocating_init(brand:context:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B77BF3C0(a1, a2);

  return v6;
}

void ManagedMapsBrand.update(with:encodedStylingInfo:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WPCClassificationMapsItem(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v3 muid];
  sub_1B77BF904(a1, v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  sub_1B7228588(a2, a3);
  WPCClassificationMapsItem.init(muid:rawBrand:encodedStylingInfo:)(v13, v9, a2, a3, v12);
  sub_1B77BE7D4(v12, v3, type metadata accessor for WPCClassificationMapsItem, type metadata accessor for WPCClassificationMapsItem, type metadata accessor for WPCClassificationMapsItem);
  sub_1B77BF96C(v12, type metadata accessor for WPCClassificationMapsItem);
  sub_1B77BE434(a1);
}

uint64_t *ManagedMapsBrand.__allocating_init(muid:rawBrand:encodedStylingInfo:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WPCClassificationMapsItem(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - v19;
  v21 = objc_allocWithZone(v6);
  sub_1B77BF904(a2, v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  sub_1B7228588(a3, a4);
  WPCClassificationMapsItem.init(muid:rawBrand:encodedStylingInfo:)(a1, v14, a3, a4, v20);
  sub_1B77BF904(v20, v18, type metadata accessor for WPCClassificationMapsItem);
  v22 = a5;
  v23 = sub_1B77BF66C(v18, v22, v21, type metadata accessor for WPCClassificationMapsItem, type metadata accessor for WPCClassificationMapsItem, type metadata accessor for WPCClassificationMapsItem);

  sub_1B77BF96C(v20, type metadata accessor for WPCClassificationMapsItem);
  v24 = v23;
  sub_1B77BE434(a2);

  sub_1B72380B8(a3, a4);
  sub_1B77BF96C(a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  return v24;
}

uint64_t MapsBrand.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v80 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v80 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v80 - v15;
  v17 = a1;
  v100 = [v17 muid];
  v18 = [v17 resultProviderIdentifierValue];
  v19 = v18;
  if (v18)
  {
    v99 = [v18 intValue];
  }

  else
  {
    v99 = 0;
  }

  v20 = [v17 name];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1B7800868();
    v97 = v23;
    v98 = v22;
  }

  else
  {
    v97 = 0;
    v98 = 0;
  }

  v24 = [v17 phoneNumber];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1B7800868();
    v95 = v27;
    v96 = v26;
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v28 = [v17 url];
  if (v28)
  {
    v29 = v28;
    sub_1B77FF478();

    v30 = sub_1B77FF4F8();
    (*(*(v30 - 8) + 56))(v16, 0, 1, v30);
  }

  else
  {
    v31 = sub_1B77FF4F8();
    (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
  }

  v32 = [v17 heroImageURL];
  if (v32)
  {
    v33 = v32;
    sub_1B77FF478();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = sub_1B77FF4F8();
  v36 = *(*(v35 - 8) + 56);
  v36(v14, v34, 1, v35);
  v37 = [v17 heroImageAttributionName];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1B7800868();
    v92 = v40;
    v93 = v39;
  }

  else
  {
    v92 = 0;
    v93 = 0;
  }

  v102 = v14;
  v41 = [v17 walletCategoryValue];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 shortValue];

    MapsCategory.init(rawValue:)(v43);
    v91 = v106;
  }

  else
  {
    v91 = 8;
    v106 = 8;
  }

  v44 = [v17 mapsCategoryIdentifier];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1B7800868();
    v89 = v47;
    v90 = v46;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v48 = [v17 encodedStylingInfo];
  if (v48)
  {
    v49 = v48;
    v50 = sub_1B77FF5B8();
    v87 = v51;
    v88 = v50;
  }

  else
  {
    v87 = 0xF000000000000000;
    v88 = 0;
  }

  v52 = [v17 businessChatURL];
  v101 = v16;
  if (v52)
  {
    v53 = v52;
    sub_1B77FF478();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = 1;
  v36(v11, v54, 1, v35);
  v56 = [v17 lastProcessedDate];

  v103 = v11;
  if (v56)
  {
    sub_1B77FF928();

    v55 = 0;
  }

  v57 = sub_1B77FF988();
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v60 = 1;
  v86 = v57;
  v85 = v59;
  v84 = v58 + 56;
  (v59)(v5, v55, 1);
  v61 = [v17 logoURL];
  v104 = v5;
  if (v61)
  {
    v62 = v61;
    sub_1B77FF478();

    v60 = 0;
  }

  v83 = v19 == 0;

  v63 = v60;
  v64 = v36;
  v36(v105, v63, 1, v35);
  v65 = type metadata accessor for MapsBrand(0);
  v66 = v65[8];
  v67 = v94;
  v64(v94 + v66, 1, 1, v35);
  v81 = v65[9];
  v64(v67 + v81, 1, 1, v35);
  v68 = v65[11];
  v69 = (v67 + v65[10]);
  *(v67 + v68) = 8;
  v70 = (v67 + v65[12]);
  v71 = v67 + v65[13];
  *v71 = xmmword_1B7810080;
  v80 = v65[14];
  v64(v67 + v80, 1, 1, v35);
  v82 = v65[15];
  v85(v67 + v82, 1, 1, v86);
  v72 = v65[16];
  v64(v67 + v72, 1, 1, v35);
  v73 = v101;
  *v67 = v100;
  *(v67 + 8) = v99;
  *(v67 + 12) = v83;
  v74 = v97;
  *(v67 + 16) = v98;
  *(v67 + 24) = v74;
  v75 = v95;
  *(v67 + 32) = v96;
  *(v67 + 40) = v75;
  sub_1B7213740(v73, v67 + v66, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7213740(v102, v67 + v81, &unk_1EB994C70, &qword_1B7809800);
  v76 = v92;
  *v69 = v93;
  v69[1] = v76;
  *(v67 + v68) = v91;
  v77 = v89;
  *v70 = v90;
  v70[1] = v77;
  sub_1B72380B8(*v71, *(v71 + 8));
  v78 = v87;
  *v71 = v88;
  *(v71 + 8) = v78;
  sub_1B7213740(v103, v67 + v80, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7213740(v104, v67 + v82, &qword_1EB98EBD0, &unk_1B7809780);
  return sub_1B7213740(v105, v67 + v72, &unk_1EB994C70, &qword_1B7809800);
}

void static ManagedMapsBrand.brand(withEmail:in:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E699B240]);
  v5 = sub_1B7800838();
  v6 = [v4 initWithString_];

  if (!v6)
  {
    return;
  }

  v7 = [v6 domain];
  if (!v7)
  {
LABEL_13:

    return;
  }

  v8 = v7;
  v9 = sub_1B7800868();
  v11 = v10;

  v24.receiver = swift_getObjCClassFromMetadata();
  v24.super_class = &OBJC_METACLASS____TtC10FinanceKit16ManagedMapsBrand;
  v12 = objc_msgSendSuper2(&v24, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80, &unk_1B780C050);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B781A380;
  strcpy(v23, "http://www.");
  HIDWORD(v23[1]) = -352321536;
  v25 = v2;
  MEMORY[0x1B8CA4D30](v9, v11);
  v14 = v23[1];
  *(v13 + 32) = v23[0];
  *(v13 + 40) = v14;
  strcpy(v23, "https://www.");
  BYTE5(v23[1]) = 0;
  HIWORD(v23[1]) = -5120;
  MEMORY[0x1B8CA4D30](v9, v11);
  v15 = v23[1];
  *(v13 + 48) = v23[0];
  *(v13 + 56) = v15;
  MEMORY[0x1B8CA4D30](v9, v11);
  *(v13 + 64) = strcpy(v23, "http://");
  *(v13 + 72) = 0xE700000000000000;
  strcpy(v23, "https://");
  BYTE1(v23[1]) = 0;
  WORD1(v23[1]) = 0;
  HIDWORD(v23[1]) = -402653184;
  MEMORY[0x1B8CA4D30](v9, v11);
  v16 = v23[1];
  *(v13 + 80) = v23[0];
  *(v13 + 88) = v16;
  *(v13 + 96) = v9;
  *(v13 + 104) = v11;
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7807CD0;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  *(v17 + 64) = sub_1B7220068();
  *(v17 + 32) = v13;
  v18 = sub_1B78010E8();
  [v12 setPredicate_];

  [v12 setFetchLimit_];
  v19 = sub_1B7801498();
  if (v3)
  {

    return;
  }

  if (v19 >> 62)
  {
    v21 = v19;
    v22 = sub_1B7801958();
    v19 = v21;
    if (v22)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_7:
  if ((v19 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CA5DC0](0);
    goto LABEL_10;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
LABEL_10:

    return;
  }

  __break(1u);
}

uint64_t sub_1B77BE020@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 logoURL];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF478();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF4F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B77BE0C4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &unk_1EB994C70, &qword_1B7809800);
  v7 = *a2;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF3F8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLogoURL_];
}

uint64_t *ManagedMapsBrand.init(brand:context:)(uint64_t a1, void *a2)
{
  v3 = sub_1B77BF3C0(a1, a2);

  return v3;
}

uint64_t *ManagedMapsBrand.init(muid:rawBrand:encodedStylingInfo:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v11 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WPCClassificationMapsItem(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1B77BF904(a2, v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  sub_1B7228588(a3, a4);
  WPCClassificationMapsItem.init(muid:rawBrand:encodedStylingInfo:)(a1, v13, a3, a4, v19);
  sub_1B77BF904(v19, v17, type metadata accessor for WPCClassificationMapsItem);
  v20 = a5;
  v21 = sub_1B77BF66C(v17, v20, v5, type metadata accessor for WPCClassificationMapsItem, type metadata accessor for WPCClassificationMapsItem, type metadata accessor for WPCClassificationMapsItem);

  sub_1B77BF96C(v19, type metadata accessor for WPCClassificationMapsItem);
  v22 = v21;
  sub_1B77BE434(a2);

  sub_1B72380B8(a3, a4);
  sub_1B77BF96C(a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  return v22;
}

void sub_1B77BE434(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498, &qword_1B78587F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  sub_1B7205588(a1 + *(v10 + 28), v6, &qword_1EB997498, &qword_1B78587F0);
  v11 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_1B77BF89C(v6);
    v12 = sub_1B77FF4F8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = 0;
  }

  else
  {
    sub_1B7205588(&v6[*(v11 + 20)], v9, &unk_1EB994C70, &qword_1B7809800);
    sub_1B77BF96C(v6, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    v14 = sub_1B77FF4F8();
    v15 = *(v14 - 8);
    v13 = 0;
    if ((*(v15 + 48))(v9, 1, v14) != 1)
    {
      v13 = sub_1B77FF3F8();
      (*(v15 + 8))(v9, v14);
    }
  }

  [v2 setLogoURL_];
}

id ManagedMapsBrand.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedMapsBrand.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit16ManagedMapsBrand;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

void sub_1B77BE7D4(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v44 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v19 = a3(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  sub_1B77BF904(a1, &v42 - v20, a4);
  v22 = 0;
  if ((v21[12] & 1) == 0)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  }

  [a2 setResultProviderIdentifierValue_];

  if (*(v21 + 3))
  {
    v23 = sub_1B7800838();
  }

  else
  {
    v23 = 0;
  }

  [a2 setName_];

  if (*(v21 + 5))
  {
    v24 = sub_1B7800838();
  }

  else
  {
    v24 = 0;
  }

  [a2 setPhoneNumber_];

  sub_1B7205588(&v21[v19[8]], v18, &unk_1EB994C70, &qword_1B7809800);
  v25 = sub_1B77FF4F8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = 0;
  if (v27(v18, 1, v25) != 1)
  {
    v28 = sub_1B77FF3F8();
    (*(v26 + 8))(v18, v25);
  }

  [a2 setUrl_];

  sub_1B7205588(&v21[v19[9]], v16, &unk_1EB994C70, &qword_1B7809800);
  if (v27(v16, 1, v25) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_1B77FF3F8();
    (*(v26 + 8))(v16, v25);
  }

  v30 = v43;
  [a2 setHeroImageURL_];

  if (*&v21[v19[10] + 8])
  {
    v31 = sub_1B7800838();
  }

  else
  {
    v31 = 0;
  }

  [a2 setHeroImageAttributionName_];

  v32 = v21[v19[11]];
  if (v32 == 8)
  {
    v33 = 0;
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  [a2 setWalletCategoryValue_];

  if (*&v21[v19[12] + 8])
  {
    v34 = sub_1B7800838();
  }

  else
  {
    v34 = 0;
  }

  [a2 setMapsCategoryIdentifier_];

  if (*&v21[v19[13] + 8] >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_1B77FF598();
  }

  [a2 setEncodedStylingInfo_];

  sub_1B7205588(&v21[v19[14]], v30, &unk_1EB994C70, &qword_1B7809800);
  if (v27(v30, 1, v25) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_1B77FF3F8();
    (*(v26 + 8))(v30, v25);
  }

  [a2 setBusinessChatURL_];

  v37 = &v21[v19[15]];
  v38 = v45;
  sub_1B7205588(v37, v45, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B77BF96C(v21, v44);
  v39 = sub_1B77FF988();
  v40 = *(v39 - 8);
  v41 = 0;
  if ((*(v40 + 48))(v38, 1, v39) != 1)
  {
    v41 = sub_1B77FF8B8();
    (*(v40 + 8))(v38, v39);
  }

  [a2 setLastProcessedDate_];
}

void sub_1B77BEDC0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = type metadata accessor for MapsMerchant(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77BF904(a1, v16, type metadata accessor for MapsMerchant);
  v17 = 0;
  if ((v16[28] & 1) == 0)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  }

  [a2 setResultProviderIdentifierValue_];

  if (*(v16 + 5))
  {
    v18 = sub_1B7800838();
  }

  else
  {
    v18 = 0;
  }

  [a2 setName_];

  if (*(v16 + 7))
  {
    v19 = sub_1B7800838();
  }

  else
  {
    v19 = 0;
  }

  [a2 setPhoneNumber_];

  sub_1B7205588(&v16[v14[9]], v13, &unk_1EB994C70, &qword_1B7809800);
  v20 = sub_1B77FF4F8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = 0;
  if (v22(v13, 1, v20) != 1)
  {
    v23 = sub_1B77FF3F8();
    (*(v21 + 8))(v13, v20);
  }

  [a2 setUrl_];

  sub_1B7205588(&v16[v14[10]], v11, &unk_1EB994C70, &qword_1B7809800);
  if (v22(v11, 1, v20) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1B77FF3F8();
    (*(v21 + 8))(v11, v20);
  }

  v25 = v37;
  [a2 setHeroImageURL_];

  if (*&v16[v14[11] + 8])
  {
    v26 = sub_1B7800838();
  }

  else
  {
    v26 = 0;
  }

  [a2 setHeroImageAttributionName_];

  v27 = v16[v14[12]];
  if (v27 == 8)
  {
    v28 = 0;
  }

  else
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  [a2 setWalletCategoryValue_];

  if (*&v16[v14[13] + 8])
  {
    v29 = sub_1B7800838();
  }

  else
  {
    v29 = 0;
  }

  [a2 setMapsCategoryIdentifier_];

  if (*&v16[v14[14] + 8] >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1B77FF598();
  }

  [a2 setEncodedStylingInfo_];

  sub_1B7205588(&v16[v14[15]], v25, &unk_1EB994C70, &qword_1B7809800);
  if (v22(v25, 1, v20) == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_1B77FF3F8();
    (*(v21 + 8))(v25, v20);
  }

  [a2 setBusinessChatURL_];

  v32 = &v16[v14[16]];
  v33 = v38;
  sub_1B7205588(v32, v38, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B77BF96C(v16, type metadata accessor for MapsMerchant);
  v34 = sub_1B77FF988();
  v35 = *(v34 - 8);
  v36 = 0;
  if ((*(v35 + 48))(v33, 1, v34) != 1)
  {
    v36 = sub_1B77FF8B8();
    (*(v35 + 8))(v33, v34);
  }

  [a2 setLastProcessedDate_];
}

uint64_t *sub_1B77BF3C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for MapsBrand(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  sub_1B77BF904(a1, &v22 - v14, type metadata accessor for MapsBrand);
  sub_1B77BF904(v15, v13, type metadata accessor for MapsBrand);
  v16 = sub_1B77BF66C(v13, a2, v3, type metadata accessor for MapsBrand, type metadata accessor for MapsBrand, type metadata accessor for MapsBrand);
  sub_1B77BF96C(v15, type metadata accessor for MapsBrand);
  sub_1B7205588(a1 + *(v10 + 72), v8, &unk_1EB994C70, &qword_1B7809800);
  v17 = sub_1B77FF4F8();
  v18 = *(v17 - 8);
  LODWORD(a2) = (*(v18 + 48))(v8, 1, v17);
  v19 = v16;
  v20 = 0;
  if (a2 != 1)
  {
    v20 = sub_1B77FF3F8();
    (*(v18 + 8))(v8, v17);
  }

  [v19 setLogoURL_];

  sub_1B77BF96C(a1, type metadata accessor for MapsBrand);
  return v19;
}

uint64_t *sub_1B77BF66C(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  swift_getObjectType();
  v12 = [swift_getObjCClassFromMetadata() entity];
  v17.receiver = a3;
  v17.super_class = type metadata accessor for ManagedAbstractMapsItem();
  v13 = objc_msgSendSuper2(&v17, sel_initWithEntity_insertIntoManagedObjectContext_, v12, a2);

  v14 = *a1;
  v15 = v13;
  [v15 setMuid_];
  sub_1B77BE7D4(a1, v15, a4, a5, a6);

  sub_1B77BF96C(a1, a6);
  return v15;
}

uint64_t *sub_1B77BF7C8(uint64_t *a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  v6 = [swift_getObjCClassFromMetadata() entity];
  v11.receiver = a3;
  v11.super_class = type metadata accessor for ManagedAbstractMapsItem();
  v7 = objc_msgSendSuper2(&v11, sel_initWithEntity_insertIntoManagedObjectContext_, v6, a2);

  v8 = *a1;
  v9 = v7;
  [v9 setMuid_];
  sub_1B77BEDC0(a1, v9);

  sub_1B77BF96C(a1, type metadata accessor for MapsMerchant);
  return v9;
}

uint64_t sub_1B77BF89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498, &qword_1B78587F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B77BF904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B77BF96C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BankConnectDataLoaderEnvironment.makeTaskQueue(forConsentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B77BFA04, 0, 0);
}

uint64_t sub_1B77BFA04()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  (*(*(v0 + 104) + 40))(*(v0 + 96));
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = 0;
  v5 = *(v4 + 8);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_1B77BFB7C;

  return v8(v0 + 56, v3, v4);
}

uint64_t sub_1B77BFB7C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 128) = a1;

  sub_1B72630DC(*(v2 + 56), *(v2 + 64), *(v3 + 72));

  return MEMORY[0x1EEE6DFA0](sub_1B77BFCBC, 0, 0);
}

uint64_t sub_1B77BFCBC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[16];

  return v1(v2);
}

NSManagedObjectContext __swiftcall BankConnectDataLoaderEnvironment.makeBackgroundContext()()
{
  v1 = [*((*(v0 + 8))() + 16) newBackgroundContext];

  return v1;
}

uint64_t BankConnectDataLoaderEnvironment.makeWebServiceClient()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6, a1);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

unint64_t sub_1B77BFEE8()
{
  result = qword_1EB99E460;
  if (!qword_1EB99E460)
  {
    result = swift_getWitnessTable(asc_1B786E028, &type metadata for BankConnectNetworkError, v0, v1);
    atomic_store(result, &qword_1EB99E460);
  }

  return result;
}

uint64_t sub_1B77BFF3C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = qword_1EDAF93A8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDAF93B0;
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_1B7800868();
  v11 = sub_1B78008A8();

  return v11;
}

uint64_t sub_1B77C00C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = qword_1EDAF93A8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDAF93B0;
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_1B7800868();
  v11 = sub_1B78008A8();

  return v11;
}

uint64_t type metadata accessor for EndOfPickupWindowFormatter(uint64_t a1)
{
  result = qword_1EB99E468;
  if (!qword_1EB99E468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B77C02C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E4B8, &qword_1B786E200);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77C0ED0();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77C0FE4(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for EndOfPickupWindowFormatter(0);
    v8[14] = 1;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B77C0478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E4A8, &qword_1B786E1F8);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for EndOfPickupWindowFormatter(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  v12 = *(v9 + 28);
  v11[v12] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77C0ED0();
  v13 = v20;
  sub_1B78023C8();
  if (!v13)
  {
    v14 = v18;
    v22 = 0;
    sub_1B77C0FE4(&qword_1EB990870, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
    sub_1B7801E48();
    sub_1B72A2B9C(v19, v11);
    v21 = 1;
    v15 = sub_1B7801E08();
    (*(v14 + 8))(v7, v5);
    v11[v12] = v15 & 1;
    sub_1B77C0F80(v11, v17);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B77C0F24(v11);
}

uint64_t sub_1B77C0748(uint64_t a1)
{
  v2 = sub_1B77C0ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77C0784(uint64_t a1)
{
  v2 = sub_1B77C0ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77C07C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = sub_1B7678898(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B77C08D8(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B77C0FE4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B77C0FE4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B77C0FE4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B77C0A44(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B77C0FE4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B77C0FE4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B77C0FE4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802318();
}

uint64_t sub_1B77C0B98(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B77C0FE4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B77C0FE4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B77C0FE4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B77C0E20(uint64_t a1)
{
  result = sub_1B77C0FE4(&qword_1EB99E498, type metadata accessor for EndOfPickupWindowFormatter, asc_1B786E164);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B77C0E78(uint64_t a1)
{
  result = sub_1B77C0FE4(&qword_1EB99E4A0, type metadata accessor for EndOfPickupWindowFormatter, byte_1B786E1BC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B77C0ED0()
{
  result = qword_1EB99E4B0;
  if (!qword_1EB99E4B0)
  {
    result = swift_getWitnessTable(byte_1B786E2CC, &type metadata for EndOfPickupWindowFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E4B0);
  }

  return result;
}

uint64_t sub_1B77C0F24(uint64_t a1)
{
  v2 = type metadata accessor for EndOfPickupWindowFormatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B77C0F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfPickupWindowFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77C0FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B77C1040()
{
  result = qword_1EB99E4C0;
  if (!qword_1EB99E4C0)
  {
    result = swift_getWitnessTable(byte_1B786E2A4, &type metadata for EndOfPickupWindowFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E4C0);
  }

  return result;
}

unint64_t sub_1B77C1098()
{
  result = qword_1EB99E4C8;
  if (!qword_1EB99E4C8)
  {
    result = swift_getWitnessTable(aB7x, &type metadata for EndOfPickupWindowFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E4C8);
  }

  return result;
}

unint64_t sub_1B77C10F0()
{
  result = qword_1EB99E4D0;
  if (!qword_1EB99E4D0)
  {
    result = swift_getWitnessTable(byte_1B786E23C, &type metadata for EndOfPickupWindowFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E4D0);
  }

  return result;
}

uint64_t FinanceStore.insertOrUpdateBankCredential(credential:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = type metadata accessor for FinanceStore.Message(0);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77C11D8, 0, 0);
}

uint64_t sub_1B77C11D8()
{
  v0[13] = &_s10FinanceKit11FeatureFlagVN_0;
  v1 = sub_1B721D3DC();
  *(v0 + 80) = 7;
  v0[14] = v1;
  v2 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  if ((v2 & 1) == 0)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();

    v6 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[18];
  v4 = v0[15];
  v0[19] = *(v0[16] + 24);
  sub_1B77C15A8(v4, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B77C130C, 0, 0);
}

uint64_t sub_1B77C130C()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1B77C13B0;
  v3 = swift_continuation_init();
  sub_1B7236838(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B77C13B0(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 160) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B77C153C;
  }

  else
  {
    v3 = sub_1B77C14CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B77C14CC()
{
  sub_1B72A820C(*(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77C153C()
{
  sub_1B72A820C(*(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77C15A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankCredential(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FinanceStore.bankCredentials()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for FinanceStore.Message(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77C16A0, 0, 0);
}

uint64_t sub_1B77C16A0()
{
  v0[5] = &_s10FinanceKit11FeatureFlagVN_0;
  v1 = sub_1B721D3DC();
  *(v0 + 16) = 7;
  v0[6] = v1;
  v2 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v2)
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1B77C180C;
    v4 = v0[10];
    v5 = v0[7];

    return sub_1B727864C(v5, v4);
  }

  else
  {
    sub_1B7201CA4();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1B77C180C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 96) = v0;

  sub_1B72A820C(*(v2 + 80));
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B77C1974, 0, 0);
}

uint64_t sub_1B77C1974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.deleteBankCredentials(credentialIdentifiers:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = type metadata accessor for FinanceStore.Message(0);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77C1A6C, 0, 0);
}

uint64_t sub_1B77C1A6C()
{
  v0[13] = &_s10FinanceKit11FeatureFlagVN_0;
  v1 = sub_1B721D3DC();
  *(v0 + 80) = 7;
  v0[14] = v1;
  v2 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  if ((v2 & 1) == 0)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();

    v6 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[19];
  v4 = v0[16];
  v0[20] = *(v0[17] + 24);
  *v3 = v4;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B77C1BA0, 0, 0);
}

uint64_t sub_1B77C1BA0()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_1B77C1C4C;
  v3 = swift_continuation_init();
  sub_1B722F698(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B77C1C4C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 168) = v4;
  if (!v4)
  {
    sub_1B72A820C(*(v2 + 152));

    v5 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B77C1DB0, 0, 0);
}

uint64_t sub_1B77C1DB0()
{
  sub_1B72A820C(*(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

void static UNNotificationContentValueTransformer.register()()
{
  v1 = objc_opt_self();
  v2 = [objc_allocWithZone(v0) init];
  if (qword_1EDAFC4E0 != -1)
  {
    swift_once();
  }

  [v1 setValueTransformer_forName_];
}

uint64_t static UNNotificationContentValueTransformer.allowedTopLevelClasses.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8, &unk_1B7816800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  *(v0 + 32) = sub_1B77C20DC();
  return v0;
}

id UNNotificationContentValueTransformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UNNotificationContentValueTransformer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UNNotificationContentValueTransformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B77C20A4()
{
  result = sub_1B7800838();
  qword_1EDAFC4E8 = result;
  return result;
}

unint64_t sub_1B77C20DC()
{
  result = qword_1EDAFAF18;
  if (!qword_1EDAFAF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAFAF18);
  }

  return result;
}

id static NSValueTransformerName.notificationContentTransformerName.getter()
{
  if (qword_1EDAFC4E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAFC4E8;

  return v1;
}

uint64_t ApplePayTransactionDocumentCredential.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ApplePayTransactionDocumentCredential.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ApplePayTransactionDocumentCredential.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ApplePayTransactionDocumentCredential(0) + 20);
  v4 = sub_1B78004C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ApplePayTransactionDocumentCredential(uint64_t a1)
{
  result = qword_1EB99E510;
  if (!qword_1EB99E510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ApplePayTransactionDocumentCredential.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ApplePayTransactionDocumentCredential(0) + 20);
  v4 = sub_1B78004C8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ApplePayTransactionDocumentCredential.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ApplePayTransactionDocumentCredential(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ApplePayTransactionDocumentCredential.creationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ApplePayTransactionDocumentCredential(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ApplePayTransactionDocumentCredential.init(id:key:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B77FFA18();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
  v10 = *(v9 + 20);
  v11 = sub_1B78004C8();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = *(v9 + 24);
  v13 = sub_1B77FF988();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t static ApplePayTransactionDocumentCredential.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
  if ((MEMORY[0x1B8CA47B0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  return sub_1B77FF918();
}

uint64_t sub_1B77C26F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (MEMORY[0x1B8CA47B0](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  return sub_1B77FF918();
}

id sub_1B77C2774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_1B77FF988();
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x1E697AC30];
  if (*(a1 + 16) && (v48 = v13, v17 = sub_1B72635A0(), (v18 & 1) != 0) && (sub_1B719BDE4(*(a1 + 56) + 32 * v17, v52), (swift_dynamicCast() & 1) != 0))
  {
    sub_1B77FF998();

    v19 = v48;
    if ((*(v48 + 48))(v11, 1, v12) == 1)
    {

      sub_1B7205418(v11, &unk_1EB993A10, &qword_1B780B4A0);
      sub_1B766E428();
      swift_allocError();
      *v20 = 0xD00000000000001DLL;
      *(v20 + 8) = 0x80000001B7889250;
      *(v20 + 16) = 1;
      return swift_willThrow();
    }

    (*(v19 + 32))(v15, v11, v12);
    v23 = v53;
    (*(v19 + 16))(v53, v15, v12);
    v24 = *MEMORY[0x1E697B3C0];
    if (*(a1 + 16) && (v25 = sub_1B72635A0(), (v26 & 1) != 0) && (sub_1B719BDE4(*(a1 + 56) + 32 * v25, v52), (swift_dynamicCast() & 1) != 0))
    {
      v27 = v50;
      v45 = v51;
      v52[0] = v50;
      v52[1] = v51;
      v44 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
      v46 = *(v44 + 20);
      v47 = v27;
      v28 = v27;
      v29 = v45;
      sub_1B720ABEC(v28, v45);
      sub_1B78004A8();
      v30 = *MEMORY[0x1E697ACD0];
      if (*(a1 + 16) && (v31 = sub_1B72635A0(), (v32 & 1) != 0))
      {
        sub_1B719BDE4(*(a1 + 56) + 32 * v31, v52);

        v33 = swift_dynamicCast();
        v34 = v49;
        (*(v49 + 56))(v5, v33 ^ 1u, 1, v6);
        if ((*(v34 + 48))(v5, 1, v6) != 1)
        {
          (*(v48 + 8))(v15, v12);
          sub_1B720A388(v47, v29);
          v35 = *(v34 + 32);
          v35(v8, v5, v6);
          return (v35)(v53 + *(v44 + 24), v8, v6);
        }
      }

      else
      {

        (*(v49 + 56))(v5, 1, 1, v6);
      }

      sub_1B7205418(v5, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B766E428();
      swift_allocError();
      *v42 = v30;
      *(v42 + 8) = 0;
      *(v42 + 16) = 0;
      swift_willThrow();
      v43 = v30;
      sub_1B720A388(v47, v29);
      v38 = 1;
      v23 = v53;
    }

    else
    {

      sub_1B766E428();
      swift_allocError();
      *v36 = v24;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      swift_willThrow();
      v37 = v24;
      v38 = 0;
    }

    v39 = *(v48 + 8);
    v39(v15, v12);
    result = (v39)(v23, v12);
    if (v38)
    {
      v40 = *(type metadata accessor for ApplePayTransactionDocumentCredential(0) + 20);
      v41 = sub_1B78004C8();
      return (*(*(v41 - 8) + 8))(v23 + v40, v41);
    }
  }

  else
  {

    sub_1B766E428();
    swift_allocError();
    *v22 = v16;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    swift_willThrow();
    return v16;
  }

  return result;
}

uint64_t ApplePayTransactionDocumentCredentialVault.accessGroupName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ApplePayTransactionDocumentCredentialVault.serviceName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double ApplePayTransactionDocumentCredentialVault.__allocating_init(accessGroupName:serviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  result = 31536000.0;
  *(v8 + 48) = xmmword_1B786E380;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return result;
}

uint64_t ApplePayTransactionDocumentCredentialVault.init(accessGroupName:serviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = xmmword_1B786E380;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t ApplePayTransactionDocumentCredentialVault.addCredential()@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v112 = *MEMORY[0x1E69E9840];
  v3 = sub_1B78004E8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1B78004C8();
  v102 = *(v4 - 8);
  v103 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1B77FFA18();
  v99 = *(v104 - 8);
  v7 = MEMORY[0x1EEE9AC00](v104);
  v92 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v98 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v87 - v11;
  sub_1B77FFA08();
  sub_1B78004D8();
  sub_1B78004B8();
  v101 = v6;
  sub_1B7800488();
  v93 = v2;
  v105 = result;
  v106 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0, &unk_1B7810380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B786E390;
  v13 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v97 = inited + 32;
  v14 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  *(inited + 40) = v14;
  v15 = *MEMORY[0x1E697ABD0];
  *(inited + 64) = v16;
  *(inited + 72) = v15;
  v96 = v1;
  v17 = v1[3];
  v18 = MEMORY[0x1E69E6158];
  *(inited + 80) = v96[2];
  *(inited + 88) = v17;
  v19 = *MEMORY[0x1E697ABD8];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = *MEMORY[0x1E697ABE0];
  *(inited + 120) = *MEMORY[0x1E697ABE0];
  v21 = *MEMORY[0x1E697ADC8];
  v100 = v16;
  *(inited + 144) = v16;
  *(inited + 152) = v21;
  result = 0;
  v111 = 0xE000000000000000;
  v22 = v13;
  v23 = v14;
  v24 = v15;

  v25 = v19;
  v26 = v20;
  v27 = v21;
  sub_1B7801A78();

  result = 0xD00000000000002BLL;
  v111 = 0x80000001B788E120;
  v95 = sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v28 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v28);

  v29 = v111;
  *(inited + 160) = result;
  *(inited + 168) = v29;
  v30 = *MEMORY[0x1E697AD00];
  v31 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = v30;
  v32 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v33 = *MEMORY[0x1E697AC30];
  *(inited + 224) = v32;
  *(inited + 232) = v33;
  v34 = v32;
  v35 = v30;
  v36 = v33;
  *(inited + 240) = sub_1B77FF9A8();
  *(inited + 248) = v37;
  v38 = *MEMORY[0x1E697AE88];
  *(inited + 264) = v31;
  *(inited + 272) = v38;
  v39 = v96[5];
  *(inited + 280) = v96[4];
  *(inited + 288) = v39;
  v40 = *MEMORY[0x1E697AEB0];
  *(inited + 304) = v31;
  *(inited + 312) = v40;
  *(inited + 320) = 1;
  v41 = *MEMORY[0x1E697B3C0];
  v42 = v34;
  *(inited + 344) = v34;
  *(inited + 352) = v41;
  v43 = MEMORY[0x1E697B318];
  v45 = v105;
  v44 = v106;
  *(inited + 360) = v105;
  *(inited + 368) = v44;
  v46 = *v43;
  *(inited + 384) = MEMORY[0x1E6969080];
  *(inited + 392) = v46;
  v47 = MEMORY[0x1E697B310];
  *(inited + 400) = 1;
  v48 = *v47;
  *(inited + 424) = v42;
  *(inited + 432) = v48;
  *(inited + 464) = v42;
  *(inited + 440) = 1;
  v49 = v38;

  v50 = v40;
  v51 = v41;
  sub_1B720ABEC(v45, v44);
  v52 = v46;
  v53 = v48;
  v96 = sub_1B7202C00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470, &qword_1B7856B20);
  swift_arrayDestroy();
  result = 0;
  if (qword_1EDAF6548 != -1)
  {
    swift_once();
  }

  v54 = sub_1B78000B8();
  v55 = __swift_project_value_buffer(v54, qword_1EDAF6550);
  v57 = v98;
  v56 = v99;
  v58 = v107;
  v59 = v104;
  v90 = v99[2];
  v91 = v99 + 2;
  v90(v98, v107, v104);
  v97 = v55;
  v60 = sub_1B7800098();
  v61 = sub_1B78011F8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v57;
    v63 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v109[0] = v89;
    *v63 = 136315138;
    v88 = sub_1B7802068();
    v64 = v59;
    v66 = v65;
    v67 = v56[1];
    v67(v62, v64);
    v68 = sub_1B71A3EF8(v88, v66, v109);
    v59 = v64;

    *(v63 + 4) = v68;
    _os_log_impl(&dword_1B7198000, v60, v61, "Adding transaction document credential %s to keychain", v63, 0xCu);
    v69 = v89;
    __swift_destroy_boxed_opaque_existential_1(v89);
    v58 = v107;
    MEMORY[0x1B8CA7A40](v69, -1, -1);
    MEMORY[0x1B8CA7A40](v63, -1, -1);
  }

  else
  {

    v67 = v56[1];
    v67(v57, v59);
  }

  sub_1B77C6D98(&qword_1EB98EFC8, type metadata accessor for CFString, byte_1B7808668);
  v70 = sub_1B7800708();

  v71 = SecItemAdd(v70, &result);

  if (v71)
  {
    v72 = sub_1B7800098();
    v73 = sub_1B78011D8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 67109120;
      *(v74 + 4) = v71;
      _os_log_impl(&dword_1B7198000, v72, v73, "Failed to add item to keychain with status: %d", v74, 8u);
      MEMORY[0x1B8CA7A40](v74, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v71 userInfo:0];
    goto LABEL_15;
  }

  if (!result || (v109[0] = result, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB40, &unk_1B786E3A0), (swift_dynamicCast() & 1) == 0))
  {
    sub_1B766E428();
    swift_allocError();
    *v85 = 0xD000000000000015;
    *(v85 + 8) = 0x80000001B788E150;
    *(v85 + 16) = 1;
LABEL_15:
    swift_willThrow();
    goto LABEL_16;
  }

  v100 = v108;
  v75 = v92;
  v90(v92, v58, v59);
  v76 = sub_1B7800098();
  v77 = sub_1B78011F8();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = v75;
    v79 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v109[0] = v99;
    *v79 = 136315138;
    v98 = sub_1B7802068();
    v80 = v59;
    v82 = v81;
    v67(v78, v80);
    v83 = sub_1B71A3EF8(v98, v82, v109);
    v59 = v80;

    *(v79 + 4) = v83;
    _os_log_impl(&dword_1B7198000, v76, v77, "Added transaction document credential %s to keychain", v79, 0xCu);
    v84 = v99;
    __swift_destroy_boxed_opaque_existential_1(v99);
    MEMORY[0x1B8CA7A40](v84, -1, -1);
    MEMORY[0x1B8CA7A40](v79, -1, -1);
  }

  else
  {

    v67(v75, v59);
  }

  sub_1B77C2774(v100, v94);
  v58 = v107;
LABEL_16:
  sub_1B720A388(v105, v106);
  (*(v102 + 8))(v101, v103);
  v67(v58, v59);
  return swift_unknownObjectRelease();
}

uint64_t ApplePayTransactionDocumentCredentialVault.credential(forID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = v2;
  v106 = a1;
  v111[45] = *MEMORY[0x1E69E9840];
  v104 = sub_1B77FFA18();
  v107 = *(v104 - 8);
  v4 = MEMORY[0x1EEE9AC00](v104);
  v105 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v99 = v98 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v103 = v98 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0, &unk_1B7810380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B78100C0;
  v10 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v102 = (inited + 32);
  v11 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  v108 = v12;
  *(inited + 40) = v11;
  v13 = *MEMORY[0x1E697ABD0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  v16 = MEMORY[0x1E69E6158];
  *(inited + 80) = v14;
  *(inited + 88) = v15;
  v17 = *MEMORY[0x1E697AC30];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v10;
  v19 = v11;
  v20 = v13;
  v21 = v106;

  v22 = v17;
  *(inited + 120) = sub_1B77FF9A8();
  *(inited + 128) = v23;
  v24 = *MEMORY[0x1E697AE88];
  *(inited + 144) = v16;
  *(inited + 152) = v24;
  v25 = *(v3 + 40);
  v26 = MEMORY[0x1E697AEB0];
  *(inited + 160) = *(v3 + 32);
  *(inited + 168) = v25;
  v27 = *v26;
  *(inited + 184) = v16;
  *(inited + 192) = v27;
  v28 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v29 = *MEMORY[0x1E697B260];
  *(inited + 224) = v28;
  *(inited + 232) = v29;
  v30 = *MEMORY[0x1E697B270];
  v31 = MEMORY[0x1E697B318];
  *(inited + 240) = *MEMORY[0x1E697B270];
  v32 = *v31;
  *(inited + 264) = v108;
  *(inited + 272) = v32;
  v33 = MEMORY[0x1E697B310];
  *(inited + 280) = 1;
  v34 = *v33;
  *(inited + 304) = v28;
  *(inited + 312) = v34;
  *(inited + 344) = v28;
  *(inited + 320) = 1;
  v35 = v24;

  v36 = v27;
  v37 = v29;
  v38 = v30;
  v39 = v32;
  v40 = v34;
  v41 = sub_1B7202C00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470, &qword_1B7856B20);
  swift_arrayDestroy();
  v111[0] = 0;
  if (qword_1EDAF6548 != -1)
  {
    swift_once();
  }

  v42 = sub_1B78000B8();
  v43 = __swift_project_value_buffer(v42, qword_1EDAF6550);
  v44 = v107;
  v45 = v107 + 16;
  v46 = v103;
  v47 = v21;
  v48 = v104;
  v102 = *(v107 + 16);
  v102(v103, v47, v104);
  v49 = sub_1B7800098();
  v50 = sub_1B78011F8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v98[0] = v41;
    v52 = v48;
    v53 = v51;
    v54 = swift_slowAlloc();
    v98[1] = v45;
    v98[2] = v43;
    v55 = v54;
    v110 = v54;
    *v53 = 136315138;
    sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v56 = sub_1B7802068();
    v57 = v46;
    v59 = v58;
    v60 = *(v44 + 8);
    v60(v57, v52);
    v61 = sub_1B71A3EF8(v56, v59, &v110);

    *(v53 + 4) = v61;
    _os_log_impl(&dword_1B7198000, v49, v50, "Searching for transaction document credential %s in keychain", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1B8CA7A40](v55, -1, -1);
    v62 = v53;
    v48 = v52;
    MEMORY[0x1B8CA7A40](v62, -1, -1);
  }

  else
  {

    v60 = *(v44 + 8);
    v60(v46, v48);
  }

  sub_1B77C6D98(&qword_1EB98EFC8, type metadata accessor for CFString, byte_1B7808668);
  v63 = sub_1B7800708();

  v64 = SecItemCopyMatching(v63, v111);

  v65 = v105;
  if (v64)
  {
    if (v64 == -25300)
    {
      v66 = v99;
      v102(v99, v106, v48);
      v67 = sub_1B7800098();
      v68 = sub_1B78011F8();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v108 = v60;
        v71 = v70;
        v110 = v70;
        *v69 = 136315138;
        sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v72 = sub_1B7802068();
        v74 = v73;
        v108(v66, v48);
        v75 = sub_1B71A3EF8(v72, v74, &v110);

        *(v69 + 4) = v75;
        _os_log_impl(&dword_1B7198000, v67, v68, "Transaction document credential %s not found in keychain", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x1B8CA7A40](v71, -1, -1);
        MEMORY[0x1B8CA7A40](v69, -1, -1);
      }

      else
      {

        v60(v66, v48);
      }

      v93 = 1;
      v94 = v100;
      goto LABEL_21;
    }

    v89 = sub_1B7800098();
    v90 = sub_1B78011D8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 67109120;
      *(v91 + 4) = v64;
      _os_log_impl(&dword_1B7198000, v89, v90, "Failed to search for item in keychain with status: %d", v91, 8u);
      MEMORY[0x1B8CA7A40](v91, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v64 userInfo:0];
    goto LABEL_18;
  }

  if (!v111[0] || (v110 = v111[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB40, &unk_1B786E3A0), (swift_dynamicCast() & 1) == 0))
  {
    sub_1B766E428();
    swift_allocError();
    *v92 = 0xD000000000000015;
    *(v92 + 8) = 0x80000001B788E150;
    *(v92 + 16) = 1;
LABEL_18:
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v76 = v60;
  v77 = v109;
  v102(v65, v106, v48);
  v78 = sub_1B7800098();
  v79 = sub_1B78011F8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v108 = v77;
    v81 = v80;
    v82 = swift_slowAlloc();
    v110 = v82;
    *v81 = 136315138;
    sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v83 = sub_1B7802068();
    v84 = v65;
    v86 = v85;
    v76(v84, v48);
    v87 = sub_1B71A3EF8(v83, v86, &v110);

    *(v81 + 4) = v87;
    _os_log_impl(&dword_1B7198000, v78, v79, "Found transaction document credential %s in keychain", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x1B8CA7A40](v82, -1, -1);
    v88 = v81;
    v77 = v108;
    MEMORY[0x1B8CA7A40](v88, -1, -1);
  }

  else
  {

    v76(v65, v48);
  }

  v94 = v100;
  v97 = v101;
  sub_1B77C2774(v77, v100);
  if (!v97)
  {
    v93 = 0;
LABEL_21:
    v95 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
    (*(*(v95 - 8) + 56))(v94, v93, 1, v95);
  }

  return swift_unknownObjectRelease();
}

unint64_t ApplePayTransactionDocumentCredentialVault.allCredentials()()
{
  v70[40] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
  v65 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v67 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0, &unk_1B7810380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B781F810;
  v4 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v62 = v4;
  v63 = inited + 32;
  v61 = *MEMORY[0x1E697B008];
  v5 = v61;
  type metadata accessor for CFString(0);
  *(inited + 40) = v5;
  v60 = *MEMORY[0x1E697ABD0];
  v6 = v60;
  *(inited + 64) = v7;
  *(inited + 72) = v6;
  v8 = v0[2];
  v59 = v0[3];
  v9 = v59;
  v10 = MEMORY[0x1E69E6158];
  *(inited + 80) = v8;
  *(inited + 88) = v9;
  v11 = *MEMORY[0x1E697AE88];
  *(inited + 104) = v10;
  *(inited + 112) = v11;
  v12 = v0[4];
  v13 = v0[5];
  v14 = MEMORY[0x1E697AEB0];
  *(inited + 120) = v12;
  *(inited + 128) = v13;
  v15 = *v14;
  *(inited + 144) = v10;
  *(inited + 152) = v15;
  v16 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v17 = *MEMORY[0x1E697B260];
  *(inited + 184) = v16;
  *(inited + 192) = v17;
  v18 = *MEMORY[0x1E697B268];
  v19 = MEMORY[0x1E697B318];
  *(inited + 200) = *MEMORY[0x1E697B268];
  v20 = *v19;
  v64 = v7;
  *(inited + 224) = v7;
  *(inited + 232) = v20;
  v21 = MEMORY[0x1E697B310];
  *(inited + 240) = 1;
  v22 = *v21;
  *(inited + 264) = v16;
  *(inited + 272) = v22;
  *(inited + 304) = v16;
  *(inited + 280) = 1;
  v23 = v62;
  v24 = v61;
  v25 = v60;

  v26 = v11;

  v27 = v15;
  v28 = v17;
  v29 = v18;
  v30 = v20;
  v31 = v22;
  sub_1B7202C00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470, &qword_1B7856B20);
  swift_arrayDestroy();
  v70[0] = 0;
  if (qword_1EDAF6548 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v32 = sub_1B78000B8();
    __swift_project_value_buffer(v32, qword_1EDAF6550);
    v33 = sub_1B7800098();
    v34 = sub_1B78011F8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1B7198000, v33, v34, "Searching for transaction document credentials in keychain", v35, 2u);
      MEMORY[0x1B8CA7A40](v35, -1, -1);
    }

    sub_1B77C6D98(&qword_1EB98EFC8, type metadata accessor for CFString, byte_1B7808668);
    v36 = sub_1B7800708();

    v37 = SecItemCopyMatching(v36, v70);

    v38 = v65;
    if (v37)
    {
      break;
    }

    v43 = v66;
    if (!v70[0] || (v69 = v70[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB38, &unk_1B78563B0), (swift_dynamicCast() & 1) == 0))
    {
      v42 = 0x80000001B788E170;
      sub_1B766E428();
      swift_allocError();
      *v56 = 0xD00000000000001FLL;
      *(v56 + 8) = 0x80000001B788E170;
      *(v56 + 16) = 1;
      goto LABEL_26;
    }

    v44 = v68;
    v45 = *(v68 + 16);
    v46 = sub_1B7800098();
    v47 = sub_1B78011F8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = v45;
      _os_log_impl(&dword_1B7198000, v46, v47, "Found %ld transaction document credential(s) in keychain", v48, 0xCu);
      MEMORY[0x1B8CA7A40](v48, -1, -1);
    }

    if (!v45)
    {

LABEL_9:
      v42 = MEMORY[0x1E69E7CC0];
      goto LABEL_27;
    }

    v69 = MEMORY[0x1E69E7CC0];
    sub_1B71FE98C(0, v45, 0);
    v49 = 0;
    v42 = v69;
    while (v49 < *(v44 + 16))
    {

      sub_1B77C2774(v50, v67);
      if (v43)
      {

        goto LABEL_27;
      }

      v69 = v42;
      v52 = *(v42 + 16);
      v51 = *(v42 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1B71FE98C((v51 > 1), v52 + 1, 1);
        v42 = v69;
      }

      ++v49;
      *(v42 + 16) = v52 + 1;
      sub_1B77C6C2C(v67, v42 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v52);
      if (v45 == v49)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  if (v37 == -25300)
  {
    v39 = sub_1B7800098();
    v40 = sub_1B78011F8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1B7198000, v39, v40, "No transaction document credentials found in keychain", v41, 2u);
      MEMORY[0x1B8CA7A40](v41, -1, -1);
    }

    goto LABEL_9;
  }

  v53 = sub_1B7800098();
  v54 = sub_1B78011D8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 67109120;
    *(v55 + 4) = v37;
    _os_log_impl(&dword_1B7198000, v53, v54, "Failed to search for items in keychain with status: %d", v55, 8u);
    MEMORY[0x1B8CA7A40](v55, -1, -1);
  }

  v42 = *MEMORY[0x1E696A768];
  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v37 userInfo:0];
LABEL_26:
  swift_willThrow();
LABEL_27:
  swift_unknownObjectRelease();
  return v42;
}

void *ApplePayTransactionDocumentCredentialVault.credential(validUntil:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_1B77FFA18();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v121 = v116 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v120 = v116 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v135 = v116 - v12;
  v13 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
  v125 = *(v13 - 8);
  v126 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v130 = v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v124 = v116 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v132 = v116 - v18;
  v19 = sub_1B77FF988();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v119 = v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v118 = v116 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v134 = v116 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v116 - v27;
  if (qword_1EDAF6548 != -1)
  {
    swift_once();
  }

  v29 = sub_1B78000B8();
  v30 = __swift_project_value_buffer(v29, qword_1EDAF6550);
  v31 = *(v20 + 16);
  v127 = a1;
  v122 = v31;
  v123 = v20 + 16;
  v31(v28, a1, v19);
  v136 = v30;
  v32 = sub_1B7800098();
  v33 = sub_1B78011F8();
  v34 = os_log_type_enabled(v32, v33);
  v137 = v3;
  v138 = v4;
  v117 = v7;
  v131 = v19;
  v128 = v20;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v142 = v36;
    *v35 = 136315138;
    sub_1B77C6D98(&qword_1EB991200, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v37 = sub_1B7802068();
    v39 = v38;
    v129 = *(v20 + 8);
    v129(v28, v19);
    v40 = sub_1B71A3EF8(v37, v39, &v142);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1B7198000, v32, v33, "Retrieving transaction document credential valid until %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1B8CA7A40](v36, -1, -1);
    MEMORY[0x1B8CA7A40](v35, -1, -1);
  }

  else
  {

    v129 = *(v20 + 8);
    v129(v28, v19);
  }

  v41 = v139;
  result = ApplePayTransactionDocumentCredentialVault.allCredentials()();
  if (!v41)
  {
    v139 = 0;
    v142 = result;
    v116[1] = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E4D8, &qword_1B786E3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E4E0, &qword_1B786E3B8);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1B7808C50;
    swift_getKeyPath();
    v116[0] = sub_1B77C6D98(&qword_1EB98EBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    sub_1B77FED98();
    swift_getKeyPath();
    sub_1B77C6D98(&qword_1EB9905B8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C0]);
    sub_1B77FED98();
    v141 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E4E8, &qword_1B786E400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E4F0, &qword_1B786E408);
    v44 = MEMORY[0x1E69E6328];
    sub_1B728216C(&qword_1EB99E4F8, &qword_1EB99E4E8, &qword_1B786E400, MEMORY[0x1E69E6328]);
    sub_1B728216C(&qword_1EB99E500, &qword_1EB99E4F0, &qword_1B786E408, v44);
    sub_1B728216C(&qword_1EB99E508, &qword_1EB99E4E0, &qword_1B786E3B8, MEMORY[0x1E69683C0]);
    v45 = sub_1B7800AD8();

    if (*(v45 + 16))
    {
      v46 = v124;
      sub_1B77C6C90(v45 + ((*(v125 + 80) + 32) & ~*(v125 + 80)), v124);

      v47 = v132;
      sub_1B77C6C2C(v46, v132);
      v48 = v137;
      v49 = *(v138 + 16);
      v50 = v135;
      v49(v135, v47, v137);
      v51 = v134;
      sub_1B77FF828();
      v52 = v131;
      if (sub_1B7800808())
      {
        v53 = v120;
        v49(v120, v50, v48);
        v54 = v118;
        v122(v118, v51, v52);
        v55 = sub_1B7800098();
        v56 = sub_1B78011F8();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v142 = v140;
          *v57 = 136315394;
          sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v58 = sub_1B7802068();
          v59 = v52;
          v61 = v60;
          v62 = *(v138 + 8);
          v138 += 8;
          v136 = v62;
          v62(v53, v48);
          v63 = sub_1B71A3EF8(v58, v61, &v142);

          *(v57 + 4) = v63;
          *(v57 + 12) = 2080;
          sub_1B77C6D98(&qword_1EB991200, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v64 = v59;
          v65 = sub_1B7802068();
          v67 = v66;
          v68 = v129;
          v129(v54, v59);
          v69 = sub_1B71A3EF8(v65, v67, &v142);

          *(v57 + 14) = v69;
          _os_log_impl(&dword_1B7198000, v55, v56, "Current transaction document credential %s expires after %s, satisfies search criteria", v57, 0x16u);
          v70 = v140;
          swift_arrayDestroy();
          v47 = v132;
          MEMORY[0x1B8CA7A40](v70, -1, -1);
          MEMORY[0x1B8CA7A40](v57, -1, -1);

          v68(v134, v64);
          v136(v135, v137);
        }

        else
        {

          v97 = v129;
          v129(v54, v52);
          v98 = *(v138 + 8);
          v98(v53, v48);
          v97(v134, v52);
          v98(v135, v48);
        }

        v74 = v133;
        return sub_1B77C6C2C(v47, v74);
      }

      v78 = v121;
      v49(v121, v50, v48);
      v79 = v119;
      v122(v119, v51, v52);
      v80 = sub_1B7800098();
      v81 = sub_1B78011F8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v142 = v127;
        *v82 = 136315394;
        sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        LODWORD(v126) = v81;
        v83 = sub_1B7802068();
        v84 = v52;
        v86 = v85;
        v87 = v78;
        v88 = *(v138 + 8);
        v88(v87, v137);
        v89 = sub_1B71A3EF8(v83, v86, &v142);

        *(v82 + 4) = v89;
        *(v82 + 12) = 2080;
        sub_1B77C6D98(&qword_1EB991200, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v90 = sub_1B7802068();
        v92 = v91;
        v93 = v79;
        v94 = v129;
        v129(v93, v84);
        v95 = sub_1B71A3EF8(v90, v92, &v142);

        *(v82 + 14) = v95;
        _os_log_impl(&dword_1B7198000, v80, v126, "Current transaction document credential %s expires after %s, doesn't satisfy search criteria", v82, 0x16u);
        v96 = v127;
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v96, -1, -1);
        MEMORY[0x1B8CA7A40](v82, -1, -1);

        v94(v134, v84);
        v74 = v133;
        v88(v135, v137);
        v48 = v137;
        v75 = v138;
        sub_1B77C6CF4(v132);
        v76 = v130;
      }

      else
      {

        v99 = v79;
        v100 = v78;
        v101 = v129;
        v129(v99, v52);
        v102 = v138;
        v103 = *(v138 + 8);
        v103(v100, v48);
        v101(v51, v131);
        v103(v135, v48);
        v104 = v47;
        v75 = v102;
        sub_1B77C6CF4(v104);
        v76 = v130;
        v74 = v133;
      }
    }

    else
    {

      v71 = sub_1B7800098();
      v72 = sub_1B78011F8();
      v73 = os_log_type_enabled(v71, v72);
      v74 = v133;
      v48 = v137;
      v75 = v138;
      v76 = v130;
      if (v73)
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_1B7198000, v71, v72, "Current transaction document credential not found", v77, 2u);
        MEMORY[0x1B8CA7A40](v77, -1, -1);
      }
    }

    v105 = v139;
    result = ApplePayTransactionDocumentCredentialVault.addCredential()(v76);
    if (v105)
    {
      return result;
    }

    v139 = 0;
    v106 = v117;
    (*(v75 + 16))(v117, v76, v48);
    v107 = sub_1B7800098();
    v108 = sub_1B78011F8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v142 = v140;
      *v109 = 136315138;
      sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v110 = sub_1B7802068();
      v111 = v75;
      v113 = v112;
      (*(v111 + 8))(v106, v48);
      v114 = sub_1B71A3EF8(v110, v113, &v142);

      *(v109 + 4) = v114;
      _os_log_impl(&dword_1B7198000, v107, v108, "Added transaction document credential %s to satisfy search criteria", v109, 0xCu);
      v115 = v140;
      __swift_destroy_boxed_opaque_existential_1(v140);
      MEMORY[0x1B8CA7A40](v115, -1, -1);
      MEMORY[0x1B8CA7A40](v109, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v106, v48);
    }

    v47 = v76;
    return sub_1B77C6C2C(v47, v74);
  }

  return result;
}

void ApplePayTransactionDocumentCredentialVault.deleteCredential(forID:)(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  v73 = sub_1B77FFA18();
  v76 = *(v73 - 8);
  v3 = MEMORY[0x1EEE9AC00](v73);
  v75 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v68 = v67 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v71 = v67 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0, &unk_1B7810380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B781A380;
  v9 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v10 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  *(inited + 40) = v10;
  v11 = *MEMORY[0x1E697ABD0];
  v74 = v12;
  *(inited + 64) = v12;
  *(inited + 72) = v11;
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = MEMORY[0x1E69E6158];
  *(inited + 80) = v13;
  *(inited + 88) = v14;
  v16 = *MEMORY[0x1E697AC30];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  v17 = v9;
  v18 = v70;
  v19 = v10;
  v20 = v11;

  v21 = v16;
  v22 = sub_1B77FF9A8();
  v23 = MEMORY[0x1E697AE88];
  *(inited + 120) = v22;
  *(inited + 128) = v24;
  v25 = *v23;
  *(inited + 144) = v15;
  *(inited + 152) = v25;
  v26 = *(v2 + 32);
  v27 = *(v2 + 40);
  *(inited + 160) = v26;
  *(inited + 168) = v27;
  v28 = *MEMORY[0x1E697AEB0];
  *(inited + 184) = v15;
  *(inited + 192) = v28;
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v29 = v25;

  v30 = v28;
  v31 = sub_1B7202C00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470, &qword_1B7856B20);
  swift_arrayDestroy();
  if (qword_1EDAF6548 != -1)
  {
    swift_once();
  }

  v32 = sub_1B78000B8();
  v33 = __swift_project_value_buffer(v32, qword_1EDAF6550);
  v34 = v76;
  v35 = v71;
  v36 = v73;
  v69 = *(v76 + 16);
  v69(v71, v18, v73);
  v72 = v33;
  v37 = sub_1B7800098();
  v38 = sub_1B78011F8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v67[1] = v31;
    v40 = v39;
    v41 = swift_slowAlloc();
    v77 = v41;
    *v40 = 136315138;
    sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v42 = sub_1B7802068();
    v43 = v35;
    v44 = v18;
    v46 = v45;
    v71 = *(v76 + 8);
    (v71)(v43, v36);
    v47 = sub_1B71A3EF8(v42, v46, &v77);
    v18 = v44;

    *(v40 + 4) = v47;
    _os_log_impl(&dword_1B7198000, v37, v38, "Deleting transaction document credential %s from keychain", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1B8CA7A40](v41, -1, -1);
    MEMORY[0x1B8CA7A40](v40, -1, -1);
  }

  else
  {

    v71 = *(v34 + 8);
    (v71)(v35, v36);
  }

  v48 = v75;
  sub_1B77C6D98(&qword_1EB98EFC8, type metadata accessor for CFString, byte_1B7808668);
  v49 = sub_1B7800708();

  v50 = SecItemDelete(v49);

  if (v50 == -25300)
  {
    v69(v48, v18, v36);
    v51 = sub_1B7800098();
    v52 = sub_1B78011F8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v77 = v54;
      *v53 = 136315138;
      sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v60 = sub_1B7802068();
      v62 = v61;
      (v71)(v48, v36);
      v63 = sub_1B71A3EF8(v60, v62, &v77);

      *(v53 + 4) = v63;
      v59 = "Transaction document credential %s not found in keychain";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (!v50)
  {
    v48 = v68;
    v69(v68, v18, v36);
    v51 = sub_1B7800098();
    v52 = sub_1B78011F8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v77 = v54;
      *v53 = 136315138;
      sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v55 = sub_1B7802068();
      v57 = v56;
      (v71)(v48, v36);
      v58 = sub_1B71A3EF8(v55, v57, &v77);

      *(v53 + 4) = v58;
      v59 = "Deleted transaction document credential %s from keychain";
LABEL_12:
      _os_log_impl(&dword_1B7198000, v51, v52, v59, v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1B8CA7A40](v54, -1, -1);
      MEMORY[0x1B8CA7A40](v53, -1, -1);

      return;
    }

LABEL_13:

    (v71)(v48, v36);
    return;
  }

  v64 = sub_1B7800098();
  v65 = sub_1B78011D8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 67109120;
    *(v66 + 4) = v50;
    _os_log_impl(&dword_1B7198000, v64, v65, "Failed to delete item from keychain with status: %d", v66, 8u);
    MEMORY[0x1B8CA7A40](v66, -1, -1);
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v50 userInfo:0];
  swift_willThrow();
}

void ApplePayTransactionDocumentCredentialVault.deleteAllCredentials(expiredBefore:)(unint64_t a1)
{
  v69 = sub_1B77FFA18();
  v2 = *(v69 - 8);
  v3 = MEMORY[0x1EEE9AC00](v69);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v49 - v5;
  v66 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v65 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v64 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - v14;
  if (qword_1EDAF6548 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_1B78000B8();
    v17 = __swift_project_value_buffer(v16, qword_1EDAF6550);
    v18 = *(v9 + 2);
    v67 = a1;
    v18(v15, a1, v8);
    v54 = v17;
    v19 = sub_1B7800098();
    v20 = sub_1B78011F8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v61 = v2;
      v22 = v21;
      v23 = swift_slowAlloc();
      v70 = v23;
      *v22 = 136315138;
      sub_1B77C6D98(&qword_1EB991200, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v24 = sub_1B7802068();
      v56 = v7;
      v26 = v25;
      v63 = *(v9 + 1);
      v63(v15, v8);
      v27 = sub_1B71A3EF8(v24, v26, &v70);
      v7 = v56;

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1B7198000, v19, v20, "Deleting all transaction document credentials expired before %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1B8CA7A40](v23, -1, -1);
      v28 = v22;
      v2 = v61;
      MEMORY[0x1B8CA7A40](v28, -1, -1);
    }

    else
    {

      v63 = *(v9 + 1);
      v63(v15, v8);
    }

    v29 = v8;
    v30 = v62;
    v31 = ApplePayTransactionDocumentCredentialVault.allCredentials()();
    v15 = v53;
    if (v30)
    {
      break;
    }

    a1 = v31;
    v61 = *(v31 + 16);
    v62 = 0;
    if (!v61)
    {
LABEL_17:

      return;
    }

    v8 = 0;
    v58 = v31 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v57 = (v9 + 8);
    v51 = (v2 + 16);
    v59 = (v2 + 8);
    v2 = 0x417E133800000000;
    *&v32 = 136315138;
    v49 = v32;
    v56 = v7;
    v52 = v29;
    v60 = v31;
    while (v8 < *(a1 + 16))
    {
      sub_1B77C6C90(v58 + *(v68 + 72) * v8, v7);
      v33 = v65;
      sub_1B77FF828();
      v34 = v64;
      sub_1B77FF828();
      v35 = v63;
      v9 = v57;
      v63(v33, v29);
      LOBYTE(v33) = sub_1B77FF8D8();
      v35(v34, v29);
      if (v33)
      {
        v36 = *v51;
        v37 = v69;
        (*v51)(v15, v7, v69);
        v38 = v55;
        v36(v55, v15, v37);
        v39 = sub_1B7800098();
        v40 = sub_1B78011F8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v70 = v50;
          *v41 = v49;
          sub_1B77C6D98(&qword_1EB98F120, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v42 = v69;
          v43 = sub_1B7802068();
          v45 = v44;
          v9 = *v59;
          (*v59)(v38, v42);
          v46 = sub_1B71A3EF8(v43, v45, &v70);
          v15 = v53;

          *(v41 + 4) = v46;
          _os_log_impl(&dword_1B7198000, v39, v40, "Deleting expired transaction document credential %s", v41, 0xCu);
          v47 = v50;
          __swift_destroy_boxed_opaque_existential_1(v50);
          MEMORY[0x1B8CA7A40](v47, -1, -1);
          MEMORY[0x1B8CA7A40](v41, -1, -1);
        }

        else
        {

          v9 = *v59;
          (*v59)(v38, v69);
        }

        a1 = v60;
        v48 = v62;
        ApplePayTransactionDocumentCredentialVault.deleteCredential(forID:)(v15);
        v7 = v56;
        v29 = v52;
        v62 = v48;
        v2 = 0x417E133800000000;
        if (v48)
        {

          v9(v15, v69);
          sub_1B77C6CF4(v7);
          return;
        }

        v9(v15, v69);
      }

      else
      {
        a1 = v60;
      }

      ++v8;
      sub_1B77C6CF4(v7);
      if (v61 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ApplePayTransactionDocumentCredentialVault.deleteAllCredentials()()
{
  v1 = sub_1B77FFA18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF6548 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EDAF6550);
    v6 = sub_1B7800098();
    v7 = sub_1B78011F8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7198000, v6, v7, "Deleting all transaction document credentials", v8, 2u);
      MEMORY[0x1B8CA7A40](v8, -1, -1);
    }

    v9 = ApplePayTransactionDocumentCredentialVault.allCredentials()();
    if (v0)
    {
      break;
    }

    v10 = v9;
    v11 = *(v9 + 16);
    if (!v11)
    {
LABEL_9:

      return;
    }

    v12 = 0;
    v13 = (v2 + 2);
    ++v2;
    while (v12 < *(v10 + 16))
    {
      v14 = *(type metadata accessor for ApplePayTransactionDocumentCredential(0) - 8);
      (*v13)(v4, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v1);
      ApplePayTransactionDocumentCredentialVault.deleteCredential(forID:)(v4);
      ++v12;
      (*v2)(v4, v1);
      if (v11 == v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }
}

uint64_t ApplePayTransactionDocumentCredentialVault.deinit()
{

  return v0;
}

uint64_t ApplePayTransactionDocumentCredentialVault.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B77C6C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77C6C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77C6CF4(uint64_t a1)
{
  v2 = type metadata accessor for ApplePayTransactionDocumentCredential(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B77C6D98(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B77C6E08(uint64_t a1)
{
  result = sub_1B77FFA18();
  if (v2 <= 0x3F)
  {
    result = sub_1B78004C8();
    if (v3 <= 0x3F)
    {
      result = sub_1B77FF988();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t RawBankConnectData.AssetAccount.init(id:fpanIds:maskedAccountNumber:accountName:status:description:balances:actions:clientConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v18 = *a4;
  v17 = a4[1];
  v19 = *(a4 + 16);
  v28 = *a13;
  v20 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  v21 = v20[11];
  v22 = type metadata accessor for RawBankConnectData.Actions(0);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v18;
  *(a9 + 32) = v17;
  *(a9 + 40) = v19;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  sub_1B77C7CBC(a11, a9 + v20[10], type metadata accessor for RawBankConnectData.AccountBalances);
  result = sub_1B7213740(a12, a9 + v21, &qword_1EB990770, &unk_1B786E520);
  *(a9 + v20[12]) = v28;
  return result;
}

uint64_t RawBankConnectData.LiabilityAccount.init(id:fpanIds:maskedAccountNumber:accountName:status:description:balances:creditLimit:minimumPaymentAmount:nextPaymentDate:overduePaymentAmount:actions:clientConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, _OWORD *a13, uint64_t a14, _OWORD *a15, uint64_t a16, char *a17)
{
  v18 = a4[1];
  v41 = *a4;
  v40 = *(a4 + 16);
  v50 = *a17;
  v19 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  v20 = (a9 + v19[11]);
  v20[3] = 0u;
  v20[4] = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  *v20 = 0u;
  v21 = (a9 + v19[12]);
  v21[3] = 0u;
  v21[4] = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *v21 = 0u;
  v22 = v19[13];
  v49 = v22;
  v23 = sub_1B77FF988();
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  v24 = (a9 + v19[14]);
  v24[3] = 0u;
  v24[4] = 0u;
  v24[1] = 0u;
  v24[2] = 0u;
  *v24 = 0u;
  v25 = v19[15];
  v26 = type metadata accessor for RawBankConnectData.Actions(0);
  (*(*(v26 - 8) + 56))(a9 + v25, 1, 1, v26);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v41;
  *(a9 + 32) = v18;
  *(a9 + 40) = v40;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  sub_1B77C7CBC(a11, a9 + v19[10], type metadata accessor for RawBankConnectData.AccountBalances);
  v27 = v20[3];
  v51[2] = v20[2];
  v51[3] = v27;
  v51[4] = v20[4];
  v28 = v20[1];
  v51[0] = *v20;
  v51[1] = v28;
  sub_1B7205418(v51, &qword_1EB990780, &unk_1B7819C00);
  v29 = a12[3];
  v20[2] = a12[2];
  v20[3] = v29;
  v20[4] = a12[4];
  v30 = a12[1];
  *v20 = *a12;
  v20[1] = v30;
  v31 = v21[3];
  v52[2] = v21[2];
  v52[3] = v31;
  v52[4] = v21[4];
  v32 = v21[1];
  v52[0] = *v21;
  v52[1] = v32;
  sub_1B7205418(v52, &qword_1EB990780, &unk_1B7819C00);
  v33 = a13[3];
  v21[2] = a13[2];
  v21[3] = v33;
  v21[4] = a13[4];
  v34 = a13[1];
  *v21 = *a13;
  v21[1] = v34;
  sub_1B7213740(a14, a9 + v49, &qword_1EB98EBD0, &unk_1B7809780);
  v35 = v24[3];
  v53[2] = v24[2];
  v53[3] = v35;
  v53[4] = v24[4];
  v36 = v24[1];
  v53[0] = *v24;
  v53[1] = v36;
  sub_1B7205418(v53, &qword_1EB990780, &unk_1B7819C00);
  v37 = a15[3];
  v24[2] = a15[2];
  v24[3] = v37;
  v24[4] = a15[4];
  v38 = a15[1];
  *v24 = *a15;
  v24[1] = v38;
  result = sub_1B7213740(a16, a9 + v25, &qword_1EB990770, &unk_1B786E520);
  *(a9 + v19[16]) = v50;
  return result;
}

uint64_t RawBankConnectData.InternalAccountBalance.init(amount:asOf:creditDebitIndicator:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v7 = a1[3];
  *(a4 + 2) = a1[2];
  *(a4 + 3) = v7;
  *(a4 + 4) = a1[4];
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v8;
  v9 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  v10 = *(v9 + 20);
  v11 = sub_1B77FF988();
  result = (*(*(v11 - 8) + 32))(&a4[v10], a2, v11);
  a4[*(v9 + 24)] = a3 & 1;
  return result;
}

uint64_t RawBankConnectData.AccountBalances.init(available:booked:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a3, 1, 1, v6);
  v8 = *(type metadata accessor for RawBankConnectData.AccountBalances(0) + 20);
  v7(a3 + v8, 1, 1, v6);
  sub_1B7213740(a1, a3, &qword_1EB990778, &qword_1B780D3B8);
  return sub_1B7213740(a2, a3 + v8, &qword_1EB990778, &qword_1B780D3B8);
}

void RawBankConnectData.AccountsRequestBody.init(fraudAssessment:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a1;
  a3[1] = a2;
}

uint64_t RawBankConnectData.AccountRequestBody.init(accountId:clientConfigurationVersion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1B77C759C(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E538, &qword_1B786E530);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77C8228();
  sub_1B78023F8();
  v9[15] = a2 & 1;
  sub_1B77C827C();
  sub_1B7801FC8();
  return (*(v5 + 8))(v7, v4);
}

void sub_1B77C7704(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001B788E230 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1B77C7798(uint64_t a1)
{
  v2 = sub_1B77C8228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77C77D4(uint64_t a1)
{
  v2 = sub_1B77C8228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77C7810@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B77D1C80(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t RawBankConnectData.Account.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = v25;
  sub_1B78023B8();
  if (v13)
  {
    v14 = v29;
  }

  else
  {
    v22 = v6;
    v23 = v8;
    v25 = v5;
    v21 = v11;
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_1B77C7C68();
    sub_1B7802138();
    v15 = v29;
    if (v26[0])
    {
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      sub_1B78023B8();
      __swift_project_boxed_opaque_existential_1(v26, v27);
      sub_1B77C7D24(&qword_1EB99E528, type metadata accessor for RawBankConnectData.LiabilityAccount, protocol conformance descriptor for RawBankConnectData.LiabilityAccount);
      v16 = v25;
      sub_1B7802138();
      v17 = v21;
      sub_1B77C7CBC(v16, v21, type metadata accessor for RawBankConnectData.LiabilityAccount);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      sub_1B78023B8();
      __swift_project_boxed_opaque_existential_1(v26, v27);
      sub_1B77C7D24(&qword_1EB99E530, type metadata accessor for RawBankConnectData.AssetAccount, protocol conformance descriptor for RawBankConnectData.AssetAccount);
      v18 = v23;
      sub_1B7802138();
      v17 = v21;
      sub_1B77C7CBC(v18, v21, type metadata accessor for RawBankConnectData.AssetAccount);
    }

    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1B77C7CBC(v17, v24, type metadata accessor for RawBankConnectData.Account);
    v14 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

unint64_t sub_1B77C7C68()
{
  result = qword_1EB99E520;
  if (!qword_1EB99E520)
  {
    result = swift_getWitnessTable(byte_1B786FA90, &_s7AccountO13DiscriminatorVN, v0, v1);
    atomic_store(result, &qword_1EB99E520);
  }

  return result;
}

uint64_t sub_1B77C7CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B77C7D24(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RawBankConnectData.Account.encode(to:)(void *a1)
{
  v3 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E538, &qword_1B786E530);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77CF980(v1, v16, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B77C7CBC(v16, v5, type metadata accessor for RawBankConnectData.LiabilityAccount);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B78023E8();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_1B77C7D24(&qword_1EB99E540, type metadata accessor for RawBankConnectData.LiabilityAccount, protocol conformance descriptor for RawBankConnectData.LiabilityAccount);
    v17 = v29;
    sub_1B7802168();
    if (!v17)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1B77C8228();
      v18 = v26;
      sub_1B78023F8();
      v32 = 1;
      sub_1B77C827C();
      v19 = v28;
      sub_1B7801FC8();
      (*(v27 + 8))(v18, v19);
    }

    v20 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v21 = v5;
  }

  else
  {
    sub_1B77C7CBC(v16, v13, type metadata accessor for RawBankConnectData.AssetAccount);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B78023E8();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_1B77C7D24(&qword_1EB99E558, type metadata accessor for RawBankConnectData.AssetAccount, protocol conformance descriptor for RawBankConnectData.AssetAccount);
    v22 = v29;
    sub_1B7802168();
    if (!v22)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1B77C8228();
      sub_1B78023F8();
      v32 = 0;
      sub_1B77C827C();
      v23 = v28;
      sub_1B7801FC8();
      (*(v27 + 8))(v10, v23);
    }

    v20 = type metadata accessor for RawBankConnectData.AssetAccount;
    v21 = v13;
  }

  sub_1B77C82D0(v21, v20);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_1B77C8228()
{
  result = qword_1EB99E548;
  if (!qword_1EB99E548)
  {
    result = swift_getWitnessTable(aY_50, &_s7AccountO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E548);
  }

  return result;
}

unint64_t sub_1B77C827C()
{
  result = qword_1EB99E550;
  if (!qword_1EB99E550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AssetLiabilityIndicator, &type metadata for RawBankConnectData.AssetLiabilityIndicator, v0, v1);
    atomic_store(result, &qword_1EB99E550);
  }

  return result;
}

uint64_t sub_1B77C82D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RawBankConnectData.AssetAccount.id.getter()
{
  v1 = *v0;

  return v1;
}

void RawBankConnectData.AssetAccount.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t RawBankConnectData.AssetAccount.accountName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void RawBankConnectData.AssetAccount.accountName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t RawBankConnectData.AssetAccount.description.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void RawBankConnectData.AssetAccount.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t RawBankConnectData.AssetAccount.clientConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawBankConnectData.AssetAccount(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t RawBankConnectData.AssetAccount.clientConfiguration.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawBankConnectData.AssetAccount(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

unint64_t sub_1B77C87AC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x4E746E756F636361;
    }

    if (a1)
    {
      v5 = 0x7364496E617066;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7365636E616C6162;
    v2 = 0x736E6F69746361;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x737574617473;
    if (a1 != 4)
    {
      v3 = 0x7470697263736564;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B77C88D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B77D1DF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B77C8900(uint64_t a1)
{
  v2 = sub_1B77D19E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77C893C(uint64_t a1)
{
  v2 = sub_1B77D19E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.AssetAccount.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E560, &unk_1B786E538);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D19E0();
  sub_1B78023F8();
  LOBYTE(v14) = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
    sub_1B721523C(&qword_1EB98F960, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1B7801F38();
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    v14 = *(v3 + 24);
    v15 = v9;
    v16 = v10;
    v17 = 2;
    sub_1B77D1A34();

    sub_1B7801FC8();

    LOBYTE(v14) = 3;
    sub_1B7801F78();
    LOBYTE(v14) = *(v3 + 64);
    v17 = 4;
    sub_1B77D1A88();
    sub_1B7801F38();
    LOBYTE(v14) = 5;
    sub_1B7801EF8();
    v11 = type metadata accessor for RawBankConnectData.AssetAccount(0);
    LOBYTE(v14) = 6;
    type metadata accessor for RawBankConnectData.AccountBalances(0);
    sub_1B77C7D24(&qword_1EB99E580, type metadata accessor for RawBankConnectData.AccountBalances, protocol conformance descriptor for RawBankConnectData.AccountBalances);
    sub_1B7801FC8();
    LOBYTE(v14) = 7;
    type metadata accessor for RawBankConnectData.Actions(0);
    sub_1B77C7D24(&qword_1EB99B800, type metadata accessor for RawBankConnectData.Actions, protocol conformance descriptor for RawBankConnectData.Actions);
    sub_1B7801F38();
    LOBYTE(v14) = *(v3 + *(v11 + 48));
    v17 = 8;
    sub_1B77D1ADC();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.AssetAccount.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770, &unk_1B786E520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = v28 - v4;
  v31 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E590, &qword_1B786E548);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v9 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 44);
  v14 = type metadata accessor for RawBankConnectData.Actions(0);
  v15 = v12;
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B77D19E0();
  v35 = v8;
  v17 = v36;
  sub_1B78023C8();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    swift_bridgeObjectRelease_n();
    return sub_1B7205418(v15 + v13, &qword_1EB990770, &unk_1B786E520);
  }

  else
  {
    v36 = v14;
    v19 = v33;
    v18 = v34;
    LOBYTE(v38) = 0;
    *v15 = sub_1B7801DF8();
    *(v15 + 8) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
    v41 = 1;
    sub_1B721523C(&qword_1EDAF64A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1B7801DB8();
    v28[1] = v38;
    *(v15 + 16) = v38;
    v41 = 2;
    sub_1B77D1B30();
    sub_1B7801E48();
    v22 = v39;
    v23 = v40;
    *(v15 + 24) = v38;
    *(v15 + 32) = v22;
    *(v15 + 40) = v23;
    LOBYTE(v38) = 3;
    *(v15 + 48) = sub_1B7801DF8();
    *(v15 + 56) = v24;
    v41 = 4;
    sub_1B77D1B84();
    sub_1B7801DB8();
    *(v15 + 64) = v38;
    LOBYTE(v38) = 5;
    *(v15 + 72) = sub_1B7801D78();
    *(v15 + 80) = v25;
    LOBYTE(v38) = 6;
    sub_1B77C7D24(&qword_1EB99E5A8, type metadata accessor for RawBankConnectData.AccountBalances, protocol conformance descriptor for RawBankConnectData.AccountBalances);
    v26 = v32;
    sub_1B7801E48();
    sub_1B77C7CBC(v26, v15 + *(v9 + 40), type metadata accessor for RawBankConnectData.AccountBalances);
    LOBYTE(v38) = 7;
    sub_1B77C7D24(&qword_1EB99B828, type metadata accessor for RawBankConnectData.Actions, protocol conformance descriptor for RawBankConnectData.Actions);
    v27 = v30;
    sub_1B7801DB8();
    sub_1B7213740(v27, v15 + v13, &qword_1EB990770, &unk_1B786E520);
    v41 = 8;
    sub_1B77D1BD8();
    sub_1B7801E48();
    (*(v19 + 8))(v35, v18);
    *(v15 + *(v9 + 48)) = v38;
    sub_1B77CF980(v15, v29, type metadata accessor for RawBankConnectData.AssetAccount);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_1B77C82D0(v15, type metadata accessor for RawBankConnectData.AssetAccount);
  }
}

double _s10FinanceKit18RawBankConnectDataO12AssetAccountV06maskedH6NumberAC06MaskedhJ0Vvg_0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

void _s10FinanceKit18RawBankConnectDataO12AssetAccountV06maskedH6NumberAC06MaskedhJ0Vvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
}

uint64_t sub_1B77C9694(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 40);

  return sub_1B77CF9E8(a1, v4);
}

uint64_t RawBankConnectData.LiabilityAccount.creditLimit.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.LiabilityAccount(0) + 44));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_1B7205588(v10, &v9, &qword_1EB990780, &unk_1B7819C00);
}

__n128 RawBankConnectData.LiabilityAccount.creditLimit.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.LiabilityAccount(0) + 44));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_1B7205418(v8, &qword_1EB990780, &unk_1B7819C00);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t RawBankConnectData.LiabilityAccount.minimumPaymentAmount.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.LiabilityAccount(0) + 48));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_1B7205588(&v11, &v10, &qword_1EB990780, &unk_1B7819C00);
}

__n128 RawBankConnectData.LiabilityAccount.minimumPaymentAmount.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.LiabilityAccount(0) + 48));
  v4 = v3[4];
  v8[3] = v3[3];
  v8[4] = v4;
  v5 = v3[2];
  v8[1] = v3[1];
  v8[2] = v5;
  v8[0] = *v3;
  sub_1B7205418(v8, &qword_1EB990780, &unk_1B7819C00);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t RawBankConnectData.LiabilityAccount.overduePaymentAmount.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.LiabilityAccount(0) + 56));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_1B7205588(&v11, &v10, &qword_1EB990780, &unk_1B7819C00);
}

__n128 RawBankConnectData.LiabilityAccount.overduePaymentAmount.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.LiabilityAccount(0) + 56));
  v4 = v3[4];
  v8[3] = v3[3];
  v8[4] = v4;
  v5 = v3[2];
  v8[1] = v3[1];
  v8[2] = v5;
  v8[0] = *v3;
  sub_1B7205418(v8, &qword_1EB990780, &unk_1B7819C00);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t RawBankConnectData.LiabilityAccount.clientConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t RawBankConnectData.LiabilityAccount.clientConfiguration.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  *(v1 + *(result + 64)) = v2;
  return result;
}

unint64_t sub_1B77C9D44(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7364496E617066;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x4E746E756F636361;
      break;
    case 4:
      result = 0x737574617473;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    case 6:
      result = 0x7365636E616C6162;
      break;
    case 7:
      result = 0x694C746964657263;
      break;
    case 8:
    case 10:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6D7961507478656ELL;
      break;
    case 11:
      result = 0x736E6F69746361;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B77C9EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B77D20DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B77C9EE0(uint64_t a1)
{
  v2 = sub_1B77D1C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77C9F1C(uint64_t a1)
{
  v2 = sub_1B77D1C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.LiabilityAccount.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E5B8, &qword_1B786E550);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D1C2C();
  sub_1B78023F8();
  LOBYTE(v64) = 0;
  sub_1B7801F78();
  if (!v2)
  {
    *&v64 = *(v3 + 16);
    LOBYTE(v59) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
    sub_1B721523C(&qword_1EB98F960, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1B7801F38();
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *&v64 = *(v3 + 24);
    *(&v64 + 1) = v9;
    LOBYTE(v65) = v10;
    LOBYTE(v59) = 2;
    sub_1B77D1A34();

    sub_1B7801FC8();

    LOBYTE(v64) = 3;
    sub_1B7801F78();
    LOBYTE(v64) = *(v3 + 64);
    LOBYTE(v59) = 4;
    sub_1B77D1A88();
    sub_1B7801F38();
    LOBYTE(v64) = 5;
    sub_1B7801EF8();
    v70 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
    v69[0] = 6;
    type metadata accessor for RawBankConnectData.AccountBalances(0);
    sub_1B77C7D24(&qword_1EB99E580, type metadata accessor for RawBankConnectData.AccountBalances, protocol conformance descriptor for RawBankConnectData.AccountBalances);
    sub_1B7801FC8();
    v11 = (v3 + v70[11]);
    v12 = v11[2];
    v13 = *v11;
    v65 = v11[1];
    v66 = v12;
    v14 = v11[2];
    v15 = v11[4];
    v67 = v11[3];
    v68 = v15;
    v16 = *v11;
    v61 = v14;
    v62 = v67;
    v63 = v11[4];
    v64 = v16;
    v59 = v13;
    v60 = v65;
    v58 = 7;
    sub_1B7205588(&v64, v55, &qword_1EB990780, &unk_1B7819C00);
    v17 = sub_1B76D52A8();
    sub_1B7801F38();
    v54[2] = v61;
    v54[3] = v62;
    v54[4] = v63;
    v54[0] = v59;
    v54[1] = v60;
    sub_1B7205418(v54, &qword_1EB990780, &unk_1B7819C00);
    v18 = (v3 + v70[12]);
    v19 = v18[4];
    v20 = v18[1];
    v21 = v18[2];
    v56 = v18[3];
    v57 = v19;
    v22 = *v18;
    v23 = *v18;
    v55[1] = v18[1];
    v55[2] = v21;
    v55[0] = v22;
    v51 = v21;
    v52 = v56;
    v53 = v18[4];
    v49 = v23;
    v50 = v20;
    v48 = 8;
    sub_1B7205588(v55, v47, &qword_1EB990780, &unk_1B7819C00);
    v31 = v17;
    sub_1B7801F38();
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[0] = v49;
    v47[1] = v50;
    sub_1B7205418(v47, &qword_1EB990780, &unk_1B7819C00);
    v46 = 9;
    sub_1B77FF988();
    sub_1B77C7D24(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801F38();
    v24 = (v3 + v70[14]);
    v25 = v24[2];
    v26 = *v24;
    v42 = v24[1];
    v43 = v25;
    v27 = v24[2];
    v28 = v24[4];
    v44 = v24[3];
    v45 = v28;
    v29 = *v24;
    v38 = v27;
    v39 = v44;
    v40 = v24[4];
    v41 = v29;
    v36 = v26;
    v37 = v42;
    v35 = 10;
    sub_1B7205588(&v41, v34, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7801F38();
    v34[2] = v38;
    v34[3] = v39;
    v34[4] = v40;
    v34[0] = v36;
    v34[1] = v37;
    sub_1B7205418(v34, &qword_1EB990780, &unk_1B7819C00);
    v33 = 11;
    type metadata accessor for RawBankConnectData.Actions(0);
    sub_1B77C7D24(&qword_1EB99B800, type metadata accessor for RawBankConnectData.Actions, protocol conformance descriptor for RawBankConnectData.Actions);
    sub_1B7801F38();
    v33 = *(v3 + v70[16]);
    v32 = 12;
    sub_1B77D1ADC();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.LiabilityAccount.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770, &unk_1B786E520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v66 - v6;
  v72 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E5C8, &qword_1B786E558);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v14 + v12[11];
  *(v15 + 3) = 0u;
  *(v15 + 4) = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  v81 = v15;
  *v15 = 0u;
  v16 = v14 + v12[12];
  *(v16 + 3) = 0u;
  *(v16 + 4) = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v82 = v16;
  *v16 = 0u;
  v17 = v12[13];
  v18 = sub_1B77FF988();
  v19 = *(*(v18 - 8) + 56);
  v80 = v17;
  v19(v14 + v17, 1, 1, v18);
  v20 = v14 + *(v11 + 56);
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  v79 = v20;
  *v20 = 0u;
  v21 = *(v11 + 60);
  v22 = type metadata accessor for RawBankConnectData.Actions(0);
  v23 = *(*(v22 - 8) + 56);
  v78 = v21;
  v125 = v14;
  v23(v14 + v21, 1, 1, v22);
  v24 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1B77D1C2C();
  v25 = v76;
  sub_1B78023C8();
  if (v25)
  {
    v27 = v125;
    v28 = v81;
    __swift_destroy_boxed_opaque_existential_1(v77);
    swift_bridgeObjectRelease_n();
LABEL_4:
    v29 = *v28;
    v111 = *(v28 + 1);
    v30 = *(v28 + 3);
    v112 = *(v28 + 2);
    v113 = v30;
    v114 = *(v28 + 4);
    v110 = v29;
    sub_1B7205418(&v110, &qword_1EB990780, &unk_1B7819C00);
    v31 = *v82;
    v116 = *(v82 + 1);
    v32 = *(v82 + 3);
    v117 = *(v82 + 2);
    v118 = v32;
    v119 = *(v82 + 4);
    v115 = v31;
    sub_1B7205418(&v115, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205418(v27 + v80, &qword_1EB98EBD0, &unk_1B7809780);
    v33 = *(v79 + 3);
    v122 = *(v79 + 2);
    v123 = v33;
    v124 = *(v79 + 4);
    v34 = *(v79 + 1);
    v120 = *v79;
    v121 = v34;
    sub_1B7205418(&v120, &qword_1EB990780, &unk_1B7819C00);
    return sub_1B7205418(v27 + v78, &qword_1EB990770, &unk_1B786E520);
  }

  v68 = v18;
  v76 = v11;
  LOBYTE(v120) = 0;
  v26 = sub_1B7801DF8();
  v36 = v10;
  v27 = v125;
  *v125 = v26;
  v27[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  LOBYTE(v115) = 1;
  sub_1B721523C(&qword_1EDAF64A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v67 = v36;
  sub_1B7801DB8();
  v28 = v81;
  v66 = v120;
  v27[2] = v120;
  LOBYTE(v115) = 2;
  sub_1B77D1B30();
  sub_1B7801E48();
  v38 = *(&v120 + 1);
  v39 = v121;
  v27[3] = v120;
  v27[4] = v38;
  *(v27 + 40) = v39;
  LOBYTE(v120) = 3;
  v27[6] = sub_1B7801DF8();
  v27[7] = v40;
  LOBYTE(v115) = 4;
  sub_1B77D1B84();
  sub_1B7801DB8();
  *(v27 + 64) = v120;
  LOBYTE(v120) = 5;
  v27[9] = sub_1B7801D78();
  v27[10] = v41;
  LOBYTE(v120) = 6;
  sub_1B77C7D24(&qword_1EB99E5A8, type metadata accessor for RawBankConnectData.AccountBalances, protocol conformance descriptor for RawBankConnectData.AccountBalances);
  sub_1B7801E48();
  sub_1B77C7CBC(v73, v27 + *(v76 + 40), type metadata accessor for RawBankConnectData.AccountBalances);
  v109 = 7;
  v72 = sub_1B76D53A4();
  sub_1B7801DB8();
  v73 = 0;
  v111 = v121;
  v112 = v122;
  v113 = v123;
  v114 = v124;
  v110 = v120;
  v42 = *v28;
  v116 = *(v28 + 1);
  v43 = *(v28 + 3);
  v117 = *(v28 + 2);
  v118 = v43;
  v119 = *(v28 + 4);
  v115 = v42;
  sub_1B7205418(&v115, &qword_1EB990780, &unk_1B7819C00);
  v44 = v111;
  v45 = v113;
  *(v28 + 2) = v112;
  *(v28 + 3) = v45;
  *(v28 + 4) = v114;
  *v28 = v110;
  *(v28 + 1) = v44;
  v103 = 8;
  v46 = v75;
  v47 = v73;
  sub_1B7801DB8();
  v73 = v47;
  if (v47)
  {
    (*(v74 + 8))(v67, v46);
    __swift_destroy_boxed_opaque_existential_1(v77);
LABEL_5:

    sub_1B77C82D0(v27 + *(v76 + 40), type metadata accessor for RawBankConnectData.AccountBalances);
    goto LABEL_4;
  }

  v99 = v106;
  v100 = v107;
  v97 = v104;
  v98 = v105;
  v48 = v82;
  v49 = *(v82 + 2);
  v50 = *(v82 + 3);
  v51 = *v82;
  v102[1] = *(v82 + 1);
  v102[2] = v49;
  v52 = *(v82 + 4);
  v102[3] = v50;
  v102[4] = v52;
  v101 = v108;
  v102[0] = v51;
  sub_1B7205418(v102, &qword_1EB990780, &unk_1B7819C00);
  v53 = v100;
  *(v48 + 2) = v99;
  *(v48 + 3) = v53;
  *(v48 + 4) = v101;
  v54 = v98;
  *v48 = v97;
  *(v48 + 1) = v54;
  LOBYTE(v92) = 9;
  sub_1B77C7D24(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v55 = v73;
  sub_1B7801DB8();
  v73 = v55;
  if (v55 || (sub_1B7213740(v71, v125 + v80, &qword_1EB98EBD0, &unk_1B7809780), v91 = 10, v56 = v73, sub_1B7801DB8(), (v73 = v56) != 0) || (v87 = v94, v88 = v95, v85 = v92, v86 = v93, v57 = v79, v58 = *(v79 + 2), v59 = *(v79 + 4), v90[3] = *(v79 + 3), v90[4] = v59, v60 = *v79, v90[1] = *(v79 + 1), v90[2] = v58, v89 = v96, v90[0] = v60, sub_1B7205418(v90, &qword_1EB990780, &unk_1B7819C00), v61 = v88, *(v57 + 2) = v87, *(v57 + 3) = v61, *(v57 + 4) = v89, v62 = v86, *v57 = v85, *(v57 + 1) = v62, v84 = 11, sub_1B77C7D24(&qword_1EB99B828, type metadata accessor for RawBankConnectData.Actions, protocol conformance descriptor for RawBankConnectData.Actions), v63 = v73, sub_1B7801DB8(), (v73 = v63) != 0) || (sub_1B7213740(v70, v125 + v78, &qword_1EB990770, &unk_1B786E520), v83 = 12, sub_1B77D1BD8(), v64 = v73, sub_1B7801E48(), (v73 = v64) != 0))
  {
    (*(v74 + 8))(v67, v75);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v27 = v125;
    v28 = v81;
    goto LABEL_5;
  }

  (*(v74 + 8))(v67, v75);
  v65 = v125;
  *(v125 + *(v76 + 64)) = v84;
  sub_1B77CF980(v65, v69, type metadata accessor for RawBankConnectData.LiabilityAccount);
  __swift_destroy_boxed_opaque_existential_1(v77);
  return sub_1B77C82D0(v65, type metadata accessor for RawBankConnectData.LiabilityAccount);
}

uint64_t RawBankConnectData.AccountStatus.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1313165391;
  }

  if (a1 == 1)
  {
    return 0x4445534F4C43;
  }

  return 0x474E49444E4550;
}

uint64_t sub_1B77CB380()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B77CB418(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B77CB49C(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

unint64_t sub_1B77CB530@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10FinanceKit18RawBankConnectDataO13AccountStatusO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B77CB560(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x4445534F4C43;
  if (v2 != 1)
  {
    v5 = 0x474E49444E4550;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1313165391;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B77CB674(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x4445534F4C43;
  if (v2 != 1)
  {
    v4 = 0x474E49444E4550;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1313165391;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x4445534F4C43;
  if (*a2 != 1)
  {
    v8 = 0x474E49444E4550;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1313165391;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t RawBankConnectData.AccountBalances.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778, &qword_1B780D3B8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v35 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v39 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E5D0, &qword_1B786E560);
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v20(v17, 1, 1, v18);
  v21 = *(v15 + 28);
  v20(&v17[v21], 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D2564();
  v22 = v44;
  sub_1B78023C8();
  if (!v22)
  {
    v35 = v21;
    v36 = v19;
    v24 = v39;
    v23 = v40;
    v44 = a1;
    v46 = 0;
    sub_1B77C7D24(&qword_1EB99E5E0, type metadata accessor for RawBankConnectData.InternalAccountBalance, protocol conformance descriptor for RawBankConnectData.InternalAccountBalance);
    sub_1B7801DB8();
    sub_1B7213740(v43, v17, &qword_1EB990778, &qword_1B780D3B8);
    v45 = 1;
    sub_1B7801DB8();
    v43 = v13;
    v27 = v35;
    sub_1B7213740(v24, &v17[v35], &qword_1EB990778, &qword_1B780D3B8);
    sub_1B7205588(v17, v23, &qword_1EB990778, &qword_1B780D3B8);
    v28 = *(v36 + 48);
    v29 = v28(v23, 1, v18);
    sub_1B7205418(v23, &qword_1EB990778, &qword_1B780D3B8);
    if (v29 != 1 || (v30 = v37, sub_1B7205588(&v17[v27], v37, &qword_1EB990778, &qword_1B780D3B8), v31 = v28(v30, 1, v18), sub_1B7205418(v30, &qword_1EB990778, &qword_1B780D3B8), v31 != 1))
    {
      (*(v41 + 8))(v43, v42);
      sub_1B77CF980(v17, v38, type metadata accessor for RawBankConnectData.AccountBalances);
      v25 = v44;
      goto LABEL_4;
    }

    v32 = sub_1B7801B18();
    swift_allocError();
    v34 = v33;
    a1 = v44;
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    sub_1B7802398();
    sub_1B7801AE8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6B00], v32);
    swift_willThrow();
    (*(v41 + 8))(v43, v42);
  }

  v25 = a1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1B77C82D0(v17, type metadata accessor for RawBankConnectData.AccountBalances);
}

uint64_t sub_1B77CBE70(uint64_t a1)
{
  v2 = sub_1B77D2564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77CBEAC(uint64_t a1)
{
  v2 = sub_1B77D2564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.AccountBalances.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E5E8, &qword_1B786E568);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D2564();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  sub_1B77C7D24(&qword_1EB99E5F0, type metadata accessor for RawBankConnectData.InternalAccountBalance, protocol conformance descriptor for RawBankConnectData.InternalAccountBalance);
  sub_1B7801F38();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.AccountBalances(0);
    v8[14] = 1;
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.InternalAccountBalance.amount.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B76CB848(v8, &v7);
}

__n128 RawBankConnectData.InternalAccountBalance.amount.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_1B76CB914(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t RawBankConnectData.InternalAccountBalance.asOf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawBankConnectData.InternalAccountBalance(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawBankConnectData.InternalAccountBalance.asOf.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.InternalAccountBalance(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawBankConnectData.InternalAccountBalance.creditDebitIndicator.setter(char a1)
{
  result = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  *(v1 + *(result + 24)) = a1 & 1;
  return result;
}

uint64_t sub_1B77CC390(uint64_t a1)
{
  v2 = sub_1B77D25B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77CC3CC(uint64_t a1)
{
  v2 = sub_1B77D25B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InternalAccountBalance.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E5F8, &qword_1B786E570);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D25B8();
  sub_1B78023F8();
  v8 = v2[2];
  v9 = *v2;
  v30 = v2[1];
  v31 = v8;
  v10 = v2[2];
  v11 = v2[4];
  v32 = v2[3];
  v33 = v11;
  v12 = *v2;
  v26 = v10;
  v27 = v32;
  v28 = v2[4];
  v29 = v12;
  v24 = v9;
  v25 = v30;
  v23 = 0;
  sub_1B76CB848(&v29, &v18);
  sub_1B76D52A8();
  v13 = v34;
  sub_1B7801FC8();
  if (v13)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v18 = v24;
    v19 = v25;
    sub_1B76CB914(&v18);
  }

  else
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v18 = v24;
    v19 = v25;
    sub_1B76CB914(&v18);
    v14 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    v17 = 1;
    sub_1B77FF988();
    sub_1B77C7D24(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801FC8();
    v17 = *(v2 + *(v14 + 24));
    v16[14] = 2;
    sub_1B7586200();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawBankConnectData.InternalAccountBalance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1B77FF988();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E608, &qword_1B786E578);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v16 - v6;
  v8 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D25B8();
  v19 = v7;
  v11 = v29;
  sub_1B78023C8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v23 = 0;
  sub_1B76D53A4();
  sub_1B7801E48();
  v13 = v27;
  *(v10 + 2) = v26;
  *(v10 + 3) = v13;
  *(v10 + 4) = v28;
  v14 = v25;
  *v10 = v24;
  *(v10 + 1) = v14;
  LOBYTE(v22) = 1;
  sub_1B77C7D24(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1B7801E48();
  (*(v17 + 32))(&v10[*(v8 + 20)], v5, v3);
  v21 = 2;
  sub_1B75864CC();
  v29 = 0;
  sub_1B7801E48();
  (*(v12 + 8))(v19, v20);
  v10[*(v8 + 24)] = v22;
  sub_1B77CF980(v10, v16, type metadata accessor for RawBankConnectData.InternalAccountBalance);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B77C82D0(v10, type metadata accessor for RawBankConnectData.InternalAccountBalance);
}

uint64_t RawBankConnectData.MaskedAccountNumber.value.getter()
{
  v1 = *v0;

  return v1;
}

void RawBankConnectData.MaskedAccountNumber.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t RawBankConnectData.MaskedAccountNumber.init(value:schemeType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t static RawBankConnectData.MaskedAccountNumber.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  return sub_1B72C1E14(v2, v3);
}

uint64_t sub_1B77CCCBC(uint64_t a1)
{
  v2 = sub_1B77D260C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77CCCF8(uint64_t a1)
{
  v2 = sub_1B77D260C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.MaskedAccountNumber.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E610, &qword_1B786E580);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D260C();
  sub_1B78023F8();
  v13 = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1B77D2660();
    sub_1B7801FC8();
  }

  return (*(v9 + 8))(v6, v4);
}

void RawBankConnectData.MaskedAccountNumber.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E628, &qword_1B786E588);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D260C();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = 0;
    v9 = sub_1B7801DF8();
    v11 = v10;
    v12 = v9;
    v15 = 1;
    sub_1B77D26B4();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v13 = v16;
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1B77CD0EC(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  return sub_1B72C1E14(v2, v3);
}

void RawBankConnectData.MaskedAccountNumber.SchemeType.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1B7801D18();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t RawBankConnectData.MaskedAccountNumber.SchemeType.rawValue.getter()
{
  v1 = 1312899657;
  if (*v0 != 2)
  {
    v1 = 5128528;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000018;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B77CD240()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B77CD2FC(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B77CD3A4(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B77CD468(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1312899657;
  if (*v1 != 2)
  {
    v3 = 5128528;
    v2 = 0xE300000000000000;
  }

  v4 = 0x80000001B7874D50;
  if (*v1)
  {
    v4 = 0x80000001B7874D70;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

void sub_1B77CD614(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6165726168537369 && a2 == 0xEB00000000656C62)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B77CD6A0(uint64_t a1)
{
  v2 = sub_1B77D2708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77CD6DC(uint64_t a1)
{
  v2 = sub_1B77D2708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Account.ClientConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E638, &qword_1B786E590);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D2708();
  sub_1B78023F8();
  sub_1B7801F88();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.Account.ClientConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E648, &qword_1B786E598);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D2708();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801E08();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B77CD9C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E638, &qword_1B786E590);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D2708();
  sub_1B78023F8();
  sub_1B7801F88();
  return (*(v3 + 8))(v5, v2);
}

void sub_1B77CDB70(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B77CDBF8(uint64_t a1)
{
  v2 = sub_1B77D275C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77CDC34(uint64_t a1)
{
  v2 = sub_1B77D275C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.AccountsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E650, &qword_1B786E5A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D275C();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E660, &qword_1B786E5A8);
  sub_1B77D27B0(&qword_1EB99E668, &qword_1EB996DA0, protocol conformance descriptor for RawBankConnectData.Account, MEMORY[0x1E69E6300]);
  sub_1B7801FC8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.AccountsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E670, &qword_1B786E5B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D275C();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E660, &qword_1B786E5A8);
    sub_1B77D27B0(&qword_1EB99E678, &qword_1EB996DB0, protocol conformance descriptor for RawBankConnectData.Account, MEMORY[0x1E69E6330]);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.AccountRequestBody.accountId.getter()
{
  v1 = *v0;

  return v1;
}

void RawBankConnectData.AccountRequestBody.accountId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t RawBankConnectData.AccountRequestBody.clientConfigurationVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void RawBankConnectData.AccountRequestBody.clientConfigurationVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t static RawBankConnectData.AccountRequestBody.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t sub_1B77CE1C4()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

void sub_1B77CE208(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B78801E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B77CE2F4(uint64_t a1)
{
  v2 = sub_1B77D284C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77CE330(uint64_t a1)
{
  v2 = sub_1B77D284C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.AccountRequestBody.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E680, &qword_1B786E5B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D284C();
  sub_1B78023F8();
  v12 = 0;
  v8 = v10[3];
  sub_1B7801F78();
  if (!v8)
  {
    v11 = 1;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.AccountRequestBody.hash(into:)(uint64_t a1)
{
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t RawBankConnectData.AccountRequestBody.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

void RawBankConnectData.AccountRequestBody.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E690, &qword_1B786E5C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D284C();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = 0;
    v9 = sub_1B7801DF8();
    v11 = v10;
    v16 = v9;
    v17 = 1;
    v12 = sub_1B7801DF8();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t RawBankConnectData.AccountsRequestBody.fraudAssessment.getter()
{
  v1 = *v0;

  return v1;
}

void RawBankConnectData.AccountsRequestBody.fraudAssessment.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t static RawBankConnectData.AccountsRequestBody.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1B78020F8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void sub_1B77CE8F0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7373416475617266 && a2 == 0xEF746E656D737365)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B77CE980(uint64_t a1)
{
  v2 = sub_1B77D28A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77CE9BC(uint64_t a1)
{
  v2 = sub_1B77D28A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.AccountsRequestBody.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E698, &qword_1B786E5C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D28A0();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.AccountsRequestBody.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t RawBankConnectData.AccountsRequestBody.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1B78022F8();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  return sub_1B7802368();
}

uint64_t RawBankConnectData.AccountsRequestBody.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E6A8, &qword_1B786E5D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D28A0();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801D78();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B77CEDA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E698, &qword_1B786E5C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D28A0();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s10FinanceKit18RawBankConnectDataO22InternalAccountBalanceV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  *&v38[16] = a1[2];
  *&v38[32] = v4;
  v5 = a1[4];
  v6 = a1[1];
  v37 = *a1;
  *v38 = v6;
  v7 = a2[3];
  *&v40[16] = a2[2];
  *&v40[32] = v7;
  *&v40[48] = a2[4];
  v8 = *a2;
  *v40 = a2[1];
  *&v38[48] = v5;
  v39 = v8;
  v9 = v6;
  v10 = *v40;
  v11 = v37;
  v12 = v8;
  sub_1B76CB848(&v37, v36);
  sub_1B76CB848(&v39, v36);
  if (MEMORY[0x1B8CA5970](v11, *(&v11 + 1), v9, v12, *(&v12 + 1), v10))
  {
    v28 = *&v38[8];
    v29 = *&v38[24];
    v30 = *&v38[40];
    v31 = *&v38[56];
    v24 = *&v40[8];
    v25 = *&v40[24];
    v26 = *&v40[40];
    v27 = *&v40[56];
    sub_1B76CB848(&v37, v36);
    sub_1B76CB848(&v39, v36);
    v13 = _s10FinanceKit18RawBankConnectDataO8CurrencyV2eeoiySbAE_AEtFZ_0(&v28, &v24);
    v32[0] = v24;
    v32[1] = v25;
    v32[2] = v26;
    v33 = v27;
    sub_1B7321ADC(v32);
    v34[0] = v28;
    v34[1] = v29;
    v34[2] = v30;
    v35 = v31;
    sub_1B7321ADC(v34);
    sub_1B76CB914(&v39);
    sub_1B76CB914(&v37);
    if (v13)
    {
      v14 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
      if (sub_1B77FF918())
      {
        v15 = *(v14 + 24);
        v16 = *(a1 + v15);
        v17 = *(a2 + v15);
        if (v16)
        {
          v18 = 0x544944455243;
        }

        else
        {
          v18 = 0x5449424544;
        }

        if (v16)
        {
          v19 = 0xE600000000000000;
        }

        else
        {
          v19 = 0xE500000000000000;
        }

        if (v17)
        {
          v20 = 0x544944455243;
        }

        else
        {
          v20 = 0x5449424544;
        }

        if (v17)
        {
          v21 = 0xE600000000000000;
        }

        else
        {
          v21 = 0xE500000000000000;
        }

        if (v18 == v20 && v19 == v21)
        {

          return 1;
        }

        v23 = sub_1B78020F8();

        if (v23)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    sub_1B76CB914(&v39);
    sub_1B76CB914(&v37);
  }

  return 0;
}

BOOL _s10FinanceKit18RawBankConnectDataO15AccountBalancesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v34 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778, &qword_1B780D3B8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E860, &unk_1B786FAC0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = *(v15 + 48);
  v36 = a1;
  sub_1B7205588(a1, &v32 - v16, &qword_1EB990778, &qword_1B780D3B8);
  v37 = a2;
  sub_1B7205588(a2, &v17[v18], &qword_1EB990778, &qword_1B780D3B8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1B7205588(v17, v11, &qword_1EB990778, &qword_1B780D3B8);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      v21 = &v17[v18];
      v22 = v34;
      sub_1B77C7CBC(v21, v34, type metadata accessor for RawBankConnectData.InternalAccountBalance);
      v23 = _s10FinanceKit18RawBankConnectDataO22InternalAccountBalanceV2eeoiySbAE_AEtFZ_0(v11, v22);
      sub_1B77C82D0(v22, type metadata accessor for RawBankConnectData.InternalAccountBalance);
      sub_1B77C82D0(v11, type metadata accessor for RawBankConnectData.InternalAccountBalance);
      sub_1B7205418(v17, &qword_1EB990778, &qword_1B780D3B8);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_1B77C82D0(v11, type metadata accessor for RawBankConnectData.InternalAccountBalance);
LABEL_6:
    v20 = v17;
LABEL_14:
    sub_1B7205418(v20, &qword_1EB99E860, &unk_1B786FAC0);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1B7205418(v17, &qword_1EB990778, &qword_1B780D3B8);
LABEL_8:
  v24 = *(type metadata accessor for RawBankConnectData.AccountBalances(0) + 20);
  v25 = *(v12 + 48);
  v26 = v35;
  sub_1B7205588(v36 + v24, v35, &qword_1EB990778, &qword_1B780D3B8);
  sub_1B7205588(v37 + v24, v26 + v25, &qword_1EB990778, &qword_1B780D3B8);
  if (v19(v26, 1, v4) == 1)
  {
    if (v19((v26 + v25), 1, v4) == 1)
    {
      sub_1B7205418(v26, &qword_1EB990778, &qword_1B780D3B8);
      return 1;
    }

    goto LABEL_13;
  }

  v27 = v33;
  sub_1B7205588(v26, v33, &qword_1EB990778, &qword_1B780D3B8);
  if (v19((v26 + v25), 1, v4) == 1)
  {
    sub_1B77C82D0(v27, type metadata accessor for RawBankConnectData.InternalAccountBalance);
LABEL_13:
    v20 = v26;
    goto LABEL_14;
  }

  v29 = v26 + v25;
  v30 = v34;
  sub_1B77C7CBC(v29, v34, type metadata accessor for RawBankConnectData.InternalAccountBalance);
  v31 = _s10FinanceKit18RawBankConnectDataO22InternalAccountBalanceV2eeoiySbAE_AEtFZ_0(v27, v30);
  sub_1B77C82D0(v30, type metadata accessor for RawBankConnectData.InternalAccountBalance);
  sub_1B77C82D0(v27, type metadata accessor for RawBankConnectData.InternalAccountBalance);
  sub_1B7205418(v26, &qword_1EB990778, &qword_1B780D3B8);
  return (v31 & 1) != 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO7AccountO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawBankConnectData.Account(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923E0, &qword_1B786FAD0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1B77CF980(a1, &v27 - v18, type metadata accessor for RawBankConnectData.Account);
  sub_1B77CF980(a2, &v19[v20], type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B77CF980(v19, v13, type metadata accessor for RawBankConnectData.Account);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B77C7CBC(&v19[v20], v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
      v21 = _s10FinanceKit18RawBankConnectDataO16LiabilityAccountV2eeoiySbAE_AEtFZ_0(v13, v6);
      sub_1B77C82D0(v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
      v22 = v13;
      v23 = type metadata accessor for RawBankConnectData.LiabilityAccount;
LABEL_9:
      sub_1B77C82D0(v22, v23);
      sub_1B77C82D0(v19, type metadata accessor for RawBankConnectData.Account);
      return v21 & 1;
    }

    v24 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v25 = v13;
  }

  else
  {
    sub_1B77CF980(v19, v15, type metadata accessor for RawBankConnectData.Account);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B77C7CBC(&v19[v20], v9, type metadata accessor for RawBankConnectData.AssetAccount);
      v21 = _s10FinanceKit18RawBankConnectDataO12AssetAccountV2eeoiySbAE_AEtFZ_0(v15, v9);
      sub_1B77C82D0(v9, type metadata accessor for RawBankConnectData.AssetAccount);
      v22 = v15;
      v23 = type metadata accessor for RawBankConnectData.AssetAccount;
      goto LABEL_9;
    }

    v24 = type metadata accessor for RawBankConnectData.AssetAccount;
    v25 = v15;
  }

  sub_1B77C82D0(v25, v24);
  sub_1B7205418(v19, &qword_1EB9923E0, &qword_1B786FAD0);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1B77CF980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B77CF9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10FinanceKit18RawBankConnectDataO16LiabilityAccountV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v138 = type metadata accessor for RawBankConnectData.Actions(0);
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770, &unk_1B786E520);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v137 = &v119 - v7;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BA90, &qword_1B785D078);
  MEMORY[0x1EEE9AC00](v135);
  v9 = &v119 - v8;
  v10 = sub_1B77FF988();
  v139 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v119 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v119 - v17;
  if (*a1 != *a2 && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_54;
  }

  v19 = *(a1 + 16);
  v20 = *(a2 + 16);
  if (v19)
  {
    if (!v20 || (sub_1B731D168(v19, v20) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v20)
  {
    goto LABEL_54;
  }

  v133 = v5;
  v134 = v9;
  v21 = *(a1 + 40);
  v22 = *(a2 + 40);
  if ((*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_1B78020F8() & 1) == 0 || (sub_1B72C1E14(v21, v22) & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_54;
  }

  v23 = *(a1 + 64);
  v24 = *(a2 + 64);
  if (v23 == 3)
  {
    if (v24 != 3)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (v24 == 3)
    {
      goto LABEL_54;
    }

    v25 = 1313165391;
    if (*(a1 + 64))
    {
      if (v23 == 1)
      {
        v26 = 0xE600000000000000;
        v27 = 0x4445534F4C43;
      }

      else
      {
        v26 = 0xE700000000000000;
        v27 = 0x474E49444E4550;
      }
    }

    else
    {
      v26 = 0xE400000000000000;
      v27 = 1313165391;
    }

    if (*(a2 + 64))
    {
      if (v24 == 1)
      {
        v28 = 0xE600000000000000;
        v25 = 0x4445534F4C43;
      }

      else
      {
        v28 = 0xE700000000000000;
        v25 = 0x474E49444E4550;
      }
    }

    else
    {
      v28 = 0xE400000000000000;
    }

    if (v27 == v25 && v26 == v28)
    {
    }

    else
    {
      LODWORD(v132) = sub_1B78020F8();

      if ((v132 & 1) == 0)
      {
        goto LABEL_54;
      }
    }
  }

  v29 = *(a1 + 80);
  v30 = *(a2 + 80);
  if (v29)
  {
    if (!v30 || (*(a1 + 72) != *(a2 + 72) || v29 != v30) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v30)
  {
    goto LABEL_54;
  }

  v31 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  if (!_s10FinanceKit18RawBankConnectDataO15AccountBalancesV2eeoiySbAE_AEtFZ_0(a1 + *(v31 + 40), a2 + *(v31 + 40)))
  {
    goto LABEL_54;
  }

  v32 = (a1 + *(v31 + 44));
  v33 = v32[1];
  v34 = v32[3];
  v194 = v32[2];
  v195 = v34;
  v196 = v32[4];
  v35 = v32[1];
  v193[0] = *v32;
  v193[1] = v35;
  v36 = (a2 + *(v31 + 44));
  v37 = v36[4];
  v200 = v36[3];
  v201 = v37;
  v38 = v36[2];
  v198 = v36[1];
  v199 = v38;
  v197 = *v36;
  v154 = v193[0];
  v155 = v33;
  v156[0] = v194;
  v163 = v32[4];
  v148[1] = v198;
  v148[2] = v38;
  *&v156[1] = *(v32 + 6);
  *&v148[3] = *(v36 + 6);
  v148[0] = v197;
  v39 = *(&v200 + 1);
  v150 = v36[4];
  if (*(&v195 + 1))
  {
    v40 = v32[1];
    v185 = *v32;
    v186[0] = v40;
    v186[1] = v32[2];
    *&v186[2] = *(v32 + 6);
    v132 = *(&v195 + 1);
    *(&v186[2] + 1) = *(&v195 + 1);
    v186[3] = v32[4];
    v41 = v40;
    v42 = WORD1(v40);
    *(v174 + 12) = v186[3];
    v173 = *(&v186[1] + 4);
    v174[0] = *(&v186[2] + 4);
    v172 = *(v186 + 4);
    if (*(&v200 + 1))
    {
      v125 = v31;
      v43 = v36[1];
      v183 = *v36;
      v184[0] = v43;
      v184[1] = v36[2];
      *&v184[2] = *(v36 + 6);
      *(&v184[2] + 1) = *(&v200 + 1);
      v184[3] = v36[4];
      v122 = v43;
      v121 = v183;
      *(&v161[2] + 12) = v184[3];
      v161[1] = *(&v184[1] + 4);
      v161[2] = *(&v184[2] + 4);
      v161[0] = *(v184 + 4);
      *&v160[1] = *(&v186[3] + 1);
      v159 = *(&v186[1] + 8);
      v160[0] = *(&v186[2] + 8);
      v158 = *(v186 + 8);
      v128 = HIWORD(v185);
      v129 = WORD6(v185);
      LODWORD(v127) = v41;
      v126 = v185;
      v120 = WORD4(v185);
      LODWORD(v131) = v42;
      v44 = WORD2(v185);
      v45 = WORD3(v185);
      v130 = WORD5(v185);
      sub_1B7205588(v193, &v178, &qword_1EB990780, &unk_1B7819C00);
      sub_1B7205588(&v197, &v178, &qword_1EB990780, &unk_1B7819C00);
      sub_1B7205588(&v185, &v178, &qword_1EB990780, &unk_1B7819C00);
      v123 = v45;
      v124 = v44;
      v46 = v126 | (v44 << 32) | (v45 << 48);
      v47 = v120;
      if (MEMORY[0x1B8CA5970](v46, v120 | (v130 << 16) | (v129 << 32) | (v128 << 48), v127 | (v131 << 16), v121, *(&v121 + 1), v122))
      {
        v149[0] = v158;
        v149[1] = v159;
        v149[2] = v160[0];
        *&v149[3] = *&v160[1];
        v168 = *(v161 + 4);
        v169 = *(&v161[1] + 4);
        v170 = *(&v161[2] + 4);
        v171 = *(&v161[3] + 4);
        sub_1B7321A3C(&v158, &v178);
        sub_1B7205588(&v183, &v178, &qword_1EB990780, &unk_1B7819C00);
        v48 = _s10FinanceKit18RawBankConnectDataO8CurrencyV2eeoiySbAE_AEtFZ_0(v149, &v168);
        v176 = v168;
        v177[0] = v169;
        v177[1] = v170;
        *&v177[2] = v171;
        sub_1B7321ADC(&v176);
        v178 = v149[0];
        v179 = v149[1];
        v180 = v149[2];
        *&v181 = *&v149[3];
        sub_1B7321ADC(&v178);
        sub_1B7205418(&v183, &qword_1EB990780, &unk_1B7819C00);
        if (v48)
        {
          *(v177 + 4) = v172;
          LODWORD(v176) = v126;
          WORD2(v176) = v124;
          WORD3(v176) = v123;
          WORD4(v176) = v47;
          WORD5(v176) = v130;
          WORD6(v176) = v129;
          HIWORD(v176) = v128;
          LOWORD(v177[0]) = v127;
          WORD1(v177[0]) = v131;
          *(&v177[1] + 4) = v173;
          *(&v177[2] + 4) = v174[0];
          v177[3] = *(v174 + 12);
          sub_1B76CB914(&v176);
          v178 = v154;
          v179 = v155;
          v180 = v156[0];
          *&v181 = *&v156[1];
          *(&v181 + 1) = v132;
          v182 = v163;
          v49 = &v178;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1B7205418(&v183, &qword_1EB990780, &unk_1B7819C00);
      }

      *(v177 + 4) = v172;
      LODWORD(v176) = v126;
      WORD2(v176) = v124;
      WORD3(v176) = v123;
      WORD4(v176) = v47;
      WORD5(v176) = v130;
      WORD6(v176) = v129;
      HIWORD(v176) = v128;
      LOWORD(v177[0]) = v127;
      WORD1(v177[0]) = v131;
      *(&v177[1] + 4) = v173;
      *(&v177[2] + 4) = v174[0];
      v177[3] = *(v174 + 12);
      sub_1B76CB914(&v176);
      v178 = v154;
      v179 = v155;
      v180 = v156[0];
      *&v181 = *&v156[1];
      *(&v181 + 1) = v132;
      v182 = v163;
      v51 = &qword_1EB990780;
      v52 = &unk_1B7819C00;
      v53 = &v178;
      goto LABEL_53;
    }

    v183 = v185;
    LODWORD(v184[0]) = v40;
    *(v184 + 4) = *(v186 + 4);
    *(&v184[1] + 4) = *(&v186[1] + 4);
    *(&v184[2] + 4) = *(&v186[2] + 4);
    v184[3] = v186[3];
    sub_1B7205588(v193, &v178, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205588(&v197, &v178, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205588(&v185, &v178, &qword_1EB990780, &unk_1B7819C00);
    sub_1B76CB914(&v183);
LABEL_49:
    v185 = v154;
    v186[0] = v155;
    v186[1] = v156[0];
    *&v186[2] = *&v156[1];
    *(&v186[2] + 1) = v132;
    v186[3] = v163;
    v187 = v148[0];
    v188 = v148[1];
    v189 = v148[2];
    v190 = *&v148[3];
    v191 = v39;
    v50 = v150;
LABEL_50:
    v192 = v50;
    v51 = &qword_1EB99BA98;
    v52 = &unk_1B785D080;
    v53 = &v185;
LABEL_53:
    sub_1B7205418(v53, v51, v52);
    goto LABEL_54;
  }

  if (*(&v200 + 1))
  {
    v132 = 0;
    sub_1B7205588(v193, &v185, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205588(&v197, &v185, &qword_1EB990780, &unk_1B7819C00);
    goto LABEL_49;
  }

  v125 = v31;
  v56 = v32[1];
  v185 = *v32;
  v186[0] = v56;
  v186[1] = v32[2];
  v186[2] = *(v32 + 6);
  v186[3] = v32[4];
  sub_1B7205588(v193, &v183, &qword_1EB990780, &unk_1B7819C00);
  sub_1B7205588(&v197, &v183, &qword_1EB990780, &unk_1B7819C00);
  v49 = &v185;
LABEL_57:
  sub_1B7205418(v49, &qword_1EB990780, &unk_1B7819C00);
  v57 = (a1 + v125[12]);
  v58 = v57[3];
  v182 = v57[4];
  v60 = v57[1];
  v59 = v57[2];
  v181 = v58;
  v180 = v59;
  v61 = *v57;
  v62 = v57[2];
  v63 = *v57;
  v179 = v57[1];
  v178 = v61;
  v64 = (a2 + v125[12]);
  v65 = v64[3];
  v184[3] = v64[4];
  v66 = v64[1];
  v184[1] = v64[2];
  v184[2] = v65;
  v67 = *v64;
  v68 = *v64;
  v184[0] = v66;
  v183 = v67;
  v158 = v63;
  v159 = v60;
  v160[0] = v62;
  v144 = v57[4];
  v149[1] = v66;
  v149[2] = v184[1];
  *&v160[1] = *(v57 + 6);
  v69 = *(&v58 + 1);
  *&v149[3] = *(v64 + 6);
  v149[0] = v68;
  v70 = *(&v184[2] + 1);
  v140 = v64[4];
  if (*(&v58 + 1))
  {
    v71 = v57[1];
    v185 = *v57;
    v186[0] = v71;
    v186[1] = v57[2];
    *&v186[2] = *(v57 + 6);
    *(&v186[2] + 1) = *(&v181 + 1);
    v186[3] = v57[4];
    v72 = v71;
    v73 = WORD1(v71);
    *(v156 + 12) = v186[3];
    v155 = *(&v186[1] + 4);
    v156[0] = *(&v186[2] + 4);
    v154 = *(v186 + 4);
    if (*(&v184[2] + 1))
    {
      v126 = *(&v181 + 1);
      v74 = v64[1];
      v176 = *v64;
      v177[0] = v74;
      v177[1] = v64[2];
      *&v177[2] = *(v64 + 6);
      *(&v177[2] + 1) = *(&v184[2] + 1);
      v177[3] = v64[4];
      v122 = v74;
      v121 = v176;
      *(&v148[2] + 12) = v177[3];
      v148[1] = *(&v177[1] + 4);
      v148[2] = *(&v177[2] + 4);
      v148[0] = *(v177 + 4);
      v171 = *(&v186[3] + 1);
      v169 = *(&v186[1] + 8);
      v170 = *(&v186[2] + 8);
      v168 = *(v186 + 8);
      LODWORD(v128) = v72;
      v127 = v185;
      v120 = WORD4(v185);
      LODWORD(v132) = v73;
      v75 = WORD2(v185);
      v76 = WORD3(v185);
      v130 = WORD6(v185);
      v131 = WORD5(v185);
      v129 = HIWORD(v185);
      sub_1B7205588(&v178, &v172, &qword_1EB990780, &unk_1B7819C00);
      sub_1B7205588(&v183, &v172, &qword_1EB990780, &unk_1B7819C00);
      sub_1B7205588(&v185, &v172, &qword_1EB990780, &unk_1B7819C00);
      v123 = v76;
      v124 = v75;
      v77 = v127 | (v75 << 32) | (v76 << 48);
      v78 = v120;
      if (MEMORY[0x1B8CA5970](v77, v120 | (v131 << 16) | (v130 << 32) | (v129 << 48), v128 | (v132 << 16), v121, *(&v121 + 1), v122))
      {
        v163 = v168;
        v164 = v169;
        v165 = v170;
        v166 = v171;
        v150 = *(v148 + 4);
        v151 = *(&v148[1] + 4);
        v152 = *(&v148[2] + 4);
        v153 = *(&v148[3] + 4);
        sub_1B7321A3C(&v168, &v172);
        sub_1B7205588(&v176, &v172, &qword_1EB990780, &unk_1B7819C00);
        v79 = _s10FinanceKit18RawBankConnectDataO8CurrencyV2eeoiySbAE_AEtFZ_0(&v163, &v150);
        v161[0] = v150;
        v161[1] = v151;
        v161[2] = v152;
        *&v161[3] = v153;
        sub_1B7321ADC(v161);
        v172 = v163;
        v173 = v164;
        v174[0] = v165;
        *&v174[1] = v166;
        sub_1B7321ADC(&v172);
        sub_1B7205418(&v176, &qword_1EB990780, &unk_1B7819C00);
        if (v79)
        {
          *(&v161[1] + 4) = v154;
          LODWORD(v161[0]) = v127;
          WORD2(v161[0]) = v124;
          WORD3(v161[0]) = v123;
          WORD4(v161[0]) = v78;
          WORD5(v161[0]) = v131;
          WORD6(v161[0]) = v130;
          HIWORD(v161[0]) = v129;
          LOWORD(v161[1]) = v128;
          WORD1(v161[1]) = v132;
          *(&v161[2] + 4) = v155;
          *(&v161[3] + 4) = v156[0];
          v161[4] = *(v156 + 12);
          sub_1B76CB914(v161);
          v172 = v158;
          v173 = v159;
          v174[0] = v160[0];
          *&v174[1] = *&v160[1];
          *(&v174[1] + 1) = v126;
          v175 = v144;
          v80 = &v172;
          goto LABEL_69;
        }
      }

      else
      {
        sub_1B7205418(&v176, &qword_1EB990780, &unk_1B7819C00);
      }

      *(&v161[1] + 4) = v154;
      LODWORD(v161[0]) = v127;
      WORD2(v161[0]) = v124;
      WORD3(v161[0]) = v123;
      WORD4(v161[0]) = v78;
      WORD5(v161[0]) = v131;
      WORD6(v161[0]) = v130;
      HIWORD(v161[0]) = v129;
      LOWORD(v161[1]) = v128;
      WORD1(v161[1]) = v132;
      *(&v161[2] + 4) = v155;
      *(&v161[3] + 4) = v156[0];
      v161[4] = *(v156 + 12);
      sub_1B76CB914(v161);
      v172 = v158;
      v173 = v159;
      v174[0] = v160[0];
      *&v174[1] = *&v160[1];
      *(&v174[1] + 1) = v126;
      v175 = v144;
      v51 = &qword_1EB990780;
      v52 = &unk_1B7819C00;
      v53 = &v172;
      goto LABEL_53;
    }

    v176 = v185;
    LODWORD(v177[0]) = v71;
    *(v177 + 4) = *(v186 + 4);
    *(&v177[1] + 4) = *(&v186[1] + 4);
    *(&v177[2] + 4) = *(&v186[2] + 4);
    v177[3] = v186[3];
    sub_1B7205588(&v178, &v172, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205588(&v183, &v172, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205588(&v185, &v172, &qword_1EB990780, &unk_1B7819C00);
    sub_1B76CB914(&v176);
    goto LABEL_65;
  }

  if (*(&v184[2] + 1))
  {
    sub_1B7205588(&v178, &v185, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205588(&v183, &v185, &qword_1EB990780, &unk_1B7819C00);
LABEL_65:
    v185 = v158;
    v186[0] = v159;
    v186[1] = v160[0];
    *&v186[2] = *&v160[1];
    *(&v186[2] + 1) = v69;
    v186[3] = v144;
    v187 = v149[0];
    v188 = v149[1];
    v189 = v149[2];
    v190 = *&v149[3];
    v191 = v70;
    v50 = v140;
    goto LABEL_50;
  }

  v81 = v57[1];
  v185 = *v57;
  v186[0] = v81;
  v186[1] = v57[2];
  v186[2] = *(v57 + 6);
  v186[3] = v57[4];
  sub_1B7205588(&v178, &v176, &qword_1EB990780, &unk_1B7819C00);
  sub_1B7205588(&v183, &v176, &qword_1EB990780, &unk_1B7819C00);
  v80 = &v185;
LABEL_69:
  sub_1B7205418(v80, &qword_1EB990780, &unk_1B7819C00);
  v82 = v125[13];
  v83 = *(v16 + 48);
  sub_1B7205588(a1 + v82, v18, &qword_1EB98EBD0, &unk_1B7809780);
  v132 = v83;
  sub_1B7205588(a2 + v82, &v18[v83], &qword_1EB98EBD0, &unk_1B7809780);
  v84 = v139;
  v85 = *(v139 + 48);
  if (v85(v18, 1, v10) == 1)
  {
    if (v85(&v18[v132], 1, v10) == 1)
    {
      sub_1B7205418(v18, &qword_1EB98EBD0, &unk_1B7809780);
      v86 = v125;
      goto LABEL_76;
    }

LABEL_74:
    v51 = &qword_1EB98FCE0;
    v52 = &qword_1B7813550;
    v53 = v18;
    goto LABEL_53;
  }

  sub_1B7205588(v18, v15, &qword_1EB98EBD0, &unk_1B7809780);
  if (v85(&v18[v132], 1, v10) == 1)
  {
    (*(v84 + 8))(v15, v10);
    goto LABEL_74;
  }

  (*(v84 + 32))(v12, &v18[v132], v10);
  sub_1B77C7D24(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v87 = sub_1B7800828();
  v88 = *(v84 + 8);
  v88(v12, v10);
  v88(v15, v10);
  sub_1B7205418(v18, &qword_1EB98EBD0, &unk_1B7809780);
  v86 = v125;
  if ((v87 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_76:
  v89 = (a1 + v86[14]);
  v90 = v89[4];
  v174[1] = v89[3];
  v175 = v90;
  v91 = v89[2];
  v92 = v91;
  v173 = v89[1];
  v174[0] = v91;
  v172 = *v89;
  v125 = v86;
  v93 = (a2 + v86[14]);
  v94 = v93[3];
  v177[3] = v93[4];
  v95 = v93[1];
  v177[1] = v93[2];
  v177[2] = v94;
  v176 = *v93;
  v177[0] = v95;
  v168 = v172;
  v169 = v173;
  v170 = v92;
  v167 = v89[4];
  v164 = v95;
  v165 = v177[1];
  v171 = *(v89 + 6);
  v166 = *(v93 + 6);
  v96 = *(&v94 + 1);
  v162 = v93[4];
  v163 = v176;
  v139 = *(&v174[1] + 1);
  if (!*(&v174[1] + 1))
  {
    if (!*(&v94 + 1))
    {
      v108 = v89[1];
      v185 = *v89;
      v186[0] = v108;
      v186[1] = v89[2];
      v186[2] = *(v89 + 6);
      v186[3] = v89[4];
      sub_1B7205588(&v172, v161, &qword_1EB990780, &unk_1B7819C00);
      sub_1B7205588(&v176, v161, &qword_1EB990780, &unk_1B7819C00);
      v107 = &v185;
      goto LABEL_88;
    }

    sub_1B7205588(&v172, &v185, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205588(&v176, &v185, &qword_1EB990780, &unk_1B7819C00);
    goto LABEL_84;
  }

  v97 = v89[1];
  v185 = *v89;
  v186[0] = v97;
  v186[1] = v89[2];
  *&v186[2] = *(v89 + 6);
  *(&v186[2] + 1) = *(&v174[1] + 1);
  v186[3] = v89[4];
  v129 = v185;
  v128 = WORD2(v185);
  v130 = WORD3(v185);
  v131 = WORD4(v185);
  v132 = WORD5(v185);
  v98 = WORD6(v185);
  v99 = HIWORD(v185);
  v100 = v97;
  v101 = WORD1(v97);
  *(v160 + 12) = v186[3];
  v159 = *(&v186[1] + 4);
  v160[0] = *(&v186[2] + 4);
  v158 = *(v186 + 4);
  if (!*(&v94 + 1))
  {
    LODWORD(v161[0]) = v129;
    WORD2(v161[0]) = v128;
    WORD3(v161[0]) = v130;
    WORD4(v161[0]) = v131;
    WORD5(v161[0]) = v132;
    HIDWORD(v161[0]) = HIDWORD(v185);
    LODWORD(v161[1]) = v97;
    *(&v161[1] + 4) = *(v186 + 4);
    *(&v161[2] + 4) = *(&v186[1] + 4);
    *(&v161[3] + 4) = *(&v186[2] + 4);
    v161[4] = v186[3];
    sub_1B7205588(&v172, &v154, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205588(&v176, &v154, &qword_1EB990780, &unk_1B7819C00);
    sub_1B7205588(&v185, &v154, &qword_1EB990780, &unk_1B7819C00);
    sub_1B76CB914(v161);
LABEL_84:
    v185 = v168;
    v186[0] = v169;
    v186[1] = v170;
    *&v186[2] = v171;
    *(&v186[2] + 1) = v139;
    v186[3] = v167;
    v187 = v163;
    v188 = v164;
    v189 = v165;
    v190 = v166;
    v191 = v96;
    v50 = v162;
    goto LABEL_50;
  }

  v102 = v93[1];
  v161[0] = *v93;
  v161[1] = v102;
  v161[2] = v93[2];
  *&v161[3] = *(v93 + 6);
  *(&v161[3] + 1) = *(&v94 + 1);
  v161[4] = v93[4];
  LODWORD(v127) = v102;
  v126 = *(&v161[0] + 1);
  v103 = *&v161[0];
  *(&v149[2] + 12) = v161[4];
  v149[1] = *(&v161[2] + 4);
  v149[2] = *(&v161[3] + 4);
  v149[0] = *(&v161[1] + 4);
  v153 = *(&v186[3] + 1);
  v151 = *(&v186[1] + 8);
  v152 = *(&v186[2] + 8);
  v150 = *(v186 + 8);
  sub_1B7205588(&v172, &v154, &qword_1EB990780, &unk_1B7819C00);
  sub_1B7205588(&v176, &v154, &qword_1EB990780, &unk_1B7819C00);
  sub_1B7205588(&v185, &v154, &qword_1EB990780, &unk_1B7819C00);
  v104 = v128;
  v105 = v129;
  v123 = v98;
  *(&v121 + 1) = v99;
  LODWORD(v124) = v101;
  v122 = v100;
  if ((MEMORY[0x1B8CA5970](v129 | (v128 << 32) | (v130 << 48), v131 | (v132 << 16) | (v98 << 32) | (v99 << 48), v100 | (v101 << 16), v103, v126, v127) & 1) == 0)
  {
    sub_1B7205418(v161, &qword_1EB990780, &unk_1B7819C00);
    goto LABEL_86;
  }

  v144 = v150;
  v145 = v151;
  v146 = v152;
  v147 = v153;
  v140 = *(v149 + 4);
  v141 = *(&v149[1] + 4);
  v142 = *(&v149[2] + 4);
  v143 = *(&v149[3] + 4);
  sub_1B7321A3C(&v150, &v154);
  sub_1B7205588(v161, &v154, &qword_1EB990780, &unk_1B7819C00);
  v106 = _s10FinanceKit18RawBankConnectDataO8CurrencyV2eeoiySbAE_AEtFZ_0(&v144, &v140);
  v148[0] = v140;
  v148[1] = v141;
  v148[2] = v142;
  *&v148[3] = v143;
  sub_1B7321ADC(v148);
  v154 = v144;
  v155 = v145;
  v156[0] = v146;
  *&v156[1] = v147;
  sub_1B7321ADC(&v154);
  sub_1B7205418(v161, &qword_1EB990780, &unk_1B7819C00);
  if (!v106)
  {
LABEL_86:
    *(&v148[1] + 4) = v158;
    LODWORD(v148[0]) = v105;
    WORD2(v148[0]) = v104;
    WORD3(v148[0]) = v130;
    WORD4(v148[0]) = v131;
    WORD5(v148[0]) = v132;
    WORD6(v148[0]) = v123;
    HIWORD(v148[0]) = WORD4(v121);
    LOWORD(v148[1]) = v122;
    WORD1(v148[1]) = v124;
    *(&v148[2] + 4) = v159;
    *(&v148[3] + 4) = v160[0];
    v148[4] = *(v160 + 12);
    sub_1B76CB914(v148);
    v154 = v168;
    v155 = v169;
    v156[0] = v170;
    *&v156[1] = v171;
    *(&v156[1] + 1) = v139;
    v157 = v167;
    v51 = &qword_1EB990780;
    v52 = &unk_1B7819C00;
    v53 = &v154;
    goto LABEL_53;
  }

  *(&v148[1] + 4) = v158;
  LODWORD(v148[0]) = v105;
  WORD2(v148[0]) = v104;
  WORD3(v148[0]) = v130;
  WORD4(v148[0]) = v131;
  WORD5(v148[0]) = v132;
  WORD6(v148[0]) = v123;
  HIWORD(v148[0]) = WORD4(v121);
  LOWORD(v148[1]) = v122;
  WORD1(v148[1]) = v124;
  *(&v148[2] + 4) = v159;
  *(&v148[3] + 4) = v160[0];
  v148[4] = *(v160 + 12);
  sub_1B76CB914(v148);
  v154 = v168;
  v155 = v169;
  v156[0] = v170;
  *&v156[1] = v171;
  *(&v156[1] + 1) = v139;
  v157 = v167;
  v107 = &v154;
LABEL_88:
  sub_1B7205418(v107, &qword_1EB990780, &unk_1B7819C00);
  v109 = v125[15];
  v110 = v134;
  v111 = *(v135 + 48);
  sub_1B7205588(a1 + v109, v134, &qword_1EB990770, &unk_1B786E520);
  sub_1B7205588(a2 + v109, v110 + v111, &qword_1EB990770, &unk_1B786E520);
  v112 = *(v136 + 48);
  if (v112(v110, 1, v138) == 1)
  {
    if (v112(&v134[v111], 1, v138) == 1)
    {
      sub_1B7205418(v134, &qword_1EB990770, &unk_1B786E520);
LABEL_95:
      v54 = *(a1 + v125[16]) ^ *(a2 + v125[16]) ^ 1;
      return v54 & 1;
    }

    goto LABEL_93;
  }

  v113 = v134;
  sub_1B7205588(v134, v137, &qword_1EB990770, &unk_1B786E520);
  if (v112((v113 + v111), 1, v138) == 1)
  {
    sub_1B77C82D0(v137, type metadata accessor for RawBankConnectData.Actions);
LABEL_93:
    v51 = &qword_1EB99BA90;
    v52 = &qword_1B785D078;
    v53 = v134;
    goto LABEL_53;
  }

  v114 = v134;
  v115 = &v134[v111];
  v116 = v133;
  sub_1B77C7CBC(v115, v133, type metadata accessor for RawBankConnectData.Actions);
  v117 = v137;
  v118 = static RawBankConnectData.Actions.== infix(_:_:)();
  sub_1B77C82D0(v116, type metadata accessor for RawBankConnectData.Actions);
  sub_1B77C82D0(v117, type metadata accessor for RawBankConnectData.Actions);
  sub_1B7205418(v114, &qword_1EB990770, &unk_1B786E520);
  if (v118)
  {
    goto LABEL_95;
  }

LABEL_54:
  v54 = 0;
  return v54 & 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO12AssetAccountV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Actions(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770, &unk_1B786E520);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BA90, &qword_1B785D078);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  if (*a1 != *a2 && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_47;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15 || (sub_1B731D168(v14, v15) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (v15)
  {
    goto LABEL_47;
  }

  v16 = *(a1 + 40);
  v17 = *(a2 + 40);
  if ((*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_1B78020F8() & 1) == 0 || (sub_1B72C1E14(v16, v17) & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_47;
  }

  v18 = *(a1 + 64);
  v19 = *(a2 + 64);
  if (v18 == 3)
  {
    if (v19 != 3)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v19 == 3)
    {
      goto LABEL_47;
    }

    v20 = 1313165391;
    if (*(a1 + 64))
    {
      if (v18 == 1)
      {
        v21 = 0xE600000000000000;
        v22 = 0x4445534F4C43;
      }

      else
      {
        v21 = 0xE700000000000000;
        v22 = 0x474E49444E4550;
      }
    }

    else
    {
      v21 = 0xE400000000000000;
      v22 = 1313165391;
    }

    if (*(a2 + 64))
    {
      if (v19 == 1)
      {
        v23 = 0xE600000000000000;
        v20 = 0x4445534F4C43;
      }

      else
      {
        v23 = 0xE700000000000000;
        v20 = 0x474E49444E4550;
      }
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    if (v22 == v20 && v21 == v23)
    {
    }

    else
    {
      LODWORD(v36) = sub_1B78020F8();

      if ((v36 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  v24 = *(a1 + 80);
  v25 = *(a2 + 80);
  if (v24)
  {
    if (!v25 || (*(a1 + 72) != *(a2 + 72) || v24 != v25) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (v25)
  {
    goto LABEL_47;
  }

  v26 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  if (_s10FinanceKit18RawBankConnectDataO15AccountBalancesV2eeoiySbAE_AEtFZ_0(a1 + *(v26 + 40), a2 + *(v26 + 40)))
  {
    v36 = v26;
    v27 = *(v26 + 44);
    v28 = *(v11 + 48);
    sub_1B7205588(a1 + v27, v13, &qword_1EB990770, &unk_1B786E520);
    v29 = a2 + v27;
    v30 = v28;
    sub_1B7205588(v29, &v13[v28], &qword_1EB990770, &unk_1B786E520);
    v31 = *(v5 + 48);
    if (v31(v13, 1, v4) == 1)
    {
      if (v31(&v13[v30], 1, v4) == 1)
      {
        sub_1B7205418(v13, &qword_1EB990770, &unk_1B786E520);
LABEL_50:
        v32 = *(a1 + *(v36 + 48)) ^ *(a2 + *(v36 + 48)) ^ 1;
        return v32 & 1;
      }

      goto LABEL_46;
    }

    sub_1B7205588(v13, v10, &qword_1EB990770, &unk_1B786E520);
    if (v31(&v13[v30], 1, v4) == 1)
    {
      sub_1B77C82D0(v10, type metadata accessor for RawBankConnectData.Actions);
LABEL_46:
      sub_1B7205418(v13, &qword_1EB99BA90, &qword_1B785D078);
      goto LABEL_47;
    }

    sub_1B77C7CBC(&v13[v30], v7, type metadata accessor for RawBankConnectData.Actions);
    v34 = _s10FinanceKit18RawBankConnectDataO7ActionsV2eeoiySbAE_AEtFZ_0(v10, v7);
    sub_1B77C82D0(v7, type metadata accessor for RawBankConnectData.Actions);
    sub_1B77C82D0(v10, type metadata accessor for RawBankConnectData.Actions);
    sub_1B7205418(v13, &qword_1EB990770, &unk_1B786E520);
    if (v34)
    {
      goto LABEL_50;
    }
  }

LABEL_47:
  v32 = 0;
  return v32 & 1;
}

unint64_t sub_1B77D19E0()
{
  result = qword_1EB99E568;
  if (!qword_1EB99E568)
  {
    result = swift_getWitnessTable(aHb7, &_s12AssetAccountV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E568);
  }

  return result;
}

unint64_t sub_1B77D1A34()
{
  result = qword_1EB99E570;
  if (!qword_1EB99E570)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.MaskedAccountNumber, &type metadata for RawBankConnectData.MaskedAccountNumber, v0, v1);
    atomic_store(result, &qword_1EB99E570);
  }

  return result;
}

unint64_t sub_1B77D1A88()
{
  result = qword_1EB99E578;
  if (!qword_1EB99E578)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AccountStatus, &type metadata for RawBankConnectData.AccountStatus, v0, v1);
    atomic_store(result, &qword_1EB99E578);
  }

  return result;
}

unint64_t sub_1B77D1ADC()
{
  result = qword_1EB99E588;
  if (!qword_1EB99E588)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.Account.ClientConfiguration, &type metadata for RawBankConnectData.Account.ClientConfiguration, v0, v1);
    atomic_store(result, &qword_1EB99E588);
  }

  return result;
}

unint64_t sub_1B77D1B30()
{
  result = qword_1EB99E598;
  if (!qword_1EB99E598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.MaskedAccountNumber, &type metadata for RawBankConnectData.MaskedAccountNumber, v0, v1);
    atomic_store(result, &qword_1EB99E598);
  }

  return result;
}

unint64_t sub_1B77D1B84()
{
  result = qword_1EB99E5A0;
  if (!qword_1EB99E5A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AccountStatus, &type metadata for RawBankConnectData.AccountStatus, v0, v1);
    atomic_store(result, &qword_1EB99E5A0);
  }

  return result;
}

unint64_t sub_1B77D1BD8()
{
  result = qword_1EB99E5B0;
  if (!qword_1EB99E5B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.Account.ClientConfiguration, &type metadata for RawBankConnectData.Account.ClientConfiguration, v0, v1);
    atomic_store(result, &qword_1EB99E5B0);
  }

  return result;
}

unint64_t sub_1B77D1C2C()
{
  result = qword_1EB99E5C0;
  if (!qword_1EB99E5C0)
  {
    result = swift_getWitnessTable(byte_1B786F9A0, &_s16LiabilityAccountV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E5C0);
  }

  return result;
}

void *sub_1B77D1C80(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E840, &qword_1B786FAB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77C8228();
  sub_1B78023C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1B77D3B58();
    sub_1B7801E48();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1B77D1DF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364496E617066 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788E250 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746E756F636361 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7365636E616C6162 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7880F40 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B77D20DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364496E617066 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788E250 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746E756F636361 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7365636E616C6162 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x694C746964657263 && a2 == 0xEB0000000074696DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875850 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D7961507478656ELL && a2 == 0xEF65746144746E65 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875870 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7880F40 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t _s10FinanceKit18RawBankConnectDataO13AccountStatusO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7801D18();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B77D2564()
{
  result = qword_1EB99E5D8;
  if (!qword_1EB99E5D8)
  {
    result = swift_getWitnessTable(aI_59, &_s15AccountBalancesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E5D8);
  }

  return result;
}

unint64_t sub_1B77D25B8()
{
  result = qword_1EB99E600;
  if (!qword_1EB99E600)
  {
    result = swift_getWitnessTable(byte_1B786F900, &_s22InternalAccountBalanceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E600);
  }

  return result;
}

unint64_t sub_1B77D260C()
{
  result = qword_1EB99E618;
  if (!qword_1EB99E618)
  {
    result = swift_getWitnessTable(asc_1B786F8B0, &_s19MaskedAccountNumberV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E618);
  }

  return result;
}

unint64_t sub_1B77D2660()
{
  result = qword_1EB99E620;
  if (!qword_1EB99E620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.MaskedAccountNumber.SchemeType, &type metadata for RawBankConnectData.MaskedAccountNumber.SchemeType, v0, v1);
    atomic_store(result, &qword_1EB99E620);
  }

  return result;
}

unint64_t sub_1B77D26B4()
{
  result = qword_1EB99E630;
  if (!qword_1EB99E630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.MaskedAccountNumber.SchemeType, &type metadata for RawBankConnectData.MaskedAccountNumber.SchemeType, v0, v1);
    atomic_store(result, &qword_1EB99E630);
  }

  return result;
}

unint64_t sub_1B77D2708()
{
  result = qword_1EB99E640;
  if (!qword_1EB99E640)
  {
    result = swift_getWitnessTable(aY_51, &_s7AccountO19ClientConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E640);
  }

  return result;
}

unint64_t sub_1B77D275C()
{
  result = qword_1EB99E658;
  if (!qword_1EB99E658)
  {
    result = swift_getWitnessTable(byte_1B786F810, &_s16AccountsResponseV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E658);
  }

  return result;
}

uint64_t sub_1B77D27B0(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99E660, &qword_1B786E5A8);
    v10 = sub_1B77C7D24(a2, type metadata accessor for RawBankConnectData.Account, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B77D284C()
{
  result = qword_1EB99E688;
  if (!qword_1EB99E688)
  {
    result = swift_getWitnessTable(byte_1B786F7C0, &_s18AccountRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E688);
  }

  return result;
}

unint64_t sub_1B77D28A0()
{
  result = qword_1EB99E6A0;
  if (!qword_1EB99E6A0)
  {
    result = swift_getWitnessTable(aI_60, &_s19AccountsRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E6A0);
  }

  return result;
}

unint64_t sub_1B77D28F8()
{
  result = qword_1EB99E6B0;
  if (!qword_1EB99E6B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AccountStatus, &type metadata for RawBankConnectData.AccountStatus, v0, v1);
    atomic_store(result, &qword_1EB99E6B0);
  }

  return result;
}

unint64_t sub_1B77D2980()
{
  result = qword_1EB99E6C8;
  if (!qword_1EB99E6C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.MaskedAccountNumber.SchemeType, &type metadata for RawBankConnectData.MaskedAccountNumber.SchemeType, v0, v1);
    atomic_store(result, &qword_1EB99E6C8);
  }

  return result;
}

unint64_t sub_1B77D2A08()
{
  result = qword_1EB99E6E0;
  if (!qword_1EB99E6E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AccountRequestBody, &type metadata for RawBankConnectData.AccountRequestBody, v0, v1);
    atomic_store(result, &qword_1EB99E6E0);
  }

  return result;
}

unint64_t sub_1B77D2A60()
{
  result = qword_1EB99E6E8;
  if (!qword_1EB99E6E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AccountsRequestBody, &type metadata for RawBankConnectData.AccountsRequestBody, v0, v1);
    atomic_store(result, &qword_1EB99E6E8);
  }

  return result;
}

uint64_t sub_1B77D2AB4(uint64_t a1)
{
  result = type metadata accessor for RawBankConnectData.AssetAccount(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RawBankConnectData.LiabilityAccount(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B77D2B50(uint64_t a1)
{
  sub_1B727FFC4(319);
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB99E710, &type metadata for RawBankConnectData.AccountStatus);
    if (v2 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for RawBankConnectData.AccountBalances(319);
        if (v4 <= 0x3F)
        {
          sub_1B77D2E38(319, &qword_1EB99B990, type metadata accessor for RawBankConnectData.Actions);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B77D2CA8(uint64_t a1)
{
  sub_1B727FFC4(319);
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB99E710, &type metadata for RawBankConnectData.AccountStatus);
    if (v2 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for RawBankConnectData.AccountBalances(319);
        if (v4 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EB99B988, &type metadata for RawBankConnectData.MonetaryAmount);
          if (v5 <= 0x3F)
          {
            sub_1B77D2E38(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
            if (v6 <= 0x3F)
            {
              sub_1B77D2E38(319, &qword_1EB99B990, type metadata accessor for RawBankConnectData.Actions);
              if (v7 <= 0x3F)
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

void sub_1B77D2E38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B77D2EC4(uint64_t a1)
{
  sub_1B77D2E38(319, &qword_1EB99E738, type metadata accessor for RawBankConnectData.InternalAccountBalance);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B77D2F74(uint64_t a1)
{
  result = sub_1B77FF988();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B77D310C()
{
  result = qword_1EB99E750;
  if (!qword_1EB99E750)
  {
    result = swift_getWitnessTable(aY_52, &_s7AccountO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E750);
  }

  return result;
}

unint64_t sub_1B77D3164()
{
  result = qword_1EB99E758;
  if (!qword_1EB99E758)
  {
    result = swift_getWitnessTable(byte_1B786F188, &_s12AssetAccountV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E758);
  }

  return result;
}

unint64_t sub_1B77D31BC()
{
  result = qword_1EB99E760;
  if (!qword_1EB99E760)
  {
    result = swift_getWitnessTable(asc_1B786F240, &_s16LiabilityAccountV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E760);
  }

  return result;
}

unint64_t sub_1B77D3214()
{
  result = qword_1EB99E768;
  if (!qword_1EB99E768)
  {
    result = swift_getWitnessTable(aQ_57, &_s15AccountBalancesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E768);
  }

  return result;
}

unint64_t sub_1B77D326C()
{
  result = qword_1EB99E770;
  if (!qword_1EB99E770)
  {
    result = swift_getWitnessTable(byte_1B786F3B0, &_s22InternalAccountBalanceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E770);
  }

  return result;
}

unint64_t sub_1B77D32C4()
{
  result = qword_1EB99E778;
  if (!qword_1EB99E778)
  {
    result = swift_getWitnessTable(byte_1B786F468, &_s19MaskedAccountNumberV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E778);
  }

  return result;
}

unint64_t sub_1B77D331C()
{
  result = qword_1EB99E780;
  if (!qword_1EB99E780)
  {
    result = swift_getWitnessTable(asc_1B786F520, &_s7AccountO19ClientConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E780);
  }

  return result;
}

unint64_t sub_1B77D3374()
{
  result = qword_1EB99E788;
  if (!qword_1EB99E788)
  {
    result = swift_getWitnessTable(aQ_58, &_s16AccountsResponseV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E788);
  }

  return result;
}

unint64_t sub_1B77D33CC()
{
  result = qword_1EB99E790;
  if (!qword_1EB99E790)
  {
    result = swift_getWitnessTable(byte_1B786F690, &_s18AccountRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E790);
  }

  return result;
}

unint64_t sub_1B77D3424()
{
  result = qword_1EB99E798;
  if (!qword_1EB99E798)
  {
    result = swift_getWitnessTable(byte_1B786F748, &_s19AccountsRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E798);
  }

  return result;
}

unint64_t sub_1B77D347C()
{
  result = qword_1EB99E7A0;
  if (!qword_1EB99E7A0)
  {
    result = swift_getWitnessTable(a9_27, &_s19AccountsRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7A0);
  }

  return result;
}

unint64_t sub_1B77D34D4()
{
  result = qword_1EB99E7A8;
  if (!qword_1EB99E7A8)
  {
    result = swift_getWitnessTable(aQ_59, &_s19AccountsRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7A8);
  }

  return result;
}

unint64_t sub_1B77D352C()
{
  result = qword_1EB99E7B0;
  if (!qword_1EB99E7B0)
  {
    result = swift_getWitnessTable(byte_1B786F600, &_s18AccountRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7B0);
  }

  return result;
}

unint64_t sub_1B77D3584()
{
  result = qword_1EB99E7B8;
  if (!qword_1EB99E7B8)
  {
    result = swift_getWitnessTable(asc_1B786F628, &_s18AccountRequestBodyV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7B8);
  }

  return result;
}

unint64_t sub_1B77D35DC()
{
  result = qword_1EB99E7C0;
  if (!qword_1EB99E7C0)
  {
    result = swift_getWitnessTable(byte_1B786F548, &_s16AccountsResponseV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7C0);
  }

  return result;
}

unint64_t sub_1B77D3634()
{
  result = qword_1EB99E7C8;
  if (!qword_1EB99E7C8)
  {
    result = swift_getWitnessTable(byte_1B786F570, &_s16AccountsResponseV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7C8);
  }

  return result;
}

unint64_t sub_1B77D368C()
{
  result = qword_1EB99E7D0;
  if (!qword_1EB99E7D0)
  {
    result = swift_getWitnessTable(aA_56, &_s7AccountO19ClientConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7D0);
  }

  return result;
}

unint64_t sub_1B77D36E4()
{
  result = qword_1EB99E7D8;
  if (!qword_1EB99E7D8)
  {
    result = swift_getWitnessTable(aY_53, &_s7AccountO19ClientConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7D8);
  }

  return result;
}

unint64_t sub_1B77D373C()
{
  result = qword_1EB99E7E0;
  if (!qword_1EB99E7E0)
  {
    result = swift_getWitnessTable(byte_1B786F3D8, &_s19MaskedAccountNumberV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7E0);
  }

  return result;
}

unint64_t sub_1B77D3794()
{
  result = qword_1EB99E7E8;
  if (!qword_1EB99E7E8)
  {
    result = swift_getWitnessTable(a1_33, &_s19MaskedAccountNumberV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7E8);
  }

  return result;
}

unint64_t sub_1B77D37EC()
{
  result = qword_1EB99E7F0;
  if (!qword_1EB99E7F0)
  {
    result = swift_getWitnessTable(aEb7, &_s22InternalAccountBalanceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7F0);
  }

  return result;
}

unint64_t sub_1B77D3844()
{
  result = qword_1EB99E7F8;
  if (!qword_1EB99E7F8)
  {
    result = swift_getWitnessTable(byte_1B786F348, &_s22InternalAccountBalanceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E7F8);
  }

  return result;
}

unint64_t sub_1B77D389C()
{
  result = qword_1EB99E800;
  if (!qword_1EB99E800)
  {
    result = swift_getWitnessTable(byte_1B786F268, &_s15AccountBalancesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E800);
  }

  return result;
}

unint64_t sub_1B77D38F4()
{
  result = qword_1EB99E808;
  if (!qword_1EB99E808)
  {
    result = swift_getWitnessTable(byte_1B786F290, &_s15AccountBalancesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E808);
  }

  return result;
}

unint64_t sub_1B77D394C()
{
  result = qword_1EB99E810;
  if (!qword_1EB99E810)
  {
    result = swift_getWitnessTable(aA_57, &_s16LiabilityAccountV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E810);
  }

  return result;
}

unint64_t sub_1B77D39A4()
{
  result = qword_1EB99E818;
  if (!qword_1EB99E818)
  {
    result = swift_getWitnessTable(aY_54, &_s16LiabilityAccountV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E818);
  }

  return result;
}

unint64_t sub_1B77D39FC()
{
  result = qword_1EB99E820;
  if (!qword_1EB99E820)
  {
    result = swift_getWitnessTable(byte_1B786F0F8, &_s12AssetAccountV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E820);
  }

  return result;
}

unint64_t sub_1B77D3A54()
{
  result = qword_1EB99E828;
  if (!qword_1EB99E828)
  {
    result = swift_getWitnessTable(byte_1B786F120, &_s12AssetAccountV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E828);
  }

  return result;
}

unint64_t sub_1B77D3AAC()
{
  result = qword_1EB99E830;
  if (!qword_1EB99E830)
  {
    result = swift_getWitnessTable(byte_1B786F040, &_s7AccountO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E830);
  }

  return result;
}

unint64_t sub_1B77D3B04()
{
  result = qword_1EB99E838;
  if (!qword_1EB99E838)
  {
    result = swift_getWitnessTable(aHb7_0, &_s7AccountO13DiscriminatorV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E838);
  }

  return result;
}

unint64_t sub_1B77D3B58()
{
  result = qword_1EB99E848;
  if (!qword_1EB99E848)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AssetLiabilityIndicator, &type metadata for RawBankConnectData.AssetLiabilityIndicator, v0, v1);
    atomic_store(result, &qword_1EB99E848);
  }

  return result;
}

unint64_t sub_1B77D3BAC()
{
  result = qword_1EB99E850;
  if (!qword_1EB99E850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.MaskedAccountNumber.SchemeType, &type metadata for RawBankConnectData.MaskedAccountNumber.SchemeType, v0, v1);
    atomic_store(result, &qword_1EB99E850);
  }

  return result;
}

unint64_t sub_1B77D3C00()
{
  result = qword_1EB99E858;
  if (!qword_1EB99E858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AccountStatus, &type metadata for RawBankConnectData.AccountStatus, v0, v1);
    atomic_store(result, &qword_1EB99E858);
  }

  return result;
}

void *static URL.financeCloudDatabaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1B77FF4F8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_1B7800868();
    v18 = v17;

    v24 = v16;
    v25 = v18;
    MEMORY[0x1B8CA4D30](0x7972617262694C2FLL, 0xE800000000000000);
    sub_1B77FF3D8();

    v19 = *(v2 + 32);
    v19(v8, v5, v1);
    sub_1B77FF418();
    v20 = *(v2 + 8);
    v20(v8, v1);
    v19(v13, v11, v1);
    v21 = v23;
    sub_1B77FF428();
    v20(v13, v1);
    return (*(v2 + 56))(v21, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financeDropboxDatabaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1B77FF4F8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_1B7800868();
    v18 = v17;

    v24 = v16;
    v25 = v18;
    MEMORY[0x1B8CA4D30](0x7972617262694C2FLL, 0xE800000000000000);
    sub_1B77FF3D8();

    v19 = *(v2 + 32);
    v19(v8, v5, v1);
    sub_1B77FF418();
    v20 = *(v2 + 8);
    v20(v8, v1);
    v19(v13, v11, v1);
    v21 = v23;
    sub_1B77FF428();
    v20(v13, v1);
    return (*(v2 + 56))(v21, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financeLocalDatabaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1B77FF4F8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_1B7800868();
    v18 = v17;

    v24 = v16;
    v25 = v18;
    MEMORY[0x1B8CA4D30](0x7972617262694C2FLL, 0xE800000000000000);
    sub_1B77FF3D8();

    v19 = *(v2 + 32);
    v19(v8, v5, v1);
    sub_1B77FF418();
    v20 = *(v2 + 8);
    v20(v8, v1);
    v19(v13, v11, v1);
    v21 = v23;
    sub_1B77FF428();
    v20(v13, v1);
    return (*(v2 + 56))(v21, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t URL.filePath(relativeTo:resolveSymlinks:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v49 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0, &qword_1B783A950);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v42 - v10;
  v12 = sub_1B7800378();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v43 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v42 - v15;
  v17 = sub_1B77FF4F8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v42 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v42 - v25;
  v48 = v16;
  v50 = v24;
  if (a2)
  {
    sub_1B77FF448();
    sub_1B77FF448();
    v27 = *(v18 + 16);
  }

  else
  {
    v27 = *(v18 + 16);
    v27(v42 - v25, a1, v17);
    v27(v24, v4, v17);
  }

  v47 = v26;
  v27(v21, v26, v17);
  sub_1B7800248();
  v29 = v45;
  v28 = v46;
  v30 = *(v45 + 48);
  if (v30(v11, 1, v46) == 1)
  {
    goto LABEL_7;
  }

  v42[0] = *(v29 + 32);
  v42[1] = v29 + 32;
  (v42[0])(v48, v11, v28);
  v27(v21, v50, v17);
  v11 = v44;
  sub_1B7800248();
  if (v30(v11, 1, v28) == 1)
  {
    (*(v29 + 8))(v48, v28);
LABEL_7:
    v31 = *(v18 + 8);
    v31(v50, v17);
    v31(v47, v17);
    sub_1B72B9488(v11);
    return (*(v29 + 56))(v49, 1, 1, v28);
  }

  v33 = v43;
  v34 = v11;
  v35 = v42[0];
  (v42[0])(v43, v34, v28);
  v36 = v48;
  v37 = sub_1B7800278();
  v38 = *(v29 + 8);
  v38(v36, v28);
  v39 = *(v18 + 8);
  v39(v50, v17);
  v39(v47, v17);
  v40 = (v29 + 56);
  if (v37)
  {
    v41 = v49;
    v35(v49, v33, v28);
    return (*v40)(v41, 0, 1, v28);
  }

  else
  {
    v38(v33, v28);
    return (*v40)(v49, 1, 1, v28);
  }
}

void *static URL.libraryURL.getter@<X0>(uint64_t a2@<X8>)
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v4 = result;
    sub_1B7800868();

    MEMORY[0x1B8CA4D30](0x7972617262694C2FLL, 0xE800000000000000);
    sub_1B77FF3D8();

    v5 = sub_1B77FF4F8();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 0, 1, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B77D4948@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v12 = result;
    v13 = sub_1B7800868();
    v15 = v14;

    v16[0] = v13;
    v16[1] = v15;
    MEMORY[0x1B8CA4D30](0x7972617262694C2FLL, 0xE800000000000000);
    sub_1B77FF3D8();

    (*(v5 + 32))(v10, v8, v4);
    sub_1B77FF418();
    (*(v5 + 8))(v10, v4);
    return (*(v5 + 56))(a3, 0, 1, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financePersistingPlistURL.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1B77FF4F8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_1B7800868();
    v18 = v17;

    v24 = v16;
    v25 = v18;
    MEMORY[0x1B8CA4D30](0x7972617262694C2FLL, 0xE800000000000000);
    sub_1B77FF3D8();

    v19 = *(v2 + 32);
    v19(v8, v5, v1);
    sub_1B77FF418();
    v20 = *(v2 + 8);
    v20(v8, v1);
    v19(v13, v11, v1);
    v21 = v23;
    sub_1B77FF428();
    v20(v13, v1);
    return (*(v2 + 56))(v21, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 BankTransactionCode.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  return result;
}

__n128 ProprietaryBankTransactionCode.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = a1->n128_u64[0];
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  return result;
}

FinanceKit::BankTransactionCode __swiftcall BankTransactionCode.init(code:subCode:)(Swift::String code, Swift::String subCode)
{
  *v2 = code;
  v2[1] = subCode;
  result.subCode = subCode;
  result.code = code;
  return result;
}

FinanceKit::ProprietaryBankTransactionCode __swiftcall ProprietaryBankTransactionCode.init(code:issuer:)(Swift::String code, Swift::String_optional issuer)
{
  v2->value = code;
  v2[1] = issuer;
  result.issuer = issuer;
  result.code = code;
  return result;
}

uint64_t BankTransactionCode.code.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BankTransactionCode.subCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static BankTransactionCode.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t sub_1B77D4EB8(uint64_t a1)
{
  v2 = sub_1B77D50C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D4EF4(uint64_t a1)
{
  v2 = sub_1B77D50C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankTransactionCode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E868, &qword_1B786FAE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D50C4();
  sub_1B78023F8();
  v12 = 0;
  v8 = v10[3];
  sub_1B7801F78();
  if (!v8)
  {
    v11 = 1;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B77D50C4()
{
  result = qword_1EB99E870;
  if (!qword_1EB99E870)
  {
    result = swift_getWitnessTable(byte_1B786FE9C, &type metadata for BankTransactionCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E870);
  }

  return result;
}

void BankTransactionCode.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E878, &qword_1B786FAE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D50C4();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = 0;
    v9 = sub_1B7801DF8();
    v11 = v10;
    v16 = v9;
    v17 = 1;
    v12 = sub_1B7801DF8();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t ProprietaryBankTransactionCode.issuer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static ProprietaryBankTransactionCode.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1B78020F8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B77D5418(uint64_t a1)
{
  v2 = sub_1B77D5624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D5454(uint64_t a1)
{
  v2 = sub_1B77D5624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProprietaryBankTransactionCode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E880, &qword_1B786FAF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D5624();
  sub_1B78023F8();
  v12 = 0;
  v8 = v10[3];
  sub_1B7801F78();
  if (!v8)
  {
    v11 = 1;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B77D5624()
{
  result = qword_1EB99E888;
  if (!qword_1EB99E888)
  {
    result = swift_getWitnessTable(aM_37, &type metadata for ProprietaryBankTransactionCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E888);
  }

  return result;
}

uint64_t ProprietaryBankTransactionCode.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1B7800798();
  if (!v2)
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t ProprietaryBankTransactionCode.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  return sub_1B7802368();
}

void ProprietaryBankTransactionCode.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E890, &qword_1B786FAF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77D5624();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = 0;
    v9 = sub_1B7801DF8();
    v11 = v10;
    v16 = v9;
    v17 = 1;
    v12 = sub_1B7801D78();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1B77D59B0()
{
  v1 = *(v0 + 24);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  return sub_1B7802368();
}

uint64_t sub_1B77D5A3C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1B7800798();
  if (!v2)
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t sub_1B77D5AB8(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802318();
  if (v2)
  {
    sub_1B7800798();
  }

  return sub_1B7802368();
}

unint64_t sub_1B77D5B44()
{
  result = qword_1EB99E898;
  if (!qword_1EB99E898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProprietaryBankTransactionCode, &type metadata for ProprietaryBankTransactionCode, v0, v1);
    atomic_store(result, &qword_1EB99E898);
  }

  return result;
}

unint64_t sub_1B77D5BDC()
{
  result = qword_1EB99E8A0;
  if (!qword_1EB99E8A0)
  {
    result = swift_getWitnessTable(aB7_1, &type metadata for BankTransactionCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E8A0);
  }

  return result;
}

unint64_t sub_1B77D5C34()
{
  result = qword_1EB99E8A8;
  if (!qword_1EB99E8A8)
  {
    result = swift_getWitnessTable(asc_1B786FE24, &type metadata for ProprietaryBankTransactionCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E8A8);
  }

  return result;
}

unint64_t sub_1B77D5C8C()
{
  result = qword_1EB99E8B0;
  if (!qword_1EB99E8B0)
  {
    result = swift_getWitnessTable(asc_1B786FD94, &type metadata for ProprietaryBankTransactionCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E8B0);
  }

  return result;
}

unint64_t sub_1B77D5CE4()
{
  result = qword_1EB99E8B8;
  if (!qword_1EB99E8B8)
  {
    result = swift_getWitnessTable(aU_37, &type metadata for ProprietaryBankTransactionCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E8B8);
  }

  return result;
}

unint64_t sub_1B77D5D3C()
{
  result = qword_1EB99E8C0;
  if (!qword_1EB99E8C0)
  {
    result = swift_getWitnessTable(byte_1B786FCDC, &type metadata for BankTransactionCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E8C0);
  }

  return result;
}

unint64_t sub_1B77D5D94()
{
  result = qword_1EB99E8C8;
  if (!qword_1EB99E8C8)
  {
    result = swift_getWitnessTable(asc_1B786FD04, &type metadata for BankTransactionCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99E8C8);
  }

  return result;
}

uint64_t FinanceKitUserDefault.init(key:default:isAppleInternalOnly:deviceInfo:userDefaults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v13 = a4;
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for FinanceKitUserDefault(0, a8, a3, a4);
  sub_1B71E4C44(a7, &a9[v16[10]]);
  v17 = *(a8 - 8);
  (*(v17 + 16))(&a9[v16[7]], a3, a8);
  result = (*(v17 + 32))(&a9[v16[8]], a3, a8);
  a9[v16[9]] = v13;
  v19 = &a9[v16[11]];
  *v19 = a5;
  *(v19 + 1) = a6;
  return result;
}

uint64_t UncheckedSendableUserDefaults.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t UncheckedSendableUserDefaults.object(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_1B77D6028@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_1B7201D1C(a2, v5);
}

Swift::String_optional __swiftcall UncheckedSendableUserDefaults.string(forKey:)(Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = (*(v5 + 32))(countAndFlagsBits, object, v4, v5);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

void sub_1B77D6118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7303F28(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1B78020D8();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1B7800838();
  [v3 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

double sub_1B77D6278@<D0>(_OWORD *a3@<X8>)
{
  v5 = *v3;
  v6 = sub_1B7800838();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_1B7801848();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_1B77D630C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1B7800838();
  v5 = [v3 BOOLForKey_];

  return v5;
}

uint64_t sub_1B77D6354(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1B7800838();
  v5 = [v3 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1B7800868();

  return v6;
}

uint64_t sub_1B77D63D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1B7800838();
  v5 = [v3 arrayForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1B7800C38();

  return v6;
}

void sub_1B77D644C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1B7800838();
  [v3 removeObjectForKey_];
}

uint64_t sub_1B77D64A4()
{
  v1 = [*v0 dictionaryRepresentation];
  v2 = sub_1B7800728();

  return v2;
}

void sub_1B77D6508(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1B7800838();
  [v3 removePersistentDomainForName_];
}

uint64_t sub_1B77D6560()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1B7800838();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    result = sub_1B77D7D5C();
    qword_1EDAF7328 = result;
    unk_1EDAF7330 = &protocol witness table for NSUserDefaults;
    qword_1EDAF7310[0] = v2;
  }

  else
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B77D664C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1B7800838();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    result = sub_1B77D7D5C();
    qword_1EDAF97F0 = result;
    unk_1EDAF97F8 = &protocol witness table for NSUserDefaults;
    qword_1EDAF97D8 = v2;
  }

  else
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall UncheckedSendableUserDefaults.BOOL(forKey:)(Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  return (*(v5 + 24))(countAndFlagsBits, object, v4, v5) & 1;
}

Swift::OpaquePointer_optional __swiftcall UncheckedSendableUserDefaults.array(forKey:)(Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = (*(v5 + 40))(countAndFlagsBits, object, v4, v5);
  result.value._rawValue = v6;
  result.is_nil = v7;
  return result;
}

Swift::Void __swiftcall UncheckedSendableUserDefaults.removeObject(forKey:)(Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 48))(countAndFlagsBits, object, v4, v5);
}

uint64_t UncheckedSendableUserDefaults.dictionaryRepresentation()()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

Swift::Void __swiftcall UncheckedSendableUserDefaults.removePersistentDomain(forName:)(Swift::String forName)
{
  object = forName._object;
  countAndFlagsBits = forName._countAndFlagsBits;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 64))(countAndFlagsBits, object, v4, v5);
}

uint64_t sub_1B77D6940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t sub_1B77D69B4(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_1B77D6A28(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 24))(a1, a2, v5, v6) & 1;
}

uint64_t sub_1B77D6A98(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_1B77D6B04(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 40))(a1, a2, v5, v6);
}

uint64_t sub_1B77D6B70(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 48))(a1, a2, v5, v6);
}

uint64_t sub_1B77D6BDC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_1B77D6C30(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 64))(a1, a2, v5, v6);
}

uint64_t FinanceKitUserDefault.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FinanceKitUserDefault.init(key:default:publicDefault:isAppleInternalOnly:deviceInfo:userDefaults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for FinanceKitUserDefault(0, a10, a3, a4);
  sub_1B71E4C44(a8, &a9[v17[10]]);
  v18 = *(*(a10 - 8) + 32);
  v18(&a9[v17[7]], a3, a10);
  result = (v18)(&a9[v17[8]], a4, a10);
  a9[v17[9]] = a5;
  v20 = &a9[v17[11]];
  *v20 = a6;
  *(v20 + 1) = a7;
  return result;
}

uint64_t sub_1B77D6DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[*(v6 + 40)];
  v10 = *(v9 + 4);
  __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
  v11 = *(v2 + 1);
  v12 = *(*(v10 + 8) + 16);
  v20 = *v2;
  v12(&v24);
  (*(v5 + 16))(v8, &v2[*(a1 + 28)], v4);
  if (swift_dynamicCast())
  {
    v13 = *(&v25 + 1) == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v22 = v24;
    v23 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCB0, &qword_1B7808CE0);
  }

  else
  {
    v15 = *(v9 + 3);
    v14 = *(v9 + 4);
    __swift_project_boxed_opaque_existential_1(v9, v15);
    v16 = (*(*(v14 + 8) + 24))(v20, v11, v15);
    sub_1B726990C(&v24);
    LOBYTE(v22) = v16 & 1;
  }

  v17 = v21;
  v18 = swift_dynamicCast();
  return (*(v5 + 56))(v17, v18 ^ 1u, 1, v4);
}

uint64_t sub_1B77D6FBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_1B7801768();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = sub_1B7801758();
  v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];

  swift_unknownObjectRelease();
  v13 = (v3 + *(a2 + 40));
  if (v11 == v12)
  {
    v17 = v13[3];
    v18 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v17);
    v23 = 0u;
    v24 = 0u;
    (*(*(v18 + 8) + 8))(&v23, *v3, v3[1], v17);
    (*(v8 + 8))(a1, v7);
    return sub_1B726990C(&v23);
  }

  else
  {
    sub_1B719B06C(v13, &v23);
    v14 = *(&v24 + 1);
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    (*(v8 + 16))(v10, a1, v7);
    v16 = *(v6 - 8);
    if ((*(v16 + 48))(v10, 1, v6) == 1)
    {
      (*(v8 + 8))(v10, v7);
      v21 = 0u;
      v22 = 0u;
    }

    else
    {
      *(&v22 + 1) = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      (*(v16 + 32))(boxed_opaque_existential_1, v10, v6);
    }

    (*(*(v15 + 8) + 8))(&v21, *v3, v3[1], v14);
    (*(v8 + 8))(a1, v7);
    sub_1B726990C(&v21);
    return __swift_destroy_boxed_opaque_existential_1(&v23);
  }
}

uint64_t FinanceKitUserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_1B7801768();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  if (*(v2 + *(a1 + 36)) == 1 && ((*(*(v2 + *(a1 + 44) + 8) + 16))() & 1) == 0)
  {
    v14 = *(*(v6 - 8) + 16);
    v15 = v2 + *(a1 + 32);

    return v14(a2, v15, v6);
  }

  else
  {
    sub_1B77D6DB4(a1, v10);
    v11 = *(v6 - 8);
    v12 = *(v11 + 48);
    if (v12(v10, 1, v6) == 1)
    {
      (*(v11 + 16))(a2, v3 + *(a1 + 28), v6);
      result = v12(v10, 1, v6);
      if (result != 1)
      {
        return (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      return (*(v11 + 32))(a2, v10, v6);
    }
  }

  return result;
}

uint64_t FinanceKitUserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1B77D7708(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*FinanceKitUserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  FinanceKitUserDefault.wrappedValue.getter(a2, v11);
  return sub_1B77D761C;
}

void sub_1B77D761C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1B77D7708(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1B77D7708((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B77D7708(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1B7801768();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v8 = *(v4 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v4);
  (*(v8 + 56))(v7, 0, 1, v4);
  return sub_1B77D6FBC(v7, a2);
}

uint64_t sub_1B77D78AC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B77D7CA4();
    if (v3 <= 0x3F)
    {
      result = sub_1B77D7D08();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B77D796C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((((((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + v7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v18 = *(a1 + 8);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void *sub_1B77D7AC4(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 16) & ~v8)) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 16) & ~v8)) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 16) & ~v8)) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 16) & ~v8)) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_1B77D7CA4()
{
  result = qword_1EDAF7338;
  if (!qword_1EDAF7338)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDAF7338);
  }

  return result;
}

unint64_t sub_1B77D7D08()
{
  result = qword_1EDAF9AC8[0];
  if (!qword_1EDAF9AC8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99E8D0, qword_1B786FFD8);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, qword_1EDAF9AC8);
  }

  return result;
}

unint64_t sub_1B77D7D5C()
{
  result = qword_1EDAF93F8;
  if (!qword_1EDAF93F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAF93F8);
  }

  return result;
}

uint64_t sub_1B77D7DA8(uint64_t a1)
{
  v2[18] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C318, &unk_1B7860DC0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[21] = v4;
  v2[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B77D7E78, 0, 0);
}

uint64_t sub_1B77D7E78()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[21];
  v12 = v0[22];
  v8 = v0 + 19;
  v6 = v0[19];
  v7 = v8[1];
  v9 = v1[18];
  v1[2] = v2;
  v1[3] = sub_1B77D8030;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
  sub_1B7800CE8();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B77D815C;
  v1[13] = &block_descriptor_29;
  [v12 addNotificationRequest:v9 withCompletionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B77D8030(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

void sub_1B77D815C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C318, &unk_1B7860DC0);
    sub_1B7800CF8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C318, &unk_1B7860DC0);
    sub_1B7800D08();
  }
}

uint64_t sub_1B77D81EC()
{
  v1 = [*v0 deliveredNotifications];
  sub_1B77D83F4();
  v2 = sub_1B7800C38();

  return v2;
}

void sub_1B77D8244(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1B7800C18();
  [v2 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t dispatch thunk of UserNotificationCenter.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return v9(a1, a2, a3);
}

unint64_t sub_1B77D83F4()
{
  result = qword_1EB99E8D8;
  if (!qword_1EB99E8D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB99E8D8);
  }

  return result;
}

uint64_t sub_1B77D8460()
{
  if (*v0)
  {
    return 0x646E75666572;
  }

  else
  {
    return 0x6573616863727570;
  }
}

void sub_1B77D8498(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573616863727570 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646E75666572 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B77D8570(uint64_t a1)
{
  v2 = sub_1B77DB5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D85AC(uint64_t a1)
{
  v2 = sub_1B77DB5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77D85E8(uint64_t a1)
{
  v2 = sub_1B77DB668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D8624(uint64_t a1)
{
  v2 = sub_1B77DB668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77D8660(uint64_t a1)
{
  v2 = sub_1B77DB614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D869C(uint64_t a1)
{
  v2 = sub_1B77DB614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.PaymentTransaction.TransactionType.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t sub_1B77D8798(uint64_t a1)
{
  v2 = sub_1B77DB80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D87D4(uint64_t a1)
{
  v2 = sub_1B77DB80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77D8810(uint64_t a1)
{
  v2 = sub_1B77DB764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D884C(uint64_t a1)
{
  v2 = sub_1B77DB764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77D8888()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6574656C706D6F63;
  v4 = 0x656C6C65636E6163;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465766F72707061;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B77D8928@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B77DC5F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B77D8950(uint64_t a1)
{
  v2 = sub_1B77DB6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D898C(uint64_t a1)
{
  v2 = sub_1B77DB6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77D89C8(uint64_t a1)
{
  v2 = sub_1B77DB7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D8A04(uint64_t a1)
{
  v2 = sub_1B77DB7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77D8A40(uint64_t a1)
{
  v2 = sub_1B77DB710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D8A7C(uint64_t a1)
{
  v2 = sub_1B77DB710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77D8AB8(uint64_t a1)
{
  v2 = sub_1B77DB860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D8AF4(uint64_t a1)
{
  v2 = sub_1B77DB860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.PaymentTransaction.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t Order.PaymentTransaction.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v2;
  v7 = *(v1 + 40);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 Order.PaymentTransaction.amount.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v3;
  v7 = *(v1 + 40);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v5;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

double Order.PaymentTransaction.paymentMethod.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

void Order.PaymentTransaction.paymentMethod.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

uint64_t Order.PaymentTransaction.applePayTransactionIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Order.PaymentTransaction.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Order.PaymentTransaction(0) + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Order.PaymentTransaction(uint64_t a1)
{
  result = qword_1EB99EA10;
  if (!qword_1EB99EA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Order.PaymentTransaction.receipt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.PaymentTransaction(0) + 40));

  return v1;
}

uint64_t sub_1B77D8E34()
{
  v1 = *v0;
  v2 = 0x746361736E617274;
  v3 = 0x4164657461657263;
  if (v1 != 5)
  {
    v3 = 0x74706965636572;
  }

  v4 = 0x4D746E656D796170;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x737574617473;
  if (v1 != 1)
  {
    v5 = 0x746E756F6D61;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1B77D8F28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B77DC7B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B77D8F50(uint64_t a1)
{
  v2 = sub_1B77DB8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77D8F8C(uint64_t a1)
{
  v2 = sub_1B77DB8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.PaymentTransaction.TransactionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E8E0, &qword_1B7870050);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E8E8, &qword_1B7870058);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E8F0, &qword_1B7870060);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77DB5C0();
  sub_1B78023F8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B77DB614();
    v14 = v18;
    sub_1B7801ED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B77DB668();
    sub_1B7801ED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t Order.PaymentTransaction.TransactionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E910, &qword_1B7870068);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E918, &qword_1B7870070);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E920, &unk_1B7870078);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77DB5C0();
  v12 = v31;
  sub_1B78023C8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B7801E98();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B721CE4C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B7801B18();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v22 = &type metadata for Order.PaymentTransaction.TransactionType;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B77DB614();
        sub_1B7801D38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B77DB668();
        sub_1B7801D38();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t Order.PaymentTransaction.Status.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E928, &qword_1B7870088);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E930, &qword_1B7870090);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E938, &qword_1B7870098);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E940, &qword_1B78700A0);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E948, &qword_1B78700A8);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E950, &qword_1B78700B0);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1B77DB6BC();
  sub_1B78023F8();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1B77DB80C();
      v31 = v45;
      sub_1B7801ED8();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1B77DB860();
      v31 = v45;
      sub_1B7801ED8();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1B77DB7B8();
      v22 = v33;
      v23 = v45;
      sub_1B7801ED8();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1B77DB764();
      v22 = v36;
      v23 = v45;
      sub_1B7801ED8();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1B77DB710();
      v22 = v39;
      v23 = v45;
      sub_1B7801ED8();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t Order.PaymentTransaction.Status.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E988, &qword_1B78700B8);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E990, &qword_1B78700C0);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E998, &qword_1B78700C8);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E9A0, &qword_1B78700D0);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E9A8, &qword_1B78700D8);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E9B0, &qword_1B78700E0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B77DB6BC();
  v19 = v61;
  sub_1B78023C8();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_1B7801E98();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_1B721A3D8();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_1B7801B18();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
    *v34 = &type metadata for Order.PaymentTransaction.Status;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_1B77DB80C();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_1B7801D38();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_1B77DB860();
      v37 = v46;
      sub_1B7801D38();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_1B77DB7B8();
    v38 = v24;
    v39 = v46;
    sub_1B7801D38();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_1B77DB710();
    v41 = v56;
    v42 = v46;
    sub_1B7801D38();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v67 = 3;
  sub_1B77DB764();
  v31 = v46;
  sub_1B7801D38();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t Order.PaymentTransaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E9B8, &qword_1B78700E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77DB8B4();
  sub_1B78023F8();
  LOBYTE(v21[0]) = *v3;
  LOBYTE(v18) = 0;
  sub_1B77DB908();
  sub_1B7801FC8();
  if (!v2)
  {
    v24 = *(v3 + 1);
    v23 = 1;
    sub_1B77DB95C();
    sub_1B7801FC8();
    v21[0] = *(v3 + 8);
    v21[1] = *(v3 + 24);
    v22 = *(v3 + 40);
    v9 = *(v3 + 24);
    v18 = *(v3 + 8);
    v19 = v9;
    v20 = *(v3 + 40);
    v17 = 2;
    sub_1B7215720(v21, v15);
    sub_1B7215044();
    sub_1B7801FC8();
    v15[0] = v18;
    v15[1] = v19;
    v16 = v20;
    sub_1B721722C(v15);
    v10 = *(v3 + 56);
    v13 = *(v3 + 48);
    v14 = v10;
    v12[15] = 3;
    sub_1B77DB9B0();

    sub_1B7801FC8();

    LOBYTE(v13) = 4;
    sub_1B7801EF8();
    type metadata accessor for Order.PaymentTransaction(0);
    LOBYTE(v13) = 5;
    sub_1B77FF988();
    sub_1B71A6F54(&qword_1EDAF65F0, MEMORY[0x1E6969538]);
    sub_1B7801FC8();
    LOBYTE(v13) = 6;
    sub_1B7801EF8();
  }

  return (*(v6 + 8))(v8, v5);
}

void Order.PaymentTransaction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1B77FF988();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E9E0, &qword_1B78700F0);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for Order.PaymentTransaction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B77DB8B4();
  v29 = v9;
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v14 = v27;
    LOBYTE(v31) = 0;
    sub_1B77DBA04();
    sub_1B7801E48();
    *v12 = v33;
    LOBYTE(v31) = 1;
    sub_1B77DBA58();
    sub_1B7801E48();
    v15 = v14;
    v12[1] = v33;
    v37 = 2;
    sub_1B72153F8();
    sub_1B7801E48();
    v16 = v34;
    *(v12 + 8) = v33;
    *(v12 + 24) = v16;
    *(v12 + 5) = v35;
    v36 = 3;
    sub_1B77DBAAC();
    sub_1B7801E48();
    v17 = v32;
    *(v12 + 6) = v31;
    *(v12 + 7) = v17;
    LOBYTE(v31) = 4;
    v18 = sub_1B7801D78();
    v24[1] = 0;
    *(v12 + 8) = v18;
    *(v12 + 9) = v19;
    LOBYTE(v31) = 5;
    sub_1B71A6F54(&unk_1EDAF65E0, MEMORY[0x1E6969558]);
    sub_1B7801E48();
    (*(v26 + 32))(&v12[*(v10 + 36)], v6, v4);
    LOBYTE(v31) = 6;
    v20 = sub_1B7801D78();
    v22 = v21;
    (*(v15 + 8))(v29, v28);
    v23 = &v12[*(v10 + 40)];
    *v23 = v20;
    v23[1] = v22;
    sub_1B77DBB00(v12, v25);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_1B77DBB64(v12, type metadata accessor for Order.PaymentTransaction);
  }
}

uint64_t Order.PaymentTransaction.Status.localizedTitle.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
LABEL_15:
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v2 = qword_1EDAF93B0;
      goto LABEL_18;
    }

    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDAF93B0;
  }

  else if (v1 == 2)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDAF93B0;
  }

  else
  {
    if (v1 == 3)
    {
      goto LABEL_15;
    }

    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDAF93B0;
  }

LABEL_18:
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = sub_1B7800838();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_1B7800868();
  return v7;
}

uint64_t Order.PaymentTransaction.init(_:previewResourceLoader:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 1) = *(a1 + 1);
  v6 = *(a1 + 24);
  v22[0] = *(a1 + 8);
  v22[1] = v6;
  v8 = *(a1 + 48);
  v23 = *(a1 + 40);
  v7 = v23;
  *(a3 + 8) = v22[0];
  *(a3 + 24) = v6;
  *(a3 + 40) = v7;
  v9 = *(a1 + 56);
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = *(v11 + 8);
  sub_1B7215720(v22, v21);
  *(a3 + 48) = v12(v8, v9, v10, v11);
  *(a3 + 56) = v13;
  v14 = *(a1 + 72);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 72) = v14;
  v15 = *(type metadata accessor for RawOrderPaymentTransaction(0) + 36);
  v16 = type metadata accessor for Order.PaymentTransaction(0);
  v17 = *(v16 + 36);
  v18 = sub_1B77FF988();
  (*(*(v18 - 8) + 16))(a3 + v17, a1 + v15, v18);

  sub_1B77DBB64(a1, type metadata accessor for RawOrderPaymentTransaction);
  v19 = (a3 + *(v16 + 40));
  *v19 = 0;
  v19[1] = 0;
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

void Order.PaymentTransaction.init(_:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B7800838();
  [a1 willAccessValueForKey_];

  v5 = [a1 primitiveTransactionType];
  v6 = sub_1B7800838();
  [a1 didAccessValueForKey_];

  v7 = [v5 shortValue];
  if (v7 > 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = v7;
    ManagedOrderPaymentTransaction.status.getter(&v29);
    *(a2 + 1) = v29;
    ManagedOrderPaymentTransaction.amount.getter(v27);
    v8 = v27[1];
    *(a2 + 8) = v27[0];
    *(a2 + 24) = v8;
    *(a2 + 40) = v28;
    v9 = [a1 paymentMethodDisplayName];
    v10 = sub_1B77FFA48();
    v11 = sub_1B741F7D4(v10);
    v13 = v12;

    *(a2 + 48) = v11;
    *(a2 + 56) = v13;
    v14 = [a1 applePayTransactionIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1B7800868();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *(a2 + 64) = v16;
    *(a2 + 72) = v18;
    v19 = [a1 createdAt];
    v20 = type metadata accessor for Order.PaymentTransaction(0);
    sub_1B77FF928();

    v21 = [a1 receiptName];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1B7800868();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0;
    }

    v26 = (a2 + *(v20 + 40));
    *v26 = v23;
    v26[1] = v25;
  }
}

uint64_t _s10FinanceKit5OrderV18PaymentTransactionV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v4 = *(a1 + 24);
  v26 = *(a1 + 8);
  v27[0] = v4;
  *&v27[1] = *(a1 + 5);
  v6 = *(a2 + 24);
  v28 = *(a2 + 8);
  v29[0] = v6;
  *&v29[1] = *(a2 + 5);
  v8 = LODWORD(v27[0]);
  v9 = v6;
  v10 = v26;
  v11 = v28;
  sub_1B7215720(&v26, v25);
  sub_1B7215720(&v28, v25);
  if (MEMORY[0x1B8CA5970](v10, *(&v10 + 1), v8, v11, *(&v11 + 1), v9))
  {
    if (*(&v27[0] + 1) == *(&v29[0] + 1) && *&v27[1] == *&v29[1])
    {
      sub_1B721722C(&v28);
      sub_1B721722C(&v26);
    }

    else
    {
      v13 = sub_1B78020F8();
      sub_1B721722C(&v28);
      sub_1B721722C(&v26);
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a1 + 6) != *(a2 + 6) || (v14 = a1, v15 = a2, *(a1 + 7) != *(a2 + 7)))
    {
      v16 = sub_1B78020F8();
      v15 = a2;
      v14 = a1;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    v17 = *(v14 + 9);
    v18 = *(v15 + 9);
    if (v17)
    {
      if (!v18 || (*(v14 + 8) != *(v15 + 8) || v17 != v18) && (sub_1B78020F8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }

    v19 = type metadata accessor for Order.PaymentTransaction(0);
    if (sub_1B77FF918())
    {
      v20 = *(v19 + 40);
      v21 = &a1[v20];
      v22 = *&a1[v20 + 8];
      v23 = &a2[v20];
      v24 = *(v23 + 1);
      if (v22)
      {
        if (v24 && (*v21 == *v23 && v22 == v24 || (sub_1B78020F8() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v24)
      {
        return 1;
      }
    }
  }

  else
  {
    sub_1B721722C(&v28);
    sub_1B721722C(&v26);
  }

  return 0;
}

unint64_t sub_1B77DB5C0()
{
  result = qword_1EB99E8F8;
  if (!qword_1EB99E8F8)
  {
    result = swift_getWitnessTable(aM_38, &_s18PaymentTransactionV15TransactionTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E8F8);
  }

  return result;
}

unint64_t sub_1B77DB614()
{
  result = qword_1EB99E900;
  if (!qword_1EB99E900)
  {
    result = swift_getWitnessTable(byte_1B7870B1C, &_s18PaymentTransactionV15TransactionTypeO16RefundCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E900);
  }

  return result;
}

unint64_t sub_1B77DB668()
{
  result = qword_1EB99E908;
  if (!qword_1EB99E908)
  {
    result = swift_getWitnessTable(byte_1B7870ACC, &_s18PaymentTransactionV15TransactionTypeO18PurchaseCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E908);
  }

  return result;
}

unint64_t sub_1B77DB6BC()
{
  result = qword_1EB99E958;
  if (!qword_1EB99E958)
  {
    result = swift_getWitnessTable(asc_1B7870A7C, &_s18PaymentTransactionV6StatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E958);
  }

  return result;
}

unint64_t sub_1B77DB710()
{
  result = qword_1EB99E960;
  if (!qword_1EB99E960)
  {
    result = swift_getWitnessTable(byte_1B7870A2C, &_s18PaymentTransactionV6StatusO16FailedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E960);
  }

  return result;
}

unint64_t sub_1B77DB764()
{
  result = qword_1EB99E968;
  if (!qword_1EB99E968)
  {
    result = swift_getWitnessTable(aB7_2, &_s18PaymentTransactionV6StatusO19CancelledCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E968);
  }

  return result;
}

unint64_t sub_1B77DB7B8()
{
  result = qword_1EB99E970;
  if (!qword_1EB99E970)
  {
    result = swift_getWitnessTable(asc_1B787098C, &_s18PaymentTransactionV6StatusO19CompletedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E970);
  }

  return result;
}

unint64_t sub_1B77DB80C()
{
  result = qword_1EB99E978;
  if (!qword_1EB99E978)
  {
    result = swift_getWitnessTable(asc_1B787093C, &_s18PaymentTransactionV6StatusO18ApprovedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E978);
  }

  return result;
}

unint64_t sub_1B77DB860()
{
  result = qword_1EB99E980;
  if (!qword_1EB99E980)
  {
    result = swift_getWitnessTable(aB7_3, &_s18PaymentTransactionV6StatusO17PendingCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E980);
  }

  return result;
}

unint64_t sub_1B77DB8B4()
{
  result = qword_1EB99E9C0;
  if (!qword_1EB99E9C0)
  {
    result = swift_getWitnessTable(byte_1B787089C, &_s18PaymentTransactionV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99E9C0);
  }

  return result;
}

unint64_t sub_1B77DB908()
{
  result = qword_1EB99E9C8;
  if (!qword_1EB99E9C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PaymentTransaction.TransactionType, &type metadata for Order.PaymentTransaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB99E9C8);
  }

  return result;
}

unint64_t sub_1B77DB95C()
{
  result = qword_1EB99E9D0;
  if (!qword_1EB99E9D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PaymentTransaction.Status, &type metadata for Order.PaymentTransaction.Status, v0, v1);
    atomic_store(result, &qword_1EB99E9D0);
  }

  return result;
}

unint64_t sub_1B77DB9B0()
{
  result = qword_1EB99E9D8;
  if (!qword_1EB99E9D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PaymentMethod, &type metadata for Order.PaymentMethod, v0, v1);
    atomic_store(result, &qword_1EB99E9D8);
  }

  return result;
}

unint64_t sub_1B77DBA04()
{
  result = qword_1EB99E9E8;
  if (!qword_1EB99E9E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PaymentTransaction.TransactionType, &type metadata for Order.PaymentTransaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB99E9E8);
  }

  return result;
}

unint64_t sub_1B77DBA58()
{
  result = qword_1EB99E9F0;
  if (!qword_1EB99E9F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PaymentTransaction.Status, &type metadata for Order.PaymentTransaction.Status, v0, v1);
    atomic_store(result, &qword_1EB99E9F0);
  }

  return result;
}

unint64_t sub_1B77DBAAC()
{
  result = qword_1EB99E9F8;
  if (!qword_1EB99E9F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PaymentMethod, &type metadata for Order.PaymentMethod, v0, v1);
    atomic_store(result, &qword_1EB99E9F8);
  }

  return result;
}

uint64_t sub_1B77DBB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.PaymentTransaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77DBB64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B77DBBC8()
{
  result = qword_1EB99EA00;
  if (!qword_1EB99EA00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PaymentTransaction.TransactionType, &type metadata for Order.PaymentTransaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB99EA00);
  }

  return result;
}

unint64_t sub_1B77DBC20()
{
  result = qword_1EB99EA08;
  if (!qword_1EB99EA08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PaymentTransaction.Status, &type metadata for Order.PaymentTransaction.Status, v0, v1);
    atomic_store(result, &qword_1EB99EA08);
  }

  return result;
}

void sub_1B77DBC9C(uint64_t a1)
{
  sub_1B7280028();
  if (v1 <= 0x3F)
  {
    sub_1B77FF988();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B77DBE14()
{
  result = qword_1EB99EA20;
  if (!qword_1EB99EA20)
  {
    result = swift_getWitnessTable(aOb7, &_s18PaymentTransactionV15TransactionTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA20);
  }

  return result;
}

unint64_t sub_1B77DBE6C()
{
  result = qword_1EB99EA28;
  if (!qword_1EB99EA28)
  {
    result = swift_getWitnessTable(byte_1B78707BC, &_s18PaymentTransactionV6StatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA28);
  }

  return result;
}

unint64_t sub_1B77DBEC4()
{
  result = qword_1EB99EA30;
  if (!qword_1EB99EA30)
  {
    result = swift_getWitnessTable(aYb7, &_s18PaymentTransactionV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA30);
  }

  return result;
}

unint64_t sub_1B77DBF1C()
{
  result = qword_1EB99EA38;
  if (!qword_1EB99EA38)
  {
    result = swift_getWitnessTable(asc_1B78707E4, &_s18PaymentTransactionV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA38);
  }

  return result;
}

unint64_t sub_1B77DBF74()
{
  result = qword_1EB99EA40;
  if (!qword_1EB99EA40)
  {
    result = swift_getWitnessTable(asc_1B787080C, &_s18PaymentTransactionV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA40);
  }

  return result;
}

unint64_t sub_1B77DBFCC()
{
  result = qword_1EB99EA48;
  if (!qword_1EB99EA48)
  {
    result = swift_getWitnessTable(byte_1B78706DC, &_s18PaymentTransactionV6StatusO17PendingCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA48);
  }

  return result;
}

unint64_t sub_1B77DC024()
{
  result = qword_1EB99EA50;
  if (!qword_1EB99EA50)
  {
    result = swift_getWitnessTable(asc_1B7870704, &_s18PaymentTransactionV6StatusO17PendingCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA50);
  }

  return result;
}

unint64_t sub_1B77DC07C()
{
  result = qword_1EB99EA58;
  if (!qword_1EB99EA58)
  {
    result = swift_getWitnessTable(aE_36, &_s18PaymentTransactionV6StatusO18ApprovedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA58);
  }

  return result;
}

unint64_t sub_1B77DC0D4()
{
  result = qword_1EB99EA60;
  if (!qword_1EB99EA60)
  {
    result = swift_getWitnessTable(asc_1B78706B4, &_s18PaymentTransactionV6StatusO18ApprovedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA60);
  }

  return result;
}

unint64_t sub_1B77DC12C()
{
  result = qword_1EB99EA68;
  if (!qword_1EB99EA68)
  {
    result = swift_getWitnessTable(byte_1B787063C, &_s18PaymentTransactionV6StatusO19CompletedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA68);
  }

  return result;
}

unint64_t sub_1B77DC184()
{
  result = qword_1EB99EA70;
  if (!qword_1EB99EA70)
  {
    result = swift_getWitnessTable(aB7_4, &_s18PaymentTransactionV6StatusO19CompletedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA70);
  }

  return result;
}

unint64_t sub_1B77DC1DC()
{
  result = qword_1EB99EA78;
  if (!qword_1EB99EA78)
  {
    result = swift_getWitnessTable(byte_1B78705EC, &_s18PaymentTransactionV6StatusO19CancelledCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA78);
  }

  return result;
}

unint64_t sub_1B77DC234()
{
  result = qword_1EB99EA80;
  if (!qword_1EB99EA80)
  {
    result = swift_getWitnessTable(byte_1B7870614, &_s18PaymentTransactionV6StatusO19CancelledCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA80);
  }

  return result;
}

unint64_t sub_1B77DC28C()
{
  result = qword_1EB99EA88;
  if (!qword_1EB99EA88)
  {
    result = swift_getWitnessTable(aU_38, &_s18PaymentTransactionV6StatusO16FailedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA88);
  }

  return result;
}

unint64_t sub_1B77DC2E4()
{
  result = qword_1EB99EA90;
  if (!qword_1EB99EA90)
  {
    result = swift_getWitnessTable(aM_39, &_s18PaymentTransactionV6StatusO16FailedCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA90);
  }

  return result;
}

unint64_t sub_1B77DC33C()
{
  result = qword_1EB99EA98;
  if (!qword_1EB99EA98)
  {
    result = swift_getWitnessTable(aB7_5, &_s18PaymentTransactionV6StatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EA98);
  }

  return result;
}

unint64_t sub_1B77DC394()
{
  result = qword_1EB99EAA0;
  if (!qword_1EB99EAA0)
  {
    result = swift_getWitnessTable("ݏb7", &_s18PaymentTransactionV6StatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EAA0);
  }

  return result;
}

unint64_t sub_1B77DC3EC()
{
  result = qword_1EB99EAA8;
  if (!qword_1EB99EAA8)
  {
    result = swift_getWitnessTable(asc_1B7870494, &_s18PaymentTransactionV15TransactionTypeO18PurchaseCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EAA8);
  }

  return result;
}

unint64_t sub_1B77DC444()
{
  result = qword_1EB99EAB0;
  if (!qword_1EB99EAB0)
  {
    result = swift_getWitnessTable(aU_39, &_s18PaymentTransactionV15TransactionTypeO18PurchaseCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EAB0);
  }

  return result;
}

unint64_t sub_1B77DC49C()
{
  result = qword_1EB99EAB8;
  if (!qword_1EB99EAB8)
  {
    result = swift_getWitnessTable(byte_1B7870444, &_s18PaymentTransactionV15TransactionTypeO16RefundCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EAB8);
  }

  return result;
}

unint64_t sub_1B77DC4F4()
{
  result = qword_1EB99EAC0;
  if (!qword_1EB99EAC0)
  {
    result = swift_getWitnessTable(aB7_6, &_s18PaymentTransactionV15TransactionTypeO16RefundCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EAC0);
  }

  return result;
}

unint64_t sub_1B77DC54C()
{
  result = qword_1EB99EAC8;
  if (!qword_1EB99EAC8)
  {
    result = swift_getWitnessTable(asc_1B78704E4, &_s18PaymentTransactionV15TransactionTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EAC8);
  }

  return result;
}

unint64_t sub_1B77DC5A4()
{
  result = qword_1EB99EAD0;
  if (!qword_1EB99EAD0)
  {
    result = swift_getWitnessTable(asc_1B787050C, &_s18PaymentTransactionV15TransactionTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99EAD0);
  }

  return result;
}

uint64_t sub_1B77DC5F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766F72707061 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B77DC7B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D746E656D796170 && a2 == 0xED0000646F687465 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7874420 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74706965636572 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

double static FinanceURLFactory.orderDetails(fullyQualifiedOrderIdentifier:fulfillmentIdentifier:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[0] = a4;
  v22[9] = *MEMORY[0x1E69E9840];
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80, &unk_1B780C050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  *(inited + 32) = v12;
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  if (a3)
  {

    inited = sub_1B723E180(1, 3, 1, inited);
    *(inited + 16) = 3;
    strcpy((inited + 64), "fulfillments");
    *(inited + 77) = 0;
    *(inited + 78) = -5120;
    v16 = *(inited + 24);
    if (v16 < 8)
    {
      inited = sub_1B723E180((v16 > 1), 4, 1, inited);
    }

    *(inited + 16) = 4;
    *(inited + 80) = a2;
    *(inited + 88) = a3;
  }

  else
  {
  }

  if (qword_1EDAF9268 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = __swift_project_value_buffer(v7, qword_1EDAF9270);
    (*(v8 + 16))(v10, v17, v7);
    v18 = *(inited + 16);
    if (!v18)
    {
      break;
    }

    v19 = 0;
    v20 = inited + 40;
    while (v19 < *(inited + 16))
    {
      ++v19;

      sub_1B77FF408();

      v20 += 16;
      if (v18 == v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_11:
  (*(v8 + 32))(v22[0], v10, v7);

  return result;
}

double static FinanceURLFactory.extractedOrderDetails(trackedOrderIdentifier:fulfillmentIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9[0] = 0xD000000000000026;
  v9[1] = 0x80000001B78811F0;
  v9[2] = a1;
  v9[3] = a2;

  static FinanceURLFactory.orderDetails(fullyQualifiedOrderIdentifier:fulfillmentIdentifier:)(v9, a3, a4, a5);

  return result;
}

uint64_t sub_1B77DCD68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1B77FF4F8();
  __swift_allocate_value_buffer(v3, qword_1EDAF9270);
  v4 = __swift_project_value_buffer(v3, qword_1EDAF9270);
  sub_1B77FF4D8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B77DCEC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1B77FF4F8();
  __swift_allocate_value_buffer(v3, qword_1EB99EAD8);
  v4 = __swift_project_value_buffer(v3, qword_1EB99EAD8);
  sub_1B77FF4D8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static FinanceURLFactory.returnDetails(fullyQualifiedOrderIdentifier:returnIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v20 = v13;
  v21 = v12;
  v22 = v14;
  v23 = v15;
  v24 = 0x736E7275746572;
  v25 = 0xE700000000000000;
  v26 = a2;
  v27 = a3;
  v16 = qword_1EDAF9268;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_1EDAF9270);
  (*(v9 + 16))(v11, v17, v8);

  sub_1B77FF408();

  sub_1B77FF408();

  sub_1B77FF408();

  sub_1B77FF408();

  swift_arrayDestroy();
  return (*(v9 + 32))(a4, v11, v8);
}

uint64_t static FinanceURLFactory.termsAndConditions(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B77FF4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = 0xD000000000000014;
  v15 = 0x80000001B7872D10;
  v16 = a1;
  v17 = a2;
  v10 = qword_1EB98EB70;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1EB99EAD8);
  (*(v7 + 16))(v9, v11, v6);

  sub_1B77FF408();

  sub_1B77FF408();

  swift_arrayDestroy();
  return (*(v7 + 32))(a3, v9, v6);
}

id InternalTransactionStatisticsQuery.predicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t InternalTransactionStatisticsQuery.init(predicate:options:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_1B77DD4F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461636964657270;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6373654474726F73;
    v4 = 0xEF73726F74706972;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7461636964657270;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6373654474726F73;
    v8 = 0xEF73726F74706972;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B77DD618()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B77DD6CC(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B77DD76C(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

unint64_t sub_1B77DD81C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B77DE298(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B77DD84C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x7461636964657270;
  if (v2 != 1)
  {
    v5 = 0x6373654474726F73;
    v4 = 0xEF73726F74706972;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736E6F6974706FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B77DD8BC()
{
  v1 = 0x7461636964657270;
  if (*v0 != 1)
  {
    v1 = 0x6373654474726F73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

unint64_t sub_1B77DD928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B77DE298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B77DD950(uint64_t a1)
{
  v2 = sub_1B77DDFC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77DD98C(uint64_t a1)
{
  v2 = sub_1B77DDFC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InternalTransactionStatisticsQuery.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EAF0, &qword_1B7870BF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77DDFC4();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = 0;
    sub_1B77DE018();
    sub_1B7801E48();
    v9 = v15;
    LOBYTE(v15) = 1;
    if (sub_1B7801EA8())
    {
      v17 = 1;
      sub_1B727A53C();
      sub_1B7801E48();
      v13 = v15;
      v14 = v16;
      sub_1B7205540(0, &qword_1EB9905D0, 0x1E696ACD0);
      sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
      v10 = v14;
      v11 = sub_1B78012B8();
      (*(v6 + 8))(v8, v5);
      sub_1B720A388(v13, v10);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v11 = 0;
    }

    *a2 = v11;
    *(a2 + 8) = v9;
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t InternalTransactionStatisticsQuery.encode(to:)(void *a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB08, &qword_1B7870BF8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v20 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77DDFC4();
  sub_1B78023F8();
  LOBYTE(v22[0]) = v8;
  v21 = 0;
  sub_1B77DE06C();
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = v20;
    if (v20)
    {
      v10 = objc_opt_self();
      v22[0] = 0;
      v11 = v9;
      v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v22];
      v13 = v22[0];
      if (v12)
      {
        v14 = sub_1B77FF5B8();
        v16 = v15;

        v22[0] = v14;
        v22[1] = v16;
        v21 = 1;
        sub_1B727A60C();
        sub_1B7801FC8();
        (*(v5 + 8))(v7, v4);

        return sub_1B720A388(v14, v16);
      }

      v18 = v13;
      sub_1B77FF318();

      swift_willThrow();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

BOOL _s10FinanceKit34InternalTransactionStatisticsQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
      v6 = v4;
      v7 = v2;
      v8 = sub_1B7801558();

      if (v8)
      {
        return v3 == v5;
      }
    }
  }

  else if (!v4)
  {
    return v3 == v5;
  }

  return 0;
}

unint64_t sub_1B77DDFC4()
{
  result = qword_1EB99EAF8;
  if (!qword_1EB99EAF8)
  {
    result = swift_getWitnessTable(byte_1B7870DD0, &type metadata for InternalTransactionStatisticsQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EAF8);
  }

  return result;
}

unint64_t sub_1B77DE018()
{
  result = qword_1EB99EB00;
  if (!qword_1EB99EB00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatisticsOption, &type metadata for TransactionStatisticsOption, v0, v1);
    atomic_store(result, &qword_1EB99EB00);
  }

  return result;
}

unint64_t sub_1B77DE06C()
{
  result = qword_1EB99EB10;
  if (!qword_1EB99EB10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatisticsOption, &type metadata for TransactionStatisticsOption, v0, v1);
    atomic_store(result, &qword_1EB99EB10);
  }

  return result;
}

uint64_t sub_1B77DE0C0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1B77DE11C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B77DE194()
{
  result = qword_1EB99EB18;
  if (!qword_1EB99EB18)
  {
    result = swift_getWitnessTable(byte_1B7870DA8, &type metadata for InternalTransactionStatisticsQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EB18);
  }

  return result;
}

unint64_t sub_1B77DE1EC()
{
  result = qword_1EB99EB20;
  if (!qword_1EB99EB20)
  {
    result = swift_getWitnessTable(byte_1B7870CE0, &type metadata for InternalTransactionStatisticsQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EB20);
  }

  return result;
}

unint64_t sub_1B77DE244()
{
  result = qword_1EB99EB28;
  if (!qword_1EB99EB28)
  {
    result = swift_getWitnessTable(asc_1B7870D08, &type metadata for InternalTransactionStatisticsQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EB28);
  }

  return result;
}

unint64_t sub_1B77DE298(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7801D18();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

double sub_1B77DE2E4(void *a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_1B78000E8();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v35 - v5;
  v7 = sub_1B7800158();
  v39 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570, &unk_1B780F930);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v16 = a1;
  v17 = a1[3];
  if (v17)
  {
    v18 = v41;
    swift_beginAccess();
    *(v18 + 16) = v17;

LABEL_3:

    return result;
  }

  v36 = v10;
  v37 = v6;
  v38 = v12;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v41;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  sub_1B7205588(v16 + *(*v16 + 120), v15, &qword_1EB990570, &unk_1B780F930);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = v38;
    v25 = v39;
    v26 = v7;
    (*(v39 + 32))(v38, v15, v7);
    v35[1] = sub_1B7800148();
    (*(v25 + 16))(v36, v24, v7);
    v27 = v16[2];

    v28 = v27;

    sub_1B78000D8();
    v29 = v40;
    v30 = sub_1B7800128();
    if (v29)
    {
      (*(v25 + 8))(v38, v7);
      goto LABEL_3;
    }

    v31 = v30;
    v23 = v16;
    v22 = v41;
    (*(v25 + 8))(v38, v26);

LABEL_11:
    swift_beginAccess();
    *(v22 + 16) = v31;

    v23[3] = v31;
    goto LABEL_3;
  }

  v23 = v16;
  sub_1B7800148();
  v32 = v16[2];

  v33 = v32;
  sub_1B78000D8();
  v34 = v40;
  v31 = sub_1B78000C8();

  if (!v34)
  {
    goto LABEL_11;
  }

  return result;
}

double sub_1B77DE7A8(void *a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_1B78000E8();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v35 - v5;
  v7 = sub_1B7800158();
  v39 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578, &qword_1B780C8F0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v16 = a1;
  v17 = a1[3];
  if (v17)
  {
    v18 = v41;
    swift_beginAccess();
    *(v18 + 16) = v17;

LABEL_3:

    return result;
  }

  v36 = v10;
  v37 = v6;
  v38 = v12;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v41;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  sub_1B7205588(v16 + *(*v16 + 120), v15, &qword_1EB990578, &qword_1B780C8F0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = v38;
    v25 = v39;
    v26 = v7;
    (*(v39 + 32))(v38, v15, v7);
    v35[1] = sub_1B7800148();
    (*(v25 + 16))(v36, v24, v7);
    v27 = v16[2];

    v28 = v27;

    sub_1B78000D8();
    v29 = v40;
    v30 = sub_1B7800128();
    if (v29)
    {
      (*(v25 + 8))(v38, v7);
      goto LABEL_3;
    }

    v31 = v30;
    v23 = v16;
    v22 = v41;
    (*(v25 + 8))(v38, v26);

LABEL_11:
    swift_beginAccess();
    *(v22 + 16) = v31;

    v23[3] = v31;
    goto LABEL_3;
  }

  v23 = v16;
  sub_1B7800148();
  v32 = v16[2];

  v33 = v32;
  sub_1B78000D8();
  v34 = v40;
  v31 = sub_1B78000C8();

  if (!v34)
  {
    goto LABEL_11;
  }

  return result;
}

double sub_1B77DEC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B7800168();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7800408();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + 16);
    *v12 = v16;
    (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
    v17 = v16;
    LOBYTE(v16) = sub_1B7800418();
    (*(v10 + 8))(v12, v9);
    if (v16)
    {
      if (qword_1EDAFAF50 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v18 = sub_1B78000B8();
    __swift_project_value_buffer(v18, qword_1EDAFAF58);
    (*(v6 + 16))(v8, a1, v5);
    v19 = sub_1B7800098();
    v20 = sub_1B78011F8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v21 = 136315138;
      sub_1B77E6D34(qword_1EDAFA090, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
      v22 = sub_1B7802228();
      v23 = a3;
      v25 = v24;
      (*(v6 + 8))(v8, v5);
      v26 = sub_1B71A3EF8(v22, v25, v32);
      a3 = v23;

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1B7198000, v19, v20, "Session cancelled: %s", v21, 0xCu);
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1B8CA7A40](v27, -1, -1);
      MEMORY[0x1B8CA7A40](v21, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v28 = *(v15 + 24);
    swift_beginAccess();
    v29 = *(a3 + 16);
    if (v28)
    {
      if (!v29 || v28 != v29)
      {
        goto LABEL_12;
      }
    }

    else if (v29)
    {
      goto LABEL_12;
    }

    *(v15 + 24) = 0;

LABEL_12:
  }

  return result;
}

void sub_1B77DF034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v57 = a3;
  v58 = a2;
  v59 = a1;
  v4 = sub_1B7800408();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B7800168();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v56 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90, &qword_1B780B718);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = sub_1B78001B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v59, v16, &qword_1EB98FD90, &qword_1B780B718);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9993B8, &unk_1B784A440);
    sub_1B728216C(&qword_1EDAF9020, &qword_1EB9993B8, &unk_1B784A440, protocol conformance descriptor for FinanceStore.Reply<A>);
    sub_1B78001A8();
    v25 = v18;
    if (v64 == 1)
    {
      v41 = v17;
      v42 = v60;
      v43 = v61;
      v44 = v62;
      v45 = v63;
      if (v63)
      {
        v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v47 = sub_1B7800838();
        v48 = [v46 initWithDomain:v47 code:v44 userInfo:0];
      }

      else
      {
        sub_1B7201CA4();
        v48 = swift_allocError();
        *v49 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
      swift_allocError();
      *v50 = v48;
      swift_continuation_throwingResumeWithError();
      sub_1B71B7A20(v42, v43, v44, v45, 1);
      (*(v25 + 8))(v20, v41);
      return;
    }

    if (v64 == 2)
    {
      swift_continuation_throwingResume();
      (*(v18 + 8))(v20, v17);
      return;
    }

LABEL_20:
    sub_1B78020E8();
    __break(1u);
    return;
  }

  v21 = v7;
  v22 = *(v7 + 32);
  v22(v13, v16, v6);
  sub_1B77E6D34(qword_1EDAFA090, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
  swift_willThrowTypedImpl();
  v23 = swift_allocError();
  v22(v24, v13, v6);
  v60 = v23;
  v26 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
  v27 = v56;
  v28 = swift_dynamicCast();
  v29 = v57;
  if (!v28)
  {

    swift_allocError();
    *v40 = v23;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v30 = v55;
  (*(v21 + 32))(v55, v27, v6);
  v31 = *(v29 + 16);
  v33 = v52;
  v32 = v53;
  *v52 = v31;
  v34 = v54;
  (*(v32 + 104))(v33, *MEMORY[0x1E69E8020], v54);
  v35 = v31;
  LOBYTE(v31) = sub_1B7800418();
  (*(v32 + 8))(v33, v34);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v36 = *(v29 + 24);
  if (v36)
  {
    if (v36 == v51)
    {

      sub_1B7800118();

      *(v29 + 24) = 0;
    }
  }

  sub_1B77E6D34(qword_1EDAFA090, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
  v37 = swift_allocError();
  (*(v21 + 16))(v38, v30, v6);
  swift_allocError();
  *v39 = v37;
  swift_continuation_throwingResumeWithError();
  (*(v21 + 8))(v30, v6);
}

uint64_t BankConnectRefreshableAttribute.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t static BankConnectAttributeLoader.refresh(_:forPrimaryAccountIdentifier:bankConnectService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return sub_1B77E5A40(a1, a2, a3, a4);
}

uint64_t sub_1B77DF8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[37] = a4;
  v5[38] = a5;
  v5[35] = a2;
  v5[36] = a3;
  v5[39] = type metadata accessor for BankConnectService.Message(0);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  type metadata accessor for InternalAccount(0);
  v5[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77DF99C, 0, 0);
}

uint64_t sub_1B77DF99C()
{
  v34 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136315394;
    sub_1B723C0C4();
    v8 = sub_1B7800FB8();
    v10 = sub_1B71A3EF8(v8, v9, &v33);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1B71A3EF8(v5, v4, &v33);
    _os_log_impl(&dword_1B7198000, v2, v3, "Attempting to refresh %s attributes for primaryAccountIdentifier:\n%s.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v11 = v0[35];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_1B72473D8(*(v11 + 16), 0);
    v14 = sub_1B7262838(&v33, v13 + 32, v12, v11);
    v15 = v33;
    swift_bridgeObjectRetain_n();
    v16 = sub_1B71B7B58(v15);
    if (v14 != v12)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v16, v17, v18);
    }

    v11 = v0[35];
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v33 = v13;

  sub_1B77E5984(&v33, sub_1B77E6DB4, 0, v11);

  v19 = v33;
  v0[45] = v33;
  v20 = *(v19 + 2);
  v0[46] = v20;
  if (!v20)
  {

    v29 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v21 = v0[42];
  v16 = v0[43];
  v23 = v0[40];
  v22 = v0[41];
  v24 = v0[38];
  v0[47] = 0;
  v0[48] = 0;
  if (!*(v19 + 2))
  {
    goto LABEL_27;
  }

  v25 = v19[32];
  v0[49] = *(v24 + 16);
  v26 = v0[36];
  v27 = v0[37];
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      *v22 = v26;
      v22[1] = v27;
      swift_storeEnumTagMultiPayload();
      v30 = sub_1B77E097C;
    }

    else
    {
      *v23 = v26;
      v23[1] = v27;
      swift_storeEnumTagMultiPayload();
      v30 = sub_1B77E101C;
    }
  }

  else
  {
    if (!v25)
    {
      *v16 = v26;
      v16[1] = v27;
      swift_storeEnumTagMultiPayload();

      v28 = swift_task_alloc();
      v0[50] = v28;
      *v28 = v0;
      v28[1] = sub_1B77DFE78;

      JUMPOUT(0x1B7275F3CLL);
    }

    *v21 = v26;
    v21[1] = v27;
    swift_storeEnumTagMultiPayload();
    v30 = sub_1B77E02DC;
  }

  v31 = v30;

  v16 = v31;
  v17 = 0;
  v18 = 0;

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1B77DFE78()
{
  v2 = *v1;
  v2[51] = v0;

  v3 = v2[43];
  if (v0)
  {
    sub_1B77E6CD4(v3, type metadata accessor for BankConnectService.Message);

    v4 = sub_1B77E0240;
  }

  else
  {
    v5 = v2[44];
    sub_1B77E6CD4(v3, type metadata accessor for BankConnectService.Message);
    sub_1B77E6CD4(v5, type metadata accessor for InternalAccount);
    v4 = sub_1B77E0004;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B77E0004(uint64_t (*a1)(), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4[48] + 1;
  if (v5 == v4[46])
  {

    v6 = v4[1];

    __asm { BRAA            X1, X16 }
  }

  v4[47] = v4[51];
  v4[48] = v5;
  v7 = v4[45];
  if (v5 >= *(v7 + 16))
  {
    __break(1u);
  }

  else
  {
    v8 = *(v7 + v5 + 32);
    v4[49] = *(v4[38] + 16);
    v9 = v4[36];
    v10 = v4[37];
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v13 = v4[41];
        *v13 = v9;
        v13[1] = v10;
        swift_storeEnumTagMultiPayload();
        v14 = sub_1B77E097C;
      }

      else
      {
        v16 = v4[40];
        *v16 = v9;
        v16[1] = v10;
        swift_storeEnumTagMultiPayload();
        v14 = sub_1B77E101C;
      }
    }

    else
    {
      if (!v8)
      {
        v11 = v4[43];
        *v11 = v9;
        v11[1] = v10;
        swift_storeEnumTagMultiPayload();

        v12 = swift_task_alloc();
        v4[50] = v12;
        *v12 = v4;
        v12[1] = sub_1B77DFE78;

        JUMPOUT(0x1B7275F3CLL);
      }

      v15 = v4[42];
      *v15 = v9;
      v15[1] = v10;
      swift_storeEnumTagMultiPayload();
      v14 = sub_1B77E02DC;
    }

    v17 = v14;

    a1 = v17;
    a2 = 0;
    a3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B77E0240()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77E02DC()
{
  v1 = v0[49];
  v2 = v0[47];
  v0[18] = v0;
  v0[19] = sub_1B77E0530;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  sub_1B7801338();
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    swift_allocError();
    *v11 = v2;
    swift_continuation_throwingResumeWithError();
  }

  else
  {

    v7 = swift_beginAccess();
    v8 = *v5;
    if (!*v5)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v7);
    }

    v9 = v0[49];

    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v9;
    v10[4] = v8;
    sub_1B77E6D34(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message, protocol conformance descriptor for BankConnectService.Message);

    sub_1B78000F8();
  }

  v0[52] = 0;
  v7 = (v0 + 18);

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1B77E0530()
{
  v1 = *(*v0 + 176);
  *(*v0 + 424) = v1;
  if (v1)
  {

    swift_willThrow();
    v2 = sub_1B77E08C4;
  }

  else
  {
    v2 = sub_1B77E0654;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77E0654()
{
  v1 = sub_1B77E6CD4(v0[42], type metadata accessor for BankConnectService.Message);
  v4 = v0[48] + 1;
  if (v4 == v0[46])
  {

    v5 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[47] = v0[52];
  v0[48] = v4;
  v6 = v0[45];
  if (v4 >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v6 + v4 + 32);
    v0[49] = *(v0[38] + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v11 = v0[41];
        v12 = v0[37];
        *v11 = v0[36];
        v11[1] = v12;
        swift_storeEnumTagMultiPayload();
        v13 = sub_1B77E097C;
      }

      else
      {
        v16 = v0[40];
        v17 = v0[37];
        *v16 = v0[36];
        v16[1] = v17;
        swift_storeEnumTagMultiPayload();
        v13 = sub_1B77E101C;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = v0[43];
        v9 = v0[37];
        *v8 = v0[36];
        v8[1] = v9;
        swift_storeEnumTagMultiPayload();

        v10 = swift_task_alloc();
        v0[50] = v10;
        *v10 = v0;
        v10[1] = sub_1B77DFE78;

        JUMPOUT(0x1B7275F3CLL);
      }

      v14 = v0[42];
      v15 = v0[37];
      *v14 = v0[36];
      v14[1] = v15;
      swift_storeEnumTagMultiPayload();
      v13 = sub_1B77E02DC;
    }

    v18 = v13;

    v1 = v18;
    v2 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B77E08C4()
{
  sub_1B77E6CD4(*(v0 + 336), type metadata accessor for BankConnectService.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77E097C()
{
  v1 = v0[49];
  v2 = v0[47];
  v0[10] = v0;
  v0[11] = sub_1B77E0BD0;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  sub_1B7801338();
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    swift_allocError();
    *v11 = v2;
    swift_continuation_throwingResumeWithError();
  }

  else
  {

    v7 = swift_beginAccess();
    v8 = *v5;
    if (!*v5)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v7);
    }

    v9 = v0[49];

    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v9;
    v10[4] = v8;
    sub_1B77E6D34(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message, protocol conformance descriptor for BankConnectService.Message);

    sub_1B78000F8();
  }

  v0[54] = 0;
  v7 = (v0 + 10);

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1B77E0BD0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 440) = v1;
  if (v1)
  {

    swift_willThrow();
    v2 = sub_1B77E0F64;
  }

  else
  {
    v2 = sub_1B77E0CF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77E0CF4()
{
  v1 = sub_1B77E6CD4(v0[41], type metadata accessor for BankConnectService.Message);
  v4 = v0[48] + 1;
  if (v4 == v0[46])
  {

    v5 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[47] = v0[54];
  v0[48] = v4;
  v6 = v0[45];
  if (v4 >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v6 + v4 + 32);
    v0[49] = *(v0[38] + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v11 = v0[41];
        v12 = v0[37];
        *v11 = v0[36];
        v11[1] = v12;
        swift_storeEnumTagMultiPayload();
        v13 = sub_1B77E097C;
      }

      else
      {
        v16 = v0[40];
        v17 = v0[37];
        *v16 = v0[36];
        v16[1] = v17;
        swift_storeEnumTagMultiPayload();
        v13 = sub_1B77E101C;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = v0[43];
        v9 = v0[37];
        *v8 = v0[36];
        v8[1] = v9;
        swift_storeEnumTagMultiPayload();

        v10 = swift_task_alloc();
        v0[50] = v10;
        *v10 = v0;
        v10[1] = sub_1B77DFE78;

        JUMPOUT(0x1B7275F3CLL);
      }

      v14 = v0[42];
      v15 = v0[37];
      *v14 = v0[36];
      v14[1] = v15;
      swift_storeEnumTagMultiPayload();
      v13 = sub_1B77E02DC;
    }

    v18 = v13;

    v1 = v18;
    v2 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B77E0F64()
{
  sub_1B77E6CD4(*(v0 + 328), type metadata accessor for BankConnectService.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77E101C()
{
  v1 = v0[49];
  v2 = v0[47];
  v0[2] = v0;
  v0[3] = sub_1B77E126C;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  sub_1B7801338();
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    swift_allocError();
    *v11 = v2;
    swift_continuation_throwingResumeWithError();
  }

  else
  {

    v7 = swift_beginAccess();
    v8 = *v5;
    if (!*v5)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v7);
    }

    v9 = v0[49];

    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v9;
    v10[4] = v8;
    sub_1B77E6D34(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message, protocol conformance descriptor for BankConnectService.Message);

    sub_1B78000F8();
  }

  v0[56] = 0;
  v7 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1B77E126C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 456) = v1;
  if (v1)
  {

    swift_willThrow();
    v2 = sub_1B77E1600;
  }

  else
  {
    v2 = sub_1B77E1390;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77E1390()
{
  v1 = sub_1B77E6CD4(v0[40], type metadata accessor for BankConnectService.Message);
  v4 = v0[48] + 1;
  if (v4 == v0[46])
  {

    v5 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[47] = v0[56];
  v0[48] = v4;
  v6 = v0[45];
  if (v4 >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v6 + v4 + 32);
    v0[49] = *(v0[38] + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v11 = v0[41];
        v12 = v0[37];
        *v11 = v0[36];
        v11[1] = v12;
        swift_storeEnumTagMultiPayload();
        v13 = sub_1B77E097C;
      }

      else
      {
        v16 = v0[40];
        v17 = v0[37];
        *v16 = v0[36];
        v16[1] = v17;
        swift_storeEnumTagMultiPayload();
        v13 = sub_1B77E101C;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = v0[43];
        v9 = v0[37];
        *v8 = v0[36];
        v8[1] = v9;
        swift_storeEnumTagMultiPayload();

        v10 = swift_task_alloc();
        v0[50] = v10;
        *v10 = v0;
        v10[1] = sub_1B77DFE78;

        JUMPOUT(0x1B7275F3CLL);
      }

      v14 = v0[42];
      v15 = v0[37];
      *v14 = v0[36];
      v14[1] = v15;
      swift_storeEnumTagMultiPayload();
      v13 = sub_1B77E02DC;
    }

    v18 = v13;

    v1 = v18;
    v2 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B77E1600()
{
  sub_1B77E6CD4(*(v0 + 320), type metadata accessor for BankConnectService.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static BankConnectAttributeLoader.refresh(_:for:bankConnectService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return sub_1B77E5E70(a1, a2, a3);
}

uint64_t sub_1B77E1778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  v7[35] = a2;
  v7[36] = a3;
  v7[41] = type metadata accessor for BankConnectService.Message(0);
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  type metadata accessor for InternalAccount(0);
  v7[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77E1864, 0, 0);
}

uint64_t sub_1B77E1864()
{
  v40 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 312);
    v37 = *(v0 + 304);
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v7 = 136315394;
    sub_1B723C0C4();
    v9 = sub_1B7800FB8();
    v11 = sub_1B71A3EF8(v9, v10, &v39);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v38[0] = 0;
    v38[1] = 0xE000000000000000;

    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
    MEMORY[0x1B8CA4D30](v6, v5);
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    MEMORY[0x1B8CA4D30](v37, v4);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v12 = sub_1B71A3EF8(0, 0xE000000000000000, &v39);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1B7198000, v2, v3, "Attempting to refresh %s attributes for %s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v8, -1, -1);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
  }

  v13 = *(v0 + 280);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = sub_1B72473D8(*(v13 + 16), 0);
    v16 = sub_1B7262838(v38, v15 + 32, v14, v13);
    v17 = v38[0];
    swift_bridgeObjectRetain_n();
    v18 = sub_1B71B7B58(v17);
    if (v16 != v14)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v18, v19, v20);
    }

    v13 = *(v0 + 280);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v38[0] = v15;

  sub_1B77E5984(v38, sub_1B77E6DB4, 0, v13);

  v21 = v38[0];
  *(v0 + 376) = v38[0];
  v22 = *(v21 + 2);
  *(v0 + 384) = v22;
  if (!v22)
  {

    v33 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v23 = *(v0 + 352);
  v18 = *(v0 + 360);
  v25 = *(v0 + 336);
  v24 = *(v0 + 344);
  v26 = *(v0 + 320);
  *(v0 + 392) = 0;
  *(v0 + 400) = 0;
  if (!*(v21 + 2))
  {
    goto LABEL_27;
  }

  v27 = v21[32];
  *(v0 + 408) = *(v26 + 16);
  v28 = *(v0 + 304);
  v29 = *(v0 + 312);
  v30 = *(v0 + 288);
  v31 = *(v0 + 296);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      *v24 = v30;
      v24[1] = v31;
      v24[2] = v28;
      v24[3] = v29;
      swift_storeEnumTagMultiPayload();
      v34 = sub_1B77E2994;
    }

    else
    {
      *v25 = v30;
      v25[1] = v31;
      v25[2] = v28;
      v25[3] = v29;
      swift_storeEnumTagMultiPayload();
      v34 = sub_1B77E3064;
    }
  }

  else
  {
    if (!v27)
    {
      *v18 = v30;
      v18[1] = v31;
      v18[2] = v28;
      v18[3] = v29;
      swift_storeEnumTagMultiPayload();

      v32 = swift_task_alloc();
      *(v0 + 416) = v32;
      *v32 = v0;
      v32[1] = sub_1B77E1E3C;

      JUMPOUT(0x1B7275F3CLL);
    }

    *v23 = v30;
    v23[1] = v31;
    v23[2] = v28;
    v23[3] = v29;
    swift_storeEnumTagMultiPayload();
    v34 = sub_1B77E22C4;
  }

  v35 = v34;

  v18 = v35;
  v19 = 0;
  v20 = 0;

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1B77E1E3C()
{
  v2 = *v1;
  v2[53] = v0;

  v3 = v2[45];
  if (v0)
  {
    sub_1B77E6CD4(v3, type metadata accessor for BankConnectService.Message);

    v4 = sub_1B77E2228;
  }

  else
  {
    v5 = v2[46];
    sub_1B77E6CD4(v3, type metadata accessor for BankConnectService.Message);
    sub_1B77E6CD4(v5, type metadata accessor for InternalAccount);
    v4 = sub_1B77E1FC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B77E1FC8(uint64_t (*a1)(), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4[50] + 1;
  if (v5 == v4[48])
  {

    v6 = v4[1];

    __asm { BRAA            X1, X16 }
  }

  v4[49] = v4[53];
  v4[50] = v5;
  v7 = v4[47];
  if (v5 >= *(v7 + 16))
  {
    __break(1u);
  }

  else
  {
    v8 = *(v7 + v5 + 32);
    v4[51] = *(v4[40] + 16);
    v9 = v4[38];
    v10 = v4[39];
    v11 = v4[36];
    v12 = v4[37];
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v15 = v4[43];
        *v15 = v11;
        v15[1] = v12;
        v15[2] = v9;
        v15[3] = v10;
        swift_storeEnumTagMultiPayload();
        v16 = sub_1B77E2994;
      }

      else
      {
        v18 = v4[42];
        *v18 = v11;
        v18[1] = v12;
        v18[2] = v9;
        v18[3] = v10;
        swift_storeEnumTagMultiPayload();
        v16 = sub_1B77E3064;
      }
    }

    else
    {
      if (!v8)
      {
        v13 = v4[45];
        *v13 = v11;
        v13[1] = v12;
        v13[2] = v9;
        v13[3] = v10;
        swift_storeEnumTagMultiPayload();

        v14 = swift_task_alloc();
        v4[52] = v14;
        *v14 = v4;
        v14[1] = sub_1B77E1E3C;

        JUMPOUT(0x1B7275F3CLL);
      }

      v17 = v4[44];
      *v17 = v11;
      v17[1] = v12;
      v17[2] = v9;
      v17[3] = v10;
      swift_storeEnumTagMultiPayload();
      v16 = sub_1B77E22C4;
    }

    v19 = v16;

    a1 = v19;
    a2 = 0;
    a3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B77E2228()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77E22C4()
{
  v1 = v0[51];
  v2 = v0[49];
  v0[18] = v0;
  v0[19] = sub_1B77E2518;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  sub_1B7801338();
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    swift_allocError();
    *v11 = v2;
    swift_continuation_throwingResumeWithError();
  }

  else
  {

    v7 = swift_beginAccess();
    v8 = *v5;
    if (!*v5)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v7);
    }

    v9 = v0[51];

    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v9;
    v10[4] = v8;
    sub_1B77E6D34(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message, protocol conformance descriptor for BankConnectService.Message);

    sub_1B78000F8();
  }

  v0[54] = 0;
  v7 = (v0 + 18);

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1B77E2518()
{
  v1 = *(*v0 + 176);
  *(*v0 + 440) = v1;
  if (v1)
  {

    swift_willThrow();
    v2 = sub_1B77E28DC;
  }

  else
  {
    v2 = sub_1B77E263C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77E263C()
{
  v1 = sub_1B77E6CD4(v0[44], type metadata accessor for BankConnectService.Message);
  v4 = v0[50] + 1;
  if (v4 == v0[48])
  {

    v5 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[49] = v0[54];
  v0[50] = v4;
  v6 = v0[47];
  if (v4 >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v6 + v4 + 32);
    v0[51] = *(v0[40] + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v13 = v0[43];
        v14 = v0[38];
        v15 = v0[39];
        v16 = v0[37];
        *v13 = v0[36];
        v13[1] = v16;
        v13[2] = v14;
        v13[3] = v15;
        swift_storeEnumTagMultiPayload();
        v17 = sub_1B77E2994;
      }

      else
      {
        v22 = v0[42];
        v23 = v0[38];
        v24 = v0[39];
        v25 = v0[37];
        *v22 = v0[36];
        v22[1] = v25;
        v22[2] = v23;
        v22[3] = v24;
        swift_storeEnumTagMultiPayload();
        v17 = sub_1B77E3064;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = v0[45];
        v9 = v0[38];
        v10 = v0[39];
        v11 = v0[37];
        *v8 = v0[36];
        v8[1] = v11;
        v8[2] = v9;
        v8[3] = v10;
        swift_storeEnumTagMultiPayload();

        v12 = swift_task_alloc();
        v0[52] = v12;
        *v12 = v0;
        v12[1] = sub_1B77E1E3C;

        JUMPOUT(0x1B7275F3CLL);
      }

      v18 = v0[44];
      v19 = v0[38];
      v20 = v0[39];
      v21 = v0[37];
      *v18 = v0[36];
      v18[1] = v21;
      v18[2] = v19;
      v18[3] = v20;
      swift_storeEnumTagMultiPayload();
      v17 = sub_1B77E22C4;
    }

    v26 = v17;

    v1 = v26;
    v2 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B77E28DC()
{
  sub_1B77E6CD4(*(v0 + 352), type metadata accessor for BankConnectService.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77E2994()
{
  v1 = v0[51];
  v2 = v0[49];
  v0[10] = v0;
  v0[11] = sub_1B77E2BE8;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  sub_1B7801338();
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    swift_allocError();
    *v11 = v2;
    swift_continuation_throwingResumeWithError();
  }

  else
  {

    v7 = swift_beginAccess();
    v8 = *v5;
    if (!*v5)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v7);
    }

    v9 = v0[51];

    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v9;
    v10[4] = v8;
    sub_1B77E6D34(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message, protocol conformance descriptor for BankConnectService.Message);

    sub_1B78000F8();
  }

  v0[56] = 0;
  v7 = (v0 + 10);

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1B77E2BE8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 456) = v1;
  if (v1)
  {

    swift_willThrow();
    v2 = sub_1B77E2FAC;
  }

  else
  {
    v2 = sub_1B77E2D0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77E2D0C()
{
  v1 = sub_1B77E6CD4(v0[43], type metadata accessor for BankConnectService.Message);
  v4 = v0[50] + 1;
  if (v4 == v0[48])
  {

    v5 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[49] = v0[56];
  v0[50] = v4;
  v6 = v0[47];
  if (v4 >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v6 + v4 + 32);
    v0[51] = *(v0[40] + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v13 = v0[43];
        v14 = v0[38];
        v15 = v0[39];
        v16 = v0[37];
        *v13 = v0[36];
        v13[1] = v16;
        v13[2] = v14;
        v13[3] = v15;
        swift_storeEnumTagMultiPayload();
        v17 = sub_1B77E2994;
      }

      else
      {
        v22 = v0[42];
        v23 = v0[38];
        v24 = v0[39];
        v25 = v0[37];
        *v22 = v0[36];
        v22[1] = v25;
        v22[2] = v23;
        v22[3] = v24;
        swift_storeEnumTagMultiPayload();
        v17 = sub_1B77E3064;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = v0[45];
        v9 = v0[38];
        v10 = v0[39];
        v11 = v0[37];
        *v8 = v0[36];
        v8[1] = v11;
        v8[2] = v9;
        v8[3] = v10;
        swift_storeEnumTagMultiPayload();

        v12 = swift_task_alloc();
        v0[52] = v12;
        *v12 = v0;
        v12[1] = sub_1B77E1E3C;

        JUMPOUT(0x1B7275F3CLL);
      }

      v18 = v0[44];
      v19 = v0[38];
      v20 = v0[39];
      v21 = v0[37];
      *v18 = v0[36];
      v18[1] = v21;
      v18[2] = v19;
      v18[3] = v20;
      swift_storeEnumTagMultiPayload();
      v17 = sub_1B77E22C4;
    }

    v26 = v17;

    v1 = v26;
    v2 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B77E2FAC()
{
  sub_1B77E6CD4(*(v0 + 344), type metadata accessor for BankConnectService.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77E3064()
{
  v1 = v0[51];
  v2 = v0[49];
  v0[2] = v0;
  v0[3] = sub_1B77E32B4;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  sub_1B7801338();
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    swift_allocError();
    *v11 = v2;
    swift_continuation_throwingResumeWithError();
  }

  else
  {

    v7 = swift_beginAccess();
    v8 = *v5;
    if (!*v5)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v7);
    }

    v9 = v0[51];

    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v9;
    v10[4] = v8;
    sub_1B77E6D34(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message, protocol conformance descriptor for BankConnectService.Message);

    sub_1B78000F8();
  }

  v0[58] = 0;
  v7 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1B77E32B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 472) = v1;
  if (v1)
  {

    swift_willThrow();
    v2 = sub_1B77E3678;
  }

  else
  {
    v2 = sub_1B77E33D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77E33D8()
{
  v1 = sub_1B77E6CD4(v0[42], type metadata accessor for BankConnectService.Message);
  v4 = v0[50] + 1;
  if (v4 == v0[48])
  {

    v5 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[49] = v0[58];
  v0[50] = v4;
  v6 = v0[47];
  if (v4 >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v6 + v4 + 32);
    v0[51] = *(v0[40] + 16);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v13 = v0[43];
        v14 = v0[38];
        v15 = v0[39];
        v16 = v0[37];
        *v13 = v0[36];
        v13[1] = v16;
        v13[2] = v14;
        v13[3] = v15;
        swift_storeEnumTagMultiPayload();
        v17 = sub_1B77E2994;
      }

      else
      {
        v22 = v0[42];
        v23 = v0[38];
        v24 = v0[39];
        v25 = v0[37];
        *v22 = v0[36];
        v22[1] = v25;
        v22[2] = v23;
        v22[3] = v24;
        swift_storeEnumTagMultiPayload();
        v17 = sub_1B77E3064;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = v0[45];
        v9 = v0[38];
        v10 = v0[39];
        v11 = v0[37];
        *v8 = v0[36];
        v8[1] = v11;
        v8[2] = v9;
        v8[3] = v10;
        swift_storeEnumTagMultiPayload();

        v12 = swift_task_alloc();
        v0[52] = v12;
        *v12 = v0;
        v12[1] = sub_1B77E1E3C;

        JUMPOUT(0x1B7275F3CLL);
      }

      v18 = v0[44];
      v19 = v0[38];
      v20 = v0[39];
      v21 = v0[37];
      *v18 = v0[36];
      v18[1] = v21;
      v18[2] = v19;
      v18[3] = v20;
      swift_storeEnumTagMultiPayload();
      v17 = sub_1B77E22C4;
    }

    v26 = v17;

    v1 = v26;
    v2 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B77E3678()
{
  sub_1B77E6CD4(*(v0 + 336), type metadata accessor for BankConnectService.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static BankConnectAttributeLoaderWrapper.refresh(_:forPrimaryAccountIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B77E3754, 0, 0);
}

uint64_t sub_1B77E3754()
{
  sub_1B75ED05C(sub_1B77E6D98, 0, v0[2]);
  v2 = sub_1B723C010(v1);
  v0[5] = v2;

  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }

  v3 = off_1EDAF9CE0;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1B77E387C;
  v5 = v0[3];
  v6 = v0[4];

  return sub_1B77E5A40(v2, v5, v6, v3);
}

uint64_t sub_1B77E387C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B77E39B8, 0, 0);
}

uint64_t sub_1B77E39B8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B77E3A1C(void *a1@<X0>, char *a2@<X8>)
{
  sub_1B7449284();
  v4 = a1;
  v5 = &unk_1F2F8CFF8;
  v6 = sub_1B7801558();

  if (v6)
  {
    v7 = 0;
LABEL_7:

    *a2 = v7;
    return;
  }

  v8 = v4;
  v9 = &unk_1F2F8D010;
  v10 = sub_1B7801558();

  if (v10)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v11 = v8;
  v12 = &unk_1F2F8D028;
  v13 = sub_1B7801558();

  if (v13)
  {
    v7 = 2;
    goto LABEL_7;
  }

  sub_1B7801A78();

  v14 = [v11 description];
  v15 = sub_1B7800868();
  v17 = v16;

  MEMORY[0x1B8CA4D30](v15, v17);

  sub_1B7801C88();
  __break(1u);
}

uint64_t sub_1B77E3D5C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  sub_1B7449284();
  sub_1B77E6D34(&qword_1EB99EB48, sub_1B7449284, MEMORY[0x1E69E81B8]);
  v3[3] = sub_1B7800FA8();
  v3[4] = sub_1B7800868();
  v3[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B77E3E38, 0, 0);
}

uint64_t sub_1B77E3E38()
{
  sub_1B75ED05C(sub_1B77E6D98, 0, v0[3]);
  v2 = v1;

  v3 = sub_1B723C010(v2);
  v0[6] = v3;

  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }

  v4 = off_1EDAF9CE0;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B77E3F70;
  v6 = v0[4];
  v7 = v0[5];

  return sub_1B77E5A40(v3, v6, v7, v4);
}

uint64_t sub_1B77E3F70()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (!v0)
  {
    v3 = *(v2 + 16);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 16));
    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B77E40E0, 0, 0);
}

uint64_t sub_1B77E40E0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  v3 = sub_1B77FF308();

  (*(v2 + 16))(v2, v3);
  _Block_release(*(v0 + 16));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t static BankConnectAttributeLoaderWrapper.refresh(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return sub_1B77E62B8(a1, a2);
}

uint64_t sub_1B77E43CC(uint64_t a1, void *a2, void *aBlock)
{
  v3[2] = a2;
  v3[3] = _Block_copy(aBlock);
  sub_1B7449284();
  sub_1B77E6D34(&qword_1EB99EB48, sub_1B7449284, MEMORY[0x1E69E81B8]);
  v5 = sub_1B7800FA8();
  v3[4] = v5;
  v6 = a2;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B77E44F8;

  return sub_1B77E62B8(v5, v6);
}

uint64_t sub_1B77E44F8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1B77FF308();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id BankConnectAttributeLoaderWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectAttributeLoaderWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BankConnectAttributeLoaderWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B77E477C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B723838C;

  return v6();
}

uint64_t sub_1B77E4864(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B7201BB0;

  return v7();
}

uint64_t sub_1B77E494C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B7205588(a3, v23 - v10, &unk_1EB99C280, &unk_1B7808CA0);
  v12 = sub_1B7800DF8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B77E69D4(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B7800DE8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B7800CD8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B7800948() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B77E69D4(a3);

    return v21;
  }

LABEL_8:
  sub_1B77E69D4(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B77E4C18(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B77E4CA4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B77E4D6C(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t (*a5)(void, void))
{
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v13 = (v7 + v12);
    if (v12 >= 1 && v9 > v10)
    {
      v18 = -v7;
      v30 = a5;
      while (1)
      {
        v19 = v9 - 1;
        v20 = &v13[v18];
        --v8;
        v21 = v13;
        while (1)
        {
          v22 = *--v21;
          v23 = v19;
          v24 = v30(v22, *v19);
          if (v5)
          {
            if (v9 >= v7 && v9 < v13 && v9 == v7)
            {
              return 1;
            }

            v27 = v9;
            v28 = v7;
            v26 = v20;
LABEL_54:
            memmove(v27, v28, v26);
            return 1;
          }

          v25 = v8 + 1;
          if (v24)
          {
            break;
          }

          v19 = v23;
          if (v25 < v13 || v8 >= v13)
          {
            *v8 = *v21;
          }

          --v20;
          --v8;
          v13 = v21;
          if (v21 <= v7)
          {
            v13 = v21;
            goto LABEL_49;
          }
        }

        if (v25 < v9 || v8 >= v9)
        {
          *v8 = *v23;
        }

        if (v13 > v7)
        {
          v9 = v23;
          v18 = -v7;
          if (v23 > v10)
          {
            continue;
          }
        }

        v9 = v23;
        break;
      }
    }

LABEL_49:
    v26 = &v13[-v7];
    if (v9 >= v7 && v9 < v13 && v9 == v7)
    {
      return 1;
    }

    v27 = v9;
LABEL_53:
    v28 = v7;
    goto LABEL_54;
  }

  if (a4 != __dst || a4 >= __src)
  {
    memmove(a4, __dst, v11);
  }

  v13 = (v7 + v11);
  if (v11 < 1 || v9 >= v8)
  {
LABEL_19:
    v9 = v10;
    goto LABEL_49;
  }

  while (1)
  {
    v14 = a5(*v9, *v7);
    if (v5)
    {
      break;
    }

    if (v14)
    {
      v15 = v9 + 1;
      v16 = v9;
      if (v10 >= v9 && v10 < v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = (v7 + 1);
      v16 = v7;
      v15 = v9;
      if (v10 < v7)
      {
        ++v7;
      }

      else
      {
        ++v7;
        if (v10 < v17)
        {
          goto LABEL_17;
        }
      }
    }

    *v10 = *v16;
LABEL_17:
    ++v10;
    if (v7 < v13)
    {
      v9 = v15;
      if (v15 < v8)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v26 = &v13[-v7];
  if (v10 < v7 || v10 >= v13 || v10 != v7)
  {
    v27 = v10;
    goto LABEL_53;
  }

  return 1;
}

void sub_1B77E5008(char **a1, unsigned __int8 *a2, uint64_t *a3, uint64_t (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a1;
  v9 = *a1;

  v23 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v23 = sub_1B77E4CA4(v23);
  }

  v19 = v8;
  *v8 = v23;
  v10 = (v23 + 16);
  v11 = *(v23 + 2);
  if (v11 < 2)
  {
LABEL_9:
    *v19 = v23;
  }

  else
  {
    while (1)
    {
      v12 = *a3;
      if (!*a3)
      {
        break;
      }

      v13 = &v23[16 * v11];
      v14 = *v13;
      v15 = &v10[2 * v11];
      v8 = *v15;
      v16 = v15[1];

      sub_1B77E4D6C((v12 + v14), v8 + v12, v16 + v12, a2, a4);

      if (v7)
      {
        goto LABEL_9;
      }

      if (v16 < v14)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v17 = *v10;
      if (v11 - 2 >= *v10)
      {
        goto LABEL_11;
      }

      *v13 = v14;
      *(v13 + 1) = v16;
      v18 = v17 - v11;
      if (v17 < v11)
      {
        goto LABEL_12;
      }

      v11 = v17 - 1;
      memmove(v15, v15 + 2, 16 * v18);
      *v10 = v11;
      if (v11 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v23;

    __break(1u);
  }
}

void sub_1B77E5180(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6, uint64_t a7)
{
  v99 = MEMORY[0x1E69E7CC0];
  v11 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v11 >= 1)
  {
    v12 = 0;
    v97 = MEMORY[0x1E69E7CC0];
    v89 = a4;
    v94 = a5;
    v95 = a6;
    do
    {
      v15 = v12;
      v16 = v12 + 1;
      if (v12 + 1 < v11)
      {
        v17 = *a3;
        v18 = (a5)(*(*a3 + v12 + 1), *(*a3 + v12));
        if (v7)
        {
          goto LABEL_96;
        }

        v19 = v18;
        v20 = v15;
        while (v11 - 2 != v20)
        {
          v21 = (a5)(*(v17 + v20 + 2), *(v17 + v20 + 1));
          ++v20;
          if ((v19 ^ v21))
          {
            v11 = v20 + 1;
            break;
          }
        }

        if (v19)
        {
          if (v11 < v15)
          {
            goto LABEL_118;
          }

          if (v15 < v11)
          {
            v22 = v11 - 1;
            v23 = v15;
            do
            {
              if (v23 != v22)
              {
                v26 = *a3;
                if (!*a3)
                {
                  goto LABEL_121;
                }

                v24 = *(v26 + v23);
                *(v26 + v23) = *(v26 + v22);
                *(v26 + v22) = v24;
              }
            }

            while (++v23 < v22--);
          }
        }

        v16 = v11;
      }

      v27 = a3[1];
      if (v16 >= v27)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(v16, v15))
      {
        goto LABEL_115;
      }

      if (v16 - v15 >= a4)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v15, a4))
      {
        goto LABEL_116;
      }

      if (v15 + a4 >= v27)
      {
        v28 = a3[1];
      }

      else
      {
        v28 = v15 + a4;
      }

      if (v28 < v15)
      {
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_120:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_121:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_122:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_123:
        swift_bridgeObjectRelease_n();
        __break(1u);
        return;
      }

      if (v16 == v28)
      {
LABEL_34:
        if (v16 < v15)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v80 = v16;
        v81 = *a3;
        v82 = (*a3 + v80);
        v83 = v15 - v80;
        do
        {
          v92 = v80;
          v84 = *(v81 + v80);
          v85 = v83;
          v86 = v82;
          do
          {
            v87 = (a5)(v84, *(v86 - 1));
            if (v7)
            {
              goto LABEL_96;
            }

            if ((v87 & 1) == 0)
            {
              break;
            }

            if (!v81)
            {
              goto LABEL_120;
            }

            v84 = *v86;
            *v86 = *(v86 - 1);
            *--v86 = v84;
          }

          while (!__CFADD__(v85++, 1));
          v80 = v92 + 1;
          ++v82;
          --v83;
        }

        while (v92 + 1 != v28);
        v16 = v28;
        if (v28 < v15)
        {
          goto LABEL_114;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_1B723E420(0, *(v97 + 2) + 1, 1, v97);
      }

      v30 = *(v97 + 2);
      v29 = *(v97 + 3);
      v31 = v30 + 1;
      v91 = v16;
      if (v30 >= v29 >> 1)
      {
        v32 = sub_1B723E420((v29 > 1), v30 + 1, 1, v97);
      }

      else
      {
        v32 = v97;
      }

      *(v32 + 2) = v31;
      v33 = v32 + 32;
      v34 = &v32[16 * v30 + 32];
      *v34 = v15;
      *(v34 + 1) = v91;
      v99 = v32;
      v93 = *a1;
      if (!*a1)
      {
        goto LABEL_122;
      }

      v97 = v32;
      if (v30)
      {
        while (1)
        {
          v35 = v31 - 1;
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v36 = *(v32 + 4);
            v37 = *(v32 + 5);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_54:
            if (v39)
            {
              goto LABEL_105;
            }

            v52 = &v32[16 * v31];
            v54 = *v52;
            v53 = *(v52 + 1);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_108;
            }

            v58 = &v33[16 * v35];
            v60 = *v58;
            v59 = *(v58 + 1);
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_112;
            }

            if (v56 + v61 >= v38)
            {
              if (v38 < v61)
              {
                v35 = v31 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v62 = &v32[16 * v31];
          v64 = *v62;
          v63 = *(v62 + 1);
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_68:
          if (v57)
          {
            goto LABEL_107;
          }

          v65 = &v33[16 * v35];
          v67 = *v65;
          v66 = *(v65 + 1);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_110;
          }

          if (v68 < v56)
          {
            goto LABEL_6;
          }

LABEL_75:
          if (v35 - 1 >= v31)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_117;
          }

          v73 = *a3;
          if (!*a3)
          {
            goto LABEL_119;
          }

          v74 = &v33[16 * v35 - 16];
          v75 = *v74;
          v76 = &v33[16 * v35];
          v77 = *v76;
          v78 = *(v76 + 1);

          sub_1B77E4D6C((v73 + v75), (v73 + v77), (v73 + v78), v93, v94);
          if (v7)
          {

            goto LABEL_96;
          }

          if (v78 < v75)
          {
            goto LABEL_100;
          }

          v32 = v97;
          v79 = *(v97 + 2);
          if (v35 > v79)
          {
            goto LABEL_101;
          }

          *v74 = v75;
          *(v74 + 1) = v78;
          if (v35 >= v79)
          {
            goto LABEL_102;
          }

          v31 = v79 - 1;
          memmove(&v33[16 * v35], v76 + 16, 16 * (v79 - 1 - v35));
          *(v97 + 2) = v79 - 1;
          if (v79 <= 2)
          {
LABEL_6:
            v99 = v32;
            goto LABEL_7;
          }
        }

        v40 = &v33[16 * v31];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_103;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_104;
        }

        v47 = &v32[16 * v31];
        v49 = *v47;
        v48 = *(v47 + 1);
        v46 = __OFSUB__(v48, v49);
        v50 = v48 - v49;
        if (v46)
        {
          goto LABEL_106;
        }

        v46 = __OFADD__(v38, v50);
        v51 = v38 + v50;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v51 >= v43)
        {
          v69 = &v33[16 * v35];
          v71 = *v69;
          v70 = *(v69 + 1);
          v46 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v46)
          {
            goto LABEL_113;
          }

          if (v38 < v72)
          {
            v35 = v31 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_7:
      v11 = a3[1];
      v12 = v91;
      a5 = v94;
      a6 = v95;
      a4 = v89;
    }

    while (v91 < v11);
  }

  v13 = a5;
  v14 = *a1;
  if (!*a1)
  {
    goto LABEL_123;
  }

  sub_1B77E5008(&v99, v14, a3, v13, a6, a7);
  if (v7)
  {

LABEL_96:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1B77E5760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void))
{
  if (a3 != a2)
  {
    v7 = a3;
    v9 = *a4;
    v10 = (*a4 + a3);
    v11 = result - a3;
LABEL_4:
    result = *(v9 + v7);
    v12 = v11;
    v13 = v10;
    while (1)
    {
      result = a5(result, *(v13 - 1));
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        result = *v13;
        *v13 = *(v13 - 1);
        *--v13 = result;
        if (!__CFADD__(v12++, 1))
        {
          continue;
        }
      }

      ++v7;
      ++v10;
      --v11;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1B77E5820(uint64_t *a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v8 = a1[1];
  swift_bridgeObjectRetain_n();
  v9 = sub_1B7802038();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v12 = sub_1B7800C78();
        *(v12 + 16) = v11;
      }

      v13[0] = (v12 + 32);
      v13[1] = v11;

      sub_1B77E5180(v13, v14, a1, v10, a2, a3, a4);

      *(v12 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {

    sub_1B77E5760(0, v8, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1B77E5984(char **a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1B77E4D58(v8);
  }

  v9 = *(v8 + 2);
  v11[0] = (v8 + 32);
  v11[1] = v9;

  sub_1B77E5820(v11, a2, a3, a4);

  *a1 = v8;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1B77E5A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B77E5AD4, 0, 0);
}

uint64_t sub_1B77E5AD4()
{
  v0[1].opaque[0] = 0;
  v0[1].opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v1 = _os_activity_create(&dword_1B7198000, "bankConnect/attributeLoader", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  v0[4].opaque[0] = v1;
  os_activity_scope_enter(v1, v0 + 1);
  v2 = swift_task_alloc();
  v0[4].opaque[1] = v2;
  *v2 = v0;
  v2[1] = sub_1B77E5BF8;
  v3 = v0[3].opaque[0];
  v4 = v0[3].opaque[1];
  v5 = v0[2].opaque[0];
  v6 = v0[2].opaque[1];

  return sub_1B77DF8B4(v2, v5, v6, v3, v4);
}

uint64_t sub_1B77E5BF8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B77E5DD4;
  }

  else
  {
    v2 = sub_1B77E5D38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77E5D38()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1B77E5DD4()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1B77E5E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a3;
  *(v3 + 48) = *a2;
  *(v3 + 56) = *(a2 + 8);
  *(v3 + 72) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1B77E5F18, 0, 0);
}

uint64_t sub_1B77E5F18()
{
  v0[1].opaque[0] = 0;
  v0[1].opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v1 = _os_activity_create(&dword_1B7198000, "bankConnect/attributeLoader", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = v1;
  os_activity_scope_enter(v1, v0 + 1);
  v2 = swift_task_alloc();
  v0[5].opaque[1] = v2;
  *v2 = v0;
  v2[1] = sub_1B77E6040;
  v3 = v0[4].opaque[0];
  v4 = v0[4].opaque[1];
  v5 = v0[3].opaque[0];
  v6 = v0[3].opaque[1];
  v7 = v0[2].opaque[0];
  v8 = v0[2].opaque[1];

  return sub_1B77E1778(v2, v7, v5, v6, v3, v4, v8);
}

uint64_t sub_1B77E6040()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B77E621C;
  }

  else
  {
    v2 = sub_1B77E6180;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77E6180()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1B77E621C()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1B77E62B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B77E6348, 0, 0);
}

uint64_t sub_1B77E6348()
{
  v1 = v0[2].opaque[1];
  sub_1B75ED05C(sub_1B77E6D98, 0, v0[2].opaque[0]);
  v3 = sub_1B723C010(v2);
  v0[3].opaque[0] = v3;

  v4 = [v1 accountID];
  v5 = sub_1B7800868();
  v7 = v6;

  v0[3].opaque[1] = v7;
  v8 = [v1 institutionID];
  v9 = sub_1B7800868();
  v11 = v10;

  v0[4].opaque[0] = v11;
  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }

  v12 = off_1EDAF9CE0;
  v0[1].opaque[0] = 0;
  v0[1].opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v13 = _os_activity_create(&dword_1B7198000, "bankConnect/attributeLoader", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  v0[4].opaque[1] = v13;
  os_activity_scope_enter(v13, v0 + 1);
  v14 = swift_task_alloc();
  v0[5].opaque[0] = v14;
  *v14 = v0;
  v14[1] = sub_1B77E6564;

  return sub_1B77E1778(v14, v3, v5, v7, v9, v11, v12);
}

uint64_t sub_1B77E6564()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B77E676C;
  }

  else
  {
    v2 = sub_1B77E66A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77E66A4()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();

  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1B77E676C()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();

  v1 = v0->opaque[1];

  return v1();
}

unint64_t sub_1B77E6838()
{
  result = qword_1EB99EB30;
  if (!qword_1EB99EB30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectRefreshableAttribute, &type metadata for BankConnectRefreshableAttribute, v0, v1);
    atomic_store(result, &qword_1EB99EB30);
  }

  return result;
}

uint64_t sub_1B77E6914()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B77E43CC(v2, v3, v4);
}

uint64_t sub_1B77E69D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B77E6A3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return sub_1B759CDD8(a1, v4);
}

uint64_t sub_1B77E6AF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return sub_1B759CDD8(a1, v4);
}

uint64_t objectdestroyTm_11()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B77E6BF4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7201BB0;

  return sub_1B77E3D5C(v2, v3, v4);
}

uint64_t sub_1B77E6CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B77E6D34(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id MapsTransactionInsightResult.xpcValue.getter()
{
  v1 = type metadata accessor for MapsTransactionInsightResult(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77E6EF4(v0, v3);
  v4 = type metadata accessor for MapsTransactionInsightResult.XPC(0);
  v5 = objc_allocWithZone(v4);
  sub_1B77E6EF4(v3, v5 + OBJC_IVAR___XPCMapsTransactionInsightResult_value);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1B77E8B48(v3, type metadata accessor for MapsTransactionInsightResult);
  return v6;
}

uint64_t sub_1B77E6EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsTransactionInsightResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77E6F5C()
{
  v1 = 0x656C74746F726874;
  if (*v0 != 1)
  {
    v1 = 0x6572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B77E6FBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B77E91C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B77E6FE4(uint64_t a1)
{
  v2 = sub_1B77E89F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77E7020(uint64_t a1)
{
  v2 = sub_1B77E89F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77E705C(uint64_t a1)
{
  v2 = sub_1B77E8A4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77E7098(uint64_t a1)
{
  v2 = sub_1B77E8A4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77E70D4(uint64_t a1)
{
  v2 = sub_1B77E8AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77E7110(uint64_t a1)
{
  v2 = sub_1B77E8AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77E714C(uint64_t a1)
{
  v2 = sub_1B77E8AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77E7188(uint64_t a1)
{
  v2 = sub_1B77E8AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MapsTransactionInsightResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB50, &qword_1B7871110);
  v34 = *(v2 - 1);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB58, &qword_1B7871118);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB60, &qword_1B7871120);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v30 = type metadata accessor for MapsTransactionInsight(0);
  MEMORY[0x1EEE9AC00](v30);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MapsTransactionInsightResult(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB68, &qword_1B7871128);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77E89F8();
  sub_1B78023F8();
  sub_1B77E6EF4(v39, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB78, &qword_1B7871130);
  v19 = (*(*(v18 - 8) + 48))(v13, 2, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      LOBYTE(v41) = 1;
      sub_1B77E8AA0();
      sub_1B7801ED8();
      (*(v31 + 8))(v6, v32);
    }

    else
    {
      LOBYTE(v41) = 2;
      sub_1B77E8A4C();
      v27 = v33;
      sub_1B7801ED8();
      (*(v34 + 8))(v27, v35);
    }

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v20 = &v13[*(v18 + 48)];
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[3];
    v39 = v20[2];
    v24 = v20[4];
    v34 = v23;
    v35 = v24;
    sub_1B77E8BA8(v13, v38, type metadata accessor for MapsTransactionInsight);
    LOBYTE(v41) = 0;
    sub_1B77E8AF4();
    sub_1B7801ED8();
    LOBYTE(v41) = 0;
    sub_1B77E8C10(&qword_1EB98F818, ")\\e7TI\a");
    v25 = v37;
    v26 = v40;
    sub_1B7801FC8();
    if (v26)
    {
      sub_1B720ACE8(v22, v21, v39, v34, v35);
      (*(v36 + 8))(v9, v25);
      sub_1B77E8B48(v38, type metadata accessor for MapsTransactionInsight);
      (*(v15 + 8))(v17, v14);
    }

    else
    {
      v32 = v22;
      v33 = v21;
      v41 = v22;
      v42 = v21;
      v28 = v34;
      v29 = v35;
      v43 = v39;
      v44 = v34;
      v45 = v35;
      v46 = 1;
      sub_1B720AC40();
      sub_1B7801F38();
      (*(v36 + 8))(v9, v25);
      sub_1B77E8B48(v38, type metadata accessor for MapsTransactionInsight);
      (*(v15 + 8))(v17, v14);
      sub_1B720ACE8(v32, v33, v39, v28, v29);
    }
  }
}

uint64_t MapsTransactionInsightResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB98, &qword_1B7871138);
  v49 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EBA0, &qword_1B7871140);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v44 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EBA8, &qword_1B7871148);
  v50 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99EBB0, &unk_1B7871150);
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for MapsTransactionInsightResult(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  v17 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B77E89F8();
  v18 = v56;
  sub_1B78023C8();
  if (!v18)
  {
    v44 = v14;
    v45 = v16;
    v20 = v52;
    v19 = v53;
    v56 = 0;
    v21 = v54;
    v22 = sub_1B7801E98();
    v23 = (2 * *(v22 + 16)) | 1;
    v58 = v22;
    v59 = v22 + 32;
    v60 = 0;
    v61 = v23;
    v24 = sub_1B721CE54();
    v25 = v10;
    if (v24 == 3 || v60 != v61 >> 1)
    {
      v31 = v8;
      v32 = sub_1B7801B18();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v34 = v11;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v55 + 8))(v10, v31);
    }

    else
    {
      if (v24)
      {
        v26 = v21;
        if (v24 == 1)
        {
          v62 = 1;
          sub_1B77E8AA0();
          v27 = v51;
          v28 = v56;
          sub_1B7801D38();
          if (!v28)
          {
            (*(v47 + 8))(v27, v48);
            (*(v55 + 8))(v10, v8);
            swift_unknownObjectRelease();
            v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB78, &qword_1B7871130);
            v30 = v45;
            (*(*(v29 - 8) + 56))(v45, 1, 2, v29);
LABEL_16:
            sub_1B77E8BA8(v30, v26, type metadata accessor for MapsTransactionInsightResult);
            return __swift_destroy_boxed_opaque_existential_1(v57);
          }
        }

        else
        {
          v62 = 2;
          sub_1B77E8A4C();
          v41 = v56;
          sub_1B7801D38();
          if (!v41)
          {
            (*(v49 + 8))(v20, v19);
            (*(v55 + 8))(v10, v8);
            swift_unknownObjectRelease();
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB78, &qword_1B7871130);
            v30 = v45;
            (*(*(v42 - 8) + 56))(v45, 2, 2, v42);
            goto LABEL_16;
          }
        }
      }

      else
      {
        v62 = 0;
        sub_1B77E8AF4();
        v36 = v7;
        v37 = v56;
        sub_1B7801D38();
        v26 = v21;
        if (!v37)
        {
          v56 = v8;
          type metadata accessor for MapsTransactionInsight(0);
          v62 = 0;
          sub_1B77E8C10(&unk_1EB99EBC0, protocol conformance descriptor for MapsTransactionInsight);
          v38 = v44;
          v39 = v46;
          sub_1B7801E48();
          v40 = v55;
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB78, &qword_1B7871130);
          v62 = 1;
          sub_1B720AC94();
          sub_1B7801DB8();
          (*(v50 + 8))(v36, v39);
          (*(v40 + 8))(v25, v56);
          swift_unknownObjectRelease();
          (*(*(v43 - 8) + 56))(v38, 0, 2, v43);
          v30 = v45;
          sub_1B77E8BA8(v38, v45, type metadata accessor for MapsTransactionInsightResult);
          goto LABEL_16;
        }
      }

      (*(v55 + 8))(v25, v8);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

id MapsTransactionInsightResult.XPC.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B77E6EF4(a1, v3 + OBJC_IVAR___XPCMapsTransactionInsightResult_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B77E8B48(a1, type metadata accessor for MapsTransactionInsightResult);
  return v4;
}

id MapsTransactionInsightResult.XPC.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1B77E6EF4(a1, v1 + OBJC_IVAR___XPCMapsTransactionInsightResult_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B77E8B48(a1, type metadata accessor for MapsTransactionInsightResult);
  return v4;
}

id MapsTransactionInsightResult.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B720A01C(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id MapsTransactionInsightResult.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B720A01C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id MapsTransactionInsightResult.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsTransactionInsightResult.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B77E8488(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B77E6EF4(a1, v3 + OBJC_IVAR___XPCMapsTransactionInsightResult_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B77E8B48(a1, type metadata accessor for MapsTransactionInsightResult);
  return v4;
}

uint64_t _s10FinanceKit28MapsTransactionInsightResultO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsTransactionInsight(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MapsTransactionInsightResult(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC48, &qword_1B78715F8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v47 - v12;
  v14 = &v47 + *(v11 + 56) - v12;
  sub_1B77E6EF4(a1, &v47 - v12);
  sub_1B77E6EF4(a2, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB78, &qword_1B7871130);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v13, 2, v15);
  if (!v17)
  {
    v52 = v6;
    sub_1B77E6EF4(v13, v9);
    v18 = *(v15 + 48);
    v19 = *&v9[v18];
    v20 = *&v9[v18 + 8];
    v21 = *&v9[v18 + 16];
    v22 = *&v9[v18 + 24];
    v53 = *&v9[v18 + 32];
    v54 = v19;
    if (v16(v14, 2, v15))
    {
      sub_1B720ACE8(v54, v20, v21, v22, v53);
      sub_1B77E8B48(v9, type metadata accessor for MapsTransactionInsight);
      goto LABEL_9;
    }

    v50 = v22;
    v51 = v20;
    v24 = v21;
    v25 = &v14[v18];
    v27 = *&v14[v18];
    v26 = *&v14[v18 + 8];
    v29 = *&v14[v18 + 16];
    v28 = *(v25 + 3);
    v30 = *(v25 + 4);
    v31 = v52;
    sub_1B77E8BA8(v14, v52, type metadata accessor for MapsTransactionInsight);
    v32 = static MapsTransactionInsight.== infix(_:_:)();
    sub_1B77E8B48(v9, type metadata accessor for MapsTransactionInsight);
    if (v32)
    {
      v47 = v27;
      v48 = v29;
      v49 = v28;
      v33 = v53;
      v34 = v24;
      if (v53 == 1)
      {
        v35 = v50;
        sub_1B77E8B48(v31, type metadata accessor for MapsTransactionInsight);
        v36 = v51;
        v37 = v54;
        if (v30 == 1)
        {
          sub_1B720ACE8(v54, v51, v24, v35, 1);
          goto LABEL_8;
        }
      }

      else
      {
        v37 = v54;
        v36 = v51;
        v60 = v54;
        v61 = v51;
        v62 = v24;
        v63 = v50;
        v64 = v53;
        if (v30 != 1)
        {
          v55 = v47;
          v56 = v26;
          v57 = v48;
          v58 = v49;
          v59 = v30;
          v43 = v50;
          sub_1B72382F8(v54, v51, v24, v50, v53);
          v44 = _s10FinanceKit11TransactionV4IconV2eeoiySbAE_AEtFZ_0(&v60, &v55);
          v45 = v59;
          sub_1B720A388(v55, v56);

          sub_1B77E8B48(v31, type metadata accessor for MapsTransactionInsight);
          v46 = v64;
          sub_1B720A388(v60, v61);

          sub_1B720ACE8(v37, v36, v34, v43, v33);
          if (v44)
          {
            goto LABEL_8;
          }

LABEL_20:
          sub_1B77E8B48(v13, type metadata accessor for MapsTransactionInsightResult);
          return 0;
        }

        v35 = v50;
        sub_1B72382F8(v54, v51, v24, v50, v53);
        sub_1B77E8B48(v31, type metadata accessor for MapsTransactionInsight);
        sub_1B720A388(v37, v36);
      }

      sub_1B720ACE8(v37, v36, v24, v35, v33);
      v38 = v47;
      v42 = v48;
      v40 = v26;
      v41 = v49;
      v39 = v30;
    }

    else
    {
      sub_1B77E8B48(v31, type metadata accessor for MapsTransactionInsight);
      sub_1B720ACE8(v27, v26, v29, v28, v30);
      v39 = v53;
      v38 = v54;
      v41 = v50;
      v40 = v51;
      v42 = v24;
    }

    sub_1B720ACE8(v38, v40, v42, v41, v39);
    goto LABEL_20;
  }

  if (v17 == 1)
  {
    if (v16(v14, 2, v15) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_1B77E8B48(v13, type metadata accessor for MapsTransactionInsightResult);
    return 1;
  }

  if (v16(v14, 2, v15) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_1B77E92E4(v13);
  return 0;
}

unint64_t sub_1B77E89F8()
{
  result = qword_1EB99EB70;
  if (!qword_1EB99EB70)
  {
    result = swift_getWitnessTable(byte_1B78715A4, &type metadata for MapsTransactionInsightResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EB70);
  }

  return result;
}

unint64_t sub_1B77E8A4C()
{
  result = qword_1EB99EB80;
  if (!qword_1EB99EB80)
  {
    result = swift_getWitnessTable(aE_37, &type metadata for MapsTransactionInsightResult.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EB80);
  }

  return result;
}

unint64_t sub_1B77E8AA0()
{
  result = qword_1EB99EB88;
  if (!qword_1EB99EB88)
  {
    result = swift_getWitnessTable(byte_1B7871504, &type metadata for MapsTransactionInsightResult.ThrottledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EB88);
  }

  return result;
}

unint64_t sub_1B77E8AF4()
{
  result = qword_1EB99EB90;
  if (!qword_1EB99EB90)
  {
    result = swift_getWitnessTable(byte_1B78714B4, &type metadata for MapsTransactionInsightResult.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EB90);
  }

  return result;
}

uint64_t sub_1B77E8B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B77E8BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B77E8C10(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MapsTransactionInsight(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B77E8C7C(uint64_t a1)
{
  sub_1B77E8CD4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1B77E8CD4(uint64_t a1)
{
  if (!qword_1EB99EBE0)
  {
    type metadata accessor for MapsTransactionInsight(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993160, &qword_1B7820770);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB99EBE0);
    }
  }
}

uint64_t sub_1B77E8D58(uint64_t a1)
{
  result = type metadata accessor for MapsTransactionInsightResult(319);
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

unint64_t sub_1B77E8E58()
{
  result = qword_1EB99EBF8;
  if (!qword_1EB99EBF8)
  {
    result = swift_getWitnessTable(aUzb7, &type metadata for MapsTransactionInsightResult.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EBF8);
  }

  return result;
}

unint64_t sub_1B77E8EB0()
{
  result = qword_1EB99EC00;
  if (!qword_1EB99EC00)
  {
    result = swift_getWitnessTable(byte_1B787148C, &type metadata for MapsTransactionInsightResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EC00);
  }

  return result;
}

unint64_t sub_1B77E8F08()
{
  result = qword_1EB99EC08;
  if (!qword_1EB99EC08)
  {
    result = swift_getWitnessTable(byte_1B7871344, &type metadata for MapsTransactionInsightResult.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EC08);
  }

  return result;
}

unint64_t sub_1B77E8F60()
{
  result = qword_1EB99EC10;
  if (!qword_1EB99EC10)
  {
    result = swift_getWitnessTable(aNb7, &type metadata for MapsTransactionInsightResult.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EC10);
  }

  return result;
}

unint64_t sub_1B77E8FB8()
{
  result = qword_1EB99EC18;
  if (!qword_1EB99EC18)
  {
    result = swift_getWitnessTable(byte_1B78712F4, &type metadata for MapsTransactionInsightResult.ThrottledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EC18);
  }

  return result;
}

unint64_t sub_1B77E9010()
{
  result = qword_1EB99EC20;
  if (!qword_1EB99EC20)
  {
    result = swift_getWitnessTable(byte_1B787131C, &type metadata for MapsTransactionInsightResult.ThrottledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EC20);
  }

  return result;
}

unint64_t sub_1B77E9068()
{
  result = qword_1EB99EC28;
  if (!qword_1EB99EC28)
  {
    result = swift_getWitnessTable(aM_40, &type metadata for MapsTransactionInsightResult.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EC28);
  }

  return result;
}

unint64_t sub_1B77E90C0()
{
  result = qword_1EB99EC30;
  if (!qword_1EB99EC30)
  {
    result = swift_getWitnessTable(aE_38, &type metadata for MapsTransactionInsightResult.FailureCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EC30);
  }

  return result;
}

unint64_t sub_1B77E9118()
{
  result = qword_1EB99EC38;
  if (!qword_1EB99EC38)
  {
    result = swift_getWitnessTable(byte_1B78713FC, &type metadata for MapsTransactionInsightResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EC38);
  }

  return result;
}

unint64_t sub_1B77E9170()
{
  result = qword_1EB99EC40;
  if (!qword_1EB99EC40)
  {
    result = swift_getWitnessTable(asc_1B7871424, &type metadata for MapsTransactionInsightResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EC40);
  }

  return result;
}

uint64_t sub_1B77E91C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C74746F726874 && a2 == 0xE900000000000064 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B77E92E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC48, &qword_1B78715F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B77E934C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B7679424(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B77E9374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B7678898(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t FinanceStore.updateDashboardItemsShowAsActive(now:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for FinanceStore.Message(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77E9430, 0, 0);
}

uint64_t sub_1B77E9430()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_1B77FF988();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1B77E953C;
  v5 = v0[5];

  return sub_1B7267E08(v5);
}

uint64_t sub_1B77E953C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 56) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B722A6FC, 0, 0);
}

uint64_t FinanceStore.insertMissingDashboardItems()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for FinanceStore.Message(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77E9734, 0, 0);
}

uint64_t sub_1B77E9734()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B74A5DD0;
  v2 = *(v0 + 32);

  return sub_1B7267E08(v2);
}

uint64_t FinanceStore.insertMissingOrderUpdateDate()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for FinanceStore.Message(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77E9884, 0, 0);
}

uint64_t sub_1B77E9884()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B77E9940;
  v2 = *(v0 + 32);

  return sub_1B7267E08(v2);
}

uint64_t sub_1B77E9940()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7238394, 0, 0);
}

uint64_t SaveOrderUIXPCService.__allocating_init()()
{
  v0 = type metadata accessor for SaveOrderUIXPCService.ContinuationState(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = swift_allocObject();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC50, &qword_1B7871630);
  (*(*(v4 - 8) + 56))(v2, 1, 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC58, &qword_1B7871638);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B77E9DDC(v2, v5 + *(*v5 + *MEMORY[0x1E69E6B68] + 16));
  *(v3 + 16) = v5;
  return v3;
}

uint64_t SaveOrderUIXPCService.init()()
{
  v1 = type metadata accessor for SaveOrderUIXPCService.ContinuationState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC50, &qword_1B7871630);
  (*(*(v4 - 8) + 56))(v3, 1, 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC58, &qword_1B7871638);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B77E9DDC(v3, v5 + *(*v5 + *MEMORY[0x1E69E6B68] + 16));
  *(v0 + 16) = v5;
  return v0;
}

uint64_t type metadata accessor for SaveOrderUIXPCService.ContinuationState(uint64_t a1)
{
  result = qword_1EB99EC60;
  if (!qword_1EB99EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B77E9DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveOrderUIXPCService.ContinuationState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void SaveOrderUIXPCService.listenForResponse(continuation:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B77E9F98(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B77E9ED8(uint64_t a1, uint64_t a2)
{
  sub_1B77EA1A0(a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC50, &qword_1B7871630);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 2, v4);
}

uint64_t sub_1B77E9FB4(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for SaveOrderUIXPCService.ContinuationState(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC50, &qword_1B7871630);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  sub_1B77E9DDC(a1, v8);
  if ((*(v10 + 48))(v8, 2, v9))
  {
    sub_1B77EA1A0(v8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (a3)
    {
      v16 = a2;
      v13 = a2;
      sub_1B7800CF8();
    }

    else
    {
      v15[7] = a2;
      sub_1B7800D08();
    }

    (*(v10 + 8))(v12, v9);
  }

  return (*(v10 + 56))(a1, 2, 2, v9);
}

uint64_t sub_1B77EA1A0(uint64_t a1)
{
  v2 = type metadata accessor for SaveOrderUIXPCService.ContinuationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1B77EA20C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v4 + v6));
  sub_1B77E9FB4(v4 + v5, a3, 0);
  os_unfair_lock_unlock((v4 + v6));

  return result;
}

void SaveOrderUIXPCService.failed(with:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B77EA36C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B77EA460(char a1)
{
  v3 = type metadata accessor for SaveOrderUIXPCService.ContinuationState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC50, &qword_1B7871630);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-v8];
  v10 = *(v1 + 16);
  v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v12));
  sub_1B77E9DDC(v10 + v11, v5);
  if ((*(v7 + 48))(v5, 2, v6))
  {
    sub_1B77EA1A0(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v13[15] = a1;
    sub_1B7800D08();
    (*(v7 + 8))(v9, v6);
  }

  (*(v7 + 56))(v10 + v11, 2, 2, v6);
  os_unfair_lock_unlock((v10 + v12));
}

void SaveOrderUIXPCService.invalidated(with:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B77EAA94(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t SaveOrderUIXPCService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1B77EA768()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B77E9FB4(v1 + v2, 1, 0);

  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B77EA810()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B77EAA94(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B77EA8B4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B77EAAB0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B77EA9C8(uint64_t a1)
{
  sub_1B77EAA20(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1B77EAA20(uint64_t a1)
{
  if (!qword_1EB99EC70[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
    v1 = sub_1B7800D18();
    if (!v2)
    {
      atomic_store(v1, qword_1EB99EC70);
    }
  }
}

double HTTPRequest.addingMMeClientInfo(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v5);
  (*(v11 + 32))(a5, v13, a3);
  v15 = (a5 + *(type metadata accessor for HTTPRequestWithCustomHeaderField(0, a3, a4, v14) + 36));
  *v15 = 0xD000000000000011;
  v15[1] = 0x80000001B788E600;
  v15[2] = a1;
  v15[3] = a2;

  return result;
}

uint64_t HTTPRequest.addingRequestTraceID()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA08();
  v12 = sub_1B77FF9A8();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, v18, a1);
  (*(v5 + 32))(a3, v7, a1);
  result = type metadata accessor for HTTPRequestWithCustomHeaderField(0, a1, v19, v15);
  v17 = (a3 + *(result + 36));
  *v17 = 0xD000000000000012;
  v17[1] = 0x80000001B788DCE0;
  v17[2] = v12;
  v17[3] = v14;
  return result;
}

uint64_t HTTPRequest.addingEphemeralUserIdentifier(userIdentifierProviding:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v24 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FFA18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 8))(v13, v14);
  v15 = sub_1B77FF9A8();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  (*(v6 + 16))(v8, v22[1], a2);
  v18 = v23;
  (*(v6 + 32))(v23, v8, a2);
  result = type metadata accessor for HTTPRequestWithCustomHeaderField(0, a2, v24, v19);
  v21 = (v18 + *(result + 36));
  *v21 = 0xD000000000000013;
  v21[1] = 0x80000001B788E620;
  v21[2] = v15;
  v21[3] = v17;
  return result;
}

uint64_t HTTPRequest.addingInternalInstallIfNeeded(deviceInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v19 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 16))())
  {
    (*(v19 + 16))(v9, v4, a2);
    v12 = type metadata accessor for HTTPRequestWithCustomHeaderField(0, a2, a3, v11);
    a4[3] = v12;
    a4[4] = &off_1F2F779D0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    result = (*(v19 + 32))(boxed_opaque_existential_1, v9, a2);
    v15 = (boxed_opaque_existential_1 + *(v12 + 36));
    *v15 = 0xD000000000000018;
    v15[1] = 0x80000001B787EEC0;
    v15[2] = 1702195828;
    v15[3] = 0xE400000000000000;
  }

  else
  {
    a4[3] = a2;
    a4[4] = a3;
    v16 = __swift_allocate_boxed_opaque_existential_1(a4);
    v17 = *(v19 + 16);

    return v17(v16, v4, a2);
  }

  return result;
}

uint64_t HTTPRequest.addingRateLimitIdentifier(userIdentifierProviding:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v24 = *(a2 - 8);
  v25 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FFA18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  result = (*(v14 + 16))(v13, v14);
  if (!v4)
  {
    v16 = sub_1B77FF9A8();
    v18 = v17;
    (*(v10 + 8))(v12, v9);
    v19 = v24;
    (*(v24 + 16))(v8, v23[1], a2);
    v20 = v26;
    (*(v19 + 32))(v26, v8, a2);
    result = type metadata accessor for HTTPRequestWithCustomHeaderField(0, a2, v25, v21);
    v22 = (v20 + *(result + 36));
    *v22 = 0xD000000000000015;
    v22[1] = 0x80000001B788E640;
    v22[2] = v16;
    v22[3] = v18;
  }

  return result;
}

uint64_t HTTPRequest.addingSupportedCapabilities(supportedCapabilities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v10;
  (*(v10 + 16))();
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v43 = a2;
    v44 = a3;
    v45 = a4;
    v46 = v4;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B71FDB50(0, v11, 0);
    v13 = (a1 + 32);
    v12 = v49;
    v14 = "scheduled-payments";
    v15 = "4f-ae5b-ef58636aa1a1";
    v16 = "da-9956-4a1769ca75d2";
    v17 = "ce-b5b2-f451a02dbdaa";
    v18 = "09-a67a-beb31cf3b464";
    v19 = "82-80db-b19522b86b29";
    do
    {
      v21 = *v13++;
      v20 = v21;
      if (v21 == 6)
      {
        v22 = v15;
      }

      else
      {
        v22 = v16;
      }

      if (v20 == 4)
      {
        v23 = v17;
      }

      else
      {
        v23 = v18;
      }

      if (v20 <= 5)
      {
        v22 = v23;
      }

      if (v20 == 2)
      {
        v24 = v19;
      }

      else
      {
        v24 = "93-b89e-b7e974a05e7b";
      }

      if (v20)
      {
        v25 = "f4-9604-04092216df15";
      }

      else
      {
        v25 = v14;
      }

      if (v20 <= 1)
      {
        v24 = v25;
      }

      if (v20 <= 3)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      v49 = v12;
      v28 = *(v12 + 16);
      v27 = *(v12 + 24);
      if (v28 >= v27 >> 1)
      {
        v30 = v14;
        v41 = v16;
        v42 = v15;
        v39 = v18;
        v40 = v17;
        v38 = v19;
        sub_1B71FDB50((v27 > 1), v28 + 1, 1);
        v19 = v38;
        v18 = v39;
        v17 = v40;
        v16 = v41;
        v15 = v42;
        v14 = v30;
        v12 = v49;
      }

      *(v12 + 16) = v28 + 1;
      v29 = v12 + 16 * v28;
      *(v29 + 32) = 0xD000000000000024;
      *(v29 + 40) = v26 | 0x8000000000000000;
      --v11;
    }

    while (v11);
    a4 = v45;
    a2 = v43;
    a3 = v44;
  }

  v49 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  sub_1B723E0F4();
  v31 = sub_1B78007C8();
  v33 = v32;

  (*(v48 + 32))(a4, v47, a2);
  result = type metadata accessor for HTTPRequestWithCustomHeaderField(0, a2, a3, v34);
  v36 = (a4 + *(result + 36));
  *v36 = 0xD00000000000001ELL;
  v36[1] = 0x80000001B788E660;
  v36[2] = v31;
  v36[3] = v33;
  return result;
}

double static HTTPHeaderField.mmeClientInfo(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0xD000000000000011;
  a3[1] = 0x80000001B788E600;
  a3[2] = a1;
  a3[3] = a2;

  return result;
}

double static HTTPHeaderField.appleRequestID(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0xD000000000000012;
  a3[1] = 0x80000001B788DCE0;
  a3[2] = a1;
  a3[3] = a2;

  return result;
}

double static HTTPHeaderField.ephemeralDeviceID(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0xD000000000000013;
  a3[1] = 0x80000001B788E620;
  a3[2] = a1;
  a3[3] = a2;

  return result;
}

uint64_t static HTTPHeaderField.internalInstall(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = 1702195828;
  if ((result & 1) == 0)
  {
    v2 = 0x65736C6166;
  }

  v3 = 0xE500000000000000;
  *a2 = 0xD000000000000018;
  a2[1] = 0x80000001B787EEC0;
  if (result)
  {
    v3 = 0xE400000000000000;
  }

  a2[2] = v2;
  a2[3] = v3;
  return result;
}

double static HTTPHeaderField.rateLimitID(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0xD000000000000015;
  a3[1] = 0x80000001B788E640;
  a3[2] = a1;
  a3[3] = a2;

  return result;
}

uint64_t static HTTPHeaderField.supportedCapabilities(_:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  sub_1B723E0F4();
  result = sub_1B78007C8();
  *a1 = 0xD00000000000001ELL;
  a1[1] = 0x80000001B788E660;
  a1[2] = result;
  a1[3] = v3;
  return result;
}

char *sub_1B77EB8FC(uint64_t a1)
{
  v4 = (*(*(a1 + 24) + 32))(*(a1 + 16));
  if (!v2)
  {
    v5 = (v1 + *(a1 + 36));
    v7 = *v5;
    v6 = v5[1];
    v9 = v5[2];
    v8 = v5[3];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B723E73C(0, *(v4 + 2) + 1, 1, v4);
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      v4 = sub_1B723E73C((v10 > 1), v11 + 1, 1, v4);
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[32 * v11];
    *(v12 + 4) = v7;
    *(v12 + 5) = v6;
    *(v12 + 6) = v9;
    *(v12 + 7) = v8;
  }

  return v4;
}

uint64_t sub_1B77EBA08(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B77EBA80(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1B77EBBBC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v18[2] = 0;
      v18[3] = 0;
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t XPCEntitlementChecker.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1B7202D08(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992510, &qword_1B783D560);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

double XPCEntitlements.bundleID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

void XPCEntitlements.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

double XPCEntitlements.containingBundleID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

void XPCEntitlements.containingBundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

Swift::Bool __swiftcall XPCEntitlements.hasBundleIdentifier(in:)(Swift::OpaquePointer in)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v11[0] = *(v1 + 8);
    v11[1] = v2;
    MEMORY[0x1EEE9AC00](in._rawValue);
    v10[2] = v11;
    v4 = sub_1B76126CC(sub_1B766A090, v10, v3);
  }

  else
  {
    if (qword_1EDAF6568 != -1)
    {
      swift_once();
    }

    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EDAF6570);
    v6 = sub_1B7800098();
    v7 = sub_1B78011D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7198000, v6, v7, "Missing bundleID", v8, 2u);
      MEMORY[0x1B8CA7A40](v8, -1, -1);
    }

    v4 = 0;
  }

  return v4 & 1;
}

FinanceKit::BundleIdentifier_optional __swiftcall XPCEntitlements.appBundleIdentifier()()
{
  v2 = v0;
  v3 = v1[4];
  if (v3)
  {
    v4 = v1[3];
    v5 = v3;
  }

  else
  {
    v4 = v1[1];
  }

  *v2 = v4;
  v2[1] = v5;

  result.value.rawValue._object = v7;
  result.value.rawValue._countAndFlagsBits = v6;
  result.is_nil = v8;
  return result;
}

FinanceKit::FinanceKitPublicValues_optional __swiftcall FinanceKitPublicValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

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

  *v2 = v5;
  return result;
}

uint64_t sub_1B77EC228()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B77EC2B0(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B77EC324(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B77EC3A8(char *a2@<X8>)
{
  v3 = sub_1B7801D18();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1B77EC408(void *a1@<X8>)
{
  v2 = 0xED0000617461446CLL;
  if (*v1)
  {
    v2 = 0xEE00617461642D6CLL;
  }

  *a1 = 0x6169636E616E6966;
  a1[1] = v2;
}

uint64_t sub_1B77EC44C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEE00617461642D6CLL;
  }

  else
  {
    v2 = 0xED0000617461446CLL;
  }

  if (*a2)
  {
    v3 = 0xEE00617461642D6CLL;
  }

  else
  {
    v3 = 0xED0000617461446CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B78020F8();
  }

  return v4 & 1;
}

uint64_t XPCEntitlementChecker.init()()
{
  v1 = sub_1B7202D08(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992510, &qword_1B783D560);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t XPCEntitlementChecker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s10FinanceKit15XPCEntitlementsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0 && ((a1[3] ^ a2[3]) & 1) == 0)
  {
    v4 = *(a1 + 2);
    v5 = *(a1 + 3);
    v6 = *(a1 + 4);
    v7 = a1[40];
    v9 = *(a2 + 2);
    v8 = *(a2 + 3);
    v10 = *(a2 + 4);
    v11 = a2[40];
    if (v4)
    {
      if (!v9)
      {
        goto LABEL_21;
      }

      if ((*(a1 + 1) != *(a2 + 1) || v4 != v9) && (sub_1B78020F8() & 1) == 0)
      {
        return 0;
      }

      if (v6)
      {
LABEL_11:
        if (v10)
        {
          if ((v5 != v8 || v6 != v10) && (sub_1B78020F8() & 1) == 0)
          {
            return 0;
          }

          return v7 ^ v11 ^ 1u;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (v9)
      {
        goto LABEL_21;
      }

      if (v6)
      {
        goto LABEL_11;
      }
    }

    if (!v10)
    {

      return v7 ^ v11 ^ 1u;
    }

LABEL_21:

    return 0;
  }

  return result;
}

uint64_t sub_1B77EC73C()
{
  v0 = MEMORY[0x1E69E7CD0];
  sub_1B78022F8();
  sub_1B7800798();
  v1 = sub_1B7802368();
  v2 = -1 << *(v0 + 32);
  v3 = v1 & ~v2;
  if ((*(v0 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3))
  {
    v4 = ~v2;
    while ((*(*(v0 + 48) + v3) & 1) != 0)
    {
      v5 = sub_1B78020F8();

      if (v5)
      {
        goto LABEL_8;
      }

      v3 = (v3 + 1) & v4;
      if (((*(v0 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v0 = MEMORY[0x1E69E7CD0];
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B72553EC(0, v3, isUniquelyReferenced_nonNull_native);
  }

LABEL_8:
  sub_1B78022F8();
  sub_1B7800798();
  v7 = sub_1B7802368();
  v8 = -1 << *(v0 + 32);
  v9 = v7 & ~v8;
  if ((*(v0 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v0 + 48) + v9) != 1)
    {
      v11 = sub_1B78020F8();

      if (v11)
      {
        return v0;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v0 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B72553EC(1, v9, v12);
  }

  return v0;
}

void sub_1B77EC964(__SecTask *a1)
{
  v2 = sub_1B7800838();
  SecTaskCopyValueForEntitlement(a1, v2, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ECF8, &qword_1B7871718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  if ((swift_dynamicCast() & 1) == 0 || (v3 = v12) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = *(v3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v7 = v3 + 40 + 16 * v4;
  while (1)
  {
    if (v5 == v4)
    {

      sub_1B723B5E4(v6);

      return;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    ++v4;

    v8 = sub_1B7801D18();

    if (!v8)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 += 16;
    if (v8 == 1)
    {
      v9 = 1;
LABEL_12:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B723EC4C(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = sub_1B723EC4C((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      v6[v11 + 32] = v9;
      goto LABEL_5;
    }
  }

  __break(1u);
}

unint64_t sub_1B77ECB50()
{
  result = qword_1EDAF8F90;
  if (!qword_1EDAF8F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceKitPublicValues, &type metadata for FinanceKitPublicValues, v0, v1);
    atomic_store(result, &qword_1EDAF8F90);
  }

  return result;
}

unint64_t sub_1B77ECBA8()
{
  result = qword_1EB99ED00;
  if (!qword_1EB99ED00)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99ED08, &qword_1B78717E8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB99ED00);
  }

  return result;
}

uint64_t sub_1B77ECC0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B77ECC68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_1B77ECD38(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B77FF5E8();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1B720A388(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1B75D52A4(v10, 0);
      v14 = sub_1B77FF538();
      sub_1B720A388(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void DataProtocol.hexEncodedString.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B78008E8();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v24[1] = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v24 - v12;
  v14 = sub_1B7801038();
  if (v14 + 0x4000000000000000 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = 2 * v14;
  if (2 * v14 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v15)
  {
    v16 = sub_1B7800C78();
    *(v16 + 16) = v15;
    bzero((v16 + 32), v15);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  (*(v7 + 16))(v9, v2, a1);
  sub_1B7800AE8();
  swift_getAssociatedConformanceWitness();
  sub_1B78017B8();
  if ((v26 & 1) == 0)
  {
    v17 = 0;
    v18 = v25;
    while (1)
    {
      v19 = *(v16 + 16);
      if (v17 >= v19)
      {
        break;
      }

      v20 = (v18 >> 4) + 87;
      if (v18 <= 0x9F)
      {
        LOBYTE(v20) = (v18 >> 4) | 0x30;
      }

      *(v16 + v17 + 32) = v20;
      if (v17 + 1 >= v19)
      {
        goto LABEL_19;
      }

      if ((v18 & 0xF) <= 9)
      {
        v21 = v18 & 0xF | 0x30;
      }

      else
      {
        v21 = (v18 & 0xF) + 87;
      }

      *(v16 + v17 + 33) = v21;
      sub_1B78017B8();
      v18 = v25;
      v17 += 2;
      if (v26 == 1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_16:
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  v24[2] = v16;

  sub_1B78008C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DE0, &qword_1B7810390);
  sub_1B728216C(&qword_1EB990DE8, &qword_1EB990DE0, &qword_1B7810390, MEMORY[0x1E69E6328]);
  sub_1B7800898();
  v23 = v22;

  if (v23)
  {

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1B77ED25C(uint64_t a1, unint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = sub_1B78008E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = xmmword_1B781DD20;
  if (sub_1B78009A8())
  {
    goto LABEL_23;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_23:
    sub_1B720A388(0, 0xC000000000000000);

    return 0;
  }

  sub_1B7800918();
  sub_1B78008C8();
  v9 = sub_1B7800878();
  v11 = v10;

  result = (*(v5 + 8))(v7, v4);
  if (v11 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v13 = sub_1B77ECD38(v9, v11);
  v14 = v13;
  v15 = v13[2];
  v16 = v15 - 1;
  if (v15 <= 1)
  {
LABEL_25:

    return v30;
  }

  v17 = 0;
  v18 = v13 + 4;
  while (1)
  {
    if (__OFADD__(v17, 2))
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v17 + 2;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    v22 = v14[2];
    if (v17 >= v22)
    {
      goto LABEL_28;
    }

    v23 = v17 + 1;
    if (v17 + 1 >= v22)
    {
      goto LABEL_29;
    }

    v24 = *(v18 + v17);
    v25 = *(v18 + v23);
    if ((v24 - 58) > 0xF5u)
    {
      v26 = -48;
    }

    else
    {
      if ((v24 - 103) <= 0xF9u)
      {
        break;
      }

      v26 = -87;
    }

    if ((v25 - 58) > 0xF5u)
    {
      v27 = -48;
      goto LABEL_8;
    }

    if ((v25 - 103) <= 0xF9u)
    {
      break;
    }

    v27 = -87;
LABEL_8:
    v19 = v25 + v27 + 16 * (v24 + v26);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6D0, &qword_1B78548C8);
    v29[3] = v20;
    v29[4] = sub_1B728216C(&qword_1EB99A6D8, &qword_1EB99A6D0, &qword_1B78548C8, MEMORY[0x1E696A0B0]);
    LOBYTE(v29[0]) = v19;
    v28[7] = *__swift_project_boxed_opaque_existential_1(v29, v20);
    sub_1B77FF568();
    __swift_destroy_boxed_opaque_existential_1(v29);
    v17 = v21;
    if (v21 >= v16)
    {
      goto LABEL_25;
    }
  }

  sub_1B720A388(v30, *(&v30 + 1));
  return 0;
}

unint64_t XPCMachService.rawValue.getter()
{
  v1 = 0xD000000000000016;
  v2 = *v0;
  v3 = 0xD000000000000026;
  v4 = 0xD000000000000028;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000020;
  if (v2 != 1)
  {
    v5 = 0xD000000000000027;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B77ED66C(unsigned __int8 a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B77ED760(unsigned __int8 a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B77ED854(unsigned __int8 a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B77ED958(unsigned __int8 a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B77EDA50(unsigned __int8 a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B77EDB60(unsigned __int8 a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B77EDC68(unsigned __int8 a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B77EDD68(unsigned __int8 a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

FinanceKit::XPCMachService_optional __swiftcall XPCMachService.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B77EDEB4()
{
  result = qword_1EB99ED10;
  if (!qword_1EB99ED10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCMachService, &type metadata for XPCMachService, v0, v1);
    atomic_store(result, &qword_1EB99ED10);
  }

  return result;
}

double sub_1B77EDF10(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

void sub_1B77EE000(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = *v1;
  v4 = "T_NUMBER";
  v5 = "ed.service.financestore";
  v6 = 0xD000000000000026;
  v7 = "ed.service.bankconnect";
  v8 = 0xD000000000000028;
  if (v3 != 4)
  {
    v8 = 0xD00000000000001CLL;
    v7 = "ed.service.coredatastore";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "com.apple.aps.financed";
  v10 = 0xD000000000000020;
  if (v3 != 1)
  {
    v10 = 0xD000000000000027;
    v9 = "ed.service.store";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

FinanceKit::TransactionCategory_optional ManagedTransactionCategory.transactionCategory.getter@<W0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result.value = TransactionCategory.init(rawValue:)([v2 rawValue]).value;
  if (v6 == 13)
  {
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD000000000000015, 0x80000001B7882780);
    [v2 rawValue];
    v5 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v5);

    MEMORY[0x1B8CA4D30](0xD000000000000020, 0x80000001B78827A0);
    result.value = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    *a1 = v6;
  }

  return result;
}

unint64_t static ManagedTransactionCategory.existingTransactionCategory(for:in:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedTransactionCategory;
  v4 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7290];
  *(v5 + 16) = xmmword_1B7807CD0;
  v7 = MEMORY[0x1E69E72E8];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  v8 = sub_1B78010E8();
  [v4 setPredicate_];

  result = sub_1B7801498();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v2 = v10;

    return v2;
  }

  __break(1u);
  return result;
}

id ManagedTransactionCategory.__allocating_init(transactionCategory:in:)(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(v2) initWithContext_];
  [v5 setRawValue_];

  return v5;
}

id ManagedTransactionCategory.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTransactionCategory.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTransactionCategory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedTransactionCategory.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedTransactionCategory;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedTransactionCategory.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

uint64_t XPCValueContainer<>.init(_coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B7801768();
  v33 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - v12;
  v35 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - v17;
  sub_1B720A33C();
  v19 = sub_1B78014F8();
  if (v19)
  {
    v20 = v19;
    v31[0] = a2;
    v31[1] = v5;
    v32 = a3;
    v36 = a1;
    v21 = sub_1B77FF5B8();
    v23 = v22;
    v24 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v25 = sub_1B77EEC00(v21, v23);
    sub_1B720A388(v21, v23);
    if (v25)
    {
      sub_1B78012A8();
      v27 = v35;
      v28 = (*(v35 + 48))(v13, 1, AssociatedTypeWitness);
      v29 = v36;
      if (v28 != 1)
      {
        (*(v27 + 32))(v18, v13, AssociatedTypeWitness);
        (*(v27 + 16))(v16, v18, AssociatedTypeWitness);
        v30 = (*(v32 + 24))(v16, v31[0]);
        (*(v27 + 8))(v18, AssociatedTypeWitness);
        [v25 finishDecoding];

        return v30;
      }

      (*(v33 + 8))(v13, v10);
      [v25 finishDecoding];
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

void XPCValueContainer<>.encode(_with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  (*(a3 + 16))(a2, a3);
  sub_1B7801248();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, AssociatedTypeWitness);
  [v12 finishEncoding];
  v15 = [v12 encodedData];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1B7800838();
    [a1 encodeObject:v16 forKey:v17];
  }

  else
  {
    __break(1u);
    (*(v13 + 8))(v11, AssociatedTypeWitness);
    swift_unexpectedError();
    __break(1u);
  }
}

id sub_1B77EEC00(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B77FF598();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

uint64_t HTTPRequest.signed(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *(a3 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77EEDA4, 0, 0);
}

uint64_t sub_1B77EEDA4()
{
  v1 = v0[8];
  (*(v0[12] + 16))(v0[13], v0[11], v0[9]);
  sub_1B719B06C(v1, (v0 + 2));
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1B77EEE6C;
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];

  return sub_1B77F22DC(v6, v3, (v0 + 2), v4, v5);
}

uint64_t sub_1B77EEE6C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B77EEFA8, 0, 0);
}

uint64_t sub_1B77EEFA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HTTPRequest.addingSecureElementIdentifier(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a3 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77EF0C8, 0, 0);
}

uint64_t sub_1B77EF0C8()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1B77EF1EC;

  return v6(v2, v3);
}

uint64_t sub_1B77EF1EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v6 + 80) = a2;
  *(v6 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B77EF350, 0, 0);
}

uint64_t sub_1B77EF350()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[4];
  v6 = v0[2];
  (*(v0[7] + 16))(v3, v0[6], v5);
  (*(*(v5 - 8) + 32))(v6, v3, v5);
  v8 = (v6 + *(type metadata accessor for HTTPRequestWithSecureElementIdentifier(0, v5, v4, v7) + 36));
  *v8 = v1;
  v8[1] = v2;

  v9 = v0[1];

  return v9();
}

uint64_t SecureElementError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t SecureElementSignatureInfo.eccCertificate.getter()
{
  v1 = *v0;

  return v1;
}

void SecureElementSignatureInfo.eccCertificate.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SecureElementSignatureInfo.secureElementIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SecureElementSignatureInfo.secureElementIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

FinanceKit::SecureElementSignatureInfo __swiftcall SecureElementSignatureInfo.init(eccCertificate:secureElementIdentifier:)(Swift::String eccCertificate, Swift::String secureElementIdentifier)
{
  *v2 = eccCertificate;
  v2[1] = secureElementIdentifier;
  result.secureElementIdentifier = secureElementIdentifier;
  result.eccCertificate = eccCertificate;
  return result;
}

uint64_t SecureElementSigning.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_1B7800478();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77EF6B0, 0, 0);
}

uint64_t sub_1B77EF6B0()
{
  v10 = v0[6];
  sub_1B78006D8();
  sub_1B77F46F4(&qword_1EB99ED20, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1B7800458();
  v9 = (*(v10 + 8) + **(v10 + 8));
  v1 = swift_task_alloc();
  v0[12] = v1;
  v2 = sub_1B77F46F4(&qword_1EB99ED28, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
  *v1 = v0;
  v1[1] = sub_1B77EF884;
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v3, v4, v2, v6, v5);
}

uint64_t sub_1B77EF884(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_1B77EFA3C;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_1B77EF9B8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B77EF9B8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];
  v3 = v0[14];
  v2 = v0[15];

  return v1(v2, v3);
}

uint64_t sub_1B77EFA3C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t SecureElement.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B77EFB10, 0, 0);
}

uint64_t sub_1B77EFB10()
{
  v1 = sub_1B77F3338(v0[23], v0[24], *(v0[25] + 32));
  v3 = v2;
  v0[26] = v1;
  v0[27] = v2;
  v4 = swift_allocObject();
  v0[28] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  sub_1B720ABEC(v1, v3);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1B77EFBE0;

  return sub_1B77F0560();
}

uint64_t sub_1B77EFBE0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {

    *(v3 + 304) = v1;
    v4 = sub_1B77F01DC;
  }

  else
  {
    v4 = sub_1B77EFD0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B77EFD0C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[30];
  v7 = v1[28];
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_1B77EFE94;
  v8 = swift_continuation_init();
  v9 = swift_allocObject();
  v9[2] = sub_1B77F38C4;
  v9[3] = v7;
  v9[4] = v8;
  v1[20] = sub_1B77F38E0;
  v1[21] = v9;
  v1[16] = MEMORY[0x1E69E9820];
  v1[17] = 1107296256;
  v1[18] = sub_1B77F215C;
  v1[19] = &block_descriptor_30;
  v10 = _Block_copy(v5);

  [v6 startSecureElementManagerSession_];
  _Block_release(v10);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B77EFE94(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 248) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1B77F0164;
  }

  else
  {
    v5 = v2[6];
    v2[16] = v2[5];
    v2[17] = v5;
    v2[18] = v2[7];
    v4 = sub_1B77EFFC0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B77EFFC0()
{
  v1 = *(v0 + 280);

  if (!v1)
  {
    v3 = *(v0 + 256);
    v2 = *(v0 + 264);

    sub_1B77F38F4();
    swift_allocError();
    v5 = 3;
    goto LABEL_10;
  }

  if (v1 == 1)
  {
    v3 = *(v0 + 256);
    v2 = *(v0 + 264);
    sub_1B77F38F4();
    swift_allocError();
    v5 = 2;
LABEL_10:
    *v4 = v5;
    swift_willThrow();
    sub_1B720A388(v3, v2);
    sub_1B720A388(*(v0 + 208), *(v0 + 216));
    v15 = *(v0 + 8);

    return v15();
  }

  v6 = *(v0 + 296);
  v7 = *(v0 + 280);
  if (!v6)
  {
    v3 = *(v0 + 256);
    v2 = *(v0 + 264);

    sub_1B77F38F4();
    swift_allocError();
    v5 = 4;
    goto LABEL_10;
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v10 = *(v0 + 176);
  sub_1B720A388(*(v0 + 208), *(v0 + 216));
  *v10 = v9;
  v10[1] = v7;
  v10[2] = v8;
  v10[3] = v6;
  v11 = *(v0 + 8);
  v12 = *(v0 + 256);
  v13 = *(v0 + 264);

  return v11(v12, v13);
}

uint64_t sub_1B77F0164()
{
  v1 = v0[30];

  v0[38] = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1B77F01DC, 0, 0);
}

uint64_t sub_1B77F01DC()
{
  sub_1B720A388(v0[26], v0[27]);
  v1 = v0[1];

  return v1();
}

void sub_1B77F0240(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B77FF598();
  v26 = 0;
  v27[0] = 0;
  v7 = [a1 signChallenge:v6 useOSVersion:1 signatureInfo:v27 error:&v26];

  v8 = v27[0];
  v9 = v26;
  v10 = v8;
  if (v7)
  {
    v11 = sub_1B77FF5B8();
    v13 = v12;

    if (v10)
    {
      v14 = v10;
      v15 = [v14 eccCert];
      if (v15)
      {
        v16 = v15;
        v24 = sub_1B7800868();
        v18 = v17;
      }

      else
      {
        v24 = 0;
        v18 = 0;
      }

      v19 = [v14 seid];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1B7800868();
        v23 = v22;
      }

      else
      {

        v21 = 0;
        v23 = 0;
      }

      *a4 = v11;
      a4[1] = v13;
      a4[2] = v25;
      a4[3] = v18;
      a4[4] = v21;
      a4[5] = v23;
    }

    else
    {
      *a4 = v11;
      a4[1] = v13;
      *(a4 + 1) = xmmword_1B78301C0;
      a4[4] = 0;
      a4[5] = 0;
    }
  }

  else
  {
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t sub_1B77F0408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B77F482C;

  return SecureElement.signature<A>(for:)(a1, a2, a3, a4);
}

uint64_t SecureElement.secureElementIdentifier()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7279080;

  return sub_1B77F3948();
}

uint64_t sub_1B77F0560()
{
  v1 = sub_1B7801C28();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1B7801C18();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77F0684, 0, 0);
}

uint64_t sub_1B77F0684()
{
  v1 = [objc_opt_self() sharedHardwareManagerWithNoUI];
  *(v0 + 72) = v1;
  v2 = [objc_allocWithZone(type metadata accessor for FKNFHardwareStateChangeMonitor()) init];
  *(v0 + 80) = v2;
  [v1 registerEventListener_];
  v3 = [v1 getHwSupport];
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
LABEL_11:
      v8 = *(v0 + 56);
      v9 = *(v0 + 40);
      v10 = *(v0 + 48);
      sub_1B7801BF8();
      sub_1B7801C08();
      v11 = *(v10 + 8);
      *(v0 + 88) = v11;
      *(v0 + 96) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v11(v8, v9);
      sub_1B78021F8();
      v12 = swift_task_alloc();
      *(v0 + 104) = v12;
      *v12 = v0;
      v12[1] = sub_1B77F0980;
      v13 = *(v0 + 64);
      v14 = *(v0 + 32);

      return sub_1B77F119C(v13, 0, 0, 1, v14);
    }

    if (v3 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v3 != 5)
  {
    if (v3 == 4)
    {
      v15 = 0;
LABEL_16:
      sub_1B77F38F4();
      swift_allocError();
      *v16 = v15;
      swift_willThrow();
      v18 = *(v0 + 72);
      v17 = *(v0 + 80);
      [v18 unregisterEventListener_];

      v19 = *(v0 + 8);

      return v19();
    }

    if (v3 != 3)
    {
LABEL_15:
      v15 = 5;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v4 = *(v0 + 80);
  [*(v0 + 72) unregisterEventListener_];

  v5 = *(v0 + 8);
  v6 = *(v0 + 72);

  return v5(v6);
}

uint64_t sub_1B77F0980()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  *(*v1 + 112) = v0;

  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  if (v0)
  {
    v8 = sub_1B77F0D40;
  }

  else
  {
    v8 = sub_1B77F0B5C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B77F0B5C()
{
  v1 = [*(v0 + 72) getHwSupport];
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      sub_1B77F38F4();
      swift_allocError();
      *v8 = 0;
      goto LABEL_13;
    }

    if (v1 != 5)
    {
      goto LABEL_10;
    }
  }

  else if (v1 != 2)
  {
    if (v1 == 3)
    {
      sub_1B77F38F4();
      swift_allocError();
      v3 = 1;
LABEL_11:
      *v2 = v3;
LABEL_13:
      swift_willThrow();
      v10 = *(v0 + 72);
      v9 = *(v0 + 80);
      [v10 unregisterEventListener_];

      v11 = *(v0 + 8);

      return v11();
    }

LABEL_10:
    sub_1B77F38F4();
    swift_allocError();
    v3 = 5;
    goto LABEL_11;
  }

  v4 = *(v0 + 80);
  [*(v0 + 72) unregisterEventListener_];

  v5 = *(v0 + 8);
  v6 = *(v0 + 72);

  return v5(v6);
}

uint64_t sub_1B77F0D40()
{
  v2 = v0[9];
  v1 = v0[10];
  [v2 unregisterEventListener_];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B77F0DEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B77F482C;

  return sub_1B77F3948();
}

void sub_1B77F0E8C(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 7);
  sub_1B77F0F7C(&a2[4], a1, v6);
  os_unfair_lock_unlock(a2 + 7);
  if (v6[0])
  {
    if (v7)
    {
      v4 = v6[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
      swift_allocError();
      *v5 = v4;

      swift_continuation_throwingResumeWithError();
    }

    else
    {

      swift_continuation_throwingResume();
    }
  }
}

char *sub_1B77F0F7C@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = result[8];
  if (v5 < 0)
  {
    *a3 = a2;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5 & 1;
    return sub_1B77F4494(v4, v5 & 1);
  }

  else
  {
    *result = a2;
    result[8] = 0;
    if (v4)
    {
      if (qword_1EB98EA28 != -1)
      {
        swift_once();
      }

      v6 = sub_1B78000B8();
      __swift_project_value_buffer(v6, qword_1EB994810);
      v7 = sub_1B7800098();
      v8 = sub_1B78011E8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1B7198000, v7, v8, "FKNFHardwareStateChangeMonitor continuation already set", v9, 2u);
        MEMORY[0x1B8CA7A40](v9, -1, -1);
      }

      sub_1B7800D28();
      sub_1B77F46F4(&qword_1EB99EE48, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v10 = swift_allocError();
      result = sub_1B78006F8();
      *a3 = v4;
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_1B77F119C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 240) = a4;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  v7 = sub_1B7801C28();
  *(v6 + 128) = v7;
  v8 = *(v7 - 8);
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 + 64);
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_1B7801C18();
  *(v6 + 160) = v9;
  v10 = *(v9 - 8);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 + 64);
  *(v6 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  *(v6 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77F130C, 0, 0);
}

uint64_t sub_1B77F130C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v20 = v4;
  v21 = v2;
  v22 = *(v0 + 176);
  v6 = *(v0 + 136);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v18 = *(v0 + 240);
  v19 = *(v0 + 112);
  v25 = *(v0 + 104);
  v26 = v1;
  v9 = *(v0 + 88);
  v23 = *(v0 + 144);
  v24 = *(v0 + 96);
  v10 = sub_1B7800DF8();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = *(v8 + OBJC_IVAR____TtC10FinanceKit30FKNFHardwareStateChangeMonitor_implementation);
  *(v0 + 200) = v11;
  (*(v3 + 16))(v2, v9, v4);
  (*(v6 + 16))(v5, v19, v7);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = (v22 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v6 + 80) + v13 + 17) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v3 + 32))(v15 + v12, v21, v20);
  v16 = v15 + v13;
  *v16 = v24;
  *(v16 + 8) = v25;
  *(v16 + 16) = v18 & 1;
  (*(v6 + 32))(v15 + v14, v5, v7);
  *(v15 + ((v23 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;

  *(v0 + 208) = sub_1B759B5D0(0, 0, v26, &unk_1B7871E30, v15);

  return MEMORY[0x1EEE6DFA0](sub_1B77F153C, 0, 0);
}

uint64_t sub_1B77F153C()
{
  v1 = v0[25];
  v0[2] = v0;
  v0[3] = sub_1B77F15D4;
  v2 = swift_continuation_init();
  sub_1B77F0E8C(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B77F15D4(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 216) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B77F17B0;
  }

  else
  {
    v3 = sub_1B77F16F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B77F16F0()
{
  *(v0 + 224) = 0;
  sub_1B7800E68();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_1B77F187C;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1B77F17B0()
{
  v1 = v0[27];
  v2 = v1;
  v0[28] = v1;
  sub_1B7800E68();
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_1B77F187C;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1B77F187C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B77F1978, 0, 0);
}

uint64_t sub_1B77F1978()
{
  if (v0[27])
  {
    v1 = v0[28];
    v0[10] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    swift_willThrowTypedImpl();
    sub_1B76A7B5C(v1, 1);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B77F1A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 40) = v16;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7 & 1;
  v11 = swift_task_alloc();
  *(v8 + 48) = v11;
  v12 = sub_1B7801C28();
  v13 = sub_1B77F46F4(&unk_1EB99EE50, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *v11 = v8;
  v11[1] = sub_1B77F1BA8;

  return MEMORY[0x1EEE6DA68](a4, v8 + 16, a8, v12, v13);
}

uint64_t sub_1B77F1BA8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B77F1E48;
  }

  else
  {
    v2 = sub_1B77F1CBC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77F1CBC()
{
  v10 = v0;
  v1 = v0[7];
  v2 = v0[5];
  sub_1B7800D28();
  sub_1B77F46F4(&qword_1EB99EE48, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v3 = swift_allocError();
  sub_1B78006F8();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = 1;
  os_unfair_lock_lock((v2 + 28));
  sub_1B77F464C((v2 + 16), &v9);
  os_unfair_lock_unlock((v2 + 28));
  if (v1)
  {
  }

  else
  {
    v6 = v9;

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
      swift_allocError();
      *v7 = v3;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1B77F1E48()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1B77F1F3C(void *a1, void *a2, void (*a3)(uint64_t *__return_ptr), __n128 a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v21 = a1;
    a3(&v22);
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v15 = v26;
    v16 = v27;
    sub_1B720ABEC(v22, v23);
    sub_1B75840E8(v13, v14, v15, v16);
    v17 = *(*(a6 + 64) + 40);
    *v17 = v11;
    v17[1] = v12;
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = v15;
    v17[5] = v16;
    swift_continuation_throwingResume();
    sub_1B720A388(v11, v12);
    [v21 endSession];
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
      swift_allocError();
      *v9 = a2;
      v10 = a2;
    }

    else
    {
      sub_1B77F38F4();
      v18 = swift_allocError();
      *v19 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
      swift_allocError();
      *v20 = v18;
    }

    swift_continuation_throwingResumeWithError();
  }
}

void sub_1B77F215C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void static HTTPHeaderField.Name.appleSEID.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "X-Apple-SEID");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static HTTPHeaderField.appleSignature(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B72B71E4(a1, a2);
  *a3 = 0xD000000000000011;
  a3[1] = 0x80000001B787EE60;
  a3[2] = v4;
  a3[3] = v5;
}

double static HTTPHeaderField.appleSEID(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  strcpy(a3, "X-Apple-SEID");
  *(a3 + 13) = 0;
  *(a3 + 14) = -5120;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;

  return result;
}

double static HTTPHeaderField.casdECC(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x4343452D44534143;
  a3[1] = 0xE800000000000000;
  a3[2] = a1;
  a3[3] = a2;

  return result;
}

uint64_t sub_1B77F22DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B77F2304, 0, 0);
}

uint64_t sub_1B77F2304()
{
  v15 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  *(v0 + 104) = (*(v1 + 8))(v2, v1);
  *(v0 + 112) = (*(v1 + 16))(v2, v1);
  (*(v1 + 24))(&v14, v2, v1);
  *(v0 + 168) = v14;
  v3 = (*(v1 + 40))(v2, v1);
  v5 = *(v0 + 80);
  *(v0 + 120) = v4;
  *(v0 + 128) = v3;
  if (v4 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  if (v4 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v4;
  }

  v9 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  v11 = sub_1B736E424();
  *v10 = v0;
  v10[1] = sub_1B77F252C;
  v12 = MEMORY[0x1E6969080];

  return SecureElementSigning.signature<A>(for:)(v0 + 16, v0 + 48, v9, v12, v8, v11);
}

uint64_t sub_1B77F252C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[20] = v2;

  if (v2)
  {
    v5 = sub_1B77F29B4;
  }

  else
  {
    v5 = sub_1B77F2644;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B77F2644()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = (*(*(v0 + 96) + 32))(*(v0 + 88));
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  if (v1)
  {
    v9 = *(v0 + 120);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    if (v9 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v0 + 128);
    }

    if (v9 >> 60 == 15)
    {
      v13 = 0xC000000000000000;
    }

    else
    {
      v13 = *(v0 + 120);
    }

    sub_1B720A388(v7, v8);
    sub_1B720A388(v12, v13);
    (*(*(v10 - 8) + 8))(v11, v10);

    __swift_destroy_boxed_opaque_existential_1(*(v0 + 80));

    v14 = *(v0 + 8);
  }

  else
  {
    v41 = v2;
    v42 = v3;
    sub_1B72B71E4(v7, v8);
    v16 = v15;
    v18 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1B723E73C(0, *(v6 + 2) + 1, 1, v6);
    }

    v20 = *(v6 + 2);
    v19 = *(v6 + 3);
    v21 = v19 >> 1;
    v22 = v20 + 1;
    if (v19 >> 1 <= v20)
    {
      v6 = sub_1B723E73C((v19 > 1), v20 + 1, 1, v6);
      v19 = *(v6 + 3);
      v21 = v19 >> 1;
    }

    *(v6 + 2) = v22;
    v23 = &v6[32 * v20];
    *(v23 + 4) = 0xD000000000000011;
    *(v23 + 5) = 0x80000001B787EE60;
    *(v23 + 6) = v16;
    *(v23 + 7) = v18;
    v24 = v20 + 2;
    if (v21 < (v20 + 2))
    {
      v6 = sub_1B723E73C((v19 > 1), v20 + 2, 1, v6);
    }

    *(v6 + 2) = v24;
    v25 = &v6[32 * v22];
    strcpy(v25 + 32, "X-Apple-SEID");
    v25[45] = 0;
    *(v25 + 23) = -5120;
    *(v25 + 6) = v4;
    *(v25 + 7) = v5;
    v26 = *(v6 + 3);
    v27 = v20 + 3;
    v40 = v24;
    if (v27 > (v26 >> 1))
    {
      v6 = sub_1B723E73C((v26 > 1), v27, 1, v6);
    }

    v28 = *(v0 + 120);
    v38 = *(v0 + 168);
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    v31 = *(v0 + 88);
    v39 = *(v0 + 80);
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);
    if (v28 >> 60 == 15)
    {
      v34 = 0xC000000000000000;
    }

    else
    {
      v34 = *(v0 + 120);
    }

    if (v28 >> 60 == 15)
    {
      v35 = 0;
    }

    else
    {
      v35 = *(v0 + 128);
    }

    sub_1B720A388(*(v0 + 144), *(v0 + 152));
    (*(*(v31 - 8) + 8))(v32, v31);
    *(v6 + 2) = v27;
    v36 = &v6[32 * v40];
    *(v36 + 4) = 0x4343452D44534143;
    *(v36 + 5) = 0xE800000000000000;
    *(v36 + 6) = v41;
    *(v36 + 7) = v42;
    *v33 = v30;
    *(v33 + 8) = v29;
    *(v33 + 16) = v38;
    *(v33 + 24) = v6;
    *(v33 + 32) = v35;
    *(v33 + 40) = v34;

    sub_1B720ABEC(v35, v34);
    __swift_destroy_boxed_opaque_existential_1(v39);

    sub_1B720A388(v35, v34);
    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_1B77F29B4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  if (v2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v0 + 128);
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v0 + 120);
  }

  type metadata accessor for FinanceNetworkError(0);
  sub_1B77F46F4(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
  swift_allocError();
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1B720A388(v5, v6);
  (*(*(v3 - 8) + 8))(v4, v3);
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 80));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B77F2B48()
{
  v1 = *(v0 + 32);
  sub_1B720ABEC(v1, *(v0 + 40));
  return v1;
}

char *sub_1B77F2B8C(uint64_t a1)
{
  v4 = (*(*(a1 + 24) + 32))(*(a1 + 16));
  if (!v2)
  {
    v5 = (v1 + *(a1 + 36));
    v7 = *v5;
    v6 = v5[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B723E73C(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1B723E73C((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[32 * v9];
    strcpy(v10 + 32, "X-Apple-SEID");
    v10[45] = 0;
    *(v10 + 23) = -5120;
    *(v10 + 6) = v7;
    *(v10 + 7) = v6;
  }

  return v4;
}

uint64_t *sub_1B77F2CA0@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1B77F31E0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1B77FEBC8();
      swift_allocObject();
      v8 = sub_1B77FEB68();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1B77FF558();
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

uint64_t sub_1B77F2D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1B77F2F88(MEMORY[0x1E69E7508], sub_1B77F46D0, v10, a1, a2, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], TupleTypeMetadata2, MEMORY[0x1E69E7410], v9);
}

uint64_t sub_1B77F2E40@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = sub_1B7800AF8();
  *(a6 + v12) = result;
  return result;
}

uint64_t sub_1B77F2F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t sub_1B77F30E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a5;
  v13 = *(a5 + 8);
  v14 = *(a5 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B7201BB0;

  return sub_1B77F1A88(a1, a2, a3, a4, v12, v13, v14, a6);
}

uint64_t sub_1B77F31E0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
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

uint64_t sub_1B77F3298(uint64_t result)
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
      sub_1B77FEBC8();
      swift_allocObject();
      sub_1B77FEB88();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B77FF558();
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

uint64_t sub_1B77F3338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  (*(v16 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994060, &qword_1B78277A0);
  if (swift_dynamicCast())
  {
    sub_1B71E4C44(v32, &v34);
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    sub_1B77FEDA8();
    v32[0] = v31;
    __swift_destroy_boxed_opaque_existential_1(&v34);
    goto LABEL_34;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_1B7406878(v32);
  sub_1B7800B18();
  if (*(&v34 + 1) >> 60 != 15)
  {
    v32[0] = v34;
    goto LABEL_34;
  }

  v30 = v34;
  v17 = sub_1B7800B08();
  *&v32[0] = sub_1B77F3298(v17);
  *(&v32[0] + 1) = v18;
  MEMORY[0x1EEE9AC00](*&v32[0]);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  *(&v29 - 2) = a1;
  sub_1B77FF578();
  v19 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v20 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) <= 1)
  {
    if (v20)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_38;
      }

      if (v19 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v19 == BYTE14(v32[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v20 == 2)
  {
    v22 = *(*&v32[0] + 16);
    v21 = *(*&v32[0] + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v19 == v24)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v20 == 2)
    {
      v25 = *(*&v32[0] + 24);
    }

    else if (v20 == 1)
    {
      v25 = *&v32[0] >> 32;
    }

    else
    {
      v25 = BYTE14(v32[0]);
    }

LABEL_31:
    if (v25 >= v19)
    {
      sub_1B77FF568();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v19)
  {
    v25 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v34 = 0;
  *(&v34 + 7) = 0;
  sub_1B78017B8();
  if (BYTE1(v31) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v26) = 0;
  do
  {
    *(&v34 + v26) = v31;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v26 == 14)
    {
      *&v31 = v34;
      *(&v31 + 6) = *(&v34 + 6);
      sub_1B77FF588();
      LOBYTE(v26) = 0;
    }

    sub_1B78017B8();
  }

  while ((BYTE1(v31) & 1) == 0);
  if (v26)
  {
    *&v31 = v34;
    *(&v31 + 6) = *(&v34 + 6);
    sub_1B77FF588();
    sub_1B72380B8(v30, *(&v30 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_1B72380B8(v30, *(&v30 + 1));
LABEL_34:
  v27 = v32[0];
  sub_1B720ABEC(*&v32[0], *(&v32[0] + 1));
  sub_1B720A388(v27, *(&v27 + 1));
  return v27;
}

unint64_t sub_1B77F38F4()
{
  result = qword_1EB99ED30;
  if (!qword_1EB99ED30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SecureElementError, &type metadata for SecureElementError, v0, v1);
    atomic_store(result, &qword_1EB99ED30);
  }

  return result;
}

uint64_t sub_1B77F3948()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B77F3A00;

  return sub_1B77F0560();
}

uint64_t sub_1B77F3A00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B77F3B78, 0, 0);
}

uint64_t sub_1B77F3B78()
{
  v1 = v0[4];
  v2 = sub_1B7800838();
  v0[2] = 0;
  v3 = [v1 secureElementWithIdentifier:v2 error:v0 + 2];

  v4 = v0[2];
  if (v3)
  {
    v5 = v4;
    v6 = [v3 serialNumber];
    v7 = v0[4];
    if (v6)
    {
      v8 = v6;
      v9 = sub_1B7800868();
      v11 = v10;

      v12 = v0[1];

      return v12(v9, v11);
    }

    sub_1B77F38F4();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();
  }

  else
  {
    v14 = v0[4];
    v15 = v4;
    v16 = sub_1B77FF318();

    swift_willThrow();
    sub_1B77F38F4();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();
  }

  v19 = v0[1];

  return v19();
}

unint64_t sub_1B77F3DA4()
{
  result = qword_1EB99ED38;
  if (!qword_1EB99ED38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SecureElementError, &type metadata for SecureElementError, v0, v1);
    atomic_store(result, &qword_1EB99ED38);
  }

  return result;
}

uint64_t dispatch thunk of SecureElementSigning.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B7279368;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SecureElementIdentifierProviding.secureElementIdentifier()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B77F4830;

  return v7(a1, a2);
}

uint64_t sub_1B77F40F0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B77F4168(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1B77F42A4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

id sub_1B77F4494(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B77F44A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B7801C18() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1B7801C28() - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7201BB0;

  return sub_1B77F30E8(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

char *sub_1B77F464C@<X0>(char *result@<X0>, void *a2@<X8>)
{
  if (result[8] < 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = *result;
    *result = v4;
    result[8] = v5 | 0x80;
    result = sub_1B77F4494(v4, v5);
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1B77F46F4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B77F4754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B77F47A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t XPCDataWrapper.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t XPCDataWrapper.data.getter()
{
  v1 = *v0;
  sub_1B720ABEC(*v0, *(v0 + 8));
  return v1;
}

uint64_t XPCDataWrapper.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_1B7800198();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023B8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1B77F4D74(&qword_1EB99EE68, MEMORY[0x1E69E84F8]);
    sub_1B7802138();
    v9 = sub_1B7800178();
    length = xpc_data_get_length(v9);
    bytes_ptr = xpc_data_get_bytes_ptr(v9);
    if (bytes_ptr && length > 0)
    {
      v12 = sub_1B7561E74(bytes_ptr, length);
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v12 = 0;
      v14 = 0xC000000000000000;
    }

    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v17);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t XPCDataWrapper.encode(to:)(void *a1)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1B7800198();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = bytes - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023E8();
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(bytes, 0, 14);
      v11 = bytes;
      v10 = 0;
      goto LABEL_23;
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    v14 = sub_1B77FEB78();
    if (v14)
    {
      v15 = sub_1B77FEBA8();
      if (__OFSUB__(v13, v15))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 += v13 - v15;
    }

    v16 = __OFSUB__(v12, v13);
    v7 = v12 - v13;
    if (!v16)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v9)
  {
    bytes[0] = v7;
    LOWORD(bytes[1]) = v8;
    BYTE2(bytes[1]) = BYTE2(v8);
    BYTE3(bytes[1]) = BYTE3(v8);
    BYTE4(bytes[1]) = BYTE4(v8);
    v10 = BYTE6(v8);
    BYTE5(bytes[1]) = BYTE5(v8);
    v11 = bytes;
    goto LABEL_23;
  }

  v17 = v7;
  v16 = __OFSUB__(v7 >> 32, v7);
  v7 = (v7 >> 32) - v7;
  if (v7 < 0 != v16)
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = sub_1B77FEB78();
  if (v14)
  {
    v18 = sub_1B77FEBA8();
    if (!__OFSUB__(v17, v18))
    {
      v14 += v17 - v18;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v19 = sub_1B77FEB98();
  if (v19 >= v7)
  {
    v20 = v7;
  }

  else
  {
    v20 = v19;
  }

  if (v14)
  {
    v10 = v20;
  }

  else
  {
    v10 = 0;
  }

  v11 = v14;
LABEL_23:
  xpc_data_create(v11, v10);
  swift_unknownObjectRetain();
  sub_1B7800188();
  __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1B77F4D74(&qword_1EB99EE70, MEMORY[0x1E69E84E8]);
  sub_1B7802168();
  (*(v4 + 8))(v6, v3);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1B77F4D74(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1B7800198();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.init(transferFunds:payNow:digitalServicing:postInstallment:redeemRewards:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = sub_1B77FF4F8();
  v10 = *(*(v9 - 8) + 56);
  v10(a6, 1, 1, v9);
  v11 = type metadata accessor for Actions(0);
  v12 = v11[5];
  v10(a6 + v12, 1, 1, v9);
  v13 = v11[6];
  v10(a6 + v13, 1, 1, v9);
  v14 = v11[7];
  v10(a6 + v14, 1, 1, v9);
  v15 = v11[8];
  v10(a6 + v15, 1, 1, v9);
  sub_1B727CBBC(a1, a6);
  sub_1B727CBBC(a2, a6 + v12);
  sub_1B727CBBC(a3, a6 + v13);
  sub_1B727CBBC(a4, a6 + v14);

  return sub_1B727CBBC(a5, a6 + v15);
}

uint64_t type metadata accessor for Actions(uint64_t a1)
{
  result = qword_1EDAFC790;
  if (!qword_1EDAFC790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Actions.payNow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Actions(0) + 20);

  return sub_1B7228664(v3, a1);
}

uint64_t Actions.payNow.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions(0) + 20);

  return sub_1B727CBBC(a1, v3);
}

uint64_t Actions.digitalServicing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Actions(0) + 24);

  return sub_1B7228664(v3, a1);
}

uint64_t Actions.digitalServicing.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions(0) + 24);

  return sub_1B727CBBC(a1, v3);
}

uint64_t Actions.postInstallment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Actions(0) + 28);

  return sub_1B7228664(v3, a1);
}

uint64_t Actions.postInstallment.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions(0) + 28);

  return sub_1B727CBBC(a1, v3);
}

uint64_t Actions.redeemRewards.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Actions(0) + 32);

  return sub_1B7228664(v3, a1);
}

uint64_t Actions.redeemRewards.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions(0) + 32);

  return sub_1B727CBBC(a1, v3);
}

uint64_t sub_1B77F52FC(uint64_t a1)
{
  v2 = sub_1B77F6CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77F5338(uint64_t a1)
{
  v2 = sub_1B77F6CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Actions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EE78, &qword_1B7872018);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77F6CC0();
  sub_1B78023F8();
  v13 = 0;
  sub_1B77FF4F8();
  sub_1B77F6F5C(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1B7801F38();
  if (!v1)
  {
    type metadata accessor for Actions(0);
    v12 = 1;
    sub_1B7801F38();
    v11 = 2;
    sub_1B7801F38();
    v10 = 3;
    sub_1B7801F38();
    v9 = 4;
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Actions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v27 = &v26 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  v29 = v2;
  sub_1B7228664(v2, &v26 - v18);
  v20 = *(v4 + 48);
  if (v20(v19, 1, v3) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v4 + 32))(v6, v19, v3);
    sub_1B7802318();
    sub_1B77F6F5C(&qword_1EB98FF98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1B7800768();
    (*(v4 + 8))(v6, v3);
  }

  v21 = type metadata accessor for Actions(0);
  sub_1B7228664(v29 + v21[5], v17);
  if (v20(v17, 1, v3) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v4 + 32))(v6, v17, v3);
    sub_1B7802318();
    sub_1B77F6F5C(&qword_1EB98FF98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1B7800768();
    (*(v4 + 8))(v6, v3);
  }

  v22 = v29;
  sub_1B7228664(v29 + v21[6], v14);
  if (v20(v14, 1, v3) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v4 + 32))(v6, v14, v3);
    sub_1B7802318();
    sub_1B77F6F5C(&qword_1EB98FF98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1B7800768();
    (*(v4 + 8))(v6, v3);
  }

  v23 = v27;
  sub_1B7228664(v22 + v21[7], v27);
  if (v20(v23, 1, v3) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v4 + 32))(v6, v23, v3);
    sub_1B7802318();
    sub_1B77F6F5C(&qword_1EB98FF98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1B7800768();
    (*(v4 + 8))(v6, v3);
  }

  v24 = v28;
  sub_1B7228664(v22 + v21[8], v28);
  if (v20(v24, 1, v3) == 1)
  {
    return sub_1B7802318();
  }

  (*(v4 + 32))(v6, v24, v3);
  sub_1B7802318();
  sub_1B77F6F5C(&qword_1EB98FF98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1B7800768();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Actions.hashValue.getter()
{
  sub_1B78022F8();
  Actions.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t Actions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v39 = &v34 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v34 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v34 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EE88, &qword_1B7872020);
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v34 - v12;
  v14 = type metadata accessor for Actions(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B77FF4F8();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v40 = v15[7];
  v19(&v17[v40], 1, 1, v18);
  v20 = v15[8];
  v19(&v17[v20], 1, 1, v18);
  v21 = v15[9];
  v19(&v17[v21], 1, 1, v18);
  v22 = v15[10];
  v47 = v17;
  v19(&v17[v22], 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  sub_1B77F6CC0();
  v45 = v13;
  v23 = v48;
  sub_1B78023C8();
  if (v23)
  {
    v24 = v47;
  }

  else
  {
    v48 = v20;
    v35 = v22;
    v36 = v21;
    v26 = v42;
    v25 = v43;
    v27 = v41;
    v54 = 0;
    v28 = sub_1B77F6F5C(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v29 = v44;
    sub_1B7801DB8();
    v24 = v47;
    sub_1B727CBBC(v46, v47);
    v53 = 1;
    v46 = v28;
    sub_1B7801DB8();
    sub_1B727CBBC(v26, v24 + v40);
    v52 = 2;
    sub_1B7801DB8();
    sub_1B727CBBC(v25, v24 + v48);
    v51 = 3;
    v31 = v39;
    v32 = v45;
    sub_1B7801DB8();
    sub_1B727CBBC(v31, v24 + v36);
    v50 = 4;
    v33 = v38;
    sub_1B7801DB8();
    (*(v27 + 8))(v32, v29);
    sub_1B727CBBC(v33, v24 + v35);
    sub_1B77F6D70(v24, v37);
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_1B77F6D14(v24);
}

uint64_t sub_1B77F6140()
{
  sub_1B78022F8();
  Actions.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t sub_1B77F6184(uint64_t a1)
{
  sub_1B78022F8();
  Actions.hash(into:)(v2);
  return sub_1B7802368();
}

BOOL _s10FinanceKit7ActionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v78 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v82 = &v78 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v81 = &v78 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v83 = &v78 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v78 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v78 - v31;
  v87 = a1;
  v88 = v30;
  v33 = *(v30 + 48);
  sub_1B7228664(a1, &v78 - v31);
  v89 = a2;
  sub_1B7228664(a2, &v32[v33]);
  v34 = *(v5 + 48);
  if (v34(v32, 1, v4) == 1)
  {
    if (v34(&v32[v33], 1, v4) == 1)
    {
      v85 = v34;
      v78 = v10;
      v79 = v22;
      sub_1B7205418(v32, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_8;
    }

LABEL_6:
    v35 = v32;
LABEL_28:
    sub_1B7205418(v35, &qword_1EB991C30, &unk_1B7816E10);
    return 0;
  }

  sub_1B7228664(v32, v18);
  if (v34(&v32[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v18, v4);
    goto LABEL_6;
  }

  v85 = v34;
  v78 = v10;
  v79 = v22;
  v36 = v86;
  (*(v5 + 32))(v86, &v32[v33], v4);
  sub_1B77F6F5C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v37 = sub_1B7800828();
  v38 = *(v5 + 8);
  v38(v36, v4);
  v38(v18, v4);
  sub_1B7205418(v32, &unk_1EB994C70, &qword_1B7809800);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v39 = type metadata accessor for Actions(0);
  v40 = v39[5];
  v41 = v87;
  v42 = *(v88 + 48);
  sub_1B7228664(v87 + v40, v29);
  sub_1B7228664(v89 + v40, &v29[v42]);
  v43 = v85;
  if (v85(v29, 1, v4) == 1)
  {
    v85 = v43;
    if (v43(&v29[v42], 1, v4) == 1)
    {
      sub_1B7205418(v29, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v44 = v84;
  sub_1B7228664(v29, v84);
  if (v43(&v29[v42], 1, v4) == 1)
  {
    (*(v5 + 8))(v44, v4);
LABEL_13:
    v35 = v29;
    goto LABEL_28;
  }

  v85 = v43;
  v45 = v86;
  (*(v5 + 32))(v86, &v29[v42], v4);
  sub_1B77F6F5C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v46 = sub_1B7800828();
  v47 = v39;
  v48 = *(v5 + 8);
  v48(v45, v4);
  v48(v44, v4);
  v39 = v47;
  v41 = v87;
  sub_1B7205418(v29, &unk_1EB994C70, &qword_1B7809800);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v49 = v39[6];
  v50 = *(v88 + 48);
  v51 = v83;
  sub_1B7228664(v41 + v49, v83);
  sub_1B7228664(v89 + v49, v51 + v50);
  v52 = v85;
  if (v85(v51, 1, v4) == 1)
  {
    v53 = v52;
    if (v52(v51 + v50, 1, v4) == 1)
    {
      sub_1B7205418(v51, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_22;
    }

LABEL_20:
    v35 = v51;
    goto LABEL_28;
  }

  v54 = v82;
  sub_1B7228664(v51, v82);
  v53 = v52;
  if (v52(v51 + v50, 1, v4) == 1)
  {
    (*(v5 + 8))(v54, v4);
    goto LABEL_20;
  }

  v55 = *(v5 + 32);
  v87 = v39;
  v56 = v86;
  v55(v86, v51 + v50, v4);
  sub_1B77F6F5C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  LODWORD(v84) = sub_1B7800828();
  v57 = v51;
  v58 = *(v5 + 8);
  v59 = v56;
  v39 = v87;
  v58(v59, v4);
  v58(v54, v4);
  sub_1B7205418(v57, &unk_1EB994C70, &qword_1B7809800);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v60 = v39[7];
  v61 = *(v88 + 48);
  v62 = v81;
  sub_1B7228664(v41 + v60, v81);
  sub_1B7228664(v89 + v60, v62 + v61);
  v63 = v53(v62, 1, v4);
  v85 = v53;
  if (v63 != 1)
  {
    v64 = v80;
    sub_1B7228664(v62, v80);
    if (v53(v62 + v61, 1, v4) != 1)
    {
      v66 = *(v5 + 32);
      v87 = v39;
      v67 = v86;
      v66(v86, v62 + v61, v4);
      sub_1B77F6F5C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v68 = sub_1B7800828();
      v69 = *(v5 + 8);
      v70 = v67;
      v39 = v87;
      v69(v70, v4);
      v69(v64, v4);
      sub_1B7205418(v62, &unk_1EB994C70, &qword_1B7809800);
      if ((v68 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_32;
    }

    (*(v5 + 8))(v64, v4);
LABEL_27:
    v35 = v62;
    goto LABEL_28;
  }

  if (v53(v62 + v61, 1, v4) != 1)
  {
    goto LABEL_27;
  }

  sub_1B7205418(v62, &unk_1EB994C70, &qword_1B7809800);
LABEL_32:
  v71 = v39[8];
  v72 = *(v88 + 48);
  v51 = v79;
  sub_1B7228664(v41 + v71, v79);
  sub_1B7228664(v89 + v71, v51 + v72);
  v73 = v85;
  if (v85(v51, 1, v4) == 1)
  {
    if (v73(v51 + v72, 1, v4) == 1)
    {
      sub_1B7205418(v51, &unk_1EB994C70, &qword_1B7809800);
      return 1;
    }

    goto LABEL_20;
  }

  v74 = v78;
  sub_1B7228664(v51, v78);
  if (v73(v51 + v72, 1, v4) == 1)
  {
    (*(v5 + 8))(v74, v4);
    goto LABEL_20;
  }

  v75 = v86;
  (*(v5 + 32))(v86, v51 + v72, v4);
  sub_1B77F6F5C(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v76 = sub_1B7800828();
  v77 = *(v5 + 8);
  v77(v75, v4);
  v77(v74, v4);
  sub_1B7205418(v51, &unk_1EB994C70, &qword_1B7809800);
  return (v76 & 1) != 0;
}

unint64_t sub_1B77F6CC0()
{
  result = qword_1EB99EE80;
  if (!qword_1EB99EE80)
  {
    result = swift_getWitnessTable(byte_1B78721DC, &type metadata for Actions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EE80);
  }

  return result;
}

uint64_t sub_1B77F6D14(uint64_t a1)
{
  v2 = type metadata accessor for Actions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B77F6D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B77F6E58()
{
  result = qword_1EB99EE98;
  if (!qword_1EB99EE98)
  {
    result = swift_getWitnessTable(byte_1B78721B4, &type metadata for Actions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EE98);
  }

  return result;
}

unint64_t sub_1B77F6EB0()
{
  result = qword_1EB99EEA0;
  if (!qword_1EB99EEA0)
  {
    result = swift_getWitnessTable(byte_1B7872124, &type metadata for Actions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EEA0);
  }

  return result;
}

unint64_t sub_1B77F6F08()
{
  result = qword_1EB99EEA8;
  if (!qword_1EB99EEA8)
  {
    result = swift_getWitnessTable(byte_1B787214C, &type metadata for Actions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EEA8);
  }

  return result;
}

uint64_t sub_1B77F6F5C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id ManagedCascadeExtractedOrderShippingFulfillment.__allocating_init(_:positionIndex:context:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v4 = sub_1B77F71F8(a1, a2, a3);

  return v4;
}

FinanceKit::CascadeExtractedOrder::ShippingFulfillment::Status_optional ManagedCascadeExtractedOrderShippingFulfillment.status.getter@<W0>(_BYTE *a1@<X8>)
{
  result.value = CascadeExtractedOrder.ShippingFulfillment.Status.init(rawValue:)([v1 statusValue]).value;
  v4 = v5;
  if (v5 == 10)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

id (*ManagedCascadeExtractedOrderShippingFulfillment.status.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  CascadeExtractedOrder.ShippingFulfillment.Status.init(rawValue:)([v1 statusValue]);
  v3 = v5;
  if (v5 == 10)
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_1B74C4A2C;
}

id ManagedCascadeExtractedOrderShippingFulfillment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCascadeExtractedOrderShippingFulfillment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCascadeExtractedOrderShippingFulfillment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B77F71F8(unsigned __int8 *a1, __int16 a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithContext_];
  v7 = *a1;
  v8 = v6;
  [v8 setStatusValue_];
  if (*(a1 + 2))
  {
    v9 = sub_1B7800838();
  }

  else
  {
    v9 = 0;
  }

  [v8 setTrackingNumber_];

  if (*(a1 + 4))
  {
    v10 = sub_1B7800838();
  }

  else
  {
    v10 = 0;
  }

  [v8 setCarrierName_];

  if (*(a1 + 6))
  {
    v11 = sub_1B7800838();
  }

  else
  {
    v11 = 0;
  }

  [v8 setShippingMethod_];

  if (*(a1 + 8))
  {
    v12 = sub_1B7800838();
  }

  else
  {
    v12 = 0;
  }

  [v8 setShippingDate_];

  if (*(a1 + 10))
  {
    v13 = sub_1B7800838();
  }

  else
  {
    v13 = 0;
  }

  [v8 setShippingTime_];

  if (*(a1 + 12))
  {
    v14 = sub_1B7800838();
  }

  else
  {
    v14 = 0;
  }

  [v8 setEstimatedDeliveryStartDate_];

  if (*(a1 + 14))
  {
    v15 = sub_1B7800838();
  }

  else
  {
    v15 = 0;
  }

  [v8 setEstimatedDeliveryStartTime_];

  if (*(a1 + 16))
  {
    v16 = sub_1B7800838();
  }

  else
  {
    v16 = 0;
  }

  [v8 setEstimatedDeliveryEndDate_];

  if (*(a1 + 18))
  {
    v17 = sub_1B7800838();
  }

  else
  {
    v17 = 0;
  }

  [v8 setEstimatedDeliveryEndTime_];

  if (*(a1 + 20))
  {
    v18 = sub_1B7800838();
  }

  else
  {
    v18 = 0;
  }

  [v8 setDeliveryDate_];

  if (*(a1 + 22))
  {
    v19 = sub_1B7800838();
  }

  else
  {
    v19 = 0;
  }

  [v8 setDeliveryTime_];

  if (*(a1 + 24))
  {
    v20 = sub_1B7800838();
  }

  else
  {
    v20 = 0;
  }

  [v8 setRecipientFullName_];

  if (*(a1 + 26))
  {
    v21 = sub_1B7800838();
  }

  else
  {
    v21 = 0;
  }

  [v8 setRecipientPhoneNumber_];

  if (*(a1 + 28))
  {
    v22 = sub_1B7800838();
  }

  else
  {
    v22 = 0;
  }

  [v8 setRecipientEmailAddress_];

  sub_1B74BA2BC();
  v23 = *(a1 + 248);
  v24 = *(a1 + 280);
  v32[2] = *(a1 + 264);
  v32[3] = v24;
  v26 = *(a1 + 264);
  v25 = *(a1 + 280);
  v32[4] = *(a1 + 296);
  v32[0] = *(a1 + 232);
  v32[1] = v23;
  v27 = *(a1 + 248);
  cascadeExtractedOrderAddress.state = v26;
  cascadeExtractedOrderAddress.postalCode = v25;
  cascadeExtractedOrderAddress.country = *(a1 + 296);
  cascadeExtractedOrderAddress.street = *(a1 + 232);
  cascadeExtractedOrderAddress.city = v27;
  sub_1B72B1DD8(v32, &v30);
  v28 = CNMutablePostalAddress.init(cascadeExtractedOrderAddress:)(&cascadeExtractedOrderAddress);
  [v8 setRecipientAddress_];

  [v8 setPositionIndex_];
  sub_1B77F7658(a1);
  return v8;
}

uint64_t sub_1B77F7658(uint64_t a1)
{
  v2 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B77F76B4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &unk_1EB993A10, &qword_1B780B4A0);
  v7 = *a2;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF9B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

void sub_1B77F77F0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &qword_1EB98EBD0, &unk_1B7809780);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLastUpdatedAt_];
}

void ManagedCloudAccountMatch.matchingType.getter(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B7800838();
  [v2 willAccessValueForKey_];

  v5 = [v2 primitiveMatchingType];
  v6 = sub_1B7800838();
  [v2 didAccessValueForKey_];

  if (v5)
  {
    v7 = [v5 integerValue];

    AccountMatchingType.init(rawValue:)(v7);
  }

  else
  {
    *a1 = 5;
  }
}

void ManagedCloudAccountMatch.matchingType.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  if (v2 == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  [v1 setPrimitiveMatchingType_];

  v5 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedCloudAccountMatch.matchingType.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC10FinanceKit24ManagedCloudAccountMatch_matchingTypeKey];
  v5 = *&v1[OBJC_IVAR____TtC10FinanceKit24ManagedCloudAccountMatch_matchingTypeKey + 8];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = sub_1B7800838();
  [v2 willAccessValueForKey_];

  v7 = [v2 primitiveMatchingType];
  v8 = sub_1B7800838();
  [v2 didAccessValueForKey_];

  if (v7)
  {
    v9 = [v7 integerValue];

    v10 = 5;
    if (v9 < 5)
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 5;
  }

  *(a1 + 24) = v10;
  return sub_1B77F7C24;
}

void sub_1B77F7C24(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  if (v2 == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  [v1 setPrimitiveMatchingType_];

  v5 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

uint64_t ManagedCloudAccountMatch.isMismatched.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = [v0 primitiveIsMismatched];
  v3 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  if (!v2)
  {
    return 2;
  }

  v4 = [v2 BOOLValue];

  return v4;
}

void ManagedCloudAccountMatch.isMismatched.setter(unsigned __int8 a1)
{
  v3 = a1;
  v4 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  if (v3 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  [v1 setPrimitiveIsMismatched_];

  v6 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedCloudAccountMatch.isMismatched.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ManagedCloudAccountMatch.isMismatched.getter();
  return sub_1B77F7F10;
}

uint64_t ManagedCloudAccountMatch.ckSchemaVersion.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = [v0 primitiveCkSchemaVersion];
  v3 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  if (v2)
  {
    v4 = [v2 shortValue];

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 == 0) << 16);
}

void ManagedCloudAccountMatch.ckSchemaVersion.setter(int a1)
{
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  if ((a1 & 0x10000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  [v1 setPrimitiveCkSchemaVersion_];

  v5 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedCloudAccountMatch.ckSchemaVersion.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = ManagedCloudAccountMatch.ckSchemaVersion.getter();
  *(a1 + 8) = v3;
  *(a1 + 10) = BYTE2(v3) & 1;
  return sub_1B77F8150;
}

id ManagedCloudAccountMatch.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCloudAccountMatch.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCloudAccountMatch.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *ManagedCloudAccountMatch.__allocating_init(_:context:)(void *a1, void *a2)
{
  v33 = a2;
  v32 = sub_1B77FF988();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(v2) initWithContext_];
  sub_1B77FFA08();
  v13 = sub_1B77FF9B8();
  (*(v9 + 8))(v11, v8);
  [v12 setId_];

  v14 = [a1 accountID];
  [v12 setAccountID_];

  v15 = [a1 institutionID];
  [v12 setInstitutionID_];

  v16 = [a1 fpanID];
  [v12 setFpanID_];

  ManagedAccountMatch.matchingType.getter(&v34);
  v17 = v34;
  v18 = sub_1B7800838();
  [v12 willChangeValueForKey_];

  v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v12 setPrimitiveMatchingType_];

  v20 = sub_1B7800838();
  [v12 didChangeValueForKey_];

  v21 = [a1 isMismatched];
  v22 = sub_1B7800838();
  [v12 willChangeValueForKey_];

  v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [v12 setPrimitiveIsMismatched_];

  v24 = sub_1B7800838();
  [v12 didChangeValueForKey_];

  v25 = [a1 lastUpdatedAt];
  sub_1B77FF928();

  v26 = sub_1B77FF8B8();
  (*(v5 + 8))(v7, v32);
  [v12 setLastUpdatedAt_];

  v27 = sub_1B7800838();
  [v12 willChangeValueForKey_];

  v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  [v12 setPrimitiveCkSchemaVersion_];

  v29 = sub_1B7800838();
  [v12 didChangeValueForKey_];

  return v12;
}

void ManagedCloudAccountMatch.update(_:context:)(void *a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 accountID];
  v7 = sub_1B7800868();
  v9 = v8;

  v10 = [v2 accountID];
  if (!v10)
  {
LABEL_16:

    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = sub_1B7800868();
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    v16 = sub_1B78020F8();

    if (v16)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

LABEL_9:
  v17 = [a1 institutionID];
  v18 = sub_1B7800868();
  v20 = v19;

  v21 = [v2 institutionID];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B7800868();
    v25 = v24;

    if (v18 == v23 && v20 == v25)
    {

LABEL_14:
      v27 = [a1 fpanID];
      [v2 setFpanID_];

      ManagedAccountMatch.matchingType.getter(&v43);
      v28 = v43;
      v29 = sub_1B7800838();
      [v2 willChangeValueForKey_];

      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      [v2 setPrimitiveMatchingType_];

      v31 = sub_1B7800838();
      [v2 didChangeValueForKey_];

      v32 = [a1 isMismatched];
      v33 = sub_1B7800838();
      [v2 willChangeValueForKey_];

      v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      [v2 setPrimitiveIsMismatched_];

      v35 = sub_1B7800838();
      [v2 didChangeValueForKey_];

      v36 = [a1 lastUpdatedAt];
      v37 = v40;
      sub_1B77FF928();

      v38 = sub_1B77FF8B8();
      (*(v41 + 8))(v37, v42);
      [v2 setLastUpdatedAt_];

      return;
    }

    v26 = sub_1B78020F8();

    if (v26)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:

  __break(1u);
}

void ManagedCloudAccountMatch.update(_:context:)(char *a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 accountID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1B7800868();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [v2 accountID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B7800868();
    v16 = v15;

    if (v11)
    {
      if (v16)
      {
        if (v9 == v14 && v11 == v16)
        {

          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (!v16)
    {
      goto LABEL_15;
    }
  }

  else if (!v11)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_14:
  v17 = sub_1B78020F8();

  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_15:
  v18 = [a1 institutionID];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1B7800868();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [v2 institutionID];
  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v24 = v23;
  v25 = sub_1B7800868();
  v27 = v26;

  if (!v22)
  {
    if (!v27)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (!v27)
  {
LABEL_27:

    __break(1u);
    goto LABEL_28;
  }

  if (v20 != v25 || v22 != v27)
  {
LABEL_28:
    v28 = sub_1B78020F8();

    if (v28)
    {
      goto LABEL_29;
    }

LABEL_42:
    __break(1u);
    return;
  }

LABEL_29:
  v29 = [a1 fpanID];
  [v2 setFpanID_];

  v30 = sub_1B7800838();
  [a1 willAccessValueForKey_];

  v31 = [a1 primitiveMatchingType];
  v32 = sub_1B7800838();
  [a1 didAccessValueForKey_];

  if (v31)
  {
    v33 = [v31 integerValue];

    v34 = v33 > 4;
    if (v33 <= 4)
    {
      v35 = v33;
    }

    else
    {
      v35 = 5;
    }
  }

  else
  {
    v34 = 1;
    v35 = 5;
  }

  v36 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  if (v34)
  {
    v37 = 0;
  }

  else
  {
    v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  [v2 setPrimitiveMatchingType_];

  v38 = sub_1B7800838();
  [v2 didChangeValueForKey_];

  v39 = ManagedCloudAccountMatch.isMismatched.getter();
  ManagedCloudAccountMatch.isMismatched.setter(v39);
  v40 = [a1 lastUpdatedAt];
  if (v40)
  {
    v41 = v40;
    sub_1B77FF928();

    v42 = sub_1B77FF8B8();
    (*(v43 + 8))(v6, v44);
  }

  else
  {
    v42 = 0;
  }

  [v2 setLastUpdatedAt_];
}

double ManagedCloudAccountMatch.fullyQualifiedAccountIdentifier.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 accountID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v8 = v7;

    v9 = [v2 institutionID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B7800868();
      v13 = v12;

      *a1 = v6;
      a1[1] = v8;
      a1[2] = v11;
      a1[3] = v13;
      return result;
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

void AccountMatch.init(validating:)(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((ManagedCloudAccountMatch.ckSchemaVersion.getter() & 0x1FFFF) != 1)
  {
    v43 = ManagedCloudAccountMatch.ckSchemaVersion.getter() & 0x1FFFF;
    sub_1B77F9CFC();
    swift_allocError();
    *v44 = v43;
    *(v44 + 8) = 0;
    *(v44 + 16) = 0;
LABEL_12:
    swift_willThrow();

    return;
  }

  v12 = [a1 id];
  if (!v12)
  {
    sub_1B77F9CFC();
    swift_allocError();
    *v45 = xmmword_1B7838280;
    *(v45 + 16) = 1;
    goto LABEL_12;
  }

  v54 = v5;
  v13 = v12;
  sub_1B77FF9E8();

  (*(v9 + 16))(a2, v11, v8);
  v14 = [a1 institutionID];
  v56 = v9;
  if (v14)
  {
    v15 = v14;
    v53 = sub_1B7800868();
    v17 = v16;

    v18 = [a1 accountID];
    if (v18)
    {
      v50 = v4;
      v51 = v7;
      v19 = sub_1B7800868();
      v52 = v17;
      v20 = v19;
      v22 = v21;

      v23 = type metadata accessor for AccountMatch(0);
      v24 = *(v23 + 20);
      v55 = a2;
      v25 = &a2[v24];
      *v25 = v20;
      *(v25 + 1) = v22;
      v26 = v52;
      *(v25 + 2) = v53;
      *(v25 + 3) = v26;
      v27 = [a1 fpanID];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1B7800868();
        v31 = v30;

        v53 = v23;
        v32 = &v55[*(v23 + 24)];
        *v32 = v29;
        v32[1] = v31;
        v33 = sub_1B7800838();
        [a1 willAccessValueForKey_];

        v34 = [a1 primitiveMatchingType];
        v35 = sub_1B7800838();
        [a1 didAccessValueForKey_];

        v36 = v51;
        if (v34)
        {
          v37 = [v34 integerValue];

          if (v37 <= 4)
          {
            v38 = v53;
            a2 = v55;
            v55[*(v53 + 28)] = v37;
            v39 = ManagedCloudAccountMatch.isMismatched.getter();
            if (v39 == 2)
            {
              LODWORD(v18) = 1;
              v40 = 0xEC00000064656863;
              v41 = 0x74616D73694D7369;
              v42 = 1;
            }

            else
            {
              a2[*(v38 + 32)] = v39;
              v48 = [a1 lastUpdatedAt];
              if (v48)
              {
                v49 = v48;
                sub_1B77FF928();

                (*(v56 + 8))(v11, v8);
                (*(v54 + 32))(&a2[*(v38 + 36)], v36, v50);
                return;
              }

              LODWORD(v18) = 1;
              v40 = 0xED00007441646574;
              v41 = 0x616470557473616CLL;
              v42 = 1;
            }

            goto LABEL_19;
          }
        }

        LODWORD(v18) = 1;
        v40 = 0xEC00000065707954;
        v41 = 0x676E69686374616DLL;
        v42 = 1;
      }

      else
      {
        v42 = 0;
        LODWORD(v18) = 1;
        v40 = 0xE600000000000000;
        v41 = 0x44496E617066;
      }

      a2 = v55;
    }

    else
    {

      v42 = 0;
      v40 = 0xE900000000000044;
      v41 = 0x49746E756F636361;
    }
  }

  else
  {
    LODWORD(v18) = 0;
    v42 = 0;
    v40 = 0xED000044496E6F69;
    v41 = 0x7475746974736E69;
  }

LABEL_19:
  sub_1B77F9CFC();
  swift_allocError();
  *v46 = v41;
  *(v46 + 8) = v40;
  *(v46 + 16) = 1;
  swift_willThrow();

  v47 = *(v56 + 8);
  v47(v11, v8);
  v47(a2, v8);
  if (v18)
  {
    type metadata accessor for AccountMatch(0);
  }

  if (v42)
  {
    type metadata accessor for AccountMatch(0);
  }
}

id static ManagedCloudAccountMatch.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit24ManagedCloudAccountMatch;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedCloudAccountMatch.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

unint64_t static ManagedCloudAccountMatch.existingAccountMatch(with:schemaVersion:in:)(__int128 *a1, __int16 a2)
{
  v3 = v2;
  v18 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v22.receiver = swift_getObjCClassFromMetadata();
  v22.super_class = &OBJC_METACLASS____TtC10FinanceKit24ManagedCloudAccountMatch;
  v7 = objc_msgSendSuper2(&v22, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  v19 = v18;
  v20 = v5;
  v21 = v6;
  *(v8 + 32) = _s10FinanceKit19ManagedAccountMatchC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedD10IdentifierV_tFZ_0(&v19);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7290];
  *(v9 + 16) = xmmword_1B7807CD0;
  v11 = MEMORY[0x1E69E72E8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = a2;
  *(v8 + 40) = sub_1B78010E8();
  v12 = sub_1B7800C18();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setPredicate_];
  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v16 = result;
  v17 = sub_1B7801958();
  result = v16;
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(result + 32);
LABEL_8:
    v3 = v15;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedCloudAccountMatch.predicateForAccountMatch(withCKSchemaVersion:)(__int16 a1)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7290];
  *(v2 + 16) = xmmword_1B7807CD0;
  v4 = MEMORY[0x1E69E72E8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  return sub_1B78010E8();
}

uint64_t _s10FinanceKit24ManagedCloudAccountMatchC15ValidationErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_1B74CBD9C(*a1, v3, 0);
      sub_1B74CBD9C(v5, v6, 0);
      if ((v2 & 0x10000) != 0)
      {
        if ((v5 & 0x10000) == 0)
        {
          return 0;
        }
      }

      else if ((v5 & 0x10000) != 0 || v2 != v5)
      {
        return 0;
      }

      return 1;
    }

LABEL_14:
    sub_1B74CBD8C(v5, v6, v7);
    sub_1B74CBD9C(v2, v3, v4);
    sub_1B74CBD9C(v5, v6, v7);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {

    goto LABEL_14;
  }

  v8 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    sub_1B74CBD8C(v8, v3, 1);
    sub_1B74CBD8C(v2, v3, 1);
    sub_1B74CBD9C(v2, v3, 1);
    sub_1B74CBD9C(v2, v3, 1);
    return 1;
  }

  else
  {
    v10 = sub_1B78020F8();
    sub_1B74CBD8C(v5, v6, 1);
    sub_1B74CBD8C(v2, v3, 1);
    sub_1B74CBD9C(v2, v3, 1);
    sub_1B74CBD9C(v5, v6, 1);
    return v10 & 1;
  }
}

unint64_t sub_1B77F9CFC()
{
  result = qword_1EB99EEC8;
  if (!qword_1EB99EEC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedCloudAccountMatch.ValidationError, &type metadata for ManagedCloudAccountMatch.ValidationError, v0, v1);
    atomic_store(result, &qword_1EB99EEC8);
  }

  return result;
}

uint64_t PredictedTransaction.init(id:accountID:isRecurring:transactionDescription:amount:creditDebitIndicator:amountRange:predictedDate:predictedDateInterval:isSuppressedByUser:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unsigned int *a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  v58 = a3;
  v56 = a1;
  v57 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798, &unk_1B781E7A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v45 - v19;
  v21 = sub_1B77FEA78();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *a6;
  v66 = *(a6 + 2);
  v65 = *(a6 + 3);
  v64 = *(a6 + 4);
  v63 = *(a6 + 5);
  v62 = *(a6 + 6);
  v61 = *(a6 + 7);
  v24 = *(a6 + 8);
  v59 = *(a6 + 9);
  v60 = v24;
  v68 = *(a6 + 5);
  v69 = a6[9];
  v55 = *a7;
  v25 = type metadata accessor for PredictedTransaction(0);
  v26 = (a9 + v25[6]);
  *v26 = 0;
  v26[1] = 0x100000000000000;
  v27 = a9 + v25[11];
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 40) = 1;
  v28 = v25[13];
  result = (*(v22 + 56))(a9 + v28, 1, 1, v21);
  v30 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v30 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v52 = v28;
  v53 = a4;
  v54 = a5;
  if ((*(a8 + 40) & 1) == 0)
  {
    v48 = *(a8 + 24);
    v47 = *(a8 + 26);
    v50 = *(a8 + 28);
    v49 = *(a8 + 36);
    v31 = *(a8 + 16);
    v46 = *(a8 + 20);
    v32 = v67 | (v66 << 32) | (v65 << 48);
    v33 = v64 | (v63 << 16) | (v62 << 32) | (v61 << 48);
    v34 = v60 | (v59 << 16);
    result = MEMORY[0x1B8CA5940](v32, v33, v34, *a8, *(a8 + 8), v31);
    if (result)
    {
      goto LABEL_12;
    }

    result = MEMORY[0x1B8CA5940](v46 | (v48 << 32) | (v47 << 48), v50, v49, v32, v33, v34);
    if (result)
    {
      goto LABEL_12;
    }
  }

  sub_1B74D7608(a11, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1B7205418(v20, &qword_1EB992798, &unk_1B781E7A0);
LABEL_10:
    v37 = sub_1B77FFA18();
    v38 = *(*(v37 - 8) + 32);
    v38(a9, v56, v37);
    v38(a9 + v25[5], v57, v37);
    *(a9 + v25[7]) = v58 & 1;
    v39 = (a9 + v25[8]);
    v40 = v54;
    *v39 = v53;
    v39[1] = v40;
    v41 = a9 + v25[9];
    LOWORD(v40) = v66;
    *v41 = v67;
    *(v41 + 4) = v40;
    LOWORD(v40) = v64;
    *(v41 + 6) = v65;
    *(v41 + 8) = v40;
    *(v41 + 10) = v63;
    *(v41 + 12) = v62;
    *(v41 + 14) = v61;
    *(v41 + 16) = v60;
    *(v41 + 18) = v59;
    *(v41 + 20) = v68;
    *(v41 + 36) = v69;
    *(a9 + v25[10]) = v55;
    v42 = *(a8 + 16);
    *v27 = *a8;
    *(v27 + 16) = v42;
    *(v27 + 25) = *(a8 + 25);
    v43 = v25[12];
    v44 = sub_1B77FF988();
    (*(*(v44 - 8) + 32))(a9 + v43, a10, v44);
    result = sub_1B74D8918(a11, a9 + v52);
    *(a9 + v25[14]) = a12 & 1;
    return result;
  }

  v35 = v51;
  (*(v22 + 32))(v51, v20, v21);
  v36 = sub_1B77FEA58();
  result = (*(v22 + 8))(v35, v21);
  if (v36)
  {
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t PredictedTransaction.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PredictedTransaction(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PredictedTransaction.accountID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PredictedTransaction(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PredictedTransaction.frequency.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PredictedTransaction(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  v6 = *(v4 + 15);
  v8 = *(v4++ + 2);
  v7 = v8;
  LOWORD(v8) = *(v4 + 2);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 14) = *(v4 + 6);
  *(a1 + 15) = v6;
  return result;
}

uint64_t PredictedTransaction.frequency.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 15);
  v5 = *(a1 + 2);
  v4 = a1 + 1;
  v6 = *(v4 + 2);
  v7 = *(v4 + 6);
  result = type metadata accessor for PredictedTransaction(0);
  v9 = v1 + *(result + 24);
  *v9 = v2;
  *(v9 + 14) = v7;
  *(v9 + 12) = v6;
  *(v9 + 8) = v5;
  *(v9 + 15) = v3;
  return result;
}

uint64_t PredictedTransaction.isRecurring.setter(char a1)
{
  result = type metadata accessor for PredictedTransaction(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PredictedTransaction.transactionDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for PredictedTransaction(0) + 32));

  return v1;
}

void PredictedTransaction.transactionDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PredictedTransaction(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t PredictedTransaction.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictedTransaction(0) + 36);
  v9 = *(v3 + 32);
  v4 = v9;
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  *a1 = v8[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  return sub_1B7215720(v8, v7);
}

__n128 PredictedTransaction.amount.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PredictedTransaction(0) + 36);
  v8 = *(v3 + 32);
  v4 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v4;
  sub_1B721722C(v7);
  result = *a1;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t PredictedTransaction.creditDebitIndicator.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PredictedTransaction(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t PredictedTransaction.creditDebitIndicator.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PredictedTransaction(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

__n128 PredictedTransaction.amountRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictedTransaction(0) + 44);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 PredictedTransaction.amountRange.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PredictedTransaction(0) + 44);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 25);
  *(v3 + 25) = result;
  return result;
}

uint64_t PredictedTransaction.predictedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PredictedTransaction(0) + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PredictedTransaction.predictedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PredictedTransaction(0) + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PredictedTransaction.predictedDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictedTransaction(0) + 52);

  return sub_1B74D7608(v3, a1);
}

uint64_t PredictedTransaction.predictedDateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PredictedTransaction(0) + 52);

  return sub_1B74D8918(a1, v3);
}

uint64_t PredictedTransaction.isSuppressedByUser.setter(char a1)
{
  result = type metadata accessor for PredictedTransaction(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t PredictedTransaction.init(id:accountID:frequency:transactionDescription:amount:creditDebitIndicator:amountRange:predictedDate:predictedDateInterval:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unsigned int *a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v93 = a8;
  v94 = a4;
  v95 = a5;
  v98 = a2;
  v99 = a1;
  v81 = a11;
  v97 = a10;
  v100 = sub_1B77FEA78();
  v96 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v71 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798, &unk_1B781E7A0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v78 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v68 - v19;
  v21 = sub_1B77FF988();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B77FFA18();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v74 = *(a3 + 15);
  v91 = *a6;
  v90 = *(a6 + 2);
  v89 = *(a6 + 3);
  v88 = *(a6 + 4);
  v87 = *(a6 + 5);
  v86 = *(a6 + 6);
  v85 = *(a6 + 7);
  v29 = *(a6 + 8);
  v83 = *(a6 + 9);
  v84 = v29;
  v101 = *(a6 + 5);
  v102 = a6[9];
  v77 = *a7;
  v79 = v30;
  v31 = *(v30 + 16);
  v75 = &v68 - v32;
  v31();
  v76 = v28;
  v33 = v28;
  v34 = v81;
  (v31)(v33, v98, v25);
  v35 = *(v22 + 16);
  v80 = v21;
  v35(v24, v97, v21);
  v92 = v20;
  sub_1B74D7608(v34, v20);
  v36 = type metadata accessor for PredictedTransaction(0);
  v37 = (a9 + v36[6]);
  *v37 = 0;
  v37[1] = 0x100000000000000;
  v38 = a9 + v36[11];
  *(v38 + 32) = 0;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  *(v38 + 40) = 1;
  v39 = v36[13];
  result = (*(v96 + 56))(a9 + v39, 1, 1, v100);
  v41 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v41 = v94 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v72 = v39;
  v82 = v24;
  v73 = v22;
  if ((*(v93 + 40) & 1) == 0)
  {
    v69 = *(v93 + 24);
    v68 = *(v93 + 26);
    v42 = *(v93 + 28);
    LODWORD(v70) = *(v93 + 36);
    v43 = *(v93 + 20);
    v44 = v91 | (v90 << 32) | (v89 << 48);
    v45 = v88 | (v87 << 16) | (v86 << 32) | (v85 << 48);
    v46 = v84 | (v83 << 16);
    result = MEMORY[0x1B8CA5940](v44, v45, v46, *v93, *(v93 + 8), *(v93 + 16));
    if (result)
    {
      goto LABEL_12;
    }

    result = MEMORY[0x1B8CA5940](v43 | (v69 << 32) | (v68 << 48), v42, v70, v44, v45, v46);
    if (result)
    {
      goto LABEL_12;
    }
  }

  v47 = v78;
  sub_1B74D7608(v92, v78);
  v48 = v96;
  v49 = v100;
  if ((*(v96 + 48))(v47, 1, v100) == 1)
  {
    sub_1B7205418(v34, &qword_1EB992798, &unk_1B781E7A0);
    v50 = v73;
    v51 = v80;
    (*(v73 + 8))(v97, v80);
    v52 = v79;
    v53 = *(v79 + 8);
    v53(v98, v25);
    v53(v99, v25);
    v54 = v51;
    sub_1B7205418(v47, &qword_1EB992798, &unk_1B781E7A0);
    v55 = v82;
LABEL_10:
    v61 = v74 ^ 1;
    v62 = *(v52 + 32);
    v62(a9, v75, v25);
    v62(a9 + v36[5], v76, v25);
    *(a9 + v36[7]) = v61;
    v63 = (a9 + v36[8]);
    v64 = v95;
    *v63 = v94;
    v63[1] = v64;
    v65 = a9 + v36[9];
    LOWORD(v64) = v90;
    *v65 = v91;
    *(v65 + 4) = v64;
    LOWORD(v64) = v88;
    *(v65 + 6) = v89;
    *(v65 + 8) = v64;
    *(v65 + 10) = v87;
    *(v65 + 12) = v86;
    *(v65 + 14) = v85;
    *(v65 + 16) = v84;
    *(v65 + 18) = v83;
    *(v65 + 20) = v101;
    *(v65 + 36) = v102;
    *(a9 + v36[10]) = v77;
    v66 = v93;
    v67 = *(v93 + 16);
    *v38 = *v93;
    *(v38 + 16) = v67;
    *(v38 + 25) = *(v66 + 25);
    (*(v50 + 32))(a9 + v36[12], v55, v54);
    result = sub_1B74D8918(v92, a9 + v72);
    *(a9 + v36[14]) = 0;
    return result;
  }

  v56 = *(v48 + 32);
  v70 = v38;
  v57 = v71;
  v56(v71, v47, v49);
  LODWORD(v78) = sub_1B77FEA58();
  sub_1B7205418(v34, &qword_1EB992798, &unk_1B781E7A0);
  v50 = v73;
  v54 = v80;
  (*(v73 + 8))(v97, v80);
  v58 = v79;
  v59 = *(v79 + 8);
  v59(v98, v25);
  v59(v99, v25);
  v55 = v82;
  v60 = v57;
  v38 = v70;
  result = (*(v48 + 8))(v60, v100);
  v52 = v58;
  if (v78)
  {
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t PredictedTransaction.init(id:frequency:transactionDescription:amount:amountRange:predictedDate:predictedDateInterval:source:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v83 = a7;
  v84 = a8;
  v81 = a3;
  v82 = a4;
  v80 = a2;
  v79 = sub_1B77FEA78();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v66 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798, &unk_1B781E7A0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v73 = &v63[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v63[-v17];
  v19 = sub_1B77FF988();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v63[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_1B77FFA18();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v63[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v70 = v80[15];
  v28 = a5[1];
  v86 = *a5;
  v87 = v28;
  v88 = *(a5 + 4);
  v29 = *(v24 + 16);
  v71 = &v63[-v30];
  v74 = v31;
  v75 = a1;
  v29();
  v72 = v27;
  sub_1B77FFA08();
  sub_1B7215720(&v86, v85);
  v32 = MEMORY[0x1B8CA5910](0);
  v35 = MEMORY[0x1B8CA5940](v86, *(&v86 + 1), v87, v32, v33, v34);
  sub_1B721722C(&v86);
  v36 = *(v20 + 16);
  v78 = v22;
  v76 = v19;
  v36(v22, v83, v19);
  v80 = v18;
  sub_1B74D7608(v84, v18);
  v37 = type metadata accessor for PredictedTransaction(0);
  v38 = (a9 + v37[6]);
  *v38 = 0;
  v38[1] = 0x100000000000000;
  v39 = a9 + v37[11];
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 40) = 1;
  v40 = v37[13];
  v41 = v77;
  v42 = v79;
  result = (*(v77 + 56))(a9 + v40, 1, 1);
  v44 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v44 = v81 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v67 = v40;
  v68 = v35;
  v69 = v20;
  if ((*(a6 + 40) & 1) == 0)
  {
    v45 = *(a6 + 24);
    v46 = *(a6 + 26);
    v65 = *(a6 + 28);
    v64 = *(a6 + 36);
    v47 = *(a6 + 20);
    result = MEMORY[0x1B8CA5940](v86, *(&v86 + 1), v87, *a6, *(a6 + 8), *(a6 + 16));
    if (result)
    {
      goto LABEL_12;
    }

    result = MEMORY[0x1B8CA5940](v47 | (v45 << 32) | (v46 << 48), v65, v64, v86, *(&v86 + 1), v87);
    if (result)
    {
      goto LABEL_12;
    }
  }

  v48 = v73;
  sub_1B74D7608(v80, v73);
  v49 = v42;
  if ((*(v41 + 48))(v48, 1, v42) == 1)
  {
    sub_1B7205418(v84, &qword_1EB992798, &unk_1B781E7A0);
    v50 = v69;
    v51 = v48;
    v52 = v76;
    (*(v69 + 8))(v83, v76);
    v53 = v74;
    (*(v24 + 8))(v75, v74);
    sub_1B7205418(v51, &qword_1EB992798, &unk_1B781E7A0);
LABEL_10:
    v56 = v70 ^ 1;
    v57 = *(v24 + 32);
    v57(a9, v71, v53);
    v57(a9 + v37[5], v72, v53);
    *(a9 + v37[7]) = v56;
    v58 = (a9 + v37[8]);
    v59 = v82;
    *v58 = v81;
    v58[1] = v59;
    v60 = a9 + v37[9];
    v61 = v87;
    *v60 = v86;
    *(v60 + 16) = v61;
    *(v60 + 32) = v88;
    *(a9 + v37[10]) = v68 & 1;
    v62 = *(a6 + 16);
    *v39 = *a6;
    *(v39 + 16) = v62;
    *(v39 + 25) = *(a6 + 25);
    (*(v50 + 32))(a9 + v37[12], v78, v52);
    result = sub_1B74D8918(v80, a9 + v67);
    *(a9 + v37[14]) = 0;
    return result;
  }

  v54 = v66;
  (*(v41 + 32))(v66, v48, v49);
  LODWORD(v73) = sub_1B77FEA58();
  sub_1B7205418(v84, &qword_1EB992798, &unk_1B781E7A0);
  v50 = v69;
  v52 = v76;
  (*(v69 + 8))(v83, v76);
  v55 = v74;
  (*(v24 + 8))(v75, v74);
  result = (*(v41 + 8))(v54, v79);
  v53 = v55;
  if (v73)
  {
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1B77FB9A0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    v7 = 0x656372756F73;
    if (a1 == 10)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000014;
    v9 = 0x6152746E756F6D61;
    if (a1 != 7)
    {
      v9 = 0x6574636964657270;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7272756365527369;
    v3 = 0xD000000000000016;
    if (a1 != 4)
    {
      v3 = 0x746E756F6D61;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x49746E756F636361;
    if (a1 != 1)
    {
      v4 = 0x636E657571657266;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B77FBB44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B77FDE8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B77FBB6C(uint64_t a1)
{
  v2 = sub_1B77FD5F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77FBBA8(uint64_t a1)
{
  v2 = sub_1B77FD5F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedTransaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EED8, &qword_1B7872398);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77FD5F0();
  sub_1B78023F8();
  LOBYTE(v23[0]) = 0;
  sub_1B77FFA18();
  sub_1B71A6C3C(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for PredictedTransaction(0);
    LOBYTE(v23[0]) = 1;
    sub_1B7801FC8();
    v10 = (v3 + v9[6]);
    v11 = *v10;
    v12 = *(v10 + 15);
    v14 = *(v10++ + 2);
    v13 = v14;
    LOWORD(v14) = *(v10 + 2);
    LOBYTE(v10) = *(v10 + 6);
    *&v23[0] = v11;
    BYTE14(v23[0]) = v10;
    WORD6(v23[0]) = v14;
    DWORD2(v23[0]) = v13;
    HIBYTE(v23[0]) = v12;
    LOBYTE(v31[0]) = 2;
    sub_1B76040BC();
    sub_1B7801F38();
    LOBYTE(v23[0]) = 3;
    sub_1B7801F88();
    v35 = 4;
    sub_1B7801F78();
    v15 = (v3 + v9[9]);
    v16 = v15[1];
    v31[0] = *v15;
    v31[1] = v16;
    v32 = *(v15 + 4);
    v17 = v15[1];
    v28 = *v15;
    v29 = v17;
    v30 = *(v15 + 4);
    v34 = 5;
    sub_1B7215720(v31, v23);
    sub_1B7215044();
    sub_1B7801FC8();
    v26[0] = v28;
    v26[1] = v29;
    v27 = v30;
    sub_1B721722C(v26);
    LOBYTE(v23[0]) = *(v3 + v9[10]);
    v33 = 6;
    sub_1B721BF7C();
    sub_1B7801FC8();
    v18 = v3 + v9[11];
    v19 = *(v18 + 32);
    v20 = *(v18 + 40);
    v21 = *(v18 + 16);
    v23[0] = *v18;
    v23[1] = v21;
    v24 = v19;
    v25 = v20;
    v33 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EEE8, &qword_1B78723A0);
    sub_1B77FD698(&qword_1EB99EEF0, &unk_1EB99DA30, MEMORY[0x1E6969FD8], MEMORY[0x1E69E5F98]);
    sub_1B7801F38();
    LOBYTE(v23[0]) = 8;
    sub_1B77FF988();
    sub_1B71A6C3C(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801FC8();
    LOBYTE(v23[0]) = 9;
    sub_1B77FEA78();
    sub_1B71A6C3C(&qword_1EB99EEF8, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
    sub_1B7801F38();
    LOBYTE(v23[0]) = 10;
    sub_1B7801F88();
    LOBYTE(v23[0]) = 11;
    sub_1B77FD644();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PredictedTransaction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798, &unk_1B781E7A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = v55 - v4;
  v62 = sub_1B77FF988();
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B77FFA18();
  v64 = *(v67 - 8);
  v6 = MEMORY[0x1EEE9AC00](v67);
  v65 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = v55 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EF08, &qword_1B78723A8);
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v10 = v55 - v9;
  v11 = type metadata accessor for PredictedTransaction(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[v12[6]];
  *v15 = 0;
  *(v15 + 1) = 0x100000000000000;
  v16 = &v14[v12[11]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v16[40] = 1;
  v17 = v12[13];
  v18 = sub_1B77FEA78();
  v19 = *(*(v18 - 8) + 56);
  v72 = v17;
  v73 = v14;
  v19(&v14[v17], 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77FD5F0();
  v69 = v10;
  v20 = v71;
  sub_1B78023C8();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25 = v73;
    return sub_1B7205418(v25 + v72, &qword_1EB992798, &unk_1B781E7A0);
  }

  v57 = v15;
  v21 = v65;
  v56 = v16;
  v55[1] = v18;
  v58 = v11;
  v71 = a1;
  LOBYTE(v74) = 0;
  sub_1B71A6C3C(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v23 = v66;
  v22 = v67;
  sub_1B7801E48();
  v25 = v73;
  v26 = *(v64 + 32);
  v26(v73, v23, v22);
  LOBYTE(v74) = 1;
  sub_1B7801E48();
  v55[0] = 0;
  v27 = v58;
  v26((v25 + v58[5]), v21, v22);
  LOBYTE(v78) = 2;
  sub_1B760420C();
  sub_1B7801DB8();
  v28 = WORD6(v74);
  v29 = DWORD2(v74);
  v30 = HIBYTE(v74);
  v31 = v57;
  *v57 = v74;
  *(v31 + 2) = v29;
  *(v31 + 6) = v28;
  v31[14] = BYTE14(v74);
  v31[15] = v30;
  LOBYTE(v74) = 3;
  v32 = sub_1B7801E08();
  v33 = v64;
  *(v25 + v27[7]) = v32 & 1;
  LOBYTE(v74) = 4;
  v34 = sub_1B7801DF8();
  v35 = v71;
  v36 = (v25 + v27[8]);
  *v36 = v34;
  v36[1] = v37;
  v82 = 5;
  sub_1B72153F8();
  sub_1B7801E48();
  v38 = v25 + v27[9];
  v39 = v79;
  *v38 = v78;
  *(v38 + 16) = v39;
  *(v38 + 32) = v80;
  v81 = 6;
  sub_1B721BFD0();
  sub_1B7801E48();
  *(v25 + v27[10]) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EEE8, &qword_1B78723A0);
  v81 = 7;
  sub_1B77FD698(&qword_1EB99EF10, &unk_1EB99DAA0, MEMORY[0x1E6969FE8], MEMORY[0x1E69E5FC0]);
  sub_1B7801DB8();
  v66 = 0;
  v43 = v76;
  v44 = v77;
  v45 = v75;
  v46 = v56;
  *v56 = v74;
  *(v46 + 1) = v45;
  *(v46 + 4) = v43;
  v46[40] = v44;
  LOBYTE(v74) = 8;
  sub_1B71A6C3C(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v47 = v61;
  v48 = v66;
  sub_1B7801E48();
  v66 = v48;
  if (v48)
  {
    (*(v68 + 8))(v69, v70);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v49 = 0;
LABEL_5:
    v40 = *(v33 + 8);
    v40(v25, v22);
    if (!v55[0])
    {
      v40(v25 + v27[5], v22);
    }

    v41 = v25 + v27[9];
    v42 = *(v41 + 16);
    v74 = *v41;
    v75 = v42;
    v76 = *(v41 + 32);
    sub_1B721722C(&v74);
    if (v49)
    {
      (*(v63 + 8))(v25 + v27[12], v62);
    }

    return sub_1B7205418(v25 + v72, &qword_1EB992798, &unk_1B781E7A0);
  }

  (*(v63 + 32))(v25 + v27[12], v47, v62);
  LOBYTE(v74) = 9;
  sub_1B71A6C3C(&qword_1EB99EF18, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
  v50 = v66;
  sub_1B7801DB8();
  v66 = v50;
  if (v50 || (sub_1B74D8918(v60, &v73[v72]), LOBYTE(v74) = 10, v51 = v66, v52 = sub_1B7801E08(), (v66 = v51) != 0) || (v73[v58[14]] = v52 & 1, LOBYTE(v74) = 11, sub_1B77FD734(), v53 = v66, sub_1B7801E48(), (v66 = v53) != 0))
  {
    (*(v68 + 8))(v69, v70);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v49 = 1;
    v25 = v73;
    v33 = v64;
    v27 = v58;
    goto LABEL_5;
  }

  (*(v68 + 8))(v69, v70);
  v54 = v73;
  sub_1B72A6B68(v73, v59);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return sub_1B72A6BCC(v54);
}

uint64_t PredictedTransaction.StylingMetadata.representativeTransactionID.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PredictedTransaction.StylingMetadata.displayDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for PredictedTransaction.StylingMetadata(0) + 20));

  return v1;
}

void PredictedTransaction.StylingMetadata.displayDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PredictedTransaction.StylingMetadata(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

double static ManagedPredictedTransaction.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98EB78 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_1B77FCFD8()
{
  if (qword_1EB98EB78 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t _s10FinanceKit20PredictedTransactionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FEA78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798, &unk_1B781E7A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EF70, &unk_1B78728E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = type metadata accessor for PredictedTransaction(0);
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = v14[6];
  v16 = a1 + v15;
  v17 = (a2 + v15);
  v18 = *(a2 + v15 + 15);
  if (*(a1 + v15 + 15))
  {
    if ((*(a2 + v15 + 15) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v19 = *v17;
    v20 = *(v17 + 14);
    v21 = *(v17 + 6);
    v22 = *(v17 + 2);
    v23 = *(v16 + 8);
    v24 = *(v16 + 12);
    v25 = *(v16 + 14);
    *&v65 = *v16;
    HIWORD(v65) = v25;
    WORD6(v65) = v24;
    DWORD2(v65) = v23;
    if (v18)
    {
      goto LABEL_18;
    }

    *&v63 = v19;
    DWORD2(v63) = v22;
    BYTE14(v63) = (v22 | ((v21 | (v20 << 16)) << 32)) >> 48;
    WORD6(v63) = (v22 | ((v21 | (v20 << 16)) << 32)) >> 32;
    if (!_s10FinanceKit16RecurringPaymentV19FrequencyComponentsV2eeoiySbAE_AEtFZ_0(&v65, &v63))
    {
      goto LABEL_18;
    }
  }

  if (*(a1 + v14[7]) != *(a2 + v14[7]))
  {
    goto LABEL_18;
  }

  v26 = v14[8];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v30 = (a1 + v14[9]);
  *&v64[1] = *(v30 + 4);
  v31 = v30[1];
  v63 = *v30;
  v64[0] = v31;
  v32 = (a2 + v14[9]);
  v33 = v32[1];
  v65 = *v32;
  v66[0] = v33;
  *&v66[1] = *(v32 + 4);
  LODWORD(v60) = v64[0];
  LODWORD(v61) = v33;
  v58 = *(&v63 + 1);
  v34 = v63;
  v59 = *(&v65 + 1);
  v57 = v65;
  sub_1B7215720(&v63, v62);
  sub_1B7215720(&v65, v62);
  if (MEMORY[0x1B8CA5970](v34, v58, v60, v57, v59, v61))
  {
    if (*(v64 + 8) == *(v66 + 8))
    {
      sub_1B721722C(&v65);
      sub_1B721722C(&v63);
      goto LABEL_17;
    }

    v35 = sub_1B78020F8();
    sub_1B721722C(&v65);
    sub_1B721722C(&v63);
    if (v35)
    {
LABEL_17:
      if (*(a1 + v14[10]) != *(a2 + v14[10]))
      {
        goto LABEL_18;
      }

      v38 = v14[11];
      v39 = (a1 + v38);
      v40 = *(a1 + v38 + 40);
      v41 = a2 + v38;
      if (v40)
      {
        if ((*(v41 + 40) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (*(v41 + 40))
        {
          goto LABEL_18;
        }

        v45 = *v39;
        v46 = v39[1];
        v47 = v39[2];
        v48 = v39[3];
        v59 = v39[4];
        v60 = v48;
        v50 = *(v41 + 16);
        v49 = *(v41 + 24);
        v57 = *(v41 + 32);
        v58 = v49;
        v61 = v47;
        if ((MEMORY[0x1B8CA5970](v45, v46) & 1) == 0)
        {
          goto LABEL_18;
        }

        *(&v52 + 1) = v60;
        *&v52 = v61;
        v51 = v52 >> 32;
        *(&v52 + 1) = v59;
        *&v52 = v60;
        v53 = v52 >> 32;
        *(&v52 + 1) = v58;
        *&v52 = v50;
        v54 = v52 >> 32;
        *(&v52 + 1) = v57;
        *&v52 = v58;
        if ((MEMORY[0x1B8CA5970](v51, v53, HIDWORD(v59), v54, v52 >> 32, HIDWORD(v57)) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if ((sub_1B77FF918() & 1) == 0)
      {
        goto LABEL_18;
      }

      v42 = v14[13];
      v43 = *(v11 + 48);
      sub_1B74D7608(a1 + v42, v13);
      v61 = v43;
      sub_1B74D7608(a2 + v42, &v13[v43]);
      v44 = *(v5 + 48);
      if (v44(v13, 1, v4) == 1)
      {
        if (v44(&v13[v61], 1, v4) == 1)
        {
          sub_1B7205418(v13, &qword_1EB992798, &unk_1B781E7A0);
          goto LABEL_34;
        }
      }

      else
      {
        sub_1B74D7608(v13, v10);
        if (v44(&v13[v61], 1, v4) != 1)
        {
          (*(v5 + 32))(v7, &v13[v61], v4);
          sub_1B71A6C3C(&qword_1EB99EF78, MEMORY[0x1E6968130], MEMORY[0x1E6968148]);
          v55 = sub_1B7800828();
          v56 = *(v5 + 8);
          v56(v7, v4);
          v56(v10, v4);
          sub_1B7205418(v13, &qword_1EB992798, &unk_1B781E7A0);
          if ((v55 & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_34:
          v36 = *(a1 + v14[14]) ^ *(a2 + v14[14]) ^ 1;
          return v36 & 1;
        }

        (*(v5 + 8))(v10, v4);
      }

      sub_1B7205418(v13, &qword_1EB99EF70, &unk_1B78728E0);
    }
  }

  else
  {
    sub_1B721722C(&v65);
    sub_1B721722C(&v63);
  }

LABEL_18:
  v36 = 0;
  return v36 & 1;
}

unint64_t sub_1B77FD5F0()
{
  result = qword_1EB99EEE0;
  if (!qword_1EB99EEE0)
  {
    result = swift_getWitnessTable(byte_1B787271C, &type metadata for PredictedTransaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EEE0);
  }

  return result;
}

unint64_t sub_1B77FD644()
{
  result = qword_1EB99EF00;
  if (!qword_1EB99EF00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedTransaction.Source, &type metadata for PredictedTransaction.Source, v0, v1);
    atomic_store(result, &qword_1EB99EF00);
  }

  return result;
}

uint64_t sub_1B77FD698(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99EEE8, &qword_1B78723A0);
    v10 = sub_1B71A6C3C(a2, type metadata accessor for Decimal, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B77FD734()
{
  result = qword_1EB99EF20;
  if (!qword_1EB99EF20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedTransaction.Source, &type metadata for PredictedTransaction.Source, v0, v1);
    atomic_store(result, &qword_1EB99EF20);
  }

  return result;
}

unint64_t _s10FinanceKit27ManagedPredictedTransactionC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8, &qword_1B7809FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7856360;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 25705;
  *(inited + 48) = 0xE200000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000024;
  *(inited + 72) = 0x80000001B78869B0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x80000001B7882370;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x746E756F6D61;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x79636E6572727563;
  *(inited + 144) = 0xE800000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000019;
  *(inited + 168) = 0x80000001B78822D0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000019;
  *(inited + 192) = 0x80000001B78822D0;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "predictedDate");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x7272756365527369;
  *(inited + 240) = 0xEB00000000676E69;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000012;
  *(inited + 264) = 0x80000001B78823A0;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0, &qword_1B780D3E0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1B77FD9D0()
{
  result = qword_1EB99EF28;
  if (!qword_1EB99EF28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedTransaction.Source, &type metadata for PredictedTransaction.Source, v0, v1);
    atomic_store(result, &qword_1EB99EF28);
  }

  return result;
}

unint64_t sub_1B77FDA28()
{
  result = qword_1EB99EF30;
  if (!qword_1EB99EF30)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99EF38, &qword_1B7872530);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB99EF30);
  }

  return result;
}

void sub_1B77FDAB4(uint64_t a1)
{
  sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    sub_1B77FDBBC();
    if (v2 <= 0x3F)
    {
      sub_1B77FDC0C(319);
      if (v3 <= 0x3F)
      {
        sub_1B77FF988();
        if (v4 <= 0x3F)
        {
          sub_1B77FDC70(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B77FDBBC()
{
  if (!qword_1EDAFCD70)
  {
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAFCD70);
    }
  }
}

void sub_1B77FDC0C(uint64_t a1)
{
  if (!qword_1EDAFC620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99EEE8, &qword_1B78723A0);
    v1 = sub_1B7801768();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDAFC620);
    }
  }
}

void sub_1B77FDC70(uint64_t a1)
{
  if (!qword_1EDAFC650)
  {
    sub_1B77FEA78();
    v1 = sub_1B7801768();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDAFC650);
    }
  }
}

uint64_t sub_1B77FDD00(uint64_t a1)
{
  result = sub_1B77FFA18();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B77FDD88()
{
  result = qword_1EB99EF50;
  if (!qword_1EB99EF50)
  {
    result = swift_getWitnessTable(aUgb7h, &type metadata for PredictedTransaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EF50);
  }

  return result;
}

unint64_t sub_1B77FDDE0()
{
  result = qword_1EB99EF58;
  if (!qword_1EB99EF58)
  {
    result = swift_getWitnessTable(byte_1B7872664, &type metadata for PredictedTransaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EF58);
  }

  return result;
}

unint64_t sub_1B77FDE38()
{
  result = qword_1EB99EF60;
  if (!qword_1EB99EF60)
  {
    result = swift_getWitnessTable(byte_1B787268C, &type metadata for PredictedTransaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99EF60);
  }

  return result;
}

uint64_t sub_1B77FDE8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7272756365527369 && a2 == 0xEB00000000676E69 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7882370 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875C70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6152746E756F6D61 && a2 == 0xEB0000000065676ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574636964657270 && a2 == 0xED00006574614464 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B788E8F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78823A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1B77FE25C()
{
  result = qword_1EB99EF68;
  if (!qword_1EB99EF68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedTransaction.Source, &type metadata for PredictedTransaction.Source, v0, v1);
    atomic_store(result, &qword_1EB99EF68);
  }

  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}