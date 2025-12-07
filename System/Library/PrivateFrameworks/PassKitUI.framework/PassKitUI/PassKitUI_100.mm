uint64_t sub_1BDA927DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v10 = *(a1 + 8);
  v11 = v2;
  sub_1BE048C84();
  [v3 coordinate];
  v5 = v4;
  v7 = v6;
  v8 = sub_1BD0DDEBC();
  return MEMORY[0x1BFB39F20](&v10, MEMORY[0x1E69E6158], v8, v5, v7);
}

void sub_1BDA9285C(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitTransactionMapView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - v8;
  v10 = (a1 + *(v3 + 32));
  v11 = *v10;
  v12 = *(v10 + 1);
  v53 = v11;
  v54 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if ((v52 & 1) == 0)
  {
    v50 = objc_opt_self();
    v13 = *MEMORY[0x1E69BB6F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98D0;
    v15 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v16 = sub_1BE052434();
    v17 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v16;
    *(inited + 48) = v18;
    v51 = v4;
    v19 = *v17;
    *(inited + 56) = *v17;
    v20 = sub_1BE052434();
    v21 = MEMORY[0x1E69BA440];
    *(inited + 64) = v20;
    *(inited + 72) = v22;
    v23 = *v21;
    *(inited + 80) = *v21;
    *(inited + 88) = sub_1BE052434();
    *(inited + 96) = v24;
    v25 = v15;
    v26 = v19;
    v27 = v23;
    v28 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BDA93FA4(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
    v29 = sub_1BE052224();
    v28, v30, v31, v32, v33, v34, v35, v36;
    [v50 subject:v13 sendEvent:v29];

    v37 = sub_1BE0528D4();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    sub_1BDA939E4(a1, &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1BE0528A4();
    v38 = sub_1BE052894();
    v39 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v40 = swift_allocObject();
    v41 = MEMORY[0x1E69E85E0];
    v40[2] = v38;
    v40[3] = v41;
    sub_1BDA93A48(v6, v40 + v39);
    v42 = sub_1BD122C00(0, 0, v9, &unk_1BE113F98, v40);
    v42, v43, v44, v45, v46, v47, v48, v49;
  }
}

uint64_t sub_1BDA92BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  v4[7] = swift_task_alloc();
  v5 = sub_1BE0491B4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1BE0528A4();
  v4[12] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BDA92D20, v7, v6);
}

uint64_t sub_1BDA92D20()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for FinanceKitTransactionMapView(0);
  *(v0 + 120) = v2;
  v3 = (v1 + *(v2 + 24));
  v4 = *v3;
  *(v0 + 186) = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 128) = v5;
  *(v0 + 24) = v5;
  *(v0 + 184) = 1;
  sub_1BE048964();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  *(v0 + 144) = sub_1BE052894();
  v7 = sub_1BE052844();
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BDA92E1C, v7, v6);
}

uint64_t sub_1BDA92E1C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  sub_1BD0DE19C(v4 + *(v5 + 24), v3, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v13 = *(v0 + 56);
    *(v0 + 144), v6, v7, v8, v9, v10, v11, v12;
    sub_1BD0DE53C(v13, &qword_1EBD3F7C0, &unk_1BE0D6570);
    v14 = *(v0 + 104);
    v15 = *(v0 + 112);

    return MEMORY[0x1EEE6DFA0](sub_1BD51F774, v14, v15);
  }

  else
  {
    (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
    v16 = swift_task_alloc();
    *(v0 + 168) = v16;
    *v16 = v0;
    v16[1] = sub_1BDA92F7C;

    return sub_1BD7369D4();
  }
}

uint64_t sub_1BDA92F7C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1BDA930A4, v4, v3);
}

uint64_t sub_1BDA930A4()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = [objc_allocWithZone(PKMerchantMapViewController) initWithMapItem:v1 configOptions:129];
    if (!v2)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v10 = v2;
    v11 = *(v0 + 120);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = *(v0 + 48);
    *(v0 + 144), v3, v4, v5, v6, v7, v8, v9;
    (*(v15 + *(v11 + 20)))(v10);

    (*(v13 + 8))(v12, v14);
  }

  else
  {
    v16 = *(v0 + 144);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v2 = sub_1BD51F774;

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

double sub_1BDA931C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v19 = 1;
  sub_1BDA93308(a1, &v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v27[6] = v17;
  sub_1BD0DE19C(&v20, &v10, &qword_1EBD5DB98, &qword_1BE113F28);
  sub_1BD0DE53C(v27, &qword_1EBD5DB98, &qword_1BE113F28);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v5 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v5;
  *(a2 + 113) = *&v18[96];
  v6 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v6;
  v7 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  v8 = v19;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 128) = *&v18[111];
  *(a2 + 65) = v7;
  result = 8.0;
  *(a2 + 136) = xmmword_1BE0F0EB0;
  *(a2 + 152) = xmmword_1BE0F0EB0;
  *(a2 + 168) = 0;
  return result;
}

void sub_1BDA93308(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - v7;
  v9 = *(a1 + 16);
  v67 = *(a1 + 8);
  v68 = v9;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v10 = sub_1BE0506C4();
  v12 = v11;
  v62 = v13;
  v64 = v14;
  KeyPath = swift_getKeyPath();
  v15 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  sub_1BD0DE19C(a1 + *(v15 + 24), v5, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v16 = sub_1BE0491B4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v5, 1, v16) == 1)
  {
    sub_1BD0DE53C(v5, &qword_1EBD3F7C0, &unk_1BE0D6570);
    v18 = sub_1BE049294();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  }

  else
  {
    sub_1BE0491A4();
    (*(v17 + 8))(v5, v16);
    v19 = sub_1BE049294();
    if ((*(*(v19 - 8) + 48))(v8, 1, v19) != 1)
    {
      sub_1BD0DE53C(v8, &qword_1EBD48358, &qword_1BE0DBE98);
      v25 = sub_1BE051574();
      v26 = sub_1BE050324();
      v27 = swift_getKeyPath();
      v28 = [objc_opt_self() tertiaryLabelColor];
      v24 = sub_1BE0511C4();
      v23 = swift_getKeyPath();
      v20 = v25;
      sub_1BE048964();
      v21 = v27;
      sub_1BE048964();
      v22 = v26;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(v8, &qword_1EBD48358, &qword_1BE0DBE98);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_6:
  v29 = (v62 & 1);
  LOBYTE(v67) = v62 & 1;
  v66 = 0;
  v65 = 1;
  sub_1BD0D7F18(v10, v12, v62 & 1);
  v30 = v64;
  sub_1BE048C84();
  v31 = KeyPath;
  sub_1BE048964();
  sub_1BDA79E54(v20);
  sub_1BDA79EC4(v20, v21, v22, v23, v24, v32, v33, v34);
  v35 = v67;
  v36 = v66;
  v37 = v65;
  v38 = v61;
  *v61 = v10;
  v38[1] = v12;
  *(v38 + 16) = v35;
  v38[3] = v30;
  v38[4] = v31;
  v38[5] = 1;
  *(v38 + 48) = v36;
  v38[7] = 0;
  *(v38 + 64) = v37;
  v38[9] = v20;
  v38[10] = v21;
  v38[11] = v22;
  v38[12] = v23;
  v38[13] = v24;
  sub_1BDA79EC4(v20, v21, v22, v23, v24, v39, v40, v41);
  sub_1BD0DDF10(v10, v12, v29, v42, v43, v44, v45, v46);
  v31, v47, v48, v49, v50, v51, v52, v53;
  v30, v54, v55, v56, v57, v58, v59, v60;
}

unint64_t sub_1BDA93764()
{
  result = qword_1EBD5DB80;
  if (!qword_1EBD5DB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB70, &qword_1BE113F10);
    sub_1BD0DE4F4(&qword_1EBD5DB88, &qword_1EBD5DB90, &qword_1BE113F20, MEMORY[0x1E6985CC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DB80);
  }

  return result;
}

unint64_t sub_1BDA9381C()
{
  result = qword_1EBD5DBA8;
  if (!qword_1EBD5DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DBA0, &qword_1BE113F30);
    sub_1BD0DE4F4(&qword_1EBD5DBB0, &qword_1EBD5DBB8, &unk_1BE113F38, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DBA8);
  }

  return result;
}

unint64_t sub_1BDA93900()
{
  result = qword_1EBD5DBC0;
  if (!qword_1EBD5DBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB58, &qword_1BE113EE8);
    sub_1BD0DE4F4(&qword_1EBD5DBC8, &qword_1EBD5DBD0, &unk_1BE113F48, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DBC0);
  }

  return result;
}

uint64_t sub_1BDA939E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionMapView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA93A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionMapView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BDA93AAC()
{
  v1 = *(type metadata accessor for FinanceKitTransactionMapView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BDA9285C(v2);
}

BOOL sub_1BDA93B14(void *a1, void *a2)
{
  v4 = sub_1BE0491B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DBE0, &qword_1BE114000);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  if ((sub_1BE053074() & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v25 = v7;
  v14 = v5;
  v15 = *(type metadata accessor for FinanceKitTransactionMapView.ViewModel(0) + 24);
  v16 = *(v11 + 48);
  sub_1BD0DE19C(a1 + v15, v13, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v17 = v14;
  sub_1BD0DE19C(a2 + v15, &v13[v16], &qword_1EBD3F7C0, &unk_1BE0D6570);
  v18 = *(v14 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v16], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD3F7C0, &unk_1BE0D6570);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1BD0DE19C(v13, v10, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if (v18(&v13[v16], 1, v4) == 1)
  {
    (*(v14 + 8))(v10, v4);
LABEL_10:
    sub_1BD0DE53C(v13, &qword_1EBD5DBE0, &qword_1BE114000);
    return 0;
  }

  v20 = *(v14 + 32);
  v21 = v25;
  v20(v25, &v13[v16], v4);
  sub_1BDA93FA4(&qword_1EBD5DBE8, MEMORY[0x1E69676D0], MEMORY[0x1E69676D8]);
  v22 = sub_1BE052334();
  v23 = *(v17 + 8);
  v23(v21, v4);
  v23(v10, v4);
  sub_1BD0DE53C(v13, &qword_1EBD3F7C0, &unk_1BE0D6570);
  return (v22 & 1) != 0;
}

uint64_t sub_1BDA93EB4(uint64_t a1)
{
  v4 = *(type metadata accessor for FinanceKitTransactionMapView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BDA92BF0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1BDA93FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BDA93FEC()
{
  result = qword_1EBD5DBF0;
  if (!qword_1EBD5DBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DBF8, &qword_1BE114008);
    sub_1BD0DE4F4(&qword_1EBD5DC00, &qword_1EBD5DC08, qword_1BE114010, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DBF0);
  }

  return result;
}

unint64_t sub_1BDA940A0()
{
  result = qword_1EBD5DC10;
  if (!qword_1EBD5DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DC10);
  }

  return result;
}

uint64_t sub_1BDA94114()
{
  v1 = [*(v0 + 16) paymentPass];
  if (v1)
  {
    v2 = v1;
    if ([v2 isAppleCardPass] & 1) != 0 || objc_msgSend(v2, sel_isPeerPaymentPass) || (objc_msgSend(v2, sel_isAppleBalancePass) & 1) != 0 || (objc_msgSend(v2, sel_isTransitPass))
    {

LABEL_7:
      v3 = swift_task_alloc();
      *(v0 + 24) = v3;
      *v3 = v0;
      v3[1] = sub_1BDA96350;
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

uint64_t sub_1BDA942B4()
{
  v1 = [*(v0 + 16) paymentPass];
  if (v1)
  {
    v2 = v1;
    if ([v2 isAppleCardPass] & 1) != 0 || objc_msgSend(v2, sel_isPeerPaymentPass) || (objc_msgSend(v2, sel_isAppleBalancePass) & 1) != 0 || (objc_msgSend(v2, sel_isTransitPass))
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

uint64_t sub_1BDA94434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BD13526C;

  return sub_1BD5426E8(a2, a3, 50, 1, &unk_1BE1142A0, 0);
}

unint64_t sub_1BDA94510()
{
  result = qword_1EBD5DC18;
  if (!qword_1EBD5DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DC18);
  }

  return result;
}

uint64_t sub_1BDA94564(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD1337F4;

  return sub_1BD5417D4(1, &unk_1BE114298, 0);
}

unint64_t sub_1BDA94628()
{
  result = qword_1EBD5DC20;
  if (!qword_1EBD5DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DC20);
  }

  return result;
}

unint64_t sub_1BDA94680()
{
  result = qword_1EBD5DC28;
  if (!qword_1EBD5DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DC28);
  }

  return result;
}

uint64_t sub_1BDA9470C()
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
  __swift_allocate_value_buffer(v6, qword_1EBDAB9A8);
  __swift_project_value_buffer(v6, qword_1EBDAB9A8);
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

uint64_t sub_1BDA94920(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v2[43] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v2[44] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v4 = sub_1BE04A3B4();
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v5 = sub_1BE04CFC4();
  v2[52] = v5;
  v2[53] = *(v5 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v6 = sub_1BE04CFE4();
  v2[56] = v6;
  v2[57] = *(v6 - 8);
  v2[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA94B44, 0, 0);
}

uint64_t sub_1BDA94B44(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:ViewBalanceIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = v1[57];
  v6 = v1[58];
  v9 = v1[55];
  v8 = v1[56];
  v11 = v1[53];
  v10 = v1[54];
  v12 = v1[52];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[59] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  sub_1BE048874();
  v13 = v1[4];
  v1[60] = v13;
  v14 = v13;
  sub_1BD030458((v1 + 2));
  v15 = swift_task_alloc();
  v1[61] = v15;
  *v15 = v1;
  v15[1] = sub_1BDA94D50;

  return sub_1BD99DCA0(v14);
}

uint64_t sub_1BDA94D50(char a1)
{
  v4 = *v2;
  *(*v2 + 496) = v1;

  if (v1)
  {
    v5 = sub_1BDA95258;
  }

  else
  {

    *(v4 + 513) = a1 & 1;
    v5 = sub_1BDA94E84;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BDA94E84(uint64_t a1)
{
  if (*(v1 + 513) != 1)
  {
    v11 = *(v1 + 472);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
    swift_willThrow();
LABEL_11:
    sub_1BDA9562C(v11);
    v11, v41, v42, v43, v44, v45, v46, v47;

    v48 = *(v1 + 8);

    return v48();
  }

  sub_1BE04A3A4();
  sub_1BE048874();
  v2 = *(v1 + 224);
  *(v1 + 144) = *(v1 + 208);
  *(v1 + 160) = v2;
  v3 = *(v1 + 256);
  *(v1 + 176) = *(v1 + 240);
  *(v1 + 192) = v3;
  sub_1BD030458(v1 + 144);
  sub_1BE048874();
  sub_1BE0487C4();
  sub_1BD030458(v1 + 80);
  if (sub_1BD03F124(*(v1 + 512)) == 0x726143656C707061 && v4 == 0xE900000000000064)
  {
    0xE900000000000064, 0xE900000000000064, v5, v6, v7, v8, v9, v10;
LABEL_7:
    v21 = *(v1 + 400);
    v22 = *(v1 + 408);
    v23 = *(v1 + 384);
    v24 = *(v1 + 392);
    sub_1BDA95918(*(v1 + 344));
    (*(v24 + 8))(v22, v23);
    (*(v24 + 32))(v22, v21, v23);
    goto LABEL_9;
  }

  v12 = v4;
  v13 = sub_1BE053B84();
  v12, v14, v15, v16, v17, v18, v19, v20;
  if (v13)
  {
    goto LABEL_7;
  }

  sub_1BE052434();
  sub_1BE04A394();
  v25 = sub_1BE052434();
  MEMORY[0x1BFB37400](v25);
  sub_1BE048874();
  v26 = *(v1 + 272);
  v27 = *(v1 + 280);
  sub_1BE048C84();
  sub_1BD030458(v1 + 272);
  MEMORY[0x1BFB3F610](v26, v27);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1BFB37410](47, 0xE100000000000000);
LABEL_9:
  v35 = *(v1 + 360);
  v36 = *(v1 + 368);
  v37 = *(v1 + 352);
  sub_1BE04A364();
  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    sub_1BD226BBC(*(v1 + 352));
    v11 = *(v1 + 472);
    v38 = *(v1 + 408);
    v39 = *(v1 + 384);
    v40 = *(v1 + 392);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v40 + 8))(v38, v39);
    goto LABEL_11;
  }

  (*(*(v1 + 368) + 32))(*(v1 + 376), *(v1 + 352), *(v1 + 360));
  v50 = swift_task_alloc();
  *(v1 + 504) = v50;
  *v50 = v1;
  v50[1] = sub_1BDA9532C;
  v51 = *(v1 + 376);

  return sub_1BD0D7A54(v51);
}

uint64_t sub_1BDA95258()
{
  v1 = *(v0 + 472);

  sub_1BDA9562C(v1);
  v1, v2, v3, v4, v5, v6, v7, v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BDA9532C(char a1)
{
  *(*v1 + 514) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BDA9542C, 0, 0);
}

uint64_t sub_1BDA9542C(uint64_t a1)
{
  if (*(v1 + 514) == 1)
  {
    v2 = *(v1 + 472);
    v3 = *(v1 + 408);
    v5 = *(v1 + 384);
    v4 = *(v1 + 392);
    v6 = *(v1 + 368);
    v7 = *(v1 + 376);
    v8 = *(v1 + 360);
    sub_1BE048774();
    (*(v6 + 8))(v7, v8);
    (*(v4 + 8))(v3, v5);
    sub_1BDA9562C(v2);
    v2, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    (*(*(v1 + 368) + 8))(*(v1 + 376), *(v1 + 360));
    v17 = *(v1 + 472);
    v18 = *(v1 + 408);
    v19 = *(v1 + 384);
    v20 = *(v1 + 392);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v20 + 8))(v18, v19);
    sub_1BDA9562C(v17);
    v17, v21, v22, v23, v24, v25, v26, v27;
  }

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_1BDA9562C(void *a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:ViewBalanceIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BDA95918(uint64_t a1)
{
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v1 = sub_1BE052434();
  MEMORY[0x1BFB37400](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9A8, &qword_1BE0BFBE0);
  sub_1BE04A324();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  sub_1BE052434();
  v3 = v2;
  sub_1BE048874();
  v4 = v20[1];
  sub_1BE048C84();
  sub_1BD030458(v20);
  sub_1BE04A2F4();
  v3, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  return sub_1BE04A344();
}

uint64_t sub_1BDA95A84@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD370D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB9A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BDA95B2C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DC40, &qword_1BE114258);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DC48, &qword_1BE114260);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DC50, &qword_1BE114290);
  sub_1BE048CC4();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BDA95CC8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BDA94920(a1, v4);
}

uint64_t sub_1BDA95D68@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BDA95DEC();
  *a2 = result;
  return result;
}

uint64_t sub_1BDA95D90(uint64_t a1)
{
  v2 = sub_1BD15CFA8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BDA95DEC()
{
  v0 = sub_1BE048D74();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v33 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v25 - v5;
  v6 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1BE04A874();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  v26 = sub_1BE04A884();
  v15 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298, &qword_1BE0FE830);
  v28 = v18;
  sub_1BE04A864();
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_1EBDAB400);
  v20 = *(v8 + 16);
  v20(v10, v19, v7);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v15 + 56))(v14, 0, 1, v26);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  sub_1BE052354();
  v20(v10, v19, v7);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v21 = v29;
  sub_1BE048664();
  v22 = sub_1BE048654();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v31 + 104))(v33, *MEMORY[0x1E695A500], v32);
  sub_1BDA940A0();
  sub_1BD0304AC();
  return sub_1BE0488B4();
}

id sub_1BDA96378()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBD5DC58 = result;
  return result;
}

uint64_t sub_1BDA963D0()
{
  v0 = sub_1BE04CF34();
  __swift_allocate_value_buffer(v0, qword_1EBDAB9C0);
  __swift_project_value_buffer(v0, qword_1EBDAB9C0);
  if (qword_1EBD370E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBD5DC58;
  return sub_1BE04CF24();
}

uint64_t sub_1BDA96478()
{
  v0 = sub_1BE04CF34();
  __swift_allocate_value_buffer(v0, qword_1EBDAB9D8);
  __swift_project_value_buffer(v0, qword_1EBDAB9D8);
  if (qword_1EBD370E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBD5DC58;
  return sub_1BE04CF24();
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EBD6AB78 == -1)
  {
    if (qword_1EBD6AB80)
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
    if (qword_1EBD6AB80)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EBD6AB70 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals_587 < v11;
    if (_MergedGlobals_587 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EBD6AB64 > a3)
      {
        return 1;
      }

      if (dword_1EBD6AB64 >= a3)
      {
        return dword_1EBD6AB68 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals_587 < a2;
  if (_MergedGlobals_587 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBD6AB80;
  if (qword_1EBD6AB80)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBD6AB80 = MEMORY[0x1EEE9AC60];
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
                          v14 = MEMORY[0x1BFB452C0](v13);
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
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals_587, &dword_1EBD6AB64, &dword_1EBD6AB68);
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

__CFString *PKAccessoryDeviceViewStateToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E80109E0[a1];
  }
}

void sub_1BDA97A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKUINetworkImageForCredentialType(uint64_t a1)
{
  v2 = 0;
  switch(a1)
  {
    case 1:
      v3 = @"AmEx_Small_Logo";
      goto LABEL_25;
    case 2:
      v3 = @"Discover_Small_Logo";
      v4 = @"Discover_Small_Logo_Dark";
      goto LABEL_26;
    case 3:
      v3 = @"Mastercard_Small_Logo";
      goto LABEL_25;
    case 4:
    case 16:
    case 17:
      v3 = @"Visa_Small_Logo";
      v4 = @"Visa_Small_Logo_Dark";
      goto LABEL_26;
    case 5:
    case 7:
    case 8:
    case 20:
    case 21:
    case 23:
    case 27:
      goto LABEL_27;
    case 6:
      v3 = @"JCB_Small_Logo";
      goto LABEL_25;
    case 9:
      v3 = @"CartesBancaires_Small_Logo";
      goto LABEL_25;
    case 10:
      v3 = @"Dankort_Small_Logo";
      v4 = @"Dankort_Small_Logo_Dark";
      goto LABEL_26;
    case 11:
      v3 = @"ChinaUnionPay_Small_Logo";
      goto LABEL_25;
    case 12:
      v3 = @"Eftpos_Small_Logo";
      v4 = @"Eftpos_Small_Logo_Dark";
      goto LABEL_26;
    case 13:
      v3 = @"Interac_Small_Logo";
      goto LABEL_25;
    case 14:
      v3 = @"Mada_Small_Logo";
      v4 = @"Mada_Small_Logo_Dark";
      goto LABEL_26;
    case 15:
      v3 = @"Maestro_Small_Logo";
      v4 = @"Maestro_Small_Logo_Dark";
      goto LABEL_26;
    case 18:
      v3 = @"Girocard_Small_Logo";
      v4 = @"Girocard_Small_Logo_Dark";
      goto LABEL_26;
    case 19:
      v3 = @"Mir_Small_Logo";
      v4 = @"Mir_Small_Logo_Dark";
      goto LABEL_26;
    case 22:
      v3 = @"PostFinance_Small_Logo";
      goto LABEL_25;
    case 24:
      v3 = @"BankAxept_Small_Logo";
      v4 = @"BankAxept_Small_Logo_Dark";
      goto LABEL_26;
    case 25:
      v3 = @"Meeza_Small_Logo";
      goto LABEL_25;
    case 26:
      v3 = @"NAPAS_Small_Logo";
      v4 = @"NAPAS_Small_Logo_Dark";
      goto LABEL_26;
    case 28:
      v3 = @"Himyan_Small_Logo";
      v4 = @"Himyan_Small_Logo_Dark";
      goto LABEL_26;
    case 29:
      v3 = @"Jaywan_Small_Logo";
LABEL_25:
      v4 = 0;
      goto LABEL_26;
    case 30:
      v3 = @"MyDebit_Small_Logo";
      v4 = @"MyDebit_Small_Logo_Dark";
      goto LABEL_26;
    default:
      if (a1 != 112)
      {
        goto LABEL_27;
      }

      v3 = @"Elo_Small_Logo";
      v4 = @"Elo_Small_Logo_Dark";
LABEL_26:
      v2 = PKUIDynamicImageNamed(v3, v4);
LABEL_27:

      return v2;
  }
}

void sub_1BDA9A1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDA9CD14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDA9ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDA9FCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA1D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA1EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA20C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA2A20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDAA2E1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDAA36AC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDAA4040(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1BDAA4470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA52CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAA6110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA65F4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDAA6DA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAA7710(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDAA7CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA8090(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDAA8890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA9650(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void PKPaymentSetupApplyContextAppearance(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a1 == 4 || PKPaymentSetupForceBridgeAppearance())
  {
    v3 = PKBridgeAppearanceGetAppearanceSpecifier();
LABEL_4:
    v4 = v3;
    PKAppearanceApplyToContainer(v3, v6);

    v5 = v6;
    goto LABEL_5;
  }

  v5 = v6;
  if (a1 == 5)
  {
    v3 = PKBridgeAppearanceGetSetupAppearanceSpecifier();
    goto LABEL_4;
  }

LABEL_5:
}

void sub_1BDAABA64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDAAC62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAACF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAAD374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAADC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKEventTileIssuerActionURLForTypeInDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      if (a1 != 9)
      {
        if (a1 == 10)
        {
          [v3 venueEmailURL];
        }

        else
        {
          [v3 venueWebsiteURL];
        }

        goto LABEL_16;
      }

      v5 = [v3 venuePhoneNumberURL];
    }

    else
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          [v3 purchaseParkingURL];
        }

        else
        {
          [v3 partnerAddOnURL];
        }

        goto LABEL_16;
      }

      v5 = [v3 accessibilityURL];
    }
  }

  else if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        [v3 directionsInformationURL];
      }

      else
      {
        [v3 merchandiseURL];
      }

      goto LABEL_16;
    }

    v5 = [v3 parkingInformationURL];
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        [v3 orderFoodURL];
      }

      else
      {
        [v3 transitInformationURL];
      }

      v5 = LABEL_16:;
      goto LABEL_25;
    }

    v5 = [v3 bagPolicyURL];
  }

LABEL_25:
  v6 = v5;

  return v6;
}

void sub_1BDAAEA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v26 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDAAF794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&a24);
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak(&a37);
  objc_destroyWeak((v38 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDAB11B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v26 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDAB29B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void PKAppearanceApplyToRemoteUIObjectModel(void *a1, void *a2)
{
  v148 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  [v4 setNextButtonStyle:2];
  v97 = v4;
  [v4 allPages];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v134 = 0u;
  v103 = [obj countByEnumeratingWithState:&v131 objects:v145 count:16];
  if (v103)
  {
    v102 = *v132;
    v5 = *MEMORY[0x1E69DE3A8];
    v6 = @"RUIWebContainerView";
    v110 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v132 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v104 = v7;
        v8 = *(*(&v131 + 1) + 8 * v7);
        if ([v8 hasWebView])
        {
          v9 = [v8 webViewOM];
          [v9 webView];
          v11 = v10 = v8;

          v12 = [v11 scrollView];
          [v12 setDecelerationRate:v5];

          [v11 evaluateJavaScript:@"document.body.style.webkitUserSelect='none';" completionHandler:0];
          v13 = MEMORY[0x1E696AEC0];
          v14 = [v3 foregroundColor];
          v15 = [v14 styleString];
          v16 = [v13 stringWithFormat:@"document.body.style.backgroundColor='%@'", v15];;
          [v11 evaluateJavaScript:v16 completionHandler:0];

          v17 = MEMORY[0x1E696AEC0];
          v18 = [v3 textColor];
          v19 = [v18 styleString];
          v20 = [v17 stringWithFormat:@"document.body.style.color='%@'", v19];;
          [v11 evaluateJavaScript:v20 completionHandler:0];

          v21 = [v11 scrollView];
          if ([v3 hasDarkAppearance])
          {
            v22 = 2;
          }

          else
          {
            v22 = 0;
          }

          [v21 setIndicatorStyle:v22];

          v23 = [v3 tintColor];
          [v11 setTintColor:v23];

          v8 = v10;
        }

        PKAppearanceApplyToContainer(v3, v8);
        v24 = [v8 titleLabel];
        PKAppearanceApplyToContainer(v3, v24);

        if (![v8 hasTableView])
        {
          if ([v8 hasPasscodeView])
          {
            v85 = [v8 passcodeViewOM];
            v86 = [v85 passcodeView];
            v87 = [v3 backgroundColor];
            [v86 setBackgroundColor:v87];

            v88 = [v8 passcodeViewOM];
            v89 = [v3 textColor];
            [v88 setForegroundColor:v89];

            v90 = [v8 passcodeViewOM];
            [v90 setKeyboardAppearance:{objc_msgSend(v3, "hasDarkAppearance")}];
            goto LABEL_72;
          }

          if ([v8 hasSpinnerView])
          {
            v90 = [v8 spinnerViewOM];
            v91 = [v3 textColor];
            [v90 setSpinnerColor:v91];

LABEL_72:
          }

          v83 = [v8 containerView];
          v84 = [v3 backgroundColor];
          [v83 setBackgroundColor:v84];
          goto LABEL_74;
        }

        v101 = v8;
        v25 = [v8 tableViewOM];
        v26 = [v25 tableView];
        v27 = v26;
        if (v3)
        {
          [v26 pk_applyAppearance:v3];
        }

        v99 = v27;
        v100 = v25;
        v28 = [v25 sections];
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v105 = v28;
        v107 = [v28 countByEnumeratingWithState:&v127 objects:v144 count:16];
        if (v107)
        {
          v106 = *v128;
          do
          {
            v29 = 0;
            do
            {
              if (*v128 != v106)
              {
                objc_enumerationMutation(v105);
              }

              v108 = v29;
              v109 = *(*(&v127 + 1) + 8 * v29);
              v30 = [v109 rows];
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v111 = v30;
              v116 = [v30 countByEnumeratingWithState:&v123 objects:v143 count:16];
              if (v116)
              {
                v115 = *v124;
                do
                {
                  v31 = 0;
                  do
                  {
                    if (*v124 != v115)
                    {
                      objc_enumerationMutation(v111);
                    }

                    v118 = v31;
                    v32 = *(*(&v123 + 1) + 8 * v31);
                    v33 = [v32 attributes];
                    v34 = [v33 objectForKey:@"class"];

                    v35 = [v32 tableCell];
                    v117 = v34;
                    if ([v34 isEqualToString:@"label"])
                    {
                      PKAppearanceApplyToContainer(v3, v35);
                      v36 = [v32 attributes];
                      v37 = [v36 mutableCopy];

                      v38 = [v3 textColor];
                      v39 = [v38 styleString];
                      [v37 setObject:v39 forKey:@"labelColor"];

                      v40 = [v37 objectForKey:@"radioGroup"];

                      if (v40)
                      {
                        v41 = [v3 tintColor];
                        v42 = [v41 styleString];
                        [v37 setObject:v42 forKey:@"radioGroupSelectedColor"];
                      }

                      [v32 setAttributes:v37];
                    }

                    else if (([v34 isEqualToString:@"htmlLabel"] & 1) != 0 || objc_msgSend(v34, "isEqualToString:", @"htmlLink"))
                    {
                      v43 = [v3 foregroundColor];
                      [v35 setBackgroundColor:v43];

                      v44 = v32;
                      v45 = [v44 attributes];
                      v46 = [v45 objectForKey:@"class"];

                      v114 = v46;
                      v113 = v44;
                      if (([v46 isEqualToString:@"htmlLabel"] & 1) != 0 || objc_msgSend(v46, "isEqualToString:", @"htmlLink"))
                      {
                        v47 = [v44 tableCell];
                        v139 = 0u;
                        v140 = 0u;
                        v141 = 0u;
                        v142 = 0u;
                        v48 = [v47 contentView];
                        v49 = [v48 subviews];

                        v122 = v49;
                        v50 = [v49 countByEnumeratingWithState:&v139 objects:v147 count:16];
                        v112 = v47;
                        if (v50)
                        {
                          v51 = v50;
                          v52 = 0;
                          v53 = *v140;
                          v119 = *v140;
                          v120 = v35;
                          do
                          {
                            v54 = 0;
                            v121 = v51;
                            do
                            {
                              if (*v140 != v53)
                              {
                                objc_enumerationMutation(v122);
                              }

                              v55 = *(*(&v139 + 1) + 8 * v54);
                              NSClassFromString(&v6->isa);
                              if (objc_opt_isKindOfClass())
                              {
                                v56 = v6;
                                v57 = v55;
                                v135 = 0u;
                                v136 = 0u;
                                v137 = 0u;
                                v138 = 0u;
                                v58 = [v57 subviews];
                                v59 = [v58 countByEnumeratingWithState:&v135 objects:v146 count:16];
                                if (v59)
                                {
                                  v60 = v59;
                                  v61 = *v136;
                                  do
                                  {
                                    for (i = 0; i != v60; ++i)
                                    {
                                      if (*v136 != v61)
                                      {
                                        objc_enumerationMutation(v58);
                                      }

                                      v63 = *(*(&v135 + 1) + 8 * i);
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v64 = v63;

                                        v52 = v64;
                                      }
                                    }

                                    v60 = [v58 countByEnumeratingWithState:&v135 objects:v146 count:16];
                                  }

                                  while (v60);
                                }

                                v6 = v56;
                                v53 = v119;
                                v35 = v120;
                                v51 = v121;
                              }

                              ++v54;
                            }

                            while (v54 != v51);
                            v51 = [v122 countByEnumeratingWithState:&v139 objects:v147 count:16];
                          }

                          while (v51);
                        }

                        else
                        {
                          v52 = 0;
                        }

                        v3 = v110;
                      }

                      else
                      {
                        v52 = 0;
                      }

                      v65 = MEMORY[0x1E696AEC0];
                      v66 = [v3 foregroundColor];
                      v67 = [v66 styleString];
                      v68 = [v65 stringWithFormat:@"document.body.style.backgroundColor='%@'", v67];;
                      [v52 evaluateJavaScript:v68 completionHandler:0];

                      v69 = MEMORY[0x1E696AEC0];
                      v70 = [v3 textColor];
                      v71 = [v70 styleString];
                      v72 = [v69 stringWithFormat:@"document.body.style.color='%@'", v71];;
                      [v52 evaluateJavaScript:v72 completionHandler:0];

                      v73 = [v52 scrollView];
                      if ([v3 hasDarkAppearance])
                      {
                        v74 = 2;
                      }

                      else
                      {
                        v74 = 0;
                      }

                      [v73 setIndicatorStyle:v74];

                      v75 = [v3 tintColor];
                      [v52 setTintColor:v75];
                    }

                    else
                    {
                      PKAppearanceApplyToContainer(v3, v35);
                    }

                    v76 = objc_alloc_init(MEMORY[0x1E69DD250]);
                    v77 = [v3 tableViewCellHighlightColor];
                    [v76 setBackgroundColor:v77];

                    [v35 setSelectedBackgroundView:v76];
                    v31 = v118 + 1;
                  }

                  while (v118 + 1 != v116);
                  v116 = [v111 countByEnumeratingWithState:&v123 objects:v143 count:16];
                }

                while (v116);
              }

              v78 = [v109 footerView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v79 = [v78 linkButton];
                PKAppearanceApplyToContainer(v3, v79);
              }

              v80 = [v109 headerView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v81 = [v80 headerLabel];
                PKAppearanceApplyToContainer(v3, v81);
                v82 = [v80 subHeaderLabel];
                PKAppearanceApplyToContainer(v3, v82);
              }

              v29 = v108 + 1;
            }

            while (v108 + 1 != v107);
            v107 = [v105 countByEnumeratingWithState:&v127 objects:v144 count:16];
          }

          while (v107);
        }

        v83 = v100;
        v8 = v101;
        v84 = v99;
LABEL_74:

        v92 = [v8 toolbar];
        PKAppearanceApplyToContainer(v3, v92);
        v93 = [v8 leftToolbarItem];
        v94 = [v3 buttonTextColor];
        [v93 setTintColor:v94];

        v95 = [v8 rightToolbarItem];
        v96 = [v3 buttonTextColor];
        [v95 setTintColor:v96];

        v7 = v104 + 1;
      }

      while (v104 + 1 != v103);
      v103 = [obj countByEnumeratingWithState:&v131 objects:v145 count:16];
    }

    while (v103);
  }
}

void sub_1BDAB53C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAB6FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAB8C6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAB9058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAB9E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ___groupForSectionIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 identifier];

  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];
    }
  }

  return v9;
}

void sub_1BDABB180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void InvalidateSession(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = [MEMORY[0x1E69DC668] sharedApplication];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __InvalidateSession_block_invoke;
    v5[3] = &unk_1E8011A18;
    v5[4] = &v6;
    v3 = [v2 beginBackgroundTaskWithExpirationHandler:v5];

    v7[3] = v3;
    [MEMORY[0x1E69B8758] attachDefaultBehaviorToSession:v1];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __InvalidateSession_block_invoke_2;
    v4[3] = &unk_1E8011A18;
    v4[4] = &v6;
    [v1 invalidateSessionWithCompletion:v4];
    _Block_object_dispose(&v6, 8);
  }
}

void sub_1BDABB358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDABB560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __InvalidateSession_block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __InvalidateSession_block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __InvalidateSession_block_invoke_3;
  block[3] = &unk_1E8011A18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __InvalidateSession_block_invoke_3(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __InvalidateSessionHandle_block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __InvalidateSessionHandle_block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __InvalidateSessionHandle_block_invoke_3;
  block[3] = &unk_1E8011A18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __InvalidateSessionHandle_block_invoke_3(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void sub_1BDABD9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDABEB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAC179C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDAC2850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAC47E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAC5CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 96));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNAvatarView()
{
  if (qword_1EBDAA7A0 != -1)
  {
    dispatch_once(&qword_1EBDAA7A0, &__block_literal_global_345);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_7 = result;
  _MergedGlobals_614 = CNAvatarViewFunction;
  return result;
}

Class initCNAvatarCardController()
{
  if (qword_1EBDAA7A0 != -1)
  {
    dispatch_once(&qword_1EBDAA7A0, &__block_literal_global_345);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBDAA7A8 = result;
  off_1EE98A610 = CNAvatarCardControllerFunction;
  return result;
}

void sub_1BDAC79A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAC9C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDACA198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDACB178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDACCBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection()
{
  if (qword_1EBD68298 != -1)
  {
    dispatch_once(&qword_1EBD68298, &__block_literal_global_10);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_1 = result;
  getNPKCompanionAgentConnectionClass = NPKCompanionAgentConnectionFunction;
  return result;
}

void *__LoadNanoPassKit_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary = result;
  return result;
}

void sub_1BDACD730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDACE6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PKUIViewLayoutIfNeeded(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  if (v4)
  {
    v6 = v5;
    v8 = v4;
    v7 = v4;
    PKCATrackedLayoutPerform();
  }

  else
  {
    __break(1u);
  }
}

void *PKGroupAnimations(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 count]) != 0)
  {
    if (v3 == 1)
    {
      v4 = [v2 firstObject];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v2;
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        v9 = 0.0;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            [v11 beginTime];
            v13 = v12;
            [v11 duration];
            v9 = fmax(v13 + v14, v9);
          }

          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }

      else
      {
        v9 = 0.0;
      }

      v4 = [MEMORY[0x1E6979308] animation];
      [v4 setBeginTimeMode:*MEMORY[0x1E69795C0]];
      [v4 setAnimations:v5];
      [v4 setDuration:v9];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKSharingMessageExtensionPresenterForURL(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 absoluteString];
  if ([v2 containsString:{@"data:application/vnd.apple.pkshareablecredential;base64, "}] || objc_msgSend(v2, "containsString:", @"data:application/vnd.apple.pkrelayservermessage;base64,") || objc_msgSend(v2, "containsString:", PKFlightShareMessageAbsoluteDataURLPrefix) || PKIsURLHttpScheme())
  {
    v3 = objc_opt_class();
    goto LABEL_6;
  }

  v10 = [PKSharingMessageExtensionCommonMessage messageTypeFromURL:v1];
  v11 = @"pkrelayservermessage";
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_28;
  }

  if (v10 && v11)
  {
    v13 = [(__CFString *)v10 isEqualToString:v11];

    if (v13)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v14 = v10;
  v15 = @"pkflightsharemessage";
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if (!v10 || !v15)
    {

LABEL_25:
      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v14;
        _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Unable to handle unknown message type '%{public}@'", &v19, 0xCu);
      }

      goto LABEL_28;
    }

    v17 = [(__CFString *)v14 isEqualToString:v15];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v3 = objc_opt_class();

LABEL_6:
  v4 = [v3 alloc];
  v5 = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [v5 targetDevice];
  v7 = objc_alloc_init(MEMORY[0x1E69B8A60]);
  v8 = [v4 initWithTargetDevice:v6 passLibrary:v7];

  return v8;
}

void sub_1BDAD6C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAD71C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDAD79FC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDAD8038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDAD8698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPassUserEducationDemoFooterView: Invalidating contactless interface session", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_238;
  v7[3] = &unk_1E8010B50;
  v8 = v3;
  v6 = v3;
  [v5 invalidateSessionWithCompletion:v7];
}

void ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_238(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_2;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __PeformBackgroundTask_block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __PeformBackgroundTask_block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void sub_1BDADB250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDADC27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDADE1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *ErrorTypeFromError(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v8 = 0;
    goto LABEL_113;
  }

  v2 = v1;
  v3 = [v1 domain];
  v4 = *MEMORY[0x1E69BC300];
  v5 = v3;
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_9;
  }

  if (!v5 || !v4)
  {

    goto LABEL_15;
  }

  v7 = [v5 isEqualToString:v4];

  if (v7)
  {
LABEL_9:
    v9 = [v2 code];
    v10 = 0;
    if (v9 <= 60078)
    {
      if (v9 == 60009)
      {
        v11 = 0;
        v10 = @"missingActivationCode";
        goto LABEL_93;
      }

      if (v9 != 60010)
      {
        if (v9 != 60011)
        {
          goto LABEL_95;
        }

        v11 = 0;
        v10 = @"activationCodeLockout";
        goto LABEL_93;
      }
    }

    else
    {
      if (v9 <= 60082)
      {
        if (v9 == 60079)
        {
          v11 = 0;
          v10 = @"shareLimitReached";
        }

        else
        {
          if (v9 != 60080)
          {
            goto LABEL_95;
          }

          v11 = 0;
          v10 = @"fidoUnavailable";
        }

        goto LABEL_93;
      }

      if (v9 != 60083)
      {
        if (v9 != 60085)
        {
          goto LABEL_95;
        }

        v11 = 0;
        v10 = @"redemptionMergeUnavailable";
        goto LABEL_93;
      }
    }

    goto LABEL_33;
  }

LABEL_15:
  v12 = *MEMORY[0x1E69BC510];
  v13 = v6;
  v14 = v13;
  if (v13 == v12)
  {

    goto LABEL_25;
  }

  if (!v6 || !v12)
  {

    goto LABEL_35;
  }

  v15 = [v13 isEqualToString:v12];

  if (v15)
  {
LABEL_25:
    v16 = [v2 code];
    v10 = 0;
    if (v16 > 7)
    {
      if (v16 > 10)
      {
        if (v16 == 11)
        {
          v11 = 0;
          v10 = @"invitationOriginatedLocally";
          goto LABEL_93;
        }

        if (v16 == 12)
        {
          v11 = 0;
          v10 = @"relayServerUnavailable";
          goto LABEL_93;
        }

        if (v16 != 13)
        {
          goto LABEL_95;
        }

        goto LABEL_63;
      }

      if (v16 == 8)
      {
LABEL_67:
        v11 = 0;
        v10 = @"invitationNotSupported";
        goto LABEL_93;
      }

      if (v16 != 9)
      {
        v11 = 0;
        v10 = @"invitationAlreadyAccepted";
        goto LABEL_93;
      }
    }

    else
    {
      if (v16 <= 4)
      {
        if ((v16 - 2) >= 2)
        {
          if (v16 != 4)
          {
            goto LABEL_95;
          }

LABEL_63:
          v11 = 0;
          v10 = @"activationCodeTimeOut";
          goto LABEL_93;
        }

LABEL_33:
        v11 = 0;
        v10 = @"invalidActivationCode";
        goto LABEL_93;
      }

      if (v16 == 5)
      {
        v11 = 0;
        v10 = @"invitationCanceled";
        goto LABEL_93;
      }

      if (v16 == 6)
      {
        v11 = 0;
        v10 = @"invitationUnavailable";
        goto LABEL_93;
      }
    }

    v11 = 0;
    v10 = @"shareServiceUnavailable";
    goto LABEL_93;
  }

LABEL_35:
  v17 = *MEMORY[0x1E69B9E70];
  v18 = v14;
  v19 = v18;
  if (v18 == v17)
  {

LABEL_45:
    v21 = [v2 code];
    v10 = 0;
    if (v21 > 3)
    {
      if (v21 == 4)
      {
        v11 = 0;
        v10 = @"deviceNotSupported";
        goto LABEL_93;
      }

      if (v21 == 6)
      {
        v11 = 0;
        v10 = @"osNotSupported";
        goto LABEL_93;
      }

      if (v21 != 5)
      {
        goto LABEL_95;
      }
    }

    else if ((v21 - 1) >= 3)
    {
      if (v21)
      {
        goto LABEL_95;
      }

      v11 = 0;
      v10 = @"unknownSecureElementError";
      goto LABEL_93;
    }

    goto LABEL_67;
  }

  if (v6 && v17)
  {
    v20 = [v18 isEqualToString:v17];

    if (!v20)
    {
      goto LABEL_50;
    }

    goto LABEL_45;
  }

LABEL_50:
  v22 = *MEMORY[0x1E69BC528];
  v23 = v19;
  v24 = v23;
  if (v23 == v22)
  {
  }

  else
  {
    if (!v6 || !v22)
    {

LABEL_76:
      v30 = *MEMORY[0x1E696A978];
      v31 = v24;
      v32 = v31;
      if (v31 == v30)
      {
      }

      else
      {
        if (!v6 || !v30)
        {

LABEL_90:
          v10 = 0;
          goto LABEL_95;
        }

        v33 = [v31 isEqualToString:v30];

        if (!v33)
        {
          goto LABEL_90;
        }
      }

      v11 = 0;
      v10 = @"networkFailure";
      goto LABEL_93;
    }

    v25 = [v23 isEqualToString:v22];

    if (!v25)
    {
      goto LABEL_76;
    }
  }

  v26 = PKSubcredentialProvisioningDisplayableDAError();
  v11 = v26 == 0;
  if (v26)
  {
    v27 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412290;
      v46 = v26;
      _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "Will report DA error: %@", &v45, 0xCu);
    }

    v28 = v26;
    v2 = v28;
  }

  v29 = [v2 code];
  if (v29 > 0x1B)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E8012570[v29];
  }

LABEL_93:
  if (!v11 && v10)
  {
    goto LABEL_105;
  }

LABEL_95:
  v34 = [v2 underlyingErrors];
  v35 = [v34 firstObject];

  if (v35)
  {
    v36 = ErrorTypeFromError(v35);
    v37 = v36;
    if (v36 == @"unknown")
    {
      goto LABEL_99;
    }

    if (!v36)
    {
      v39 = 0;
      goto LABEL_101;
    }

    v38 = [(__CFString *)v36 isEqualToString:@"unknown"];

    v39 = v37;
    if (v38)
    {
LABEL_99:
      v39 = v10;
    }

LABEL_101:
    v10 = v39;
  }

  v40 = @"unknown";
  if (!v10)
  {
    v10 = @"unknown";
    v40 = 0;
    goto LABEL_109;
  }

  v41 = v10;
  if (v41 == @"unknown")
  {
    v10 = @"unknown";
    goto LABEL_109;
  }

  v10 = v41;
LABEL_105:
  v42 = [(__CFString *)v10 isEqualToString:@"unknown"];

  v40 = v10;
  if (v42)
  {
LABEL_109:
    v43 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412290;
      v46 = v2;
      _os_log_impl(&dword_1BD026000, v43, OS_LOG_TYPE_DEFAULT, "Unable to determine type for %@", &v45, 0xCu);
    }
  }

  v8 = v10;

LABEL_113:

  return v8;
}

void sub_1BDAE06C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAE0A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKPassTileViewTileImageTintColor(void *a1, char *a2)
{
  switch([a1 tintColor])
  {
    case 1:
      v3 = [MEMORY[0x1E69DC888] labelColor];
      goto LABEL_27;
    case 2:
      v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      goto LABEL_27;
    case 3:
      v3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      goto LABEL_27;
    case 4:
      v3 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      goto LABEL_27;
    case 5:
      v3 = [MEMORY[0x1E69DC888] linkColor];
      goto LABEL_27;
    case 6:
      v3 = [MEMORY[0x1E69DC888] placeholderTextColor];
      goto LABEL_27;
    case 7:
      v3 = [MEMORY[0x1E69DC888] systemFillColor];
      goto LABEL_27;
    case 8:
      v3 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
      goto LABEL_27;
    case 9:
      v3 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      goto LABEL_27;
    case 10:
      v3 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
      goto LABEL_27;
    case 11:
      v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      goto LABEL_27;
    case 12:
      v3 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
      goto LABEL_27;
    case 13:
      v3 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
      goto LABEL_27;
    case 14:
      v3 = [MEMORY[0x1E69DC888] systemBlueColor];
      goto LABEL_27;
    case 15:
      v3 = [MEMORY[0x1E69DC888] systemGreenColor];
      goto LABEL_27;
    case 16:
      v3 = [MEMORY[0x1E69DC888] systemIndigoColor];
      goto LABEL_27;
    case 17:
      v3 = [MEMORY[0x1E69DC888] systemOrangeColor];
      goto LABEL_27;
    case 18:
      v3 = [MEMORY[0x1E69DC888] systemPinkColor];
      goto LABEL_27;
    case 19:
      v3 = [MEMORY[0x1E69DC888] systemPurpleColor];
      goto LABEL_27;
    case 20:
      v3 = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_27;
    case 21:
      v3 = [MEMORY[0x1E69DC888] systemTealColor];
      goto LABEL_27;
    case 22:
      v3 = [MEMORY[0x1E69DC888] systemYellowColor];
      goto LABEL_27;
    case 23:
      v3 = [MEMORY[0x1E69DC888] systemGrayColor];
      goto LABEL_27;
    case 24:
      v4 = 0;
      v3 = 0;
      goto LABEL_28;
    default:
      v3 = 0;
LABEL_27:
      v4 = 1;
LABEL_28:
      if (v3)
      {
        v4 = 0;
      }

      *a2 = v4;

      return v3;
  }
}

id PKPassTileImageToUIImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v5 = [v3 symbolName];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:v4 scale:3];
    v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v5 withConfiguration:v6];
LABEL_7:
    v9 = v7;
    goto LABEL_8;
  }

  v6 = [v3 image];
  if (v6)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v6];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  if ([v3 tintColor] || !objc_msgSend(v3, "hasColorContent"))
  {
    v10 = [v9 imageWithRenderingMode:2];
  }

  else
  {
    v10 = v9;
  }

  v8 = v10;

LABEL_13:

  return v8;
}

void *CreateAttributedString(void *a1, void *a2)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = MEMORY[0x1E696AAB0];
    v4 = a2;
    v5 = v2;
    v6 = [v3 alloc];
    v9 = *MEMORY[0x1E69DB648];
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    v2 = [v6 initWithString:v5 attributes:v7];
  }

  return v2;
}

id CreateLabel()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v0 setNumberOfLines:1];
  v1 = [MEMORY[0x1E69DC888] clearColor];
  [v0 setBackgroundColor:v1];

  v2 = [MEMORY[0x1E69DC888] tintColor];
  [v0 setTextColor:v2];

  v3 = [MEMORY[0x1E69DC888] labelColor];
  [v0 setTintColor:v3];

  return v0;
}

void sub_1BDAE4D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

BOOL PKPassTileViewCanIgnoreUpdatedContent(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (PKEqualObjects())
  {
    v10 = [v7 state];
    v11 = [v8 state];
    v12 = v10;
    if (v12 == v11)
    {
      if ([v9 hash] == a4)
      {
        v13 = 1;
      }

      else
      {
        v14 = [v12 stateTypeDefaultV2];
        v15 = [v14 title];
        v16 = [v15 valueTypeForeignReference];
        v17 = [v16 foreignReferenceType];

        if (v17)
        {
          v13 = 0;
        }

        else
        {
          v18 = [v14 body];
          v19 = [v18 valueTypeForeignReference];
          v20 = [v19 foreignReferenceType];

          if (v20)
          {
            v13 = 0;
          }

          else
          {
            v24 = [v14 footer];
            v21 = [v24 valueTypeForeignReference];
            v22 = [v21 foreignReferenceType];

            v13 = v22 == 0;
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1BDAEB04C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAEBA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAEC044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAEC4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAEC7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKBridgeAppearanceGetAppearanceSpecifier()
{
  if (qword_1EBD6AB90 != -1)
  {
    dispatch_once(&qword_1EBD6AB90, &__block_literal_global_18);
  }

  v1 = _MergedGlobals_588;

  return v1;
}

void __PKBridgeAppearanceGetAppearanceSpecifier_block_invoke()
{
  v0 = objc_alloc_init(PKAppearanceSpecifier);
  v1 = _MergedGlobals_588;
  _MergedGlobals_588 = v0;

  if (_MergedGlobals_588)
  {
    [_MergedGlobals_588 setHasDarkAppearance:1];
    v2 = _MergedGlobals_588;
    v3 = PKBridgeBackgroundColor();
    [v2 setBackgroundColor:v3];

    v4 = _MergedGlobals_588;
    v5 = PKBridgeForegroundColor();
    [v4 setForegroundColor:v5];

    v6 = _MergedGlobals_588;
    v7 = BPSBridgeTintColor();
    [v6 setTintColor:v7];

    v8 = _MergedGlobals_588;
    v9 = PKBridgeSeparatorColor();
    [v8 setTableViewSeparatorColor:v9];

    v10 = _MergedGlobals_588;
    v11 = PKBridgeCellHighlightColor();
    [v10 setTableViewCellHighlightColor:v11];

    v12 = _MergedGlobals_588;
    v13 = PKBridgeTableViewCellAccessoryColor();
    [v12 setTableViewCellAccessoryColor:v13];

    v14 = _MergedGlobals_588;
    v15 = PKBridgeTableViewCellAccessoryHighlightColor();
    [v14 setTableViewCellAccessoryHighlightColor:v15];

    v16 = _MergedGlobals_588;
    v17 = PKBridgeTextColor();
    [v16 setTextColor:v17];

    v18 = _MergedGlobals_588;
    v19 = PKBridgeAltTextColor();
    [v18 setAltTextColor:v19];

    v20 = _MergedGlobals_588;
    v21 = PKBridgeButtonTextColor();
    [v20 setButtonTextColor:v21];

    v22 = _MergedGlobals_588;
    v23 = BPSSetupTintDisabledColor();
    [v22 setButtonDisabledTextColor:v23];

    v24 = _MergedGlobals_588;
    v25 = [MEMORY[0x1E69DC888] clearColor];
    [v24 setButtonBackgroundColor:v25];

    v26 = _MergedGlobals_588;
    v27 = BPSPillSelectedColor();
    [v26 setContinueButtonTintColor:v27];

    v28 = _MergedGlobals_588;
    v29 = PKBridgeEditableTextColor();
    [v28 setEditableTextColor:v29];

    v30 = _MergedGlobals_588;
    v31 = PKBridgeEditablePlaceholderTextColor();
    [v30 setEditablePlaceholderTextColor:v31];

    v32 = _MergedGlobals_588;
    v33 = PKBridgeEditableInsertionPointColor();
    [v32 setEditableInsertionPointColor:v33];

    v34 = _MergedGlobals_588;
    v35 = PKBridgeEditableSelectionBarColor();
    [v34 setEditableSelectionBarColor:v35];

    v36 = _MergedGlobals_588;
    v37 = PKBridgeEditableSelectionHighlightColor();
    [v36 setEditableSelectionHighlightColor:v37];

    v38 = _MergedGlobals_588;
    v39 = PKBridgeFooterHyperlinkColor();
    [v38 setFooterHyperlinkColor:v39];

    v40 = _MergedGlobals_588;
    v41 = BPSProgressBarTintColor();
    [v40 setProgressBarTintColor:v41];

    v42 = _MergedGlobals_588;
    v43 = BPSProgressBarTrackTintColor();
    [v42 setProgressBarTrackTintColor:v43];

    v44 = _MergedGlobals_588;
    v45 = [MEMORY[0x1E69DC888] colorWithWhite:0.188235294 alpha:1.0];
    [v44 setSearchBarTintcolor:v45];

    v46 = _MergedGlobals_588;
    v47 = PKBridgeBackgroundColor();
    v48 = [v47 colorWithAlphaComponent:0.400000006];
    [v46 setCameraCaptureMaskColor:v48];

    v49 = _MergedGlobals_588;
    v50 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:0.796078431 blue:0.184313725 alpha:1.0];
    [v49 setCameraCaptureMaskOutlineColor:v50];

    v51 = _MergedGlobals_588;
    v52 = PKBridgeBackgroundColor();
    v53 = PKPointImageWithColor(v52);
    [v51 setNavBarPointImage:v53];

    v54 = _MergedGlobals_588;
    v56 = PKBridgeSeparatorColor();
    v55 = PKPointImageWithColor(v56);
    [v54 setNavBarShadowPointImage:v55];
  }
}

id PKBridgeBackgroundColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 backgroundColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBackgroundColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeForegroundColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 foregroundColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSForegroundColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeSeparatorColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 separatorColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSSeparatorColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeCellHighlightColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 cellHighlightColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSCellHightlightColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeTableViewCellAccessoryColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 cellAccessoryColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSAccessoryColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeTableViewCellAccessoryHighlightColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 cellAccessoryHighlightColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSCellHightlightColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 textColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSTextColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeAltTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 altTextColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSDetailTextColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeButtonTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 buttonTextColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBridgeTintColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditableTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editableTextColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSTextColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditablePlaceholderTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editablePlaceholderTextColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSAccessoryColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditableInsertionPointColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editableInsertionPointColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBridgeTintColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditableSelectionBarColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editableSelectionBarColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBridgeTintColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditableSelectionHighlightColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editableSelectionHighlightColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = BPSBridgeTintColor();
    v3 = [v4 colorWithAlphaComponent:0.200000003];
  }

  return v3;
}

id PKBridgeFooterHyperlinkColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 footerHyperlinkColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBridgeTintColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeAppearanceGetSetupAppearanceSpecifier()
{
  if (qword_1EBD6ABA0 != -1)
  {
    dispatch_once(&qword_1EBD6ABA0, &__block_literal_global_3);
  }

  v1 = qword_1EBD6AB98;

  return v1;
}

void __PKBridgeAppearanceGetSetupAppearanceSpecifier_block_invoke()
{
  v0 = PKBridgeAppearanceGetAppearanceSpecifier();
  v1 = [v0 copy];
  v2 = qword_1EBD6AB98;
  qword_1EBD6AB98 = v1;

  v3 = qword_1EBD6AB98;
  if (qword_1EBD6AB98)
  {
    v4 = BPSSetupBackgroundColor();
    [v3 setBackgroundColor:v4];
  }
}

uint64_t PKBridgeUsesDarkAppearance()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 usesDarkTheme];

  return v1;
}

void sub_1BDAEE4D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAF4788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF4F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF5B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF60F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF76A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF9624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAFA4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKRemotePaymentSetupViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D20500];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_didFinishWithPasses_error_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_didFinishWithPasses_error_ argumentIndex:1 ofReply:0];

  return v0;
}

void sub_1BDAFBF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDAFC6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAFCB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAFD1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAFE744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB02260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose((v66 - 248), 8);
  _Block_object_dispose((v66 - 200), 8);
  _Block_object_dispose((v66 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1BDB0310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1BDB03824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDB05DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB07A20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDB08464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB08848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKServiceAddPassesViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D35CE8];
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_ingestPasses_orPassesContainer_orIssuerData_withSignature_fromPresentationSource_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1BDB09FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB0B0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PKPostOpenApplicationNotification(void *a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E696AD88];
      v6 = a3;
      v7 = a2;
      v8 = a1;
      v9 = [v5 defaultCenter];
      v11[0] = @"url";
      v11[1] = @"LSConfiguration";
      v12[0] = v7;
      v12[1] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

      [v9 postNotificationName:@"PKOpenApplicationNotification" object:v8 userInfo:v10];
    }
  }
}

{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E696AD88];
      v6 = a3;
      v7 = a2;
      v8 = a1;
      v9 = [v5 defaultCenter];
      v11[0] = @"bundleID";
      v11[1] = @"LSConfiguration";
      v12[0] = v7;
      v12[1] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

      [v9 postNotificationName:@"PKOpenApplicationNotification" object:v8 userInfo:v10];
    }
  }
}

{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E696AD88];
      v6 = a3;
      v7 = a2;
      v8 = a1;
      v9 = [v5 defaultCenter];
      v11[0] = @"bundleID";
      v11[1] = @"FBSConfiguration";
      v12[0] = v7;
      v12[1] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

      [v9 postNotificationName:@"PKOpenApplicationNotification" object:v8 userInfo:v10];
    }
  }
}

uint64_t PKOpenApplication(NSNotification *a1)
{
  v1 = [(NSNotification *)a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"LSConfiguration"];
  v3 = [v1 objectForKeyedSubscript:@"FBSConfiguration"];
  v4 = [v1 objectForKeyedSubscript:@"url"];
  v5 = [v1 objectForKeyedSubscript:@"bundleID"];
  if (PKOpenApplication(v4, v2) & 1) != 0 || (PKOpenApplication(v5, v2))
  {
    v6 = 1;
  }

  else
  {
    v6 = PKOpenApplication(v5, v3);
  }

  return v6;
}

uint64_t PKOpenApplication(void *a1, void *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v5 = MEMORY[0x1E6963608];
    v6 = a2;
    v7 = a1;
    v8 = [v5 defaultWorkspace];
    [v8 openURL:v7 configuration:v6 completionHandler:0];
  }

  return v3;
}

{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v5 = MEMORY[0x1E6963608];
    v6 = a2;
    v7 = a1;
    v8 = [v5 defaultWorkspace];
    [v8 openApplicationWithBundleIdentifier:v7 configuration:v6 completionHandler:0];
  }

  return v3;
}

{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v5 = a2;
    v6 = a1;
    v7 = SBSCreateOpenApplicationService();
    [v7 openApplication:v6 withOptions:v5 completion:0];
  }

  return v3;
}

uint64_t PKCanOpenApplication(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v1 = a1;
  v2 = SBSCreateOpenApplicationService();
  v3 = [v2 canOpenApplication:v1 reason:&v5];

  return v3;
}

uint64_t PKOpenApplicationForApplicationIdentifier(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x1E695DFF8];
  v2 = a1;
  v3 = [[v1 alloc] initWithString:@"itms-appss://apps.apple.com/app/"];
  v4 = [v2 stringValue];

  v5 = [v3 URLByAppendingPathComponent:v4];

  v6 = objc_alloc_init(MEMORY[0x1E69636B8]);
  v10 = *MEMORY[0x1E699F970];
  v11[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v6 setFrontBoardOptions:v7];

  v8 = PKOpenApplication(v5, v6);
  return v8;
}

void sub_1BDB0C0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB0FDA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t PKBusinessChatApplyIntentFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"wallet_application_duplicateapplication")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"wallet_application_duplicateapplication"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"wallet_application_documentsubmission" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"wallet_application_documentsubmission"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

id initBCParameterNameIntent()
{
  if (qword_1EBD682C0 != -1)
  {
    dispatch_once(&qword_1EBD682C0, &__block_literal_global_737);
  }

  v0 = dlsym(qword_1EBD682B8, "BCParameterNameIntent");
  objc_storeStrong(&_MergedGlobals_1_0, *v0);
  _MergedGlobals_615 = BCParameterNameIntentFunction;
  v1 = _MergedGlobals_1_0;

  return v1;
}

void *__LoadBusinessChat_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/BusinessChat.framework/BusinessChat", 2);
  qword_1EBD682B8 = result;
  return result;
}

id initBCParameterNameGroup()
{
  if (qword_1EBD682C0 != -1)
  {
    dispatch_once(&qword_1EBD682C0, &__block_literal_global_737);
  }

  v0 = dlsym(qword_1EBD682B8, "BCParameterNameGroup");
  objc_storeStrong(&qword_1EBD682B0, *v0);
  off_1EE98A620 = BCParameterNameGroupFunction;
  v1 = qword_1EBD682B0;

  return v1;
}

id initBCParameterNameBody()
{
  if (qword_1EBD682C0 != -1)
  {
    dispatch_once(&qword_1EBD682C0, &__block_literal_global_737);
  }

  v0 = dlsym(qword_1EBD682B8, "BCParameterNameBody");
  objc_storeStrong(&qword_1EBD682A8, *v0);
  off_1EE98A628 = BCParameterNameBodyFunction;
  v1 = qword_1EBD682A8;

  return v1;
}

Class initBCChatAction()
{
  if (qword_1EBD682C0 != -1)
  {
    dispatch_once(&qword_1EBD682C0, &__block_literal_global_737);
  }

  result = objc_getClass("BCChatAction");
  qword_1EBD682C8 = result;
  off_1EE98A630 = BCChatActionFunction;
  return result;
}

void *__LoadAppleMediaServicesUIPaymentSheets_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleMediaServicesUIPaymentSheets.framework/AppleMediaServicesUIPaymentSheets", 2);
  LoadAppleMediaServicesUIPaymentSheets_frameworkLibrary = result;
  return result;
}

void sub_1BDB1A548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initQLItem()
{
  if (qword_1EBD6ABB0 != -1)
  {
    dispatch_once(&qword_1EBD6ABB0, &__block_literal_global_31);
  }

  result = objc_getClass("QLItem");
  _MergedGlobals_589 = result;
  getQLItemClass = QLItemFunction;
  return result;
}

void *__LoadQuickLook_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/QuickLook.framework/QuickLook", 2);
  LoadQuickLook_frameworkLibrary = result;
  return result;
}

Class initQLPreviewController()
{
  if (qword_1EBD6ABB0 != -1)
  {
    dispatch_once(&qword_1EBD6ABB0, &__block_literal_global_31);
  }

  result = objc_getClass("QLPreviewController");
  qword_1EBD6ABB8 = result;
  getQLPreviewControllerClass = QLPreviewControllerFunction;
  return result;
}

void sub_1BDB1BF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB1CF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float32x4_t Main_NearbyPeerPaymentVFX_graph_4F3DDB39_11D3_4B83_9014_442D6CE9BF38(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float a5, float32x2_t a6, uint64_t a7, uint64_t a8, float32x4_t *a9, void *a10, float32x2_t *a11)
{
  v11 = vmlaq_n_f32(vaddq_f32(a2, vmlaq_f32(a4, 0, a3)), a1, a5);
  __asm { FMOV            V0.4S, #10.0 }

  result = vmulq_f32(v11, _Q0);
  *v11.f32 = vadd_f32(*result.f32, *result.f32);
  *a10 = v11.i64[0];
  *a11 = vmul_f32(*v11.f32, a6);
  *a9 = result;
  return result;
}

float32x4_t __vfx_script_NearbyPeerPaymentVFX_graph_4F3DDB39_11D3_4B83_9014_442D6CE9BF38()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = *(arguments_buffer + 56);
  __asm { FMOV            V0.4S, #10.0 }

  result = vmulq_f32(vmlaq_n_f32(vaddq_f32(*(*(arguments_buffer + 16) + 16), vmlaq_f32(*(*(arguments_buffer + 16) + 48), 0, *(*(arguments_buffer + 16) + 32))), **(arguments_buffer + 16), **(arguments_buffer + 24)), _Q0);
  v9 = vadd_f32(*result.f32, *result.f32);
  v10 = vmul_f32(**(arguments_buffer + 32), v9);
  **(arguments_buffer + 48) = v9;
  *v2 = v10;
  *v1 = result;
  return result;
}

float32x4_t Main_NearbyPeerPaymentVFX_graph_7BB9D9EB_AD4F_40D2_BC79_F3E1E47DEF3C(float32x4_t a1, float32x2_t a2, float32x2_t a3, float32x4_t a4, float a5, uint64_t a6, uint64_t a7, float32x4_t *a8)
{
  a1.f32[1] = 1.0 - a1.f32[1];
  *a1.f32 = vsub_f32(vmul_f32(*a1.f32, a2), a3);
  a1.i32[2] = 0;
  v8 = vaddq_f32(a4, a1);
  v9 = vaddq_f32(a1, xmmword_1BE114930);
  v10 = vmulq_f32(v9, v9);
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  v11 = vdupq_lane_s32(*v10.f32, 0);
  v11.i32[3] = 0;
  v12 = vrsqrteq_f32(v11);
  v13 = vmulq_f32(v12, vrsqrtsq_f32(v11, vmulq_f32(v12, v12)));
  v14 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v10.f32[0] != 0.0)), 0x1FuLL));
  v14.i32[3] = 0;
  result = vaddq_f32(v8, vmulq_n_f32(vbslq_s8(vcltzq_s32(v14), vmulq_f32(v9, vmulq_f32(v13, vrsqrtsq_f32(v11, vmulq_f32(v13, v13)))), v9), a5));
  *a8 = result;
  return result;
}

float32x4_t __vfx_script_NearbyPeerPaymentVFX_graph_7BB9D9EB_AD4F_40D2_BC79_F3E1E47DEF3C()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = **(arguments_buffer + 16);
  v1.f32[1] = 1.0 - v1.f32[1];
  *v2.f32 = vsub_f32(vmul_f32(**(arguments_buffer + 24), v1), **(arguments_buffer + 32));
  v2.i32[2] = 0;
  v3 = vaddq_f32(**(arguments_buffer + 40), v2);
  v4 = vaddq_f32(v2, xmmword_1BE114930);
  v5 = vmulq_f32(v4, v4);
  v5.f32[0] = v5.f32[2] + vaddv_f32(*v5.f32);
  v6 = vdupq_lane_s32(*v5.f32, 0);
  v6.i32[3] = 0;
  v7 = vrsqrteq_f32(v6);
  v8 = vmulq_f32(v7, vrsqrtsq_f32(v6, vmulq_f32(v7, v7)));
  v9 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v5.f32[0] != 0.0)), 0x1FuLL));
  v9.i32[3] = 0;
  result = vaddq_f32(v3, vmulq_n_f32(vbslq_s8(vcltzq_s32(v9), vmulq_f32(v4, vmulq_f32(v8, vrsqrtsq_f32(v6, vmulq_f32(v8, v8)))), v4), **(arguments_buffer + 48)));
  **(arguments_buffer + 56) = result;
  return result;
}

int8x16_t Main_NearbyPeerPaymentVFX_graph_8F63ABD7_3E9E_443A_9762_9A2A6D67CFF2(float32x2_t a1, float32x2_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  *result.i8 = vmul_f32(a1, a2);
  result.i64[1] = vextq_s8(*a5, *a5, 8uLL).u64[0];
  *a5 = result;
  return result;
}

int8x16_t __vfx_script_NearbyPeerPaymentVFX_graph_8F63ABD7_3E9E_443A_9762_9A2A6D67CFF2()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  *result.i8 = vmul_f32(**(arguments_buffer + 16), **(arguments_buffer + 24));
  result.i64[1] = vextq_s8(*v1, *v1, 8uLL).u64[0];
  *v1 = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_8DB87E8E_072C_4350_A55F_9101BF5BE668(double a1, double a2, double a3, float a4, float a5, uint64_t a6, uint64_t a7, float *a8, float *a9, int32x4_t *a10, float *a11)
{
  *&a3 = vmuls_lane_f32(a4, *&a3, 1) / a5;
  if (fabsf(a5) <= 0.00000011921)
  {
    *&a3 = 0.0;
  }

  v11 = vmuls_lane_f32(0.6, *&a2, 1);
  v12 = 0.6 * *&a2;
  *a10 = vdupq_lane_s32(*&a3, 0);
  *a8 = fminf(*&a1, *(&a1 + 1));
  a8[1] = fmaxf(*&a1, *(&a1 + 1));
  result = fminf(v12, v11);
  v14 = fmaxf(v12, v11);
  *a9 = result;
  a9[1] = v14;
  *a11 = result;
  a11[1] = v14;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_8DB87E8E_072C_4350_A55F_9101BF5BE668()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 56);
  v2 = *(arguments_buffer + 64);
  v3 = *(arguments_buffer + 80);
  v4 = **(arguments_buffer + 16);
  v5 = **(arguments_buffer + 24);
  v6 = **(arguments_buffer + 48);
  *v7.i32 = (**(arguments_buffer + 40) * *(*(arguments_buffer + 32) + 4)) / v6;
  if (fabsf(v6) <= 0.00000011921)
  {
    *v7.i32 = 0.0;
  }

  v8 = vmuls_lane_f32(0.6, v5, 1);
  v9 = 0.6 * v5.f32[0];
  **(arguments_buffer + 72) = vdupq_lane_s32(v7, 0);
  *v1 = fminf(*&v4, *(&v4 + 1));
  v1[1] = fmaxf(*&v4, *(&v4 + 1));
  result = fminf(v9, v8);
  v11 = fmaxf(v9, v8);
  *v2 = result;
  v2[1] = v11;
  *v3 = result;
  v3[1] = v11;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_17EDCC0D_8B80_40BF_B717_8C88FA83C130(float a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float a6, uint64_t a7, uint64_t a8, float *a9, float32x2_t *a10, float *a11, _OWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  a2.f32[1] = 1.0 - a2.f32[1];
  *a9 = 1.0 - a1;
  *a10 = vadd_f32(vsub_f32(vmul_f32(a2, a3), a4), a5);
  result = (fminf(fmaxf(fabsf(a6), 0.0), 1.0) * 0.45) + 0.45;
  *a11 = result;
  *a12 = a21;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_17EDCC0D_8B80_40BF_B717_8C88FA83C130()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v2 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  v4 = arguments_buffer[5];
  v5 = arguments_buffer[6];
  v6 = arguments_buffer[7];
  v7 = arguments_buffer[8];
  v8 = arguments_buffer[9];
  v9 = arguments_buffer[10];
  v10 = arguments_buffer[11];
  v11 = arguments_buffer[12];
  v12 = *v2;
  v13 = *(v7 + 48);
  result = 1.0 - *v1;
  v12.f32[1] = 1.0 - COERCE_FLOAT(HIDWORD(*v2));
  v15 = vadd_f32(*v5, vsub_f32(vmul_f32(*v3, v12), *v4));
  v16 = (fminf(fmaxf(fabsf(COERCE_FLOAT(*v6)), 0.0), 1.0) * 0.45) + 0.45;
  *v8 = result;
  *v9 = v15;
  *v10 = v16;
  *v11 = v13;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_4C57DC71_48E6_40AC_9B25_2948E9083C8F(float a1, double a2, double a3, double a4, __n128 a5, uint64_t a6, uint64_t a7, float *a8, __n128 *a9)
{
  result = (fminf(fmaxf(fabsf(a1), 0.0), 1.0) * 0.45) + 0.45;
  *a8 = result;
  *a9 = a5;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_4C57DC71_48E6_40AC_9B25_2948E9083C8F()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = *(*(arguments_buffer + 24) + 48);
  result = (fminf(fmaxf(fabsf(COERCE_FLOAT(**(arguments_buffer + 16))), 0.0), 1.0) * 0.45) + 0.45;
  **(arguments_buffer + 32) = result;
  *v1 = v2;
  return result;
}

simd_quatf Main_NearbyPeerPaymentVFX_graph_83816ECE_5550_45DA_A8E1_A731EE274A87(const void *a1, unsigned int a2, float a3, simd_quatf *a4)
{
  *&v5 = (a3 + 1.5708) * 0.5;
  v6.i64[0] = 0;
  v6.i64[1] = v5;
  x = v6;
  v16 = _simd_cos_f4(v6);
  v7 = _simd_sin_f4(x);
  v8 = vextq_s8(v16, v16, 4uLL);
  v9 = vmulq_f32(vzip1q_s32(vrev64q_s32(v16), v16), vextq_s8(vzip1q_s32(v8, v7), v8, 8uLL));
  v10 = vzip2q_s32(vzip1q_s32(v16, v7), v7);
  v10.f32[3] = -v7.f32[0];
  v11 = vextq_s8(v7, v7, 8uLL);
  v12 = vtrn1q_s32(v7, vextq_s8(v16, v16, 8uLL));
  v7.i32[3] = v7.i32[1];
  v13 = vtrn1q_s32(v11, v16);
  v13.f32[1] = -v16.f32[0];
  result = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v7, v10), v13)), v12, v9);
  *a4 = result;
  return result;
}

float32x4_t __vfx_script_NearbyPeerPaymentVFX_graph_83816ECE_5550_45DA_A8E1_A731EE274A87()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2.i64[0] = 0;
  v2.i32[3] = 0;
  v2.f32[2] = (**(arguments_buffer + 16) + 1.5708) * 0.5;
  x = v2;
  v12 = _simd_cos_f4(v2);
  v3 = _simd_sin_f4(x);
  v4 = vextq_s8(v12, v12, 4uLL);
  v5 = vmulq_f32(vzip1q_s32(vrev64q_s32(v12), v12), vextq_s8(vzip1q_s32(v4, v3), v4, 8uLL));
  v6 = vzip2q_s32(vzip1q_s32(v12, v3), v3);
  v6.f32[3] = -v3.f32[0];
  v7 = vextq_s8(v3, v3, 8uLL);
  v8 = vtrn1q_s32(v3, vextq_s8(v12, v12, 8uLL));
  v3.i32[3] = v3.i32[1];
  v9 = vtrn1q_s32(v7, v12);
  v9.f32[1] = -v12.f32[0];
  result = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v3, v6), v9)), v8, v5);
  *v1 = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_FA73AA18_EFB4_4967_806A_2605AD218E4B(double a1, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = fminf(*&a1, *(&a1 + 1));
  result = fmaxf(*&a1, *(&a1 + 1));
  *a4 = v4;
  a4[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_FA73AA18_EFB4_4967_806A_2605AD218E4B()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = **(arguments_buffer + 16);
  v3 = fminf(*&v2, *(&v2 + 1));
  result = fmaxf(*&v2, *(&v2 + 1));
  *v1 = v3;
  v1[1] = result;
  return result;
}

int8x16_t Main_NearbyPeerPaymentVFX_graph_C775FAB3_BFE7_4B95_8DCB_1678C67CCA6A(float32x2_t a1, float32x2_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  *result.i8 = vmul_f32(a1, a2);
  result.i64[1] = vextq_s8(*a5, *a5, 8uLL).u64[0];
  *a5 = result;
  return result;
}

int8x16_t __vfx_script_NearbyPeerPaymentVFX_graph_C775FAB3_BFE7_4B95_8DCB_1678C67CCA6A()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  *result.i8 = vmul_f32(**(arguments_buffer + 16), **(arguments_buffer + 24));
  result.i64[1] = vextq_s8(*v1, *v1, 8uLL).u64[0];
  *v1 = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_C96D83EA_E1AB_45EB_9461_103DA706828B()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  result = **(arguments_buffer + 16);
  *v1 = result;
  v1[1] = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_DF9BFC14_437A_4998_A27E_D9A527DD3414(double a1, double a2, float a3, float a4, uint64_t a5, uint64_t a6, float *a7, int32x4_t *a8)
{
  *&a2 = vmuls_lane_f32(a3, *&a2, 1) / a4;
  if (fabsf(a4) <= 0.00000011921)
  {
    *&a2 = 0.0;
  }

  *a8 = vdupq_lane_s32(*&a2, 0);
  v8 = fminf(*&a1, *(&a1 + 1));
  result = fmaxf(*&a1, *(&a1 + 1));
  *a7 = v8;
  a7[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_DF9BFC14_437A_4998_A27E_D9A527DD3414()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 48);
  v2 = **(arguments_buffer + 16);
  v3 = **(arguments_buffer + 40);
  *v4.i32 = (**(arguments_buffer + 32) * *(*(arguments_buffer + 24) + 4)) / v3;
  if (fabsf(v3) <= 0.00000011921)
  {
    *v4.i32 = 0.0;
  }

  **(arguments_buffer + 56) = vdupq_lane_s32(v4, 0);
  v5 = fminf(*&v2, *(&v2 + 1));
  result = fmaxf(*&v2, *(&v2 + 1));
  *v1 = v5;
  v1[1] = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_0C69EEE3_4540_4FCD_B77F_475B09488C38(double a1, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = fminf(*&a1, *(&a1 + 1));
  result = fmaxf(*&a1, *(&a1 + 1));
  *a4 = v4;
  a4[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_0C69EEE3_4540_4FCD_B77F_475B09488C38()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = **(arguments_buffer + 16);
  v3 = fminf(*&v2, *(&v2 + 1));
  result = fmaxf(*&v2, *(&v2 + 1));
  *v1 = v3;
  v1[1] = result;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_9B05635D_4713_45C0_8816_D6E7CBD6CC9F(double a1, double a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  result = *(&a1 + 1) + ((-*(&a1 + 1) - *(&a1 + 1)) * fminf(fmaxf(*(&a2 + 1), 0.0), 1.0));
  v6 = *a5;
  *(&v6 + 1) = result;
  DWORD2(v6) = *(a5 + 1);
  *a5 = v6;
  return result;
}

__n128 __vfx_script_NearbyPeerPaymentVFX_graph_9B05635D_4713_45C0_8816_D6E7CBD6CC9F()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[4];
  result = *v1;
  v3 = *v1;
  v3.n128_f32[1] = *(arguments_buffer[2] + 4) + ((-*(arguments_buffer[2] + 4) - *(arguments_buffer[2] + 4)) * fminf(fmaxf(*(arguments_buffer[3] + 4), 0.0), 1.0));
  v3.n128_u32[2] = v1->n128_u64[1];
  *v1 = v3;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_05113D80_F43B_424E_9B9F_5433C213980D(double a1, double a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  result = *(&a1 + 1) + ((-*(&a1 + 1) - *(&a1 + 1)) * fminf(fmaxf(*(&a2 + 1), 0.0), 1.0));
  v6 = *a5;
  *(&v6 + 1) = result;
  DWORD2(v6) = *(a5 + 1);
  *a5 = v6;
  return result;
}

__n128 __vfx_script_NearbyPeerPaymentVFX_graph_05113D80_F43B_424E_9B9F_5433C213980D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[4];
  result = *v1;
  v3 = *v1;
  v3.n128_f32[1] = *(arguments_buffer[2] + 4) + ((-*(arguments_buffer[2] + 4) - *(arguments_buffer[2] + 4)) * fminf(fmaxf(*(arguments_buffer[3] + 4), 0.0), 1.0));
  v3.n128_u32[2] = v1->n128_u64[1];
  *v1 = v3;
  return result;
}

void Main_NearbyPeerPaymentVFX_graph_57E6A463_5A4E_4D6D_A0AA_2E2AA4706DA8(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float a7, float *a8, float *a9, float *a10, float *a11)
{
  v19 = fminf(fmaxf(a5 - a6, 0.0), 1.0);
  vfx_script_clock_delta_time();
  v21 = v20;
  v22 = fmodf((a5 * -6.2832) - (0.0 - ((v19 * -0.4) + 0.4)), 6.2832);
  *a8 = a3 + ((a4 - a3) * v19);
  *a9 = a7 + ((1.0 - a7) * v19);
  *a10 = fmaxf(v21 + a5, 0.0);
  *a11 = v22;
}

void __vfx_script_NearbyPeerPaymentVFX_graph_57E6A463_5A4E_4D6D_A0AA_2E2AA4706DA8(uint64_t a1)
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 56);
  v4 = *(arguments_buffer + 64);
  v5 = *(arguments_buffer + 72);
  v6 = *(arguments_buffer + 80);
  v7 = **(arguments_buffer + 16);
  v8 = **(arguments_buffer + 24);
  v9 = *v2;
  v10 = **(arguments_buffer + 48);
  v11 = fminf(fmaxf(*v2 - **(arguments_buffer + 40), 0.0), 1.0);
  vfx_script_clock_delta_time();
  v13 = v12;
  v14 = fmodf((v9 * -6.2832) - (0.0 - ((v11 * -0.4) + 0.4)), 6.2832);
  *v3 = v7 + ((v8 - v7) * v11);
  *v4 = v10 + ((1.0 - v10) * v11);
  *v5 = fmaxf(v9 + v13, 0.0);
  *v6 = v14;
}

float Init_NearbyPeerPaymentVFX_graph_910111D1_EA01_4609_B4E1_DDE1A227D97A(float a1, double a2, float a3, uint64_t a4, uint64_t a5, float *a6)
{
  result = ((*(&a2 + 1) + *(&a2 + 1)) * a1) * a3;
  *a6 = result;
  a6[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_910111D1_EA01_4609_B4E1_DDE1A227D97A()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  result = **(arguments_buffer + 32) * (**(arguments_buffer + 16) * (*(*(arguments_buffer + 24) + 4) + *(*(arguments_buffer + 24) + 4)));
  *v1 = result;
  v1[1] = result;
  return result;
}

int8x16_t Main_NearbyPeerPaymentVFX_graph_9F8F8EE9_0CF5_4093_80E9_7A652D5C66F4(float32x2_t a1, float32x2_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  *result.i8 = vmul_f32(a1, a2);
  result.i64[1] = vextq_s8(*a5, *a5, 8uLL).u64[0];
  *a5 = result;
  return result;
}

int8x16_t __vfx_script_NearbyPeerPaymentVFX_graph_9F8F8EE9_0CF5_4093_80E9_7A652D5C66F4()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  *result.i8 = vmul_f32(**(arguments_buffer + 16), **(arguments_buffer + 24));
  result.i64[1] = vextq_s8(*v1, *v1, 8uLL).u64[0];
  *v1 = result;
  return result;
}

float Spawn_NearbyPeerPaymentVFX_graph_CB22FE2D_AC12_4FD4_B89C_D8F217E27F7D(float a1, float a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1 < 3.0;
  v6 = 1.0;
  if (v5)
  {
    v6 = 0.25;
  }

  result = v6 * a2;
  *a5 = result;
  a5[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_CB22FE2D_AC12_4FD4_B89C_D8F217E27F7D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = 1.0;
  if (**(arguments_buffer + 16) < 3.0)
  {
    v2 = 0.25;
  }

  result = **(arguments_buffer + 24) * v2;
  *v1 = result;
  v1[1] = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_72260DDD_484E_4546_904F_DA4A46379C69(double a1, double a2, float a3, float a4, uint64_t a5, uint64_t a6, float *a7, int32x4_t *a8, float *a9)
{
  *&a2 = vmuls_lane_f32(a3, *&a2, 1) / a4;
  if (fabsf(a4) <= 0.00000011921)
  {
    *&a2 = 0.0;
  }

  v9 = vmuls_lane_f32(0.6, *&a1, 1);
  v10 = 0.6 * *&a1;
  *a8 = vdupq_lane_s32(*&a2, 0);
  v11 = fminf(v10, v9);
  result = fmaxf(v10, v9);
  *a7 = v11;
  a7[1] = result;
  *a9 = v11;
  a9[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_72260DDD_484E_4546_904F_DA4A46379C69()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 48);
  v2 = *(arguments_buffer + 64);
  v3 = **(arguments_buffer + 16);
  v4 = **(arguments_buffer + 40);
  *v5.i32 = (**(arguments_buffer + 32) * *(*(arguments_buffer + 24) + 4)) / v4;
  if (fabsf(v4) <= 0.00000011921)
  {
    *v5.i32 = 0.0;
  }

  v6 = vmuls_lane_f32(0.6, v3, 1);
  v7 = 0.6 * v3.f32[0];
  **(arguments_buffer + 56) = vdupq_lane_s32(v5, 0);
  v8 = fminf(v7, v6);
  result = fmaxf(v7, v6);
  *v1 = v8;
  v1[1] = result;
  *v2 = v8;
  v2[1] = result;
  return result;
}

void Spawn_NearbyPeerPaymentVFX_graph_172EF526_E458_43CB_8E13_B492FE748B25(const void *a1, unsigned int a2, float a3, float *a4)
{
  v4 = 0.0;
  if (a3 > 0.001)
  {
    v4 = (fminf(fmaxf((a3 + -0.3) / 0.9, 0.0), 1.0) * -600.0) + 600.0;
  }

  *a4 = v4;
}

uint64_t __vfx_script_NearbyPeerPaymentVFX_graph_172EF526_E458_43CB_8E13_B492FE748B25()
{
  result = vfx_script_get_arguments_buffer();
  v1 = **(result + 16);
  v2 = 0.0;
  if (v1 > 0.001)
  {
    v2 = (fminf(fmaxf((v1 + -0.3) / 0.9, 0.0), 1.0) * -600.0) + 600.0;
  }

  **(result + 24) = v2;
  return result;
}

int8x16_t Init_NearbyPeerPaymentVFX_graph_94B2D548_22ED_45EE_9A64_74CB3894F119(double a1, float a2, float a3, float a4, float32x2_t a5, double a6, float32x2_t a7, uint64_t a8, uint64_t a9, float *a10, int8x16_t *a11, int32x4_t *a12)
{
  v33 = *&a1;
  v34 = *a11;
  v19 = *(&a1 + 1);
  v20 = __sincosf_stret((a2 * 6.2832) + -1.5708);
  v21 = vmuls_lane_f32(a3 - (a3 * a4), a5, 1);
  v22 = a5;
  v23.i32[1] = HIDWORD(a6);
  __asm { FMOV            V5.2S, #1.0 }

  v29 = vminnm_f32(vmaxnm_f32(a7, 0), _D5);
  _D5.i32[0] = vadd_f32(v22, v22).u32[0];
  _D5.f32[1] = -a5.f32[1] - a5.f32[1];
  v22.f32[0] = -a5.f32[0];
  *result.i8 = vadd_f32(vmla_f32(v22, v29, _D5), vmul_n_f32(vmul_n_f32(v20, (v21 * 1.5) + ((v21 - (v21 * 1.5)) * fminf(fmaxf(a2 * 4.0, 0.0), 1.0))), *&a6));
  *v23.i32 = (a3 * a4) + (a3 * a4);
  *a12 = vdupq_lane_s32(v23, 0);
  *a10 = fminf(v33, v19);
  a10[1] = fmaxf(v33, v19);
  result.i64[1] = vextq_s8(v34, v34, 8uLL).u64[0];
  *a11 = result;
  return result;
}

int8x16_t __vfx_script_NearbyPeerPaymentVFX_graph_94B2D548_22ED_45EE_9A64_74CB3894F119()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 72);
  v2 = *(arguments_buffer + 80);
  v3 = *(arguments_buffer + 88);
  v4 = **(arguments_buffer + 24);
  v5 = **(arguments_buffer + 32);
  v6 = **(arguments_buffer + 40);
  v21 = **(arguments_buffer + 48);
  HIDWORD(v7) = DWORD1(v21);
  LODWORD(v7) = **(arguments_buffer + 56);
  v22 = v7;
  LODWORD(v23) = **(arguments_buffer + 16);
  v8 = **(arguments_buffer + 64);
  v24 = *v2;
  LODWORD(v9) = HIDWORD(**(arguments_buffer + 16));
  v10 = __sincosf_stret((v4 * 6.2832) + -1.5708);
  v11 = vmuls_lane_f32(v5 - (v5 * v6), *&v21, 1);
  v12 = v21;
  v13.i32[1] = HIDWORD(v22);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vminnm_f32(vmaxnm_f32(v8, 0), _D5);
  _D5.i32[0] = vadd_f32(v12, v12).u32[0];
  _D5.f32[1] = -*(&v21 + 1) - *(&v21 + 1);
  v12.f32[0] = -*&v21;
  *v13.i32 = (v5 * v6) + (v5 * v6);
  *result.i8 = vadd_f32(vmla_f32(v12, v19, _D5), vmul_n_f32(vmul_n_f32(v10, (v11 * 1.5) + ((v11 - (v11 * 1.5)) * fminf(fmaxf(v4 * 4.0, 0.0), 1.0))), *&v22));
  *v3 = vdupq_lane_s32(v13, 0);
  *v1 = fminf(v23, v9);
  v1[1] = fmaxf(v23, v9);
  result.i64[1] = __PAIR64__(1.0, vextq_s8(v24, v24, 8uLL).u32[0]);
  *v2 = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_29E74450_EE72_47ED_95B2_FB01045FE4EC(double a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v6 = *a6;
  *(&v6 + 2) = a2;
  *a6 = v6;
  *&v6 = fminf(*&a1, *(&a1 + 1));
  result = fmaxf(*&a1, *(&a1 + 1));
  *a5 = v6;
  *(a5 + 4) = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_29E74450_EE72_47ED_95B2_FB01045FE4EC()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = *(arguments_buffer + 40);
  v3 = **(arguments_buffer + 16);
  v4 = *v2;
  DWORD2(v4) = **(arguments_buffer + 24);
  *v2 = v4;
  *&v4 = fminf(*&v3, *(&v3 + 1));
  result = fmaxf(*&v3, *(&v3 + 1));
  *v1 = v4;
  *(v1 + 4) = result;
  return result;
}

float32_t Init_NearbyPeerPaymentVFX_graph_92D02FA6_BFB5_4867_B063_921EAAFE87AA(double a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __int32 *a5, void *a6)
{
  result = (*(&a1 + 1) + -2.5) + 0.2;
  v7 = &dword_1BE114970;
  v8 = vld1q_dup_f32(v7);
  v8.i32[0] = *a5;
  *a4 = vdup_n_s32(0x40BF5C29u);
  __asm { FMOV            V1.2S, #5.0 }

  *a6 = _D1;
  v8.f32[1] = result;
  *a5 = v8;
  return result;
}

__n128 __vfx_script_NearbyPeerPaymentVFX_graph_92D02FA6_BFB5_4867_B063_921EAAFE87AA()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = *(arguments_buffer + 40);
  result = *v1;
  v3 = (*(*(arguments_buffer + 16) + 4) + -2.5) + 0.2;
  **(arguments_buffer + 24) = vdup_n_s32(0x40BF5C29u);
  __asm { FMOV            V2.2S, #5.0 }

  *v2 = _D2;
  result.n128_f32[1] = v3;
  result.n128_u32[2] = -1105618534;
  result.n128_u32[3] = 1.0;
  *v1 = result;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_1E7187A9_6A89_4E27_96D0_916C073332AA(double a1, uint64_t a2, uint64_t a3, float *a4)
{
  result = (fminf(fmaxf(((*(&a1 + 1) + *(&a1 + 1)) + 2.4) / 4.8, 0.0), 1.0) * 6.2816) + -1.57;
  *a4 = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_1E7187A9_6A89_4E27_96D0_916C073332AA()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result = (fminf(fmaxf(((*(*(arguments_buffer + 16) + 4) + *(*(arguments_buffer + 16) + 4)) + 2.4) / 4.8, 0.0), 1.0) * 6.2816) + -1.57;
  **(arguments_buffer + 24) = result;
  return result;
}

float32x4_t ParticleInit_NearbyPeerPaymentVFX_particleInit_2(uint64_t a1, int a2, int a3, float32x4_t *a4, float32x4_t *a5, float32x4_t a6, float32x4_t a7)
{
  v11 = vmulq_f32(a6, a6);
  v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
  v12 = vdupq_lane_s32(*v11.f32, 0);
  v12.i32[3] = 0;
  v13 = vrsqrteq_f32(v12);
  v14 = vmulq_f32(v13, vrsqrtsq_f32(v12, vmulq_f32(v13, v13)));
  v15 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v11.f32[0] != 0.0)), 0x1FuLL));
  v15.i32[3] = 0;
  v22 = vbslq_s8(vcltzq_s32(v15), vmulq_f32(vmulq_f32(v14, vrsqrtsq_f32(v12, vmulq_f32(v14, v14))), a6), a6);
  v16 = vfx_script_clock_simulation_index();
  v17 = a3 + a2;
  v18 = 277803737 * (((747796405 * (v16 + v17) - 347334518) >> (((747796405 * (v16 + v17) - 347334518) >> 28) + 4)) ^ (747796405 * (v16 + v17) - 347334518));
  v23 = vmulq_n_f32(v22, ((COERCE_FLOAT((v18 >> 31) ^ (v18 >> 9) | 0x3F800000) + -1.0) * 1.6) + 0.4);
  v19 = vfx_script_clock_simulation_index();
  v20 = 277803737 * (((747796405 * (v19 + v17) + 1359517557) >> (((747796405 * (v19 + v17) + 1359517557) >> 28) + 4)) ^ (747796405 * (v19 + v17) + 1359517557));
  result = vmulq_n_f32(a7, ((COERCE_FLOAT((v20 >> 31) ^ (v20 >> 9) | 0x3F800000) + -1.0) * 0.6) + 0.0);
  *a4 = v23;
  *a5 = result;
  return result;
}

__n128 ParticleInit_NearbyPeerPaymentVFX_particleInit_233(uint64_t a1, int a2, int a3, float32x4_t *a4, __n128 *a5, __n128 *a6, float32x4_t *a7, float32x4_t a8, float32x4_t a9)
{
  v41 = *a5;
  v15 = vfx_script_clock_simulation_index();
  v16 = a3 + a2;
  v17 = 277803737 * (((747796405 * (v15 + v16) + 1340069426) >> (((747796405 * (v15 + v16) + 1340069426) >> 28) + 4)) ^ (747796405 * (v15 + v16) + 1340069426));
  *&v18 = ((COERCE_FLOAT((v17 >> 31) ^ (v17 >> 9) | 0x3F800000) + -1.0) * 0.2) + -0.1;
  *(&v18 + 1) = *&v18;
  v19 = vaddq_f32(a8, v18);
  v20 = vmulq_f32(v19, v19);
  v20.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
  v21 = vdupq_lane_s32(*v20.f32, 0);
  v21.i32[3] = 0;
  v22 = vrsqrteq_f32(v21);
  v23 = vmulq_f32(v22, vrsqrtsq_f32(v21, vmulq_f32(v22, v22)));
  v24 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v20.f32[0] != 0.0)), 0x1FuLL));
  v24.i32[3] = 0;
  v38 = vbslq_s8(vcltzq_s32(v24), vmulq_f32(vmulq_f32(v23, vrsqrtsq_f32(v21, vmulq_f32(v23, v23))), v19), v19);
  v25 = vfx_script_clock_simulation_index();
  v26 = 277803737 * (((747796405 * (v25 + v16) - 347334518) >> (((747796405 * (v25 + v16) - 347334518) >> 28) + 4)) ^ (747796405 * (v25 + v16) - 347334518));
  v39 = vmulq_n_f32(v38, (((COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0) * (COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0)) * 7.0) + 1.0);
  v27 = vfx_script_clock_simulation_index();
  v28 = 277803737 * (((747796405 * (v27 + v16) + 1551328691) >> (((747796405 * (v27 + v16) + 1551328691) >> 28) + 4)) ^ (747796405 * (v27 + v16) + 1551328691));
  *&v36 = (COERCE_FLOAT((v28 >> 31) ^ (v28 >> 9) | 0x3F800000) + -1.0) + 5.0;
  v29 = vfx_script_clock_simulation_index();
  v30 = 277803737 * (((747796405 * (v29 + v16) - 97178991) >> (((747796405 * (v29 + v16) - 97178991) >> 28) + 4)) ^ (747796405 * (v29 + v16) - 97178991));
  v35 = fminf(fmaxf(((COERCE_FLOAT((v30 >> 31) ^ (v30 >> 9) | 0x3F800000) + -1.0) * 0.006) + -0.004, 0.0), 1.0);
  v31 = vfx_script_clock_simulation_index();
  v32 = 277803737 * (((747796405 * (v31 + v16) + 1359517557) >> (((747796405 * (v31 + v16) + 1359517557) >> 28) + 4)) ^ (747796405 * (v31 + v16) + 1359517557));
  *a4 = v39;
  *a6 = a9;
  *a7 = vmulq_n_f32(a9, ((COERCE_FLOAT((v32 >> 31) ^ (v32 >> 9) | 0x3F800000) + -1.0) * 0.6) + 0.0);
  v33.n128_u64[0] = __PAIR64__(LODWORD(v35), v36);
  result = v41;
  v33.n128_u64[1] = v41.n128_u64[1];
  *a5 = v33;
  return result;
}

float32x4_t ParticleInit_NearbyPeerPaymentVFX_particleInit_244(uint64_t a1, int a2, int a3, float32x4_t *a4, float32x4_t a5)
{
  v8 = vfx_script_clock_simulation_index();
  v9 = 277803737 * (((747796405 * (a3 + a2 + v8) + 1359517557) >> (((747796405 * (a3 + a2 + v8) + 1359517557) >> 28) + 4)) ^ (747796405 * (a3 + a2 + v8) + 1359517557));
  result = vmulq_n_f32(a5, ((COERCE_FLOAT((v9 >> 31) ^ (v9 >> 9) | 0x3F800000) + -1.0) * 0.85) + 0.0);
  *a4 = result;
  return result;
}

int8x16_t ParticleUpdate_NearbyPeerPaymentVFX_particleUpdate_148(float32x2_t a1, float32x2_t a2, float a3, float a4, uint64_t a5, uint64_t a6, int8x16_t *a7, float *a8)
{
  v8 = *a7;
  v9 = vmuls_lane_f32(a3, a2, 1) / a4;
  if (fabsf(a4) <= 0.00000011921)
  {
    v9 = 0.0;
  }

  *result.i8 = vmul_f32(a1, a2);
  *a8 = v9;
  result.i64[1] = vextq_s8(v8, v8, 8uLL).u64[0];
  *a7 = result;
  return result;
}

void sub_1BDB23054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB23BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2ADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2B010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  _Unwind_Resume(a1);
}

void sub_1BDB2BA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2C234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2ED78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2F8E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class initCNAvatarView_0()
{
  if (qword_1EBD682D8 != -1)
  {
    dispatch_once(&qword_1EBD682D8, &__block_literal_global_39);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_1_1 = result;
  _MergedGlobals_616 = CNAvatarViewFunction_0;
  return result;
}

Class initCNAvatarCardController_0()
{
  if (qword_1EBD682D8 != -1)
  {
    dispatch_once(&qword_1EBD682D8, &__block_literal_global_39);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBD682E0 = result;
  off_1EE98A640 = CNAvatarCardControllerFunction_0;
  return result;
}

void sub_1BDB30A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB31408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB327CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __PKAccountBillPaymentPrimaryButtonTintColor_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v2 = ;

  return v2;
}

id __PKAccountBillPaymentPrimaryButtonTextColor_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

uint64_t newInstallmentsForAccount(void *a1, void **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [a1 creditDetails];
  v4 = [v3 installmentPlans];

  if (a2)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v24 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v6)
  {
    v23 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v23 = 0;
  v8 = *v26;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v25 + 1) + 8 * i);
      if ([v10 state] == 2)
      {
        v11 = [v10 payments];
        v12 = [v11 firstObject];

        v13 = [v12 statementIdentifier];

        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = [v12 amountPaid];
        v15 = [MEMORY[0x1E696AB90] zero];
        if (PKEqualObjects())
        {
        }

        else
        {
          v16 = PKForceNewInstallmentBillPaymentScreen();

          if ((v16 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        if (![v10 userViewedIntroduction])
        {
          if (!a2)
          {

            v19 = 1;
            v20 = v5;
            goto LABEL_29;
          }

LABEL_20:
          [v24 addObject:v10];
          v23 = 1;
LABEL_21:

          continue;
        }

        v17 = PKForceNewInstallmentBillPaymentScreen();
        v18 = v17;
        if (a2 && (v17 & 1) != 0)
        {
          goto LABEL_20;
        }

        if (v18)
        {
          v23 = 1;
          goto LABEL_27;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_27:

  if (a2)
  {
    v21 = [v24 copy];
    v20 = *a2;
    *a2 = v21;
    v19 = v23;
LABEL_29:
  }

  else
  {
    v19 = v23;
  }

  return v19 & 1;
}

void sub_1BDB35C2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_1BDB389A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB39F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB3A608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB3AF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id createDateFormatter()
{
  v0 = createBaseDateFormatter();
  [v0 setLocalizedDateFormatFromTemplate:@"MMMM d"];

  return v0;
}

BOOL accountCurrentStatementIsLastMonthsStatement(void *a1)
{
  v1 = a1;
  v25 = [v1 creditDetails];
  v2 = [v25 accountSummary];
  v3 = [v2 balanceSummary];
  v24 = v2;
  v4 = [v2 currentStatement];
  v5 = [v4 openingDate];
  v6 = [v4 closingDate];
  v7 = PKDatesMidpoint();

  v8 = [v3 openingDate];
  v9 = [v3 closingDate];
  v10 = PKDatesMidpoint();

  v11 = objc_alloc(MEMORY[0x1E695DEE8]);
  v12 = [v11 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v13 = [v1 creditDetails];

  v14 = [v13 productTimeZone];
  [v12 setTimeZone:v14];

  v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v15 setMonth:-1];
  v16 = [v12 dateByAddingComponents:v15 toDate:v10 options:0];
  v17 = [v12 components:12 fromDate:v16];
  v18 = v7;
  v19 = [v12 components:12 fromDate:v7];
  v20 = [v17 month];
  if (v20 == [v19 month])
  {
    v21 = [v17 year];
    v22 = v21 == [v19 year];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id createBaseDateFormatter()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v0 setLocale:v1];

  [v0 setFormattingContext:1];

  return v0;
}

void sub_1BDB3CE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB3DD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB3FBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB40268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB40F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB410F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initNPKIDVRemoteDeviceSession()
{
  if (qword_1EBD682F0 != -1)
  {
    dispatch_once(&qword_1EBD682F0, &__block_literal_global_42);
  }

  result = objc_getClass("NPKIDVRemoteDeviceSession");
  _MergedGlobals_1_2 = result;
  getNPKIDVRemoteDeviceSessionClass = NPKIDVRemoteDeviceSessionFunction;
  return result;
}

void *__LoadNanoPassKit_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_0 = result;
  return result;
}

void sub_1BDB44A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDB45654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB45EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB465F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  objc_destroyWeak((v63 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v64 - 248), 8);
  _Block_object_dispose((v64 - 200), 8);
  _Block_object_dispose((v64 - 152), 8);
  _Unwind_Resume(a1);
}

void __PKLookupAppStoreApplications_block_invoke_4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  v11 = a1[5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __PKLookupAppStoreApplications_block_invoke_5;
  v16[3] = &unk_1E80142B8;
  v12 = a1[6];
  v19 = v9;
  v20 = v12;
  v17 = v7;
  v18 = v8;
  v13 = v8;
  v14 = v9;
  v15 = v7;
  [v10 _cacheLockupsWithRequests:v11 withCompletionBlock:v16];
}

void __PKLookupAppStoreApplications_block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    (*(*(a1 + 48) + 16))();
  }
}

void __PKLookupAppStoreApplications_block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (([a2 isCanceled] & 1) == 0)
  {
    if ([*(*(*(a1 + 64) + 8) + 40) containsObject:*(a1 + 32)])
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __PKLookupAppStoreApplications_block_invoke_7;
      v12[3] = &unk_1E80137C8;
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      v15 = v8;
      v14 = v7;
      [v9 _lockupDictionaryForRequest:v10 includingKeys:v11 withCompletionBlock:v12];
    }

    else
    {
      (*(v8 + 2))(v8, v7, 0);
    }
  }
}

uint64_t __PKLookupAppStoreApplications_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[PKAMSLookupItem alloc] initWithDict:v4];

  [v3 safelyAddObject:v5];
  v6 = *(*(a1 + 48) + 16);

  return v6();
}

void __PKLookupAppStoreApplications_block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (([a4 isCanceled] & 1) == 0)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) copy];
    (*(v5 + 16))(v5, v6);
  }
}

id PKLookupAppStoreApplication(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Looking up item(s) from AppleMediaServices: %@.", &buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x1E69B8658]);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__6;
    v30 = __Block_byref_object_dispose__6;
    v31 = 0;
    v7 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"Wallet App Lookup"];
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = [v8 initWithObjects:{*MEMORY[0x1E698B3F0], *MEMORY[0x1E698B410], *MEMORY[0x1E698B428], *MEMORY[0x1E698B420], *MEMORY[0x1E698B418], *MEMORY[0x1E698B408], 0}];
    [v6 addOperation:&__block_literal_global_324];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __PKLookupAppStoreApplication_block_invoke_3;
    v21[3] = &unk_1E8014380;
    v10 = v7;
    v22 = v10;
    v23 = v3;
    v11 = v6;
    v24 = v11;
    v12 = v9;
    v25 = v12;
    p_buf = &buf;
    [v11 addOperation:v21];
    v13 = [MEMORY[0x1E695DFB0] null];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __PKLookupAppStoreApplication_block_invoke_7;
    v17[3] = &unk_1E80143A8;
    v19 = v4;
    v20 = &buf;
    v14 = v10;
    v18 = v14;
    v15 = [v11 evaluateWithInput:v13 completion:v17];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __PKLookupAppStoreApplication_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PKLookupAppStoreApplication_block_invoke_2;
  v9[3] = &unk_1E8010E20;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __PKLookupAppStoreApplication_block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *MEMORY[0x1E698B350];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __PKLookupAppStoreApplication_block_invoke_4;
  v18[3] = &unk_1E8014358;
  v24 = v9;
  v19 = v7;
  v20 = v8;
  v21 = *(a1 + 48);
  v22 = *(a1 + 32);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v23 = v13;
  v25 = v14;
  v15 = v8;
  v16 = v9;
  v17 = v7;
  [v10 _lockupRequestForBundleID:v11 withContext:v12 completionBlock:v18];
}

void __PKLookupAppStoreApplication_block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    if (!v5 || a3)
    {
      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __PKLookupAppStoreApplication_block_invoke_5;
      v10[3] = &unk_1E8014330;
      v6 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = v5;
      v7 = *(a1 + 64);
      v8 = *(a1 + 80);
      v13 = v7;
      v14 = v8;
      [v6 addOperation:v10];
      (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 40), 0, v9);
    }
  }
}

void __PKLookupAppStoreApplication_block_invoke_5(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (([a2 isCanceled] & 1) == 0)
  {
    v9 = a1[4];
    v10 = a1[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __PKLookupAppStoreApplication_block_invoke_6;
    v12[3] = &unk_1E8014308;
    v11 = a1[6];
    v15 = a1[7];
    v14 = v8;
    v13 = v7;
    [v9 _lockupDictionaryForRequest:v10 includingKeys:v11 withCompletionBlock:v12];
  }
}

uint64_t __PKLookupAppStoreApplication_block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKAMSLookupItem alloc] initWithDict:v3];

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

uint64_t __PKLookupAppStoreApplication_block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [a4 isCanceled];
  if ((result & 1) == 0)
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  return result;
}

PKLinkedApplicationAMSPromiseWrapper *PKLookupAppStoreApplicationPrivacyPolicy(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Looking up item(s) from AppleMediaServices for bundle identifier: %@.", buf, 0xCu);
    }

    v6 = MEMORY[0x1E698C7D8];
    v7 = [MEMORY[0x1E698C9E0] bagSubProfile];
    v8 = [MEMORY[0x1E698C9E0] bagSubProfileVersion];
    v9 = [v6 bagForProfile:v7 profileVersion:v8];

    v10 = [objc_alloc(MEMORY[0x1E698C9E0]) initWithType:0 clientIdentifier:@"com.apple.Passbook" clientVersion:@"1" bag:v9];
    v22 = v3;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v10 setBundleIdentifiers:v11];

    [v10 setAdditionalQueryParams:&unk_1F3CC8820];
    v12 = [v10 perform];
    v13 = [[PKLinkedApplicationAMSPromiseWrapper alloc] initWithAMSPromise:v12];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __PKLookupAppStoreApplicationPrivacyPolicy_block_invoke;
    v18[3] = &unk_1E80143D0;
    v14 = v13;
    v19 = v14;
    v20 = v3;
    v21 = v4;
    [v12 addFinishBlock:v18];
    v15 = v21;
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __PKLookupAppStoreApplicationPrivacyPolicy_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 localizedDescription];
      v31 = 138412290;
      v32 = v8;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Received error: %@.", &v31, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [v5 responseDataItems];
    v10 = [v9 count];
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 134217984;
      v32 = v10;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Received %ld results from AppleMediaServices", &v31, 0xCu);
    }
  }

  v11 = [v9 firstObject];
  if (v11)
  {
    v12 = PKIsPad();
    v13 = @"ios";
    if (v12)
    {
      v13 = @"ipados";
    }

    v14 = v13;
    v15 = [v11 PKDictionaryForKey:@"attributes"];
    v16 = objc_opt_class();
    v17 = [v15 PKDictionaryOfKeyClass:v16 valueClass:objc_opt_class() ForKey:@"platformAttributes"];
    v18 = [v17 objectForKeyedSubscript:v14];

    v19 = [v18 mutableCopy];
    if (v19 || ([v17 allValues], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "firstObject"), v21 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v21, "mutableCopy"), v21, v20, v19))
    {
      [v19 addEntriesFromDictionary:v15];
      v22 = [objc_alloc(MEMORY[0x1E698C978]) initWithLookupDictionary:v19];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = [v22 itemDictionary];
  v24 = [v23 objectForKeyedSubscript:*MEMORY[0x1E698C638]];

  v25 = PKLogFacilityTypeGetObject();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      v27 = *(a1 + 40);
      v31 = 138412546;
      v32 = v24;
      v33 = 2112;
      v34 = v27;
      _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Received privacy policy string from AMS: %@ for bundle identifier: %@.", &v31, 0x16u);
    }

    v28 = [MEMORY[0x1E695DFF8] URLWithString:v24];
    if (v28)
    {
      v29 = *(*(a1 + 48) + 16);
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 138412290;
        v32 = v24;
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Unable to convert received privacy policy string: %@ to URL.", &v31, 0xCu);
      }

      v29 = *(*(a1 + 48) + 16);
    }

    v29();
  }

  else
  {
    if (v26)
    {
      v30 = *(a1 + 40);
      v31 = 138412290;
      v32 = v30;
      _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: No privacy policy string was returned from AppleMediaServices for bundle identifier: %@.", &v31, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __LookupSystemApplications_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69635F8] enumeratorWithOptions:1];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = v24 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v22 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v21 + 1) + 8 * v6);
      v8 = *(a1 + 32);
      v9 = [v7 bundleIdentifier];
      LOBYTE(v8) = [v8 containsObject:v9];

      if (v8)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = objc_alloc(MEMORY[0x1E69A8A00]);
    v12 = [v10 URL];
    v13 = [v11 initWithURL:v12];

    v14 = *(a1 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __LookupSystemApplications_block_invoke_2;
    v17[3] = &unk_1E80143F8;
    v18 = v14;
    v15 = *(a1 + 48);
    v19 = v10;
    v20 = v15;
    v16 = v10;
    [v13 getCGImageForImageDescriptor:v18 completion:v17];
  }

  else
  {
LABEL_9:

LABEL_12:
    (*(*(a1 + 48) + 16))();
  }
}

void __LookupSystemApplications_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
    [*(a1 + 32) scale];
    v5 = [v4 initWithCGImage:a2 scale:0 orientation:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 48) + 16))();
}

void __LookupApplications_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:*(*(&v18 + 1) + 8 * v6) error:0];
        if (v7)
        {
          v8 = v7;

          v9 = objc_alloc(MEMORY[0x1E69A8A00]);
          v10 = [v8 URL];
          v11 = [v9 initWithURL:v10];

          v12 = *(a1 + 40);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __LookupApplications_block_invoke_2;
          v14[3] = &unk_1E80143F8;
          v15 = v12;
          v16 = v8;
          v17 = *(a1 + 48);
          v13 = v8;
          [v11 getCGImageForImageDescriptor:v15 completion:v14];

          return;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __LookupApplications_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
    [*(a1 + 32) scale];
    v6 = [v4 initWithCGImage:a2 scale:0 orientation:?];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6);
}

void __LookupInstalledApplications_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __LookupInstalledApplications_block_invoke_2;
  v12[3] = &unk_1E8014420;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v7;
  v13 = v9;
  v10 = v6;
  v11 = v7;
  [v8 getRemovableSytemApplicationsWithCompletionBlock:v12];
}

uint64_t __LookupInstalledApplications_block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __LookupInstalledApplications_block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __LookupInstalledApplications_block_invoke_4;
  v13[3] = &unk_1E8014420;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v7;
  v14 = v10;
  v11 = v6;
  v12 = v7;
  [v8 getLibraryItemsForITunesStoreItemIdentifiers:v9 completionBlock:v13];
}

void __LookupInstalledApplications_block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
    [*(a1 + 32) scale];
    v5 = [v4 initWithCGImage:a2 scale:0 orientation:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 48) + 16))();
}

void __LookupInstalledApplications_block_invoke_7(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __LookupStoreApplications_block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  if (!v3)
  {
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      *buf = 138543362;
      v45 = v31;
      _os_log_error_impl(&dword_1BD026000, v24, OS_LOG_TYPE_ERROR, "PKLinkedApplication: Error looking up items %{public}@ in store.", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if ([*(a1 + 40) isCanceled])
  {
LABEL_10:
    (*(*(a1 + 56) + 16))();
    goto LABEL_16;
  }

  [*(a1 + 48) scale];
  v5 = v4;
  [*(a1 + 48) size];
  v7 = floor(v5 * floor(v6));
  v9 = floor(v5 * floor(v8));
  v10 = [v3 artwork];
  v42[0] = *MEMORY[0x1E698B2F8];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v12 = [v11 stringValue];
  v43[0] = v12;
  v42[1] = *MEMORY[0x1E698B2F0];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v14 = [v13 stringValue];
  v15 = *MEMORY[0x1E698B2E8];
  v16 = *MEMORY[0x1E698B2D8];
  v43[1] = v14;
  v43[2] = v16;
  v17 = *MEMORY[0x1E698B2E0];
  v42[2] = v15;
  v42[3] = v17;
  v43[3] = *MEMORY[0x1E698B2D0];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
  v19 = [v10 makeURLWithSubstitutions:v18];

  if (v19)
  {
    if (([v19 isFileURL] & 1) != 0 || (objc_msgSend(v19, "scheme"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"data"), v20, v21))
    {
      v22 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v19 options:0 error:0];
      v23 = *(a1 + 48);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __LookupStoreApplications_block_invoke_390;
      v39[3] = &unk_1E80144C0;
      v40 = v3;
      v41 = *(a1 + 56);
      ImageFromData(v22, v23, v39);
    }

    else
    {
      v27 = [MEMORY[0x1E696AF78] sharedSession];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __LookupStoreApplications_block_invoke_393;
      v34[3] = &unk_1E80144E8;
      v35 = *(a1 + 40);
      v36 = *(a1 + 48);
      v37 = v3;
      v38 = *(a1 + 56);
      v28 = [v27 dataTaskWithURL:v19 completionHandler:v34];

      [v28 resume];
      v29 = *(a1 + 40);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __LookupStoreApplications_block_invoke_395;
      v32[3] = &unk_1E8010970;
      v33 = v28;
      v30 = v28;
      [v29 addCancelAction:v32];
    }
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v3 appStoreIdentifier];
      *buf = 138412290;
      v45 = v26;
      _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Unable to find app icon URL for %@", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

LABEL_16:
}

void ImageFromData(void *a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = PKCreateCGImage(v5);
    if (v8)
    {
      v9 = v8;
      v10 = objc_alloc(MEMORY[0x1E69A8988]);
      [v6 scale];
      v11 = [v10 initWithCGImage:v9 scale:?];
      v12 = objc_alloc(MEMORY[0x1E69A8A00]);
      v19[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      v14 = [v12 initWithImages:v13];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __ImageFromData_block_invoke;
      v15[3] = &unk_1E8014538;
      v16 = v6;
      v18 = v9;
      v17 = v7;
      [v14 getCGImageForImageDescriptor:v16 completion:v15];
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

void __LookupStoreApplications_block_invoke_390(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setIconImage:v3];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) appStoreIdentifier];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Failed to create app image from data for %@", &v6, 0xCu);
    }

    [*(a1 + 32) setIconImage:0];
  }

  (*(*(a1 + 40) + 16))();
}

void __LookupStoreApplications_block_invoke_393(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9 || ([*(a1 + 32) isCanceled] & 1) != 0)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 48) appStoreIdentifier];
      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Failed to download app icon for %@ with error: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __LookupStoreApplications_block_invoke_2;
    v14[3] = &unk_1E80144C0;
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    ImageFromData(v7, v13, v14);
  }
}

uint64_t __LookupStoreApplications_block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIconImage:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __ImageFromData_block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) scale];
  v5 = v4;
  v6 = objc_alloc(MEMORY[0x1E69DCAB8]);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(a1 + 48);
  }

  v8 = [v6 initWithCGImage:v7 scale:0 orientation:v5];
  CFRelease(*(a1 + 48));
  (*(*(a1 + 40) + 16))();
}

void sub_1BDB4CADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB4DA1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDB4F968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB57AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB5A778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initFKBankConnectImageProvider()
{
  if (qword_1EBD68310 != -1)
  {
    dispatch_once(&qword_1EBD68310, &__block_literal_global_60);
  }

  result = objc_getClass("FKBankConnectImageProvider");
  qword_1EBD68308 = result;
  getFKBankConnectImageProviderClass = FKBankConnectImageProviderFunction;
  return result;
}

void *__LoadFinanceKitUI_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary = result;
  return result;
}

void sub_1BDB5C128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB5ED54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

Class initCNAvatarView_1()
{
  if (qword_1EBD68320 != -1)
  {
    dispatch_once(&qword_1EBD68320, &__block_literal_global_241);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_1_4 = result;
  _MergedGlobals_617 = CNAvatarViewFunction_1;
  return result;
}

Class initCNAvatarCardController_1()
{
  if (qword_1EBD68320 != -1)
  {
    dispatch_once(&qword_1EBD68320, &__block_literal_global_241);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBD68328 = result;
  off_1EE98A650 = CNAvatarCardControllerFunction_1;
  return result;
}

Class initCNContactViewController()
{
  if (qword_1EBD68320 != -1)
  {
    dispatch_once(&qword_1EBD68320, &__block_literal_global_241);
  }

  result = objc_getClass("CNContactViewController");
  qword_1EBD68330 = result;
  off_1EE98A658 = CNContactViewControllerFunction;
  return result;
}

void sub_1BDB6187C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB631AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKUIGetMinScreenType()
{
  if (qword_1EBD6AC20 != -1)
  {
    dispatch_once(&qword_1EBD6AC20, &__block_literal_global_370);
  }

  return qword_1EBD6AC10;
}

void PKUIFrontCameraReferencePosition(void *a1, id *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fixedCoordinateSpace];
    if (a2)
    {
      objc_storeStrong(a2, v5);
    }

    PKFrontCameraNormalizedReferencePosition();
    [v5 bounds];
  }

  else
  {
    __break(1u);
  }
}

double PKUIFrontCameraCurrentPosition(void *a1, id *a2)
{
  v12 = 0;
  v3 = a1;
  PKUIFrontCameraReferencePosition(v3, &v12);
  v5 = v4;
  v7 = v6;
  v8 = [v3 coordinateSpace];

  if (a2)
  {
    objc_storeStrong(a2, v8);
  }

  [v8 convertPoint:v12 fromCoordinateSpace:{v5, v7}];
  v10 = v9;

  return v10;
}

id PKUIColorFromP3ColorData(void *a1)
{
  v1 = a1;
  if (([v1 length] & 0xFFFFFFFFFFFFFFF8) == 0x20 && ((v2 = objc_msgSend(v1, "bytes"), v3 = *v2, *v2 >= 0.0) ? (v4 = v3 <= 1.0) : (v4 = 0), v4))
  {
    v5 = 0;
    v7 = v2[1];
    if (v7 >= 0.0 && v7 <= 1.0)
    {
      v5 = 0;
      v9 = v2[2];
      if (v9 >= 0.0 && v9 <= 1.0)
      {
        v5 = 0;
        v11 = v2[3];
        if (v11 >= 0.0 && v11 <= 1.0)
        {
          v5 = [MEMORY[0x1E69DC888] colorWithDisplayP3Red:v3 green:? blue:? alpha:?];
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void PKUIEndTrackingPresentation(uint64_t a1, uint64_t a2)
{
  if (PresentationTrackingCounter)
  {
    --PresentationTrackingCounter;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BD026000, v4, OS_LOG_TYPE_ERROR, "INVARIANT VIOLATION: attempting to stop tracking a non-existent presentation.", v5, 2u);
    }
  }
}

BOOL PKUIStoreDemoGatewayWithView(void *a1)
{
  v1 = [a1 pkui_viewControllerFromResponderChain];
  v2 = PKUIStoreDemoGatewayWithViewController(v1);

  return v2;
}

BOOL PKUIStoreDemoGatewayWithViewController(void *a1)
{
  v1 = a1;
  v4 = PKUIStoreDemoGatewayViewController(v1, v2, v3);
  if (v4)
  {
    [v1 presentViewController:v4 animated:1 completion:0];
  }

  return v4 == 0;
}

id PKUIStoreDemoGatewayViewController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (PKStoreDemoModeEnabled())
  {
    v3 = MEMORY[0x1E69DC650];
    v4 = PKLocalizedString(&cfstr_GenericDemoMod.isa);
    v5 = [v3 alertControllerWithTitle:v4 message:0 preferredStyle:1];

    v6 = MEMORY[0x1E69DC648];
    v7 = PKLocalizedString(&cfstr_GenericDemoMod_0.isa);
    v8 = [v6 actionWithTitle:v7 style:1 handler:0];
    [v5 addAction:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PKFloatCeilToPixel(__n128 a1, __n128 a2)
{
  v2 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a2.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v2;

  return MEMORY[0x1EEE24990](a1, a2);
}

uint64_t PKUserInterfaceIdiom()
{
  if (qword_1EBD6ABE0 != -1)
  {
    dispatch_once(&qword_1EBD6ABE0, &__block_literal_global_50);
  }

  return qword_1EBD6ABD8;
}

double PKViewSetAlphaAnimated(void *a1, void *a2, double a3)
{
  v4 = 0.0;
  _PKViewSetAlphaAnimated(a1, a2, &v4, a3, 0.0);
  return v4;
}

void _PKViewSetAlphaAnimated(void *a1, void *a2, double *a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v21 = 0;
  v11 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
  [v9 pkui_setAlpha:v11 withAnimationFactory:&v21 animation:0 removePriorAnimation:a4];

  v12 = v21;
  if (v21)
  {
    if (a3)
    {
      [v21 duration];
      *a3 = v13 + a5;
      v12 = v21;
    }

    [v12 setBeginTime:a5];
    if (v10)
    {
      v14 = v21;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = ___PKViewSetAlphaAnimated_block_invoke;
      v19 = &unk_1E8010AD8;
      v20 = v10;
      [v14 pkui_setCompletionHandler:&v16];
    }

    v15 = [v9 layer];
    [v15 removeAnimationForKey:@"opacity"];
    [v15 addAnimation:v21 forKey:@"opacity"];
  }

  else
  {
    if (a3)
    {
      *a3 = 0.0;
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 1);
    }
  }
}

double PKViewSetAlphaAnimated(void *a1, void *a2, double a3, double a4)
{
  v5 = 0.0;
  _PKViewSetAlphaAnimated(a1, a2, &v5, a3, a4);
  return v5;
}

void sub_1BDB68844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *PKUIKeyboardIsHardwareKeyboardActive()
{
  result = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
  if (result)
  {
    v1 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    v2 = [v1 isMinimized];

    return v2;
  }

  return result;
}

id PKAttributedStringByAddingLinkToRange(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = MEMORY[0x1E696AD40];
  v9 = a1;
  v10 = [[v8 alloc] initWithString:v9];

  v11 = *MEMORY[0x1E69DB670];
  if (v7)
  {
    [v10 addAttribute:*MEMORY[0x1E69DB670] value:v7 range:{a2, a3}];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3BD7330];
    [v10 addAttribute:v11 value:v12 range:{a2, a3}];
  }

  return v10;
}

id PKAttributedStringByAddingLinkToSubstring(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 rangeOfString:v6];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Couldn't add link to string - no occurrences found of '%@' within '%@'.", &v14, 0x16u);
    }

    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
  }

  else
  {
    v11 = PKAttributedStringByAddingLinkToRange(v5, v8, v9, v7);
  }

  v12 = v11;

  return v12;
}

id PKAttributedStringByParsingEmphasisInString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v9 = [v6 fontDescriptor];
    v10 = [v9 fontDescriptorWithSymbolicTraits:2];
    v44 = v9;
    v11 = [v9 fontDescriptorWithSymbolicTraits:1];
    v12 = MEMORY[0x1E69DB878];
    [v6 pointSize];
    v43 = v10;
    v13 = [v12 fontWithDescriptor:v10 size:?];
    v14 = MEMORY[0x1E69DB878];
    [v6 pointSize];
    v42 = v11;
    v15 = [v14 fontWithDescriptor:v11 size:?];
    v16 = MEMORY[0x1E695E0F8];
    if (v7)
    {
      v16 = v7;
    }

    v17 = v16;

    v40 = v17;
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v17];
    v19 = [v18 mutableCopy];
    v20 = [v18 mutableCopy];
    v21 = [v18 mutableCopy];
    v22 = *MEMORY[0x1E69DB648];
    [v18 setValue:v6 forKey:*MEMORY[0x1E69DB648]];
    v39 = v15;
    [v19 setValue:v15 forKey:v22];
    v41 = v13;
    [v20 setValue:v13 forKey:v22];
    [v21 setValue:&unk_1F3CC6EA8 forKey:*MEMORY[0x1E69DB6B8]];
    [v21 setValue:v6 forKey:v22];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PKAttributedStringByParsingEmphasisInString_block_invoke;
    aBlock[3] = &unk_1E8014CB8;
    v58 = &v59;
    v45 = v5;
    v23 = v5;
    v55 = v23;
    v37 = v18;
    v56 = v37;
    v24 = v8;
    v57 = v24;
    v25 = _Block_copy(aBlock);
    v26 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"(\\*|\\_|\\~~)+([^\\*\\_\\~~]*)(\\*|\\_|\\~~)+" options:1 error:0];
    v27 = [v23 length];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __PKAttributedStringByParsingEmphasisInString_block_invoke_2;
    v46[3] = &unk_1E8014CE0;
    v28 = v25;
    v52 = v28;
    v53 = &v59;
    v29 = v23;
    v47 = v29;
    v30 = v21;
    v48 = v30;
    v31 = v19;
    v49 = v31;
    v32 = v20;
    v50 = v32;
    v33 = v24;
    v51 = v33;
    [v26 enumerateMatchesInString:v29 options:0 range:0 usingBlock:{v27, v46}];
    v34 = v60[3];
    if (v34 != [v29 length])
    {
      (*(v28 + 2))(v28, [v29 length]);
    }

    v35 = [v33 copy];

    _Block_object_dispose(&v59, 8);
    v7 = v40;
    v5 = v45;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void __PKAttributedStringByParsingEmphasisInString_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 56) + 8) + 24);
  v5 = [*(a1 + 32) substringWithRange:{v3, a2 - v3}];
  v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:*(a1 + 40)];
  [*(a1 + 48) appendAttributedString:v4];
}

void __PKAttributedStringByParsingEmphasisInString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  v4 = a2;
  (*(v3 + 16))(v3, [v4 range]);
  v5 = [v4 range];
  [v4 range];
  *(*(*(a1 + 80) + 8) + 24) = v6 + v5;
  v7 = *(a1 + 32);
  v8 = [v4 range];
  v10 = v9;

  v11 = [v7 substringWithRange:{v8, v10}];
  LODWORD(v4) = [v11 characterAtIndex:0];
  v12 = [v11 characterAtIndex:1];
  if (v4 == 126 && v12 == 126)
  {
    v13 = -4;
    v14 = 2;
    v15 = 40;
  }

  else if (v12 == 95 || v12 == 42)
  {
    v13 = -4;
    v14 = 2;
    v15 = 56;
  }

  else
  {
    v13 = -2;
    v14 = 1;
    v15 = 48;
  }

  v16 = [v11 substringWithRange:{v14, objc_msgSend(v11, "length") + v13}];
  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [*(a1 + v15) copy];
  v19 = [v17 initWithString:v16 attributes:v18];

  [*(a1 + 64) appendAttributedString:v19];
}

id PKDeviceSpecificLocalizedStringKeyForKey(void *a1, int a2)
{
  if (a2)
  {
    [a1 stringByAppendingString:@"_WATCH"];
  }

  else
  {
    [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:a1];
  }
  v2 = ;

  return v2;
}

void __PKUserInterfaceIdiom_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  qword_1EBD6ABD8 = [v0 userInterfaceIdiom];
}

id PKUIFeatureNotImplementedAlertViewController()
{
  v0 = MEMORY[0x1E69DC650];
  v1 = PKLocalizedString(&cfstr_GenericFeature.isa);
  v2 = [v0 alertControllerWithTitle:v1 message:0 preferredStyle:1];

  v3 = MEMORY[0x1E69DC648];
  v4 = PKLocalizedString(&cfstr_GenericFeature_0.isa);
  v5 = [v3 actionWithTitle:v4 style:0 handler:0];
  [v2 addAction:v5];

  return v2;
}

id PKUIKeyWindow()
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v0 = 0x1E69DC000uLL;
  v1 = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [v1 connectedScenes];

  v3 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v3)
  {

LABEL_25:
    v19 = [*(v0 + 1640) sharedApplication];
    v20 = [v19 delegate];

    if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v18 = [v20 window];
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_30;
  }

  v4 = v3;
  v22 = v2;
  v23 = 0;
  v5 = *v29;
  v6 = 0x1E69DD000uLL;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v29 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v28 + 1) + 8 * i);
      if (![v8 activationState])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v10 = [v9 windows];
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = v6;
            v14 = *v25;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v24 + 1) + 8 * j);
                if ([v16 isKeyWindow])
                {
                  v17 = v16;

                  v23 = v17;
                  goto LABEL_18;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v6 = v13;
            v2 = v22;
          }
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v4);

  v0 = 0x1E69DC000;
  v18 = v23;
  if (!v23)
  {
    goto LABEL_25;
  }

LABEL_30:

  return v18;
}

BOOL PKIsSmallDevice()
{
  if (qword_1EBD6AC20 != -1)
  {
    dispatch_once(&qword_1EBD6AC20, &__block_literal_global_370);
  }

  return qword_1EBD6AC18 == 0;
}

double PKTableViewCellTextInset()
{
  if (qword_1EBD6AC20 != -1)
  {
    dispatch_once(&qword_1EBD6AC20, &__block_literal_global_370);
  }

  result = 15.0;
  if (qword_1EBD6AC18 >= 5)
  {
    v1 = PKUserInterfaceIdiomSupportsLargeLayouts();
    result = 20.0;
    if (v1)
    {
      return 15.0;
    }
  }

  return result;
}

double PKTableViewSideInset()
{
  v0 = PKUserInterfaceIdiomSupportsLargeLayouts();
  result = 20.0;
  if (v0)
  {
    return 28.0;
  }

  return result;
}

uint64_t PKRectRoundToPixel(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a4.n128_u64[0];
  v6 = a3.n128_u64[0];
  v7 = a2.n128_u64[0];
  v8 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a5.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v8;
  a2.n128_u64[0] = v7;
  a3.n128_u64[0] = v6;
  a4.n128_u64[0] = v5;

  return MEMORY[0x1EEE25340](a1, a2, a3, a4, a5);
}

uint64_t PKSizeRoundToPixel(double a1, double a2)
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  return PKSizeRoundToPixelWithScale();
}

uint64_t PKSizeCeilToPixel(__n128 a1, __n128 a2, __n128 a3)
{
  v3 = a2.n128_u64[0];
  v4 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a3.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v4;
  a2.n128_u64[0] = v3;

  return MEMORY[0x1EEE25790](a1, a2, a3);
}

uint64_t PKSizeFloorToPixel(__n128 a1, __n128 a2, __n128 a3)
{
  v3 = a2.n128_u64[0];
  v4 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a3.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v4;
  a2.n128_u64[0] = v3;

  return MEMORY[0x1EEE25798](a1, a2, a3);
}

uint64_t PKPointRoundToPixel(__n128 a1, __n128 a2, __n128 a3)
{
  v3 = a2.n128_u64[0];
  v4 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a3.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v4;
  a2.n128_u64[0] = v3;

  return MEMORY[0x1EEE252B8](a1, a2, a3);
}

uint64_t PKFloatFloorToPixel(__n128 a1, __n128 a2)
{
  v2 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a2.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v2;

  return MEMORY[0x1EEE24998](a1, a2);
}

id PKUIImageNamed(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x1E69DCAB8];
    v3 = PKPassKitUIBundle();
    v4 = [v2 imageNamed:v1 inBundle:v3];

    if (v4)
    {
      goto LABEL_7;
    }

    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PKUIImageNamed";
      v9 = 2114;
      v10 = v1;
      _os_log_error_impl(&dword_1BD026000, v5, OS_LOG_TYPE_ERROR, "%s: Failed to find image named '%{public}@'", &v7, 0x16u);
    }
  }

  v4 = 0;
LABEL_7:

  return v4;
}

id PKUIDynamicImageNamed(void *a1, void *a2)
{
  v3 = a2;
  v4 = PKUIImageNamed(a1);
  v5 = PKUIImageNamed(v3);

  v6 = PKUIDynamicImage(v4, v5);

  return v6;
}

id PKUIDynamicImage(void *a1, void *a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAC0]);
    v7 = MEMORY[0x1E69DD1B8];
    [v3 scale];
    v8 = [v7 traitCollectionWithDisplayScale:?];
    v9 = MEMORY[0x1E69DD1B8];
    v23[0] = v8;
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
    v23[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v12 = [v9 traitCollectionWithTraitsFromCollections:v11];

    [v6 registerImage:v3 withTraitCollection:v12];
    v13 = MEMORY[0x1E69DD1B8];
    v22[0] = v8;
    v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v22[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v16 = [v13 traitCollectionWithTraitsFromCollections:v15];

    [v6 registerImage:v5 withTraitCollection:v16];
    v17 = objc_alloc_init(MEMORY[0x1E69DD1B8]);
    v18 = [v17 imageConfiguration];
    v19 = [v6 imageWithConfiguration:v18];
  }

  else
  {
    if (v3)
    {
      v20 = v3;
    }

    else
    {
      v20 = v4;
    }

    v19 = v20;
  }

  return v19;
}

id PKDOverlayWhiteColor(int a1)
{
  if (a1)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.792156863 green:0.792156863 blue:0.792156863 alpha:0.72];
  }
  v1 = ;

  return v1;
}

id PKUIApplePayLogo(void *a1, CGFloat a2, CGFloat a3, double a4)
{
  v7 = a1;
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = 0;
    v11 = @"CashButtonLogoWhite";
  }

  else
  {
    v12 = [MEMORY[0x1E69DC888] blackColor];
    v13 = [v7 isEqual:v12];

    if (v13)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    v11 = @"CashButtonLogoBlack";
  }

  v14 = PKPassKitBundle();
  v15 = [v14 URLForResource:v11 withExtension:@"pdf"];

  if (a4 == 0.0)
  {
    PKScreenScale();
    a4 = v16;
  }

  v17 = PKUIImageFromPDF(v15, a2, a3, a4);
  v18 = v17;
  if (v10)
  {
    v19 = [v17 pkui_imageOverlaidWithColor:v10];

    v18 = v19;
  }

  return v18;
}

id PKUIPeerPaymentTopUpIconImage(double a1)
{
  v43[3] = *MEMORY[0x1E69E9840];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  v2 = *&qword_1EBD6ABF0;
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = [MEMORY[0x1E69DB878] pk_peerPaymentChiseledCashFontOfSize:a1 + -20.0];
  v6 = *MEMORY[0x1E69DB648];
  v43[0] = v5;
  v7 = *MEMORY[0x1E69DB600];
  v42[0] = v6;
  v42[1] = v7;
  v8 = [MEMORY[0x1E69DC888] clearColor];
  v43[1] = v8;
  v42[2] = *MEMORY[0x1E69DB650];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v43[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];

  [@"$" sizeWithAttributes:v10];
  v11.n128_u64[0] = v3;
  v12.n128_u64[0] = v4;
  v13.n128_f64[0] = a1;
  v14.n128_f64[0] = a1;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v15, v16, v11, v12, v13, v14, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v26 setOpaque:0];
  [v26 setScale:v2];
  v27 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v26 format:{a1, a1}];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __PKUIPeerPaymentTopUpIconImage_block_invoke;
  v31[3] = &unk_1E8014D08;
  v34 = v3;
  v35 = v4;
  v36 = a1;
  v37 = a1;
  v38 = v19;
  v39 = v21;
  v40 = v23;
  v41 = v25;
  v32 = @"$";
  v33 = v10;
  v28 = v10;
  v29 = [v27 imageWithActions:v31];

  return v29;
}

uint64_t __PKUIPeerPaymentTopUpIconImage_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  v5 = [MEMORY[0x1E69DC888] blackColor];
  CGContextSetFillColorWithColor(v4, [v5 CGColor]);

  [v3 fillRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);

  return [v6 drawInRect:v7 withAttributes:{v8, v9, v10, v11}];
}

id PKUIInfoButtonImage(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69DCAB8];
  if (_UISolariumFeatureFlagEnabled())
  {
    v3 = @"ellipsis";
  }

  else
  {
    v3 = @"ellipsis.circle";
  }

  v4 = [v2 systemImageNamed:v3];
  v5 = v4;
  if (v1)
  {
    v6 = [v4 imageWithSymbolConfiguration:v1];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

id PKUIInfoButtonImageWithDefaultConfiguration()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = PKUIInfoButtonImage(v0);

  return v1;
}

id PKUIBigInfoButtonImageWithDefaultConfiguration(uint64_t a1)
{
  v1 = MEMORY[0x1E69DCAB8];
  if (_UISolariumFeatureFlagEnabled())
  {
    v2 = @"info";
  }

  else
  {
    v2 = @"info.circle";
  }

  v3 = [v1 systemImageNamed:v2];
  v4 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v5 = [v3 imageWithSymbolConfiguration:v4];

  return v5;
}

id PKUIChevronImage()
{
  v0 = [MEMORY[0x1E69DCAD8] unspecifiedConfiguration];
  v1 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  v2 = [v1 imageWithSymbolConfiguration:v0];

  return v2;
}

id PKUISmallChevronImage()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  v4 = [v3 imageWithSymbolConfiguration:v2];

  return v4;
}

id PKUISmallExclamationMarkImage()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle"];
  v4 = [v3 imageWithSymbolConfiguration:v2];

  return v4;
}

id PKUICellAccessoryCheckmarkConfiguration(void *a1)
{
  v1 = _PKFontForDesign(a1, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDCF8], 2, 0, 0);
  v2 = [MEMORY[0x1E69DCAD8] configurationWithFont:v1 scale:2];

  return v2;
}

id PKFontForDefaultDesign(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = _PKFontForDesign(a1, *MEMORY[0x1E69DB8C8], a2, a3, a4, 0);

  return v4;
}

{
  v7 = MEMORY[0x1E69DD1B8];
  v8 = a1;
  v9 = _PKImplicitContentSizeCategoryWithMaximum(a2);
  v10 = [v7 traitCollectionWithPreferredContentSizeCategory:v9];

  v11 = _PKFontForDesign(v10, *MEMORY[0x1E69DB8C8], v8, a3, a4, 0);

  return v11;
}

id PKUIImageWithBackgroundAndCornerRadius(void *a1, void *a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  v13 = objc_alloc(MEMORY[0x1E69DCA78]);
  v14 = [MEMORY[0x1E69DCA80] preferredFormat];
  v15 = [v13 initWithBounds:v14 format:{v11, v12, a3, a4}];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __PKUIImageWithBackgroundAndCornerRadius_block_invoke;
  v20[3] = &unk_1E8014D30;
  v23 = a5;
  v24 = v11;
  v25 = v12;
  v26 = a3;
  v27 = a4;
  v21 = v10;
  v22 = v9;
  v16 = v9;
  v17 = v10;
  v18 = [v15 imageWithActions:v20];

  return v18;
}

uint64_t __PKUIImageWithBackgroundAndCornerRadius_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  if (*(a1 + 48) > 0.0)
  {
    v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(a1 + 56) cornerRadius:{*(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    [v5 addClip];
  }

  CGContextSetFillColorWithColor(v4, [*(a1 + 32) CGColor]);
  [v3 fillRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  [*(a1 + 40) size];
  PKRectCenteredIntegralRect();
  v6 = *(a1 + 40);

  return [v6 drawInRect:?];
}

PKContinuousButton *PKCreateLargeSolidButton()
{
  v2[0] = 0x402C000000000000;
  v2[1] = 1;
  v3 = vdupq_n_s64(2uLL);
  v4 = 2;
  v0 = [[PKContinuousButton alloc] initWithConfiguration:v2];

  return v0;
}

PKContinuousButton *PKCreateLargeSolidPillButton(uint64_t a1)
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v1 = _PKCreateLargeSolidPillButton();
  }

  else
  {
    v3 = 0;
    v4 = vdupq_n_s64(2uLL);
    v5 = v4;
    v1 = [[PKContinuousButton alloc] initWithConfiguration:&v3];
  }

  return v1;
}

void *_PKCreateLargeSolidPillButton()
{
  v0 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [v0 setCornerStyle:4];
  v1 = [PKLegacyButtonInterfaceButton buttonWithConfiguration:v0 primaryAction:0];
  v2 = [v1 tintColor];
  if (v2)
  {
    [v1 updateBackgroundColorWithColor:v2];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v1 updateBackgroundColorWithColor:v3];
  }

  return v1;
}

PKContinuousButton *PKCreateLargeBlurredPillButton(uint64_t a1)
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v1 = _PKCreateLargeSolidPillButton();
    [(UIView *)v1 pkui_applyGlassBackground];
  }

  else
  {
    v3 = 0;
    v4 = xmmword_1BE114BA0;
    v5 = vdupq_n_s64(2uLL);
    v1 = [[PKContinuousButton alloc] initWithConfiguration:&v3];
  }

  return v1;
}

id PKCreateLargeSecondaryPillButton()
{
  v0 = [MEMORY[0x1E69DC740] pkui_createSecondaryButtonConfiguration];
  v1 = [PKLegacyButtonInterfaceButton buttonWithConfiguration:v0 primaryAction:0];
  if (_UISolariumFeatureFlagEnabled())
  {
    [v1 pkui_applyGlassBackground];
  }

  return v1;
}

void PKUIPerformWithEffectiveTraitCollection(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    if (v5)
    {
      [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:?];
      v3[2](v3);
      [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v4];
    }

    else
    {
      v3[2](v3);
    }
  }
}

id PKUIGetAppIconForApplicationRecord(void *a1)
{
  v1 = [a1 URL];
  if (v1)
  {
    PKScreenScale();
    v3 = v2;
    v4 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
    [v4 setScale:v3];
    v5 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithURL:v1];
    v6 = [v5 prepareImageForDescriptor:v4];
    v7 = CGImageRetain([v6 CGImage]);
    if (v7)
    {
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v7 scale:0 orientation:v3];
      CGImageRelease(v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id PKUIGetWalletAppIcon(uint64_t a1)
{
  v1 = PKAppIconBundleIdentifier();
  v2 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
  v3 = _PKUIGetAppIconForBundleIdentifierAndDescriptor(v1, v2);

  return v3;
}

id PKUIGetWalletAppIconWithDescriptor(void *a1)
{
  v1 = a1;
  v2 = PKAppIconBundleIdentifier();
  v3 = _PKUIGetAppIconForBundleIdentifierAndDescriptor(v2, v1);

  return v3;
}

id _PKUIGetAppIconForBundleIdentifierAndDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  PKScreenScale();
  v6 = v5;
  [v3 setScale:?];
  v7 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v4];

  v8 = [v7 prepareImageForDescriptor:v3];

  v9 = CGImageRetain([v8 CGImage]);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v9 scale:0 orientation:v6];
    CGImageRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id PKUIGetWalletAppIconWithSize(uint64_t a1, double a2, double a3)
{
  v5 = PKAppIconBundleIdentifier();
  v6 = objc_alloc(MEMORY[0x1E69A8A30]);
  PKScreenScale();
  v8 = [v6 initWithSize:a2 scale:{a3, v7}];
  v9 = _PKUIGetAppIconForBundleIdentifierAndDescriptor(v5, v8);

  return v9;
}

CGFloat WLRectByApplyingContentModeToSizeInRect(unint64_t a1, NSAlignmentOptions a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v11 = MEMORY[0x1E695EFD0];
  v12 = *MEMORY[0x1E695EFD0];
  v13 = *(MEMORY[0x1E695EFD0] + 24);
  v19 = *(MEMORY[0x1E695EFD0] + 32);
  v20 = v13;
  v18 = *(MEMORY[0x1E695EFD0] + 40);
  if (a1 > 3)
  {
    if (a1 > 0xC)
    {
      goto LABEL_23;
    }

    if (((1 << a1) & 0x70) != 0)
    {
      a5 = a5 + a7 * 0.5 - a3 * 0.5;
    }

    else if (((1 << a1) & 0xA80) == 0)
    {
      if (((1 << a1) & 0x1500) == 0)
      {
        goto LABEL_23;
      }

      a5 = a5 + a7 - a3;
    }

    v14 = &v19;
LABEL_15:
    *v14 = a5;
    if (((1 << a1) & 0x190) != 0)
    {
      a6 = a6 + a8 * 0.5 - a4 * 0.5;
    }

    else if (((1 << a1) & 0x620) == 0)
    {
      if (((1 << a1) & 0x1840) == 0)
      {
        goto LABEL_23;
      }

      a6 = a6 + a8 - a4;
    }

    v15 = &v18;
    goto LABEL_22;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v13 = a8 / a4;
      if (a7 / a3 < a8 / a4)
      {
        v13 = a7 / a3;
      }
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_23;
      }

      v13 = a8 / a4;
      if (a7 / a3 > a8 / a4)
      {
        v13 = a7 / a3;
      }
    }

    v19 = a5 + (a7 - a3 * v13) * 0.5;
    v20 = v13;
    a5 = a6 + (a8 - a4 * v13) * 0.5;
    v14 = &v18;
    v12 = v13;
    goto LABEL_15;
  }

  v18 = a6;
  v19 = a5;
  if (a7 != a3)
  {
    v12 = a7 / a3;
  }

  if (a8 != a4)
  {
    v15 = &v20;
    a6 = a8 / a4;
LABEL_22:
    *v15 = a6;
    v13 = v20;
  }

LABEL_23:
  v17.a = v12;
  *&v17.b = *(v11 + 8);
  v17.d = v13;
  v17.tx = v19;
  v17.ty = v18;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a3;
  v21.size.height = a4;
  v22 = CGRectApplyAffineTransform(v21, &v17);
  if (a2)
  {
    *&v22.origin.x = NSIntegralRectWithOptions(v22, a2);
  }

  return v22.origin.x;
}

id PKDefaultSystemFontWithPreferredSizeForTextStyleAndWeight(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a1];
  [v3 pointSize];
  v5 = _PKSystemFontOfSizeAndWeightForDesign(*MEMORY[0x1E69658B8], @"ss04", v4, a2);

  return v5;
}

id PKRoundedSystemFontOfSizeAndWeight(double a1, double a2)
{
  v2 = _PKSystemFontOfSizeAndWeightForDesign(*MEMORY[0x1E69658C8], @"cv09", a1, a2);

  return v2;
}

id PKFontMatchingCriteria(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if ((a4 & 0x10) == 0)
  {
    v9 = *MEMORY[0x1E69DB8C8];
LABEL_4:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x1E69DB8D8];
  if ((a2 & 2) == 0)
  {
    goto LABEL_4;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
LABEL_6:
  v11 = MEMORY[0x1E69DD1B8];
  v12 = _PKImplicitContentSizeCategoryWithMaximum(v8);
  v13 = [v11 traitCollectionWithPreferredContentSizeCategory:v12];

  v14 = _PKFontForDesign(v13, v9, v7, a2, a4, v10);

  return v14;
}

uint64_t _PKFontForDesign(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a6;
  context = objc_autoreleasePoolPush();
  if (v12)
  {
    v15 = [v12 isEqualToString:*MEMORY[0x1E69DB8D8]];
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:v11];
  v17 = v16;
  if (v12)
  {
    v18 = [v16 fontDescriptorWithDesign:v12];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v17;
    }

    v21 = v20;

    v17 = v21;
  }

  if (a4)
  {
    v22 = [v17 fontDescriptorWithSymbolicTraits:a4 mask:a4];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    v25 = v24;

    v17 = v25;
  }

  v26 = v15 ^ 1;
  if (a5)
  {
    v26 = 0;
  }

  if (v26)
  {
    v37 = 0;
    goto LABEL_32;
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((a5 & 4) != 0)
  {
    v28 = *MEMORY[0x1E69DB900];
    v58[0] = *MEMORY[0x1E69DB908];
    v58[1] = v28;
    v59[0] = &unk_1F3CC6EC0;
    v59[1] = &unk_1F3CC6ED8;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
    [v27 addObject:v29];
  }

  if ((a5 & 2) != 0)
  {
    v30 = *MEMORY[0x1E69DB900];
    v56[0] = *MEMORY[0x1E69DB908];
    v56[1] = v30;
    v57[0] = &unk_1F3CC6EF0;
    v57[1] = &unk_1F3CC6F08;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
    [v27 addObject:v31];
  }

  if (a5)
  {
    v32 = *MEMORY[0x1E69DB900];
    v54[0] = *MEMORY[0x1E69DB908];
    v54[1] = v32;
    v55[0] = &unk_1F3CC6F20;
    v55[1] = &unk_1F3CC6F08;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    [v27 addObject:v33];
  }

  if ((a5 & 8) == 0)
  {
    if ((a5 & 0x20) == 0)
    {
      goto LABEL_25;
    }

LABEL_40:
    v45 = *MEMORY[0x1E69DB900];
    v50[0] = *MEMORY[0x1E69DB908];
    v50[1] = v45;
    v51[0] = &unk_1F3CC6F68;
    v51[1] = &unk_1F3CC6F50;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
    [v27 addObject:v46];

    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v43 = *MEMORY[0x1E69DB900];
  v52[0] = *MEMORY[0x1E69DB908];
  v52[1] = v43;
  v53[0] = &unk_1F3CC6F38;
  v53[1] = &unk_1F3CC6F50;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  [v27 addObject:v44];

  if ((a5 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_25:
  if (v15)
  {
LABEL_26:
    v34 = *MEMORY[0x1E6965818];
    v48[0] = *MEMORY[0x1E6965810];
    v48[1] = v34;
    v49[0] = @"cv09";
    v49[1] = MEMORY[0x1E695E118];
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
    [v27 addObject:v35];
  }

LABEL_27:
  if ([v27 count])
  {
    v36 = v27;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

LABEL_32:
  if (v14 | v37)
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v14)
    {
      v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v39 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69DB990]];
      [v38 setObject:v39 forKeyedSubscript:*MEMORY[0x1E69DB8F0]];
    }

    if (v37)
    {
      [v38 setObject:v37 forKeyedSubscript:*MEMORY[0x1E69DB8B0]];
    }

    v40 = [v17 fontDescriptorByAddingAttributes:v38];

    v17 = v40;
  }

  v41 = [MEMORY[0x1E69DB878] fontWithDescriptor:v17 size:0.0];

  objc_autoreleasePoolPop(context);
  return v41;
}

id PKFontForDefaultDesign(NSString *a1, NSString *a2)
{
  v3 = MEMORY[0x1E69DD1B8];
  v4 = a1;
  v5 = _PKImplicitContentSizeCategoryWithMaximum(a2);
  v6 = [v3 traitCollectionWithPreferredContentSizeCategory:v5];

  v7 = _PKFontForDesign(v6, *MEMORY[0x1E69DB8C8], v4, 0, 0, 0);

  return v7;
}

id PKFontForDefaultDesign(UITraitCollection *a1, NSString *a2)
{
  v2 = _PKFontForDesign(a1, *MEMORY[0x1E69DB8C8], a2, 0, 0, 0);

  return v2;
}

id PKFontForDefaultDesign(NSString *a1, NSString *a2, double a3)
{
  v5 = MEMORY[0x1E69DD1B8];
  v6 = a1;
  v7 = _PKImplicitContentSizeCategoryWithMaximum(a2);
  v8 = [v5 traitCollectionWithPreferredContentSizeCategory:v7];

  v9 = PKFontForDefaultDesign(v8, v6, a3);

  return v9;
}

id PKFontForDefaultDesign(UITraitCollection *a1, NSString *a2, double a3)
{
  v5 = *MEMORY[0x1E69DB8C8];
  v6 = MEMORY[0x1E696AD98];
  v7 = a2;
  v8 = a1;
  v9 = [v6 numberWithDouble:a3];
  v10 = _PKFontForDesign(v8, v5, v7, 0, 0, v9);

  return v10;
}

id PKFontForDefaultDesign(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = MEMORY[0x1E69DD1B8];
  v10 = a1;
  v11 = _PKImplicitContentSizeCategoryWithMaximum(a2);
  v12 = [v9 traitCollectionWithPreferredContentSizeCategory:v11];

  v13 = PKFontForDefaultDesign(v12, v10, a3, a4, a5);

  return v13;
}

{
  v9 = *MEMORY[0x1E69DB8C8];
  v10 = MEMORY[0x1E696AD98];
  v11 = a2;
  v12 = a1;
  v13 = [v10 numberWithDouble:a5];
  v14 = _PKFontForDesign(v12, v9, v11, a3, a4, v13);

  return v14;
}

id PKFontForDesign(NSString *a1, NSString *a2, NSString *a3)
{
  v5 = MEMORY[0x1E69DD1B8];
  v6 = a2;
  v7 = a1;
  v8 = _PKImplicitContentSizeCategoryWithMaximum(a3);
  v9 = [v5 traitCollectionWithPreferredContentSizeCategory:v8];

  v10 = _PKFontForDesign(v9, v7, v6, 0, 0, 0);

  return v10;
}

id PKFontForDesign(UITraitCollection *a1, NSString *a2, NSString *a3)
{
  v3 = _PKFontForDesign(a1, a2, a3, 0, 0, 0);

  return v3;
}

id PKFontForDesign(NSString *a1, NSString *a2, NSString *a3, double a4)
{
  v7 = MEMORY[0x1E69DD1B8];
  v8 = a2;
  v9 = a1;
  v10 = _PKImplicitContentSizeCategoryWithMaximum(a3);
  v11 = [v7 traitCollectionWithPreferredContentSizeCategory:v10];

  v12 = PKFontForDesign(v11, v9, v8, a4);

  return v12;
}

id PKFontForDesign(UITraitCollection *a1, NSString *a2, NSString *a3, double a4)
{
  v7 = MEMORY[0x1E696AD98];
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = [v7 numberWithDouble:a4];
  v12 = _PKFontForDesign(v10, v9, v8, 0, 0, v11);

  return v12;
}

id PKFontForDesign(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69DD1B8];
  v10 = a2;
  v11 = a1;
  v12 = _PKImplicitContentSizeCategoryWithMaximum(a3);
  v13 = [v9 traitCollectionWithPreferredContentSizeCategory:v12];

  v14 = _PKFontForDesign(v13, v11, v10, a4, a5, 0);

  return v14;
}

{
  v5 = _PKFontForDesign(a1, a2, a3, a4, a5, 0);

  return v5;
}

id PKFontForDesign(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = MEMORY[0x1E69DD1B8];
  v12 = a2;
  v13 = a1;
  v14 = _PKImplicitContentSizeCategoryWithMaximum(a3);
  v15 = [v11 traitCollectionWithPreferredContentSizeCategory:v14];

  v16 = PKFontForDesign(v15, v13, v12, a4, a5, a6);

  return v16;
}

{
  v11 = MEMORY[0x1E696AD98];
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = [v11 numberWithDouble:a6];
  v16 = _PKFontForDesign(v14, v13, v12, a4, a5, v15);

  return v16;
}

double PKScaledValueForValueWithMaximumContentSizeCategory(void *a1, double a2)
{
  v3 = _PKImplicitContentSizeCategoryWithMaximum(a1);
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v3];
  v7 = [v4 preferredFontForTextStyle:v5 compatibleWithTraitCollection:v6];

  [v7 _scaledValueForValue:a2];
  v9 = v8;

  return v9;
}

void *_PKImplicitContentSizeCategoryWithMaximum(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (v1 && ([v1 isEqualToString:*MEMORY[0x1E69DDC90]] & 1) == 0 && UIContentSizeCategoryCompareToCategory(v4, v1) == NSOrderedDescending)
  {
    v5 = v1;

    v4 = v5;
  }

  return v4;
}

double PKScaledValueForValueFromContentSizeCategory(uint64_t a1, void *a2, double a3)
{
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = MEMORY[0x1E69DD1B8];
  v8 = a2;
  v9 = [v7 traitCollectionWithPreferredContentSizeCategory:a1];
  v10 = [v5 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v9];

  v11 = PKFontForDefaultDesign(v6, v8);

  [v11 _bodyLeading];
  v13 = v12 * a3;
  [v10 _bodyLeading];
  v15 = v13 / v14;

  return v15;
}

double PKPointSizeForFontStyle(uint64_t a1)
{
  v1 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a1];
  [v1 pointSize];
  v3 = v2;

  return v3;
}

void PKCommonCachedImageFromURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __PKCommonCachedImageFromURL_block_invoke;
    v7[3] = &unk_1E8014D80;
    v8 = v3;
    v9 = v5;
    [v6 downloadFromUrl:v8 completionHandler:v7];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __PKCommonCachedImageFromURL_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PKCommonCachedImageFromURL_block_invoke_2;
  block[3] = &unk_1E8014D58;
  v15 = v8;
  v16 = *(a1 + 32);
  v10 = *(a1 + 40);
  v18 = v9;
  v19 = v10;
  v17 = v7;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __PKCommonCachedImageFromURL_block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_4:
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = MEMORY[0x1E69DCAB8];
      if (qword_1EBD6ABF8 != -1)
      {
        dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
      }

      v5 = [v4 imageWithData:v3 scale:*&qword_1EBD6ABF0];
      if (v5)
      {
        goto LABEL_15;
      }

      v6 = PKLogFacilityTypeGetObject();
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 56);
        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Failed to download card image from %@ due to %@", &v14, 0x16u);
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Could not parse card image from %@", &v14, 0xCu);
    }

    v5 = 0;
LABEL_15:
    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, 1, v5);
    }

    goto LABEL_22;
  }

  v2 = *(a1 + 32);
  if ([v2 statusCode] == 200)
  {

    goto LABEL_4;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v14 = 138412546;
    v15 = v12;
    v16 = 1024;
    LODWORD(v17) = [v2 statusCode];
    _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Could not download card image from %@ http status %d", &v14, 0x12u);
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    (*(v13 + 16))(v13, 1, 0);
  }

  v5 = 0;
LABEL_22:
}

void PKAccessibilityIDDefaultCellSet(void *a1)
{
  v1 = a1;
  v2 = [v1 textLabel];
  [v2 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  v3 = [v1 detailTextLabel];

  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
}

void PKAccessibilityIDCellSet(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  PKAccessibilityIDDefaultCellSet(v4);
  [v4 setAccessibilityIdentifier:v3];
}

void PKAccessibilityIDAlertSet(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 view];
    [v5 setAccessibilityIdentifier:v4];

    v6 = [v3 actions];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = *MEMORY[0x1E69B9AE0];
      v11 = *MEMORY[0x1E69B9708];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 style] == 1)
          {
            v14 = v11;
          }

          else
          {
            v14 = v10;
          }

          [v13 setAccessibilityIdentifier:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

uint64_t PKSpendingSummaryCategorizationTypeForURLPathComponent(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E69BC398];
  v3 = v1;
  v4 = v3;
  if (v2 == v3)
  {
    goto LABEL_15;
  }

  if (v3 && v2)
  {
    v5 = [v3 isEqualToString:v2];

    if (v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v6 = *MEMORY[0x1E69BC3A0];
  v3 = v4;
  v7 = v3;
  if (v6 == v3)
  {

    goto LABEL_14;
  }

  if (!v4 || !v6)
  {
LABEL_15:

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v8 = [v3 isEqualToString:v6];

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_14:
  v9 = 1;
LABEL_17:

  return v9;
}

void sub_1BDB6E004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak(&a43);
  objc_destroyWeak((v43 - 168));
  objc_destroyWeak((v43 - 160));
  _Unwind_Resume(a1);
}

void sub_1BDB6E660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL PKStringIsBlank(void *a1)
{
  v1 = MEMORY[0x1E696AB08];
  v2 = a1;
  v3 = [v1 whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  if (v4)
  {
    v5 = [v4 length] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void navigateToURL(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [v1 absoluteString];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Navigating to URL: %@", &v4, 0xCu);
  }

  PKOpenURL();
}

id PKOpenURLModallyHyperlinkAction(void *a1, void *a2)
{
  objc_initWeak(&location, a2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKOpenURLModallyHyperlinkAction_block_invoke;
  aBlock[3] = &unk_1E8014E68;
  v6[1] = a1;
  objc_copyWeak(v6, &location);
  v3 = _Block_copy(aBlock);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);

  return v3;
}

void __PKOpenURLModallyHyperlinkAction_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 absoluteString];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Opening URL modally: %@", &v9, 0xCu);
  }

  v6 = [[PKRemoteDocumentationViewController alloc] initWithContext:*(a1 + 40) URL:v3];
  v7 = [[PKNavigationController alloc] initWithRootViewController:v6];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentModalViewController:v7 withPaymentSetupContext:*(a1 + 40)];
}

id PKOpenOnboardingHyperlinkAction(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKOpenOnboardingHyperlinkAction_block_invoke;
  aBlock[3] = &unk_1E8014E90;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

void __PKOpenOnboardingHyperlinkAction_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = onboardingIdentifiersFromURL(v3);
  if ([v4 count])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Couldn't present onboarding for link %@, no onboarding identifiers found.", &v6, 0xCu);
    }
  }
}

id onboardingIdentifiersFromURL(void *a1)
{
  v1 = a1;
  v2 = [v1 scheme];
  v3 = [v2 isEqualToString:@"onboarding"];

  if (v3)
  {
    v4 = [v1 resourceSpecifier];
    v5 = [v4 componentsSeparatedByString:@"+"];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

id PKGenericOnboardingPresenter(id val, void *a2)
{
  objc_initWeak(&location, val);
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKGenericOnboardingPresenter_block_invoke;
  aBlock[3] = &unk_1E8011850;
  objc_copyWeak(&v9, &location);
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __PKGenericOnboardingPresenter_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Presenting onboarding for identifiers: %@", &v15, 0xCu);
  }

  v5 = v3;
  v6 = [v5 count];
  v7 = MEMORY[0x1E69B7D58];
  if (v6 == 1)
  {
    v8 = [v5 firstObject];

    v9 = [v7 presenterForPrivacySplashWithIdentifier:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E69B7D58] presenterForPrivacyUnifiedAboutWithIdentifiers:v5];
    v8 = v5;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v9 setPresentingViewController:WeakRetained];

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 pkui_userInterfaceIdiomSupportsLargeLayouts];

  if (v12)
  {
    [v9 setModalPresentationStyle:2];
  }

  if (*(a1 + 32))
  {
    v13 = [v9 splashController];
    v14 = [v13 view];
    [v14 setTintColor:*(a1 + 32)];
  }

  [v9 present];
}

id PKGenericHyperlinkAction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PKGenericHyperlinkAction_block_invoke;
  v9[3] = &unk_1E8014EB8;
  v10 = v3;
  v11 = v4;
  v5 = v4;
  v6 = v3;
  v7 = _Block_copy(v9);

  return v7;
}

void __PKGenericHyperlinkAction_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = onboardingIdentifiersFromURL(v5);
  if ([v3 count])
  {
    v4 = *(*(a1 + 32) + 16);
LABEL_5:
    v4();
    goto LABEL_6;
  }

  if (PKIsURLHttpScheme())
  {
    v4 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  navigateToURL(v5);
LABEL_6:
}

void sub_1BDB7472C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB74E24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDB75E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 56));
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v40 - 224), 8);
  _Block_object_dispose((v40 - 176), 8);
  _Block_object_dispose((v40 - 128), 8);
  _Unwind_Resume(a1);
}

Class initBYFlowSkipController()
{
  if (qword_1EBDAA800 != -1)
  {
    dispatch_once(&qword_1EBDAA800, &__block_literal_global_54);
  }

  result = objc_getClass("BYFlowSkipController");
  qword_1EBDAA7F0 = result;
  _MergedGlobals_3_7 = BYFlowSkipControllerFunction;
  return result;
}

void *__LoadSetupAssistant_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  qword_1EBDAA7F8 = result;
  return result;
}