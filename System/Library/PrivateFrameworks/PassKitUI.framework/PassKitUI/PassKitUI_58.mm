uint64_t sub_1BD6266BC()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  v4 = sub_1BE049B04();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range, &qword_1EBD38DB8, &unk_1BE0BD340);
  *(v0 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store), v5, v6, v7, v8, v9, v10, v11;
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__institution, &qword_1EBD498D0, &unk_1BE0E8DD0);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account, &qword_1EBD498C8, &unk_1BE0DF580);
  *(v0 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions), v12, v13, v14, v15, v16, v17, v18;
  v19 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel___observationRegistrar;
  v20 = sub_1BE04B5D4();
  (*(*(v20 - 8) + 8))(v0 + v19, v20);

  return swift_deallocClassInstance();
}

void sub_1BD626880(uint64_t a1)
{
  sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    sub_1BE049B04();
    if (v2 <= 0x3F)
    {
      sub_1BD0F5C4C(319);
      if (v3 <= 0x3F)
      {
        sub_1BD626A84(319, &qword_1EBD4D590, MEMORY[0x1E69676C0]);
        if (v4 <= 0x3F)
        {
          sub_1BD626A84(319, &qword_1EBD4D598, MEMORY[0x1E6967810]);
          if (v5 <= 0x3F)
          {
            sub_1BE04B5D4();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BD626A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD626B20(uint64_t a1)
{
  sub_1BD49DA08(319);
  if (v1 <= 0x3F)
  {
    sub_1BE049A94();
    if (v2 <= 0x3F)
    {
      sub_1BE049184();
      if (v3 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD4D5B0, off_1E8005DD0);
        if (v4 <= 0x3F)
        {
          sub_1BD626C44(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD626BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD626C44(uint64_t a1)
{
  if (!qword_1EBD4D5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38DB0, &unk_1BE0B7DB0);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4D5B8);
    }
  }
}

uint64_t sub_1BD626D08@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37228, &qword_1BE0B1248);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  sub_1BD627168(v1, (&v43 - v4));
  v6 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1BD628898(v1, &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BE0528A4();
  v9 = sub_1BE052894();
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_1BD6288FC(&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v13 = sub_1BE0528D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v43 - v16;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v46 = sub_1BE04EAA4();
    v47 = &v43;
    v45 = *(v46 - 8);
    MEMORY[0x1EEE9AC00](v46);
    v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1BE053834();
    v50, v19, v20, v21, v22, v23, v24, v25;
    v49 = 0xD000000000000045;
    v50 = 0x80000001BE131C50;
    v48 = 356;
    v26 = sub_1BE053B24();
    v28 = v27;
    MEMORY[0x1BFB3F610](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    v43 = v5;
    v37 = MEMORY[0x1EEE9AC00](v36);
    (*(v14 + 16))(&v43 - v16, &v43 - v16, v13, v37);
    v38 = v44;
    sub_1BE04EA94();
    (*(v14 + 8))(v17, v13);
    sub_1BD0DE204(v43, a1, &qword_1EBD37228, &qword_1BE0B1248);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37230, &qword_1BE0B1250);
    return (*(v45 + 32))(a1 + *(v39 + 36), v38, v46);
  }

  else
  {
    v41 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37238, &qword_1BE0B1258) + 36));
    v42 = sub_1BE04E7B4();
    (*(v14 + 32))(&v41[*(v42 + 20)], &v43 - v16, v13);
    *v41 = &unk_1BE0E8AC8;
    *(v41 + 1) = v11;
    return sub_1BD0DE204(v5, a1, &qword_1EBD37228, &qword_1BE0B1248);
  }
}

uint64_t sub_1BD627168@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v4 = v3 - 8;
  v23 = *(v3 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5C8, &qword_1BE0E8AE0);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5D0, &qword_1BE0E8AE8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5D8, &qword_1BE0E8AF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v27 = *(a1 + *(v4 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5C0, &qword_1BE0E8AD8);
  sub_1BE0516A4();
  v14 = v26;
  if (v26)
  {
    sub_1BD628898(a1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v16 = swift_allocObject();
    v17 = sub_1BD6288FC(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    MEMORY[0x1EEE9AC00](v17);
    *(&v23 - 2) = v14;
    *(&v23 - 1) = a1;
    sub_1BD628C9C();
    sub_1BE051704();
    v18 = &v7[*(v24 + 36)];
    v18[32] = 0;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    sub_1BD0DE19C(v7, v10, &qword_1EBD4D5C8, &qword_1BE0E8AE0);
    swift_storeEnumTagMultiPayload();
    sub_1BD628A98();
    sub_1BD628B7C();
    sub_1BE04F9A4();

    v19 = v7;
    v20 = &qword_1EBD4D5C8;
    v21 = &qword_1BE0E8AE0;
  }

  else
  {
    sub_1BE04E4F4();
    *&v13[*(v11 + 36)] = 0;
    sub_1BD0DE19C(v13, v10, &qword_1EBD4D5D8, &qword_1BE0E8AF0);
    swift_storeEnumTagMultiPayload();
    sub_1BD628A98();
    sub_1BD628B7C();
    sub_1BE04F9A4();
    v19 = v13;
    v20 = &qword_1EBD4D5D8;
    v21 = &qword_1BE0E8AF0;
  }

  return sub_1BD0DE53C(v19, v20, v21);
}

void sub_1BD62750C(char *a1)
{
  v2 = sub_1BE049184();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v8 = sub_1BE04AFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = *a1;
  if (*a1)
  {
    v14 = &v50 - v12;
    v15 = type metadata accessor for FinanceKitInternalTransactionCell(0);
    sub_1BE048964();
    v55 = v14;
    sub_1BE049A14();
    v16 = *(v3 + 16);
    v16(v7, &a1[*(v15 + 24)], v2);
    v50 = v2;
    v51 = v16;
    v54 = v3;
    v17 = *(v9 + 16);
    v17(v56, v14, v8);
    v18 = v17;
    v16(v57, v7, v2);
    v52 = _s9ViewModelCMa_3(0);
    v19 = swift_allocObject();
    v53 = v7;
    v20 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
    v21 = sub_1BE049A94();
    (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
    v22 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
    v23 = sub_1BE0495A4();
    (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
    v24 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
    v25 = sub_1BE048F54();
    (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
    sub_1BE048964();
    sub_1BE04B5C4();
    v26 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID;
    v27 = v56;
    v18(v19 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, v56, v8);
    (*(v9 + 56))(v19 + v26, 0, 1, v8);
    v28 = v13;
    v29 = v8;
    v30 = v57;
    v31 = v50;
    v51(v19 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution, v57, v50);
    *(v19 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_style) = 0;
    v32 = *(v54 + 8);
    v33 = v31;
    v32(v30, v31);
    v34 = *(v9 + 8);
    v34(v27, v29);
    *(v19 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights) = MEMORY[0x1E69E7CC0];
    v58 = v19;
    sub_1BE051694();
    v32(v53, v33);
    v34(v55, v29);
    v35 = v59;
    v60 = sub_1BD628CF0;
    v61 = v28;
    v62 = 0;
    sub_1BD9824C4(&v59);
    v35, v36, v37, v38, v39, v40, v41, v42;

    *(&v35 + 1), v43, v44, v45, v46, v47, v48, v49;
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD626BFC(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD6279EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BE049184();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD498E8, 0x1E6967DF8);
  v10 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  (*(v7 + 16))(v9, a2 + *(v10 + 24), v6);
  v11 = sub_1BE052BF4();
  v12 = [objc_opt_self() transactionFromFKPaymentTransaction:a1 institution:v11];

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 presentationInformationForTransaction:v14 transactionSource:0 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
  v16 = *(a2 + *(v10 + 28));
  type metadata accessor for TransactionPresentation(0);
  swift_allocObject();
  v17 = v16;
  v18 = sub_1BD6AF5A8(v14, v15, v16);

  sub_1BD626BFC(&qword_1EBD3B840, type metadata accessor for TransactionPresentation, &unk_1BE0EF098);
  sub_1BE048964();
  v19 = sub_1BE04E954();
  v21 = v20;
  sub_1BD6AE91C();

  v18, v22, v23, v24, v25, v26, v27, v28;
  *a3 = v19;
  a3[1] = v21;
}

uint64_t sub_1BD627C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v3[7] = swift_task_alloc();
  v4 = sub_1BE04D214();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1BE04AFE4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_1BE0528A4();
  v3[15] = sub_1BE052894();
  v7 = sub_1BE052844();
  v3[16] = v7;
  v3[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD627DC8, v7, v6);
}

uint64_t sub_1BD627DC8()
{
  sub_1BE0490F4();
  v0[18] = sub_1BE0490B4();
  sub_1BE049A14();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1BD627EA4;
  v2 = v0[14];

  return MEMORY[0x1EEDC1478](v2);
}

uint64_t sub_1BD627EA4(uint64_t a1)
{
  v4 = *v2;
  v4[20] = v1;

  v5 = v4[18];
  v6 = v4[14];
  v7 = v4[12];
  v8 = v4[11];
  if (v1)
  {
    v9 = *(v7 + 8);
    v4[22] = v9;
    v4[23] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);
    v5, v10, v11, v12, v13, v14, v15, v16;
    v17 = v4[16];
    v18 = v4[17];
    v19 = sub_1BD62812C;
  }

  else
  {
    v4[21] = a1;
    (*(v7 + 8))(v6, v8);
    v5, v20, v21, v22, v23, v24, v25, v26;
    v17 = v4[16];
    v18 = v4[17];
    v19 = sub_1BD62805C;
  }

  return MEMORY[0x1EEE6DFA0](v19, v17, v18);
}

uint64_t sub_1BD62805C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 168);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 16) = *(v10 + *(v11 + 32));
  *(v8 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5C0, &qword_1BE0E8AD8);
  sub_1BE0516B4();

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1BD62812C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v54 = v8;
  v9 = *(v8 + 160);
  v10 = *(v8 + 56);
  v11 = *(v8 + 40);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D114();
  sub_1BD628898(v11, v10);
  v12 = v9;
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C34();

  if (os_log_type_enabled(v13, v14))
  {
    v47 = *(v8 + 176);
    v48 = *(v8 + 160);
    v15 = *(v8 + 104);
    v16 = *(v8 + 88);
    v50 = *(v8 + 72);
    v51 = *(v8 + 64);
    v52 = *(v8 + 80);
    v17 = *(v8 + 56);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v18 = 136315394;
    sub_1BE049A14();
    sub_1BD626BFC(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1BE053B24();
    v22 = v21;
    v47(v15, v16);
    sub_1BD628A3C(v17);
    v23 = sub_1BD123690(v20, v22, &v53);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v31 = v48;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v32;
    *v19 = v32;
    _os_log_impl(&dword_1BD026000, v13, v14, "Failed to load FKPaymentTransaction for id: %s with error: %@.", v18, 0x16u);
    sub_1BD0DE53C(v19, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v49, v33, v34, v35, v36, v37, v38, v39);
    MEMORY[0x1BFB45F20](v49, -1, -1);
    MEMORY[0x1BFB45F20](v18, -1, -1);

    (*(v50 + 8))(v52, v51);
  }

  else
  {
    v40 = *(v8 + 160);
    v42 = *(v8 + 72);
    v41 = *(v8 + 80);
    v44 = *(v8 + 56);
    v43 = *(v8 + 64);

    sub_1BD628A3C(v44);
    (*(v42 + 8))(v41, v43);
  }

  v45 = *(v8 + 8);

  return v45();
}

uint64_t sub_1BD628424(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE04AFE4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = *(a1 + 16);
  v13 = v12 == 0;
  v29 = v12;
  if (!v12)
  {
    return 0;
  }

  v27 = v2;
  v28 = v9;
  v35 = v9 + 16;
  v36 = a2 + 56;
  v14 = (v9 + 8);
  v15 = sub_1BE049A94();
  v16 = 0;
  v17 = *(v15 - 8);
  v32 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v31 = *(v17 + 72);
  v37 = v11;
  while (1)
  {
    v30 = v13;
    v33 = v16;
    sub_1BE049A14();
    if (*(a2 + 16))
    {
      sub_1BD626BFC(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v18 = sub_1BE052284();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if ((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_3:
    (*v14)(v37, v5);
    v16 = v33 + 1;
    v13 = v33 + 1 == v29;
    if (v33 + 1 == v29)
    {
      return 0;
    }
  }

  v34 = ~v19;
  v21 = *(v28 + 72);
  v22 = *(v28 + 16);
  while (1)
  {
    v23 = a2;
    v22(v7, *(a2 + 48) + v21 * v20, v5);
    sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v24 = sub_1BE052334();
    v25 = *v14;
    (*v14)(v7, v5);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v34;
    a2 = v23;
    if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v25(v37, v5);
  return v33;
}

id sub_1BD628774@<X0>(uint64_t a2@<X8>)
{
  sub_1BE051694();
  sub_1BE051694();
  sub_1BE051694();
  result = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
  if (result)
  {
    v4 = result;
    type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel(0);
    result = sub_1BE051694();
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
    *(a2 + 48) = v5;
    *(a2 + 56) = v6;
    *(a2 + 64) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD628898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6288FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD628960()
{
  v2 = *(type metadata accessor for FinanceKitInternalTransactionCell(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD627C3C(v4, v5, v0 + v3);
}

uint64_t sub_1BD628A3C(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD628A98()
{
  result = qword_1EBD4D5E0;
  if (!qword_1EBD4D5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D5C8, &qword_1BE0E8AE0);
    sub_1BD0DE4F4(&qword_1EBD4D5E8, &qword_1EBD4D5F0, &qword_1BE0E8AF8, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D5E0);
  }

  return result;
}

unint64_t sub_1BD628B7C()
{
  result = qword_1EBD4D5F8;
  if (!qword_1EBD4D5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D5D8, &qword_1BE0E8AF0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D5F8);
  }

  return result;
}

void sub_1BD628C34()
{
  v1 = *(type metadata accessor for FinanceKitInternalTransactionCell(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1BD62750C(v2);
}

unint64_t sub_1BD628C9C()
{
  result = qword_1EBD4D600;
  if (!qword_1EBD4D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D600);
  }

  return result;
}

unint64_t sub_1BD628D28()
{
  result = qword_1EBD4D748;
  if (!qword_1EBD4D748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D740, &qword_1BE0E8DA8);
    sub_1BD628DCC();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0, &unk_1BE0B7F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D748);
  }

  return result;
}

unint64_t sub_1BD628DCC()
{
  result = qword_1EBD4D750;
  if (!qword_1EBD4D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D698, &qword_1BE0E8C30);
    sub_1BD628E58();
    sub_1BD629744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D750);
  }

  return result;
}

unint64_t sub_1BD628E58()
{
  result = qword_1EBD4D758;
  if (!qword_1EBD4D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D690, &qword_1BE0E8C28);
    sub_1BD628EE4();
    sub_1BD629744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D758);
  }

  return result;
}

unint64_t sub_1BD628EE4()
{
  result = qword_1EBD4D760;
  if (!qword_1EBD4D760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D688, &qword_1BE0E8C20);
    sub_1BD628F70();
    sub_1BD6295B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D760);
  }

  return result;
}

unint64_t sub_1BD628F70()
{
  result = qword_1EBD4D768;
  if (!qword_1EBD4D768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D680, &qword_1BE0E8C18);
    sub_1BD628FFC();
    sub_1BD629320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D768);
  }

  return result;
}

unint64_t sub_1BD628FFC()
{
  result = qword_1EBD4D770;
  if (!qword_1EBD4D770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D678, &qword_1BE0E8C10);
    sub_1BD58197C();
    sub_1BD629088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D770);
  }

  return result;
}

unint64_t sub_1BD629088()
{
  result = qword_1EBD4D778;
  if (!qword_1EBD4D778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D670, &qword_1BE0E8BF8);
    sub_1BD62912C();
    sub_1BD0FA424(&qword_1EBD4D7A8, &qword_1EBD4D660, &qword_1BE110000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D778);
  }

  return result;
}

unint64_t sub_1BD62912C()
{
  result = qword_1EBD4D780;
  if (!qword_1EBD4D780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D668, &qword_1BE0E8BF0);
    sub_1BD6291B8();
    sub_1BD62926C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D780);
  }

  return result;
}

unint64_t sub_1BD6291B8()
{
  result = qword_1EBD4D788;
  if (!qword_1EBD4D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D6A0, &qword_1BE0E8C68);
    sub_1BD626BFC(&qword_1EBD4D790, MEMORY[0x1E6967B20], MEMORY[0x1E6967B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D788);
  }

  return result;
}

unint64_t sub_1BD62926C()
{
  result = qword_1EBD4D798;
  if (!qword_1EBD4D798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D6A0, &qword_1BE0E8C68);
    sub_1BD626BFC(&qword_1EBD4D7A0, MEMORY[0x1E6967B20], MEMORY[0x1E6967B28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D798);
  }

  return result;
}

unint64_t sub_1BD629320()
{
  result = qword_1EBD4D7B0;
  if (!qword_1EBD4D7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D658, &unk_1BE0E8BE0);
    sub_1BD6293C4();
    sub_1BD0FA424(&qword_1EBD4D7E0, &qword_1EBD4D648, &qword_1BE0E8BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7B0);
  }

  return result;
}

unint64_t sub_1BD6293C4()
{
  result = qword_1EBD4D7B8;
  if (!qword_1EBD4D7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D650, &qword_1BE0E8BD8);
    sub_1BD629450();
    sub_1BD629504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7B8);
  }

  return result;
}

unint64_t sub_1BD629450()
{
  result = qword_1EBD4D7C0;
  if (!qword_1EBD4D7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D6C8, &qword_1BE0E8CA0);
    sub_1BD626BFC(&qword_1EBD4D7C8, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7C0);
  }

  return result;
}

unint64_t sub_1BD629504()
{
  result = qword_1EBD4D7D0;
  if (!qword_1EBD4D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D6C8, &qword_1BE0E8CA0);
    sub_1BD626BFC(&qword_1EBD4D7D8, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7D0);
  }

  return result;
}

unint64_t sub_1BD6295B8()
{
  result = qword_1EBD4D7E8;
  if (!qword_1EBD4D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D640, &qword_1BE0E8BC8);
    sub_1BD0FA424(&qword_1EBD4D7F0, &qword_1EBD4D638, &qword_1BE0E8BC0);
    sub_1BD62965C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7E8);
  }

  return result;
}

unint64_t sub_1BD62965C()
{
  result = qword_1EBD4D7F8;
  if (!qword_1EBD4D7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D630, &qword_1BE0E8BB8);
    v1 = MEMORY[0x1E6967988];
    sub_1BD626BFC(&qword_1EBD4D800, MEMORY[0x1E6967988], MEMORY[0x1E69679A8]);
    sub_1BD626BFC(&qword_1EBD4D808, v1, MEMORY[0x1E6967990]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7F8);
  }

  return result;
}

unint64_t sub_1BD629744()
{
  result = qword_1EBD4D810;
  if (!qword_1EBD4D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D628, &qword_1BE0E8BB0);
    sub_1BD0FA424(&qword_1EBD49A90, &qword_1EBD49A38, &qword_1BE0DF8F8);
    sub_1BD6297E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D810);
  }

  return result;
}

unint64_t sub_1BD6297E8()
{
  result = qword_1EBD4D818;
  if (!qword_1EBD4D818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D620, &unk_1BE0E8BA0);
    sub_1BD62986C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D818);
  }

  return result;
}

unint64_t sub_1BD62986C()
{
  result = qword_1EBD4D820;
  if (!qword_1EBD4D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D618, &qword_1BE0E8B98);
    sub_1BD6298F8();
    sub_1BD6299AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D820);
  }

  return result;
}

unint64_t sub_1BD6298F8()
{
  result = qword_1EBD4B4F0;
  if (!qword_1EBD4B4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BD626BFC(&qword_1EBD49AA0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B4F0);
  }

  return result;
}

unint64_t sub_1BD6299AC()
{
  result = qword_1EBD4B500;
  if (!qword_1EBD4B500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BD626BFC(&qword_1EBD49AA8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B500);
  }

  return result;
}

uint64_t sub_1BD629A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0495A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D840, &qword_1BE0E8F10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v21 - v12, &qword_1EBD498C8, &unk_1BE0DF580);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD498C8, &unk_1BE0DF580);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &qword_1EBD498C8, &unk_1BE0DF580);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BD626BFC(&qword_1EBD4D848, MEMORY[0x1E6967810], MEMORY[0x1E6967820]);
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &qword_1EBD498C8, &unk_1BE0DF580);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD4D840, &qword_1BE0E8F10);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE53C(v13, &qword_1EBD498C8, &unk_1BE0DF580);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1BD629D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049184();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D850, &qword_1BE0E8F40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v21 - v12, &qword_1EBD498D0, &unk_1BE0E8DD0);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD498D0, &unk_1BE0E8DD0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &qword_1EBD498D0, &unk_1BE0E8DD0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BD626BFC(&qword_1EBD4D858, MEMORY[0x1E69676C0], MEMORY[0x1E69676C8]);
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &qword_1EBD498D0, &unk_1BE0E8DD0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD4D850, &qword_1BE0E8F40);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE53C(v13, &qword_1EBD498D0, &unk_1BE0E8DD0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1BD62A0B0(uint64_t a1, void *a2)
{
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAB0, &unk_1BE0BFCF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v38 = sub_1BE049A94();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = *a2;
  v15 = *(*a2 + 16);
  if (v15)
  {
    v29 = v5;
    v30 = a2;
    v16 = 2 * v15;
    v33 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v34 = v6;
    v37 = v6 + 16;
    v31 = v14;
    v32 = v6 + 8;
    v17 = (v11 + 8);
    result = sub_1BE048C84();
    v19 = 0;
    do
    {
      v20 = v19 + ((v16 >> 1) - v19) / 2;
      if (__OFADD__(v19, ((v16 >> 1) - v19) / 2))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      result = sub_1BE049974();
      if (v20 < v19 || v20 >= (v16 >> 1))
      {
        goto LABEL_18;
      }

      v22 = v34;
      v23 = *(v34 + 16);
      v24 = v36;
      v25 = v38;
      v23(v36, v33 + *(v34 + 72) * v20, v38);
      sub_1BE049974();
      (*(v22 + 8))(v24, v25);
      LOBYTE(v24) = sub_1BE04AE84();
      v26 = *v17;
      v27 = v35;
      (*v17)(v9, v35);
      result = (v26)(v13, v27);
      if (v24)
      {
        v16 = 2 * v20;
      }

      else
      {
        v19 = v20 + 1;
      }
    }

    while (v19 != v16 >> 1);
    if (*(v31 + 16) >= v19)
    {
      v5 = v29;
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
  }

  else
  {
    v23 = *(v6 + 16);
    sub_1BE048C84();
    v19 = 0;
LABEL_16:
    v23(v5, v39, v38);
    sub_1BD1DA5E0(v19, v19, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD62A3FC(void **a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = sub_1BE049A94();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v54 = a1;
  v19 = *a1;
  v20 = v73;
  result = sub_1BD628424(v19, a2);
  if (!v20)
  {
    v65 = v18;
    v66 = result;
    if (v22)
    {
      return v19[2];
    }

    else
    {
      v23 = v66 + 1;
      if (!__OFADD__(v66, 1))
      {
        v51 = 0;
        v64 = v12 + 16;
        v70 = v5 + 16;
        v72 = a2 + 56;
        v73 = (v5 + 8);
        v58 = (v12 + 8);
        v53 = (v12 + 40);
        v24 = v65;
        v52 = v5;
        v74 = v10;
        v71 = v7;
        v63 = v11;
        v57 = v12;
        while (1)
        {
          v27 = v19[2];
          if (v23 == v27)
          {
            return v66;
          }

          if (v23 >= v27)
          {
            break;
          }

          v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
          v68 = v19;
          v69 = v23;
          v59 = v28;
          v29 = v19 + v28;
          v60 = *(v12 + 72);
          v30 = v60 * v23;
          v31 = *(v12 + 16);
          v67 = v30;
          v61 = v31;
          v62 = v29;
          v31(v24, &v29[v30], v11);
          sub_1BE049A14();
          if (*(a2 + 16) && (sub_1BD626BFC(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v32 = sub_1BE052284(), v33 = -1 << *(a2 + 32), v34 = v32 & ~v33, ((*(v72 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
          {
            v35 = ~v33;
            v36 = *(v52 + 72);
            v37 = *(v52 + 16);
            while (1)
            {
              v38 = a2;
              v39 = v71;
              v37(v71, *(a2 + 48) + v36 * v34, v4);
              sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v40 = sub_1BE052334();
              v41 = *v73;
              (*v73)(v39, v4);
              if (v40)
              {
                break;
              }

              v34 = (v34 + 1) & v35;
              a2 = v38;
              if (((*(v72 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v41(v74, v4);
            v24 = v65;
            v11 = v63;
            result = (*v58)(v65, v63);
            a2 = v38;
            v19 = v68;
            v25 = v69;
          }

          else
          {
LABEL_15:
            (*v73)(v74, v4);
            v24 = v65;
            v11 = v63;
            result = (*v58)(v65, v63);
            v42 = v66;
            v25 = v69;
            if (v66 == v69)
            {
              v19 = v68;
            }

            else
            {
              if ((v66 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v43 = v68[2];
              if (v66 >= v43)
              {
                goto LABEL_32;
              }

              v44 = v61;
              v45 = v60 * v66;
              v46 = v62;
              result = (v61)(v56, &v62[v60 * v66], v11);
              if (v69 >= v43)
              {
                goto LABEL_33;
              }

              v44(v55, &v46[v67], v11);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_1BD4FFF40(v68);
              }

              v47 = v68 + v59;
              v48 = *v53;
              v49 = v68 + v59 + v45;
              v19 = v68;
              v11 = v63;
              result = (*v53)(v49, v55, v63);
              if (v69 >= v19[2])
              {
                goto LABEL_34;
              }

              result = v48(&v47[v67], v56, v11);
              v25 = v69;
              *v54 = v19;
              v24 = v65;
            }

            v26 = __OFADD__(v42, 1);
            v50 = v42 + 1;
            if (v26)
            {
              goto LABEL_30;
            }

            v66 = v50;
          }

          v26 = __OFADD__(v25, 1);
          v23 = v25 + 1;
          v12 = v57;
          if (v26)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1BD62A9C0()
{
  result = qword_1EBD4D838;
  if (!qword_1EBD4D838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D830, &qword_1BE0E8F08);
    sub_1BD0F9F28();
    sub_1BD2737D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D838);
  }

  return result;
}

void sub_1BD62AA4C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions) = *(v0 + 24);
  sub_1BE048C84();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD62AAF8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store) = *(v0 + 24);
  sub_1BE048964();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

unint64_t sub_1BD62ABF0()
{
  result = qword_1EBD4D860;
  if (!qword_1EBD4D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37228, &qword_1BE0B1248);
    sub_1BD62AC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D860);
  }

  return result;
}

unint64_t sub_1BD62AC74()
{
  result = qword_1EBD4D868;
  if (!qword_1EBD4D868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D870, qword_1BE0E8F48);
    sub_1BD628A98();
    sub_1BD628B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D868);
  }

  return result;
}

unint64_t sub_1BD62AD24()
{
  result = qword_1EBD4D8A8;
  if (!qword_1EBD4D8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D8A0, &qword_1BE0E8FD0);
    sub_1BD62ADA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8A8);
  }

  return result;
}

unint64_t sub_1BD62ADA8()
{
  result = qword_1EBD4D8B0;
  if (!qword_1EBD4D8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D8B8, &qword_1BE0E8FD8);
    sub_1BD62AE40();
    sub_1BD0F92F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8B0);
  }

  return result;
}

unint64_t sub_1BD62AE40()
{
  result = qword_1EBD4D8C0;
  if (!qword_1EBD4D8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D8C8, &qword_1BE0E8FE0);
    sub_1BD0DE4F4(&qword_1EBD4D8D0, &qword_1EBD4D8D8, &qword_1BE0E8FE8, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8C0);
  }

  return result;
}

unint64_t sub_1BD62AF24()
{
  result = qword_1EBD4D8E0;
  if (!qword_1EBD4D8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D898, &qword_1BE0E8FC8);
    sub_1BD0DE4F4(&qword_1EBD4D8E8, &qword_1EBD4D8F0, &unk_1BE0E8FF0, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8E0);
  }

  return result;
}

double sub_1BD62B010@<D0>(_OWORD *a1@<X8>)
{
  sub_1BD61C3A0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

unint64_t sub_1BD62B094()
{
  result = qword_1EBD4D8F8;
  if (!qword_1EBD4D8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D878, &qword_1BE0E8FA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D880, &qword_1BE0E8FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D888, &qword_1BE0E8FB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CD8, &unk_1BE0B7C90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D890, &qword_1BE0E8FC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D898, &qword_1BE0E8FC8);
    sub_1BD62AF24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CE0, &unk_1BE0E9010);
    sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0, &unk_1BE0E9010, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD279F20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8F8);
  }

  return result;
}

uint64_t sub_1BD62B2E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD61C850(v2, v3, v0 + 32);
}

uint64_t objectdestroy_124Tm_0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;
  v8[9], v30, v31, v32, v33, v34, v35, v36;

  return swift_deallocObject();
}

double sub_1BD62B3F8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  sub_1BE0516B4();
  return result;
}

double sub_1BD62B450@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(sub_1BE049184() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BD61B214(a1, v2 + v6, v7, a2);
}

unint64_t sub_1BD62B500()
{
  result = qword_1EBD4D940;
  if (!qword_1EBD4D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D940);
  }

  return result;
}

unint64_t sub_1BD62B558()
{
  result = qword_1EBD4D948;
  if (!qword_1EBD4D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D948);
  }

  return result;
}

uint64_t sub_1BD62B630()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB348);
  __swift_project_value_buffer(v6, qword_1EBDAB348);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD62B844(uint64_t a1)
{
  v1[52] = a1;
  sub_1BE04B0F4();
  v1[53] = swift_task_alloc();
  v2 = sub_1BE04A874();
  v1[54] = v2;
  v1[55] = *(v2 - 8);
  v1[56] = swift_task_alloc();
  sub_1BE0523D4();
  v1[57] = swift_task_alloc();
  sub_1BE0523B4();
  v1[58] = swift_task_alloc();
  sub_1BE04A884();
  v1[59] = swift_task_alloc();
  v3 = sub_1BE048654();
  v1[60] = v3;
  v1[61] = *(v3 - 8);
  v1[62] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v1[63] = v4;
  v1[64] = *(v4 - 8);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v1[67] = v5;
  v1[68] = *(v5 - 8);
  v1[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD62BAD4, 0, 0);
}

uint64_t sub_1BD62BAD4(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:GetDefaultCardIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v6 = v1[69];
  v7 = v1[68];
  v8 = v1[67];
  v9 = v1[66];
  v10 = v1[65];
  v11 = v1[63];
  v12 = v1[64];

  (*(v12 + 16))(v10, v9, v11);
  sub_1BE04D024();
  swift_allocObject();
  v13 = sub_1BE04D014();
  v1[70] = v13;
  (*(v12 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  v14 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v1[71] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 defaultPaymentPassIdentifier];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_opt_self() sharedInstance];
      v1[72] = v18;
      if (v18)
      {
        v19 = v18;
        v20 = [v18 passWithUniqueID_];
        v1[73] = v20;

        v17 = v19;
        if (v20)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
          v21 = swift_allocObject();
          v1[74] = v21;
          *(v21 + 16) = xmmword_1BE0B7020;
          *(v21 + 32) = v20;
          v22 = v20;
          v23 = swift_task_alloc();
          v1[75] = v23;
          *v23 = v1;
          v23[1] = sub_1BD62BEA4;

          return sub_1BD0391EC(v21, 1);
        }
      }

      v15 = v17;
    }
  }

  sub_1BE0484B4();
  sub_1BD1029F4();
  swift_allocError();
  sub_1BE048B24();
  swift_willThrow();
  sub_1BD62C430(v13);
  v13, v25, v26, v27, v28, v29, v30, v31;

  v32 = v1[1];

  return v32();
}

uint64_t sub_1BD62BEA4(uint64_t a1)
{
  v2 = *(*v1 + 592);
  *(*v1 + 608) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD62BFC4, 0, 0);
}

uint64_t sub_1BD62BFC4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 608);
  if (*(v9 + 16))
  {
    v10 = *(v9 + 32);
    v11 = *(v9 + 48);
    v12 = *(v9 + 80);
    *(v8 + 48) = *(v9 + 64);
    *(v8 + 64) = v12;
    *(v8 + 16) = v10;
    *(v8 + 32) = v11;
    sub_1BD0303B8(v8 + 16, v8 + 80);
    v9, v13, v14, v15, v16, v17, v18, v19;
    sub_1BE0487C4();
    v20 = *(v8 + 408);
    if (v20)
    {
      v21 = *(v8 + 32);
      *(v8 + 272) = *(v8 + 16);
      *(v8 + 288) = v21;
      v22 = *(v8 + 64);
      *(v8 + 304) = *(v8 + 48);
      *(v8 + 320) = v22;
      sub_1BD0303B8(v8 + 16, v8 + 336);
      sub_1BE0523A4();
      sub_1BE052394();
      sub_1BE052374();
      v20, v23, v24, v25, v26, v27, v28, v29;
      sub_1BE052394();
      sub_1BE0523C4();
      if (qword_1EBD36CF8 != -1)
      {
        swift_once();
      }

      v53 = *(v8 + 568);
      v55 = *(v8 + 576);
      v59 = *(v8 + 584);
      v61 = *(v8 + 560);
      v31 = *(v8 + 488);
      v30 = *(v8 + 496);
      v57 = *(v8 + 480);
      v32 = *(v8 + 448);
      v34 = *(v8 + 432);
      v33 = *(v8 + 440);
      v35 = __swift_project_value_buffer(v34, qword_1EBDAB400);
      (*(v33 + 16))(v32, v35, v34);
      sub_1BE04B0A4();
      sub_1BE04A894();
      sub_1BE048664();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D968, &qword_1BE0E9250);
      sub_1BD62C8F8();
      sub_1BE048744();

      sub_1BD030458(v8 + 16);
      (*(v31 + 8))(v30, v57);
      v36 = *(v8 + 288);
      *(v8 + 208) = *(v8 + 272);
      *(v8 + 224) = v36;
      v37 = *(v8 + 320);
      *(v8 + 240) = *(v8 + 304);
      *(v8 + 256) = v37;
      sub_1BD62C97C(v8 + 208);
      goto LABEL_11;
    }

    sub_1BD030458(v8 + 16);
  }

  else
  {
    *(v8 + 608), a2, a3, a4, a5, a6, a7, a8;
  }

  *(v8 + 144) = 0u;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v54 = *(v8 + 568);
  v56 = *(v8 + 576);
  v60 = *(v8 + 584);
  v61 = *(v8 + 560);
  v39 = *(v8 + 488);
  v38 = *(v8 + 496);
  v58 = *(v8 + 480);
  v40 = *(v8 + 448);
  v42 = *(v8 + 432);
  v41 = *(v8 + 440);
  v43 = __swift_project_value_buffer(v42, qword_1EBDAB400);
  (*(v41 + 16))(v40, v43, v42);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048664();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D968, &qword_1BE0E9250);
  sub_1BD62C8F8();
  sub_1BE048744();

  (*(v39 + 8))(v38, v58);
LABEL_11:
  sub_1BD62C430(v61);
  v61, v44, v45, v46, v47, v48, v49, v50;

  v51 = *(v8 + 8);

  return v51();
}

uint64_t sub_1BD62C430(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:GetDefaultCardIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD62C71C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36CC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD62C7C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD62B844(a1);
}

uint64_t sub_1BD62C85C(uint64_t a1)
{
  v2 = sub_1BD15D29C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD62C8A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D958, &qword_1BE0E9238);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD62C8F8()
{
  result = qword_1EBD4D970;
  if (!qword_1EBD4D970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D968, &qword_1BE0E9250);
    sub_1BD030618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D970);
  }

  return result;
}

uint64_t sub_1BD62C97C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D968, &qword_1BE0E9250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProvisioningAvailableCredentialsProvider.__allocating_init(networks:capabilities:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  v7 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) init];
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3 & 1;
  *(v6 + 41) = a3 & 1 | ((a2 & 0x80) == 0);
  return v6;
}

Swift::Void __swiftcall ProvisioningAvailableCredentialsProvider.preflightAvailableCredentials()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  if (*(v0 + 41) == 1 && !*(v0 + 48))
  {
    v4 = sub_1BE0528D4();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    sub_1BE0528A4();
    sub_1BE048964();
    v5 = v0;
    v6 = sub_1BE052894();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E85E0];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;
    v9 = sub_1BD122C00(0, 0, v3, &unk_1BE0E9260, v7);
    v10 = *(v5 + 48);
    *(v5 + 48) = v9;
    v10, v11, v12, v13, v14, v15, v16, v17;
  }
}

uint64_t ProvisioningAvailableCredentialsProvider.availableCredentials()()
{
  v1[2] = v0;
  sub_1BE0528A4();
  v1[3] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD62CC4C, v3, v2);
}

uint64_t sub_1BD62CC4C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8[2];
  if ((*(v9 + 41) & 1) == 0)
  {
    v11 = v8[3];
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v10 = *(v9 + 56);
  if (v10)
  {
    v11 = v8[3];
    sub_1BE048C84();
LABEL_5:
    v11, a2, a3, a4, a5, a6, a7, a8;
    v12 = v8[1];

    return v12(v10);
  }

  v14 = sub_1BD62CF98();
  v8[6] = v14;
  v15 = swift_task_alloc();
  v8[7] = v15;
  *v15 = v8;
  v15[1] = sub_1BD62CD70;
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v15, v14, v16);
}

uint64_t sub_1BD62CD70()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1BD62CE90, v3, v2);
}

uint64_t sub_1BD62CE90(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 16);
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v17 = *(v9 + 56);
  v18 = *(v8 + 48);
  if (v17)
  {
    sub_1BE048C84();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18, v10, v11, v12, v13, v14, v15, v16;
  v19 = *(v8 + 8);

  return v19(v17);
}

uint64_t ProvisioningAvailableCredentialsProvider.init(networks:capabilities:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) init];
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 16) = v7;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  *(v3 + 41) = a3 & 1 | ((a2 & 0x80) == 0);
  return v3;
}

uint64_t sub_1BD62CF98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  if (*(v0 + 48))
  {
    v4 = *(v0 + 48);
  }

  else
  {
    v5 = sub_1BE0528D4();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_1BE0528A4();
    sub_1BE048964();
    v6 = v0;
    v7 = sub_1BE052894();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    v4 = sub_1BD122C00(0, 0, v3, &unk_1BE0E9420, v8);
    v10 = *(v6 + 48);
    *(v6 + 48) = v4;
    sub_1BE048964();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  sub_1BE048964();
  return v4;
}

uint64_t sub_1BD62D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1BE0528A4();
  v4[5] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD62D188, v6, v5);
}

uint64_t sub_1BD62D188(uint64_t a1)
{
  v2 = sub_1BE052894();
  v1[8] = v2;
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_1BD62D274;
  v4 = v1[2];
  v5 = v1[3];
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v2, v6, 0xD00000000000001ALL, 0x80000001BE131E10, sub_1BD62DC94, v5, v7);
}

uint64_t sub_1BD62D274()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 56);
  v11 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD62D3B8, v11, v10);
}

uint64_t sub_1BD62D3B8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD62D418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD62D0EC(a1, v4, v5, v6);
}

void sub_1BD62D4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D980, &qword_1BE0E9418);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1BD62DC9C;
  v22 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD62D8D8;
  aBlock[3] = &block_descriptor_142;
  v12 = _Block_copy(aBlock);
  v13 = v22;
  sub_1BE048964();
  v13, v14, v15, v16, v17, v18, v19, v20;
  [v9 provisioningExtensionProductsWithCompletionHandler_];
  _Block_release(v12);
}

void sub_1BD62D690(unint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a2;
  if (a1)
  {
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
        break;
      }

      v30 = MEMORY[0x1E69E7CC0];
      sub_1BD532334(0, i & ~(i >> 63), 0, a4, a5, a6, a7, a8);
      if (i < 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v27 = v8;
      v12 = 0;
      v11 = v30;
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1BFB40900](v12, a1);
        }

        else
        {
          if (v12 >= *(v28 + 16))
          {
            goto LABEL_23;
          }

          v14 = *(a1 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = [v14 thumbnailCachedImageForSize:0 completion:{28.0, 28.0}];
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v18 = sub_1BE052404();
          v17 = PKUIImageNamed(v18);

          if (!v17)
          {
            goto LABEL_27;
          }
        }

        v19 = v15;
        v20 = [v15 displayName];
        if (!v20)
        {
          goto LABEL_26;
        }

        v21 = v20;
        v29 = sub_1BE052434();
        v23 = v22;

        v8 = *(v30 + 16);
        v24 = *(v30 + 24);
        if (v8 >= v24 >> 1)
        {
          sub_1BD532334((v24 > 1), v8 + 1, 1, a4, a5, a6, a7, a8);
        }

        *(v30 + 16) = v8 + 1;
        v25 = (v30 + 48 * v8);
        v25[4] = v29;
        v25[5] = v23;
        v25[6] = 0;
        v25[7] = 0;
        v25[8] = v17;
        v25[9] = v19;
        ++v12;
        if (v13 == i)
        {
          v8 = v27;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

LABEL_21:
  v26 = *(v8 + 56);
  *(v8 + 56) = v11;
  v26, a2, a3, a4, a5, a6, a7, a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D980, &qword_1BE0E9418);
  sub_1BE052864();
}

void sub_1BD62D8D8(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0DB624();
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v4(v2);
  v3, v5, v6, v7, v8, v9, v10, v11;

  v2, v12, v13, v14, v15, v16, v17, v18;
}

id *ProvisioningAvailableCredentialsProvider.deinit()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[6], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;
  return v0;
}

uint64_t ProvisioningAvailableCredentialsProvider.__deallocating_deinit()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[6], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocClassInstance();
}

uint64_t ProvisioningAvailableCredentialsProvider.AvailableCredentialType.hashValue.getter()
{
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t ProvisioningAvailableCredentialsProvider.AvailableCredential.title.getter()
{
  v1 = *v0;
  sub_1BE048C84();
  return v1;
}

uint64_t ProvisioningAvailableCredentialsProvider.AvailableCredential.subtitle.getter()
{
  v1 = *(v0 + 16);
  sub_1BE048C84();
  return v1;
}

void ProvisioningAvailableCredentialsProvider.AvailableCredential.id.getter()
{
  v1 = [*(v0 + 40) configuration];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 productIdentifier];

    if (v3)
    {
      sub_1BE052434();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD62DB40(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 40) configuration];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 productIdentifier];

    if (v5)
    {
      v6 = sub_1BE052434();
      v8 = v7;

      *a1 = v6;
      a1[1] = v8;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1BD62DBCC()
{
  result = qword_1EBD4D978;
  if (!qword_1EBD4D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D978);
  }

  return result;
}

void sub_1BD62DC9C(unint64_t a1)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D980, &qword_1BE0E9418) - 8);
  v9 = *(v1 + 16);
  v10 = (v1 + ((*(v8 + 80) + 24) & ~*(v8 + 80)));

  sub_1BD62D690(a1, v9, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1BD62DD1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD62D0EC(a1, v4, v5, v6);
}

void sub_1BD62DDD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PaymentOfferInstallmentSummaryView(0) + 32);
  v5 = *MEMORY[0x1E69BC950];
  v6 = sub_1BE04C744();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  *(a2 + 25) = *(a1 + 25);
  if (*(a1 + 40))
  {
    goto LABEL_17;
  }

  v8 = *a1;
  sub_1BD630C8C(a1, v107);
  v9 = [v8 dynamicContent];
  if (!v9 || (v10 = v9, v11 = [v9 dynamicContentPageForPageType_], v10, v12 = objc_msgSend(v11, sel_customLayout), v11, !v12))
  {
    sub_1BD630CC4(a1);

LABEL_17:
    v30 = 0;
    v24 = 0;
    i = 0;
    goto LABEL_18;
  }

  v104 = v8;
  v105 = v12;
  v13 = [v12 items];
  v106 = sub_1BD630CF4();
  v14 = sub_1BE052744();

  v22 = (v14 & 0xFFFFFFFFFFFFFF8);
  if (v14 >> 62)
  {
LABEL_75:
    v23 = sub_1BE053704();
  }

  else
  {
    v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  v25 = &selRef_thumbnailWidth;
  while (1)
  {
    if (v23 == v24)
    {
      v14, v15, v16, v17, v18, v19, v20, v21;
LABEL_21:
      v32 = [v105 items];
      v33 = sub_1BE052744();

      i = sub_1BD9F736C(v33);
      sub_1BD630CC4(a1);

LABEL_22:
      v30 = 0;
      v24 = 0;
      goto LABEL_18;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1BFB40900](v24, v14);
    }

    else
    {
      if (v24 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v26 = *(v14 + 8 * v24 + 32);
    }

    v27 = v26;
    v28 = [v26 type];

    if (v28 == 2)
    {
      break;
    }

    if (__OFADD__(v24++, 1))
    {
      goto LABEL_74;
    }
  }

  v14, v15, v16, v17, v18, v19, v20, v21;
  if (sub_1BE04A0E4() == v24)
  {
    goto LABEL_21;
  }

  v34 = [v105 items];
  i = sub_1BE052744();

  v35 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
    goto LABEL_77;
  }

  if (v35 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v22 = (i >> 62);
  if (i >> 62)
  {
LABEL_78:
    if (sub_1BE053704() < 0)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return;
    }

    if (sub_1BE053704() >= v35)
    {
      goto LABEL_27;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (*((i & 0xFFFFFFFFFFFFFF8) + 0x10) < v35)
  {
    goto LABEL_80;
  }

LABEL_27:
  if ((i & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    if (v24 != -1)
    {
      v43 = 0;
      do
      {
        v44 = v43 + 1;
        sub_1BE053864();
        v43 = v44;
      }

      while (v24 + 1 != v44);
    }
  }

  else
  {
    sub_1BE048C84();
  }

  i, v36, v37, v38, v39, v40, v41, v42;
  if (v22)
  {
    v46 = sub_1BE0539D4();
    v103 = v48;
    v45 = v49;
    v47 = v50;
    i, v48, v49, v50, v51, v52, v53, v54;
    v22 = v105;
    v25 = v106;
    if ((v47 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v45 = 0;
    v46 = i & 0xFFFFFFFFFFFFFF8;
    v103 = (i & 0xFFFFFFFFFFFFFF8) + 32;
    v47 = (2 * v35) | 1;
    v25 = v106;
  }

  v22 = v45;
  i = sub_1BE053BB4();
  swift_unknownObjectRetain_n();
  v56 = swift_dynamicCastClass();
  if (!v56)
  {
    swift_unknownObjectRelease();
    v56 = MEMORY[0x1E69E7CC0];
  }

  v64 = v56[2];
  v56, v57, v58, v59, v60, v61, v62, v63;
  if (__OFSUB__(v47 >> 1, v22))
  {
    __break(1u);
    goto LABEL_83;
  }

  if (v64 != (v47 >> 1) - v22)
  {
    goto LABEL_87;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v22 = v105;
  if (i)
  {
    goto LABEL_44;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v55)
  {
    swift_unknownObjectRelease();
LABEL_44:
    v65 = [v22 items];
    v28 = sub_1BE052744();

    if (v28 >> 62)
    {
LABEL_81:
      v73 = sub_1BE053704();
    }

    else
    {
      v73 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28, v66, v67, v68, v69, v70, v71, v72;
    if (v35 >= v73)
    {
      sub_1BD630CC4(a1);

      goto LABEL_22;
    }

    v74 = [v22 items];
    v35 = sub_1BE052744();

    v47 = v35 >> 62;
    if (!(v35 >> 62))
    {
      break;
    }

LABEL_83:
    v102 = sub_1BE053704();
    if (v102 < v24)
    {
      goto LABEL_95;
    }

    v46 = v102;
    if (sub_1BE053704() < v24)
    {
      goto LABEL_96;
    }

    v22 = v105;
    v25 = v106;
    if (sub_1BE053704() >= v46)
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_87:
    swift_unknownObjectRelease_n();
    v45 = v22;
    v22 = v105;
LABEL_36:
    sub_1BD1DA320(v46, v103, v45, v47);
  }

  v46 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46 < v24)
  {
    __break(1u);
    goto LABEL_89;
  }

LABEL_49:
  if ((v46 & 0x8000000000000000) != 0)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if ((v35 & 0xC000000000000001) != 0 && v46 != v24)
  {
    if (v24 < v46)
    {
      sub_1BE048C84();
      v75 = v24;
      do
      {
        v76 = v75 + 1;
        sub_1BE053864();
        v75 = v76;
      }

      while (v46 != v76);
      goto LABEL_58;
    }

    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  sub_1BE048C84();
LABEL_58:
  v35, v77, v78, v79, v80, v81, v82, v83;
  if (v47)
  {
    v25 = sub_1BE0539D4();
    v47 = v84;
    v24 = v85;
    v46 = v86;
    v35, v84, v85, v86, v87, v88, v89, v90;
  }

  else
  {
    v25 = (v35 & 0xFFFFFFFFFFFFFF8);
    v47 = (v35 & 0xFFFFFFFFFFFFFF8) + 32;
    v46 = (2 * v46) | 1;
  }

  if (v46)
  {
    sub_1BE053BB4();
    swift_unknownObjectRetain_n();
    v92 = swift_dynamicCastClass();
    if (!v92)
    {
      swift_unknownObjectRelease();
      v92 = MEMORY[0x1E69E7CC0];
    }

    v100 = v92[2];
    v92, v93, v94, v95, v96, v97, v98, v99;
    if (__OFSUB__(v46 >> 1, v24))
    {
      goto LABEL_92;
    }

    if (v100 != (v46 >> 1) - v24)
    {
LABEL_93:
      swift_unknownObjectRelease_n();
      goto LABEL_62;
    }

    v24 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
LABEL_62:
    sub_1BD1DA320(v25, v47, v24, v46);
    v24 = v91;
  }

  sub_1BD630CC4(a1);

  swift_unknownObjectRelease();
  if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
  {
    v101 = *(v24 + 16);
    goto LABEL_72;
  }

LABEL_90:
  v101 = sub_1BE053704();
LABEL_72:
  v30 = v101 > 0;
LABEL_18:
  *(a2 + 48) = i;
  *(a2 + 56) = v24;
  *(a2 + 41) = v30;
}

void sub_1BD62E514(uint64_t a1)
{
  v2 = sub_1BE04C614();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 40) & 1) == 0)
  {
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v8 = *a1;
    sub_1BE048964();

    (*(v3 + 104))(v5, *MEMORY[0x1E69BC8E0], v2);
    v7(v5);
    v6, v9, v10, v11, v12, v13, v14, v15;
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BD62E63C(uint64_t a1)
{
  v2 = sub_1BE04C624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BE04C744();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  v10 = type metadata accessor for PaymentOfferInstallmentSummaryView(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 32), v6);
  v13 = a1;
  (*(v3 + 104))(v5, *MEMORY[0x1E69BC908], v2);
  sub_1BE04C784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9B8, &qword_1BE0E9580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9C0, &qword_1BE0E9588);
  sub_1BD63154C(&qword_1EBD3C5D8, MEMORY[0x1E69BC970], MEMORY[0x1E69BC968]);
  sub_1BD631100();
  sub_1BD631354();
  return sub_1BE04C6D4();
}

uint64_t sub_1BD62E8B0(uint64_t a1)
{
  sub_1BE0512B4();

  return sub_1BE04C774();
}

uint64_t sub_1BD62E904@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA78, &qword_1BE0E9680);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - v4;
  v6 = type metadata accessor for PaymentOfferInstallmentSummaryView(0);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA80, &qword_1BE0E9688);
  v48 = *(v8 - 1);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA88, &qword_1BE0E9690);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9D8, &qword_1BE0E9590);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = *v1;
  v51 = *(v1 + 8);
  v52 = v3;
  if (*(v1 + 40))
  {
    v50 = a1;
    v17 = *(v1 + 32);
    v48 = *(v1 + 24);
    v49 = v17;
    v47 = *(v1 + 16);
    v44 = v16;
    v18 = v16;
    v19 = sub_1BE04F7C4();
    v55 = 1;
    sub_1BD62F5AC(v18, &v66);
    v62 = v67[5];
    v63[0] = v67[6];
    *(v63 + 9) = *(&v67[6] + 9);
    v58 = v67[1];
    v59 = v67[2];
    v60 = v67[3];
    v61 = v67[4];
    v56 = v66;
    v57 = v67[0];
    v64[6] = v67[5];
    v65[0] = v67[6];
    *(v65 + 9) = *(&v67[6] + 9);
    v64[2] = v67[1];
    v64[3] = v67[2];
    v64[4] = v67[3];
    v64[5] = v67[4];
    v64[0] = v66;
    v64[1] = v67[0];
    sub_1BD0DE19C(&v56, v53, &qword_1EBD4DA90, &qword_1BE0E9698);
    sub_1BD0DE53C(v64, &qword_1EBD4DA90, &qword_1BE0E9698);
    *(&v54[5] + 7) = v61;
    *(&v54[6] + 7) = v62;
    *(&v54[7] + 7) = v63[0];
    v54[8] = *(v63 + 9);
    *(&v54[1] + 7) = v57;
    *(&v54[2] + 7) = v58;
    *(&v54[3] + 7) = v59;
    *(&v54[4] + 7) = v60;
    *(v54 + 7) = v56;
    v20 = v55;
    KeyPath = swift_getKeyPath();
    *(&v67[2] + 1) = v54[2];
    *(&v67[1] + 1) = v54[1];
    *(&v67[5] + 1) = v54[5];
    *(&v67[6] + 1) = v54[6];
    *(&v67[7] + 1) = v54[7];
    *(&v67[8] + 1) = v54[8];
    *(&v67[3] + 1) = v54[3];
    v66 = v19;
    LOBYTE(v67[0]) = v20;
    *(&v67[4] + 1) = v54[4];
    *(v67 + 1) = v54[0];
    *(&v67[9] + 1) = KeyPath;
    v68 = 0;
    v5[176] = 0;
    v22 = v67[8];
    *(v5 + 8) = v67[7];
    *(v5 + 9) = v22;
    v23 = v67[4];
    *(v5 + 4) = v67[3];
    *(v5 + 5) = v23;
    v24 = v67[6];
    *(v5 + 6) = v67[5];
    *(v5 + 7) = v24;
    v25 = v67[0];
    *v5 = v66;
    *(v5 + 1) = v25;
    v26 = v67[2];
    *(v5 + 2) = v67[1];
    *(v5 + 3) = v26;
    *(v5 + 10) = v67[9];
    swift_storeEnumTagMultiPayload();
    v27 = &qword_1EBD4D9F8;
    v28 = &unk_1BE0E95A8;
    sub_1BD0DE19C(&v66, v53, &qword_1EBD4D9F8, &unk_1BE0E95A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9F8, &unk_1BE0E95A8);
    sub_1BD63118C();
    sub_1BD631270();
    sub_1BE04F9A4();
    sub_1BD630FA8(v44, v51, v47, v48, v49, 1);
    v29 = &v66;
  }

  else
  {
    v45 = v13;
    v44 = v16;
    v30 = v51;
    *v15 = sub_1BE04F7C4();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v31 = *(v1 + 48);
    v51 = v30;
    if (v31)
    {
      v32 = [v30 updatedSelectedOfferContents];
      v50 = a1;
      v33 = v32;
      *&v66 = v31;
      v43 = swift_getKeyPath();
      sub_1BD630F44(v1, &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v34 = (*(v46 + 80) + 17) & ~*(v46 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v33;
      sub_1BD631008(&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9A0, qword_1BE113230);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA50, &qword_1BE0E9600);
      sub_1BD0DE4F4(&qword_1EBD4DA58, &qword_1EBD4D9A0, qword_1BE113230, MEMORY[0x1E69E6338]);
      sub_1BD63154C(&qword_1EBD390D0, sub_1BD630CF4, MEMORY[0x1E69E81B8]);
      sub_1BD631594();
      v36 = v47;
      sub_1BE0519C4();
      v38 = v48;
      v37 = v49;
      (*(v48 + 32))(v12, v36, v49);
      (*(v38 + 56))(v12, 0, 1, v37);
    }

    else
    {
      (*(v48 + 56))(v12, 1, 1, v49);
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA98, &qword_1BE0E96A0);
    sub_1BD0DE204(v12, &v15[*(v39 + 44)], &qword_1EBD4DA88, &qword_1BE0E9690);
    v40 = swift_getKeyPath();
    v41 = &v15[*(v45 + 36)];
    *v41 = v40;
    v41[8] = 0;
    v27 = &qword_1EBD4D9D8;
    v28 = &qword_1BE0E9590;
    sub_1BD0DE19C(v15, v5, &qword_1EBD4D9D8, &qword_1BE0E9590);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9F8, &unk_1BE0E95A8);
    sub_1BD63118C();
    sub_1BD631270();
    sub_1BE04F9A4();

    v29 = v15;
  }

  return sub_1BD0DE53C(v29, v27, v28);
}

uint64_t sub_1BD62F05C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 41) == 1)
  {
    sub_1BD62F0F8(a2);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9C0, &qword_1BE0E9588);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

void *sub_1BD62F0F8@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA40, &qword_1BE0E95D0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v25 - v4;
  v6 = type metadata accessor for PaymentOfferInstallmentSummaryView(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA28, &qword_1BE0E95C0);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA18, &qword_1BE0E95B8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  if (*(v1 + 40))
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD6313E0();
    return sub_1BE04F9A4();
  }

  else
  {
    v27 = v11;
    v28 = v3;
    v29 = a1;
    v15 = *(v1 + 8);
    v16 = *v1;
    v17 = v15;

    v18 = *(v1 + 56);
    if (v18)
    {
      *v10 = sub_1BE04F7C4();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v25[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA48, &unk_1BE0E95D8) + 44);
      v19 = [v17 updatedSelectedOfferContents];
      v26 = v17;
      v20 = v19;
      v32 = v18;
      v25[1] = swift_getKeyPath();
      sub_1BD630F44(v1, v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = (*(v30 + 80) + 17) & ~*(v30 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      sub_1BD631008(v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9A0, qword_1BE113230);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA50, &qword_1BE0E9600);
      sub_1BD0DE4F4(&qword_1EBD4DA58, &qword_1EBD4D9A0, qword_1BE113230, MEMORY[0x1E69E6338]);
      sub_1BD63154C(&qword_1EBD390D0, sub_1BD630CF4, MEMORY[0x1E69E81B8]);
      sub_1BD631594();
      v17 = v26;
      sub_1BE0519C4();
      KeyPath = swift_getKeyPath();
      v24 = &v10[*(v8 + 36)];
      *v24 = KeyPath;
      v24[8] = 0;
      sub_1BD0DE204(v10, v13, &qword_1EBD4DA28, &qword_1BE0E95C0);
      (*(v31 + 56))(v13, 0, 1, v8);
    }

    else
    {
      (*(v31 + 56))(v13, 1, 1, v8);
    }

    sub_1BD0DE19C(v13, v5, &qword_1EBD4DA18, &qword_1BE0E95B8);
    swift_storeEnumTagMultiPayload();
    sub_1BD6313E0();
    sub_1BE04F9A4();

    return sub_1BD0DE53C(v13, &qword_1EBD4DA18, &qword_1BE0E95B8);
  }
}

id sub_1BD62F5AC@<X0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v183 - v10;
  v12 = [a1 programName];
  v187 = a2;
  v188 = v7;
  v189 = v5;
  v190 = v4;
  if (v12 || (v12 = [a1 localizedTitleOverride]) != 0)
  {
    v13 = v12;
    v14 = sub_1BE052434();
    v16 = v15;
  }

  else
  {
    (*(v5 + 104))(v11, *MEMORY[0x1E69B8068], v4);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_9;
    }

    v181 = result;
    v14 = sub_1BE04B6F4();
    v16 = v182;

    (*(v5 + 8))(v11, v4);
  }

  v192 = sub_1BE051494();
  v17 = sub_1BE050414();
  v223 = v14;
  v224 = v16;
  v183[1] = sub_1BD0DDEBC();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1BE050564();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1BD0DDF10(v18, v20, (v22 & 1), v30, v32, v33, v34, v35);
  v24, v36, v37, v38, v39, v40, v41, v42;
  v43 = sub_1BE0505F4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1BD0DDF10(v25, v27, (v29 & 1), v48, v50, v51, v52, v53);
  v31, v54, v55, v56, v57, v58, v59, v60;
  v61 = sub_1BE0505E4();
  v185 = v62;
  v186 = v61;
  LOBYTE(v31) = v63;
  v193 = v64;
  v192, v62, v63, v64, v65, v66, v67, v68;
  v17, v69, v70, v71, v72, v73, v74, v75;
  sub_1BD0DDF10(v43, v45, (v47 & 1), v76, v77, v78, v79, v80);
  v49, v81, v82, v83, v84, v85, v86, v87;
  KeyPath = swift_getKeyPath();
  v192 = swift_getKeyPath();
  v191 = v31 & 1;
  LOBYTE(v223) = v31 & 1;
  LOBYTE(v213[0]) = 1;
  v89 = v188;
  v88 = v189;
  v90 = v190;
  (v189)[13](v188, *MEMORY[0x1E69B8078], v190);
  result = PKPassKitBundle();
  if (result)
  {
    v92 = result;
    v93 = sub_1BE04B6F4();
    v95 = v94;

    (v88[1])(v89, v90);
    v189 = sub_1BE051464();
    v96 = sub_1BE050324();
    v223 = v93;
    v224 = v95;
    v97 = sub_1BE0506C4();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v104 = sub_1BE050564();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    sub_1BD0DDF10(v97, v99, (v101 & 1), v109, v111, v112, v113, v114);
    v103, v115, v116, v117, v118, v119, v120, v121;
    v122 = sub_1BE0505F4();
    v124 = v123;
    v126 = v125;
    v128 = v127;
    sub_1BD0DDF10(v104, v106, (v108 & 1), v127, v129, v130, v131, v132);
    v110, v133, v134, v135, v136, v137, v138, v139;
    v140 = sub_1BE0505E4();
    v142 = v141;
    LOBYTE(v104) = v143;
    v190 = v144;
    v189, v141, v143, v144, v145, v146, v147, v148;
    v96, v149, v150, v151, v152, v153, v154, v155;
    sub_1BD0DDF10(v122, v124, (v126 & 1), v156, v157, v158, v159, v160);
    v128, v161, v162, v163, v164, v165, v166, v167;
    v168 = swift_getKeyPath();
    v169 = swift_getKeyPath();
    LOBYTE(v223) = v104 & 1;
    v171 = v185;
    v170 = v186;
    *&v201 = v186;
    *(&v201 + 1) = v185;
    LOBYTE(v202) = v191;
    *(&v202 + 1) = v235[0];
    DWORD1(v202) = *(v235 + 3);
    v172 = KeyPath;
    *(&v202 + 1) = v193;
    *&v203 = KeyPath;
    BYTE8(v203) = 0;
    HIDWORD(v203) = *&v234[3];
    *(&v203 + 9) = *v234;
    v204 = v192;
    v205 = 0;
    v206 = 1;
    LOBYTE(v198[0]) = 1;
    v196 = v203;
    v197 = v192;
    v194 = v201;
    v195 = v202;
    *&v207 = v140;
    *(&v207 + 1) = v142;
    LOBYTE(v208) = v104 & 1;
    DWORD1(v208) = *&v200[3];
    *(&v208 + 1) = *v200;
    v173 = v190;
    *(&v208 + 1) = v190;
    *&v209 = v168;
    BYTE8(v209) = 0;
    HIDWORD(v209) = *&v199[3];
    *(&v209 + 9) = *v199;
    v210 = v169;
    v211 = 0;
    v212 = 1;
    *(v198 + 8) = v207;
    BYTE8(v198[4]) = 1;
    *(&v198[3] + 8) = v169;
    *(&v198[2] + 8) = v209;
    *(&v198[1] + 8) = v208;
    v174 = v201;
    v175 = v202;
    v176 = v192;
    v177 = v187;
    v187[2] = v203;
    v177[3] = v176;
    *v177 = v174;
    v177[1] = v175;
    v178 = v198[0];
    v179 = v198[1];
    *(v177 + 121) = *(&v198[3] + 9);
    v180 = v198[3];
    v177[6] = v198[2];
    v177[7] = v180;
    v177[4] = v178;
    v177[5] = v179;
    v213[0] = v140;
    v213[1] = v142;
    v214 = v104 & 1;
    *v215 = *v200;
    *&v215[3] = *&v200[3];
    v216 = v173;
    v217 = v168;
    v218 = 0;
    *v219 = *v199;
    *&v219[3] = *&v199[3];
    v220 = v169;
    v221 = 0;
    v222 = 1;
    sub_1BD0DE19C(&v201, &v223, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE19C(&v207, &v223, &qword_1EBD39160, &unk_1BE0BA6E0);
    sub_1BD0DE53C(v213, &qword_1EBD39160, &unk_1BE0BA6E0);
    v223 = v170;
    v224 = v171;
    v225 = v191;
    *v226 = v235[0];
    *&v226[3] = *(v235 + 3);
    v227 = v193;
    v228 = v172;
    v229 = 0;
    *v230 = *v234;
    *&v230[3] = *&v234[3];
    v231 = v192;
    v232 = 0;
    v233 = 1;
    return sub_1BD0DE53C(&v223, &qword_1EBD39160, &unk_1BE0BA6E0);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

double sub_1BD62FC5C@<D0>(id *a1@<X0>, char a2@<W1>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = [*a1 type];
  if (!v7)
  {
    LOBYTE(v74[0]) = 0;
    goto LABEL_8;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      sub_1BD6316F8(&v40);
      v74[8] = v48;
      v74[9] = v49;
      *v75 = v50;
      *&v75[16] = v51;
      v74[4] = v44;
      v74[5] = v45;
      v74[6] = v46;
      v74[7] = v47;
      v74[0] = v40;
      v74[1] = v41;
      v74[2] = v42;
      v74[3] = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39110, &qword_1BE0B80E0);
      sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110, &qword_1BE0B80E0, MEMORY[0x1E69817F8]);
      sub_1BE04F9A4();
      v71 = v23;
      v72 = v24;
      *v73 = v25;
      *&v73[16] = v26;
      v67 = v19;
      v68 = v20;
      v69 = v21;
      v70 = v22;
      v63 = v15;
      v64 = v16;
      v65 = v17;
      v66 = v18;
      sub_1BD6316F0(&v63);
      v60 = v71;
      v61 = v72;
      v62[0] = *v73;
LABEL_9:
      *(v62 + 15) = *&v73[15];
      v56 = v67;
      v57 = v68;
      v58 = v69;
      v59 = v70;
      v52 = v63;
      v53 = v64;
      v54 = v65;
      v55 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA70, &qword_1BE0E9608);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
      sub_1BD631620();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      goto LABEL_10;
    }

    LOBYTE(v74[0]) = 1;
LABEL_8:
    sub_1BE04F9A4();
    sub_1BD6316D8(&v63);
    v60 = v71;
    v61 = v72;
    v62[0] = *v73;
    goto LABEL_9;
  }

  v14 = sub_1BE04F504();
  LOBYTE(v52) = 1;
  sub_1BD6302B8(v6, a2 & 1, v74);
  v33 = v74[6];
  v34 = v74[7];
  *v35 = v74[8];
  *&v35[9] = *(&v74[8] + 9);
  v29 = v74[2];
  v30 = v74[3];
  v31 = v74[4];
  v32 = v74[5];
  v27 = v74[0];
  v28 = v74[1];
  v36[6] = v74[6];
  v36[7] = v74[7];
  v37[0] = v74[8];
  *(v37 + 9) = *(&v74[8] + 9);
  v36[2] = v74[2];
  v36[3] = v74[3];
  v36[4] = v74[4];
  v36[5] = v74[5];
  v36[0] = v74[0];
  v36[1] = v74[1];
  sub_1BD0DE19C(&v27, &v63, &qword_1EBD39140, &qword_1BE0E9640);
  sub_1BD0DE53C(v36, &qword_1EBD39140, &qword_1BE0E9640);
  *(&v74[3] + 7) = v30;
  *(&v74[2] + 7) = v29;
  *(&v74[6] + 7) = v33;
  *(&v74[7] + 7) = v34;
  *(&v74[8] + 7) = *v35;
  v74[9] = *&v35[9];
  *(&v74[4] + 7) = v31;
  *(&v74[5] + 7) = v32;
  *(v74 + 7) = v27;
  *(&v74[1] + 7) = v28;
  v38[0] = v14;
  v38[1] = 0;
  v39[0] = v52;
  *&v39[113] = v74[7];
  *&v39[97] = v74[6];
  *&v39[129] = v74[8];
  *&v39[145] = *&v35[9];
  *&v39[33] = v74[2];
  *&v39[49] = v74[3];
  *&v39[65] = v74[4];
  *&v39[81] = v74[5];
  *&v39[1] = v74[0];
  *&v39[17] = v74[1];
  v48 = *&v39[112];
  v49 = *&v39[128];
  v50 = *&v39[144];
  LOBYTE(v51) = v35[24];
  v44 = *&v39[48];
  v45 = *&v39[64];
  v46 = *&v39[80];
  v47 = *&v39[96];
  v40 = v14;
  v41 = *v39;
  v42 = *&v39[16];
  v43 = *&v39[32];
  sub_1BD6316E4(&v40);
  v74[8] = v48;
  v74[9] = v49;
  *v75 = v50;
  *&v75[16] = v51;
  v74[4] = v44;
  v74[5] = v45;
  v74[6] = v46;
  v74[7] = v47;
  v74[0] = v40;
  v74[1] = v41;
  v74[2] = v42;
  v74[3] = v43;
  sub_1BD0DE19C(v38, &v63, &qword_1EBD39110, &qword_1BE0B80E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39110, &qword_1BE0B80E0);
  sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110, &qword_1BE0B80E0, MEMORY[0x1E69817F8]);
  sub_1BE04F9A4();
  v71 = v23;
  v72 = v24;
  *v73 = v25;
  *&v73[16] = v26;
  v67 = v19;
  v68 = v20;
  v69 = v21;
  v70 = v22;
  v63 = v15;
  v64 = v16;
  v65 = v17;
  v66 = v18;
  sub_1BD6316F0(&v63);
  v74[8] = v71;
  v74[9] = v72;
  *v75 = *v73;
  *&v75[15] = *&v73[15];
  v74[4] = v67;
  v74[5] = v68;
  v74[6] = v69;
  v74[7] = v70;
  v74[0] = v63;
  v74[1] = v64;
  v74[2] = v65;
  v74[3] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA70, &qword_1BE0E9608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
  sub_1BD631620();
  sub_1BD0FEEBC();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v38, &qword_1EBD39110, &qword_1BE0B80E0);
  v74[8] = v60;
  v74[9] = v61;
  *v75 = v62[0];
  *&v75[15] = *(v62 + 15);
  v74[4] = v56;
  v74[5] = v57;
  v74[6] = v58;
  v74[7] = v59;
  v74[0] = v52;
  v74[1] = v53;
  v74[2] = v54;
  v74[3] = v55;
LABEL_10:
  v8 = v74[9];
  *(a4 + 128) = v74[8];
  *(a4 + 144) = v8;
  *(a4 + 160) = *v75;
  *(a4 + 175) = *&v75[15];
  v9 = v74[5];
  *(a4 + 64) = v74[4];
  *(a4 + 80) = v9;
  v10 = v74[7];
  *(a4 + 96) = v74[6];
  *(a4 + 112) = v10;
  v11 = v74[1];
  *a4 = v74[0];
  *(a4 + 16) = v11;
  result = *&v74[2];
  v13 = v74[3];
  *(a4 + 32) = v74[2];
  *(a4 + 48) = v13;
  return result;
}

uint64_t sub_1BD6302B8@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = [a1 leadingText];
  v6 = [a1 trailingText];
  v227 = v6;
  v228 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [v7 text];
    v9 = sub_1BE052434();
    v11 = v10;

    if (a2)
    {
      v12 = [v7 altText];
      if (v12)
      {
        v13 = v12;
        v9 = sub_1BE052434();
        v15 = v14;
        v11, v14, v16, v17, v18, v19, v20, v21;

        v11 = v15;
      }
    }

    v22 = sub_1BE051464();
    v23 = [v7 textColor];
    v223 = a2;
    if (v23 == 3)
    {
      v24 = sub_1BE0511D4();
    }

    else if (v23 == 2)
    {
      v24 = sub_1BE051494();
    }

    else
    {
      if (v23 != 1)
      {
        v35 = v22;
LABEL_15:
        v232 = v35;
        v36 = v7;
        v37 = sub_1BD47C8E4(v23);
        [v36 isBold];
        v255 = v9;
        v256 = v11;
        sub_1BD0DDEBC();
        v38 = sub_1BE0506C4();
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v45 = sub_1BE050564();
        v47 = v46;
        v49 = v48;
        v51 = v50;
        sub_1BD0DDF10(v38, v40, (v42 & 1), v50, v52, v53, v54, v55);
        v44, v56, v57, v58, v59, v60, v61, v62;
        v63 = sub_1BE0505F4();
        v65 = v64;
        v67 = v66;
        v69 = v68;
        sub_1BD0DDF10(v45, v47, (v49 & 1), v68, v70, v71, v72, v73);
        v51, v74, v75, v76, v77, v78, v79, v80;
        v81 = sub_1BE0505E4();
        v234 = v82;
        v235 = v81;
        v84 = v83;
        v233 = v85;
        v232, v82, v83, v85, v86, v87, v88, v89;
        v37, v90, v91, v92, v93, v94, v95, v96;

        sub_1BD0DDF10(v63, v65, (v67 & 1), v97, v98, v99, v100, v101);
        v69, v102, v103, v104, v105, v106, v107, v108;
        KeyPath = swift_getKeyPath();
        LOBYTE(v255) = v84 & 1;
        v236 = 1;
        LOBYTE(v249) = 1;
        v229 = v84 & 1;
        v230 = swift_getKeyPath();
        v32 = v227;
        v5 = v228;
        a2 = v223;
        if (v227)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }

      v24 = sub_1BE051464();
    }

    v35 = v24;
    v22, v25, v26, v27, v28, v29, v30, v31;
    goto LABEL_15;
  }

  v32 = v6;
  v234 = 0;
  v235 = 0;
  v230 = 0;
  KeyPath = 0;
  v236 = 0;
  v229 = 0;
  v233 = 1;
  if (v6)
  {
LABEL_16:
    v214 = v5 != 0;
    v109 = v32;
    v110 = [v109 text];
    v111 = sub_1BE052434();
    v113 = v112;

    if (a2)
    {
      v114 = [v109 altText];
      if (v114)
      {
        v115 = v114;
        v111 = sub_1BE052434();
        v117 = v116;
        v113, v116, v118, v119, v120, v121, v122, v123;

        v113 = v117;
      }
    }

    v124 = sub_1BE051464();
    v125 = [v109 textColor];
    if (v125 == 3)
    {
      v126 = sub_1BE0511D4();
    }

    else if (v125 == 2)
    {
      v126 = sub_1BE051494();
    }

    else
    {
      if (v125 != 1)
      {
LABEL_26:
        v225 = v5 == 0;
        v135 = sub_1BD47C8E4(v125);
        [v109 isBold];
        v255 = v111;
        v256 = v113;
        sub_1BD0DDEBC();
        v136 = sub_1BE0506C4();
        v138 = v137;
        v140 = v139;
        v142 = v141;
        v143 = sub_1BE050564();
        v145 = v144;
        v222 = v109;
        v147 = v146;
        v149 = v148;
        sub_1BD0DDF10(v136, v138, (v140 & 1), v148, v150, v151, v152, v153);
        v142, v154, v155, v156, v157, v158, v159, v160;
        v161 = v135;
        v162 = sub_1BE0505F4();
        v164 = v163;
        LOBYTE(v135) = v165;
        v167 = v166;
        sub_1BD0DDF10(v143, v145, (v147 & 1), v166, v168, v169, v170, v171);
        v149, v172, v173, v174, v175, v176, v177, v178;
        v179 = sub_1BE0505E4();
        v181 = v180;
        LOBYTE(v143) = v182;
        v184 = v183;
        v124, v180, v182, v183, v185, v186, v187, v188;
        v161, v189, v190, v191, v192, v193, v194, v195;
        sub_1BD0DDF10(v162, v164, (v135 & 1), v196, v197, v198, v199, v200);
        v167, v201, v202, v203, v204, v205, v206, v207;
        v208 = swift_getKeyPath();
        v209 = swift_getKeyPath();
        LOBYTE(v167) = v143 & 1;
        LOBYTE(v255) = v143 & 1;
        LOBYTE(v266[0]) = v225;
        *&v249 = v179;
        *(&v249 + 1) = v181;
        LOBYTE(v250) = v143 & 1;
        *(&v250 + 1) = *v238;
        DWORD1(v250) = *&v238[3];
        *(&v250 + 1) = v184;
        *&v251 = v208;
        v210 = v184;
        BYTE8(v251) = 0;
        HIDWORD(v251) = *&v237[3];
        *(&v251 + 9) = *v237;
        v252 = v209;
        LOBYTE(v253) = 1;
        sub_1BD0DE19C(&v249, &v255, &qword_1EBD39160, &unk_1BE0BA6E0);

        v221 = *(&v249 + 1);
        v224 = v249;
        v34 = *(&v250 + 1);
        v219 = v251;
        v220 = v250;
        v217 = v252;
        v218 = *(&v251 + 1);
        v216 = *(&v252 + 1);
        v215 = v253;
        v211 = LOBYTE(v266[0]);
        v255 = v179;
        v256 = v181;
        LOBYTE(v257) = v167;
        *(&v257 + 1) = *v238;
        HIDWORD(v257) = *&v238[3];
        v258 = v210;
        v259 = v208;
        LOBYTE(v260) = 0;
        *(&v260 + 1) = *v237;
        HIDWORD(v260) = *&v237[3];
        v261 = v209;
        v262 = 0;
        LOBYTE(v263) = 1;
        sub_1BD0DE53C(&v255, &qword_1EBD39160, &unk_1BE0BA6E0);
        v33 = v214 | (v211 << 8);
        v32 = v227;
        goto LABEL_27;
      }

      v126 = sub_1BE051464();
    }

    v134 = v126;
    v124, v127, v128, v129, v130, v131, v132, v133;
    v124 = v134;
    goto LABEL_26;
  }

LABEL_10:
  v221 = 0;
  v224 = 0;
  v219 = 0;
  v220 = 0;
  v217 = 0;
  v218 = 0;
  v216 = 0;
  v215 = 0;
  v33 = 0;
  v34 = 1;
LABEL_27:
  v213 = v33;
  *&v242 = v235;
  *(&v242 + 1) = v234;
  *&v243 = v229;
  *(&v243 + 1) = v233;
  v244 = KeyPath;
  v245 = 0;
  v246 = v230;
  v247 = 0;
  v248 = v236;
  v241[0] = v236;
  v239 = v242;
  v240 = v243;
  *&v249 = 0;
  *(&v249 + 1) = v33;
  *&v250 = v224;
  *(&v250 + 1) = v221;
  *&v251 = v220;
  *(&v251 + 1) = v34;
  *&v252 = v219;
  *(&v252 + 1) = v218;
  *&v253 = v217;
  *(&v253 + 1) = v216;
  v254 = v215;
  sub_1BD0DE19C(&v242, &v255, &qword_1EBD39150, &qword_1BE0B8118);
  sub_1BD0DE19C(&v249, &v255, &qword_1EBD39158, &unk_1BE0B8120);

  *&v241[8] = v249;
  *&v241[24] = v250;
  *&v241[40] = v251;
  *&v241[56] = v252;
  *&v241[72] = v253;
  v241[88] = v254;
  a3[2] = KeyPath;
  a3[3] = v230;
  *a3 = v239;
  a3[1] = v240;
  a3[4] = *v241;
  a3[5] = *&v241[16];
  *(a3 + 137) = *&v241[73];
  a3[7] = *&v241[48];
  a3[8] = *&v241[64];
  a3[6] = *&v241[32];
  v255 = 0;
  v256 = v213;
  v257 = v224;
  v258 = v221;
  v259 = v220;
  v260 = v34;
  v261 = v219;
  v262 = v218;
  v263 = v217;
  v264 = v216;
  v265 = v215;
  sub_1BD0DE53C(&v255, &qword_1EBD39158, &unk_1BE0B8120);
  v266[0] = v235;
  v266[1] = v234;
  v266[2] = v229;
  v266[3] = v233;
  v266[4] = KeyPath;
  v266[5] = 0;
  v266[6] = v230;
  v266[7] = 0;
  v267 = v236;
  return sub_1BD0DE53C(v266, &qword_1EBD39150, &qword_1BE0B8118);
}

uint64_t sub_1BD630A88(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1BD630F44(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1BD631008(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9A8, &qword_1BE0E9578);
  sub_1BD0DE4F4(&qword_1EBD4D9B0, &qword_1EBD4D9A8, &qword_1BE0E9578, MEMORY[0x1E69BC928]);
  return sub_1BE051704();
}

void sub_1BD630BF0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BE131EA0;
  v3 = 0x74636574656C6573;
  if (*(v1 + 40))
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xEF726566664F6465;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t type metadata accessor for PaymentOfferInstallmentSummaryView(uint64_t a1)
{
  result = qword_1EBD4D988;
  if (!qword_1EBD4D988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD630CF4()
{
  result = qword_1EBD390A8;
  if (!qword_1EBD390A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD390A8);
  }

  return result;
}

uint64_t sub_1BD630D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1BD630D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1BD630E28(uint64_t a1)
{
  sub_1BD630EC4(319);
  if (v1 <= 0x3F)
  {
    sub_1BE04C744();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD630EC4(uint64_t a1)
{
  if (!qword_1EBD4D998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9A0, qword_1BE113230);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4D998);
    }
  }
}

uint64_t sub_1BD630F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentSummaryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD630FA8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    a5, v9, v10, v11, v12, v13, v14, v15;
  }
}

uint64_t sub_1BD631008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentSummaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD63106C()
{
  v1 = *(type metadata accessor for PaymentOfferInstallmentSummaryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD62E514(v2);
}

unint64_t sub_1BD631100()
{
  result = qword_1EBD4D9C8;
  if (!qword_1EBD4D9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9B8, &qword_1BE0E9580);
    sub_1BD63118C();
    sub_1BD631270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D9C8);
  }

  return result;
}

unint64_t sub_1BD63118C()
{
  result = qword_1EBD4D9D0;
  if (!qword_1EBD4D9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9D8, &qword_1BE0E9590);
    sub_1BD0DE4F4(&qword_1EBD4D9E0, &qword_1EBD4D9E8, &unk_1BE0E9598, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D9D0);
  }

  return result;
}

unint64_t sub_1BD631270()
{
  result = qword_1EBD4D9F0;
  if (!qword_1EBD4D9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9F8, &unk_1BE0E95A8);
    sub_1BD0DE4F4(&qword_1EBD4DA00, &qword_1EBD3A420, &qword_1BE0BA6F0, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D9F0);
  }

  return result;
}

unint64_t sub_1BD631354()
{
  result = qword_1EBD4DA08;
  if (!qword_1EBD4DA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9C0, &qword_1BE0E9588);
    sub_1BD6313E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA08);
  }

  return result;
}

unint64_t sub_1BD6313E0()
{
  result = qword_1EBD4DA10;
  if (!qword_1EBD4DA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DA18, &qword_1BE0E95B8);
    sub_1BD631464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA10);
  }

  return result;
}

unint64_t sub_1BD631464()
{
  result = qword_1EBD4DA20;
  if (!qword_1EBD4DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DA28, &qword_1BE0E95C0);
    sub_1BD0DE4F4(&qword_1EBD4DA30, &qword_1EBD4DA38, &qword_1BE0E95C8, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA20);
  }

  return result;
}

uint64_t sub_1BD63154C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD631594()
{
  result = qword_1EBD4DA60;
  if (!qword_1EBD4DA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DA50, &qword_1BE0E9600);
    sub_1BD631620();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA60);
  }

  return result;
}

unint64_t sub_1BD631620()
{
  result = qword_1EBD4DA68;
  if (!qword_1EBD4DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DA70, &qword_1BE0E9608);
    sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110, &qword_1BE0B80E0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA68);
  }

  return result;
}

uint64_t objectdestroy_9Tm_1()
{
  v1 = (type metadata accessor for PaymentOfferInstallmentSummaryView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 17) & ~*(*v1 + 80));
  sub_1BD630FA8(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *(v2 + 48), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 56), v10, v11, v12, v13, v14, v15, v16;
  v17 = v1[10];
  v18 = sub_1BE04C744();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);

  return swift_deallocObject();
}

double sub_1BD631804@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PaymentOfferInstallmentSummaryView(0);
  v5 = *(v2 + 16);

  return sub_1BD62FC5C(a1, v5, a2);
}

uint64_t static FlightWidgetPreflightContent.createContent(viewModel:context:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BE0524C4();
  v5 = v4;
  result = sub_1BE0524C4();
  *a2 = v3;
  a2[1] = v5;
  a2[2] = result;
  a2[3] = v7;
  return result;
}

unint64_t sub_1BD6318FC()
{
  result = qword_1EBD4DAB0;
  if (!qword_1EBD4DAB0)
  {
    type metadata accessor for FlightWidgetPreflightView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DAB0);
  }

  return result;
}

uint64_t sub_1BD631954@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BE0524C4();
  v5 = v4;
  result = sub_1BE0524C4();
  *a2 = v3;
  a2[1] = v5;
  a2[2] = result;
  a2[3] = v7;
  return result;
}

void *sub_1BD6319D0()
{
  v1 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BD631A1C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (!v6)
  {
    if (!a1)
    {
      return;
    }

    v5 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780), v7 = a1, v8 = v6, v9 = sub_1BE053074(), v8, (v9 & 1) == 0))
  {
LABEL_7:
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x278))(v5);
    if (*(v2 + v4))
    {
      sub_1BD6323D4();
      v10 = [v2 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      [v10 setNeedsLayout];
    }

    v8 = a1;
    goto LABEL_11;
  }

LABEL_11:
}

void (*sub_1BD631B6C(uint64_t *a1))(id a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1BD631C08;
}

void sub_1BD631C08(id a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v7)
    {
      if (v3)
      {
        sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
        v8 = v3;
        v9 = v7;
        v10 = sub_1BE053074();

        if (v10)
        {

LABEL_16:
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (!v3)
      {
LABEL_17:
        v11 = *v4;
        goto LABEL_24;
      }

      a1 = v3;
    }

    v14 = v2[4];
    v15 = v2[5];
    (*((*MEMORY[0x1E69E7D40] & *v14) + 0x278))(a1);
    if (!*(v14 + v15))
    {
LABEL_15:

      v8 = v3;
      goto LABEL_16;
    }

    v16 = v2[4];
    sub_1BD6323D4();
    v17 = [v16 view];
    if (v17)
    {
      v18 = v17;
      [v17 setNeedsLayout];

      goto LABEL_15;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v3)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
      v11 = v3;
      v12 = v7;
      v13 = sub_1BE053074();

      if (v13)
      {

LABEL_24:
        goto LABEL_25;
      }
    }

LABEL_20:
    v19 = v2[4];
    v20 = v2[5];
    (*((*MEMORY[0x1E69E7D40] & *v19) + 0x278))(a1);
    if (*(v19 + v20))
    {
      v21 = v2[4];
      sub_1BD6323D4();
      v22 = [v21 view];
      if (!v22)
      {
        goto LABEL_29;
      }

      v23 = v22;
      [v22 setNeedsLayout];
    }

    v11 = v3;
    goto LABEL_24;
  }

  if (v3)
  {
    a1 = v3;
    goto LABEL_20;
  }

LABEL_25:

  free(v2);
}

uint64_t sub_1BD631E4C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BD631E90(char a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BD631F40()
{
  v1 = sub_1BE04B0F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1BE04AFF4();
  v8 = sub_1BE04B044();
  (*(v2 + 8))(v4, v1);
  v9 = [v7 minimalFormattedStringValueInLocale_];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1BE052434();

  return v10;
}

double sub_1BD6320A8()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize;
  swift_beginAccess();
  return *v1;
}

uint64_t (*sub_1BD63211C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountCenter;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BD6321A4;
}

uint64_t sub_1BD6321D8(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void sub_1BD632240(uint64_t a1, uint64_t a2, char a3, void *a4, void (*a5)(uint64_t, double, double))
{
  v10 = a3 & 1;
  v11 = v5 + *a4;
  v12 = swift_beginAccess();
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = v10;
  if ((a3 & 1) == 0)
  {
    a5(v12, *&a1, *&a2);
  }
}

uint64_t (*sub_1BD6322C8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BD632350;
}

void sub_1BD632368(void *a1, char a2, void (*a3)(uint64_t, double, double))
{
  v5 = *a1;
  v6 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = v5[3] + v5[4];
    if ((*(v7 + 16) & 1) == 0)
    {
      a3(v6, *v7, *(v7 + 8));
    }
  }

  free(v5);
}

id sub_1BD6323D4()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v152 - v7;
  v9 = sub_1BE04B0F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v14 = *&v1[v13];
  if (!v14 || (v15 = v14, sub_1BE04AFF4(), v16 = sub_1BE04B044(), *&v154 = v5, v17 = v1, v18 = v8, v19 = v3, v20 = v2, v21 = v16, (*(v10 + 8))(v12, v9), v22 = [v15 minimalFormattedStringValueInLocale_], v15, v21, v2 = v20, v3 = v19, v23 = v18, v24 = v17, v5 = v154, !v22))
  {
    sub_1BE04D094();
    v113 = sub_1BE04D204();
    v114 = sub_1BE052C34();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_1BD026000, v113, v114, "NearbyPeerPayment/VFX: no amount present when updating character bounds for vfx", v115, 2u);
      MEMORY[0x1BFB45F20](v115, -1, -1);
    }

    v116 = *(v3 + 8);
    v117 = v5;
    return v116(v117, v2);
  }

  v25 = sub_1BE052434();
  v27 = v26;

  static NearbyPeerPaymentVFXUtilities.updateCharacterPlacement(formattedAmount:)(v25, v27, v157);
  v160 = v157[2];
  v161 = v157[3];
  v162 = v157[4];
  v163 = v157[5];
  v158 = v157[0];
  v159 = v157[1];
  v28 = *&v157[0];
  if (!*&v157[0])
  {
    sub_1BE04D094();
    sub_1BE048C84();
    v118 = sub_1BE04D204();
    v119 = sub_1BE052C34();
    v27, v120, v121, v122, v123, v124, v125, v126;
    if (os_log_type_enabled(v118, v119))
    {
      v127 = swift_slowAlloc();
      v128 = v2;
      v129 = swift_slowAlloc();
      v156[0] = v129;
      *v127 = 136315138;
      v130 = sub_1BD123690(v25, v27, v156);
      v27, v131, v132, v133, v134, v135, v136, v137;
      *(v127 + 4) = v130;
      _os_log_impl(&dword_1BD026000, v118, v119, "NearbyPeerPayment/VFX: failed to update character placement for formattedAmount: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v129, v138, v139, v140, v141, v142, v143, v144);
      MEMORY[0x1BFB45F20](v129, -1, -1);
      MEMORY[0x1BFB45F20](v127, -1, -1);

      return (*(v3 + 8))(v23, v128);
    }

    v27, v145, v146, v147, v148, v149, v150, v151;
    v116 = *(v3 + 8);
    v117 = v23;
    return v116(v117, v2);
  }

  v29 = *(&v158 + 1);
  v31 = v159;
  v30 = *&v160;
  v32 = *(&v162 + 1);
  v33 = v163;
  sub_1BD0DE19C(&v158, v156, &qword_1EBD4DC38, &qword_1BE0E9778);
  v28, v34, v35, v36, v37, v38, v39, v40;
  *(&v33 + 1), v41, v42, v43, v44, v45, v46, v47;
  v164.origin.x = v29;
  *&v164.origin.y = v31;
  v164.size.height = v30;
  *&v48 = CGRectGetWidth(v164);
  v154 = v48;
  result = [v24 view];
  if (result)
  {
    v50 = result;
    [result bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v165.origin.x = v52;
    v165.origin.y = v54;
    v165.size.width = v56;
    v165.size.height = v58;
    *&v59 = CGRectGetWidth(v165);
    v153 = v59;
    *&v59 = v29;
    v61 = v31 >> 64;
    v60 = v31;
    v62 = v30;
    *&v63 = CGRectGetHeight(*&v59);
    v152 = v63;
    result = [v24 view];
    if (result)
    {
      v71 = result;
      v27, v64, v65, v66, v67, v68, v69, v70;
      [v71 bounds];
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;

      v166.origin.x = v73;
      v166.origin.y = v75;
      v166.size.width = v77;
      v166.size.height = v79;
      Height = CGRectGetHeight(v166);
      *&v81.f64[0] = v154;
      *&v82.f64[0] = v153;
      *&v81.f64[1] = v152;
      v82.f64[1] = Height;
      v155[0] = 0;
      v83 = [objc_opt_self() valueWithVFXFloat2_];
      v156[3] = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
      v156[0] = v83;
      VFXNode.setBehaviorGraphValue(key:value:)(v155, v156);
      sub_1BD0DE53C(v156, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v84 = &v24[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize];
      swift_beginAccess();
      *v84 = *(&v31 + 1);
      v84[1] = v30;
      sub_1BD0DE19C(&v158, v156, &qword_1EBD4DC38, &qword_1BE0E9778);
      v28, v85, v86, v87, v88, v89, v90, v91;

      v32, v92, v93, v94, v95, v96, v97, v98;
      sub_1BD633E0C(*(&v33 + 1));

      v32, v99, v100, v101, v102, v103, v104, v105;
      *(&v33 + 1), v106, v107, v108, v109, v110, v111, v112;
      return sub_1BD0DE53C(v157, &unk_1EBD4DC40, &unk_1BE0E9780);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD632A4C(double a1, double a2)
{
  result = [v2 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v31.origin.x = v8;
    v31.origin.y = v10;
    v31.size.width = v12;
    v31.size.height = v14;
    Width = CGRectGetWidth(v31);
    result = [v2 view];
    if (result)
    {
      v16 = result;
      v17 = a1 / Width;
      [result bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v32.origin.x = v19;
      v32.origin.y = v21;
      v32.size.width = v23;
      v32.size.height = v25;
      Height = CGRectGetHeight(v32);
      v30 = 8;
      *&v27 = v17;
      *&Height = a2 / Height;
      HIDWORD(v27) = LODWORD(Height);
      v28 = [objc_opt_self() valueWithVFXFloat2_];
      v29[3] = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
      v29[0] = v28;
      VFXNode.setBehaviorGraphValue(key:value:)(&v30, v29);
      return sub_1BD0DE53C(v29, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD632BE4()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v150 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings);
  sub_1BE04D094();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();

  v13 = os_log_type_enabled(v11, v12);
  v152 = v2;
  v161 = v5;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v162 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    *&v170 = v16;
    *v15 = 136315650;
    LOBYTE(v168) = 48;
    v17 = VFXNode.behaviorGraphValue(key:)(&v168);
    v18 = sub_1BD123690(v17._countAndFlagsBits, v17._object, &v170);
    v17._object, v19, v20, v21, v22, v23, v24, v25;
    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    LOBYTE(v168) = 26;
    v26 = VFXNode.behaviorGraphValue(key:)(&v168);
    v27 = sub_1BD123690(v26._countAndFlagsBits, v26._object, &v170);
    v26._object, v28, v29, v30, v31, v32, v33, v34;
    *(v15 + 14) = v27;
    *(v15 + 22) = 2080;
    LOBYTE(v168) = 51;
    v35 = VFXNode.behaviorGraphValue(key:)(&v168);
    v36 = sub_1BD123690(v35._countAndFlagsBits, v35._object, &v170);
    v35._object, v37, v38, v39, v40, v41, v42, v43;
    *(v15 + 24) = v36;
    _os_log_impl(&dword_1BD026000, v11, v12, "NearbyPeerPayment/VFX: Amount placement. Shader values. transferAmount: %s; modelOpacity: %s; textMaterialCircularMask: %s", v15, 0x20u);
    swift_arrayDestroy();
    v44 = v16;
    v2 = v152;
    MEMORY[0x1BFB45F20](v44, -1, -1);
    v45 = v15;
    v3 = v162;
    MEMORY[0x1BFB45F20](v45, -1, -1);
  }

  v159 = v3[1];
  v159(v8, v2);
  v46 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels;
  swift_beginAccess();
  v47 = *(v1 + v46);
  if (!(v47 >> 62))
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
      return;
    }

    goto LABEL_5;
  }

  v48 = sub_1BE053704();
  if (v48)
  {
LABEL_5:
    if (v48 < 1)
    {
      __break(1u);
      return;
    }

    v157 = v47 & 0xC000000000000001;
    v150[1] = "mitter.pointCache";
    v156 = v3 + 1;
    v150[0] = "starterTextBurstCount";
    sub_1BE048C84();
    v49 = 0;
    *&v50 = 136315906;
    v151 = v50;
    v153 = v47;
    v158 = v48;
    while (1)
    {
      v59 = v157 ? MEMORY[0x1BFB40900](v49, v47) : *(v47 + 8 * v49 + 32);
      v60 = v59;
      v61 = sub_1BE052404();
      v62 = [v60 childNodeWithName_];

      v162 = v60;
      if (v62 && (v63 = [v62 behaviorGraph]) != 0)
      {
        v64 = v63;
        v65 = sub_1BE052404();
        v66 = [v64 objectForKeyedSubscript_];

        v67 = v49;
        if (v66)
        {
          sub_1BE053624();
          swift_unknownObjectRelease();
        }

        else
        {
          v168 = 0u;
          v169 = 0u;
        }

        v69 = v2;
        v170 = v168;
        v171 = v169;
        v68 = v153;
      }

      else
      {
        v67 = v49;
        v68 = v47;
        v69 = v2;
        v170 = 0u;
        v171 = 0u;
      }

      v70 = v161;
      sub_1BE04D094();
      sub_1BD0DE19C(&v170, &v168, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v71 = v62;
      v72 = sub_1BE04D204();
      v73 = sub_1BE052C54();

      v160 = v73;
      if (os_log_type_enabled(v72, v73))
      {
        break;
      }

      sub_1BD0DE53C(&v168, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v2 = v69;
      v159(v70, v69);
      sub_1BD0DE53C(&v170, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v47 = v68;
      v58 = v67;
LABEL_8:
      v49 = v58 + 1;
      if (v158 == v49)
      {
        v47, v51, v52, v53, v54, v55, v56, v57;
        return;
      }
    }

    v155 = v71;
    v74 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v167 = v154;
    *v74 = v151;
    sub_1BD0DE19C(&v168, v165, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    if (v166)
    {
      sub_1BD0E5E8C(0, &qword_1EBD4DB08, 0x1E69DF2E0);
      v75 = v72;
      v58 = v67;
      if (swift_dynamicCast())
      {
        v76 = v163;
        v77 = [v163 name];

        v78 = sub_1BE052434();
        v80 = v79;

LABEL_25:
        sub_1BD0DE53C(&v168, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v81 = sub_1BD123690(v78, v80, &v167);
        v80, v82, v83, v84, v85, v86, v87, v88;
        *(v74 + 4) = v81;
        *(v74 + 12) = 2080;
        if (v62)
        {
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
          v89 = swift_allocObject();
          v165[0] = v89;
          v90 = v155;
          v91 = [v155 behaviorGraph];
          if (v91)
          {
            v92 = v91;
            v93 = sub_1BE052404();
            v94 = [v92 objectForKeyedSubscript_];

            if (v94)
            {
              sub_1BE053624();
              swift_unknownObjectRelease();
            }

            else
            {
              v163 = 0u;
              v164 = 0u;
            }

            v105 = v164;
            *(v89 + 16) = v163;
            *(v89 + 32) = v105;
          }

          else
          {
            *(v89 + 16) = 0u;
            *(v89 + 32) = 0u;
          }

          v106 = sub_1BE0524A4();
          v108 = v107;
          v109 = sub_1BD123690(v106, v107, &v167);
          v108, v110, v111, v112, v113, v114, v115, v116;
          *(v74 + 14) = v109;
          *(v74 + 22) = 2080;
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
          v117 = swift_allocObject();
          v165[0] = v117;
          v118 = [v90 behaviorGraph];
          if (v118)
          {
            v119 = v118;
            v120 = sub_1BE052404();
            v121 = [v119 objectForKeyedSubscript_];

            if (v121)
            {
              sub_1BE053624();
              swift_unknownObjectRelease();
            }

            else
            {
              v163 = 0u;
              v164 = 0u;
            }

            v122 = v164;
            *(v117 + 16) = v163;
            *(v117 + 32) = v122;
          }

          else
          {
            *(v117 + 16) = 0u;
            *(v117 + 32) = 0u;
          }

          v104 = sub_1BE0524A4();
          v95 = v123;
        }

        else
        {
          v95 = 0xE300000000000000;
          v96 = sub_1BD123690(0x6C696E, 0xE300000000000000, &v167);
          0xE300000000000000, v97, v98, v99, v100, v101, v102, v103;
          *(v74 + 14) = v96;
          *(v74 + 22) = 2080;
          v104 = 7104878;
          v90 = v155;
        }

        v124 = sub_1BD123690(v104, v95, &v167);
        v95, v125, v126, v127, v128, v129, v130, v131;
        *(v74 + 24) = v124;
        *(v74 + 32) = 2080;
        if (v62)
        {
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
          v132 = swift_allocObject();
          v165[0] = v132;
          v133 = [v90 behaviorGraph];
          if (v133)
          {
            v134 = v133;
            v135 = sub_1BE052404();
            v136 = [v134 objectForKeyedSubscript_];

            if (v136)
            {
              sub_1BE053624();
              swift_unknownObjectRelease();
            }

            else
            {
              v163 = 0u;
              v164 = 0u;
            }

            v2 = v152;
            v139 = v164;
            *(v132 + 16) = v163;
            *(v132 + 32) = v139;
          }

          else
          {
            *(v132 + 16) = 0u;
            *(v132 + 32) = 0u;
            v2 = v152;
          }

          v138 = sub_1BE0524A4();
          v137 = v140;
        }

        else
        {
          v137 = 0xE300000000000000;
          v138 = 7104878;
          v2 = v152;
        }

        v141 = sub_1BD123690(v138, v137, &v167);
        v137, v142, v143, v144, v145, v146, v147, v148;
        *(v74 + 34) = v141;
        _os_log_impl(&dword_1BD026000, v75, v160, "NearbyPeerPayment/VFX: Character placement values. model render mesh: %s; digitScale: %s; startingHeight: %s; digitPositionFromCenter: %s", v74, 0x2Au);
        v149 = v154;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v149, -1, -1);
        MEMORY[0x1BFB45F20](v74, -1, -1);

        v159(v161, v2);
        sub_1BD0DE53C(&v170, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v47 = v153;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1BD0DE53C(v165, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v75 = v72;
      v58 = v67;
    }

    v80 = 0xE400000000000000;
    v78 = 1701736302;
    goto LABEL_25;
  }
}

void sub_1BD633728()
{
  aBlock = 0x5F72616863;
  v29 = 0xE500000000000000;
  MEMORY[0x1BFB3F610]();
  v34 = 0;
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_world) assetRegistry];
  v2 = [v1 rootNode];

  v3 = swift_allocObject();
  v3[2] = 0x5F72616863;
  v3[3] = 0xE500000000000000;
  v3[4] = &v34;
  v4 = swift_allocObject();
  v4[2] = sub_1BD638110;
  v4[3] = v3;
  v32 = sub_1BD63816C;
  v33 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1BD637520;
  v31 = &block_descriptor_57_3;
  v5 = _Block_copy(&aBlock);
  v6 = v33;
  sub_1BE048964();
  v6, v7, v8, v9, v10, v11, v12, v13;
  [v2 enumerateHierarchyUsingBlock_];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();
  v4, v14, v15, v16, v17, v18, v19, v20;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v3, v21, v22, v23, v24, v25, v26, v27;
  }
}

void sub_1BD6338F0()
{
  aBlock = 6251376;
  v29 = 0xE300000000000000;
  MEMORY[0x1BFB3F610]();
  v34 = 0;
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_world) assetRegistry];
  v2 = [v1 rootNode];

  v3 = swift_allocObject();
  v3[2] = 6251376;
  v3[3] = 0xE300000000000000;
  v3[4] = &v34;
  v4 = swift_allocObject();
  v4[2] = sub_1BD6380DC;
  v4[3] = v3;
  v32 = sub_1BD6380E8;
  v33 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1BD637520;
  v31 = &block_descriptor_47_0;
  v5 = _Block_copy(&aBlock);
  v6 = v33;
  sub_1BE048964();
  v6, v7, v8, v9, v10, v11, v12, v13;
  [v2 enumerateHierarchyUsingBlock_];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();
  v4, v14, v15, v16, v17, v18, v19, v20;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v3, v21, v22, v23, v24, v25, v26, v27;
  }
}

void sub_1BD633AB4(void *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_digitTemplate) clone];
  v4 = sub_1BE052404();
  v5 = [v3 childNodeWithName_];

  v6 = sub_1BE052404();
  v7 = [v3 childNodeWithName_];

  v8 = sub_1BE052404();
  v9 = [v3 childNodeWithName_];

  v10 = sub_1BE052404();
  v11 = [v3 childNodeWithName_];

  if (v5 && v7 && v9 && v11)
  {
    v20 = v11;
    v19 = v9;
    v18 = v7;
    v12 = v5;
    sub_1BD6338F0();
    if (v13)
    {
      v17 = v13;
      sub_1BD633728();
      v15 = v14;

      if (v15)
      {
        v23 = 58;
        ObjectType = swift_getObjectType();
        v21[0] = v15;
        swift_unknownObjectRetain();
        VFXNode.setBehaviorGraphValue(key:value:)(&v23, v21);
        sub_1BD0DE53C(v21, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v23 = 57;
        v16 = swift_getObjectType();
        ObjectType = v16;
        v21[0] = v17;
        swift_unknownObjectRetain();
        VFXNode.setBehaviorGraphValue(key:value:)(&v23, v21);
        sub_1BD0DE53C(v21, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v23 = 57;
        ObjectType = v16;
        v21[0] = v17;
        swift_unknownObjectRetain();
        VFXNode.setBehaviorGraphValue(key:value:)(&v23, v21);
        sub_1BD0DE53C(v21, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v23 = 57;
        ObjectType = v16;
        v21[0] = v17;
        swift_unknownObjectRetain();
        VFXNode.setBehaviorGraphValue(key:value:)(&v23, v21);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1BD0DE53C(v21, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v11;
}

void sub_1BD633E0C(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v308 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B0F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v308 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (!v13 || (v14 = v13, sub_1BE04AFF4(), v15 = sub_1BE04B044(), (*(v9 + 8))(v11, v8), v16 = [v14 minimalFormattedStringValueInLocale_], v14, v15, !v16))
  {
    sub_1BE04D094();
    v48 = sub_1BE04D204();
    v49 = sub_1BE052C34();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1BD026000, v48, v49, "NearbyPeerPayment/VFX: no amount present when updating character bounds for vfx", v50, 2u);
      MEMORY[0x1BFB45F20](v50, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v17 = sub_1BE052434();
  v19 = v18;

  _s9PassKitUI29NearbyPeerPaymentVFXUtilitiesO21mappedCharacterValues15formattedAmountSaySSGSS_tFZ_0(v17, v19);
  v310 = v20;
  v322 = sub_1BD5131E0(v17, v19);
  v19, v21, v22, v23, v24, v25, v26, v27;
  v28 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels;
  swift_beginAccess();
  v36 = *&v28[v2];
  if (v36 >> 62)
  {
LABEL_105:
    v37 = sub_1BE053704();
    if (v37)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
LABEL_5:
      if (v37 < 1)
      {
        goto LABEL_108;
      }

      sub_1BE048C84();
      for (i = 0; i != v37; ++i)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1BFB40900](i, v36);
        }

        else
        {
          v39 = *(v36 + 8 * i + 32);
        }

        v40 = v39;
        [v39 removeFromParentNode];
      }

      v36, v41, v42, v43, v44, v45, v46, v47;
    }
  }

  v51 = *&v28[v2];
  v52 = MEMORY[0x1E69E7CC0];
  *&v28[v2] = MEMORY[0x1E69E7CC0];
  v51, v29, v30, v31, v32, v33, v34, v35;
  v53 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentStarterTextNodes;
  swift_beginAccess();
  v54 = *(v2 + v53);
  v313 = v53;
  *(v2 + v53) = v52;
  v54, v55, v56, v57, v58, v59, v60, v61;
  v62 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes;
  swift_beginAccess();
  v63 = *(v2 + v62);
  v309 = v62;
  *(v2 + v62) = v52;
  v63, v64, v65, v66, v67, v68, v69, v70;
  v71 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes;
  swift_beginAccess();
  v72 = *(v2 + v71);
  v312 = v71;
  *(v2 + v71) = v52;
  v72, v73, v74, v75, v76, v77, v78, v79;
  v319 = v310[2];
  if (!v319)
  {
LABEL_101:
    v322, v80, v81, v82, v83, v84, v85, v86;
    v310, v301, v302, v303, v304, v305, v306, v307;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x278))();
    return;
  }

  if (v319 > a1[2])
  {
    goto LABEL_109;
  }

  v315 = *(v2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_digitRoot);
  v318 = a1 + 4;
  v317 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  swift_beginAccess();
  v87 = 0;
  v314 = "starterTextBurstCount";
  v321 = v322 + 32;
  v88 = v310 + 5;
  v316 = v28;
  v311 = v2;
  while (1)
  {
    v92 = *(v88 - 1);
    v91 = *v88;
    v325 = v88;
    sub_1BE048C84();
    v326 = v92;
    v327 = v91;
    sub_1BD633AB4(&v335);
    v28 = v335;
    v93 = v336;
    v95 = v337;
    v94 = v338;
    v96 = v339;
    v329 = *&v318[2 * v87];
    v330 = v338;
    v331 = v337;
    v324 = v336;
    v332 = v339;
    v328 = vextq_s8(v329, v329, 8uLL);
    if (v336)
    {
      v320 = v87;
      v97 = v335;
      v98 = objc_opt_self();
      v99 = v96;
      v100 = v97;
      v101 = v93;
      v102 = v95;
      v103 = v94;
      a1 = [v98 valueWithVFXFloat2_];
      v338 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
      v335 = a1;
      v104 = [v101 behaviorGraph];
      if (v104)
      {
        a1 = v104;
        sub_1BD0DE19C(&v335, v333, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v105 = v334;
        if (v334)
        {
          v106 = __swift_project_boxed_opaque_existential_1(v333, v334);
          v107 = *(v105 - 8);
          v108 = MEMORY[0x1EEE9AC00](v106);
          v110 = &v308 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v107 + 16))(v110, v108);
          v111 = sub_1BE053B74();
          (*(v107 + 8))(v110, v105);
          __swift_destroy_boxed_opaque_existential_0(v333, v112, v113, v114, v115, v116, v117, v118);
        }

        else
        {
          v111 = 0;
        }

        v130 = sub_1BE052404();
        [a1 setObject:v111 forKeyedSubscript:v130];

        swift_unknownObjectRelease();
      }

      sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v338 = MEMORY[0x1E69E6448];
      LODWORD(v335) = v329.i32[1];
      v36 = v101;
      v131 = [v36 behaviorGraph];
      v132 = v36;
      v95 = v331;
      v28 = v97;
      v2 = v311;
      v87 = v320;
      if (v131)
      {
        a1 = v131;
        sub_1BD0DE19C(&v335, v333, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v133 = v334;
        if (v334)
        {
          v134 = __swift_project_boxed_opaque_existential_1(v333, v334);
          v135 = *(v133 - 8);
          v136 = MEMORY[0x1EEE9AC00](v134);
          v138 = &v308 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v135 + 16))(v138, v136);
          v139 = sub_1BE053B74();
          v140 = v138;
          v95 = v331;
          (*(v135 + 8))(v140, v133);
          __swift_destroy_boxed_opaque_existential_0(v333, v141, v142, v143, v144, v145, v146, v147);
        }

        else
        {
          v139 = 0;
        }

        v132 = sub_1BE052404();
        [a1 setObject:v139 forKeyedSubscript:v132];

        swift_unknownObjectRelease();
      }

      sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v338 = MEMORY[0x1E69E6448];
      if (v87 >= *(v322 + 2))
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      LODWORD(v335) = *&v321[4 * v87];
      v148 = v36;
      v149 = [v148 behaviorGraph];
      if (v149)
      {
        v150 = v149;
        sub_1BD0DE19C(&v335, v333, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v151 = v334;
        if (v334)
        {
          v152 = __swift_project_boxed_opaque_existential_1(v333, v334);
          v153 = *(v151 - 8);
          v154 = MEMORY[0x1EEE9AC00](v152);
          v156 = &v308 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v153 + 16))(v156, v154);
          v157 = sub_1BE053B74();
          v158 = v156;
          v95 = v331;
          (*(v153 + 8))(v158, v151);
          __swift_destroy_boxed_opaque_existential_0(v333, v159, v160, v161, v162, v163, v164, v165);
        }

        else
        {
          v157 = 0;
        }

        v166 = sub_1BE052404();
        [v150 setObject:v157 forKeyedSubscript:v166];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v94 = v330;
      v96 = v332;
    }

    else
    {
      v119 = v339;
      v120 = v28;
      v121 = v95;
      v122 = v94;
    }

    v167 = v327;
    if (*(v2 + v317) == 1)
    {
      if (v95)
      {
        v168 = objc_opt_self();
        v169 = v95;
        a1 = [v168 valueWithVFXFloat2_];
        v338 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
        v335 = a1;
        v170 = [v169 behaviorGraph];
        v171 = v169;
        if (v170)
        {
          a1 = v170;
          sub_1BD0DE19C(&v335, v333, &qword_1EBD3EC90, &unk_1BE0BC6B0);
          v172 = v334;
          if (v334)
          {
            v173 = __swift_project_boxed_opaque_existential_1(v333, v334);
            v174 = *(v172 - 8);
            v175 = MEMORY[0x1EEE9AC00](v173);
            v177 = &v308 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v174 + 16))(v177, v175);
            v178 = sub_1BE053B74();
            v179 = v177;
            v95 = v331;
            (*(v174 + 8))(v179, v172);
            __swift_destroy_boxed_opaque_existential_0(v333, v180, v181, v182, v183, v184, v185, v186);
          }

          else
          {
            v178 = 0;
          }

          v171 = sub_1BE052404();
          [a1 setObject:v178 forKeyedSubscript:v171];

          swift_unknownObjectRelease();
        }

        sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v338 = MEMORY[0x1E69E6448];
        LODWORD(v335) = v329.i32[1];
        v36 = v169;
        v187 = [v36 behaviorGraph];
        v188 = v36;
        if (v187)
        {
          a1 = v187;
          sub_1BD0DE19C(&v335, v333, &qword_1EBD3EC90, &unk_1BE0BC6B0);
          v189 = v334;
          if (v334)
          {
            v190 = __swift_project_boxed_opaque_existential_1(v333, v334);
            v191 = *(v189 - 8);
            v192 = MEMORY[0x1EEE9AC00](v190);
            v194 = &v308 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v191 + 16))(v194, v192);
            v195 = sub_1BE053B74();
            v196 = v194;
            v95 = v331;
            (*(v191 + 8))(v196, v189);
            __swift_destroy_boxed_opaque_existential_0(v333, v197, v198, v199, v200, v201, v202, v203);
          }

          else
          {
            v195 = 0;
          }

          v188 = sub_1BE052404();
          [a1 setObject:v195 forKeyedSubscript:v188];

          swift_unknownObjectRelease();
        }

        sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v338 = MEMORY[0x1E69E6448];
        if (v87 >= *(v322 + 2))
        {
          goto LABEL_104;
        }

        LODWORD(v335) = *&v321[4 * v87];
        v204 = v36;
        v205 = [v204 behaviorGraph];
        if (v205)
        {
          v206 = v205;
          sub_1BD0DE19C(&v335, v333, &qword_1EBD3EC90, &unk_1BE0BC6B0);
          v207 = v334;
          if (v334)
          {
            v208 = __swift_project_boxed_opaque_existential_1(v333, v334);
            v209 = *(v207 - 8);
            v210 = MEMORY[0x1EEE9AC00](v208);
            v212 = &v308 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v209 + 16))(v212, v210);
            v213 = sub_1BE053B74();
            v214 = v212;
            v95 = v331;
            (*(v209 + 8))(v214, v207);
            __swift_destroy_boxed_opaque_existential_0(v333, v215, v216, v217, v218, v219, v220, v221);
          }

          else
          {
            v213 = 0;
          }

          v222 = sub_1BE052404();
          [v206 setObject:v213 forKeyedSubscript:v222];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v94 = v330;
        v96 = v332;
        v167 = v327;
      }
    }

    else
    {
      [v95 removeFromParentNode];
    }

    v223 = v326;
    v323 = v28;
    if (v326 == 0x646F69726570 && v167 == 0xE600000000000000 || (sub_1BE053B84() & 1) != 0 || v223 == 0x616D6D6F63 && v167 == 0xE500000000000000)
    {
      v167, v123, v124, v125, v126, v127, v128, v129;
LABEL_67:
      [v94 removeFromParentNode];
      v28 = v316;
      goto LABEL_68;
    }

    v283 = sub_1BE053B84();
    v284 = v167;
    v285 = v283;
    v284, v286, v287, v288, v289, v290, v291, v292;
    if (v285)
    {
      goto LABEL_67;
    }

    v28 = v316;
    if (v94)
    {
      break;
    }

LABEL_68:
    if (v96)
    {
      v224 = objc_opt_self();
      v225 = v96;
      a1 = [v224 valueWithVFXFloat2_];
      v338 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
      v335 = a1;
      v226 = [v225 behaviorGraph];
      v227 = v225;
      if (v226)
      {
        a1 = v226;
        sub_1BD0DE19C(&v335, v333, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v228 = v334;
        if (v334)
        {
          v229 = __swift_project_boxed_opaque_existential_1(v333, v334);
          v230 = *(v228 - 8);
          v231 = MEMORY[0x1EEE9AC00](v229);
          v233 = &v308 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v230 + 16))(v233, v231);
          v234 = sub_1BE053B74();
          (*(v230 + 8))(v233, v228);
          v95 = v331;
          __swift_destroy_boxed_opaque_existential_0(v333, v235, v236, v237, v238, v239, v240, v241);
        }

        else
        {
          v234 = 0;
        }

        v227 = sub_1BE052404();
        [a1 setObject:v234 forKeyedSubscript:v227];

        swift_unknownObjectRelease();
        v96 = v332;
      }

      sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v338 = MEMORY[0x1E69E6448];
      LODWORD(v335) = v329.i32[1];
      v36 = v225;
      v242 = [v36 behaviorGraph];
      v243 = v36;
      if (v242)
      {
        a1 = v242;
        sub_1BD0DE19C(&v335, v333, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v244 = v334;
        if (v334)
        {
          v245 = __swift_project_boxed_opaque_existential_1(v333, v334);
          v246 = *(v244 - 8);
          v247 = MEMORY[0x1EEE9AC00](v245);
          v249 = &v308 - ((v248 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v246 + 16))(v249, v247);
          v250 = sub_1BE053B74();
          (*(v246 + 8))(v249, v244);
          v95 = v331;
          __swift_destroy_boxed_opaque_existential_0(v333, v251, v252, v253, v254, v255, v256, v257);
        }

        else
        {
          v250 = 0;
        }

        v243 = sub_1BE052404();
        [a1 setObject:v250 forKeyedSubscript:v243];

        swift_unknownObjectRelease();
        v96 = v332;
      }

      sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v338 = MEMORY[0x1E69E6448];
      if (v87 >= *(v322 + 2))
      {
        goto LABEL_103;
      }

      LODWORD(v335) = *&v321[4 * v87];
      v258 = v36;
      v259 = [v258 behaviorGraph];
      if (v259)
      {
        v260 = v259;
        sub_1BD0DE19C(&v335, v333, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v261 = v334;
        if (v334)
        {
          v262 = __swift_project_boxed_opaque_existential_1(v333, v334);
          v263 = *(v261 - 8);
          v264 = MEMORY[0x1EEE9AC00](v262);
          v266 = &v308 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v263 + 16))(v266, v264);
          v267 = sub_1BE053B74();
          (*(v263 + 8))(v266, v261);
          v95 = v331;
          __swift_destroy_boxed_opaque_existential_0(v333, v268, v269, v270, v271, v272, v273, v274);
        }

        else
        {
          v267 = 0;
        }

        v275 = sub_1BE052404();
        [v260 setObject:v267 forKeyedSubscript:v275];

        swift_unknownObjectRelease();
        sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v96 = v332;
      }

      else
      {

        sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      }
    }

    v276 = v323;
    [v315 addChildNode_];
    swift_beginAccess();
    v277 = v276;
    MEMORY[0x1BFB3F7A0]();
    if (*((*&v28[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v28[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    if (v95)
    {
      v278 = v313;
      swift_beginAccess();
      v279 = v95;
      MEMORY[0x1BFB3F7A0]();
      if (*((*(v2 + v278) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v278) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      swift_endAccess();
      v96 = v332;
    }

    if (v96)
    {
      v280 = v96;
      v281 = v312;
      swift_beginAccess();
      v282 = v280;
      MEMORY[0x1BFB3F7A0]();
      if (*((*(v2 + v281) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v281) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      swift_endAccess();
    }

    ++v87;

    v89 = v324;
    v90 = v330;

    v88 = v325 + 2;
    if (v319 == v87)
    {
      goto LABEL_101;
    }
  }

  LOBYTE(v333[0]) = 31;
  v293 = objc_opt_self();
  v294 = v94;
  v295 = [v293 valueWithVFXFloat2_];
  v338 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  v335 = v295;
  VFXNode.setBehaviorGraphValue(key:value:)(v333, &v335);

  sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  LOBYTE(v333[0]) = 32;
  v296 = MEMORY[0x1E69E6448];
  v338 = MEMORY[0x1E69E6448];
  LODWORD(v335) = v329.i32[1];
  v297 = v294;
  VFXNode.setBehaviorGraphValue(key:value:)(v333, &v335);

  sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  LOBYTE(v333[0]) = 25;
  v338 = v296;
  if (v87 < *(v322 + 2))
  {
    LODWORD(v335) = *&v321[4 * v87];
    v298 = v297;
    VFXNode.setBehaviorGraphValue(key:value:)(v333, &v335);

    sub_1BD0DE53C(&v335, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v299 = v309;
    swift_beginAccess();
    v300 = v298;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(v2 + v299) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v299) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    goto LABEL_68;
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
}

uint64_t sub_1BD6359BC(float64x2_t a1, double a2)
{
  a1.f64[1] = a1.f64[0] + a1.f64[0] + a2 + a2;
  v5 = 23;
  v2 = [objc_opt_self() valueWithVFXFloat2_];
  v4[3] = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  v4[0] = v2;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v4);
  return sub_1BD0DE53C(v4, &qword_1EBD3EC90, &unk_1BE0BC6B0);
}

id static NearbyPeerPaymentVFXViewController.controller(for:)(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 2)
    {
      return 0;
    }

    else if (a1 == 1)
    {
      return [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentSenderVFXViewController()) init];
    }

    else
    {
      result = sub_1BE053BE4();
      __break(1u);
    }
  }

  else
  {
    v2 = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentReceiverVFXViewController(0)) init];
    v3 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
    swift_beginAccess();
    result = v2;
    *(v2 + v3) = 0;
  }

  return result;
}

void sub_1BD635B58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1BD635BC0(v5);
}

void sub_1BD635BC0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  v5 = swift_beginAccess();
  v6 = *(v2 + v4);
  if (a1)
  {
    if (v6)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
      v7 = v6;
      v8 = a1;
      v9 = sub_1BE053074();

      if (v9)
      {
        return;
      }
    }
  }

  else if (!v6)
  {
    return;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x278))(v5);
  if (*(v2 + v4))
  {
    sub_1BD6323D4();
    v10 = [v2 view];
    if (v10)
    {
      v11 = v10;
      [v10 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD635CF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, double, double))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *a2 + *a5;
  v11 = swift_beginAccess();
  *v10 = v7;
  *(v10 + 8) = v8;
  *(v10 + 16) = v9;
  if ((v9 & 1) == 0)
  {
    a6(v11, v7, v8);
  }
}

id NearbyPeerPaymentVFXViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyPeerPaymentVFXViewController.init()()
{
  v1 = v0;
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v104 - v7;
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount] = 0;
  v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles] = 1;
  v9 = &v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountCenter];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentStarterTextNodes] = v12;
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes] = v12;
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes] = v12;
  v13 = &v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_rotationMatrix];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion] = 0;
  v14 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_stateTransitionSequencer;
  type metadata accessor for NearbyPeerPaymentStateTransitionSequencer();
  swift_allocObject();
  *&v0[v14] = sub_1BD5127F8();
  sub_1BD0E5E8C(0, &qword_1EBD35DA8, 0x1E696AAE8);
  v15 = sub_1BE053014();
  v16 = sub_1BE052404();
  v17 = sub_1BE052404();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (!v18)
  {
    while (1)
    {
LABEL_32:
      sub_1BE053994();
      __break(1u);
    }
  }

  sub_1BE04A9F4();

  sub_1BD0E5E8C(0, &unk_1EBD4DB60, 0x1E69DF388);
  (*(v3 + 16))(v5, v8, v2);
  v19 = sub_1BD1AAE28(MEMORY[0x1E69E7CC0]);
  v20 = sub_1BD636A80(v5, v19);
  v21 = v20;
  v114 = v3;
  if (!v20)
  {
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_1BE053834();
    v119, v85, v86, v87, v88, v89, v90, v91;
    v118 = 0xD000000000000022;
    v119 = 0x80000001BE131F50;
    sub_1BD63811C(&qword_1EBD49660, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v92 = sub_1BE053B24();
    v94 = v93;
    MEMORY[0x1BFB3F610](v92);
    v94, v95, v96, v97, v98, v99, v100, v101;
    goto LABEL_32;
  }

  v116 = v2;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_world] = v20;
  type metadata accessor for NearbyPeerPaymentVFXView();
  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = v21;
  v24 = [v22 init];
  [v24 setWorld_];
  [v24 setPixelFormat_];
  [v24 setAntialiasingMode_];
  [v24 setRendersContinuously_];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 blackColor];
  [v26 setBackgroundColor_];

  v28 = [v23 rootNode];
  v29 = sub_1BE052404();
  v30 = [v28 childNodeWithName_];

  v112 = v30;
  if (!v30)
  {
    goto LABEL_32;
  }

  v31 = [v23 rootNode];
  v32 = sub_1BE052404();
  v33 = [v31 childNodeWithName_];

  v111 = v33;
  if (!v33)
  {
LABEL_22:

    goto LABEL_32;
  }

  v34 = [v23 rootNode];
  v35 = sub_1BE052404();
  v36 = [v34 childNodeWithName_];

  if (!v36)
  {
LABEL_21:

    v112 = v111;
    goto LABEL_22;
  }

  v113 = v26;
  v37 = [v23 rootNode];
  v38 = sub_1BE052404();
  v39 = [v37 childNodeWithName_];

  v108 = v39;
  if (!v39)
  {
    v108 = v36;
LABEL_20:

    v103 = v111;
    v111 = v108;
    v112 = v103;
    goto LABEL_21;
  }

  v109 = v36;
  v40 = [v23 rootNode];
  v41 = sub_1BE052404();
  v42 = [v40 childNodeWithName_];

  v106 = v42;
  if (!v42)
  {

    v102 = v111;
    v111 = v109;
    v112 = v102;
    goto LABEL_20;
  }

  v43 = [v23 rootNode];
  v44 = sub_1BE052404();
  v45 = [v43 childNodeWithName_];

  if (!v45)
  {
    goto LABEL_32;
  }

  v46 = [v23 rootNode];
  v47 = sub_1BE052404();
  v48 = [v46 childNodeWithName_];

  if (!v48)
  {
LABEL_31:

    goto LABEL_32;
  }

  v110 = v45;
  v49 = [v23 rootNode];
  v50 = sub_1BE052404();
  v51 = [v49 childNodeWithName_];

  if (!v51)
  {
    v45 = v48;
LABEL_30:

    goto LABEL_31;
  }

  v115 = v8;
  v52 = [v23 rootNode];
  v53 = sub_1BE052404();
  v54 = [v52 childNodeWithName_];

  if (!v54)
  {
    v45 = v51;
    v51 = v48;
LABEL_29:

    v110 = v51;
    goto LABEL_30;
  }

  v55 = [v23 rootNode];
  v56 = sub_1BE052404();
  v57 = [v55 childNodeWithName_];

  if (!v57)
  {
    v57 = v54;
LABEL_28:

    v110 = v48;
    v45 = v57;
    goto LABEL_29;
  }

  v105 = v51;
  v107 = v48;
  v58 = [v23 rootNode];
  v59 = sub_1BE052404();
  v60 = [v58 childNodeWithName_];

  if (!v60)
  {

    v110 = v107;
    v48 = v105;
    v51 = v54;
    goto LABEL_28;
  }

  v62 = v112;
  v61 = v113;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_vfxView] = v113;
  v63 = v106;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_camera] = v106;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ambientEmitter] = v62;
  v64 = v111;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_unknownAmountEmitter] = v111;
  v66 = v108;
  v65 = v109;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings] = v109;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_digitRoot] = v66;
  v104 = v61;
  v67 = v66;
  v109 = v65;
  v111 = v64;
  v112 = v62;
  v108 = v63;
  v68 = sub_1BE052404();
  v113 = v67;
  v69 = [v67 childNodeWithName_];

  if (!v69)
  {
    goto LABEL_32;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_digitTemplate] = v69;
  v70 = v69;
  [v70 removeFromParentNode];
  v71 = v107;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing] = v107;
  v72 = v105;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRingParticles] = v105;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_pulsingGradient] = v54;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA] = v57;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB] = v60;
  v73 = v110;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferStatusParticles] = v110;
  v74 = objc_allocWithZone(MEMORY[0x1E69634D0]);
  v75 = v71;
  v76 = v72;
  v77 = v54;
  v78 = v57;
  v79 = v60;
  v80 = v73;
  v81 = [v74 init];
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_motionManager] = v81;
  [v81 setDeviceMotionUpdateInterval_];
  v82 = type metadata accessor for NearbyPeerPaymentVFXViewController();
  v117.receiver = v1;
  v117.super_class = v82;
  v83 = objc_msgSendSuper2(&v117, sel_initWithNibName_bundle_, 0, 0);

  (*(v114 + 8))(v115, v116);
  return v83;
}

id sub_1BD636A80(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04A9C4();
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_1BD63811C(&qword_1EBD38240, type metadata accessor for VFXWorldLoaderOption, &unk_1BE0B6250);
    v5 = sub_1BE052224();
    a2, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v5 = 0;
  }

  v21[0] = 0;
  v13 = [swift_getObjCClassFromMetadata() worldWithURL:v4 options:v5 error:v21];

  v14 = v21[0];
  if (v13)
  {
    v15 = sub_1BE04AA64();
    v16 = *(*(v15 - 8) + 8);
    v17 = v14;
    v16(a1, v15);
  }

  else
  {
    v18 = v21[0];
    sub_1BE04A854();

    swift_willThrow();
    v19 = sub_1BE04AA64();
    (*(*(v19 - 8) + 8))(a1, v19);
  }

  return v13;
}

id sub_1BD636D40(uint64_t a1)
{
  v2 = v1;
  v84.receiver = v1;
  v84.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  objc_msgSendSuper2(&v84, sel_viewDidLayoutSubviews);
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_vfxView];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  [result bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  result = [v2 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v85.origin.x = v16;
  v85.origin.y = v18;
  v85.size.width = v20;
  v85.size.height = v22;
  Height = CGRectGetHeight(v85);
  v81[0] = 9;
  v24 = MEMORY[0x1E69E7DE0];
  v83 = MEMORY[0x1E69E7DE0];
  v82[0] = 60.0 / Height;
  VFXNode.setBehaviorGraphValue(key:value:)(v81, v82);
  sub_1BD0DE53C(v82, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v81[0] = 10;
  v83 = v24;
  v82[0] = 0.0666666667;
  VFXNode.setBehaviorGraphValue(key:value:)(v81, v82);
  sub_1BD0DE53C(v82, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v25 = &v2[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter];
  swift_beginAccess();
  if (v25[16] == 1)
  {
    result = [v2 view];
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v26 = result;
    [result bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v86.origin.x = v28;
    v86.origin.y = v30;
    v86.size.width = v32;
    v86.size.height = v34;
    MidX = CGRectGetMidX(v86);
    v87.origin.x = v28;
    v87.origin.y = v30;
    v87.size.width = v32;
    v87.size.height = v34;
    MidY = CGRectGetMidY(v87);
    sub_1BD632A40(MidX, MidY);
  }

  v37 = &v2[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountCenter];
  swift_beginAccess();
  if (v37[16] != 1)
  {
LABEL_10:
    v80 = 21;
    result = [v2 view];
    if (result)
    {
      v60 = result;
      [result bounds];
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;

      v91.origin.x = v62;
      v91.origin.y = v64;
      v91.size.width = v66;
      v91.size.height = v68;
      Width = CGRectGetWidth(v91);
      result = [v2 view];
      if (result)
      {
        v70 = result;
        [result bounds];
        v72 = v71;
        v74 = v73;
        v76 = v75;
        v78 = v77;

        v92.origin.x = v72;
        v92.origin.y = v74;
        v92.size.width = v76;
        v92.size.height = v78;
        v79 = Width / CGRectGetHeight(v92);
        v83 = MEMORY[0x1E69E6448];
        *v82 = v79;
        VFXNode.setBehaviorGraphValue(key:value:)(&v80, v82);
        return sub_1BD0DE53C(v82, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = [v2 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v38 = result;
  [result bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v88.origin.x = v40;
  v88.origin.y = v42;
  v88.size.width = v44;
  v88.size.height = v46;
  v47 = CGRectGetHeight(v88);
  result = [v2 view];
  if (result)
  {
    v48 = result;
    v49 = v47 * 0.49;
    [result bounds];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v89.origin.x = v51;
    v89.origin.y = v53;
    v89.size.width = v55;
    v89.size.height = v57;
    v58 = CGRectGetMidX(v89);
    v90.origin.x = v51;
    v90.origin.y = v53;
    v90.size.width = v55;
    v90.size.height = v57;
    CGRectGetMidY(v90);
    v59 = &v2[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize];
    swift_beginAccess();
    sub_1BD632A34(v58, v49 + v59[1] * -0.5);
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1BD637210(uint64_t a1)
{
  v2 = a1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  objc_msgSendSuper2(&v18, sel_viewWillAppear_, v2 & 1);
  v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion] = 1;
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_motionManager];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainQueue];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_1BD637AE0;
  v17 = v7;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1BD14E1D8;
  v16[3] = &block_descriptor_143;
  v8 = _Block_copy(v16);
  v17, v9, v10, v11, v12, v13, v14, v15;
  [v5 startDeviceMotionUpdatesToQueue:v6 withHandler:v8];
  _Block_release(v8);
}

void sub_1BD637368(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = [a1 attitude];
      if (v6)
      {
        if (*(v5 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion) == 1)
        {
          v7 = v6;
          [v6 quaternion];
          sub_1BD6359BC(v8, v9);
          v10 = v5;
          v5 = v7;
        }

        else
        {
          v10 = v6;
        }
      }
    }
  }
}

void sub_1BD637520(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1BD63757C(void *a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = [a1 name];
  v11 = sub_1BE052434();
  v13 = v12;

  if (v11 == a3 && v13 == a4)
  {
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    v22 = sub_1BE053B84();
    v13, v23, v24, v25, v26, v27, v28, v29;
    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  *a2 = 1;
  *a5 = [a1 asset];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BE0B69E0;
  sub_1BE053834();
  0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1BFB3F610](a3, a4);
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 32) = 0xD000000000000020;
  *(v30 + 40) = 0x80000001BE132230;
  sub_1BE053784();

  v30, v38, v39, v40, v41, v42, v43, v44;
}

void sub_1BD637734(void *a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = [a1 name];
  v11 = sub_1BE052434();
  v13 = v12;

  if (v11 == a3 && v13 == a4)
  {
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    v22 = sub_1BE053B84();
    v13, v23, v24, v25, v26, v27, v28, v29;
    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  *a2 = 1;
  *a5 = [a1 asset];

  swift_unknownObjectRelease();
}

id NearbyPeerPaymentVFXViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1BE052404();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

id NearbyPeerPaymentVFXViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 keypath_get_11Tm@<Q0>(void *a1@<X0>, void *a2@<X3>, __n128 *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a3 = *v4;
  a3[1].n128_u8[0] = v5;
  return result;
}

void sub_1BD637F9C()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles) = 1;
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountCenter;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentStarterTextNodes) = v4;
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes) = v4;
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes) = v4;
  v5 = (v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_rotationMatrix);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion) = 0;
  v6 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_stateTransitionSequencer;
  type metadata accessor for NearbyPeerPaymentStateTransitionSequencer();
  swift_allocObject();
  *(v0 + v6) = sub_1BD5127F8();
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD63811C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD6381A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC50, &qword_1BE0E9848);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25[-v2];
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 32);
  v29 = *(v0 + 40);
  v7 = swift_allocObject();
  v8 = *(v0 + 16);
  *(v7 + 16) = *v0;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v0 + 32);
  *(v7 + 64) = *(v0 + 48);
  v26 = v0;
  v9 = v4;
  v10 = v5;
  sub_1BE048964();
  v11 = v6;
  sub_1BD0DE19C(&v29, &v28, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD10E5DC();
  sub_1BE051704();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  LOBYTE(v6) = v27;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = &v3[*(v1 + 36)];
  *v14 = KeyPath;
  v14[1] = sub_1BD10DF54;
  v14[2] = v13;
  sub_1BE052434();
  v16 = v15;
  sub_1BD638FE4();
  sub_1BE050DE4();
  v16, v17, v18, v19, v20, v21, v22, v23;
  return sub_1BD0DE53C(v3, &qword_1EBD4DC50, &qword_1BE0E9848);
}

void sub_1BD6383C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25[-v4];
  v6 = *(a1 + 32);
  if ([v6 isEligible])
  {
    v7 = sub_1BE0528D4();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = *a1;
    v9 = *(a1 + 8);
    v26 = *(a1 + 40);
    sub_1BE0528A4();
    v10 = v8;
    v11 = v9;
    sub_1BE048964();
    v12 = v6;
    sub_1BD0DE19C(&v26, v25, &qword_1EBD54350, &unk_1BE0B8D00);
    v13 = sub_1BE052894();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    *(v14 + 16) = v13;
    *(v14 + 24) = v15;
    v16 = *(a1 + 16);
    *(v14 + 32) = *a1;
    *(v14 + 48) = v16;
    *(v14 + 64) = *(a1 + 32);
    *(v14 + 80) = *(a1 + 48);
    v17 = sub_1BD122C00(0, 0, v5, &unk_1BE0E9890, v14);
    v17, v18, v19, v20, v21, v22, v23, v24;
  }
}

uint64_t sub_1BD638568()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return sub_1BD638614();
}

uint64_t sub_1BD638614()
{
  v1[32] = v0;
  sub_1BE0528A4();
  v1[33] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[34] = v3;
  v1[35] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD6386AC, v3, v2);
}

uint64_t sub_1BD6386AC()
{
  v1 = **(v0 + 256);
  v2 = [v1 identifier];
  if (!v2)
  {
    sub_1BE052434();
    v4 = v3;
    v2 = sub_1BE052404();
    v4, v5, v6, v7, v8, v9, v10, v11;
  }

  v12 = *(*(v0 + 256) + 8);
  v13 = [v12 dynamicContentPageForCriteriaIdentifier:v2 pageType:1];

  if (v13)
  {
    v21 = *(v0 + 256);
    *(v0 + 264), v14, v15, v16, v17, v18, v19, v20;
    (*(v21 + 16))(0);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 256);
    *(v0 + 192) = *(v24 + 40);
    *(v0 + 240) = *(v0 + 200);
    *(v0 + 208) = *(v24 + 40);
    *(v0 + 320) = 1;
    sub_1BD0DE19C(v0 + 240, v0 + 248, &unk_1EBD4EF10, &qword_1BE0C2670);
    *(v0 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0D39A0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    sub_1BD112388(inited);
    v27 = v26;
    swift_setDeallocating();
    swift_arrayDestroy();
    v28 = [v1 identifier];
    if (!v28)
    {
      sub_1BE052434();
      v30 = v29;
      v28 = sub_1BE052404();
      v30, v31, v32, v33, v34, v35, v36, v37;
    }

    *(v0 + 296) = v28;
    sub_1BD63945C();
    sub_1BD639564(&qword_1EBD3E5A8, sub_1BD63945C, MEMORY[0x1E69E81B8]);
    v38 = sub_1BE052A24();
    *(v0 + 304) = v38;
    v27, v39, v40, v41, v42, v43, v44, v45;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 321;
    *(v0 + 24) = sub_1BD638A38;
    v46 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30, &unk_1BE0C33C0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD22B1E0;
    *(v0 + 104) = &block_descriptor_144;
    *(v0 + 112) = v46;
    [v12 updateDynamicContentPageForCriteriaIdentifier:v28 pageTypes:v38 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1BD638A38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_1BD638BE8;
  }

  else
  {
    sub_1BD0DE53C(v1 + 192, &qword_1EBD54350, &unk_1BE0B8D00);
    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_1BD638B60;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD638B60(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 296);
  v9 = *(v8 + 304);
  v11 = *(v8 + 256);
  *(v8 + 264), a2, a3, a4, a5, a6, a7, a8;

  v12 = sub_1BD638E10();
  (*(v11 + 16))(0, v12);
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1BD638BE8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 304);
  v9 = *(v8 + 312);
  v11 = *(v8 + 296);
  v12 = *(v8 + 256);
  *(v8 + 264), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  *(v8 + 224) = *(v8 + 192);
  *(v8 + 322) = 0;
  sub_1BE0516B4();
  sub_1BD0DE53C(v8 + 192, &qword_1EBD54350, &unk_1BE0B8D00);
  v13 = *(v12 + 16);
  v14 = sub_1BE04A844();
  v13();

  v15 = *(v8 + 8);

  return v15();
}

void *sub_1BD638CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = [v4 issuerName];
  v6 = sub_1BE052434();
  v8 = v7;

  v9 = *(a1 + 32);
  if ([v9 isEligible])
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1BE051234();
  }

  v11 = *(a1 + 8);
  v12 = sub_1BD6390C8(v4, v11, v9);
  v14 = v13;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  result = sub_1BE0516A4();
  if (v18)
  {
    v17 = 1;
  }

  else
  {
    result = [v9 isEligible];
    if (result)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = 0;
  *(a2 + 48) = v17;
  *(a2 + 56) = v4;
  *(a2 + 64) = v15;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4042000000000000;
  return result;
}

double sub_1BD638E10()
{
  v1 = *v0;
  v2 = [*v0 identifier];
  if (!v2)
  {
    sub_1BE052434();
    v4 = v3;
    v2 = sub_1BE052404();
    v4, v5, v6, v7, v8, v9, v10, v11;
  }

  v12 = *(v0 + 8);
  v13 = [v1 associatedPassUniqueID];
  v14 = [v12 loadingDetailsForPaymentOffersForCriteriaIdentifier:v2 passUniqueID:v13];

  if (v14)
  {
    v15 = [v14 state] == 1;
    v18 = *(v0 + 40);
    v19 = v18;
    v17[15] = v15;
    v20 = *(&v18 + 1);
    sub_1BD0DE19C(&v20, v17, &unk_1EBD4EF10, &qword_1BE0C2670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();

    sub_1BD0DE53C(&v19, &qword_1EBD54350, &unk_1BE0B8D00);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }

  return result;
}

unint64_t sub_1BD638FE4()
{
  result = qword_1EBD4DC58;
  if (!qword_1EBD4DC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DC50, &qword_1BE0E9848);
    sub_1BD0DE4F4(&qword_1EBD39678, &qword_1EBD39658, &qword_1BE0B8890, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DC58);
  }

  return result;
}

id sub_1BD6390C8(void *a1, void *a2, void *a3)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a3 isEligible])
  {
    v16 = [a2 configuration];
    v17 = [v16 currencyCode];

    if (v17)
    {
      v18 = sub_1BE052434();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    sub_1BD480FEC(v18, v20);
    v15 = v21;
    v20, v22, v23, v24, v25, v26, v27, v28;
    return v15;
  }

  v11 = [a1 merchandisingIdentifier];
  v12 = [a2 merchandisingOfferForMerchandisingIdentifier_];

  if (v12)
  {
    v13 = [v12 primaryTitle];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1BE052434();

      return v15;
    }
  }

  v30 = [a1 localizedSubtitleOverride];
  if (v30)
  {
    v31 = v30;
    v15 = sub_1BE052434();
    v33 = v32;

    v41 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v41 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
      v33, v34, v35, v36, v37, v38, v39, v40;
      return 0;
    }

    return v15;
  }

  v42 = [a1 programName];
  if (v42)
  {
    v43 = v42;
    v15 = sub_1BE052434();

    return v15;
  }

  (*(v7 + 104))(v10, *MEMORY[0x1E69B8078], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v44 = result;
    v15 = sub_1BE04B6F4();

    (*(v7 + 8))(v10, v6);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6393AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD638568();
}

unint64_t sub_1BD63945C()
{
  result = qword_1EBD3D270;
  if (!qword_1EBD3D270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3D270);
  }

  return result;
}

unint64_t sub_1BD6394A8()
{
  result = qword_1EBD4DC60;
  if (!qword_1EBD4DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DC68, &unk_1BE0E98A0);
    sub_1BD638FE4();
    sub_1BD639564(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DC60);
  }

  return result;
}

uint64_t sub_1BD639564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD6395BC(void *a1, double a2)
{
  v3 = sub_1BE04A264();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = [result requestType];

  if (v10 != 5)
  {
    return 0;
  }

  result = [a1 paymentSummaryItems];
  if (!result)
  {
    goto LABEL_14;
  }

  v11 = result;
  v12 = sub_1BE052744();

  if (!v12[2])
  {
LABEL_10:
    v12, v13, v14, v15, v16, v17, v18, v19;
    return 0;
  }

  sub_1BD038CD0((v12 + 4), v49);
  v12, v20, v21, v22, v23, v24, v25, v26;
  sub_1BD639828();
  if (swift_dynamicCast())
  {
    v27 = v48;
    v28 = [v48 label];
    v29 = sub_1BE052434();
    v31 = v30;

    v49[0] = v29;
    v49[1] = v31;
    sub_1BE04A254();
    sub_1BD0DDEBC();
    v12 = sub_1BE053524();
    (*(v4 + 8))(v7, v3);
    v31, v32, v33, v34, v35, v36, v37, v38;
    if (v12[2])
    {
      v39 = v12[4];
      sub_1BE048C84();
      sub_1BE048C84();

      v12, v40, v41, v42, v43, v44, v45, v46;
      return v39;
    }

    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1BD639828()
{
  result = qword_1EBD3D4A0;
  if (!qword_1EBD3D4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3D4A0);
  }

  return result;
}

uint64_t sub_1BD639874(uint64_t *a1)
{
  v2 = sub_1BE04C744();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v8 = *a1;
  (*(v5 + 104))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69BC940], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC90, &qword_1BE0E9A38);
  sub_1BD0DE4F4(&qword_1EBD4DC98, &qword_1EBD4DC90, &qword_1BE0E9A38, MEMORY[0x1E69817F8]);
  return sub_1BE04C6A4();
}

uint64_t sub_1BD6399F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCA0, &unk_1BE0E9A40);
  return sub_1BD639A48(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD639A48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C38, &unk_1BE0B9720);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v24[-v10];
  v25 = [a1 isCentered];
  v12 = [a1 title];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 string];

    sub_1BE052434();
  }

  v15 = [a1 label];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 string];

    sub_1BE052434();
  }

  sub_1BE051224();
  sub_1BE04C644();
  v18 = *(v5 + 16);
  v18(v7, v11, v4);
  *a2 = 0;
  v19 = v25;
  *(a2 + 8) = v25;
  *(a2 + 9) = v19 ^ 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCA8, &qword_1BE0E9A50);
  v18((a2 + *(v20 + 48)), v7, v4);
  v21 = a2 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = *(v5 + 8);
  v22(v11, v4);
  return (v22)(v7, v4);
}

uint64_t sub_1BD639CC8()
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D80, &qword_1BE0FB680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC70, &qword_1BE0E9A30);
  sub_1BD0DE4F4(&qword_1EBD4DC78, &qword_1EBD54D80, &qword_1BE0FB680, MEMORY[0x1E69E6338]);
  sub_1BD63A040();
  sub_1BD0DE4F4(&qword_1EBD4DC88, &qword_1EBD4DC70, &qword_1BE0E9A30, MEMORY[0x1E69BC928]);
  return sub_1BE0519C4();
}

void sub_1BD639E00(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD639E80(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD639EFC(void *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v59);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v25 = v59;
  if (v59 >> 62)
  {
    v58 = v59;
    v26 = sub_1BE053704();
    v25 = v58;
  }

  else
  {
    v26 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25, v18, v19, v20, v21, v22, v23, v24;
  if (v26 < 1)
  {
    a1, v27, v28, v29, v30, v31, v32, v33;
    return 0;
  }

  else
  {
    v34 = swift_getKeyPath();
    v35 = swift_getKeyPath();
    sub_1BE04D8B4(&v59);
    v34, v36, v37, v38, v39, v40, v41, v42;
    v35, v43, v44, v45, v46, v47, v48, v49;
    a1, v50, v51, v52, v53, v54, v55, v56;
    return v59;
  }
}

unint64_t sub_1BD63A040()
{
  result = qword_1EBD4DC80;
  if (!qword_1EBD4DC80)
  {
    sub_1BD63A098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DC80);
  }

  return result;
}

unint64_t sub_1BD63A098()
{
  result = qword_1EBD54DB0;
  if (!qword_1EBD54DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD54DB0);
  }

  return result;
}

unint64_t sub_1BD63A0EC()
{
  result = qword_1EBD4DCB0;
  if (!qword_1EBD4DCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DCB8, &qword_1BE0E9A58);
    sub_1BD0DE4F4(&qword_1EBD4DC88, &qword_1EBD4DC70, &qword_1BE0E9A30, MEMORY[0x1E69BC928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DCB0);
  }

  return result;
}

id sub_1BD63A19C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  result = [*(*(v0 + 48) + *((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0xD0)) paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  v11 = [result requestType];

  v12 = *MEMORY[0x1E69B8058];
  v13 = *(v2 + 104);
  if (v11 == 14)
  {
    v13(v8, v12, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
LABEL_7:

      (*(v2 + 8))(v8, v1);
      return v15;
    }

    goto LABEL_9;
  }

  v13(v4, v12, v1);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v8 = v4;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

double sub_1BD63A3D4@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F504();
  v25 = 1;
  sub_1BD63AAC8(&v12);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v38[8] = v20;
  v38[9] = v21;
  v38[10] = v22;
  v38[4] = v16;
  v38[5] = v17;
  v38[6] = v18;
  v38[7] = v19;
  v38[0] = v12;
  v38[1] = v13;
  v37 = v23;
  v39 = v23;
  v38[2] = v14;
  v38[3] = v15;
  sub_1BD0DE19C(&v26, &v11, &qword_1EBD4DCD0, &qword_1BE0E9A70);
  sub_1BD0DE53C(v38, &qword_1EBD4DCD0, &qword_1BE0E9A70);
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  *&v24[55] = v29;
  v4 = *&v24[144];
  *(a2 + 145) = *&v24[128];
  *(a2 + 161) = v4;
  *(a2 + 177) = *&v24[160];
  v5 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v5;
  v6 = *&v24[112];
  *(a2 + 113) = *&v24[96];
  *(a2 + 129) = v6;
  v7 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v7;
  result = *&v24[32];
  v9 = *&v24[48];
  *(a2 + 49) = *&v24[32];
  v24[183] = v37;
  v10 = v25;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 193) = *&v24[176];
  *(a2 + 65) = v9;
  return result;
}

uint64_t sub_1BD63A57C@<X0>(uint64_t *a2@<X8>)
{
  v2 = a2;
  *a2 = sub_1BE04F7B4();
  v2[1] = 0;
  *(v2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCC0, &qword_1BE0E9A60);
  sub_1BD63A618(v2 + *(v3 + 44));
  v4 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCC8, &qword_1BE0E9A68) + 36);
  sub_1BE051BD4();
  LOBYTE(v2) = sub_1BE0501D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0, &unk_1BE0E1690);
  v4[*(result + 36)] = v2;
  return result;
}

uint64_t sub_1BD63A618@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B98, &unk_1BE0CE680);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  sub_1BE051984();
  *&v9[*(v4 + 44)] = 0x3FE0000000000000;
  v44 = sub_1BE04F504();
  v59 = 1;
  sub_1BD63AAC8(&v49);
  v68 = *&v50[112];
  v69 = *&v50[128];
  v70 = *&v50[144];
  v64 = *&v50[48];
  v65 = *&v50[64];
  v66 = *&v50[80];
  v67 = *&v50[96];
  v60 = v49;
  v61 = *v50;
  v62 = *&v50[16];
  v63 = *&v50[32];
  v72[8] = *&v50[112];
  v72[9] = *&v50[128];
  v72[10] = *&v50[144];
  v72[4] = *&v50[48];
  v72[5] = *&v50[64];
  v72[6] = *&v50[80];
  v72[7] = *&v50[96];
  v72[0] = v49;
  v72[1] = *v50;
  v71 = v50[160];
  v73 = v50[160];
  v72[2] = *&v50[16];
  v72[3] = *&v50[32];
  sub_1BD0DE19C(&v60, &v45, &qword_1EBD4DCD0, &qword_1BE0E9A70);
  sub_1BD0DE53C(v72, &qword_1EBD4DCD0, &qword_1BE0E9A70);
  *&v58[135] = v68;
  *&v58[151] = v69;
  *&v58[167] = v70;
  *&v58[71] = v64;
  *&v58[87] = v65;
  *&v58[103] = v66;
  *&v58[119] = v67;
  *&v58[7] = v60;
  *&v58[23] = v61;
  *&v58[39] = v62;
  v58[183] = v71;
  *&v58[55] = v63;
  v10 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B6CA0;
  v12 = sub_1BE0501E4();
  *(v11 + 32) = v12;
  v13 = sub_1BE0501F4();
  *(v11 + 33) = v13;
  v14 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v12)
  {
    v14 = sub_1BE050214();
  }

  v11, v15, v16, v17, v18, v19, v20, v21;
  sub_1BE050214();
  if (sub_1BE050214() != v13)
  {
    v14 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v59 = 0;
  sub_1BD0DE19C(v9, v6, &qword_1EBD42B98, &unk_1BE0CE680);
  sub_1BD0DE19C(v6, a2, &qword_1EBD42B98, &unk_1BE0CE680);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCD8, &qword_1BE0E9A78);
  v31 = a2 + v30[12];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = (a2 + v30[16]);
  v43 = v6;
  v33 = v44;
  v45 = v44;
  LOBYTE(v46[0]) = v10;
  *(&v46[1] + 1) = *&v58[16];
  *(v46 + 1) = *v58;
  *(&v46[8] + 1) = *&v58[128];
  *(&v46[9] + 1) = *&v58[144];
  *(&v46[10] + 1) = *&v58[160];
  *(&v46[11] + 1) = *&v58[176];
  *(&v46[4] + 1) = *&v58[64];
  *(&v46[5] + 1) = *&v58[80];
  *(&v46[6] + 1) = *&v58[96];
  *(&v46[7] + 1) = *&v58[112];
  *(&v46[2] + 1) = *&v58[32];
  *(&v46[3] + 1) = *&v58[48];
  LOBYTE(v47) = v14;
  *(&v47 + 1) = v23;
  *&v48[0] = v25;
  *(&v48[0] + 1) = v27;
  *&v48[1] = v29;
  BYTE8(v48[1]) = 0;
  v34 = v46[8];
  v32[8] = v46[7];
  v32[9] = v34;
  v35 = v46[10];
  v32[10] = v46[9];
  v32[11] = v35;
  v36 = v46[4];
  v32[4] = v46[3];
  v32[5] = v36;
  v37 = v46[6];
  v32[6] = v46[5];
  v32[7] = v37;
  v38 = v46[0];
  *v32 = v45;
  v32[1] = v38;
  v39 = v46[2];
  v32[2] = v46[1];
  v32[3] = v39;
  v40 = v47;
  v32[12] = v46[11];
  v32[13] = v40;
  v32[14] = v48[0];
  *(v32 + 233) = *(v48 + 9);
  v41 = a2 + v30[20];
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_1BD0DE19C(&v45, &v49, &qword_1EBD4DCE0, &qword_1BE0E9A80);
  sub_1BD0DE53C(v9, &qword_1EBD42B98, &unk_1BE0CE680);
  *&v50[129] = *&v58[128];
  *&v50[145] = *&v58[144];
  *&v50[161] = *&v58[160];
  *&v50[65] = *&v58[64];
  *&v50[81] = *&v58[80];
  *&v50[97] = *&v58[96];
  *&v50[113] = *&v58[112];
  *&v50[1] = *v58;
  *&v50[17] = *&v58[16];
  *&v50[33] = *&v58[32];
  v49 = v33;
  v50[0] = v10;
  v51 = *&v58[176];
  *&v50[49] = *&v58[48];
  v52 = v14;
  v53 = v23;
  v54 = v25;
  v55 = v27;
  v56 = v29;
  v57 = 0;
  sub_1BD0DE53C(&v49, &qword_1EBD4DCE0, &qword_1BE0E9A80);
  return sub_1BD0DE53C(v43, &qword_1EBD42B98, &unk_1BE0CE680);
}

uint64_t sub_1BD63AAC8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F7C4();
  v58 = 0;
  sub_1BD63ADEC(&v33);
  v62 = v35;
  v63 = v36;
  v64[0] = v37[0];
  *(v64 + 9) = *(v37 + 9);
  v60 = v33;
  v61 = v34;
  *(v66 + 9) = *(v37 + 9);
  v65[2] = v35;
  v65[3] = v36;
  v66[0] = v37[0];
  v65[0] = v33;
  v65[1] = v34;
  sub_1BD0DE19C(&v60, v43, &qword_1EBD4DCE8, &qword_1BE0E9A88);
  sub_1BD0DE53C(v65, &qword_1EBD4DCE8, &qword_1BE0E9A88);
  *(&v57[2] + 7) = v62;
  *(&v57[3] + 7) = v63;
  *(&v57[4] + 7) = v64[0];
  v57[5] = *(v64 + 9);
  *(v57 + 7) = v60;
  *(&v57[1] + 7) = v61;
  v4 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B6CA0;
  v6 = sub_1BE050204();
  *(v5 + 32) = v6;
  v7 = sub_1BE050224();
  *(v5 + 33) = v7;
  v8 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v6)
  {
    v8 = sub_1BE050214();
  }

  v5, v9, v10, v11, v12, v13, v14, v15;
  sub_1BE050214();
  if (sub_1BE050214() != v7)
  {
    v8 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v59 = 0;
  *&v28 = v3;
  *(&v28 + 1) = 0x4000000000000000;
  v29[0] = v4;
  *&v29[33] = v57[2];
  *&v29[49] = v57[3];
  *&v29[65] = v57[4];
  *&v29[81] = v57[5];
  *&v29[1] = v57[0];
  *&v29[17] = v57[1];
  v29[104] = v8;
  *&v30 = v16;
  *(&v30 + 1) = v17;
  *&v31 = v18;
  *(&v31 + 1) = v19;
  v32 = 0;
  LOBYTE(v42) = 0;
  v40 = v30;
  v41 = v31;
  v33 = v28;
  v34 = *v29;
  v38 = *&v29[80];
  v39 = *&v29[96];
  v37[0] = *&v29[48];
  v37[1] = *&v29[64];
  v35 = *&v29[16];
  v36 = *&v29[32];
  v27[168] = 1;
  v20 = v31;
  *(a2 + 128) = v30;
  *(a2 + 144) = v20;
  v21 = v42;
  v22 = v37[1];
  *(a2 + 64) = v37[0];
  *(a2 + 80) = v22;
  v23 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v23;
  v24 = v34;
  *a2 = v33;
  *(a2 + 16) = v24;
  v25 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v25;
  *(a2 + 160) = v21;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  v43[0] = v3;
  v43[1] = 0x4000000000000000;
  v44 = v4;
  v47 = v57[2];
  v48 = v57[3];
  v49 = v57[4];
  v50 = v57[5];
  v45 = v57[0];
  v46 = v57[1];
  v51 = v8;
  v52 = v16;
  v53 = v17;
  v54 = v18;
  v55 = v19;
  v56 = 0;
  sub_1BD0DE19C(&v28, v27, &qword_1EBD4DCF0, &qword_1BE0E9A90);
  return sub_1BD0DE53C(v43, &qword_1EBD4DCF0, &qword_1BE0E9A90);
}

void sub_1BD63ADEC(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v173 = v2;
  v174 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v172 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1BD63A19C();
  v178 = v5;
  v171 = sub_1BD0DDEBC();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1BE0502C4();
  v14 = sub_1BE0505F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v13, v15, v17, v19, v21, v22, v23, v24;
  sub_1BD0DDF10(v6, v8, (v10 & 1), v25, v26, v27, v28, v29);
  v12, v30, v31, v32, v33, v34, v35, v36;
  v37 = sub_1BE051234();
  v170 = sub_1BE050564();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v37, v38, v40, v42, v44, v45, v46, v47;
  v48 = v16;
  v49 = v173;
  sub_1BD0DDF10(v14, v48, (v18 & 1), v50, v51, v52, v53, v54);
  v20, v55, v56, v57, v58, v59, v60, v61;
  KeyPath = swift_getKeyPath();
  v63 = v174;
  v64 = v172;
  (*(v174 + 104))();
  v65 = PKPassKitBundle();
  if (v65)
  {
    v66 = v65;
    v166 = v41;
    v167 = KeyPath;
    v168 = v39;
    v169 = v43;
    v67 = v64;
    v68 = sub_1BE04B6F4();
    v70 = v69;

    (*(v63 + 8))(v67, v49);
    v177 = v68;
    v178 = v70;
    v71 = sub_1BE0506C4();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    if (PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0))
    {
      v78 = sub_1BE050484();
      v79 = sub_1BE0505F4();
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v78, v80, v82, v84, v86, v87, v88, v89;
      sub_1BD0DDF10(v71, v73, (v75 & 1), v90, v91, v92, v93, v94);
      v77, v95, v96, v97, v98, v99, v100, v101;
      sub_1BE0503A4();
      v102 = sub_1BE050544();
      v104 = v103;
      LOBYTE(v78) = v105;
      v107 = v106;
      sub_1BD0DDF10(v79, v81, (v83 & 1), v106, v108, v109, v110, v111);
      v85, v112, v113, v114, v115, v116, v117, v118;
      v119 = swift_getKeyPath();
      v120 = v166 & 1;
      LOBYTE(v177) = v166 & 1;
      v176 = v166 & 1;
      v121 = (v78 & 1);
      v175 = v78 & 1;
      v122 = v78 & 1;
      v123 = v169;
      v124 = v170;
      v126 = v167;
      v125 = v168;
      *a1 = v170;
      *(a1 + 8) = v125;
      *(a1 + 16) = v120;
      *(a1 + 24) = v123;
      *(a1 + 32) = v126;
      *(a1 + 40) = 0;
      *(a1 + 48) = v102;
      *(a1 + 56) = v104;
      *(a1 + 64) = v122;
      *(a1 + 72) = v107;
      *(a1 + 80) = v119;
      *(a1 + 88) = 0;
      sub_1BD0D7F18(v124, v125, v120);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BD0D7F18(v102, v104, v121);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BD0DDF10(v102, v104, v121, v127, v128, v129, v130, v131);
      v119, v132, v133, v134, v135, v136, v137, v138;
      v107, v139, v140, v141, v142, v143, v144, v145;
      sub_1BD0DDF10(v124, v125, v177, v146, v147, v148, v149, v150);
      v126, v151, v152, v153, v154, v155, v156, v157;
      v123, v158, v159, v160, v161, v162, v163, v164;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD63B1FC(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = 0xEE00746E656D7961;
  v9 = 0x506D756D696E696DLL;
  v10 = *a1;
  v11 = 0x796150726568746FLL;
  v12 = 0xEC000000746E656DLL;
  if (v10 == 1)
  {
    v11 = 0x506D756D696E696DLL;
    v12 = 0xEE00746E656D7961;
  }

  if (*a1)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xD000000000000013;
  }

  if (v10)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0x80000001BE117CF0;
  }

  if (*a2 != 1)
  {
    v9 = 0x796150726568746FLL;
    v8 = 0xEC000000746E656DLL;
  }

  if (*a2)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0xD000000000000013;
  }

  if (*a2)
  {
    v16 = v8;
  }

  else
  {
    v16 = 0x80000001BE117CF0;
  }

  if (v13 == v15 && v14 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1BE053B84();
  }

  v14, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_1BD63B314()
{
  result = qword_1EBD4DCF8;
  if (!qword_1EBD4DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DCF8);
  }

  return result;
}

uint64_t sub_1BD63B368()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = 0xEE00746E656D7961;
  if (v1 != 1)
  {
    v2 = 0xEC000000746E656DLL;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x80000001BE117CF0;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD63B424(uint64_t a1)
{
  v2 = 0xEE00746E656D7961;
  if (*v1 != 1)
  {
    v2 = 0xEC000000746E656DLL;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x80000001BE117CF0;
  }

  sub_1BE052524();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD63B4CC(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = 0xEE00746E656D7961;
  if (v2 != 1)
  {
    v3 = 0xEC000000746E656DLL;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x80000001BE117CF0;
  }

  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

unint64_t sub_1BD63B584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD63C450(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD63B5B4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00746E656D7961;
  v4 = 0x506D756D696E696DLL;
  if (v2 != 1)
  {
    v4 = 0x796150726568746FLL;
    v3 = 0xEC000000746E656DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000001BE117CF0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1BD63B630()
{
  result = qword_1EBD4DD00;
  if (!qword_1EBD4DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD00);
  }

  return result;
}

unint64_t sub_1BD63B688()
{
  result = qword_1EBD4DD08;
  if (!qword_1EBD4DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD08);
  }

  return result;
}

unint64_t sub_1BD63B6E0()
{
  result = qword_1EBD4DD10;
  if (!qword_1EBD4DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD10);
  }

  return result;
}

unint64_t sub_1BD63B738()
{
  result = qword_1EBD4DD18;
  if (!qword_1EBD4DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD18);
  }

  return result;
}

unint64_t sub_1BD63B78C()
{
  result = qword_1EBD4DD20;
  if (!qword_1EBD4DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD20);
  }

  return result;
}

unint64_t sub_1BD63B7E0()
{
  result = qword_1EBD4DD28;
  if (!qword_1EBD4DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD28);
  }

  return result;
}

unint64_t sub_1BD63B838()
{
  result = qword_1EBD4DD30;
  if (!qword_1EBD4DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD30);
  }

  return result;
}

uint64_t sub_1BD63B88C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1BE04A884();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1BE048E94();
  __swift_allocate_value_buffer(v5, qword_1EBDAB360);
  __swift_project_value_buffer(v5, qword_1EBDAB360);
  sub_1BE04A864();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1BE048E84();
}

uint64_t sub_1BD63BA04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v31 = v20 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  v5 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A874();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = sub_1BE04A884();
  v28 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DD68, &qword_1BE0E9D98);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF08, &unk_1BE0E9DA0);
  v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v22 = *(*(v11 - 8) + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B98D0;
  v23 = v13;
  v30 = v11;
  v32 = v13 + v12;
  *(v13 + v12) = 0;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_1EBDAB400);
  v29 = *(v7 + 16);
  v29(v9, v24, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v28 = *(v28 + 56);
  (v28)(v4, 1, 1, v33);
  v26 = sub_1BE048BB4();
  v14 = *(v26 - 8);
  v25 = *(v14 + 56);
  v21 = v6;
  v27 = v14 + 56;
  v25(v31, 1, 1, v26);
  v15 = v32;
  sub_1BE048BE4();
  v16 = v22;
  v20[1] = *(v30 + 48);
  *(v15 + v22) = 1;
  sub_1BE052354();
  v29(v9, v24, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (v28)(v4, 1, 1, v33);
  v17 = v31;
  v25(v31, 1, 1, v26);
  sub_1BE048BE4();
  v22 = *(v30 + 48);
  *(v32 + 2 * v16) = 2;
  sub_1BE052354();
  v29(v9, v24, v21);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (v28)(v4, 1, 1, v33);
  v25(v17, 1, 1, v26);
  sub_1BE048BE4();
  v18 = sub_1BD1ADD40(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAB378 = v18;
  return result;
}

uint64_t sub_1BD63C080@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD63C178()
{
  result = qword_1EBD4DD38;
  if (!qword_1EBD4DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD38);
  }

  return result;
}

uint64_t sub_1BD63C1CC(uint64_t a1)
{
  v2 = sub_1BD63C178();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD63C21C()
{
  result = qword_1EBD4DD40;
  if (!qword_1EBD4DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD40);
  }

  return result;
}

unint64_t sub_1BD63C274()
{
  result = qword_1EBD4DD48;
  if (!qword_1EBD4DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD48);
  }

  return result;
}

unint64_t sub_1BD63C2CC()
{
  result = qword_1EBD4DD50;
  if (!qword_1EBD4DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD50);
  }

  return result;
}

double sub_1BD63C320()
{
  if (qword_1EBD36CD8 != -1)
  {
    swift_once();
  }

  sub_1BE048C84();
  return result;
}

uint64_t sub_1BD63C37C(uint64_t a1)
{
  sub_1BD63B838();

  return sub_1BE048E14();
}

unint64_t sub_1BD63C3CC()
{
  result = qword_1EBD4DD58;
  if (!qword_1EBD4DD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DD60, &qword_1BE0E9D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD58);
  }

  return result;
}

unint64_t sub_1BD63C450(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BD63C4A4@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  sub_1BD0DE19C(v1 + *(v10 + 24), v9, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = *v9;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v4 + 8))(v6, v3);
  }
}

void AccountAutomaticPaymentsHeroView.init(model:showSetupPrompt:dismissAction:)(id *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE051694();
  *(a5 + 16) = v42;
  *(a5 + 24) = v43;
  v10 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  v11 = v10[6];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE048964();
  sub_1BE051694();
  *a5 = v42;
  *(a5 + 8) = v43;
  *(a5 + v10[8]) = a2;
  v12 = (a5 + v10[9]);
  *v12 = a3;
  v12[1] = a4;
  sub_1BDA1BD2C();
  v20 = v19;
  if (!v19)
  {
    a1, 0, v13, v14, v15, v16, v17, v18;
    goto LABEL_6;
  }

  v21 = [a1[6] account];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() sharedService];
    if (v23)
    {
      v24 = v23;
      v25 = [a1[6] paymentSetupContext];
      v26 = objc_allocWithZone(PKAccountTermsAndConditionsController);
      v27 = sub_1BE052404();
      v20, v28, v29, v30, v31, v32, v33, v34;
      v20 = [v26 initWithAccount:v22 webService:v24 context:v25 termsIdentifier:v27];
      a1, v35, v36, v37, v38, v39, v40, v41;

LABEL_6:
      *(a5 + v10[7]) = v20;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for AccountAutomaticPaymentsHeroView(uint64_t a1)
{
  result = qword_1EBD4DE50;
  if (!qword_1EBD4DE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccountAutomaticPaymentsHeroView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516C4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543A0, &qword_1BE0D6AD8);
  sub_1BE051904();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  v32, v8, v9, v10, v11, v12, v13, v14;
  v31, v15, v16, v17, v18, v19, v20, v21;
  v30, v22, v23, v24, v25, v26, v27, v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DD70, &qword_1BE0E9E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DD78, &qword_1BE0E9E18);
  sub_1BD0DE4F4(&qword_1EBD4DD80, &qword_1EBD4DD70, &qword_1BE0E9E10, MEMORY[0x1E69E6318]);
  sub_1BD0DE4F4(&qword_1EBD4DD88, &qword_1EBD4DD70, &qword_1BE0E9E10, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD4DD90, &qword_1EBD4DD70, &qword_1BE0E9E10, MEMORY[0x1E69E6348]);
  sub_1BD63FC68();
  sub_1BD6400F8();
  return sub_1BE04EBF4();
}

double sub_1BD63CAD8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD640A40(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  *a2 = *(v3 + v12);
  sub_1BE048C84();
  return result;
}

uint64_t sub_1BD63CBCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v3 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  v123 = *(v3 - 8);
  v133 = *(v123 + 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v122 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDE0, &qword_1BE0E9E58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v118 - v7;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDD8, &unk_1BE0E9E48);
  v121 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v10 = &v118 - v9;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDC0, &qword_1BE0E9E38);
  MEMORY[0x1EEE9AC00](v131);
  v119 = &v118 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDB0, &qword_1BE0E9E28);
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v132 = &v118 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE80, &qword_1BE0E9F18);
  v128 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v118 - v13;
  v136 = a1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE88, &qword_1BE0E9F20);
  sub_1BD640754();
  sub_1BE04E304();
  v135 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9E8, &unk_1BE0E9E60);
  v15 = sub_1BD0DE4F4(&qword_1EBD4DDE8, &qword_1EBD4DDE0, &qword_1BE0E9E58, MEMORY[0x1E697BE60]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
  v17 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
  v137 = v16;
  v138 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE051024();
  (*(v6 + 8))(v8, v5);
  v19 = a1;
  v130 = a1;
  v134 = a1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C160, &qword_1BE0BDF60);
  v137 = v5;
  v138 = v14;
  v139 = v15;
  v140 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = sub_1BD1BC1B0();
  v137 = &type metadata for SetupFooterView;
  v138 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v119;
  v22 = v120;
  sub_1BE050954();
  (*(v121 + 8))(v10, v22);
  v23 = sub_1BE04EC54();
  v24 = sub_1BE0501F4();
  v25 = v21 + *(v131 + 36);
  *v25 = v23;
  *(v25 + 8) = v24;
  v26 = v122;
  sub_1BD64081C(v19, v122);
  v27 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v28 = swift_allocObject();
  v123 = type metadata accessor for AccountAutomaticPaymentsHeroView;
  sub_1BD640970(v26, v28 + v27, type metadata accessor for AccountAutomaticPaymentsHeroView);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDC8, &qword_1BE0E9E40);
  v29 = sub_1BD63FECC();
  v30 = sub_1BD6400F8();
  v31 = sub_1BD64014C();
  sub_1BE050D64();
  v28, v32, v33, v34, v35, v36, v37, v38;
  sub_1BD0DE53C(v21, &qword_1EBD4DDC0, &qword_1BE0E9E38);
  v39 = v130;
  v40 = v130[3];
  LOBYTE(v143) = *(v130 + 16);
  v144 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v41 = v137;
  v42 = v138;
  sub_1BD64081C(v39, v26);
  v43 = swift_allocObject();
  sub_1BD640970(v26, v43 + v27, v123);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDB8, &qword_1BE0E9E30);
  v137 = v131;
  v138 = &type metadata for AccountAutomaticPayments.Step;
  v139 = v121;
  v140 = v29;
  v141 = v30;
  v142 = v31;
  v116 = swift_getOpaqueTypeConformance2();
  v117 = sub_1BD640440();
  v45 = v124;
  v46 = v125;
  v47 = v132;
  sub_1BE050F64();
  v42, v48, v49, v50, v51, v52, v53, v54;
  v43, v55, v56, v57, v58, v59, v60, v61;
  v41, v62, v63, v64, v65, v66, v67, v68;
  (*(v126 + 8))(v47, v46);
  sub_1BE052434();
  v70 = v69;
  v137 = v46;
  v138 = v44;
  v139 = v116;
  v140 = v117;
  swift_getOpaqueTypeConformance2();
  v71 = v129;
  v72 = v127;
  sub_1BE050DE4();
  v70, v73, v74, v75, v76, v77, v78, v79;
  (*(v128 + 8))(v45, v72);
  v80 = v130[1];
  v143 = *v130;
  v144 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516C4();
  v81 = v137;
  v82 = v138;
  v83 = v139;
  KeyPath = swift_getKeyPath();
  v137 = v81;
  v138 = v82;
  v139 = v83;
  v85 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DD78, &qword_1BE0E9E18) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543A0, &qword_1BE0D6AD8);
  sub_1BE051904();
  v83, v86, v87, v88, v89, v90, v91, v92;
  v82, v93, v94, v95, v96, v97, v98, v99;
  KeyPath, v100, v101, v102, v103, v104, v105, v106;
  v81, v107, v108, v109, v110, v111, v112, v113;
  result = type metadata accessor for ErrorAlertModifier(0);
  v115 = (v85 + *(result + 20));
  *v115 = 0;
  v115[1] = 0;
  return result;
}

uint64_t sub_1BD63D588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEA8, &qword_1BE0E9F88);
  sub_1BD63D638(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE88, &qword_1BE0E9F20);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

void sub_1BD63D638(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEB0, &qword_1BE0E9F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v10 = sub_1BE051574();
  v11 = a1[1];
  v69 = *a1;
  v70 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  v12 = v73;
  [v73[6] featureIdentifier];
  v12, v13, v14, v15, v16, v17, v18, v19;
  v69 = sub_1BE04C124();
  v70 = v20;
  sub_1BD0DDEBC();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  v69 = v21;
  v70 = v22;
  v27 = (v26 & 1);
  v71 = v26 & 1;
  v72 = v24;
  sub_1BE050BF4();
  sub_1BD0DDF10(v21, v23, v27, v28, v29, v30, v31, v32);
  v25, v33, v34, v35, v36, v37, v38, v39;
  v40 = sub_1BD63D8CC();
  v42 = v41;
  LOBYTE(v27) = v43;
  v45 = v44;
  sub_1BD090A44(v9, v6);
  *a2 = v10;
  a2[1] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEB8, &qword_1BE0E9F98);
  sub_1BD090A44(v6, a2 + *(v46 + 48));
  v47 = a2 + *(v46 + 64);
  *v47 = v40;
  *(v47 + 1) = v42;
  v48 = (v27 & 1);
  v47[16] = v48;
  *(v47 + 3) = v45;
  sub_1BE048964();
  sub_1BD0D7F18(v40, v42, v48);
  sub_1BE048C84();
  sub_1BD0DE53C(v9, &qword_1EBD4DEB0, &qword_1BE0E9F90);
  sub_1BD0DDF10(v40, v42, v48, v49, v50, v51, v52, v53);
  v45, v54, v55, v56, v57, v58, v59, v60;
  sub_1BD0DE53C(v6, &qword_1EBD4DEB0, &qword_1BE0E9F90);
  v10, v61, v62, v63, v64, v65, v66, v67;
}

uint64_t sub_1BD63D8CC()
{
  v1 = v0;
  v2 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v108 - v6;
  v8 = *v0;
  v9 = v0[1];
  v114 = *v0;
  v115 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  v10 = v112;
  [*(v112 + 48) featureIdentifier];
  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = sub_1BE04C124();
  v20 = v19;
  if (*(v1 + *(type metadata accessor for AccountAutomaticPaymentsHeroView(0) + 32)) == 1 && PKIsPhone())
  {
    v111 = v4;
    v114 = v8;
    v115 = v9;
    sub_1BE0516A4();
    v21 = v112;
    [*(v112 + 48) featureIdentifier];
    v21, v22, v23, v24, v25, v26, v27, v28;
    v29 = sub_1BE04C124();
    v31 = v30;
    v114 = v29;
    v115 = v30;
    v112 = 16421;
    v113 = 0xE200000000000000;
    v32 = sub_1BE04B0F4();
    v33 = *(*(v32 - 8) + 56);
    v33(v7, 1, 1, v32);
    sub_1BD0DDEBC();
    v110 = sub_1BE0535D4();
    LOBYTE(v21) = v34;
    sub_1BD0DE53C(v7, &qword_1EBD450F0, &unk_1BE0B8510);
    if ((v21 & 1) == 0)
    {
      v114 = v29;
      v115 = v31;
      v112 = 16421;
      v113 = 0xE200000000000000;
      v33(v7, 1, 1, v32);
      sub_1BE0535D4();
      v43 = v42;
      v45 = v44;
      sub_1BD0DE53C(v7, &qword_1EBD450F0, &unk_1BE0B8510);
      if ((v45 & 1) == 0)
      {
        v47 = sub_1BE052654();
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v54 = sub_1BD65CBE4(v43, v29, v31);
        v109 = v55;
        v110 = v54;
        v108 = v56;
        v58 = v57;
        v31, v55, v56, v57, v59, v60, v61, v62;
        sub_1BE04F604();
        sub_1BE04F5F4();
        sub_1BE04F5E4();
        v20, v63, v64, v65, v66, v67, v68, v69;
        sub_1BE04F5F4();
        MEMORY[0x1BFB3F570](v47, v49, v51, v53);
        v71 = v70;
        v53, v70, v72, v73, v74, v75, v76, v77;
        sub_1BE04F5E4();
        v71, v78, v79, v80, v81, v82, v83, v84;
        sub_1BE04F5F4();
        v85 = sub_1BE051574();
        sub_1BE04F5D4();
        v85, v86, v87, v88, v89, v90, v91, v92;
        sub_1BE04F5F4();
        MEMORY[0x1BFB3F570](v110, v109, v108, v58);
        v94 = v93;
        v58, v93, v95, v96, v97, v98, v99, v100;
        sub_1BE04F5E4();
        v94, v101, v102, v103, v104, v105, v106, v107;
        sub_1BE04F5F4();
        sub_1BE04F634();
        return sub_1BE050694();
      }
    }

    v31, v35, v36, v37, v38, v39, v40, v41;
  }

  v114 = v18;
  v115 = v20;
  sub_1BD0DDEBC();
  return sub_1BE0506C4();
}

uint64_t sub_1BD63DD80(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB04();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500, &unk_1BE0C4310);
  sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500, &unk_1BE0C4310, MEMORY[0x1E697D680]);
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BD63DF6C(uint64_t a1)
{
  v2 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E1A4();
  sub_1BD64081C(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1BD640970(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AccountAutomaticPaymentsHeroView);
  return MEMORY[0x1BFB3E7A0](v7, sub_1BD640D74, v9);
}

id sub_1BD63E0D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v83 = sub_1BE04F714();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  v79 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = v5;
  v85 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B80D8], v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v77 = v14;
    v78 = v13;

    (*(v7 + 8))(v10, v6);
    v16 = a1[1];
    *&v92[0] = *a1;
    v15 = *&v92[0];
    *(&v92[0] + 1) = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
    sub_1BE0516A4();
    v18 = v86;
    KeyPath = swift_getKeyPath();
    *&v92[0] = v18;
    sub_1BD640A40(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B594();
    KeyPath, v20, v21, v22, v23, v24, v25, v26;
    v74 = v18[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading];
    v18, v27, v28, v29, v30, v31, v32, v33;
    v75 = v17;
    v76 = v15;
    *&v92[0] = v15;
    *(&v92[0] + 1) = v16;
    sub_1BE0516A4();
    v34 = v86;
    v35 = swift_getKeyPath();
    *&v92[0] = v34;
    v36 = a1;
    sub_1BE04B594();
    v35, v37, v38, v39, v40, v41, v42, v43;
    v73 = v34[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading];
    v34, v44, v45, v46, v47, v48, v49, v50;
    v51 = v85;
    sub_1BD64081C(a1, v85);
    v52 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v79 = swift_allocObject();
    sub_1BD640970(v51, v79 + v52, type metadata accessor for AccountAutomaticPaymentsHeroView);
    if (qword_1EBD36ED8 != -1)
    {
      swift_once();
    }

    v53 = qword_1EBDAB648;
    v54 = qword_1EBD36EE0;
    sub_1BE048964();
    if (v54 != -1)
    {
      swift_once();
    }

    v55 = qword_1EBDAB650;
    sub_1BE048964();
    sub_1BD63E6F0(v93);
    v72 = v93[2];
    v56 = v94;
    *&v92[0] = v76;
    *(&v92[0] + 1) = v16;
    sub_1BE0516A4();
    v57 = v86;
    v58 = sub_1BDA1C820();
    v59 = v36;
    v61 = v60;
    v57, v60, v62, v63, v64, v65, v66, v67;
    if (!v61)
    {
      v58 = 0;
      v61 = 0xE000000000000000;
    }

    v68 = v59;
    v69 = v85;
    sub_1BD64081C(v68, v85);
    v70 = swift_allocObject();
    sub_1BD640970(v69, v70 + v52, type metadata accessor for AccountAutomaticPaymentsHeroView);
    *&v86 = v78;
    *(&v86 + 1) = v77;
    *&v87 = v53;
    *(&v87 + 1) = v55;
    LOBYTE(v88) = v74;
    BYTE1(v88) = v73;
    *(&v88 + 1) = sub_1BD640A88;
    *&v89[0] = v79;
    *(&v89[1] + 8) = v93[1];
    *(v89 + 8) = v93[0];
    *(&v89[2] + 8) = v72;
    *(&v89[3] + 1) = v56;
    *&v90 = v58;
    *(&v90 + 1) = v61;
    *&v91 = sub_1BD640AE8;
    *(&v91 + 1) = v70;
    v71 = v80;
    sub_1BE04F704();
    sub_1BD1BC1B0();
    sub_1BE050CB4();
    (*(v81 + 8))(v71, v83);
    v92[6] = v89[3];
    v92[7] = v90;
    v92[8] = v91;
    v92[2] = v88;
    v92[3] = v89[0];
    v92[4] = v89[1];
    v92[5] = v89[2];
    v92[0] = v86;
    v92[1] = v87;
    return sub_1BD1BC4CC(v92);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD63E694(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  sub_1BDA21F78();
  v8, v1, v2, v3, v4, v5, v6, v7;
}

double sub_1BD63E6F0@<D0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (*(v1 + *(v6 + 40)) == 1)
  {
    v7 = v1[1];
    v43 = *v1;
    v44 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
    v41 = v1;
    sub_1BE0516A4();
    [v42[6] featureIdentifier];
    v42, v8, v9, v10, v11, v12, v13, v14;
    v15 = sub_1BE04C124();
    v17 = v16;
    v44 = v7;
    sub_1BE0516A4();
    KeyPath = swift_getKeyPath();
    v43 = v42;
    sub_1BD640A40(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B594();
    KeyPath, v19, v20, v21, v22, v23, v24, v25;
    v26 = *(v42 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading);
    v42, v27, v28, v29, v30, v31, v32, v33;
    sub_1BD64081C(v1, &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v35 = swift_allocObject();
    sub_1BD640970(&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for AccountAutomaticPaymentsHeroView);
    if (qword_1EBD36EE8 != -1)
    {
      swift_once();
    }

    v36 = qword_1EBDAB658;
    v37 = qword_1EBD36EF0;
    sub_1BE048964();
    if (v37 != -1)
    {
      swift_once();
    }

    v38 = qword_1EBDAB660;
    v39 = 256;
    if (!v26)
    {
      v39 = 0;
    }

    *a1 = v15;
    a1[1] = v17;
    a1[2] = v36;
    a1[3] = v38;
    a1[4] = v39;
    a1[5] = sub_1BD640BB8;
    a1[6] = v35;
    sub_1BE048964();
  }

  else
  {
    a1[6] = 0;
    result = 0.0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_1BD63E9D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v58 - v5;
  v7 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(v8 + 36)))
  {
    v16 = *(v1 + 24);
    LOBYTE(v63) = *(v1 + 16);
    v15 = v63;
    v64 = v16;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    LOBYTE(v60) = v15;
    v61 = v16;
    v59 = (v62 & 1) == 0;
    sub_1BE0516B4();
    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    v58[1] = a1;
    sub_1BE04D194();
    sub_1BD64081C(v1, v10);
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v26 = 138412290;
      v27 = v10[1];
      v63 = *v10;
      v64 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
      sub_1BE0516A4();
      v28 = v60;
      sub_1BD640B5C(v10);
      v29 = v28[6];
      v28, v30, v31, v32, v33, v34, v35, v36;
      *(v26 + 4) = v29;
      v37 = v58[0];
      *v58[0] = v29;
      _os_log_impl(&dword_1BD026000, v24, v25, "AccountAutomaticPayments: Unable to load terms and conditions, terms controller was nil, automaticPaymentsController: %@", v26, 0xCu);
      sub_1BD0DE53C(v37, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v37, -1, -1);
      MEMORY[0x1BFB45F20](v26, -1, -1);

      (*(v12 + 8))(v14, v11);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
      sub_1BD640B5C(v10);
    }

    v39 = v2[1];
    v63 = *v2;
    v38 = v63;
    v64 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
    sub_1BE0516A4();
    v40 = v60;
    v63 = v38;
    v64 = v39;
    sub_1BE0516A4();
    v41 = v60;
    v42 = [v60[6] featureIdentifier];
    v41, v43, v44, v45, v46, v47, v48, v49;
    FeatureError.init(feature:error:)(v42, 0, v6);
    sub_1BDA1C534(v6);
    v40, v50, v51, v52, v53, v54, v55, v56;
  }

  return sub_1BE04E744();
}

__n128 sub_1BD63ED94@<Q0>(_BYTE *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v16 = a2[1];
      *v107 = *a2;
      *&v107[8] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
      sub_1BE0516A4();
      sub_1BE051694();
      v17 = *&v107[8];
      LOBYTE(v101) = v107[0];
      sub_1BE051694();
      v18 = *&v107[8];
      LOBYTE(v94) = v107[0];
      type metadata accessor for AccountAutomaticPaymentsModel(0);
      sub_1BE051694();
      v20 = *&v107[8];
      v19 = *v107;
      v98 = 0;
      sub_1BD640398();
      sub_1BD6403EC();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE04F9A4();
      *v107 = v101;
      *&v107[16] = v102;
      *&v107[32] = v103[0];
      *&v107[41] = *(v103 + 9);
      v100 = 1;
      v107[57] = 1;
    }

    else
    {
      v32 = a2[1];
      *v107 = *a2;
      *&v107[8] = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
      sub_1BE0516A4();
      v17 = v104;
      v33 = (a2 + *(v6 + 36));
      v34 = *v33;
      v35 = v33[1];
      if (*v33)
      {
        v36 = swift_allocObject();
        *(v36 + 16) = v34;
        *(v36 + 24) = v35;
        v37 = sub_1BD1839E8;
      }

      else
      {
        sub_1BD64081C(a2, &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
        v66 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v36 = swift_allocObject();
        sub_1BD640970(&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v66, type metadata accessor for AccountAutomaticPaymentsHeroView);
        v37 = sub_1BD6409D8;
      }

      v67 = v37;
      v18 = swift_allocObject();
      v18[2] = v67;
      v18[3] = v36;
      LOBYTE(v104) = 1;
      sub_1BD0D44B8(v34, v35);
      sub_1BE051694();
      v68 = v107[0];
      v19 = *&v107[8];
      LOBYTE(v104) = 0;
      sub_1BE051694();
      v69 = v107[0];
      v20 = *&v107[8];
      v99[0] = 1;
      v107[0] = v68;
      *&v107[8] = v19;
      v107[16] = v69;
      *&v107[24] = v20;
      *&v107[32] = v17;
      *&v107[40] = sub_1BD1839E0;
      *&v107[48] = v18;
      v107[56] = 1;
      sub_1BD640398();
      sub_1BD6403EC();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE04F9A4();
      *v107 = v101;
      *&v107[16] = v102;
      *&v107[32] = v103[0];
      *&v107[41] = *(v103 + 9);
      LOBYTE(v94) = 1;
      v107[57] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE08, &qword_1BE0E9E70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE28, &qword_1BE0E9E78);
    sub_1BD6401D8();
    sub_1BD64030C();
    sub_1BE04F9A4();
    v18, v70, v71, v72, v73, v74, v75, v76;
    v17, v77, v78, v79, v80, v81, v82, v83;
    v20, v84, v85, v86, v87, v88, v89, v90;
    v65 = v19;
  }

  else
  {
    if (*a1)
    {
      v21 = a2[1];
      *v107 = *a2;
      *&v107[8] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
      sub_1BE0516A4();
      type metadata accessor for AccountAutomaticPaymentsModel(0);
      sub_1BE051694();
      v23 = *&v107[8];
      v22 = *v107;
      sub_1BD640264();
      sub_1BD6402B8();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE04F9A4();
      LOBYTE(v94) = v103[1];
      v99[0] = 0;
      *v107 = v101;
      *&v107[16] = v102;
      *&v107[32] = v103[0];
      v107[48] = v103[1];
      v107[57] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE08, &qword_1BE0E9E70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE28, &qword_1BE0E9E78);
      sub_1BD6401D8();
      sub_1BD64030C();
      sub_1BE04F9A4();
      v31 = v23;
    }

    else
    {
      v9 = a2[1];
      *v107 = *a2;
      *&v107[8] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
      sub_1BE0516A4();
      v10 = v104;
      v11 = (a2 + *(v6 + 36));
      v12 = *v11;
      v13 = v11[1];
      if (*v11)
      {
        v14 = swift_allocObject();
        *(v14 + 16) = v12;
        *(v14 + 24) = v13;
        v15 = sub_1BD640D80;
      }

      else
      {
        sub_1BD64081C(a2, &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
        v38 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v14 = swift_allocObject();
        sub_1BD640970(&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v38, type metadata accessor for AccountAutomaticPaymentsHeroView);
        v15 = sub_1BD640D7C;
      }

      v39 = v15;
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v14;
      sub_1BD0D44B8(v12, v13);
      AccountAutomaticPaymentsAmountView.init(model:dismissAction:)(v10, sub_1BD640D78, v40, &v94);
      v22 = v94;
      v41 = v97;
      *&v107[8] = v95;
      v93 = v96;
      *&v107[24] = v96;
      *v107 = v94;
      *&v107[40] = v97;
      v107[48] = 0;
      v42 = v95;
      sub_1BD640264();
      sub_1BD6402B8();
      sub_1BE048964();
      sub_1BE048964();
      v43 = v93;
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BE04F9A4();
      v99[0] = v103[1];
      v100 = 0;
      *v107 = v101;
      *&v107[16] = v102;
      *&v107[32] = v103[0];
      v107[48] = v103[1];
      v107[57] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE08, &qword_1BE0E9E70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE28, &qword_1BE0E9E78);
      sub_1BD6401D8();
      sub_1BD64030C();
      sub_1BE04F9A4();
      v41, v44, v45, v46, v47, v48, v49, v50;
      v43, v51, v52, v53, v54, v55, v56, v57;
      v31 = v42;
    }

    v31, v24, v25, v26, v27, v28, v29, v30;
    v65 = v22;
  }

  v65, v58, v59, v60, v61, v62, v63, v64;
  *&v107[32] = v106[0];
  *&v107[42] = *(v106 + 10);
  v91 = v105;
  *a3 = v104;
  a3[1] = v91;
  a3[2] = *&v107[32];
  result = *&v107[42];
  *(a3 + 42) = *&v107[42];
  return result;
}

uint64_t sub_1BD63F5BC(uint64_t a1)
{
  v24 = sub_1BE04F3D4();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - v6);
  v8 = sub_1BE04E664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  sub_1BD0DE19C(a1 + *(v12 + 24), v7, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v13 = *v7;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    (*(v2 + 8))(v4, v24);
  }

  sub_1BE04E654();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD63F844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AccountTermsView(0);
  v22 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + *(type metadata accessor for AccountAutomaticPaymentsHeroView(0) + 28));
  if (v13)
  {
    v14 = *(a1 + 24);
    LOBYTE(v25) = *(a1 + 16);
    v26 = v14;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    v16 = v23;
    v17 = v24;
    *v12 = v15;
    *(v12 + 8) = v16;
    v12[24] = v17;
    v25 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9A8, &unk_1BE0C41A8);
    sub_1BE051694();
    *(v12 + 2) = v23;
    v18 = type metadata accessor for FeatureError(0);
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    sub_1BD0DE19C(v9, v6, &qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BE051694();
    sub_1BD0DE53C(v9, &qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BD640970(v12, a2, type metadata accessor for AccountTermsView);
    return (*(v22 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v20 = *(v22 + 56);

    return v20(a2, 1, 1, v10);
  }
}

void sub_1BD63FB2C(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1 + *(type metadata accessor for AccountAutomaticPaymentsHeroView(0) + 36);
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    v9 = sub_1BE048964();
    v7(v9);

    sub_1BD0D4744(v7, v8, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    sub_1BD63C4A4(v5);
    sub_1BE04E654();
    (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_1BD63FC68()
{
  result = qword_1EBD4DD98;
  if (!qword_1EBD4DD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DD78, &qword_1BE0E9E18);
    sub_1BD63FD24();
    sub_1BD640A40(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD98);
  }

  return result;
}

unint64_t sub_1BD63FD24()
{
  result = qword_1EBD4DDA0;
  if (!qword_1EBD4DDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDA8, &qword_1BE0E9E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDB0, &qword_1BE0E9E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDB8, &qword_1BE0E9E30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDC0, &qword_1BE0E9E38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDC8, &qword_1BE0E9E40);
    sub_1BD63FECC();
    sub_1BD6400F8();
    sub_1BD64014C();
    swift_getOpaqueTypeConformance2();
    sub_1BD640440();
    swift_getOpaqueTypeConformance2();
    sub_1BD640A40(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DDA0);
  }

  return result;
}