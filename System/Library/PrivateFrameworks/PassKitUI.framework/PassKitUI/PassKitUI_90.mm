void sub_1BD981EF4(uint64_t a1)
{
  if (!qword_1EBD59FE8)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD59FE8);
    }
  }
}

void sub_1BD981F88(uint64_t a1)
{
  if (!qword_1EBD59FF0)
  {
    _s9ViewModelCMa_5(255);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD59FF0);
    }
  }
}

unint64_t sub_1BD981FE0()
{
  result = qword_1EBD4D5B0;
  if (!qword_1EBD4D5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4D5B0);
  }

  return result;
}

void sub_1BD982048(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for FinanceKitPredictedTransactionsView(0);
  sub_1BE04D114();
  v6 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
  if (v6)
  {
    *(a3 + 40) = v6;
    *a3 = sub_1BD9850A4;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    _s9ViewModelCMa_5(0);
    v7 = swift_allocObject();
    sub_1BE0490F4();
    sub_1BE048964();
    v8 = a1;
    *(v7 + 2) = sub_1BE0490B4();
    v9 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
    v10 = sub_1BE0495A4();
    (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
    sub_1BE04D114();
    *&v7[OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions] = 0;
    sub_1BE04B5C4();
    *(v7 + 3) = v8;
    sub_1BE048964();
    sub_1BE051694();
    v7, v11, v12, v13, v14, v15, v16, v17;
    a2, v18, v19, v20, v21, v22, v23, v24;

    *(a3 + 24) = v25;
    *(a3 + 32) = v26;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD9821EC(void *a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  if (v4)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v6 = v4;
    sub_1BE04D804();
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0E8, &qword_1BE108BB8));
    sub_1BE048964();
    v8 = a1;
    v9 = sub_1BE04F894();
    if ([v6 _pk_settings_useStateDrivenNavigation])
    {
      [v6 _pk_settings_pushViewController_];
    }

    else
    {
      [v6 pushViewController:v9 animated:1];
    }
  }
}

void sub_1BD982324(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0F0, &qword_1BE108BC0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  if (v7)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v8 = v7;
    v9 = sub_1BE04D804();
    sub_1BD98503C(a1, v6, type metadata accessor for FinanceKitTransactionDetailView);
    v10 = &v6[*(v4 + 36)];
    *v10 = v9;
    v10[1] = v2;
    v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0F8, &qword_1BE108BC8));
    sub_1BE048964();
    v12 = sub_1BE04F894();
    if ([v8 _pk_settings_useStateDrivenNavigation])
    {
      [v8 _pk_settings_pushViewController_];
    }

    else
    {
      [v8 pushViewController:v12 animated:1];
    }
  }
}

void sub_1BD9824C4(__int128 *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v5 = *(a1 + 2);
    v4 = *(a1 + 3);
    v10 = *a1;
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v7 = v2;
    v8 = sub_1BE04D804();
    v20 = *(a1 + 1);
    v18 = a1[1];
    v19 = *(a1 + 32);
    v12 = v10;
    v13 = v5;
    v14 = v4;
    v15 = v3 & 1;
    v16 = v8;
    v17 = v1;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A100, &unk_1BE108BD0));
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(&v20, v11, &qword_1EBD553A0, &qword_1BE0FC150);
    sub_1BD0DE19C(&v18, v11, &qword_1EBD5A108, &unk_1BE108BE0);
    v9 = sub_1BE04F894();
    if ([v7 _pk_settings_useStateDrivenNavigation])
    {
      [v7 _pk_settings_pushViewController_];
    }

    else
    {
      [v7 pushViewController:v9 animated:1];
    }
  }
}

void sub_1BD982668(__int128 *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v4 = v2;
    v5 = sub_1BE04D804();
    v6 = a1[1];
    v10 = *a1;
    v11 = v6;
    v12 = a1[2];
    v13 = *(a1 + 6);
    v14 = v5;
    v15 = v1;
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0D8, &qword_1BE108BA8));
    sub_1BD0F972C(a1, v9);
    sub_1BE048964();
    v8 = sub_1BE04F894();
    if ([v4 _pk_settings_useStateDrivenNavigation])
    {
      [v4 _pk_settings_pushViewController_];
    }

    else
    {
      [v4 pushViewController:v8 animated:1];
    }
  }
}

void sub_1BD9827A8(__int128 *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v4 = v2;
    v5 = sub_1BE04D804();
    v6 = a1[3];
    v14 = a1[2];
    v15 = v6;
    v7 = *(a1 + 8);
    v8 = a1[1];
    v12 = *a1;
    v13 = v8;
    v16 = v7;
    v17 = v5;
    v18 = v1;
    v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0E0, &qword_1BE108BB0));
    sub_1BD62B05C(a1, v11);
    sub_1BE048964();
    v10 = sub_1BE04F894();
    if ([v4 _pk_settings_useStateDrivenNavigation])
    {
      [v4 _pk_settings_pushViewController_];
    }

    else
    {
      [v4 pushViewController:v10 animated:1];
    }
  }
}

void sub_1BD9828E8(_OWORD *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v4 = v2;
    v5 = sub_1BE04D804();
    v6 = a1[1];
    v10[4] = *a1;
    v10[5] = v6;
    v7 = a1[3];
    v10[6] = a1[2];
    v10[7] = v7;
    v11 = v5;
    v12 = v1;
    v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A120, &unk_1BE108BF0));
    sub_1BD9852FC(a1, v10);
    sub_1BE048964();
    v9 = sub_1BE04F894();
    if ([v4 _pk_settings_useStateDrivenNavigation])
    {
      [v4 _pk_settings_pushViewController_];
    }

    else
    {
      [v4 pushViewController:v9 animated:1];
    }
  }
}

void sub_1BD982A20(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0C8, &qword_1BE108B98);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  if (v7)
  {
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v8 = v7;
    v9 = sub_1BE04D804();
    sub_1BD98503C(a1, v6, type metadata accessor for FinanceKitPredictedTransactionDetailView);
    v10 = &v6[*(v4 + 36)];
    *v10 = v9;
    v10[1] = v2;
    v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0D0, &qword_1BE108BA0));
    sub_1BE048964();
    v12 = sub_1BE04F894();
    if ([v8 _pk_settings_useStateDrivenNavigation])
    {
      [v8 _pk_settings_pushViewController_];
    }

    else
    {
      [v8 pushViewController:v12 animated:1];
    }
  }
}

void sub_1BD982BC0(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for FinanceKitPredictedTransactionsView(0);
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = v4;
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BE04F434();
  v5 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59FF8, &qword_1BE108A98);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v44 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A000, &qword_1BE108AA0);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A008, &qword_1BE108AA8);
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v44 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A010, &qword_1BE108AB0);
  MEMORY[0x1EEE9AC00](v44);
  v17 = &v44 - v16;
  v54 = v2;
  sub_1BD983150(v2, v10);
  v18 = sub_1BE052404();
  v19 = PKLocalizedBankConnectString(v18);

  if (v19)
  {
    v20 = sub_1BE052434();
    v22 = v21;

    v56 = v20;
    v57 = v22;
    v23 = sub_1BD9847CC();
    v24 = sub_1BD0DDEBC();
    v25 = MEMORY[0x1E69E6158];
    sub_1BE050B74();
    v22, v26, v27, v28, v29, v30, v31, v32;
    sub_1BD0DE53C(v10, &qword_1EBD59FF8, &qword_1BE108A98);
    v33 = v50;
    (*(v5 + 104))(v7, *MEMORY[0x1E697C438], v50);
    v56 = v8;
    v57 = v25;
    v58 = v23;
    v59 = v24;
    swift_getOpaqueTypeConformance2();
    v35 = v46;
    v34 = v47;
    sub_1BE050E84();
    (*(v5 + 8))(v7, v33);
    (*(v45 + 8))(v13, v35);
    v36 = v53;
    sub_1BD98503C(v54, v53, type metadata accessor for FinanceKitPredictedTransactionsView);
    v37 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v38 = swift_allocObject();
    sub_1BD9849C0(v36, v38 + v37);
    v39 = &v17[*(v44 + 36)];
    sub_1BE04E7B4();
    sub_1BE0528B4();
    *v39 = &unk_1BE108AE0;
    *(v39 + 1) = v38;
    (*(v48 + 32))(v17, v34, v49);
    type metadata accessor for NavigationController();
    sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v40 = sub_1BE04E3C4();
    v41 = sub_1BE04D804();
    v42 = v55;
    sub_1BD0C8230(v17, v55);
    v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A060, &qword_1BE108AE8) + 36));
    *v43 = v41;
    v43[1] = v40;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD983150@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A058, &qword_1BE108AD0);
  v60 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v59 = &v58 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A070, &qword_1BE108B00);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v58 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A048, &qword_1BE108AC8);
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v6 = &v58 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A038, &qword_1BE108AC0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A078, &qword_1BE108B08);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5D8, &qword_1BE0E8AF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v15 = *(a1 + 32);
  v70 = *(a1 + 24);
  v71 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A068, &unk_1BE108AF0);
  sub_1BE0516A4();
  v16 = v69;
  KeyPath = swift_getKeyPath();
  v70 = v16;
  sub_1BD9852B4(&qword_1EBD5A080, _s9ViewModelCMa_5, &unk_1BE10F020);
  sub_1BE04B594();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v25 = *&v16[OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions];
  sub_1BE048C84();
  v16, v26, v27, v28, v29, v30, v31, v32;
  if (v25)
  {
    v61 = v7;
    if (v25[2])
    {
      MEMORY[0x1EEE9AC00](v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A088, &qword_1BE108B40);
      sub_1BD984BD8();
      sub_1BE0504E4();
      v25, v41, v42, v43, v44, v45, v46, v47;
      v48 = v62;
      v49 = v65;
      (*(v62 + 16))(v64, v6, v65);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD5A040, &qword_1EBD5A048, &qword_1BE108AC8, MEMORY[0x1E697CD20]);
      sub_1BD0DE4F4(&qword_1EBD5A050, &qword_1EBD5A058, &qword_1BE108AD0, MEMORY[0x1E697C7C8]);
      v50 = v66;
      sub_1BE04F9A4();
      (*(v48 + 8))(v6, v49);
    }

    else
    {
      v25, v34, v35, v36, v37, v38, v39, v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
      sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
      v54 = v59;
      sub_1BE04FC64();
      v55 = v60;
      v56 = v67;
      (*(v60 + 16))(v64, v54, v67);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD5A040, &qword_1EBD5A048, &qword_1BE108AC8, MEMORY[0x1E697CD20]);
      sub_1BD0DE4F4(&qword_1EBD5A050, &qword_1EBD5A058, &qword_1BE108AD0, MEMORY[0x1E697C7C8]);
      v50 = v66;
      sub_1BE04F9A4();
      (*(v55 + 8))(v54, v56);
    }

    sub_1BD0DE19C(v50, v11, &qword_1EBD5A038, &qword_1BE108AC0);
    swift_storeEnumTagMultiPayload();
    sub_1BD9848DC();
    sub_1BD628B7C();
    sub_1BE04F9A4();
    v51 = v50;
    v52 = &qword_1EBD5A038;
    v53 = &qword_1BE108AC0;
  }

  else
  {
    sub_1BE04E4F4();
    *&v14[*(v12 + 36)] = 0;
    sub_1BD0DE19C(v14, v11, &qword_1EBD4D5D8, &qword_1BE0E8AF0);
    swift_storeEnumTagMultiPayload();
    sub_1BD9848DC();
    sub_1BD628B7C();
    sub_1BE04F9A4();
    v51 = v14;
    v52 = &qword_1EBD4D5D8;
    v53 = &qword_1BE0E8AF0;
  }

  return sub_1BD0DE53C(v51, v52, v53);
}

void sub_1BD98388C(uint64_t a3@<X8>)
{
  v4 = sub_1BE052404();
  v5 = PKLocalizedBankConnectString(v4);

  if (v5)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE0506C4();
    sub_1BE0501D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0B0, &unk_1BE108B50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD984D28();
    sub_1BD2A275C();
    sub_1BE051A54();
    v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A088, &qword_1BE108B40) + 36);
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD983A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitPredictedTransactionsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_1BD98503C(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitPredictedTransactionsView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BD9849C0(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A0B8, &qword_1BE108B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5F0, &qword_1BE0E8AF8);
  sub_1BD0DE4F4(&qword_1EBD5A0C0, &qword_1EBD5A0B8, &qword_1BE108B90, MEMORY[0x1E69E6338]);
  sub_1BD9852B4(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BD0DE4F4(&qword_1EBD4D5E8, &qword_1EBD4D5F0, &qword_1BE0E8AF8, MEMORY[0x1E697D680]);
  return sub_1BE0519C4();
}

void sub_1BD983C48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_1BE049BF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FinanceKitPredictedTransactionsView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BDA2ACEC();
  sub_1BD98503C(a2, v12, type metadata accessor for FinanceKitPredictedTransactionsView);
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_1BD9849C0(v12, v16 + v14);
  (*(v6 + 32))(v16 + v15, v8, v5);
  v17[4] = v13;
  v17[5] = a1;
  v17[6] = a2;
  sub_1BD628C9C();
  sub_1BE051704();
}

uint64_t sub_1BD983E7C(uint64_t a1)
{
  v1[5] = a1;
  sub_1BE0528A4();
  v1[6] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD983F14, v3, v2);
}

uint64_t sub_1BD983F14()
{
  v1 = v0[5];
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A068, &unk_1BE108AF0);
  sub_1BE0516A4();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1BD983FD8;

  return sub_1BDA2BC64();
}

uint64_t sub_1BD983FD8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v10 = *(v2 + 56);
    v11 = *(v2 + 64);
    v12 = sub_1BD9840F4;
  }

  else
  {
    *(v2 + 72), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 56);
    v11 = *(v2 + 64);
    v12 = sub_1BD0F88DC;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD9840F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 88);
  v10 = *(v8 + 72);
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  v10, v11, v12, v13, v14, v15, v16, v17;
  type metadata accessor for FinanceKitPredictedTransactionsView(0);
  v18 = v9;
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C34();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v8 + 88);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v22;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_1BD026000, v19, v20, "    Failed to load Predicted Transactions: %@", v23, 0xCu);
    sub_1BD0DE53C(v24, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  else
  {
  }

  v27 = *(v8 + 8);

  return v27();
}

uint64_t sub_1BD984274(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_1BE049BF4();
  v40 = *(v3 - 8);
  v4 = v40;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v38 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - v9;
  v10 = type metadata accessor for FinanceKitPredictedTransactionDetailView(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NavigationController();
  sub_1BD9852B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v41 = sub_1BE04E3C4();
  v14 = *(v4 + 16);
  v15 = v39;
  v14(v39, v42, v3);
  v16 = a1[4];
  v46 = a1[3];
  v47 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A068, &unk_1BE108AF0);
  sub_1BE0516A4();
  v17 = v45;
  v18 = v45[2];
  sub_1BE048964();
  v17, v19, v20, v21, v22, v23, v24, v25;
  *v13 = sub_1BE04EEC4();
  v13[1] = v26;
  v27 = v43;
  v14(v43, v15, v3);
  v14(v44, v27, v3);
  sub_1BE051694();
  v28 = *(v40 + 8);
  v28(v27, v3);
  v28(v15, v3);
  *(v13 + *(v11 + 32)) = v18;
  v29 = v41;
  sub_1BD982A20(v13);
  v29, v30, v31, v32, v33, v34, v35, v36;
  return sub_1BD4A06B4(v13);
}

void sub_1BD98454C(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1BDA2B088();
  v7 = v6;
  v8 = *(a2 + 40);
  type metadata accessor for TransactionPresentation(0);
  swift_allocObject();
  v9 = v8;
  v10 = a1;
  v11 = sub_1BD6AF5A8(v10, v7, v8);

  sub_1BD9852B4(&qword_1EBD3B840, type metadata accessor for TransactionPresentation, &unk_1BE0EF098);
  sub_1BE048964();
  v12 = sub_1BE04E954();
  v14 = v13;
  sub_1BD6AE91C();
  v11, v15, v16, v17, v18, v19, v20, v21;
  *a3 = v12;
  a3[1] = v14;
}

id sub_1BD98464C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8040], v0, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v10[0] = v7;
    v10[1] = v9;
    sub_1BD0DDEBC();
    return sub_1BE051624();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD9847CC()
{
  result = qword_1EBD5A018;
  if (!qword_1EBD5A018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59FF8, &qword_1BE108A98);
    sub_1BD984850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A018);
  }

  return result;
}

unint64_t sub_1BD984850()
{
  result = qword_1EBD5A020;
  if (!qword_1EBD5A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A028, &qword_1BE108AB8);
    sub_1BD9848DC();
    sub_1BD628B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A020);
  }

  return result;
}

unint64_t sub_1BD9848DC()
{
  result = qword_1EBD5A030;
  if (!qword_1EBD5A030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A038, &qword_1BE108AC0);
    sub_1BD0DE4F4(&qword_1EBD5A040, &qword_1EBD5A048, &qword_1BE108AC8, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&qword_1EBD5A050, &qword_1EBD5A058, &qword_1BE108AD0, MEMORY[0x1E697C7C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A030);
  }

  return result;
}

uint64_t sub_1BD9849C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitPredictedTransactionsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD984A24()
{
  v2 = *(type metadata accessor for FinanceKitPredictedTransactionsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD983E7C(v0 + v3);
}

double sub_1BD984AF0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9852B4(&qword_1EBD5A080, _s9ViewModelCMa_5, &unk_1BE10F020);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions);
  sub_1BE048C84();
  return result;
}

unint64_t sub_1BD984BD8()
{
  result = qword_1EBD5A090;
  if (!qword_1EBD5A090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A088, &qword_1BE108B40);
    sub_1BD984C90();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A090);
  }

  return result;
}

unint64_t sub_1BD984C90()
{
  result = qword_1EBD5A098;
  if (!qword_1EBD5A098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A0A0, &qword_1BE108B48);
    sub_1BD984D28();
    sub_1BD2A275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A098);
  }

  return result;
}

unint64_t sub_1BD984D28()
{
  result = qword_1EBD5A0A8;
  if (!qword_1EBD5A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A0B0, &unk_1BE108B50);
    sub_1BD0DE4F4(&qword_1EBD4D5E8, &qword_1EBD4D5F0, &qword_1BE0E8AF8, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A0A8);
  }

  return result;
}

uint64_t objectdestroyTm_115()
{
  v1 = (type metadata accessor for FinanceKitPredictedTransactionsView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1BD0D45CC(*v2, *(v2 + 8), *(v2 + 16), v3, v4, v5, v6, v7);
  *(v2 + 24), v8, v9, v10, v11, v12, v13, v14;
  *(v2 + 32), v15, v16, v17, v18, v19, v20, v21;

  v22 = v1[9];
  v23 = sub_1BE04D214();
  (*(*(v23 - 8) + 8))(v2 + v22, v23);

  return swift_deallocObject();
}

void sub_1BD984EE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitPredictedTransactionsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD983C48(a1, v6, a2);
}

uint64_t sub_1BD984F64()
{
  v1 = *(type metadata accessor for FinanceKitPredictedTransactionsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE049BF4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD984274((v0 + v2), v5);
}

uint64_t sub_1BD98503C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD9850AC()
{
  result = qword_1EBD5A110;
  if (!qword_1EBD5A110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A060, &qword_1BE108AE8);
    sub_1BD985164();
    sub_1BD0DE4F4(&qword_1EBD554F0, &qword_1EBD554F8, &qword_1BE0FC2B8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A110);
  }

  return result;
}

unint64_t sub_1BD985164()
{
  result = qword_1EBD5A118;
  if (!qword_1EBD5A118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A010, &qword_1BE108AB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A000, &qword_1BE108AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59FF8, &qword_1BE108A98);
    sub_1BD9847CC();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD9852B4(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A118);
  }

  return result;
}

uint64_t sub_1BD9852B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall PeerPaymentUpdateUserInfoCoordinator.didDismissViewController()()
{
  v1 = *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex) = v3;
  }
}

void PeerPaymentUpdateUserInfoCoordinator.nextViewController(completion:)(void (*a1)(uint64_t, id), void *a2)
{
  sub_1BD986EF4();
  if (v5)
  {
    v21 = v5;
    a1(v5, 0);
  }

  else
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BD987AF8(v2, v6, a1, a2);
    v6, v7, v8, v9, v10, v11, v12, v13;

    a2, v14, v15, v16, v17, v18, v19, v20;
  }
}

void *PeerPaymentUpdateUserInfoCoordinator.fieldsModel.getter()
{
  v1 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id PeerPaymentUpdateUserInfoCoordinator.init(account:webService:setupContext:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllers] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_firstViewController] = 0;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex] = 0;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response] = 0;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel] = 0;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account] = a1;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_webService] = a2;
  *&v3[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_setupContext] = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v8 = a1;
  v9 = a2;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  v11 = objc_allocWithZone(MEMORY[0x1E69B8F40]);
  v12 = v10;
  v13 = [v11 init];
  [v13 setEndpoint_];
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v15 = result;
    [result prewarmDeviceScoreForAttributes_];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PeerPaymentUpdateUserInfoCoordinator.presentUpdateUserInfoFlow(from:completion:)(void *a1, uint64_t a2, void *a3)
{
  v14 = v3;
  sub_1BD0D44B8(a2, a3);
  v7 = a1;
  sub_1BD987FC0(v14, v14, a2, a3, v7);

  sub_1BD0D4744(a2, a3, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BD985744(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1BE051F54();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE051FA4();
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v31 = sub_1BE052D54();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1BD988D30;
  v35 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_56_2;
  v17 = _Block_copy(aBlock);
  v18 = v35;
  v19 = a1;
  sub_1BD0D44B8(a3, a4);
  v20 = a5;
  v18, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v28 = v31;
  MEMORY[0x1BFB3FDF0](0, v14, v11, v17);
  _Block_release(v17);

  (*(v33 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v32);
}

void sub_1BD985A58(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *&Strong[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response];
    if (v10)
    {
      v11 = a2 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v18 = Strong;
      v19 = v10;
      if ([v19 state] != 1 || (sub_1BD985CE0() & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_1BD985EB8();
      sub_1BD986398();
      sub_1BD986EF4();
      v21 = v20;
      v22 = *&v18[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_firstViewController];
      *&v18[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_firstViewController] = v20;
      v23 = v20;

      if (v21)
      {
        v24 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
        [v24 setModalPresentationStyle_];
        v25 = swift_allocObject();
        *(v25 + 16) = a3;
        *(v25 + 24) = a4;
        aBlock[4] = sub_1BD988D40;
        v39 = v25;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_62_2;
        v26 = _Block_copy(aBlock);
        v27 = v39;
        sub_1BD0D44B8(a3, a4);
        v27, v28, v29, v30, v31, v32, v33, v34;
        [a5 presentViewController:v24 animated:1 completion:v26];

        _Block_release(v26);
        return;
      }

      if (!a3)
      {
LABEL_17:

        return;
      }

      v35 = *MEMORY[0x1E69BBBC8];
      v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1BE048964();
      v37 = [v36 initWithDomain:v35 code:-1 userInfo:0];
      (a3)();

      goto LABEL_9;
    }
  }

  if (!a3)
  {
    return;
  }

  sub_1BE048964();
  a3(a2);
LABEL_9:
  sub_1BD0D4744(a3, a4, v12, v13, v14, v15, v16, v17);
}

id sub_1BD985CE0()
{
  v1 = *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
  if (v1)
  {
    v2 = v1;
    result = [v2 requiredFieldsByPage];
    if (result)
    {
      v4 = result;
      sub_1BD0E5E8C(0, &qword_1EBD5A1D8, 0x1E69B8FF8);
      v5 = sub_1BE052744();

      if (v5 >> 62)
      {
LABEL_23:
        v6 = sub_1BE053704();
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = 0;
      while (1)
      {
        v8 = v6 != v7;
        if (v6 == v7)
        {
LABEL_18:

          v5, v21, v22, v23, v24, v25, v26, v27;
          return v8;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB40900](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        result = [v9 requiredFields];
        if (!result)
        {
          break;
        }

        v11 = result;
        sub_1BD0E5E8C(0, &qword_1EBD4E6C0, 0x1E69B8DD0);
        v12 = sub_1BE052744();

        if (v12 >> 62)
        {
          v20 = sub_1BE053704();
        }

        else
        {
          v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12, v13, v14, v15, v16, v17, v18, v19;

        ++v7;
        if (v20 >= 1)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1BD985EB8()
{
  v1 = *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v2 requiredFieldsByPage];
  if (!v3)
  {
    goto LABEL_62;
  }

  v4 = v3;
  sub_1BD0E5E8C(0, &qword_1EBD5A1D8, 0x1E69B8FF8);
  v5 = sub_1BE052744();

  if (v5 >> 62)
  {
LABEL_59:
    v13 = sub_1BE053704();
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = v0;
  v86 = v2;
  v87 = v5;
  if (!v13)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_45:
    v87, v6, v7, v8, v9, v10, v11, v12;
    if (v15 >> 62)
    {
      v64 = sub_1BE053704();
    }

    else
    {
      v64 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65 = v86;
    if (v64 < 1)
    {
      v15, v57, v58, v59, v60, v61, v62, v63;
    }

    else
    {
      v66 = sub_1BD3F0574(v15, v57, v58, v59, v60, v61, v62, v63);
      v15, v67, v68, v69, v70, v71, v72, v73;
      v74 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
      v75 = sub_1BE052724();
      v66, v76, v77, v78, v79, v80, v81, v82;
      v83 = [v74 initWithPaymentSetupFields_];

      v84 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
      swift_beginAccess();
      v65 = *(v85 + v84);
      *(v85 + v84) = v83;
    }

    return;
  }

  v14 = 0;
  v90 = v5 & 0xFFFFFFFFFFFFFF8;
  v91 = v5 & 0xC000000000000001;
  v89 = v5 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  v5 = &unk_1EBD45AC0;
  v88 = v13;
  while (1)
  {
    if (v91)
    {
      v16 = MEMORY[0x1BFB40900](v14, v87);
    }

    else
    {
      if (v14 >= *(v90 + 16))
      {
        goto LABEL_53;
      }

      v16 = *(v89 + 8 * v14);
    }

    v17 = v16;
    v18 = __OFADD__(v14++, 1);
    if (v18)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v19 = [v16 requiredFields];
    if (!v19)
    {
      break;
    }

    v20 = v19;
    sub_1BD0E5E8C(0, &qword_1EBD4E6C0, 0x1E69B8DD0);
    v0 = sub_1BE052744();

    v21 = v0 >> 62;
    if (v0 >> 62)
    {
      v22 = sub_1BE053704();
    }

    else
    {
      v22 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = (v15 >> 62);
    if (v15 >> 62)
    {
      v23 = sub_1BE053704();
    }

    else
    {
      v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v94 = v22;
    v18 = __OFADD__(v23, v22);
    v24 = v23 + v22;
    if (v18)
    {
      goto LABEL_54;
    }

    v92 = v17;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v2)
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_1BE053704();
      goto LABEL_26;
    }

    if (v2)
    {
      goto LABEL_25;
    }

    v2 = (v15 & 0xFFFFFFFFFFFFFF8);
    if (v24 <= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v93 = v15;
      goto LABEL_27;
    }

LABEL_26:
    v93 = sub_1BE053884();
    v2 = (v93 & 0xFFFFFFFFFFFFFF8);
LABEL_27:
    v32 = v2[2];
    v33 = v2[3];
    if (v21)
    {
      v34 = sub_1BE053704();
      if (!v34)
      {
LABEL_7:
        v0, v25, v26, v27, v28, v29, v30, v31;

        v15 = v93;
        if (v94 > 0)
        {
          goto LABEL_55;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v34 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        goto LABEL_7;
      }
    }

    if (((v33 >> 1) - v32) < v94)
    {
      goto LABEL_56;
    }

    v35 = &v2[v32 + 4];
    if (v21)
    {
      if (v34 < 1)
      {
        goto LABEL_58;
      }

      sub_1BD0DE4F4(&unk_1EBD5A1E0, &unk_1EBD45AC0, &qword_1BE0D5160, MEMORY[0x1E69E6340]);
      for (i = 0; i != v34; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0, &qword_1BE0D5160);
        v45 = sub_1BD3F5808(v95, i, v0);
        v47 = *v46;
        (v45)(v95, 0);
        *(v35 + 8 * i) = v47;
      }

      v0, v48, v49, v50, v51, v52, v53, v54;
      v13 = v88;
      v36 = v94;
    }

    else
    {
      v36 = v94;
      swift_arrayInitWithCopy();
      v0, v37, v38, v39, v40, v41, v42, v43;
    }

    v15 = v93;
    if (v36 > 0)
    {
      v55 = v2[2];
      v18 = __OFADD__(v55, v36);
      v56 = v55 + v36;
      if (v18)
      {
        goto LABEL_57;
      }

      v2[2] = v56;
    }

LABEL_8:
    if (v14 == v13)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
}

void sub_1BD986398()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v184 = v0;
  v7 = *&v0[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response];
  if (!v7)
  {
    return;
  }

  v166 = &v164 - v6;
  v190 = MEMORY[0x1E69E7CC0];
  v185 = v7;
  v8 = [v185 requiredFieldsByPage];
  if (!v8)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v9 = v8;
  v181 = sub_1BD0E5E8C(0, &qword_1EBD5A1D8, 0x1E69B8FF8);
  v10 = sub_1BE052744();

  if (v10 >> 62)
  {
    goto LABEL_92;
  }

  v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_93:
    v10, v11, v12, v13, v14, v15, v16, v17;
    v163 = MEMORY[0x1E69E7CC0];
    goto LABEL_94;
  }

LABEL_5:
  v165 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account;
  v172 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_setupContext;
  v183 = v10 & 0xC000000000000001;
  v170 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
  swift_beginAccess();
  v167 = 0;
  v19 = 0;
  v169 = v10 & 0xFFFFFFFFFFFFFF8;
  v168 = v10 + 32;
  v176 = *MEMORY[0x1E69B8050];
  v175 = (v2 + 104);
  v174 = "nfoResponse8@NSError16";
  v173 = (v2 + 8);
  v20 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
  v164 = xmmword_1BE0B69E0;
  v178 = MEMORY[0x1E69E7CC0];
  v177 = v1;
  v180 = v18;
  v171 = v4;
  v179 = v10;
LABEL_8:
  if (v183)
  {
    v28 = MEMORY[0x1BFB40900](v19, v10);
  }

  else
  {
    if (v19 >= *(v169 + 16))
    {
      goto LABEL_88;
    }

    v28 = *(v168 + 8 * v19);
  }

  v2 = v28;
  v29 = __OFADD__(v19++, 1);
  if (v29)
  {
    goto LABEL_85;
  }

  v30 = [v28 requiredFields];
  if (!v30)
  {

    goto LABEL_7;
  }

  v31 = v30;
  sub_1BD0E5E8C(0, &qword_1EBD4E6C0, 0x1E69B8DD0);
  v10 = sub_1BE052744();

  v32 = v10 >> 62;
  v186 = v19;
  v188 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    v33 = sub_1BE053704();
  }

  else
  {
    v33 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = 0;
  v35 = v10 & 0xC000000000000001;
  v187 = v2;
  v2 = v188;
  do
  {
    if (v33 == v34)
    {
      [v185 useDeviceValidation];
      goto LABEL_29;
    }

    if (v35)
    {
      v36 = MEMORY[0x1BFB40900](v34, v10);
    }

    else
    {
      if (v34 >= *(v2 + 16))
      {
        goto LABEL_83;
      }

      v36 = *(v10 + 8 * v34 + 32);
    }

    v1 = v36;
    if (__OFADD__(v34, 1))
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v37 = [v36 v20[224]];

    ++v34;
  }

  while ((v37 & 1) == 0);
  if (![v185 useDeviceValidation])
  {
LABEL_29:
    v38 = 0;
    if (v32)
    {
LABEL_41:
      v39 = sub_1BE053704();
      goto LABEL_42;
    }

LABEL_30:
    v39 = *(v2 + 16);
LABEL_42:
    v2 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_86;
    }

    if (v2 < 0)
    {
      goto LABEL_87;
    }

    v182 = v38;
    v71 = 0;
    v72 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v35)
      {
        v73 = MEMORY[0x1BFB40900](v71, v10);
      }

      else
      {
        if (v71 >= *(v188 + 16))
        {
          goto LABEL_84;
        }

        v73 = *(v10 + 8 * v71 + 32);
      }

      v74 = v73;
      if ([v73 isFieldTypeFooter])
      {
        v75 = [v74 identifier];
        v76 = sub_1BE052434();
        v1 = v77;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1BD03B038(0, *(v72 + 2) + 1, 1, v72, v78, v79, v80, v81);
        }

        v4 = *(v72 + 2);
        v82 = *(v72 + 3);
        if (v4 >= v82 >> 1)
        {
          v72 = sub_1BD03B038((v82 > 1), v4 + 1, 1, v72, v78, v79, v80, v81);
        }

        *(v72 + 2) = v4 + 1;
        v90 = &v72[16 * v4];
        *(v90 + 4) = v76;
        *(v90 + 5) = v1;
        if (v2 == v71)
        {
LABEL_60:
          if (!*(v72 + 2))
          {
            v72, v83, v84, v85, v86, v87, v88, v89;
            v10, v128, v129, v130, v131, v132, v133, v134;

            v10 = v179;
            v18 = v180;
            v19 = v186;
            v20 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
            goto LABEL_7;
          }

          v1 = *&v184[v172];
          sub_1BE048C84();
          v91 = [v185 requiredFieldsByPage];
          v18 = v180;
          v19 = v186;
          v2 = v187;
          if (!v91)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

          v99 = v91;
          v10, v92, v93, v94, v95, v96, v97, v98;
          v100 = sub_1BE052744();
          v72, v101, v102, v103, v104, v105, v106, v107;

          if (v100 >> 62)
          {
            v115 = sub_1BE053704();
          }

          else
          {
            v115 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v4 = v171;
          v10 = v179;
          if (v115)
          {
            v29 = __OFSUB__(v115, 1);
            v116 = v115 - 1;
            if (v29)
            {
              goto LABEL_89;
            }

            if ((v100 & 0xC000000000000001) == 0)
            {
              if ((v116 & 0x8000000000000000) != 0)
              {
                goto LABEL_90;
              }

              if (v116 < *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v117 = *(v100 + 8 * v116 + 32);
                goto LABEL_70;
              }

LABEL_91:
              __break(1u);
LABEL_92:
              v18 = sub_1BE053704();
              if (!v18)
              {
                goto LABEL_93;
              }

              goto LABEL_5;
            }

            v117 = MEMORY[0x1BFB40900](v116, v100);
LABEL_70:
            v125 = v117;
            v100, v118, v119, v120, v121, v122, v123, v124;
            v126 = v2;
            v127 = sub_1BE053074();
          }

          else
          {
            v100, v108, v109, v110, v111, v112, v113, v114;
            v127 = 0;
          }

          v135 = v182 ^ 1;
          updated = type metadata accessor for PeerPaymentUpdateUserInfoViewController();
          v137 = objc_allocWithZone(updated);
          v138 = v184;
          *&v137[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_coordinator] = v184;
          *&v137[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_visibleFieldIdentifiers] = v72;
          v137[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_showCancelButton] = v135;
          v137[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_showSubmitButton] = v127 & 1;
          v139 = *&v138[v170];
          v189.receiver = v137;
          v189.super_class = updated;
          sub_1BE048C84();
          v140 = v138;
          v141 = objc_msgSendSuper2(&v189, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, 0, v1, 0, v139);
          if (!v141)
          {
            goto LABEL_98;
          }

          v149 = v141;
          v72, v142, v143, v144, v145, v146, v147, v148;
          v2 = v177;
          (*v175)(v4, v176, v177);
          v150 = v149;
          v151 = PKPassKitBundle();
          if (!v151)
          {
            goto LABEL_97;
          }

          v152 = v151;
          v1 = sub_1BE04B6F4();
          v154 = v153;

          (*v173)(v4, v2);
          v155 = sub_1BE052404();
          v154, v156, v157, v158, v159, v160, v161, v162;
          [v150 setTitle_];

          MEMORY[0x1BFB3F7A0]();
          v20 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
          if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BE052774();
          }

          sub_1BE0527C4();

          v178 = v190;
LABEL_7:
          if (v19 == v18)
          {
            v10, v21, v22, v23, v24, v25, v26, v27;
            v163 = v178;
LABEL_94:
            swift_beginAccess();
            sub_1BDA7A14C(v163);
            swift_endAccess();

            return;
          }

          goto LABEL_8;
        }
      }

      else
      {

        if (v2 == v71)
        {
          goto LABEL_60;
        }
      }

      v29 = __OFADD__(v71++, 1);
      if (v29)
      {
        __break(1u);
        goto LABEL_82;
      }
    }
  }

  if (v167)
  {
    v38 = 0;
    goto LABEL_40;
  }

  v40 = [objc_allocWithZone(PKAddressSearcherViewController) initWithStyle_];
  if (!v40)
  {
LABEL_39:
    v38 = 1;
LABEL_40:
    v167 = 1;
    if (v32)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  v41 = v40;
  v42 = [*&v184[v165] countryCode];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1BE052434();
    v46 = v45;
  }

  else
  {
    v46 = 0xE200000000000000;
    v44 = 21333;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
  inited = swift_initStackObject();
  *(inited + 16) = v164;
  *(inited + 32) = v44;
  v48 = inited + 32;
  *(inited + 40) = v46;
  v49 = sub_1BD537298(inited);
  swift_setDeallocating();
  sub_1BD1BCDE4(v48);
  v50 = sub_1BE052A24();
  v49, v51, v52, v53, v54, v55, v56, v57;
  [v41 setSupportedCountryCodes_];

  v4 = v166;
  v58 = v177;
  (*v175)(v166, v176, v177);
  v1 = v41;
  v59 = PKPassKitBundle();
  if (v59)
  {
    v60 = v59;
    sub_1BE04B6F4();
    v62 = v61;

    (*v173)(v4, v58);
    v63 = sub_1BE052404();
    v62, v64, v65, v66, v67, v68, v69, v70;
    [v1 setTitle_];

    MEMORY[0x1BFB3F7A0]([v1 setDelegate_]);
    if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v178 = v190;
    v2 = v188;
    goto LABEL_39;
  }

LABEL_100:
  __break(1u);
}

void sub_1BD986EF4()
{
  v1 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex;
  v2 = *(v0 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex);
  v3 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    if (v2 < sub_1BE053704())
    {
LABEL_3:
      v5 = *(v0 + v1);
      swift_beginAccess();
      v6 = *(v0 + v3);
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB40900](v5);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_14:
          __break(1u);
          return;
        }

        v7 = *(v6 + 8 * v5 + 32);
      }

      swift_endAccess();
      v8 = *(v0 + v1);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        *(v0 + v1) = v10;
        return;
      }

      goto LABEL_13;
    }
  }

  else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

void sub_1BD987000(void (*result)(void), void *a2)
{
  if (result)
  {
    sub_1BE048964();
    result(0);

    sub_1BD0D4744(result, a2, v4, v5, v6, v7, v8, v9);
  }
}

void sub_1BD987138(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1BE04A844();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1BD98719C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (a1 && !a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
      *(Strong + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response) = a1;
      v10 = Strong;
      v11 = a1;
    }

    else
    {
      v12 = a1;
    }

    if ([a1 state] == 2 && (v13 = objc_msgSend(a1, sel_userInfo)) != 0)
    {
      v14 = v13;
      v15 = [objc_opt_self() sharedInstance];
      if (v15)
      {
        v16 = v15;
        v17 = swift_allocObject();
        *(v17 + 16) = a4;
        *(v17 + 24) = a5;
        aBlock[4] = sub_1BD988CE4;
        v29 = v17;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_28_6;
        v18 = _Block_copy(aBlock);
        v19 = v29;
        v20 = v14;
        sub_1BE048964();
        v19, v21, v22, v23, v24, v25, v26, v27;
        [v16 insertOrUpdateUserInfo:v20 completion:v18];

        _Block_release(v18);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      a4(0);
    }
  }

  else
  {
    a4(a2);
  }
}

uint64_t sub_1BD987384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a3(0, a1);
  }

  if (*&Strong[OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response])
  {
    v16 = a1 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {

    return a3(0, a1);
  }

  v31 = Strong;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v32 = sub_1BE052D54();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a3;
  v19[4] = a4;
  aBlock[4] = sub_1BD988D10;
  v34 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_35_6;
  v20 = _Block_copy(aBlock);
  v21 = v34;
  sub_1BE048964();
  v21, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v29 = v32;
  MEMORY[0x1BFB3FDF0](0, v14, v10, v20);
  _Block_release(v20);

  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v30);
}

void sub_1BD9876E4(uint64_t a1, void (*a2)(void *, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD986398();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_1BD986EF4();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  a2(v8, 0);
}

void PeerPaymentUpdateUserInfoCoordinator.addressSearcherViewController(_:requestsNextViewControllerWithCompletion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  sub_1BE048964();
  sub_1BD986EF4();
  if (v7)
  {
    v23 = v7;
    a2();
    v6, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BD987AF8(v3, v15, sub_1BD1B6CB0, v6);
    v15, v16, v17, v18, v19, v20, v21, v22;
  }
}

id PeerPaymentUpdateUserInfoCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentUpdateUserInfoCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD987AF8(uint64_t a1, char *a2, void (*a3)(void, id), void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account);
  sub_1BE048964();
  sub_1BE048964();
  if (![v9 isEligibleForUserInfoUpdates])
  {
    goto LABEL_14;
  }

  v10 = [v9 identifier];
  if (v10)
  {
    v11 = v10;
    sub_1BE052434();
    v13 = v12;

    v14 = sub_1BE052404();
    v13, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    v14 = 0;
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E69B9010]) initWithAccountIdentifier_];

  if (!v22)
  {
LABEL_14:
    v88 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
    swift_beginAccess();

    a3(0, v88);
    v8, v103, v104, v105, v106, v107, v108, v109;
    goto LABEL_15;
  }

  v23 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
  swift_beginAccess();
  v24 = *(a1 + v23);
  if (!v24)
  {
    goto LABEL_10;
  }

  v25 = *MEMORY[0x1E69BC370];
  v131 = v24;
  v26 = [v131 submissionValuesForDestination_];
  if (!v26)
  {
LABEL_17:
    a4, v27, v28, v29, v30, v31, v32, v33;
    a2, v117, v118, v119, v120, v121, v122, v123;
    __break(1u);
    goto LABEL_18;
  }

  v34 = v26;
  v35 = sub_1BE052244();

  v36 = v22;
  v37 = sub_1BD1A8284(v35);
  v38 = sub_1BE052224();
  v37, v39, v40, v41, v42, v43, v44, v45;
  [v36 setOverlayParameters_];

  v46 = [v131 secureSubmissionValuesForDestination_];
  if (v46)
  {
    v54 = v46;
    v35, v47, v48, v49, v50, v51, v52, v53;
    v55 = sub_1BE052244();

    v56 = sub_1BD1A8284(v55);
    v55, v57, v58, v59, v60, v61, v62, v63;
    v64 = sub_1BE052224();
    v56, v65, v66, v67, v68, v69, v70, v71;
    [v36 setSecureOverlayParameters_];

LABEL_10:
    v72 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
    if (v72)
    {
      v73 = v72;
      v74 = [v73 encryptionCertificates];
      [v22 setCertificates_];
    }

    v75 = [objc_opt_self() sharedService];
    if (v75)
    {
      v83 = v75;
      v84 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v85 = swift_allocObject();
      v85[2] = v84;
      v85[3] = sub_1BD988D64;
      v85[4] = v8;
      aBlock[4] = sub_1BD988D60;
      v133 = v85;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_74_1;
      v86 = _Block_copy(aBlock);
      v87 = v133;
      v88 = v22;
      sub_1BE048964();
      v87, v89, v90, v91, v92, v93, v94, v95;
      [v83 peerPaymentUpdateUserInfoForRequest:v88 withCompletion:v86];
      _Block_release(v86);
      v8, v96, v97, v98, v99, v100, v101, v102;

LABEL_15:
      return;
    }

    a4, v76, v77, v78, v79, v80, v81, v82;
    a2, v110, v111, v112, v113, v114, v115, v116;
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  a4, v47, v48, v49, v50, v51, v52, v53;
  a2, v124, v125, v126, v127, v128, v129, v130;
  __break(1u);
}

void sub_1BD987FC0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account);
  v12 = a2;
  sub_1BD0D44B8(a3, a4);
  v13 = a5;
  if ([v11 isEligibleForUserInfoUpdates])
  {
    v14 = [v11 identifier];
    if (v14)
    {
      v15 = v14;
      sub_1BE052434();
      v17 = v16;

      v18 = sub_1BE052404();
      v17, v19, v20, v21, v22, v23, v24, v25;
    }

    else
    {
      v18 = 0;
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E69B9010]) initWithAccountIdentifier_];

    if (v26)
    {
      v27 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
      swift_beginAccess();
      v28 = *(a1 + v27);
      if (v28)
      {
        v119 = v12;
        v120 = v13;
        v29 = *MEMORY[0x1E69BC370];
        v118 = v28;
        v30 = [v118 submissionValuesForDestination_];
        if (!v30)
        {
LABEL_18:

          sub_1BD0D4744(a3, a4, v106, v107, v108, v109, v110, v111);
          __break(1u);
          goto LABEL_19;
        }

        v31 = v30;
        v32 = sub_1BE052244();

        v33 = v26;
        v34 = sub_1BD1A8284(v32);
        v35 = sub_1BE052224();
        v34, v36, v37, v38, v39, v40, v41, v42;
        [v33 setOverlayParameters_];

        v43 = [v118 secureSubmissionValuesForDestination_];
        if (!v43)
        {
LABEL_19:

          sub_1BD0D4744(a3, a4, v112, v113, v114, v115, v116, v117);
          __break(1u);
          return;
        }

        v51 = v43;
        v32, v44, v45, v46, v47, v48, v49, v50;
        v52 = sub_1BE052244();

        v53 = sub_1BD1A8284(v52);
        v52, v54, v55, v56, v57, v58, v59, v60;
        v61 = sub_1BE052224();
        v53, v62, v63, v64, v65, v66, v67, v68;
        [v33 setSecureOverlayParameters_];

        v12 = v119;
        v13 = v120;
      }

      v69 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
      if (v69)
      {
        v70 = v69;
        v71 = [v70 encryptionCertificates];
        [v26 setCertificates_];
      }

      v72 = [objc_opt_self() sharedService];
      if (v72)
      {
        v73 = v72;
        v74 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v75 = swift_allocObject();
        v75[2] = v74;
        v75[3] = sub_1BD988D24;
        v75[4] = v10;
        aBlock[4] = sub_1BD988D60;
        v123 = v75;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD14E1D8;
        aBlock[3] = &block_descriptor_49_6;
        v76 = _Block_copy(aBlock);
        v77 = v123;
        v78 = v26;
        sub_1BE048964();
        v77, v79, v80, v81, v82, v83, v84, v85;
        [v73 peerPaymentUpdateUserInfoForRequest:v78 withCompletion:v76];
        _Block_release(v76);
        v10, v86, v87, v88, v89, v90, v91, v92;

        return;
      }

      sub_1BD0D4744(a3, a4, v100, v101, v102, v103, v104, v105);
      __break(1u);
      goto LABEL_18;
    }
  }

  v121 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
  sub_1BD985744(v121, v12, a3, a4, v13);
  v10, v93, v94, v95, v96, v97, v98, v99;
}

void sub_1BD9884D8(uint64_t a1, char *a2, void (*a3)(void), void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = sub_1BD1B6F54;
  v9[4] = v8;
  v10 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_account);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  if (![v10 isEligibleForUserInfoUpdates])
  {
    goto LABEL_14;
  }

  v11 = [v10 identifier];
  if (v11)
  {
    v12 = v11;
    sub_1BE052434();
    v14 = v13;

    v15 = sub_1BE052404();
    v14, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v15 = 0;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69B9010]) initWithAccountIdentifier_];

  if (!v23)
  {
LABEL_14:
    v118 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_retain_n();

    a3(0);
    a2, v120, v121, v122, v123, v124, v125, v126;
    v9, v127, v128, v129, v130, v131, v132, v133;

    goto LABEL_15;
  }

  v24 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
  swift_beginAccess();
  v25 = *(a1 + v24);
  if (!v25)
  {
    goto LABEL_10;
  }

  v177 = v23;
  v26 = *MEMORY[0x1E69BC370];
  v176 = v25;
  v27 = [v176 submissionValuesForDestination_];
  if (!v27)
  {
LABEL_17:
    a4, v28, v29, v30, v31, v32, v33, v34;
    v8, v148, v149, v150, v151, v152, v153, v154;
    a2, v155, v156, v157, v158, v159, v160, v161;
    __break(1u);
    goto LABEL_18;
  }

  v35 = v27;
  v36 = sub_1BE052244();

  v37 = v177;
  v38 = sub_1BD1A8284(v36);
  v39 = sub_1BE052224();
  v38, v40, v41, v42, v43, v44, v45, v46;
  [v37 setOverlayParameters_];

  v47 = [v176 secureSubmissionValuesForDestination_];
  if (v47)
  {
    v55 = v47;
    v36, v48, v49, v50, v51, v52, v53, v54;
    v56 = sub_1BE052244();

    v57 = sub_1BD1A8284(v56);
    v56, v58, v59, v60, v61, v62, v63, v64;
    v65 = sub_1BE052224();
    v57, v66, v67, v68, v69, v70, v71, v72;
    [v37 setSecureOverlayParameters_];

    v23 = v177;
LABEL_10:
    v73 = *(a1 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_response);
    if (v73)
    {
      v74 = v73;
      v75 = [v74 encryptionCertificates];
      [v23 setCertificates_];
    }

    v76 = [objc_opt_self() sharedService];
    if (v76)
    {
      v84 = v76;
      v85 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v86 = swift_allocObject();
      v86[2] = v85;
      v86[3] = sub_1BD988CCC;
      v86[4] = v9;
      aBlock[4] = sub_1BD988CD8;
      v179 = v86;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_224;
      v87 = _Block_copy(aBlock);
      v88 = v179;
      v89 = v23;
      sub_1BE048964();
      v88, v90, v91, v92, v93, v94, v95, v96;
      [v84 peerPaymentUpdateUserInfoForRequest:v89 withCompletion:v87];
      _Block_release(v87);
      a2, v97, v98, v99, v100, v101, v102, v103;
      v9, v104, v105, v106, v107, v108, v109, v110;

LABEL_15:
      v8, v111, v112, v113, v114, v115, v116, v117;
      return;
    }

    a4, v77, v78, v79, v80, v81, v82, v83;
    v8, v134, v135, v136, v137, v138, v139, v140;
    a2, v141, v142, v143, v144, v145, v146, v147;
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  a4, v48, v49, v50, v51, v52, v53, v54;
  v8, v162, v163, v164, v165, v166, v167, v168;
  a2, v169, v170, v171, v172, v173, v174, v175;
  __break(1u);
}

void sub_1BD988A2C(void *a1)
{
  v2 = [a1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v3 = sub_1BE052744();

  if (v3 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_10:

    v3, v4, v5, v6, v7, v8, v9, v10;
    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1BFB40900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(v3 + 32);
  }

  v19 = v11;
  v3, v12, v13, v14, v15, v16, v17, v18;
  v20 = [v19 value];

  if (v20)
  {
    v21 = OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_fieldsModel;
    swift_beginAccess();
    v22 = *(v1 + v21);
    [v22 prefillDefaultValuesWithPostalAddress_];
  }
}

uint64_t sub_1BD988BD8(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  v4[2] = a2;
  swift_retain_n();
  _Block_copy(a2);
  sub_1BD986EF4();
  if (v5)
  {
    v6 = v5;
    (a2)[2](a2, v5);
  }

  else
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD9884D8(a1, v7, sub_1BD139BD4, v4);
    v7, v8, v9, v10, v11, v12, v13, v14;
    v4, v15, v16, v17, v18, v19, v20, v21;
  }
}

id sub_1BD988E5C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PKAMSUIWebViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD988EB4()
{
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_mode))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1BE0B69E0;
    v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_context);
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_provisionedPasses);
    v4 = objc_allocWithZone(type metadata accessor for ProvisioningExternalDeviceFlowItem());
    swift_retain_n();
    v5 = v3;
    *(v1 + 32) = sub_1BD59FB2C(v2, v5);
    *(v1 + 40) = &off_1F3BAF118;
    v91 = v1;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    type metadata accessor for ProvisioningMoreInfoFlowSection();
    v7 = swift_allocObject();
    v7[5] = 0;
    swift_unknownObjectWeakInit();
    v7[6] = 0xD000000000000013;
    v7[7] = 0x80000001BE13B160;
    v7[8] = &type metadata for ProvisioningScreenDebugConfiguration;
    v7[2] = v2;
    v7[3] = v5;
    *(inited + 32) = v7;
    *(inited + 40) = &off_1F3B97B68;
    v8 = objc_allocWithZone(type metadata accessor for ProvisioningFinancialLabPermissionFlowItem());
    v9 = sub_1BD4F7484(v2, v5);
    v2, v10, v11, v12, v13, v14, v15, v16;

    *(inited + 48) = v9;
    *(inited + 56) = &off_1F3BAABC0;
    v17 = inited;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0BA770;
    v19 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_context);
    v20 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_provisionedPasses);
    v21 = objc_allocWithZone(type metadata accessor for ProvisioningExternalDeviceFlowItem());
    swift_retain_n();
    v22 = v20;
    *(v18 + 32) = sub_1BD59FB2C(v19, v22);
    *(v18 + 40) = &off_1F3BAF118;
    v23 = objc_allocWithZone(type metadata accessor for ProvisioningExpressPassSelectionFlowItem());
    sub_1BE048964();
    v24 = v22;
    v25 = sub_1BD91C564(v19, v24);
    v19, v26, v27, v28, v29, v30, v31, v32;
    *(v18 + 48) = v25;
    *(v18 + 56) = &off_1F3BC5FC0;
    type metadata accessor for ProvisioningMoreInfoFlowSection();
    v33 = swift_allocObject();
    v33[5] = 0;
    swift_unknownObjectWeakInit();
    v33[6] = 0xD000000000000013;
    v33[7] = 0x80000001BE13B160;
    v33[8] = &type metadata for ProvisioningScreenDebugConfiguration;
    v33[2] = v19;
    v33[3] = v24;
    *(v18 + 64) = v33;
    *(v18 + 72) = &off_1F3B97B68;
    swift_retain_n();
    v34 = v24;
    sub_1BD29011C(v19, v34);
    *(v18 + 80) = v35;
    *(v18 + 88) = &off_1F3B9AD58;
    v36 = objc_allocWithZone(type metadata accessor for ProvisioningPrecursorEducationFlowItem());
    sub_1BE048964();
    v37 = v34;
    v38 = sub_1BD7D66C0(v19, v37);
    v19, v39, v40, v41, v42, v43, v44, v45;

    *(v18 + 96) = v38;
    *(v18 + 104) = &off_1F3BBCD80;
    v46 = type metadata accessor for ProvisioningOptionalExpressSetupFlowItem();
    v47 = objc_allocWithZone(v46);
    *&v47[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v48 = &v47[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_identifier];
    *v48 = 0xD00000000000001CLL;
    *(v48 + 1) = 0x80000001BE13B140;
    *&v47[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
    *&v47[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_context] = v19;
    *&v47[OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_provisionedPasses] = v37;
    v90.receiver = v47;
    v90.super_class = v46;
    sub_1BE048964();
    v49 = v37;
    *(v18 + 112) = objc_msgSendSuper2(&v90, sel_init);
    *(v18 + 120) = &off_1F3BBF9F0;
    v50 = type metadata accessor for ProvisioningWatchExtensionInstallFlowItem();
    v51 = objc_allocWithZone(v50);
    *&v51[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v52 = &v51[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_identifier];
    *v52 = 0xD00000000000001DLL;
    *(v52 + 1) = 0x80000001BE13B120;
    *&v51[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
    *&v51[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_context] = v19;
    *&v51[OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_provisionedPasses] = v49;
    v89.receiver = v51;
    v89.super_class = v50;
    sub_1BE048964();
    v53 = v49;
    *(v18 + 128) = objc_msgSendSuper2(&v89, sel_init);
    *(v18 + 136) = &off_1F3BBB3F8;
    v54 = objc_allocWithZone(type metadata accessor for ProvisioningMakeDefaultFlowItem());
    sub_1BE048964();
    v55 = v53;
    *(v18 + 144) = sub_1BD185AC0(v19, v55);
    *(v18 + 152) = &off_1F3B94768;
    v56 = type metadata accessor for ProvisioningAMPEnrollmentFlowItem();
    v57 = objc_allocWithZone(v56);
    *&v57[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v58 = &v57[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_identifier];
    *v58 = 0xD000000000000015;
    *(v58 + 1) = 0x80000001BE13B100;
    *&v57[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
    *&v57[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_context] = v19;
    *&v57[OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_provisionedPasses] = v55;
    v88.receiver = v57;
    v88.super_class = v56;
    sub_1BE048964();
    v59 = v55;
    *(v18 + 160) = objc_msgSendSuper2(&v88, sel_init);
    *(v18 + 168) = &off_1F3BC6DE0;
    v60 = type metadata accessor for ProvisioningEducationFlowItem();
    v61 = objc_allocWithZone(v60);
    *&v61[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v62 = &v61[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_identifier];
    *v62 = 0xD000000000000011;
    *(v62 + 1) = 0x80000001BE13B0E0;
    *&v61[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
    *&v61[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_context] = v19;
    *&v61[OBJC_IVAR____TtC9PassKitUI29ProvisioningEducationFlowItem_provisionedPasses] = v59;
    v87.receiver = v61;
    v87.super_class = v60;
    sub_1BE048964();
    v63 = v59;
    *(v18 + 176) = objc_msgSendSuper2(&v87, sel_init);
    *(v18 + 184) = &off_1F3B9A600;
    v64 = objc_allocWithZone(type metadata accessor for ProvisioningCarEducationFlowItem());
    *(v18 + 192) = sub_1BD2993F8(v19, v63);
    *(v18 + 200) = &off_1F3B9B0B0;
    v65 = objc_allocWithZone(type metadata accessor for ProvisioningAutoReloadSetUpFlowItem());
    *(v18 + 208) = sub_1BD7A5D58(v19, v63);
    *(v18 + 216) = &off_1F3BBB650;
    v91 = v18;
    if (PKBankConnectPostProvisioningCTAEnabled())
    {
      v66 = swift_initStackObject();
      *(v66 + 16) = xmmword_1BE0B69E0;
      type metadata accessor for BankConnectAuthorizationFlowSection();
      v67 = swift_allocObject();
      v67[4] = 0;
      v67[6] = 0;
      swift_unknownObjectWeakInit();
      v67[7] = 0xD000000000000016;
      v67[8] = 0x80000001BE143990;
      v67[2] = v19;
      v67[3] = v63;
      *(v66 + 32) = v67;
      *(v66 + 40) = &off_1F3B94C88;
      sub_1BE048964();
      v68 = v63;
      sub_1BDA7A178(v66);
    }

    v69 = swift_initStackObject();
    *(v69 + 16) = xmmword_1BE0B98D0;
    type metadata accessor for ProvisioningAddToWatchFlowItem();
    v70 = swift_allocObject();
    v70[4] = &type metadata for HasRemainingCredentialsToProvision;
    v70[6] = 0;
    swift_unknownObjectWeakInit();
    v70[7] = 0xD000000000000012;
    v70[8] = 0x80000001BE13B0C0;
    v70[9] = &type metadata for ProvisioningScreenDebugConfiguration;
    v70[2] = v19;
    v70[3] = v63;
    *(v69 + 32) = v70;
    *(v69 + 40) = &off_1F3B9DF80;
    swift_retain_n();
    v71 = v63;
    *(v69 + 48) = sub_1BD60AAA8(v19, v71);
    *(v69 + 56) = &off_1F3BB1C10;
    v72 = sub_1BE04BC84();
    v73 = [v72 devicePrimaryPaymentApplication];
    if (v73)
    {
      v74 = v73;
      v75 = [v73 subcredentials];

      if (v75)
      {
        sub_1BD989934();
        sub_1BD60AC0C();
        v76 = sub_1BE052A34();

        v75 = sub_1BD960F00(v76);
        v76, v77, v78, v79, v80, v81, v82, v83;
      }
    }

    else
    {
      v75 = 0;
    }

    v84 = objc_allocWithZone(type metadata accessor for ProvisioningHeadUnitPairingFlowItem());
    v85 = sub_1BD2DBAAC(v19, v75, v72);

    *(v69 + 64) = v85;
    *(v69 + 72) = &off_1F3B9C550;
    v17 = v69;
  }

  sub_1BDA7A178(v17);
  return v91;
}

unint64_t sub_1BD989828()
{
  result = qword_1EBD5A218;
  if (!qword_1EBD5A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A218);
  }

  return result;
}

uint64_t sub_1BD989880()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9898BC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD989934()
{
  result = qword_1EBD398B8;
  if (!qword_1EBD398B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD398B8);
  }

  return result;
}

id sub_1BD989980(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_identifier];
  *v7 = 0xD000000000000014;
  v7[1] = 0x80000001BE1439B0;
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_provisionedPasses] = a2;
  sub_1BE048964();
  v8 = a2;
  v9 = sub_1BE04BC84();
  LOBYTE(a1) = [v9 isAppleCardPass];

  v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningPassIngestionSection_mode] = a1;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1BD989A68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = *(type metadata accessor for BusinessEmailItem(0) + 24);
  v8 = sub_1BE04AA64();
  v9 = *(*(v8 - 8) + 56);
  v9(a2 + v7, 1, 1, v8);
  v10 = [a1 companyId];
  v11 = sub_1BE052434();
  v13 = v12;

  *a2 = v11;
  a2[1] = v13;
  v14 = [a1 businessId];
  v15 = sub_1BE052434();
  v17 = v16;

  a2[2] = v15;
  a2[3] = v17;
  v18 = [a1 logoURL];
  if (v18)
  {
    v19 = v18;
    sub_1BE04A9F4();

    v20 = 0;
  }

  else
  {

    v20 = 1;
  }

  v9(v6, v20, 1, v8);
  return sub_1BD4E30B0(v6, a2 + v7);
}

uint64_t sub_1BD989C10(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD989CB0, 0, 0);
}

uint64_t sub_1BD989CB0()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD989DD8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A230, &qword_1BE108E10);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD98CA28;
  v0[13] = &block_descriptor_225;
  v0[14] = v3;
  [v1 fetchBusinessLogoForBusinessIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD989DD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1BD98A004;
  }

  else
  {
    v2 = sub_1BD989EE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD989EE8()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  v6 = [v3 logoURL];
  sub_1BE04A9F4();

  v5(v1, 0, 1, v4);
  sub_1BD4E30B0(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD98A004(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1BD98A078(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1BD98A0A0, 0, 0);
}

uint64_t sub_1BD98A0A0()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD98A1C8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A238, &qword_1BE108E18);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD98CA28;
  v0[13] = &block_descriptor_27_2;
  v0[14] = v3;
  [v1 fetchBusinessMetadataForEmailIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD98A1C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1BD98A33C;
  }

  else
  {
    v2 = sub_1BD98A2D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD98A2D8()
{
  sub_1BD989A68(*(v0 + 144), *(v0 + 152));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD98A33C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1BD98A3A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD989C10(a1, a2);
}

uint64_t sub_1BD98A454(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v2[4] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD98A54C, v1, 0);
}

uint64_t sub_1BD98A54C()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 84));
  v3 = *v2;
  v4 = v2[1];
  v5 = sub_1BE052434();
  v13 = v6;
  if (v3 == v5 && v4 == v6)
  {
    v6, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v15 = sub_1BE053B84();
    v13, v16, v17, v18, v19, v20, v21, v22;
    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v23 = v0[2];
  if (v23[11])
  {
    v0[8] = sub_1BE052404();
    v0[9] = sub_1BE0528A4();
    v0[10] = sub_1BE052894();
    v25 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD98A744, v25, v24);
  }

  else
  {
    v26 = v23[7];
    if (!v26)
    {
LABEL_16:

      v30 = v0[1];

      return v30(0);
    }

    v27 = v23[6];
    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_1BD98AC18;
    v29 = v0[4];

    return sub_1BD98B014(v29, v27, v26);
  }
}

uint64_t sub_1BD98A744(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;

  return MEMORY[0x1EEE6DFA0](sub_1BD98A7B0, v9, 0);
}

uint64_t sub_1BD98A7B0(uint64_t a1)
{
  *(v1 + 88) = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD98A83C, v3, v2);
}

uint64_t sub_1BD98A83C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;

  return MEMORY[0x1EEE6DFA0](sub_1BD98A8A8, v9, 0);
}

uint64_t sub_1BD98A8A8()
{
  *(v0 + 96) = objc_opt_self();
  *(v0 + 104) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD98A944, v2, v1);
}

uint64_t sub_1BD98A944(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  v10 = *(v8 + 24);
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 112) = [v9 mainScreen];

  return MEMORY[0x1EEE6DFA0](sub_1BD98A9CC, v10, 0);
}

uint64_t sub_1BD98A9CC(uint64_t a1)
{
  *(v1 + 120) = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD98AA58, v3, v2);
}

uint64_t sub_1BD98AA58(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  v10 = *(v8 + 24);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  [v9 scale];
  *(v8 + 128) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BD98AADC, v10, 0);
}

uint64_t sub_1BD98AADC()
{
  v1 = v0[8];
  v2 = PKIconForApplicationIdentifier();

  if (v2)
  {
LABEL_2:

    v3 = v0[1];

    return v3(v2);
  }

  v5 = v0[2];
  v6 = *(v5 + 56);
  if (!v6)
  {
    v2 = 0;
    goto LABEL_2;
  }

  v7 = *(v5 + 48);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1BD98AC18;
  v9 = v0[4];

  return sub_1BD98B014(v9, v7, v6);
}

uint64_t sub_1BD98AC18()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1BD98AF78;
  }

  else
  {
    v4 = sub_1BD98AD50;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98AD50()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BD226BBC(v3);
    v4 = 0;
LABEL_3:

    v5 = v0[1];

    return v5(v4);
  }

  (*(v2 + 32))(v0[7], v3, v1);
  if (sub_1BE04A9A4())
  {
    v7 = v0[18];
    sub_1BE052984();
    if (!v7)
    {
      v8 = sub_1BE04AA84();
      v11 = v0[6];
      v10 = v0[7];
      v12 = v0[5];
      v13 = v8;
      v15 = v14;
      v16 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v17 = sub_1BE04AAB4();
      v4 = [v16 initWithData_];

      sub_1BD1245AC(v13, v15, v18, v19, v20, v21, v22, v23);
      (*(v11 + 8))(v10, v12);
      goto LABEL_3;
    }
  }

  else
  {
    sub_1BD98C82C();
    swift_allocError();
    swift_willThrow();
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD98AF78()
{
  (*(v0[6] + 56))(v0[4], 1, 1, v0[5]);
  sub_1BD226BBC(v0[4]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_1BD98B014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v4[21] = swift_task_alloc();
  v5 = sub_1BE04AA64();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD98B11C, v3, 0);
}

uint64_t sub_1BD98B11C()
{
  v1 = v0[20];
  swift_beginAccess();
  v2 = *(v1 + 152);
  if (v2[2])
  {
    v4 = v0[18];
    v3 = v0[19];
    sub_1BE048C84();
    v5 = sub_1BD148F70(v4, v3);
    if (v6)
    {
      v14 = v0[24];
      v13 = v0[25];
      v15 = v0[22];
      v16 = v0[23];
      v17 = v0[17];
      (*(v16 + 16))(v14, v2[7] + *(v16 + 72) * v5, v15);
      v2, v18, v19, v20, v21, v22, v23, v24;
      v25 = *(v16 + 32);
      v25(v13, v14, v15);
      v25(v17, v13, v15);
      (*(v16 + 56))(v17, 0, 1, v15);

      v26 = v0[1];

      return v26();
    }

    v2, v6, v7, v8, v9, v10, v11, v12;
  }

  v28 = v0[20];
  swift_beginAccess();
  v29 = *(v28 + 160);
  if (!v29[2])
  {
    goto LABEL_11;
  }

  v31 = v0[18];
  v30 = v0[19];
  sub_1BE048C84();
  v32 = sub_1BD148F70(v31, v30);
  if ((v33 & 1) == 0)
  {
    v29, v33, v34, v35, v36, v37, v38, v39;
LABEL_11:
    v56 = v0[20];
    v55 = v0[21];
    v58 = v0[18];
    v57 = v0[19];
    v59 = sub_1BE0528D4();
    (*(*(v59 - 8) + 56))(v55, 1, 1, v59);
    v60 = sub_1BD98C710();
    v61 = swift_allocObject();
    v61[2] = v56;
    v61[3] = v60;
    v61[4] = v56;
    v61[5] = v58;
    v61[6] = v57;
    swift_retain_n();
    sub_1BE048C84();
    v62 = sub_1BDA54628(0, 0, v55, &unk_1BE108DF8, v61);
    v0[29] = v62;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BE048964();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v28 + 160);
    *(v28 + 160) = 0x8000000000000000;
    sub_1BD1DBB18(v62, v58, v57, isUniquelyReferenced_nonNull_native);
    v57, v64, v65, v66, v67, v68, v69, v70;
    *(v28 + 160) = v73;
    swift_endAccess();
    v71 = swift_task_alloc();
    v0[30] = v71;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    *v71 = v0;
    v71[1] = sub_1BD98B70C;
    v51 = v0[17];
    v52 = MEMORY[0x1E69E7288];
    v53 = v62;
    v54 = v72;
    goto LABEL_12;
  }

  v40 = *(v29[7] + 8 * v32);
  v0[26] = v40;
  sub_1BE048964();
  v29, v41, v42, v43, v44, v45, v46, v47;
  v48 = swift_task_alloc();
  v0[27] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  *v48 = v0;
  v48[1] = sub_1BD98B560;
  v51 = v0[17];
  v52 = MEMORY[0x1E69E7288];
  v53 = v40;
  v54 = v49;
LABEL_12:

  return MEMORY[0x1EEE6DA10](v51, v53, v54, v50, v52);
}

uint64_t sub_1BD98B560()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_1BD98B904;
  }

  else
  {
    v4 = sub_1BD98B68C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98B68C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD98B70C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_1BD98B990;
  }

  else
  {
    v4 = sub_1BD98B838;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98B838()
{
  v1 = v0[29];
  v2 = v0[19];
  v3 = v0[18];
  swift_beginAccess();
  sub_1BE048C84();
  sub_1BD6B0AE4(0, v3, v2);
  swift_endAccess();
  v1, v4, v5, v6, v7, v8, v9, v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD98B904(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD98B990()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  swift_beginAccess();
  sub_1BE048C84();
  sub_1BD6B0AE4(0, v2, v1);
  swift_endAccess();
  *(v0 + 232), v3, v4, v5, v6, v7, v8, v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BD98BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v6[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[10] = v10;
  *v10 = v6;
  v10[1] = sub_1BD98BB54;

  return sub_1BD98BD58(a1, a5, a6);
}

uint64_t sub_1BD98BB54()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1BD98BCA0, v6, 0);
  }
}

uint64_t sub_1BD98BCA0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1BD38F438(v0[5], v1);
  swift_beginAccess();
  sub_1BE048C84();
  sub_1BD6B0BDC(v1, v3, v2);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD98BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for BusinessEmailLogo(0);
  v4[6] = swift_task_alloc();
  type metadata accessor for BusinessEmailItem(0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD98BE18, v3, 0);
}

uint64_t sub_1BD98BE18(uint64_t a1)
{
  sub_1BE052984();
  v2 = v1[5];
  v3 = objc_allocWithZone(MEMORY[0x1E698F690]);
  v4 = sub_1BE052404();
  v5 = sub_1BE052404();
  v6 = sub_1BE052404();
  v7 = [v3 initWithEmail:v4 fullDomain:v5 topLevelDomain:v6];
  v1[8] = v7;

  v8 = v2[17];
  v9 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v8);
  v13 = (*(v9 + 8) + **(v9 + 8));
  v10 = swift_task_alloc();
  v1[9] = v10;
  *v10 = v1;
  v10[1] = sub_1BD98C030;
  v11 = v1[7];

  return v13(v11, v7, v8, v9);
}

uint64_t sub_1BD98C030()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1BD98C510;
  }

  else
  {
    v4 = sub_1BD98C15C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98C15C(uint64_t a1)
{
  v2 = v1[10];
  sub_1BE052984();
  if (v2)
  {
    v3 = v1[8];
    sub_1BD98C6B4(v1[7]);

    v4 = v1[1];

    return v4();
  }

  else
  {
    v6 = v1[5];
    v7 = objc_allocWithZone(MEMORY[0x1E698F698]);
    v8 = sub_1BE052404();
    v9 = [v7 initWithBusinessId_];
    v1[11] = v9;

    v10 = v6[17];
    v11 = v6[18];
    __swift_project_boxed_opaque_existential_1(v6 + 14, v10);
    v14 = (*(v11 + 16) + **(v11 + 16));
    v12 = swift_task_alloc();
    v1[12] = v12;
    *v12 = v1;
    v12[1] = sub_1BD98C344;
    v13 = v1[6];

    return v14(v13, v9, v10, v11);
  }
}

uint64_t sub_1BD98C344()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1BD98C584;
  }

  else
  {
    v4 = sub_1BD98C470;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98C470()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  sub_1BD98C6B4(v1);
  sub_1BD226B4C(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BD98C510()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD98C584()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_1BD98C6B4(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD98C608(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  __swift_destroy_boxed_opaque_existential_0(v8 + 14, a2, a3, a4, a5, a6, a7, a8);
  v8[19], v9, v10, v11, v12, v13, v14, v15;
  v8[20], v16, v17, v18, v19, v20, v21, v22;
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v8);
}

uint64_t sub_1BD98C6B4(uint64_t a1)
{
  v2 = type metadata accessor for BusinessEmailItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD98C710()
{
  result = qword_1EBD5A220;
  if (!qword_1EBD5A220)
  {
    type metadata accessor for MerchantTokenIconProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A220);
  }

  return result;
}

uint64_t sub_1BD98C764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD98BA5C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1BD98C82C()
{
  result = qword_1EBD5A228;
  if (!qword_1EBD5A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A228);
  }

  return result;
}

void sub_1BD98C8B8(uint64_t a1)
{
  sub_1BD3F7300(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD98C95C(uint64_t a1)
{
  sub_1BD3F7300(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BD98C9CC()
{
  result = qword_1EBD5A260;
  if (!qword_1EBD5A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A260);
  }

  return result;
}

double sub_1BD98CA8C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
  swift_beginAccess();
  *a2 = *(v3 + v12);
  sub_1BE048C84();
  return result;
}

double sub_1BD98CB80()
{
  KeyPath = swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  sub_1BE048C84();
  return result;
}

uint64_t type metadata accessor for PKDashboardFinanceKitProvider(uint64_t a1)
{
  result = qword_1EBD5A2A0;
  if (!qword_1EBD5A2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD98CC8C(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_1BE048C84();
  v6 = sub_1BD400C50(v5, a1);
  v4, v7, v8, v9, v10, v11, v12, v13;
  if (v6)
  {
    v21 = *(v1 + v3);
    *(v1 + v3) = a1;
    v21, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    a1, v30, v31, v32, v33, v34, v35, v36;
  }
}

void sub_1BD98CDDC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  sub_1BE048C84();
  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t (*sub_1BD98CE68(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD98CA2C(v4);
  return sub_1BD98CFA0;
}

uint64_t sub_1BD98CFAC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  swift_beginAccess();
  return sub_1BD0DE19C(v13 + v11, a1, &qword_1EBD498D0, &unk_1BE0E8DD0);
}

uint64_t sub_1BD98D084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v12, a2, &qword_1EBD498D0, &unk_1BE0E8DD0);
}

uint64_t sub_1BD98D15C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BD0DE19C(a1, &v6 - v3, &qword_1EBD498D0, &unk_1BE0E8DD0);
  return sub_1BD98D208(v4);
}

uint64_t sub_1BD98D208(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD498D0, &unk_1BE0E8DD0);
  v7 = sub_1BD99333C(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD498D0, &unk_1BE0E8DD0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD498D0, &unk_1BE0E8DD0);
    swift_beginAccess();
    sub_1BD99365C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498D0, &unk_1BE0E8DD0);
}

uint64_t sub_1BD98D410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1BD0DE19C(a2, &v9 - v5, &qword_1EBD498D0, &unk_1BE0E8DD0);
  v7 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  swift_beginAccess();
  sub_1BD99365C(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_1BD98D6C0()
{
  KeyPath = swift_getKeyPath();
  v11 = v0;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  return *(v11 + v9);
}

void sub_1BD98D7D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
  }
}

void sub_1BD98D8F0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  *a2 = *(v3 + v12);
}

uint64_t (*sub_1BD98D9F4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD98D588(v4);
  return sub_1BD98DB2C;
}

uint64_t sub_1BD98DD0C()
{
  KeyPath = swift_getKeyPath();
  v11 = v0;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  return *(v11 + v9);
}

void sub_1BD98DE1C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
  }
}

void sub_1BD98DF48(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  *a2 = *(v3 + v12);
}

uint64_t (*sub_1BD98E04C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD98DBD4(v4);
  return sub_1BD98E184;
}

id PKDashboardFinanceKitProvider.__allocating_init(pass:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions] = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  v5 = sub_1BE049184();
  v6 = *(*(v5 - 8) + 56);
  v6(&v3[v4], 1, 1, v5);
  v6(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount] = 0;
  v3[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded] = 0;
  sub_1BE04B5C4();
  *&v3[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider_pass] = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PKDashboardFinanceKitProvider.init(pass:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions] = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  v4 = sub_1BE049184();
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  v5(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount] = 0;
  v1[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded] = 0;
  sub_1BE04B5C4();
  *&v1[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider_pass] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PKDashboardFinanceKitProvider(0);
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1BD98E4B4(int64_t a1)
{
  v55 = sub_1BE049A94();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v52 - v5;
  v7 = sub_1BE049184();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v57 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = v52 - v11;
  KeyPath = swift_getKeyPath();
  v61 = v1;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  if (*(v1 + v20) > a1)
  {
    v21 = swift_getKeyPath();
    v60 = v1;
    sub_1BE04B594();
    v21, v22, v23, v24, v25, v26, v27, v28;
    v29 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
    swift_beginAccess();
    sub_1BD0DE19C(v1 + v29, v6, &qword_1EBD498D0, &unk_1BE0E8DD0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1BD0DE53C(v6, &qword_1EBD498D0, &unk_1BE0E8DD0);
      return;
    }

    v30 = v56;
    (*(v8 + 32))(v56, v6, v7);
    v31 = *(v8 + 16);
    v31(v57, v30, v7);
    v32 = swift_getKeyPath();
    v59 = v1;
    sub_1BE04B594();
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
    swift_beginAccess();
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v41 = *(v1 + v40);
      if (*(v41 + 16) > a1)
      {
        v42 = v53;
        v43 = v41 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * a1;
        v44 = *(v53 + 16);
        v52[1] = v8 + 16;
        v45 = v54;
        v46 = v55;
        v44(v54, v43, v55);
        v47 = type metadata accessor for PKDashboardFinanceKitTransactionItem(0);
        v48 = objc_allocWithZone(v47);
        v49 = v31;
        v50 = v57;
        v49(&v48[OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_institution], v57, v7);
        v44(&v48[OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_transaction], v45, v46);
        v58.receiver = v48;
        v58.super_class = v47;
        objc_msgSendSuper2(&v58, sel_init);
        (*(v42 + 8))(v45, v46);
        v51 = *(v8 + 8);
        v51(v50, v7);
        v51(v56, v7);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD98E9BC()
{
  v1[26] = v0;
  v2 = sub_1BE049184();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = sub_1BE0495A4();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[36] = v4;
  *v4 = v1;
  v4[1] = sub_1BD98EB54;

  return sub_1BD98FCCC();
}

uint64_t sub_1BD98EB54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_1BD98F5C4;
  }

  else
  {
    v4 = sub_1BD98EC68;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BD98EC68(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = v8[37];
  if (v9[2])
  {
    (*(v8[31] + 16))(v8[32], v9 + ((*(v8[31] + 80) + 32) & ~*(v8[31] + 80)), v8[30], a4, a5, a6, a7, a8);
    v10 = swift_task_alloc();
    v8[39] = v10;
    *v10 = v8;
    v10[1] = sub_1BD98EEA4;
    v11 = v8[35];
    v12 = v8[32];

    return sub_1BD990B84(v11, v12);
  }

  else
  {
    v14 = v8[26];
    v9, a2, a3, a4, a5, a6, a7, a8;
    v15 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
    swift_beginAccess();
    if (*(v14 + v15) == 1)
    {
      *(v14 + v15) = 1;
    }

    else
    {
      v16 = v8[26];
      KeyPath = swift_getKeyPath();
      v18 = swift_task_alloc();
      *(v18 + 16) = v16;
      *(v18 + 24) = 1;
      v8[25] = v16;
      sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
      sub_1BE04B584();
      KeyPath, v19, v20, v21, v22, v23, v24, v25;
    }

    v26 = v8[1];

    return v26();
  }
}

uint64_t sub_1BD98EEA4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    *(v2 + 296), v3, v4, v5, v6, v7, v8, v9;
    v10 = sub_1BD98F750;
  }

  else
  {
    (*(*(v2 + 248) + 8))(*(v2 + 256), *(v2 + 240));
    v10 = sub_1BD98EFD8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BD98EFD8()
{
  v1 = v0[34];
  v2 = v0[27];
  v3 = v0[28];
  sub_1BD0DE19C(v0[35], v1, &qword_1EBD498D0, &unk_1BE0E8DD0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[37];
    v5 = v0[34];
    v6 = v0[26];
    sub_1BD0DE53C(v0[35], &qword_1EBD498D0, &unk_1BE0E8DD0);
    v4, v7, v8, v9, v10, v11, v12, v13;
    sub_1BD0DE53C(v5, &qword_1EBD498D0, &unk_1BE0E8DD0);
    v14 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
    swift_beginAccess();
    if (*(v6 + v14) == 1)
    {
      *(v6 + v14) = 1;
    }

    else
    {
      v23 = v0[26];
      KeyPath = swift_getKeyPath();
      v25 = swift_task_alloc();
      *(v25 + 16) = v23;
      *(v25 + 24) = 1;
      v0[22] = v23;
      sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
      sub_1BE04B584();
      KeyPath, v26, v27, v28, v29, v30, v31, v32;
    }

    v33 = v0[1];

    return v33();
  }

  else
  {
    v15 = v0[33];
    v17 = v0[28];
    v16 = v0[29];
    v18 = v0[27];
    (*(v17 + 32))(v16, v0[34], v18);
    (*(v17 + 16))(v15, v16, v18);
    (*(v17 + 56))(v15, 0, 1, v18);
    sub_1BD98D208(v15);
    v19 = swift_task_alloc();
    v0[41] = v19;
    *v19 = v0;
    v19[1] = sub_1BD98F2CC;
    v20 = v0[37];
    v21 = v0[29];

    return sub_1BD991634(v20, v21);
  }
}

uint64_t sub_1BD98F2CC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  *(v2 + 296), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v10 = sub_1BD98F8F4;
  }

  else
  {
    v10 = sub_1BD98F400;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BD98F400()
{
  v1 = v0[35];
  v2 = v0[26];
  (*(v0[28] + 8))(v0[29], v0[27]);
  sub_1BD0DE53C(v1, &qword_1EBD498D0, &unk_1BE0E8DD0);
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    *(v2 + v3) = 1;
  }

  else
  {
    v4 = v0[26];
    KeyPath = swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = 1;
    v0[24] = v4;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BD98F5C4()
{
  v1 = v0[26];
  v2 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    v3 = v0[26];
    KeyPath = swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = 1;
    v0[20] = v3;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
    KeyPath, v6, v7, v8, v9, v10, v11, v12;
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD98F750()
{
  v1 = v0[26];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v2 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    v3 = v0[26];
    KeyPath = swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = 1;
    v0[21] = v3;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
    KeyPath, v6, v7, v8, v9, v10, v11, v12;
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD98F8F4()
{
  v1 = v0[35];
  v2 = v0[26];
  (*(v0[28] + 8))(v0[29], v0[27]);
  sub_1BD0DE53C(v1, &qword_1EBD498D0, &unk_1BE0E8DD0);
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    *(v2 + v3) = 1;
  }

  else
  {
    v4 = v0[26];
    KeyPath = swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = 1;
    v0[23] = v4;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BD98FC24(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BD36E52C;

  return sub_1BD98E9BC();
}

uint64_t sub_1BD98FCCC()
{
  v1[3] = v0;
  v2 = sub_1BE049C24();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8, &unk_1BE1091B0);
  v1[7] = swift_task_alloc();
  v3 = sub_1BE049B64();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD98FE20, 0, 0);
}

uint64_t sub_1BD98FE20()
{
  v1 = v0[7];
  v2 = [*(v0[3] + OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider_pass) primaryAccountIdentifier];
  v3 = sub_1BE052434();
  v5 = v4;

  v6 = swift_task_alloc();
  v0[11] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v0[2] = sub_1BE0495A4();
  sub_1BE04B444();
  v5, v7, v8, v9, v10, v11, v12, v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
  (*(*(v14 - 8) + 56))(v1, 0, 1, v14);
  sub_1BE049B54();
  sub_1BE0490F4();
  v0[12] = sub_1BE0490B4();
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_1BD98FFE4;
  v16 = v0[10];
  v17 = v0[6];

  return MEMORY[0x1EEDC14B8](v17, v16);
}

uint64_t sub_1BD98FFE4()
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  v2, v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v10 = sub_1BD9901FC;
  }

  else
  {
    v10 = sub_1BD990114;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BD990114()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = sub_1BE049C14();
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1BD9901FC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD9902A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v85 = a2;
  v86 = a3;
  v98 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2F0, &qword_1BE1091C0);
  v6 = *(v5 - 8);
  v94 = v5;
  v95 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v91 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2F8, &qword_1BE1091C8);
  v9 = *(v8 - 8);
  v92 = v8;
  v93 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A300, &unk_1BE1091D0);
  v12 = *(v11 - 8);
  v96 = v11;
  v97 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08, &unk_1BE109160);
  v15 = *(v14 - 8);
  v83 = v14;
  v84 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70, &unk_1BE0F4300);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v75 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A308, &qword_1BE1091E0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v75 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A310, &qword_1BE1091E8);
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v26 = &v75 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A318, &qword_1BE1091F0);
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v99 = &v75 - v27;
  v79 = *a1;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v29, v30, v31, v32, v33, v34, v35;
  v36 = *(v18 + 8);
  v77 = v18 + 8;
  v78 = v36;
  v36(v20, v17);
  v37 = swift_getKeyPath();
  v38 = MEMORY[0x1E6968D58];
  v76 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD5A320, &qword_1EBD5A308, &qword_1BE1091E0, MEMORY[0x1E6968D58]);
  sub_1BE04A724();
  v37, v39, v40, v41, v42, v43, v44, v45;
  (*(v22 + 8))(v24, v21);
  v46 = v85;
  v47 = v86;
  v100 = v85;
  v101 = v86;
  v48 = v82;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD5A328, &qword_1EBD5A310, &qword_1BE1091E8, v38);
  v75 = MEMORY[0x1E6968D20];
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08, &unk_1BE109160, MEMORY[0x1E6968D20]);
  v49 = v48;
  v50 = v80;
  v51 = v83;
  v52 = MEMORY[0x1E69E6180];
  sub_1BE04A714();
  (*(v84 + 8))(v49, v51);
  (*(v81 + 8))(v26, v50);
  sub_1BE04A7C4();
  v53 = swift_getKeyPath();
  v54 = v88;
  sub_1BE04A724();
  v53, v55, v56, v57, v58, v59, v60, v61;
  v78(v20, v17);
  v100 = v46;
  v101 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  v62 = v91;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD5A330, &qword_1EBD5A2F8, &qword_1BE1091C8, v76);
  sub_1BD0DE4F4(&qword_1EBD5A338, &qword_1EBD5A2F0, &qword_1BE1091C0, v75);
  sub_1BD993B04(&qword_1EBD41EE8, v52, MEMORY[0x1E69E7C80]);
  v63 = v90;
  v64 = v54;
  v65 = v92;
  v66 = v94;
  sub_1BE04A714();
  (*(v95 + 8))(v62, v66);
  (*(v93 + 8))(v64, v65);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A340, &unk_1BE109290);
  v68 = v98;
  v98[3] = v67;
  v68[4] = sub_1BD993740();
  __swift_allocate_boxed_opaque_existential_1(v68);
  v69 = MEMORY[0x1E6968D08];
  sub_1BD0DE4F4(&qword_1EBD5A390, &qword_1EBD5A318, &qword_1BE1091F0, MEMORY[0x1E6968D08]);
  sub_1BD0DE4F4(&qword_1EBD5A398, &qword_1EBD5A300, &unk_1BE1091D0, v69);
  v70 = v99;
  v71 = v63;
  v72 = v87;
  v73 = v96;
  sub_1BE04A794();
  (*(v97 + 8))(v71, v73);
  return (*(v89 + 8))(v70, v72);
}

uint64_t sub_1BD990B84(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1BE049D44();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0, &unk_1BE0B7DC0);
  v2[8] = swift_task_alloc();
  v4 = sub_1BE049CC4();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1BE049E54();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD990D34, 0, 0);
}

uint64_t sub_1BD990D34(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v5 = v1[8];
  sub_1BE049524();
  v6 = sub_1BE049E24();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  v9 = swift_task_alloc();
  v1[15] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = sub_1BE049184();
  v1[16] = v10;
  v1[2] = v10;
  sub_1BE04B444();
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00, &unk_1BE0B7E60);
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  sub_1BE049CB4();
  sub_1BE0490F4();
  v1[17] = sub_1BE0490B4();
  v19 = swift_task_alloc();
  v1[18] = v19;
  *v19 = v1;
  v19[1] = sub_1BD990F04;
  v20 = v1[11];
  v21 = v1[7];

  return MEMORY[0x1EEDC14C8](v21, v20);
}

uint64_t sub_1BD990F04()
{
  v2 = *(*v1 + 136);
  *(*v1 + 152) = v0;

  v2, v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v10 = sub_1BD991210;
  }

  else
  {
    v10 = sub_1BD991034;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BD991034(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  v5 = sub_1BE049D34();
  (*(v3 + 8))(v2, v4);
  v13 = v1[16];
  v15 = v1[10];
  v14 = v1[11];
  v16 = v1[9];
  if (v5[2])
  {
    v17 = *(v13 - 8);
    (*(v17 + 16))(v1[3], v5 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v13);
    v5, v18, v19, v20, v21, v22, v23, v24;
    (*(v15 + 8))(v14, v16);
    v25 = 0;
  }

  else
  {
    v5, v6, v7, v8, v9, v10, v11, v12;
    (*(v15 + 8))(v14, v16);
    v17 = *(v13 - 8);
    v25 = 1;
  }

  (*(v17 + 56))(v1[3], v25, 1, v1[16]);

  v26 = v1[1];

  return v26();
}

uint64_t sub_1BD991210()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD9912C8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08, &unk_1BE109160);
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10, &unk_1BE0B7E70);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18, &qword_1BE109170);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10, &unk_1BE0B7E70, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v10 + 8))(v12, v9);
  v31 = v27;
  v32 = v28;
  sub_1BE04A7B4();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E28, &unk_1BE0B7EB0);
  a4[4] = sub_1BD0F9CDC();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18, &qword_1BE109170, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08, &unk_1BE109160, MEMORY[0x1E6968D20]);
  v25 = v29;
  sub_1BE04A714();
  (*(v30 + 8))(v8, v25);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BD991634(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v3[19] = swift_task_alloc();
  v4 = sub_1BE049D74();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_1BE0495A4();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9917E8, 0, 0);
}

uint64_t sub_1BD9917E8()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[27];
    v5 = v0[24];
    v42 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v2, 0);
    v3 = v42;
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v40 = *(v5 + 56);
    v41 = v6;
    v8 = (v5 - 8);
    do
    {
      v9 = v0[25];
      v10 = v0[23];
      v41(v9, v7, v10);
      sub_1BE049584();
      (*v8)(v9, v10);
      v12 = v42[2];
      v11 = v42[3];
      if (v12 >= v11 >> 1)
      {
        sub_1BD531F28((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[28];
      v14 = v0[26];
      v42[2] = v12 + 1;
      (*(v4 + 32))(v42 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v13, v14);
      v7 += v40;
      --v2;
    }

    while (v2);
  }

  v15 = v0[19];
  sub_1BE0490F4();
  v0[29] = sub_1BE0490B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_1BE04A4F4();
  v16 = swift_task_alloc();
  v0[30] = v16;
  *(v16 + 16) = v3;
  v0[13] = sub_1BE049A94();
  sub_1BE04B444();
  v3, v17, v18, v19, v20, v21, v22, v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
  v25 = sub_1BE049144();
  v27 = v26;
  MEMORY[0x1BFB361A0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  v35 = sub_1BE049CE4();
  v36 = MEMORY[0x1E6967BC8];
  v0[5] = v35;
  v0[6] = v36;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v37 = swift_task_alloc();
  v0[31] = v37;
  *v37 = v0;
  v37[1] = sub_1BD991BE4;
  v38 = v0[22];

  return MEMORY[0x1EEDC14D8](v38, v0 + 2);
}

uint64_t sub_1BD991BE4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  *(v2 + 232), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v17 = sub_1BD991F38;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v10, v11, v12, v13, v14, v15, v16);
    v17 = sub_1BD991D10;
  }

  return MEMORY[0x1EEE6DFA0](v17, 0, 0);
}

uint64_t sub_1BD991D10(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  v5 = v1[18];
  v6 = sub_1BE049D54();
  (*(v3 + 8))(v2, v4);
  sub_1BD98CC8C(v6);
  KeyPath = swift_getKeyPath();
  v1[14] = v5;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider, &protocol conformance descriptor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
  swift_beginAccess();
  v16 = *(*(v5 + v15) + 16);
  v17 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  if (*(v5 + v17) != v16)
  {
    v18 = v1[18];
    v19 = swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v18;
    *(v20 + 24) = v16;
    v1[15] = v18;
    sub_1BE04B584();
    v19, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = v1[1];

  return v28();
}

uint64_t sub_1BD991F38(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  v9 = *(v8 + 8);

  return v9();
}

void sub_1BD991FE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1BD992044@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0, &qword_1BE0B7F50);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2B0, &unk_1BE109110);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45680, &qword_1BE0D4628);
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2B8, &unk_1BE109150);
  a3[4] = sub_1BD993118();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD5A2E0, &qword_1EBD5A2B0, &unk_1BE109110, MEMORY[0x1E6968D20]);
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0, &qword_1BE0B7F50, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD5A2E8, &qword_1EBD45680, &qword_1BE0D4628, MEMORY[0x1E69E6328]);
  sub_1BD9936E8(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v25 = v28;
  sub_1BE04A754();
  (*(v29 + 8))(v12, v25);
  return (*(v14 + 8))(v16, v13);
}

id PKDashboardFinanceKitProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKDashboardFinanceKitProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardFinanceKitProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD9925A8(uint64_t a1)
{
  sub_1BD992A30(319);
  if (v1 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of PKDashboardFinanceKitProvider.load()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x150);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return v5();
}

void sub_1BD992A30(uint64_t a1)
{
  if (!qword_1EBD4D590)
  {
    sub_1BE049184();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4D590);
    }
  }
}

uint64_t sub_1BD992A88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD98FC24(v2, v3);
}

uint64_t sub_1BD992B34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BD126968;

  return v6();
}

uint64_t sub_1BD992C1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BD0F985C;

  return v7();
}

uint64_t sub_1BD992D04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v44 - v10;
  sub_1BD0DE19C(a3, v44 - v10, &unk_1EBD3E580, &unk_1BE0B9000);
  v12 = sub_1BE0528D4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &unk_1EBD3E580, &unk_1BE0B9000);
    if (a5[2])
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

  sub_1BE0528C4();
  (*(v13 + 8))(v11, v12);
  if (!a5[2])
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1BE052844();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1BE0524D4();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_1BE048964();
    if (v16 | v14)
    {
      v45[0] = 0;
      v45[1] = 0;
      v19 = v45;
      v45[2] = v14;
      v45[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v44[1] = 7;
    v44[2] = v19;
    v44[3] = v17 + 32;
    v21 = swift_task_create();
    v17, v22, v23, v24, v25, v26, v27, v28;
    sub_1BD0DE53C(a3, &unk_1EBD3E580, &unk_1BE0B9000);
    a2, v29, v30, v31, v32, v33, v34, v35;
    a5, v36, v37, v38, v39, v40, v41, v42;
    return v21;
  }

LABEL_8:
  sub_1BD0DE53C(a3, &unk_1EBD3E580, &unk_1BE0B9000);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v45[4] = 0;
    v45[5] = 0;
    v45[6] = v14;
    v45[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1BD993000(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD126968;

  return sub_1BD02DA28(a1, v4);
}

void sub_1BD9930C0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

unint64_t sub_1BD993118()
{
  result = qword_1EBD5A2C0;
  if (!qword_1EBD5A2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A2B8, &unk_1BE109150);
    sub_1BD9931A4();
    sub_1BD581A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A2C0);
  }

  return result;
}

unint64_t sub_1BD9931A4()
{
  result = qword_1EBD5A2C8;
  if (!qword_1EBD5A2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A2B0, &unk_1BE109110);
    sub_1BD9932A0(&qword_1EBD5A2D0, &qword_1EBD38F58, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
    sub_1BD9932A0(&qword_1EBD5A2D8, &qword_1EBD38F68, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A2C8);
  }

  return result;
}

uint64_t sub_1BD9932A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45680, &qword_1BE0D4628);
    sub_1BD9936E8(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD99333C(uint64_t a1, uint64_t a2)
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
      sub_1BD9936E8(&qword_1EBD4D858, MEMORY[0x1E69676C0], MEMORY[0x1E69676C8]);
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

uint64_t sub_1BD99365C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9936E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD993740()
{
  result = qword_1EBD5A348;
  if (!qword_1EBD5A348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A340, &unk_1BE109290);
    sub_1BD9937CC();
    sub_1BD99398C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A348);
  }

  return result;
}

unint64_t sub_1BD9937CC()
{
  result = qword_1EBD5A350;
  if (!qword_1EBD5A350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A318, &qword_1BE1091F0);
    sub_1BD993858();
    sub_1BD0F9E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A350);
  }

  return result;
}

unint64_t sub_1BD993858()
{
  result = qword_1EBD5A358;
  if (!qword_1EBD5A358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A310, &qword_1BE1091E8);
    sub_1BD9938F4(&qword_1EBD5A360, &qword_1EBD5A308, &qword_1BE1091E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A358);
  }

  return result;
}

uint64_t sub_1BD9938F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1BD0DE4F4(&qword_1EBD38EA8, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD99398C()
{
  result = qword_1EBD5A368;
  if (!qword_1EBD5A368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A300, &unk_1BE1091D0);
    sub_1BD9938F4(&qword_1EBD5A370, &qword_1EBD5A2F8, &qword_1BE1091C8);
    sub_1BD993A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A368);
  }

  return result;
}

unint64_t sub_1BD993A30()
{
  result = qword_1EBD5A378;
  if (!qword_1EBD5A378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A2F0, &qword_1BE1091C0);
    sub_1BD993B04(&qword_1EBD5A380, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_1BD993B04(&qword_1EBD5A388, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A378);
  }

  return result;
}

uint64_t sub_1BD993B04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy41_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD993BB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD993BD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

unint64_t sub_1BD993C20()
{
  result = qword_1EBD5A3A0;
  if (!qword_1EBD5A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3A0);
  }

  return result;
}

uint64_t sub_1BD993C74()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isQuantitative])
  {
    return 0;
  }

  v7 = [v1 monetaryValue];
  v8 = [v7 currency];

  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v1 conversionRate];
  if (!v10 || (v43 = 0, v44 = 0, v45 = 0, v46 = 1, v11 = v10, sub_1BE0533E4(), v11, v46 == 1))
  {

LABEL_6:
    return 0;
  }

  v38 = v3;
  v13 = v43;
  v14 = v44;
  v39 = v45;
  v15 = MEMORY[0x1BFB403C0](1);
  v41 = v16;
  v42 = v15;
  v40 = v17;
  MEMORY[0x1BFB403C0](10);
  PKDefaultFractionDigitsForCurrencyCode();

  v18 = v39;
  sub_1BE04AA74();
  v19 = sub_1BE053354();
  if (MEMORY[0x1BFB403F0](v13, v14, v18, v19, v20, v21))
  {
    goto LABEL_6;
  }

  v22 = sub_1BE053344();
  v23 = PKFormattedCurrencyStringFromNumber();

  if (!v23)
  {
    return 0;
  }

  v24 = sub_1BE052434();
  v26 = v25;

  if ([v1 type] != 1 && objc_msgSend(v1, sel_type) != 2)
  {
    return v24;
  }

  v27 = v38;
  (*(v38 + 104))(v6, *MEMORY[0x1E69B8088], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BE0B69E0;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1BD110550();
  *(v28 + 32) = v24;
  *(v28 + 40) = v26;
  v29 = sub_1BE04B714();
  v28, v30, v31, v32, v33, v34, v35, v36;
  (*(v27 + 8))(v6, v2);
  return v29;
}

void sub_1BD994058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 value];
  if (v7)
  {
    v8 = v7;
    if ([v3 isQuantitative])
    {
      v9 = [v3 monetaryValue];
      v10 = [v9 amount];

      if (v10)
      {
        v11 = sub_1BE0533F4();
        v13 = v12;
        v15 = v14;

        MEMORY[0x1BFB403F0](a1, a2, a3, v11, v13, v15);
        v16 = sub_1BE053344();
        v17 = [v3 convertValueFromAmount_];

        if (!v17)
        {
          v17 = [objc_opt_self() zero];
        }

        v18 = sub_1BE0533F4();
        v20 = v19;
        v22 = v21;

        v23 = sub_1BE0533F4();
        MEMORY[0x1BFB403F0](v18, v20, v22, v23, v24, v25);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1BD99423C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1BD994478(&v5, &v7) & 1;
}

uint64_t sub_1BD994288()
{
  v1 = *(v0 + 40);
  sub_1BE053D04();
  sub_1BE053404();
  sub_1BE053D24();
  if ((v1 & 1) == 0)
  {
    sub_1BE053404();
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD994334(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1BE053404();
  if (v2)
  {
    return sub_1BE053D24();
  }

  sub_1BE053D24();

  return sub_1BE053404();
}

uint64_t sub_1BD9943D0(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1BE053D04();
  sub_1BE053404();
  sub_1BE053D24();
  if ((v2 & 1) == 0)
  {
    sub_1BE053404();
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD994478(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1BFB40440](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)))
  {
    v4 = *(a1 + 40) & *(a2 + 40);
    if ((*(a1 + 40) & 1) == 0 && (*(a2 + 40) & 1) == 0)
    {

      JUMPOUT(0x1BFB40440);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1BD994504()
{
  result = qword_1EBD5A3A8;
  if (!qword_1EBD5A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3A8);
  }

  return result;
}

uint64_t sub_1BD994558(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_1BD871218();
    v4 = sub_1BE052744();
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD9945D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04A874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A884();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1BE048E94();
  __swift_allocate_value_buffer(v10, qword_1EBDAB7D0);
  __swift_project_value_buffer(v10, qword_1EBDAB7D0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_1EBDAB400);
  (*(v4 + 16))(v6, v11, v3);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_1BE048E84();
}

void *sub_1BD9948EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_1BE04A884();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BE0487C4();
  sub_1BE04A864();
  sub_1BE0487C4();
  if (!v16)
  {
    v14 = 1;
    goto LABEL_5;
  }

  v16, v6, v7, v8, v9, v10, v11, v12;
  result = sub_1BE0487C4();
  if (v16)
  {
    sub_1BE04A864();
    v14 = 0;
LABEL_5:
    (*(v5 + 56))(v3, v14, 1, v4);
    sub_1BE048B94();
    return sub_1BE048BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD994AF8(void *a1, const char *a2)
{
  v29 = a2;
  v3 = sub_1BE04CFF4();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_1BE04CFC4();
  v6 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BE04CFE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v27 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v14, v15, v16, v17, v18, v19, v20;
    v21 = v28;
    if ((*(v28 + 88))(v5, v3) == *MEMORY[0x1E69E93E8])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v21 + 8))(v5, v3);
      v22 = "";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v27, v24, v29, v22, v23, 2u);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  (*(v6 + 8))(v8, v30);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1BD994DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BD041C28;

  return sub_1BD99607C(a2, a3);
}

unint64_t sub_1BD994EA0()
{
  result = qword_1EBD5A3B0;
  if (!qword_1EBD5A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3B0);
  }

  return result;
}

unint64_t sub_1BD994EF8()
{
  result = qword_1EBD5A3B8;
  if (!qword_1EBD5A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3B8);
  }

  return result;
}

uint64_t sub_1BD994F50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD1CDC44;

  return sub_1BD9959EC(a1);
}

unint64_t sub_1BD994FFC()
{
  result = qword_1EBD5A3C0;
  if (!qword_1EBD5A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3C0);
  }

  return result;
}

unint64_t sub_1BD995054()
{
  result = qword_1EBD5A3C8;
  if (!qword_1EBD5A3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A3D0, qword_1BE109400);
    sub_1BD15D588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3C8);
  }

  return result;
}

uint64_t sub_1BD9950D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD994504();
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

unint64_t sub_1BD995190()
{
  result = qword_1EBD5A3D8;
  if (!qword_1EBD5A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3D8);
  }

  return result;
}

unint64_t sub_1BD9951E8()
{
  result = qword_1EBD5A3E0;
  if (!qword_1EBD5A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3E0);
  }

  return result;
}

unint64_t sub_1BD995240()
{
  result = qword_1EBD5A3E8;
  if (!qword_1EBD5A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3E8);
  }

  return result;
}

unint64_t sub_1BD995298()
{
  result = qword_1EBD5A3F0;
  if (!qword_1EBD5A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3F0);
  }

  return result;
}

unint64_t sub_1BD9952EC()
{
  result = qword_1EBD5A3F8;
  if (!qword_1EBD5A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3F8);
  }

  return result;
}

unint64_t sub_1BD995344()
{
  result = qword_1EBD5A400;
  if (!qword_1EBD5A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A400);
  }

  return result;
}

uint64_t sub_1BD995398@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB7D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD995444()
{
  result = qword_1EBD5A408;
  if (!qword_1EBD5A408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A410, &qword_1BE109608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A408);
  }

  return result;
}

uint64_t sub_1BD9954A8(uint64_t a1)
{
  v2 = sub_1BD8710C4();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_1BD9954F8()
{
  result = qword_1EBD5A418;
  if (!qword_1EBD5A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A418);
  }

  return result;
}

uint64_t sub_1BD995554(uint64_t a1)
{
  sub_1BD995344();

  return sub_1BE048EF4();
}

id sub_1BD9955C0(void *a1)
{
  v71 = a1;
  v1 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1BE04A884();
  MEMORY[0x1EEE9AC00](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A420, &unk_1BE109750);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v10 = sub_1BE048824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C740, &qword_1BE0EEE10);
  sub_1BE048964();
  sub_1BE052354();
  v9(v5, v8, v2);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v11 = sub_1BE048824();
  sub_1BE048964();
  v12 = v71;
  result = [v71 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = result;
  v15 = sub_1BE052434();
  v17 = v16;

  sub_1BE048C84();
  result = [v12 localizedName];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = sub_1BE052434();
  v21 = v20;

  v72 = v19;
  v73 = v21;
  sub_1BE0487D4();
  v22 = [v12 parentRegion];
  if (v22)
  {
    v30 = v22;
    v31 = [v22 localizedName];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1BE052434();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v72 = v33;
    v73 = v35;
    sub_1BE0487D4();
    v11, v50, v51, v52, v53, v54, v55, v56;
    v10, v57, v58, v59, v60, v61, v62, v63;
    v17, v64, v65, v66, v67, v68, v69, v70;
  }

  else
  {
    v11, v23, v24, v25, v26, v27, v28, v29;
    v10, v36, v37, v38, v39, v40, v41, v42;
    v17, v43, v44, v45, v46, v47, v48, v49;
  }

  return v15;
}

uint64_t sub_1BD9959EC(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1BE04CFC4();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = sub_1BE04CFE4();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD995B14, 0, 0);
}

uint64_t sub_1BD995B14(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "WorldRegionEntity:entitiesForIdentifier", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v6 = v1[25];
  v7 = v1[26];
  v9 = v1[23];
  v8 = v1[24];
  v11 = v1[21];
  v10 = v1[22];
  v12 = v1[20];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[27] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v6 + 8))(v7, v8);
  v13 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v1[28] = v13;
  v14 = sub_1BE052724();
  v1[29] = v14;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1BD995DA8;
  v15 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56130, &qword_1BE103FE0);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1BD994558;
  v1[13] = &block_descriptor_226;
  v1[14] = v15;
  [v13 regionsWithIdentifiers:v14 completion:?];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1BD995DA8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD995E88, 0, 0);
}

char *sub_1BD995E88()
{
  v1 = *(v0 + 144);

  if (!v1)
  {

LABEL_16:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  if (v1 >> 62)
  {
    v9 = sub_1BE053704();
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_15:
    v34 = *(v0 + 224);
    v1, v2, v3, v4, v5, v6, v7, v8;

    goto LABEL_16;
  }

LABEL_4:
  v46 = MEMORY[0x1E69E7CC0];
  result = sub_1BD5323D8(0, v9 & ~(v9 >> 63), 0, v4, v5, v6, v7, v8);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = v46;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB40900](v11, v1);
    }

    else
    {
      v13 = *(v1 + 8 * v11 + 32);
    }

    v14 = sub_1BD9955C0(v13);
    v23 = *(v46 + 16);
    v22 = *(v46 + 24);
    if (v23 >= v22 >> 1)
    {
      v44 = v15;
      v45 = v14;
      v25 = v16;
      v26 = v17;
      sub_1BD5323D8((v22 > 1), v23 + 1, 1, v17, v18, v19, v20, v21);
      v17 = v26;
      v16 = v25;
      v15 = v44;
      v14 = v45;
    }

    ++v11;
    *(v46 + 16) = v23 + 1;
    v24 = (v46 + 32 * v23);
    v24[4] = v14;
    v24[5] = v15;
    v24[6] = v16;
    v24[7] = v17;
  }

  while (v9 != v11);

  v1, v27, v28, v29, v30, v31, v32, v33;
LABEL_17:
  v35 = *(v0 + 216);
  sub_1BD994AF8(v35, "WorldRegionEntity:entitiesForIdentifier");
  v35, v36, v37, v38, v39, v40, v41, v42;

  v43 = *(v0 + 8);

  return v43(v12);
}

uint64_t sub_1BD99607C(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_1BE04CFC4();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = sub_1BE04CFE4();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9961A4, 0, 0);
}

uint64_t sub_1BD9961A4(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "WorldRegionEntity:entitiesMatchingString", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v6 = v1[26];
  v7 = v1[27];
  v9 = v1[24];
  v8 = v1[25];
  v11 = v1[22];
  v10 = v1[23];
  v12 = v1[21];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[28] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v6 + 8))(v7, v8);
  v13 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v1[29] = v13;
  v14 = sub_1BE052404();
  v1[30] = v14;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1BD996438;
  v15 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56130, &qword_1BE103FE0);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1BD994558;
  v1[13] = &block_descriptor_13_7;
  v1[14] = v15;
  [v13 regionsMatchingName:v14 types:0 completion:?];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1BD996438()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD996518, 0, 0);
}

char *sub_1BD996518()
{
  v1 = *(v0 + 144);

  if (!v1)
  {

LABEL_53:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v105 = MEMORY[0x1E69E7CC0];
  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_50;
  }

  v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v100 = v0;
    v12 = 0;
    v103 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v103)
      {
        v20 = MEMORY[0x1BFB40900](v12, v1);
      }

      else
      {
        if (v12 >= *(v9 + 16))
        {
          goto LABEL_49;
        }

        v20 = *(v1 + 8 * v12 + 32);
      }

      v21 = v20;
      v0 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v10 = sub_1BE053704();
        goto LABEL_4;
      }

      if (![v20 type])
      {
        goto LABEL_7;
      }

      v22 = [v21 localizedName];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1BE052434();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v27 = [v21 parentRegion];
      if (v27)
      {
        v101 = v24;
        v35 = v1;
        v36 = v10;
        v37 = v9;
        v38 = v27;
        v39 = [v27 localizedName];

        if (v39)
        {
          v40 = sub_1BE052434();
          v42 = v41;
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        v9 = v37;
        v10 = v36;
        v1 = v35;
        v24 = v101;
        if (v26)
        {
LABEL_25:
          if (!v42)
          {
            goto LABEL_30;
          }

          if (v24 == v40 && v26 == v42)
          {
            v42, v28, v29, v30, v31, v32, v33, v34;
            v26, v13, v14, v15, v16, v17, v18, v19;
          }

          else
          {
            v43 = sub_1BE053B84();
            v42, v44, v45, v46, v47, v48, v49, v50;
            v26, v51, v52, v53, v54, v55, v56, v57;
            if ((v43 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_7;
        }
      }

      else
      {
        v40 = 0;
        v42 = 0;
        if (v26)
        {
          goto LABEL_25;
        }
      }

      if (v42)
      {
        v26 = v42;
LABEL_30:
        v26, v28, v29, v30, v31, v32, v33, v34;
LABEL_31:
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        goto LABEL_8;
      }

LABEL_7:

LABEL_8:
      ++v12;
      if (v0 == v10)
      {
        v58 = v105;
        v0 = v100;
        v11 = MEMORY[0x1E69E7CC0];
        goto LABEL_36;
      }
    }
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v1, v2, v3, v4, v5, v6, v7, v8;
  if ((v58 & 0x8000000000000000) != 0 || (v58 & 0x4000000000000000) != 0)
  {
    v66 = sub_1BE053704();
    if (v66)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

  v66 = *(v58 + 16);
  if (!v66)
  {
LABEL_52:
    v90 = *(v0 + 232);
    v58, v59, v60, v61, v62, v63, v64, v65;

    goto LABEL_53;
  }

LABEL_39:
  result = sub_1BD5323D8(0, v66 & ~(v66 >> 63), 0, v61, v62, v63, v64, v65);
  if (v66 < 0)
  {
    __break(1u);
    return result;
  }

  v68 = 0;
  do
  {
    if ((v58 & 0xC000000000000001) != 0)
    {
      v69 = MEMORY[0x1BFB40900](v68, v58);
    }

    else
    {
      v69 = *(v58 + 8 * v68 + 32);
    }

    v70 = sub_1BD9955C0(v69);
    v79 = *(v11 + 16);
    v78 = *(v11 + 24);
    if (v79 >= v78 >> 1)
    {
      v102 = v71;
      v104 = v70;
      v81 = v72;
      v82 = v73;
      sub_1BD5323D8((v78 > 1), v79 + 1, 1, v73, v74, v75, v76, v77);
      v73 = v82;
      v72 = v81;
      v71 = v102;
      v70 = v104;
    }

    ++v68;
    *(v11 + 16) = v79 + 1;
    v80 = (v11 + 32 * v79);
    v80[4] = v70;
    v80[5] = v71;
    v80[6] = v72;
    v80[7] = v73;
  }

  while (v66 != v68);

  v58, v83, v84, v85, v86, v87, v88, v89;
LABEL_54:
  v91 = *(v0 + 224);
  sub_1BD994AF8(v91, "WorldRegionEntity:entitiesMatchingString");
  v91, v92, v93, v94, v95, v96, v97, v98;

  v99 = *(v0 + 8);

  return v99(v11);
}

void sub_1BD996978(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD99A41C(&qword_1EBD5A450, type metadata accessor for AirDropRequirements, &unk_1BE10A3D0);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 26);
}

void NearbyPeerPaymentAmountEntryViewController.init(initialAmount:initialMemo:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC;
  *&v4[v8] = [objc_allocWithZone(PKPeerPaymentMessagesContentAmountEntryViewController) init];
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 account];

    if (v11)
    {
      *&v4[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount] = v11;
      v12 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_authController;
      type metadata accessor for NearbyPeerPaymentSenderAuthorizationController(0);
      swift_allocObject();
      *&v4[v12] = NearbyPeerPaymentSenderAuthorizationController.init()();
      v13 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_airDropRequirements;
      type metadata accessor for AirDropRequirements(0);
      v14 = swift_allocObject();
      v15 = [objc_allocWithZone(MEMORY[0x1E69995C8]) init];
      [v15 activate];
      *(v14 + 16) = v15;
      *(v14 + 24) = [objc_opt_self() nearFieldSharingEnabled];
      *(v14 + 25) = 769;
      sub_1BE04B5C4();
      *&v4[v13] = v14;
      v24.receiver = v4;
      v24.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
      v16 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
      sub_1BD996EB0(a1, a2, a3);

      a3, v17, v18, v19, v20, v21, v22, v23;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD996CDC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC;
  *&v2[v4] = [objc_allocWithZone(PKPeerPaymentMessagesContentAmountEntryViewController) init];
  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 account];

  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *&v2[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount] = v7;
  v8 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_authController;
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController(0);
  swift_allocObject();
  *&v2[v8] = NearbyPeerPaymentSenderAuthorizationController.init()();
  v9 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_airDropRequirements;
  type metadata accessor for AirDropRequirements(0);
  v10 = swift_allocObject();
  v11 = [objc_allocWithZone(MEMORY[0x1E69995C8]) init];
  [v11 activate];
  *(v10 + 16) = v11;
  *(v10 + 24) = [objc_opt_self() nearFieldSharingEnabled];
  *(v10 + 25) = 769;
  sub_1BE04B5C4();
  *&v2[v9] = v10;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  if (v12)
  {
    v13 = v12;
    sub_1BD996EB0(0, 0, 0);
  }
}

void sub_1BD996EB0(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v3[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC];
  [v12 setContext_];
  [v12 setLeadingAction_];
  [v12 setDelegate_];
  if (a1)
  {
    v42[1] = a2;
    v13 = *&v3[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount];
    v14 = a1;
    v15 = [v13 currentBalance];
    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = v15;
    v17 = v7;
    v18 = [v15 currency];

    if (v18)
    {
      sub_1BE052434();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = sub_1BE052404();
    v20, v22, v23, v24, v25, v26, v27, v28;
    v29 = PKCurrencyAmountCreate(v14, v21);

    [v12 setAmount_];
    v7 = v17;
  }

  if (a3)
  {
    a3 = sub_1BE052404();
  }

  [v12 setMemo_];

  [v3 addChildViewController_];
  [v3 setOverrideUserInterfaceStyle_];
  (*(v8 + 104))(v11, *MEMORY[0x1E69B8050], v7);
  v30 = PKPassKitBundle();
  if (v30)
  {
    v31 = v30;
    sub_1BE04B6F4();
    v33 = v32;

    (*(v8 + 8))(v11, v7);
    v34 = sub_1BE052404();
    v33, v35, v36, v37, v38, v39, v40, v41;
    [v3 setTitle_];

    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

id sub_1BD9971B8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  objc_msgSendSuper2(&v5, sel_loadView);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC];
    result = [v3 view];
    if (result)
    {
      v4 = result;
      [v2 addSubview_];

      return [v3 didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD9972C4()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  sub_1BD997A7C();
  v1 = [v0 navigationController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
  v4 = sub_1BE052744();

  if (v4 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_4;
    }

LABEL_10:
    v4, v5, v6, v7, v8, v9, v10, v11;
    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1BFB40900](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v4 + 32);
  }

  v20 = v12;
  v4, v13, v14, v15, v16, v17, v18, v19;
  v21 = v0;
  v22 = sub_1BE053074();

  if (v22)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = sub_1BE0530B4();
    sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
    v25 = v24;
    v26 = sub_1BE052C74();
    v27 = [v21 navigationItem];
    [v27 setLeftBarButtonItem_];
  }
}

void sub_1BD997508(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationController];

    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1BD997734(char a1, SEL *a2, void *a3)
{
  v52.receiver = v3;
  v52.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  objc_msgSendSuper2(&v52, *a2, a1 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  v7 = MEMORY[0x1E69BA680];
  *(inited + 16) = xmmword_1BE0B98E0;
  v8 = *v7;
  *(inited + 32) = *v7;
  v9 = sub_1BE052434();
  v10 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v12 = *v10;
  *(inited + 56) = *v10;
  v13 = sub_1BE052434();
  v14 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = *v14;
  *(inited + 80) = *v14;
  v17 = sub_1BE052434();
  v18 = MEMORY[0x1E69BAF60];
  *(inited + 88) = v17;
  *(inited + 96) = v19;
  v20 = *v18;
  *(inited + 104) = *v18;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v21;
  v22 = v8;
  v23 = v12;
  v24 = v16;
  v25 = v20;
  v26 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1BE0B69E0;
  v28 = *MEMORY[0x1E69BA850];
  *(v27 + 32) = *MEMORY[0x1E69BA850];
  *(v27 + 40) = sub_1BE052434();
  *(v27 + 48) = v29;
  v30 = v28;
  v31 = sub_1BD1AAF50(v27);
  swift_setDeallocating();
  sub_1BD0DE53C(v27 + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v31;
  sub_1BD6BC0F4(v26, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v51);
  v26, v33, v34, v35, v36, v37, v38, v39;
  v40 = *MEMORY[0x1E69BB6A8];
  v41 = objc_opt_self();
  v42 = v51;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD99A41C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v43 = sub_1BE052224();
  v42, v44, v45, v46, v47, v48, v49, v50;
  [v41 subject:v40 sendEvent:v43];
}

void sub_1BD997A7C()
{
  v1 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount);
  v2 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC);
  v3 = [v2 amount];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 amount];

  v6 = [v1 deviceTapFeatureDescriptor];
  v7 = [v1 transactionAmountIsValid:v5 feature:v6];

  v8 = [v2 mainView];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 actionView];

  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v10 setButtonEnabled:v7 forAction:{objc_msgSend(v2, sel_leadingAction)}];
}

void sub_1BD997BCC(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BD1A91F0(a1);
    v6 = sub_1BE052224();
    v5, v7, v8, v9, v10, v11, v12, v13;
    [v4 presentSenderFlowWithHost:0 userInfo:v6 completion:0];

    v14 = [v1 navigationController];
    if (v14)
    {
      v15 = v14;
      [v14 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD997CE0(uint64_t a1)
{
  v2 = sub_1BE04B7C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v122 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D214();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v124 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v128 = *(v7 - 8);
  v129 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04B824();
  v120 = *(v9 - 8);
  v121 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  v115 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v119 = &v110 - v14;
  v116 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v110 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v110 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v110 - v23;
  v25 = type metadata accessor for FeatureError(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v114 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v110 - v30;
  v118 = *(v3 + 16);
  v118(v21, a1, v2, v29);
  v123 = v3;
  (*(v3 + 56))(v21, 0, 1, v2);
  FeatureError.init(_:)(v21, v24);
  v112 = v26;
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    sub_1BD230930(v24, v31);
    sub_1BE04B7B4();
    v42 = v119;
    sub_1BD0DE19C(v18, v119, &unk_1EBD3F6C0, &qword_1BE0DA790);
    v44 = v120;
    v43 = v121;
    if ((*(v120 + 48))(v42, 1, v121) == 1)
    {
      sub_1BD0DE53C(v42, &unk_1EBD3F6C0, &qword_1BE0DA790);
    }

    else
    {
      v46 = v111;
      (*(v44 + 32))(v111, v42, v43);
      _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
      (*(v44 + 8))(v46, v43);
    }

    v47 = v127;
    v48 = sub_1BE04A844();
    v49 = PKTitleForDisplayableError();

    if (v49)
    {
      sub_1BE052434();
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v52 = sub_1BE04A844();
    v53 = MEMORY[0x1BFB42D10]();

    if (v53)
    {
      sub_1BE052434();
      v55 = v54;

      v56 = v128;
      if (v51)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v55 = 0;
      v56 = v128;
      if (v51)
      {
LABEL_14:
        v57 = sub_1BE052404();
        v51, v58, v59, v60, v61, v62, v63, v64;
        if (v55)
        {
LABEL_15:
          v65 = sub_1BE052404();
          v55, v66, v67, v68, v69, v70, v71, v72;
          goto LABEL_19;
        }

LABEL_18:
        v65 = 0;
LABEL_19:
        v128 = [objc_opt_self() alertControllerWithTitle:v57 message:v65 preferredStyle:1];

        v73 = v129;
        v56[13](v47, *MEMORY[0x1E69B80D0], v129);
        result = PKPassKitBundle();
        if (result)
        {
          v74 = result;
          sub_1BE04B6F4();
          v76 = v75;

          (v56[1])(v47, v73);
          v77 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v78 = v114;
          sub_1BD2F8B48(v31, v114);
          v79 = v117;
          sub_1BD0DE19C(v18, v117, &unk_1EBD3F6C0, &qword_1BE0DA790);
          v80 = *(v112 + 80);
          v129 = v31;
          v81 = (v80 + 24) & ~v80;
          v82 = (v113 + *(v115 + 80) + v81) & ~*(v115 + 80);
          v83 = swift_allocObject();
          v127 = v18;
          v84 = v83;
          *(v83 + 16) = v77;
          sub_1BD230930(v78, v83 + v81);
          sub_1BD0DE204(v79, v84 + v82, &unk_1EBD3F6C0, &qword_1BE0DA790);
          sub_1BE048964();
          v85 = sub_1BE052404();
          v76, v86, v87, v88, v89, v90, v91, v92;
          aBlock[4] = sub_1BD999EE4;
          v132 = v84;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD198918;
          aBlock[3] = &block_descriptor_227;
          v93 = _Block_copy(aBlock);
          v132, v94, v95, v96, v97, v98, v99, v100;
          v101 = [objc_opt_self() actionWithTitle:v85 style:0 handler:v93];
          _Block_release(v93);
          v77, v102, v103, v104, v105, v106, v107, v108;

          v109 = v128;
          [v128 addAction_];

          [v130 presentViewController:v109 animated:1 completion:0];
          sub_1BD0DE53C(v127, &unk_1EBD3F6C0, &qword_1BE0DA790);
          return sub_1BD230994(v129);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    v57 = 0;
    if (v55)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  sub_1BD0DE53C(v24, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v32 = v124;
  sub_1BE04D094();
  v33 = v122;
  v34 = a1;
  v35 = v118;
  (v118)(v122, v34, v2);
  v36 = sub_1BE04D204();
  v37 = sub_1BE052C34();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    sub_1BD99A41C(&unk_1EBD399C0, MEMORY[0x1E69B7EE0], MEMORY[0x1E69B7EE8]);
    swift_allocError();
    v35(v40, v33, v2);
    v41 = _swift_stdlib_bridgeErrorToNSError();
    (*(v123 + 8))(v33, v2);
    *(v38 + 4) = v41;
    *v39 = v41;
    _os_log_impl(&dword_1BD026000, v36, v37, "NearbyPeerPayment: attempted to show unknown error: %@", v38, 0xCu);
    sub_1BD0DE53C(v39, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v39, -1, -1);
    MEMORY[0x1BFB45F20](v38, -1, -1);
  }

  else
  {

    (*(v123 + 8))(v33, v2);
  }

  return (*(v125 + 8))(v32, v126);
}

uint64_t sub_1BD9987E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_1BE04B824();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_authController);
    v18 = Strong;
    sub_1BE048964();

    sub_1BD2F8B48(a3, v15);
    v19 = type metadata accessor for FeatureError(0);
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
    NearbyPeerPaymentSenderAuthorizationController.errorProcessed(_:)(v15);
    v17, v20, v21, v22, v23, v24, v25, v26;
    sub_1BD0DE53C(v15, &qword_1EBD416C0, &unk_1BE0BC2A0);
  }

  sub_1BD0DE19C(a4, v8, &unk_1EBD3F6C0, &qword_1BE0DA790);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1BD0DE53C(v8, &unk_1EBD3F6C0, &qword_1BE0DA790);
  }

  (*(v10 + 32))(v12, v8, v9);
  v28 = sub_1BE052434();
  v30 = v29;
  _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v28, v29);
  v30, v31, v32, v33, v34, v35, v36, v37;
  return (*(v10 + 8))(v12, v9);
}

void sub_1BD998AB4(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v85 - v10;
  v12 = sub_1BE04B824();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD9AF408(v2);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &unk_1EBD3F6C0, &qword_1BE0DA790);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
    (*(v13 + 8))(v15, v12);
  }

  sub_1BD9AF964(v2);
  v17 = v16;
  sub_1BD9AF5C4(v2);
  v19 = v18;
  if (v17)
  {
    v20 = sub_1BE052404();
    v17, v21, v22, v23, v24, v25, v26, v27;
    if (v19)
    {
LABEL_6:
      v28 = sub_1BE052404();
      v19, v29, v30, v31, v32, v33, v34, v35;
      goto LABEL_9;
    }
  }

  else
  {
    v20 = 0;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v28 = 0;
LABEL_9:
  v36 = [objc_opt_self() alertControllerWithTitle:v20 message:v28 preferredStyle:1];

  v37 = *MEMORY[0x1E69B8050];
  v87 = *(v4 + 104);
  v87(v8, v37, v3);
  v38 = PKPassKitBundle();
  if (v38)
  {
    v39 = v38;
    sub_1BE04B6F4();
    v41 = v40;

    v86 = *(v4 + 8);
    v86(v8, v3);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    v43 = sub_1BE052404();
    v41, v44, v45, v46, v47, v48, v49, v50;
    aBlock[4] = sub_1BD99A368;
    v90 = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD198918;
    aBlock[3] = &block_descriptor_22_11;
    v51 = _Block_copy(aBlock);
    v90, v52, v53, v54, v55, v56, v57, v58;
    v59 = objc_opt_self();
    v60 = [v59 actionWithTitle:v43 style:0 handler:v51];
    v85 = v1;
    v61 = v3;
    v62 = v60;
    _Block_release(v51);
    v42, v63, v64, v65, v66, v67, v68, v69;

    [v36 addAction_];
    v70 = v61;
    v71 = v88;
    v87(v88, v37, v70);
    v72 = PKPassKitBundle();
    if (v72)
    {
      v73 = v72;
      sub_1BE04B6F4();
      v75 = v74;

      v86(v71, v70);
      v76 = sub_1BE052404();
      v75, v77, v78, v79, v80, v81, v82, v83;
      v84 = [v59 actionWithTitle:v76 style:1 handler:0];

      [v36 addAction_];
      [v85 presentViewController:v36 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD999030(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_airDropRequirements);
    v4 = Strong;
    sub_1BE048964();

    sub_1BD9B0774();
    v3, v5, v6, v7, v8, v9, v10, v11;
  }
}

id sub_1BD9990C4(SEL *a1)
{
  result = [*(v1 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount) deviceTapFeatureDescriptor];
  if (result)
  {
    v4 = result;
    v5 = [result *a1];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD999138(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount];
  v5 = a1;
  result = [v4 deviceTapFeatureDescriptor];
  if (result)
  {
    v7 = result;
    v8 = [result *a3];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD9991C8()
{
  v1 = [*(v0 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount) currentBalance];

  return v1;
}

void sub_1BD999298(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (a1 == 12)
  {
    v6 = *(v3 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_airDropRequirements);
    sub_1BD9B0214();
    KeyPath = swift_getKeyPath();
    sub_1BD99A41C(&qword_1EBD5A450, type metadata accessor for AirDropRequirements, &unk_1BE10A3D0);
    sub_1BE04B594();
    KeyPath, v8, v9, v10, v11, v12, v13, v14;
    v15 = *(v6 + 26);
    if (v15 == 3)
    {
      v16 = *(v3 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC);
      v17 = [v16 amount];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      v19 = [v16 memo];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1BE052434();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = a2;
      v25[4] = a3;
      sub_1BE048964();
      sub_1BE048964();
      NearbyPeerPaymentSenderAuthorizationController.authorizeAmount(_:memo:completion:)(v18, v21, v23, sub_1BD999DA8, v25);

      v24, v26, v27, v28, v29, v30, v31, v32;
      v25, v33, v34, v35, v36, v37, v38, v39;
      v23, v40, v41, v42, v43, v44, v45, v46;
    }

    else
    {
      sub_1BD998AB4(v15);
      a2(0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98E0;
    v48 = *MEMORY[0x1E69BA440];
    *(inited + 32) = *MEMORY[0x1E69BA440];
    v49 = sub_1BE052434();
    v50 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v49;
    *(inited + 48) = v51;
    v52 = *v50;
    *(inited + 56) = *v50;
    v53 = sub_1BE052434();
    v54 = MEMORY[0x1E69BAFB0];
    *(inited + 64) = v53;
    *(inited + 72) = v55;
    v56 = *v54;
    *(inited + 80) = *v54;
    v57 = sub_1BE052434();
    v58 = MEMORY[0x1E69BAF60];
    *(inited + 88) = v57;
    *(inited + 96) = v59;
    v60 = *v58;
    *(inited + 104) = *v58;
    *(inited + 112) = sub_1BE052434();
    *(inited + 120) = v61;
    v62 = v48;
    v63 = v52;
    v64 = v56;
    v65 = v60;
    v66 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v66);
    v66, v67, v68, v69, v70, v71, v72, v73;
  }
}

uint64_t sub_1BD9995B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v34 = a1;
  v38 = sub_1BE051F54();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v34 - v15;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v37 = sub_1BE052D54();
  sub_1BD0DE19C(a2, v16, &qword_1EBD47198, &qword_1BE0D8EC0);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  sub_1BD0DE204(v16, v19 + v17, &qword_1EBD47198, &qword_1BE0D8EC0);
  v20 = (v19 + v18);
  v21 = v36;
  *v20 = v35;
  v20[1] = v21;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v34;
  aBlock[4] = sub_1BD99A370;
  v43 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_28_7;
  v22 = _Block_copy(aBlock);
  v23 = v43;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  v23, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD99A41C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v31 = v38;
  sub_1BE053664();
  v32 = v37;
  MEMORY[0x1BFB3FDF0](0, v11, v8, v22);
  _Block_release(v22);

  (*(v41 + 8))(v8, v31);
  return (*(v39 + 8))(v11, v40);
}

void sub_1BD999984(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1BE04B7C4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_1BD0DE19C(a2, v10, &qword_1EBD47198, &qword_1BE0D8EC0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1BD0DE53C(v10, &qword_1EBD47198, &qword_1BE0D8EC0);
      if (a5)
      {
        sub_1BD997BCC(a5);
        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      a3(v17);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_1BD997CE0(v14);
      a3(0);

      (*(v12 + 8))(v14, v11);
    }
  }
}

id NearbyPeerPaymentAmountEntryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
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

id NearbyPeerPaymentAmountEntryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD999EE4(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureError(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1BD9987E4(a1, v7, v1 + v4, v8);
}

void sub_1BD999FC8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  v6[2] = a3;
  if (a1 == 12)
  {
    v7 = *(a2 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_airDropRequirements);
    _Block_copy(a3);
    sub_1BD9B0214();
    KeyPath = swift_getKeyPath();
    sub_1BD99A41C(&qword_1EBD5A450, type metadata accessor for AirDropRequirements, &unk_1BE10A3D0);
    sub_1BE04B594();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
    v16 = *(v7 + 26);
    if (v16 != 3)
    {
      sub_1BD998AB4(v16);
      a3[2](a3, 0);
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B98E0;
      v56 = *MEMORY[0x1E69BA440];
      *(inited + 32) = *MEMORY[0x1E69BA440];
      v57 = sub_1BE052434();
      v58 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v57;
      *(inited + 48) = v59;
      v60 = *v58;
      *(inited + 56) = *v58;
      v61 = sub_1BE052434();
      v62 = MEMORY[0x1E69BAFB0];
      *(inited + 64) = v61;
      *(inited + 72) = v63;
      v64 = *v62;
      *(inited + 80) = *v62;
      v65 = sub_1BE052434();
      v66 = MEMORY[0x1E69BAF60];
      *(inited + 88) = v65;
      *(inited + 96) = v67;
      v68 = *v66;
      *(inited + 104) = *v66;
      *(inited + 112) = sub_1BE052434();
      *(inited + 120) = v69;
      v70 = v56;
      v71 = v60;
      v72 = v64;
      v73 = v68;
      v74 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v74);
      v6, v75, v76, v77, v78, v79, v80, v81;
      v74, v82, v83, v84, v85, v86, v87, v88;
      return;
    }

    v17 = *(a2 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC);
    v18 = [v17 amount];
    if (v18)
    {
      v19 = v18;
      v20 = [v17 memo];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1BE052434();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = sub_1BD14BF2C;
      v33[4] = v6;
      sub_1BE048964();
      sub_1BE048964();
      NearbyPeerPaymentSenderAuthorizationController.authorizeAmount(_:memo:completion:)(v19, v22, v24, sub_1BD99A46C, v33);

      v32, v34, v35, v36, v37, v38, v39, v40;
      v33, v41, v42, v43, v44, v45, v46, v47;
      v24, v48, v49, v50, v51, v52, v53, v54;
      goto LABEL_12;
    }

    _Block_release(a3);
    __break(1u);
  }

  else
  {
    _Block_copy(a3);

    v6, v25, v26, v27, v28, v29, v30, v31;
  }
}

void sub_1BD99A370()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_1BD999984(v5, v0 + v2, v8, v9, v7);
}

uint64_t sub_1BD99A41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD99A490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD99A528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31[0] = a6;
  v32 = a5;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = a1;
  v42 = a7;
  v8 = sub_1BE04FA44();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v31[2] = sub_1BE04EBD4();
  v10 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v53 = a6;
  v54 = v10;
  v31[1] = swift_getWitnessTable();
  v11 = sub_1BE04E2F4();
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A458, &qword_1BE109898);
  v14 = sub_1BE04EBD4();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1BD0DE4F4(&qword_1EBD366F8, &qword_1EBD5A458, &qword_1BE109898, MEMORY[0x1E697C968]);
  v51 = WitnessTable;
  v52 = v18;
  v19 = swift_getWitnessTable();
  v49 = v14;
  v50 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v31 - v25;
  v43 = v32;
  v44 = v31[0];
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  sub_1BE0501B4();
  sub_1BE04E304();
  v49 = 0x69566C6C6F726373;
  v50 = 0xEA00000000007765;
  sub_1BE050B04();
  v27 = v11;
  v28 = v39;
  (*(v33 + 8))(v13, v27);
  sub_1BE04FA34();
  LOBYTE(WitnessTable) = sub_1BE0501B4();
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != WitnessTable)
  {
    sub_1BE0501A4();
  }

  sub_1BE050D34();
  (*(v40 + 8))(v28, v41);
  (*(v34 + 8))(v16, v14);
  v49 = v14;
  v50 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308();
  v29 = *(v21 + 8);
  v29(v23, OpaqueTypeMetadata2);
  sub_1BD147308();
  return (v29)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_1BD99AAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a6;
  v39 = a7;
  v37 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v15 = sub_1BE04EBD4();
  v38 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v36 = &v34 - v20;
  a3(v19);
  sub_1BD99ADC8(a1, a2, a3, a4, a5, a6, &v44);
  v21 = v45;
  v42 = v44;
  v43 = v45;
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B70, qword_1BE0E16C0);
  sub_1BD0DE4F4(&qword_1EBD45B78, &qword_1EBD45B70, qword_1BE0E16C0, MEMORY[0x1E697E378]);
  v22 = v35;
  sub_1BE050834();
  v21, v23, v24, v25, v26, v27, v28, v29;
  (*(v37 + 8))(v14, a5);
  v30 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v40 = v22;
  v41 = v30;
  swift_getWitnessTable();
  v31 = v36;
  sub_1BD147308();
  v32 = *(v38 + 8);
  v32(v17, v15);
  sub_1BD147308();
  return (v32)(v31, v15);
}

uint64_t sub_1BD99ADC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (**a7)(uint64_t a1@<X8>)@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a5;
  *(v14 + 3) = a6;
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *(v14 + 6) = a3;
  *(v14 + 7) = a4;
  *a7 = sub_1BD99B10C;
  a7[1] = v14;
  sub_1BE048964();

  return sub_1BE048964();
}

void sub_1BD99AE68(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v50[1] = a7;
  v13 = sub_1BE04FA04();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0x69566C6C6F726373;
  v52 = 0xEA00000000007765;
  sub_1BE04FD24();
  sub_1BE04E694();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v14 + 8))(v16, v13);
  v56.origin.x = v18;
  v56.origin.y = v20;
  v56.size.width = v22;
  v56.size.height = v24;
  MinY = CGRectGetMinY(v56);
  v26 = sub_1BE051404();
  v27 = swift_allocObject();
  *(v27 + 2) = a5;
  *(v27 + 3) = a6;
  *(v27 + 4) = a1;
  *(v27 + 5) = a2;
  *(v27 + 6) = a3;
  *(v27 + 7) = a4;
  v27[8] = MinY;
  v51 = v26;
  v52 = sub_1BD99B11C;
  v53 = v27;
  v54 = 0;
  v55 = 0;
  *&v50[2] = MinY;
  v28 = swift_allocObject();
  v28[2] = a5;
  v28[3] = a6;
  v28[4] = a1;
  v28[5] = a2;
  v28[6] = a3;
  v28[7] = a4;
  swift_retain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B80, &unk_1BE0D51E0);
  sub_1BD4163BC();
  sub_1BD0F9764();
  sub_1BE051064();
  v27, v29, v30, v31, v32, v33, v34, v35;
  v26, v36, v37, v38, v39, v40, v41, v42;
  v28, v43, v44, v45, v46, v47, v48, v49;
}

uint64_t objectdestroyTm_116(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 56), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

id static FinanceKitTransactionViewProvider.makeViewController(transaction:institution:navigationController:style:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v32 = a2;
  v5 = sub_1BE049184();
  v31 = *(v5 - 8);
  v6 = v31;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = sub_1BE049A94();
  v30 = *(v11 - 8);
  v12 = v30;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = *(v12 + 16);
  v29 = v11;
  v19(&v28 - v17, a1, v11, v16);
  v20 = *(v6 + 16);
  v20(v10, v32, v5);
  type metadata accessor for NavigationController();
  v32 = swift_allocObject();
  v21 = v34;
  *(v32 + 16) = v34;
  (v19)(v14, v18, v11);
  v22 = v33;
  v20(v33, v10, v5);
  _s9ViewModelCMa_3(0);
  swift_allocObject();
  v23 = v21;
  v39 = sub_1BD737C08(v14, v22, v35);
  sub_1BE051694();
  (*(v31 + 8))(v10, v5);
  (*(v30 + 8))(v18, v29);
  v36 = sub_1BD628CF0;
  v37 = v32;
  v38 = 0;
  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A6B0, &unk_1BE1098A0));
  v25 = sub_1BE04F894();
  v26 = [v25 navigationItem];
  [v26 setLargeTitleDisplayMode_];

  return v25;
}

id FinanceKitTransactionViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitTransactionViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitTransactionViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FinanceKitTransactionViewProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FinanceKitTransactionViewProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s9PassKitUI07FinanceB23TransactionViewProviderC04makeF10Controller13transactionID11institution010navigationI05styleSo06UIViewI0C10Foundation4UUIDV_So13FKInstitutionCSo012UINavigationI0CSo09PKPaymenta6DetailF5StyleVtFZ_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v47 = a2;
  v48 = a4;
  v50 = a3;
  v49 = sub_1BE049184();
  v44 = *(v49 - 8);
  v5 = v44;
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = sub_1BE04AFE4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  v19 = *(v12 + 16);
  v46 = &v41 - v17;
  v19(&v41 - v17, a1, v11, v16);
  v45 = v10;
  sub_1BE052BE4();
  type metadata accessor for NavigationController();
  v47 = swift_allocObject();
  *(v47 + 16) = v50;
  (v19)(v14, v18, v11);
  v20 = v19;
  v21 = *(v5 + 16);
  v21(v7, v10, v49);
  v22 = v21;
  _s9ViewModelCMa_3(0);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  v25 = sub_1BE049A94();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
  v27 = sub_1BE0495A4();
  (*(*(v27 - 8) + 56))(v23 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
  v29 = sub_1BE048F54();
  (*(*(v29 - 8) + 56))(v23 + v28, 1, 1, v29);
  v30 = v50;
  sub_1BE04B5C4();
  v31 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID;
  v32 = v42;
  v20(v23 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, v42, v11);
  (*(v12 + 56))(v23 + v31, 0, 1, v11);
  v33 = v43;
  v34 = v49;
  v22(v23 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution, v43, v49);
  *(v23 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_style) = v48;
  v35 = *(v44 + 8);
  v35(v33, v34);
  v36 = *(v12 + 8);
  v36(v32, v11);
  *(v23 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights) = MEMORY[0x1E69E7CC0];
  v54 = v23;
  sub_1BE051694();
  v35(v45, v34);
  v36(v46, v11);
  v51 = sub_1BD628CF0;
  v52 = v47;
  v53 = 0;
  v37 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A6B0, &unk_1BE1098A0));
  v38 = sub_1BE04F894();
  v39 = [v38 navigationItem];
  [v39 setLargeTitleDisplayMode_];

  return v38;
}

void *sub_1BD99BBCC()
{
  v1 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BD99BC78(uint64_t a1)
{
  v3 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BD99BCD0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_1BD99BD90(void *a1, void *a2)
{
  v5 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = 0;

  v7 = OBJC_IVAR___PKBarcodePassBoopProvider_pass;
  v8 = *(v2 + OBJC_IVAR___PKBarcodePassBoopProvider_pass);
  *(v2 + OBJC_IVAR___PKBarcodePassBoopProvider_pass) = 0;

  if (PKBarcodePassSharingEnabled())
  {
    v50 = a2;
    v9 = *(v2 + v7);
    *(v2 + v7) = a1;
    v10 = a1;

    v11 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v12 = *MEMORY[0x1E69BBB78];
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v55 = sub_1BD99C4DC;
    v56 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1BD99C4E4;
    v54 = &block_descriptor_228;
    v14 = _Block_copy(&aBlock);
    v15 = v56;
    v16 = v10;
    v17 = v12;
    v15, v18, v19, v20, v21, v22, v23, v24;
    [v11 registerDataRepresentationForTypeIdentifier:v17 visibility:0 loadHandler:v14];
    _Block_release(v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BE0B7020;
    *(v25 + 32) = v11;
    v26 = objc_allocWithZone(MEMORY[0x1E69DC640]);
    sub_1BD0E5E8C(0, &unk_1EBD5A478, 0x1E696ACA0);
    v27 = v11;
    v28 = sub_1BE052724();
    v25, v29, v30, v31, v32, v33, v34, v35;
    v36 = [v26 initWithItemProviders_];

    v37 = *(v2 + v5);
    *(v2 + v5) = v36;
    v38 = v36;

    if (v38)
    {
      v39 = swift_allocObject();
      *(v39 + 16) = v50;
      v55 = sub_1BD99C584;
      v56 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = sub_1BD99C274;
      v54 = &block_descriptor_6_3;
      v40 = _Block_copy(&aBlock);
      v41 = v56;
      v42 = v50;
      v41, v43, v44, v45, v46, v47, v48, v49;
      [v38 setMetadataProvider_];

      _Block_release(v40);
      v27 = v38;
    }
  }
}

void sub_1BD99C084(void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1BE052434();
  v7 = v6;
  v8 = sub_1BE052434();
  v16 = v9;
  if (v5 == v8 && v7 == v9)
  {
    v7, v9, v10, v11, v12, v13, v14, v15;
    v16, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v18 = sub_1BE053B84();
    v7, v19, v20, v21, v22, v23, v24, v25;
    v16, v26, v27, v28, v29, v30, v31, v32;
    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v40 = [objc_allocWithZone(MEMORY[0x1E696EC98]) init];
  if (!a2)
  {
LABEL_12:

LABEL_13:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v41 = [a2 snapshotOfFrontFace];
  if (v41)
  {
    v42 = v41;
    v43 = UIImagePNGRepresentation(v41);

    if (v43)
    {
      v44 = sub_1BE04AAC4();
      v46 = v45;

      v47 = objc_allocWithZone(MEMORY[0x1E696EC60]);
      sub_1BD041A38(v44, v46);
      v48 = sub_1BE04AAB4();
      v49 = sub_1BE052404();
      v50 = [v47 initWithData:v48 MIMEType:v49];

      sub_1BD1245AC(v44, v46, v51, v52, v53, v54, v55, v56);
      [v40 setImage_];
      *(a3 + 24) = sub_1BD0E5E8C(0, &qword_1EBD5A488, 0x1E696EC98);
      sub_1BD1245AC(v44, v46, v57, v58, v59, v60, v61, v62);

      *a3 = v40;
      return;
    }

    goto LABEL_12;
  }

  __break(1u);
}

id sub_1BD99C274(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1BE048964();
  v5 = a2;
  v4(v28);
  v3, v6, v7, v8, v9, v10, v11, v12;

  v13 = v29;
  if (v29)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v28, v29);
    v15 = *(v13 - 8);
    v16 = MEMORY[0x1EEE9AC00](v14);
    v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_1BE053B74();
    (*(v15 + 8))(v18, v13);
    __swift_destroy_boxed_opaque_existential_0(v28, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t sub_1BD99C448(void (*a1)(uint64_t, unint64_t, void), int a2, id a3)
{
  v4 = [a3 archiveData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE04AAC4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  a1(v6, v8, 0);
  sub_1BD030220(v6, v8, v9, v10, v11, v12, v13, v14);
  return 0;
}

id sub_1BD99C4E4(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  v5[2] = v4;
  sub_1BE048964();
  v6 = v3(sub_1BD99C8BC, v5);
  v2, v7, v8, v9, v10, v11, v12, v13;
  v5, v14, v15, v16, v17, v18, v19, v20;

  return v6;
}

void sub_1BD99C58C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1BE04A844();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1BE04AAB4();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id BarcodePassBoopProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BarcodePassBoopProvider.init()()
{
  *&v0[OBJC_IVAR___PKBarcodePassBoopProvider_pass] = 0;
  *&v0[OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BarcodePassBoopProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BarcodePassBoopProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BarcodePassBoopProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD99C8D8(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1BE04D214();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD99C9E0, 0, 0);
}

uint64_t sub_1BD99C9E0()
{
  v1 = [*(v0 + 152) paymentPass];
  *(v0 + 232) = v1;
  if (!v1)
  {
    v12 = 0;
    goto LABEL_41;
  }

  v2 = v1;
  v3 = [v2 devicePrimaryPaymentApplication];
  if (v3)
  {
    v4 = v3;
    if ([v3 state] == 7)
    {

      sub_1BE04D074();
      v5 = sub_1BE04D204();
      v6 = sub_1BE052C54();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 224);
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      if (v7)
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1BD026000, v5, v6, "PassEntityUtilities: Primary payment application is in lost mode", v11, 2u);
        MEMORY[0x1BFB45F20](v11, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v8, v9);
      goto LABEL_40;
    }
  }

  else
  {
    sub_1BE04D074();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C34();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 216);
    v17 = *(v0 + 160);
    v18 = *(v0 + 168);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v13, v14, "PassEntityUtilities: Primary payment application not found. Skipping state check.", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
  }

  if ([v2 isPeerPaymentPass])
  {

    v20 = [objc_opt_self() sharedService];
    if (!v20)
    {
      goto LABEL_27;
    }

    v21 = v20;
    v22 = [v20 targetDevice];
    if (v22)
    {
      v23 = [v22 account];
      swift_unknownObjectRelease();
      if (v23)
      {
        if ([v23 state] == 3)
        {
          sub_1BE04D074();
          v24 = sub_1BE04D204();
          v25 = sub_1BE052C34();
          v26 = os_log_type_enabled(v24, v25);
          v27 = *(v0 + 208);
          v28 = *(v0 + 160);
          v29 = *(v0 + 168);
          if (v26)
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            v31 = "PassEntityUtilities: Peer payment account is locked";
LABEL_37:
            _os_log_impl(&dword_1BD026000, v24, v25, v31, v30, 2u);
            MEMORY[0x1BFB45F20](v30, -1, -1);

LABEL_39:
            (*(v29 + 8))(v27, v28);
LABEL_40:
            v12 = 1;
            goto LABEL_41;
          }

          goto LABEL_38;
        }

        if (([objc_opt_self() peerPaymentPassIsProvisionedOnDeviceForAccount_] & 1) == 0)
        {
          sub_1BE04D074();
          v24 = sub_1BE04D204();
          v25 = sub_1BE052C34();
          v47 = os_log_type_enabled(v24, v25);
          v27 = *(v0 + 200);
          v28 = *(v0 + 160);
          v29 = *(v0 + 168);
          if (v47)
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            v31 = "PassEntityUtilities: Peer payment account is not set up";
            goto LABEL_37;
          }

LABEL_38:

          goto LABEL_39;
        }

        v12 = 0;
LABEL_41:

        v45 = *(v0 + 8);
        v46 = v12;
        goto LABEL_42;
      }

LABEL_27:
      v36 = (v0 + 192);
      sub_1BE04D074();
      v37 = sub_1BE04D204();
      v38 = sub_1BE052C34();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = "PassEntityUtilities: Peer payment account not found";
LABEL_33:
        _os_log_impl(&dword_1BD026000, v37, v38, v40, v39, 2u);
        MEMORY[0x1BFB45F20](v39, -1, -1);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v22);
  }

  v12 = [v2 isAppleCardPass];

  if (!v12)
  {

    goto LABEL_41;
  }

  v32 = [objc_opt_self() sharedInstance];
  *(v0 + 240) = v32;
  if (v32)
  {
    v33 = v32;
    v34 = [*(v0 + 152) uniqueID];
    *(v0 + 248) = v34;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1BD99D13C;
    v35 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58578, &qword_1BE103FE8);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD1F07A8;
    *(v0 + 104) = &block_descriptor_229;
    *(v0 + 112) = v35;
    [v33 accountForPassWithUniqueID:v34 completion:v0 + 80];
    v22 = (v0 + 16);

    return MEMORY[0x1EEE6DEC8](v22);
  }

  v36 = (v0 + 176);
  sub_1BE04D074();
  v37 = sub_1BE04D204();
  v38 = sub_1BE052C34();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "PassEntityUtilities: Apple Card account not found";
    goto LABEL_33;
  }

LABEL_34:
  v41 = *v36;
  v42 = *(v0 + 160);
  v43 = *(v0 + 168);

  (*(v43 + 8))(v41, v42);
  sub_1BE0484F4();
  sub_1BD1351C0();
  swift_allocError();
  sub_1BE0484E4();
  v44 = *(v0 + 232);
  swift_willThrow();

  v45 = *(v0 + 8);
  v46 = 0;
LABEL_42:

  return v45(v46);
}

uint64_t sub_1BD99D13C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD99D21C, 0, 0);
}

uint64_t sub_1BD99D21C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 144);

  if (v2)
  {
    if (([v2 blockAllAccountAccess] & 1) != 0 || objc_msgSend(v2, sel_state) == 3)
    {
      sub_1BE04D074();
      v3 = sub_1BE04D204();
      v4 = sub_1BE052C34();
      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 232);
      v7 = *(v0 + 184);
      v8 = *(v0 + 160);
      v9 = *(v0 + 168);
      if (v5)
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1BD026000, v3, v4, "PassEntityUtilities: Apple Card account is locked", v10, 2u);
        MEMORY[0x1BFB45F20](v10, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v7, v8);
      v20 = 1;
    }

    else
    {

      v20 = 0;
    }

    v18 = *(v0 + 8);
    v19 = v20;
  }

  else
  {
    sub_1BE04D074();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "PassEntityUtilities: Apple Card account not found", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);

    (*(v15 + 8))(v14, v16);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    v17 = *(v0 + 232);
    swift_willThrow();

    v18 = *(v0 + 8);
    v19 = 0;
  }

  return v18(v19);
}

uint64_t sub_1BD99D51C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1BE04D214();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD99D5DC, 0, 0);
}

uint64_t sub_1BD99D5DC()
{
  v1 = [*(v0 + 16) paymentPass];
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1BD99D6E4;
    v3 = *(v0 + 16);

    return sub_1BD99C8D8(v3);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(0);
  }
}

uint64_t sub_1BD99D6E4(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1BD99DB90;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v5 = sub_1BD99D810;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id sub_1BD99D810()
{
  v1 = *(v0 + 48);
  if (*(v0 + 72) == 1)
  {
LABEL_2:

    goto LABEL_3;
  }

  v5 = [v1 isPeerPaymentPass];
  v6 = *(v0 + 48);
  if (!v5)
  {
    if (([v6 isTransitPass] & 1) == 0 && !objc_msgSend(*(v0 + 48), sel_isEMoneyPass))
    {
      v34 = *(v0 + 48);
      v2 = [v34 isAppleBalancePass];

      goto LABEL_4;
    }

    v11 = *(v0 + 48);
    v12 = [v11 availableActions];

    if (v12)
    {
      v13 = sub_1BE052744();

      v14 = sub_1BD3FD0B8(v13);
      v13, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        if (v14 >> 62)
        {
LABEL_37:
          v29 = sub_1BE053704();
        }

        else
        {
          v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = 0;
        while (v29 != v30)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1BFB40900](v30, v14);
          }

          else
          {
            if (v30 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v31 = *(v14 + 8 * v30 + 32);
          }

          v32 = v31;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v33 = [v31 type];

          ++v30;
          if (v33 == 1)
          {
            v44 = *(v0 + 48);
            v14, v22, v23, v24, v25, v26, v27, v28;

            v2 = 1;
            goto LABEL_4;
          }
        }

        v43 = *(v0 + 48);
        v14, v22, v23, v24, v25, v26, v27, v28;

        goto LABEL_3;
      }
    }

    v1 = *(v0 + 48);
    goto LABEL_2;
  }

  v7 = [objc_opt_self() sharedService];
  if (v7)
  {
    v8 = v7;
    result = [v7 targetDevice];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = [result account];
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = *(v0 + 48);
      v2 = [objc_opt_self() canPerformPeerPaymentAction:1 account:v9];

      goto LABEL_4;
    }
  }

  sub_1BE04D074();
  v35 = sub_1BE04D204();
  v36 = sub_1BE052C34();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 40);
  v39 = *(v0 + 48);
  v40 = *(v0 + 24);
  v41 = *(v0 + 32);
  if (v37)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1BD026000, v35, v36, "PassEntityUtilities: Cannot add money to peer payment pass. Reason: Peer payment account not found", v42, 2u);
    MEMORY[0x1BFB45F20](v42, -1, -1);
  }

  else
  {
  }

  (*(v41 + 8))(v38, v40);
LABEL_3:
  v2 = 0;
LABEL_4:

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1BD99DB90()
{

  v1 = *(v0 + 8);

  return v1(0);
}

id sub_1BD99DC00(void *a1)
{
  if (![a1 passType])
  {
    return (PKBarcodePassSharingEnabled() != 0);
  }

  result = [a1 secureElementPass];
  if (result)
  {
    v3 = result;
    v4 = [result isAccessPass];

    if (v4)
    {
      return [a1 supportsFeatureForCurrentDevice_];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD99DCC0()
{
  v1 = [*(v0 + 16) paymentPass];
  if (v1)
  {
    v2 = v1;
    if ([v2 isAppleCardPass] & 1) != 0 || (objc_msgSend(v2, sel_isPeerPaymentPass) & 1) != 0 || (objc_msgSend(v2, sel_isAppleBalancePass) & 1) != 0 || (objc_msgSend(v2, sel_isTransitPass))
    {

LABEL_7:
      v3 = swift_task_alloc();
      *(v0 + 24) = v3;
      *v3 = v0;
      v3[1] = sub_1BD99DE40;
      v4 = *(v0 + 16);

      return sub_1BD99C8D8(v4);
    }

    v6 = [v2 isEMoneyPass];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1BD99DE40(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = (a1 & 1) == 0;
  }

  return v5(v6);
}

id sub_1BD99DF50(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_coordinator] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_viewController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_identifier];
  *v6 = 0xD000000000000018;
  *(v6 + 1) = 0x80000001BE143FF0;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_credential] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD99E114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_context);
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_credential);
  v7 = objc_allocWithZone(type metadata accessor for ProvisioningCarKeyCredentialViewController());
  v8 = v6;
  v9 = sub_1BE048964();
  sub_1BD5ADCE4(v9, v8);
  v11 = v10;
  v5, v12, v13, v14, v15, v16, v17, v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v19 = sub_1BE04C384();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE0B69E0;
  *(v22 + v21) = v8;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69B82A8], v19);
  sub_1BE04C3D4();
  swift_allocObject();
  v23 = sub_1BE04C394();
  v24 = type metadata accessor for CarKeyProvisioningUICoordinator();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v26 = &v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
  v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = v5;
  *&v25[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v23;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v26 + 1) = &off_1F3BAF9F0;
  swift_unknownObjectWeakAssign();
  v51.receiver = v25;
  v51.super_class = v24;
  sub_1BE048964();
  sub_1BE048964();
  v27 = objc_msgSendSuper2(&v51, sel_init);
  v28 = &v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
  swift_beginAccess();
  *(v28 + 1) = &off_1F3BC9660;
  swift_unknownObjectWeakAssign();
  v29 = *&v11[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator];
  *&v11[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator] = v27;
  v30 = v27;

  v31 = *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_coordinator);
  *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_coordinator) = v27;

  v32 = *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_viewController);
  *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_viewController) = v11;
  v33 = v11;

  v34 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  v35 = swift_allocObject();
  v35[2] = a1;
  v35[3] = a2;
  sub_1BE048964();
  sub_1BD31821C(v34, 5, sub_1BD37DBE4, v35);

  v23, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;
}

uint64_t sub_1BD99E4F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD99E534(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD99E584()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD99E5C0(void *a1, char a2)
{
  if (a2)
  {
    v4 = v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v14[0] = a1;
      v15 = 1;
      v8 = a1;
      sub_1BD865A00(v2, &off_1F3BC9670, v14, ObjectType, v6);
      swift_unknownObjectRelease();
      return sub_1BD12FF7C(v14);
    }
  }

  else
  {
    v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_provisionedPasses);
    *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_provisionedPasses) = a1;
    v10 = a1;

    v11 = v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = *(v11 + 8);
      v13 = swift_getObjectType();
      sub_1BD8659A4(v2, &off_1F3BC9670, v13, v12);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1BD99E7A0(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_skipPreflight) != 1)
  {
    v20 = sub_1BE04BBD4();
    v21 = swift_allocObject();
    v21[2] = v3;
    v21[3] = a1;
    v21[4] = a2;
    v41[4] = sub_1BD99F504;
    v42 = v21;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 1107296256;
    v41[2] = sub_1BD3CC8C0;
    v41[3] = &block_descriptor_230;
    v22 = _Block_copy(v41);
    v23 = v42;
    sub_1BE048964();
    v24 = v3;
    v23, v25, v26, v27, v28, v29, v30, v31;
    [v20 preflightWithRequirements:165 completionRequirements:165 completion:v22];
    _Block_release(v22);

    return;
  }

  sub_1BD99EA4C();
  v7 = v6;
  v9 = v8;
  *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry) = v6 & 1;
  v10 = sub_1BE04BBD4();
  v11 = [v10 associatedCredentials];

  if (v11)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
    v19 = sub_1BE052744();

    if (v7)
    {
LABEL_4:
      v19, v12, v13, v14, v15, v16, v17, v18;
      goto LABEL_11;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      goto LABEL_4;
    }
  }

  if (v19 >> 62)
  {
    v32 = sub_1BE053704();
  }

  else
  {
    v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19, v12, v13, v14, v15, v16, v17, v18;
  if (!v32)
  {
    if (!v9)
    {
      a1(0);
      return;
    }

    v33 = swift_allocObject();
    v33[2] = a1;
    v33[3] = a2;
    sub_1BE048964();
    sub_1BD99ED5C(v9, sub_1BD1B6F78, v33);
    v33, v34, v35, v36, v37, v38, v39, v40;
    goto LABEL_12;
  }

LABEL_11:
  a1(1);
LABEL_12:
}

void sub_1BD99EA4C()
{
  v35[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BE04B944();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v4 = [objc_allocWithZone(sub_1BE04C114()) init];
  v5 = sub_1BE04C104();

  sub_1BD0E5E8C(0, &unk_1EBD444B0, 0x1E69B90F0);
  sub_1BE048C84();
  v6 = sub_1BE052F24();
  v7 = sub_1BE04B934();
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    v5, v28, v29, v30, v31, v32, v33, v34;
LABEL_7:
    (*(v1 + 8))(v3, v0);

    return;
  }

  v35[0] = 0;
  v8 = [v7 meetsProvisioningRequirements:v6 missingRequirements:v35];
  swift_unknownObjectRelease();
  v16 = v35[0];
  if (!v8)
  {
    v5, v9, v10, v11, v12, v13, v14, v15;
    if (v16)
    {
      [v16 displayableError];

      (*(v1 + 8))(v3, v0);
      return;
    }

    goto LABEL_7;
  }

  v17 = [sub_1BE04B934() deviceRegion];
  swift_unknownObjectRelease();
  v18 = sub_1BE04B8E4();
  v19 = [v18 context];

  if (v19)
  {
    v20 = [v19 configuration];

    if (v20)
    {
      v5, v21, v22, v23, v24, v25, v26, v27;
      [v20 manualProvisioningEnabledForRegion_];

      (*(v1 + 8))(v3, v0);
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

void sub_1BD99ED5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1BE04A844();
  v8 = [objc_opt_self() errorWithUnderlyingError:v7 defaultSeverity:5];

  v9 = sub_1BE052404();
  [v8 addInternalDebugDescription_];

  sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
  v13 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(v8, 0, 0, 0, 0, a2, a3, a2, a3, 0, 0);
  v10 = v4 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(v13, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}