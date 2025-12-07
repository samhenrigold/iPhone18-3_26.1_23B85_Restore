void sub_1BD20F534(void *a2@<X8>)
{
  type metadata accessor for AppleCardDetailsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB60, &qword_1BE0C2360);
  sub_1BE0516A4();
  v3 = [v4 state];

  *a2 = v3;
}

uint64_t sub_1BD20F5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AppleCardDetailsSheet(0) + 20));
  sub_1BE051694();
  result = sub_1BE051694();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

void sub_1BD20F668(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - v8;
  v10 = type metadata accessor for AppleCardDetailsSheet(0);
  v11 = *(a1 + v10[5]);
  v12 = *(a1 + v10[9]);
  v13 = (a1 + v10[6]);
  v14 = v13[1];
  v76 = *v13;
  v77 = 0;
  v15 = v11;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051694();
  v75 = v78;
  v74 = v79;
  type metadata accessor for WalletSettingsModel(0);
  v16 = [v15 paymentPass];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE052434();
    v20 = v19;
    sub_1BD4089F0(v17, v18, v19, v9);

    v20, v21, v22, v23, v24, v25, v26, v27;
    v28 = sub_1BE04AA64();
    if ((*(*(v28 - 8) + 48))(v9, 1, v28) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v29 = sub_1BE04AA64();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  }

  sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  v30 = [v15 paymentPass];
  if (!v30)
  {
    v49 = sub_1BE04AA64();
    (*(*(v49 - 8) + 56))(v6, 1, 1, v49);
    goto LABEL_10;
  }

  v31 = v30;
  v32 = sub_1BE052434();
  v34 = v33;
  sub_1BD4089F0(v31, v32, v33, v6);

  v34, v35, v36, v37, v38, v39, v40, v41;
  v42 = sub_1BE04AA64();
  if ((*(*(v42 - 8) + 48))(v6, 1, v42) == 1)
  {
LABEL_10:
    sub_1BD0DE53C(v6, &unk_1EBD3CF70, &qword_1BE0BA000);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_11;
  }

  v9 = v6;
LABEL_8:
  sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  v77 = 0;
  v43 = v15;
  sub_1BE051694();
  v44 = v78;
  v45 = v79;
  v77 = 0;
  sub_1BE051694();
  v46 = v78;
  v47 = v79;
  sub_1BE048964();
  v48 = v43;
  sub_1BE048964();
LABEL_11:
  v50 = v74;
  sub_1BE048964();
  v51 = v15;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD20FDB8(v43);
  sub_1BD20FE04(v43, v44, v45, v46, v47);
  v52 = v76;
  *a2 = v51;
  *(a2 + 8) = v52;
  *(a2 + 16) = v14;
  *(a2 + 24) = v12;
  *(a2 + 32) = v75;
  *(a2 + 40) = v50;
  *(a2 + 48) = v43;
  *(a2 + 56) = v44;
  *(a2 + 64) = v45;
  *(a2 + 72) = v46;
  *(a2 + 80) = v47;
  sub_1BD20FE04(v43, v44, v45, v46, v47);
  v50, v53, v54, v55, v56, v57, v58, v59;
  v12, v60, v61, v62, v63, v64, v65, v66;
  v14, v67, v68, v69, v70, v71, v72, v73;
}

unint64_t sub_1BD20FAB8()
{
  result = qword_1EBD3DB68;
  if (!qword_1EBD3DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DB68);
  }

  return result;
}

unint64_t sub_1BD20FB14()
{
  result = qword_1EBD3DB88;
  if (!qword_1EBD3DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DB88);
  }

  return result;
}

uint64_t sub_1BD20FB68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardBillingAddressSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD20FBD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1BD20FC28()
{
  result = qword_1EBD3DBA8;
  if (!qword_1EBD3DBA8)
  {
    type metadata accessor for TransactionsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DBA8);
  }

  return result;
}

uint64_t sub_1BD20FC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD20FCE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD20FD48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB20, &qword_1BE0C2310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1BD20FDB8(void *result)
{
  if (result)
  {
    v1 = result;
    sub_1BE048964();
    v2 = v1;

    return sub_1BE048964();
  }

  return result;
}

void sub_1BD20FE04(void *result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (result)
  {

    a3, v7, v8, v9, v10, v11, v12, v13;

    a5, v14, v15, v16, v17, v18, v19, v20;
  }
}

unint64_t sub_1BD20FE50()
{
  result = qword_1EBD3DBB8;
  if (!qword_1EBD3DBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBC0, &qword_1BE0C2380);
    sub_1BD20FBD4(&qword_1EBD3DB78, &qword_1EBD3DB40, &qword_1BE0C2338);
    sub_1BD20FBD4(&qword_1EBD3DB80, &qword_1EBD3DB18, &qword_1BE0C2308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DBB8);
  }

  return result;
}

uint64_t sub_1BD20FF50(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_1BE051384();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v7);
  result = sub_1BE0514A4();
  *a5 = result;
  return result;
}

uint64_t sub_1BD210044()
{
  result = sub_1BE051244();
  qword_1EBDAAE90 = result;
  return result;
}

uint64_t sub_1BD210064(uint64_t a1)
{
  result = sub_1BE051234();
  qword_1EBDAAE98 = result;
  return result;
}

uint64_t sub_1BD210084()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  result = sub_1BE0511C4();
  qword_1EBDAAEA0 = result;
  return result;
}

void *sub_1BD2100F0@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v17[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBC8, &qword_1BE0C2440);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBD0, &qword_1BE0C2448);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBD8, &unk_1BE0C2450);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBE0, &unk_1BE0D69B0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - v14;
  if (a1 > 5)
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD210858();
    return sub_1BE04F9A4();
  }

  else if (a1 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC00, &unk_1BE0C2460);
    sub_1BD0DE4F4(&qword_1EBD3DBF8, &qword_1EBD3DC00, &unk_1BE0C2460, MEMORY[0x1E6981870]);
    sub_1BE051A44();
    (*(v13 + 16))(v8, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_1BD210888();
    sub_1BE04F9A4();
    sub_1BD210944(v11, v5);
    swift_storeEnumTagMultiPayload();
    sub_1BD210858();
    sub_1BE04F9A4();
    sub_1BD2109B4(v11);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD210888();
    sub_1BE04F9A4();
    sub_1BD210944(v11, v5);
    swift_storeEnumTagMultiPayload();
    sub_1BD210858();
    sub_1BE04F9A4();
    return sub_1BD2109B4(v11);
  }
}

uint64_t sub_1BD2104B8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC08, &qword_1BE0D69C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B660, &qword_1BE0C2470);
  sub_1BD0DE4F4(&qword_1EBD3B668, &qword_1EBD3B660, &qword_1BE0C2470, MEMORY[0x1E6981F48]);
  return sub_1BE04E2B4();
}

void sub_1BD210580(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v61[-v7];
  v9 = *MEMORY[0x1E69B80F0];
  v10 = *(v3 + 104);
  v10(&v61[-v7], v9, v2, v6);
  v11 = PKPassKitBundle();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    v16 = *(v3 + 8);
    v16(v8, v2);
    v68 = v13;
    v69 = v15;
    sub_1BD0DDEBC();
    v63 = sub_1BE0506C4();
    v64 = v17;
    v19 = v18;
    v62 = v20;
    (v10)(v65, v9, v2);
    v21 = PKPassKitBundle();
    if (v21)
    {
      v22 = v21;
      v23 = v65;
      v24 = sub_1BE04B6F4();
      v26 = v25;

      v16(v23, v2);
      v68 = v24;
      v69 = v26;
      v27 = sub_1BE0506C4();
      v29 = v28;
      v31 = v30;
      v32 = v62 & 1;
      v66 = v62 & 1;
      LOBYTE(v68) = v62 & 1;
      v34 = (v33 & 1);
      v67 = v33 & 1;
      v36 = v63;
      v35 = v64;
      *a1 = v63;
      *(a1 + 8) = v19;
      *(a1 + 16) = v32;
      *(a1 + 24) = v35;
      *(a1 + 32) = v27;
      *(a1 + 40) = v28;
      *(a1 + 48) = v33 & 1;
      *(a1 + 56) = v30;
      sub_1BD0D7F18(v36, v19, v32);
      sub_1BE048C84();
      sub_1BD0D7F18(v27, v29, v34);
      sub_1BE048C84();
      sub_1BD0DDF10(v27, v29, v34, v37, v38, v39, v40, v41);
      v31, v42, v43, v44, v45, v46, v47, v48;
      sub_1BD0DDF10(v36, v19, v66, v49, v50, v51, v52, v53);
      v35, v54, v55, v56, v57, v58, v59, v60;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1BD210888()
{
  result = qword_1EBD3DBF0;
  if (!qword_1EBD3DBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBE0, &unk_1BE0D69B0);
    sub_1BD0DE4F4(&qword_1EBD3DBF8, &qword_1EBD3DC00, &unk_1BE0C2460, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DBF0);
  }

  return result;
}

uint64_t sub_1BD210944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBD8, &unk_1BE0C2450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2109B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBD8, &unk_1BE0C2450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD210A1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

void destroy for PaymentOfferInstallmentAmountEntry(uint64_t a1)
{
  *(a1 + 40), v2, v3, v4, v5, v6, v7, v8;
  *(a1 + 56), v9, v10, v11, v12, v13, v14, v15;
  *(a1 + 72), v16, v17, v18, v19, v20, v21, v22;
  v30 = *(a1 + 80);
  if (v30)
  {

    *(a1 + 104), v31, v32, v33, v34, v35, v36, v37;
  }

  *(a1 + 112), v23, v24, v25, v26, v27, v28, v29;

  *(a1 + 128), v38, v39, v40, v41, v42, v43, v44;
  *(a1 + 144), v45, v46, v47, v48, v49, v50, v51;

  *(a1 + 160), v52, v53, v54, v55, v56, v57, v58;
  v66 = *(a1 + 176);

  v66, v59, v60, v61, v62, v63, v64, v65;
}

uint64_t initializeWithCopy for PaymentOfferInstallmentAmountEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  *(a1 + 16) = v6;
  v25 = *(a2 + 24);
  *(a1 + 24) = v25;
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v7;
  v9 = (a2 + 80);
  v8 = *(a2 + 80);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v25;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  if (v8)
  {
    *(a1 + 80) = v8;
    v14 = *(a2 + 104);
    v26 = *(a2 + 88);
    *(a1 + 88) = v26;
    *(a1 + 104) = v14;
    v15 = v8;
    v16 = v26;
    sub_1BE048964();
  }

  else
  {
    v17 = v9[1];
    *(a1 + 80) = *v9;
    *(a1 + 96) = v17;
  }

  v18 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v18;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v19 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v19;
  v20 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v20;
  *(a1 + 176) = *(a2 + 176);
  v21 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v21;
  sub_1BE048964();
  v22 = v18;
  sub_1BE048964();
  sub_1BE048964();
  v23 = v19;
  sub_1BE048964();
  sub_1BE048C84();
  return a1;
}

uint64_t assignWithCopy for PaymentOfferInstallmentAmountEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  v13 = *(a2 + 24);
  v14 = *(a1 + 24);
  *(a1 + 24) = v13;
  v15 = v13;

  v16 = *(a2 + 40);
  v17 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v16;
  sub_1BE048964();
  v17, v18, v19, v20, v21, v22, v23, v24;
  v25 = *(a2 + 56);
  v26 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v25;
  sub_1BE048964();
  v26, v27, v28, v29, v30, v31, v32, v33;
  v34 = *(a2 + 72);
  v35 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v34;
  sub_1BE048964();
  v35, v36, v37, v38, v39, v40, v41, v42;
  v43 = (a1 + 80);
  v44 = *(a1 + 80);
  v46 = (a2 + 80);
  v45 = *(a2 + 80);
  if (v44)
  {
    if (v45)
    {
      *(a1 + 80) = v45;
      v47 = v45;

      v48 = *(a2 + 88);
      v49 = *(a1 + 88);
      *(a1 + 88) = v48;
      v50 = v48;

      v51 = *(a2 + 104);
      v52 = *(a1 + 104);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v51;
      sub_1BE048964();
      v52, v53, v54, v55, v56, v57, v58, v59;
    }

    else
    {
      sub_1BD210F3C(a1 + 80);
      v64 = *(a2 + 96);
      *v43 = *v46;
      *(a1 + 96) = v64;
    }
  }

  else if (v45)
  {
    *(a1 + 80) = v45;
    v60 = *(a2 + 88);
    *(a1 + 88) = v60;
    v61 = *(a2 + 104);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v61;
    v62 = v45;
    v63 = v60;
    sub_1BE048964();
  }

  else
  {
    v65 = *(a2 + 96);
    *v43 = *v46;
    *(a1 + 96) = v65;
  }

  v66 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  sub_1BE048964();
  v66, v67, v68, v69, v70, v71, v72, v73;
  v74 = *(a1 + 120);
  v75 = *(a2 + 120);
  *(a1 + 120) = v75;
  v76 = v75;

  v77 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  sub_1BE048964();
  v77, v78, v79, v80, v81, v82, v83, v84;
  *(a1 + 136) = *(a2 + 136);
  v85 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  sub_1BE048964();
  v85, v86, v87, v88, v89, v90, v91, v92;
  v93 = *(a1 + 152);
  v94 = *(a2 + 152);
  *(a1 + 152) = v94;
  v95 = v94;

  v96 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  sub_1BE048964();
  v96, v97, v98, v99, v100, v101, v102, v103;
  *(a1 + 168) = *(a2 + 168);
  v104 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);
  sub_1BE048C84();
  v104, v105, v106, v107, v108, v109, v110, v111;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 190) = *(a2 + 190);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 198) = *(a2 + 198);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 202) = *(a2 + 202);
  return a1;
}

__n128 __swift_memcpy204_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t assignWithTake for PaymentOfferInstallmentAmountEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v8 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  v16, v17, v18, v19, v20, v21, v22, v23;
  v24 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  v24, v25, v26, v27, v28, v29, v30, v31;
  v39 = *(a1 + 80);
  v40 = *(a2 + 80);
  if (!v39)
  {
    goto LABEL_5;
  }

  if (!v40)
  {
    sub_1BD210F3C(a1 + 80);
LABEL_5:
    v50 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v50;
    goto LABEL_6;
  }

  *(a1 + 80) = v40;

  v41 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  v42 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  v42, v43, v44, v45, v46, v47, v48, v49;
LABEL_6:
  v51 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  v51, v32, v33, v34, v35, v36, v37, v38;
  v52 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v53 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  v53, v54, v55, v56, v57, v58, v59, v60;
  *(a1 + 136) = *(a2 + 136);
  v61 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  v61, v62, v63, v64, v65, v66, v67, v68;
  v69 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  v70 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  v70, v71, v72, v73, v74, v75, v76, v77;
  v78 = *(a2 + 176);
  v79 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v78;
  v79, v80, v81, v82, v83, v84, v85, v86;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  return a1;
}

uint64_t getEnumTagSinglePayload for PaymentOfferInstallmentAmountEntry(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 204))
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

uint64_t storeEnumTagSinglePayload for PaymentOfferInstallmentAmountEntry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 204) = 1;
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

    *(result + 204) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD2111F8(SEL *a1)
{
  v2 = [*(v1 + 8) *a1];
  sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
  sub_1BD214890(&qword_1EBD45080, &qword_1EBD43B00, 0x1E69B8780);
  v3 = sub_1BE052A34();

  v51 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v3 = v55;
    v7 = v56;
    v8 = v57;
    v9 = v58;
    v10 = v59;
  }

  else
  {
    v11 = -1 << *(v3 + 32);
    v7 = (v3 + 56);
    v12 = ~v11;
    v13 = -v11;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = (v14 & *(v3 + 56));
    sub_1BE048C84();
    v8 = v12;
    v9 = 0;
  }

  v50 = v8;
  v15 = (v8 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_1BE053744())
    {
      goto LABEL_26;
    }

    swift_dynamicCast();
    v20 = v54;
    v18 = v9;
    v19 = v10;
    if (!v54)
    {
      goto LABEL_26;
    }

LABEL_18:
    v53 = v9;
    v21 = [v20 currency];
    if (v21)
    {
      v22 = v21;
      v23 = v3;
      v24 = sub_1BE052434();
      v26 = v25;

      v32 = *(v52 + 168);
      v33 = *(v52 + 176);
      if (v24 == v32 && v26 == v33)
      {
        v26, v27, v32, v33, v28, v29, v30, v31;
        v3 = v23;
LABEL_28:
        v9 = v53;
LABEL_26:
        sub_1BD0D45FC(v3, v7, v50, v9, v10, v4, v5, v6);
        v51, v43, v44, v45, v46, v47, v48, v49;
        return;
      }

      v35 = sub_1BE053B84();
      v26, v36, v37, v38, v39, v40, v41, v42;
      v3 = v23;
      if (v35)
      {
        goto LABEL_28;
      }
    }

    v9 = v18;
    v10 = v19;
  }

  v16 = v9;
  v17 = v10;
  v18 = v9;
  if (v10)
  {
LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v18 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      v10 = 0;
      goto LABEL_26;
    }

    v17 = *&v7[8 * v18];
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1BD2114A0@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC20, &qword_1BE0C2570);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - v3;
  v53 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC28, &qword_1BE0C2578);
  sub_1BD213DF8();
  sub_1BE04EC04();
  v5 = swift_allocObject();
  v6 = v1[11];
  v5[11] = v1[10];
  v5[12] = v6;
  *(v5 + 204) = *(v1 + 188);
  v7 = v1[7];
  v5[7] = v1[6];
  v5[8] = v7;
  v8 = v1[9];
  v5[9] = v1[8];
  v5[10] = v8;
  v9 = v1[3];
  v5[3] = v1[2];
  v5[4] = v9;
  v10 = v1[5];
  v5[5] = v1[4];
  v5[6] = v10;
  v11 = v1[1];
  v5[1] = *v1;
  v5[2] = v11;
  v12 = &v4[*(v2 + 36)];
  *v12 = sub_1BD213FD4;
  *(v12 + 1) = v5;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v13 = v1[6];
  v54 = v1[5];
  v55 = v13;
  v56 = *(v1 + 14);
  sub_1BD213FD8(v1, &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC58, &qword_1BE0C2588);
  sub_1BE0516C4();
  v14 = v58;
  v49 = *(&v59 + 1);
  v50 = v59;
  v15 = v61;
  v48 = v60;
  v54 = v58;
  v55 = v59;
  v56 = v60;
  v57 = v61;
  v16 = swift_allocObject();
  v17 = v1[11];
  v16[11] = v1[10];
  v16[12] = v17;
  *(v16 + 204) = *(v1 + 188);
  v18 = v1[7];
  v16[7] = v1[6];
  v16[8] = v18;
  v19 = v1[9];
  v16[9] = v1[8];
  v16[10] = v19;
  v20 = v1[3];
  v16[3] = v1[2];
  v16[4] = v20;
  v21 = v1[5];
  v16[5] = v1[4];
  v16[6] = v21;
  v22 = v1[1];
  v16[1] = *v1;
  v16[2] = v22;
  sub_1BD213FD8(v1, &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57BE0, &qword_1BE0C2590);
  sub_1BD21403C();
  sub_1BD2140F4();
  v23 = type metadata accessor for PaymentOfferActionExplanationView(255);
  v24 = sub_1BD213F8C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView, &unk_1BE0D53B8);
  *&v58 = v23;
  *(&v58 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  sub_1BE050F74();
  *(&v14 + 1), v25, v26, v27, v28, v29, v30, v31;
  v16, v32, v33, v34, v35, v36, v37, v38;
  v14, v39, v40, v41, v42, v43, v44, v45;
  sub_1BD214148(v50, v49, v48, v15);
  return sub_1BD055048(v4);
}

double sub_1BD2117BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  *&v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v118);
  v4 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v105 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC38, &qword_1BE0C2580);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v105 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC80, &unk_1BE0C25E0);
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v119 = v105 - v17;
  (*(v9 + 104))(v11, *MEMORY[0x1E69B8078], v8, v16);
  v18 = sub_1BE04B714();
  v116 = v19;
  v117 = v18;
  (*(v9 + 8))(v11, v8);
  v20 = *(a1 + 176);
  v114 = *(a1 + 168);
  v115 = v20;
  sub_1BE048C84();
  sub_1BD2111F8(&selRef_minimumAmounts);
  if (v21 && (v22 = v21, v23 = [v21 amount], v22, v23))
  {
    v24 = sub_1BE0533F4();
    v112 = v25;
    v113 = v24;
    v111 = v26;
  }

  else
  {
    v27 = MEMORY[0x1BFB403C0](0);
    v112 = v28;
    v113 = v27;
    v111 = v29;
  }

  sub_1BD2111F8(&selRef_maximumAmounts);
  if (v30 && (v31 = v30, v32 = [v30 amount], v31, v32))
  {
    v33 = sub_1BE0533F4();
    v109 = v34;
    v110 = v33;
    v108 = v35;

    v36 = *(a1 + 16);
    if (!v36)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v37 = sub_1BE0533A4();
    v109 = v38;
    v110 = v37;
    v108 = v39;
    v36 = *(a1 + 16);
    if (!v36)
    {
LABEL_12:
      v42 = 0;
      goto LABEL_13;
    }
  }

  v40 = [v36 dynamicContent];
  if (!v40)
  {
    goto LABEL_12;
  }

  v41 = v40;
  v42 = [v40 dynamicContentPageForPageType_];

LABEL_13:
  v131 = *(a1 + 184);
  v132 = *(a1 + 200);
  v107 = [v42 footerContent];

  v125 = *(a1 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v106 = LOBYTE(v129[0]);
  v43 = swift_allocObject();
  v44 = *(a1 + 176);
  v43[11] = *(a1 + 160);
  v43[12] = v44;
  *(v43 + 204) = *(a1 + 188);
  v45 = *(a1 + 112);
  v43[7] = *(a1 + 96);
  v43[8] = v45;
  v46 = *(a1 + 144);
  v43[9] = *(a1 + 128);
  v43[10] = v46;
  v47 = *(a1 + 48);
  v43[3] = *(a1 + 32);
  v43[4] = v47;
  v48 = *(a1 + 80);
  v43[5] = *(a1 + 64);
  v43[6] = v48;
  v49 = *(a1 + 16);
  v43[1] = *a1;
  v43[2] = v49;
  v50 = swift_allocObject();
  v51 = *(a1 + 176);
  v50[11] = *(a1 + 160);
  v50[12] = v51;
  *(v50 + 204) = *(a1 + 188);
  v52 = *(a1 + 112);
  v50[7] = *(a1 + 96);
  v50[8] = v52;
  v53 = *(a1 + 144);
  v50[9] = *(a1 + 128);
  v50[10] = v53;
  v54 = *(a1 + 48);
  v50[3] = *(a1 + 32);
  v50[4] = v54;
  v55 = *(a1 + 80);
  v50[5] = *(a1 + 64);
  v50[6] = v55;
  v56 = *(a1 + 16);
  v50[1] = *a1;
  v50[2] = v56;
  v129[0] = 0uLL;
  sub_1BD213FD8(a1, &v125);
  sub_1BD213FD8(a1, &v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BE051694();
  v57 = v126;
  *(v14 + 19) = v125;
  *(v14 + 40) = v57;
  *&v129[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC88, &unk_1BE0C88A0);
  sub_1BE051694();
  *(v14 + 328) = v125;
  LOBYTE(v129[0]) = 0;
  sub_1BE051694();
  v58 = *(&v125 + 1);
  v14[344] = v125;
  *(v14 + 44) = v58;
  v14[360] = sub_1BE04E274() & 1;
  *(v14 + 46) = v59;
  v14[376] = v60 & 1;
  v105[1] = v12;
  v61 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  (*(*(v61 - 8) + 56))(v7, 1, 1, v61);
  sub_1BD0DE19C(v7, v4, &unk_1EBD45160, &qword_1BE0C25A0);
  sub_1BE051694();
  sub_1BD0DE53C(v7, &unk_1EBD45160, &qword_1BE0C25A0);
  v62 = v116;
  *v14 = v117;
  *(v14 + 1) = v62;
  v63 = v115;
  *(v14 + 2) = v114;
  *(v14 + 3) = v63;
  v125 = v131;
  LODWORD(v126) = v132;
  type metadata accessor for Decimal(0);
  sub_1BE051694();
  v64 = v128;
  *(v14 + 17) = v127;
  *(v14 + 18) = v64;
  v65 = v112;
  *(v14 + 4) = v113;
  *(v14 + 5) = v65;
  *(v14 + 12) = v111;
  v66 = v109;
  *(v14 + 52) = v110;
  *(v14 + 60) = v66;
  *(v14 + 17) = v108;
  *(v14 + 9) = 0;
  sub_1BD2120C0(v129);
  v67 = v130[0];
  *(v14 + 11) = v129[6];
  *(v14 + 12) = v67;
  *(v14 + 201) = *(v130 + 9);
  v68 = v129[3];
  *(v14 + 7) = v129[2];
  *(v14 + 8) = v68;
  v69 = v129[5];
  *(v14 + 9) = v129[4];
  *(v14 + 10) = v69;
  v70 = v129[1];
  *(v14 + 5) = v129[0];
  *(v14 + 6) = v70;
  *(v14 + 28) = v107;
  v14[232] = v106;
  *(v14 + 30) = sub_1BD214694;
  *(v14 + 31) = v43;
  *(v14 + 32) = sub_1BD2146C8;
  *(v14 + 33) = v50;
  v123 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC90, &qword_1BE0C25F0);
  sub_1BE0516C4();
  v71 = *(&v125 + 1);
  v117 = v125;
  *&v118 = v126;
  v123 = v125;
  v124 = v126;
  v72 = swift_allocObject();
  v73 = *(a1 + 176);
  v72[11] = *(a1 + 160);
  v72[12] = v73;
  *(v72 + 204) = *(a1 + 188);
  v74 = *(a1 + 112);
  v72[7] = *(a1 + 96);
  v72[8] = v74;
  v75 = *(a1 + 144);
  v72[9] = *(a1 + 128);
  v72[10] = v75;
  v76 = *(a1 + 48);
  v72[3] = *(a1 + 32);
  v72[4] = v76;
  v77 = *(a1 + 80);
  v72[5] = *(a1 + 64);
  v72[6] = v77;
  v78 = *(a1 + 16);
  v72[1] = *a1;
  v72[2] = v78;
  sub_1BD213FD8(a1, &v125);
  sub_1BD0E5E8C(0, &qword_1EBD3DC40, 0x1E69B8C80);
  type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  sub_1BD0DE4F4(&qword_1EBD3DC48, &qword_1EBD3DC38, &qword_1BE0C2580, &unk_1BE101240);
  sub_1BD214890(&qword_1EBD3DC50, &qword_1EBD3DC40, 0x1E69B8C80);
  sub_1BD213F8C(&qword_1EBD57AE0, type metadata accessor for PaymentOfferInstallmentSelectionView, &unk_1BE104DE8);
  v79 = v119;
  sub_1BE050D74();
  v71, v80, v81, v82, v83, v84, v85, v86;
  v72, v87, v88, v89, v90, v91, v92, v93;
  v117, v94, v95, v96, v97, v98, v99, v100;

  sub_1BD0DE53C(v14, &qword_1EBD3DC38, &qword_1BE0C2580);
  v123 = *(a1 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516C4();
  v118 = v125;
  v101 = v126;
  v102 = v122;
  (*(v120 + 32))(v122, v79, v121);
  v103 = v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC28, &qword_1BE0C2578) + 36);
  result = *&v118;
  *v103 = v118;
  *(v103 + 24) = 0;
  *(v103 + 32) = 0;
  *(v103 + 16) = v101;
  return result;
}

__n128 sub_1BD2120C0@<Q0>(uint64_t a1@<X8>)
{
  sub_1BD212BA4();
  if (v2)
  {
    sub_1BD0DDEBC();
    v3 = sub_1BE0506C4();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    sub_1BE04FC94();
    v10 = sub_1BE050574();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    sub_1BD0DDF10(v3, v5, (v7 & 1), v15, v17, v18, v19, v20);
    v9, v21, v22, v23, v24, v25, v26, v27;
    v28 = sub_1BE050324();
    v29 = sub_1BE0505F4();
    v31 = v30;
    LOBYTE(v9) = v32;
    v59 = v33;
    v28, v30, v32, v33, v34, v35, v36, v37;
    sub_1BD0DDF10(v10, v12, (v14 & 1), v38, v39, v40, v41, v42);
    v16, v43, v44, v45, v46, v47, v48, v49;
    KeyPath = swift_getKeyPath();
    LOBYTE(v10) = sub_1BE0501C4();
    LOBYTE(v12) = v9 & 1;
    LOBYTE(v9) = sub_1BE0501E4();
    sub_1BE04E1F4();
    *&v60 = v29;
    *(&v60 + 1) = v31;
    v61.n128_u8[0] = v12;
    v61.n128_u64[1] = v59;
    *&v62 = KeyPath;
    BYTE8(v62) = 1;
    v63[0] = v10;
    memset(&v63[8], 0, 32);
    v63[40] = 1;
    LOBYTE(v64) = v9;
    *(&v64 + 1) = v51;
    *v65 = v52;
    *&v65[8] = v53;
    *&v65[16] = v54;
    v65[24] = 0;
    PKEdgeInsetsMake();
    v71 = *&v63[32];
    v72 = v64;
    v73[0] = *v65;
    *(v73 + 9) = *&v65[9];
    v68 = v62;
    v69 = *v63;
    v70 = *&v63[16];
    v66 = v60;
    v67 = v61;
  }

  else
  {
    sub_1BD2146D8(&v66);
  }

  v55 = v73[0];
  *(a1 + 96) = v72;
  *(a1 + 112) = v55;
  *(a1 + 121) = *(v73 + 9);
  v56 = v69;
  *(a1 + 32) = v68;
  *(a1 + 48) = v56;
  v57 = v71;
  *(a1 + 64) = v70;
  *(a1 + 80) = v57;
  result = v67;
  *a1 = v66;
  *(a1 + 16) = result;
  return result;
}

void sub_1BD2122C8(unint64_t a1, unint64_t a2, unsigned int a3, _OWORD *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIWORD(a1);
  v10 = a2 >> 16;
  v11 = HIDWORD(a2);
  v34 = HIWORD(a2);
  v35 = HIWORD(a3);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  sub_1BD214278(MEMORY[0x1E69BA500]);
  v15 = sub_1BE0528D4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1BE0528A4();
  sub_1BD213FD8(a4, v36);
  v16 = sub_1BE052894();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  v19 = a4[11];
  *(v17 + 192) = a4[10];
  *(v17 + 208) = v19;
  *(v17 + 220) = *(a4 + 188);
  v20 = a4[7];
  *(v17 + 128) = a4[6];
  *(v17 + 144) = v20;
  v21 = a4[9];
  *(v17 + 160) = a4[8];
  *(v17 + 176) = v21;
  v22 = a4[3];
  *(v17 + 64) = a4[2];
  *(v17 + 80) = v22;
  v23 = a4[5];
  *(v17 + 96) = a4[4];
  *(v17 + 112) = v23;
  v24 = a4[1];
  *(v17 + 32) = *a4;
  *(v17 + 48) = v24;
  *(v17 + 236) = v7;
  *(v17 + 240) = v8;
  *(v17 + 242) = v9;
  *(v17 + 244) = v6;
  *(v17 + 246) = v10;
  *(v17 + 248) = v11;
  *(v17 + 250) = v34;
  *(v17 + 252) = v5;
  *(v17 + 254) = v35;
  v25 = sub_1BD122C00(0, 0, v14, &unk_1BE0C2668, v17);
  v25, v26, v27, v28, v29, v30, v31, v32;
}

uint64_t sub_1BD2124B4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = *a1;
  v13 = *(a2 + 24);
  v14 = *(a2 + 8);
  v36 = *a2;
  v15 = *(a2 + 64);
  v16 = *(a2 + 72);
  v17 = *(a2 + 56);
  v40 = *(a2 + 48);
  v41 = v15;
  v42 = 0;
  v18 = v36;
  v39 = v13;
  v37 = v14;
  v38 = v12;
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
  sub_1BE051694();
  *(a3 + 72) = v44;
  v19 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v20 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_1BD0DE19C(v11, v8, &unk_1EBD45160, &qword_1BE0C25A0);
  sub_1BE051694();
  sub_1BD0DE53C(v11, &unk_1EBD45160, &qword_1BE0C25A0);
  v21 = a3 + v19[13];
  LOBYTE(v42) = 0;
  sub_1BE051694();
  v22 = *(&v44 + 1);
  *v21 = v44;
  *(v21 + 8) = v22;
  v23 = a3 + v19[14];
  v42 = 0;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BE051694();
  v24 = v45;
  *v23 = v44;
  *(v23 + 16) = v24;
  v25 = a3 + v19[15];
  LOBYTE(v42) = 0;
  sub_1BE051694();
  v26 = *(&v44 + 1);
  *v25 = v44;
  *(v25 + 8) = v26;
  v27 = a3 + v19[16];
  LOBYTE(v42) = 0;
  sub_1BE051694();
  v28 = *(&v44 + 1);
  *v27 = v44;
  *(v27 + 8) = v28;
  v29 = v19[17];
  *(a3 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  swift_storeEnumTagMultiPayload();
  v30 = a3 + v19[18];
  result = swift_getKeyPath();
  *v30 = result;
  *(v30 + 8) = 0;
  *a3 = v36;
  *(a3 + 8) = 672;
  v32 = v37;
  v33 = v38;
  *(a3 + 16) = v39;
  *(a3 + 24) = v32;
  v34 = v40;
  v35 = v41;
  *(a3 + 32) = v33;
  *(a3 + 40) = v35;
  *(a3 + 48) = v16;
  *(a3 + 56) = v34;
  *(a3 + 64) = v17;
  return result;
}

uint64_t sub_1BD2127D4@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v53 = a3;
  v56 = a1;
  v63 = a4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v57);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = type metadata accessor for PaymentOfferActionExplanationView(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v53 - v16;
  v17 = *(v4 + 24);
  v18 = *(v4 + 8);
  v54 = *v4;
  v55 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = sub_1BE052434();
  v60 = v21;
  v61 = v20;
  v22 = sub_1BE052434();
  v58 = v23;
  v59 = v22;
  v68 = 0;
  v24 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  sub_1BD0DE19C(v11, v8, &unk_1EBD45160, &qword_1BE0C25A0);
  v25 = v18;
  v26 = v56;
  v27 = v54;
  v28 = v54;
  sub_1BE048964();
  sub_1BE051694();
  sub_1BD0DE53C(v11, &unk_1EBD45160, &qword_1BE0C25A0);
  v29 = &v14[*(v12 + 68)];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v55;
  *v14 = v55;
  *(v14 + 1) = v25;
  *(v14 + 2) = v26;
  *(v14 + 3) = 0;
  *(v14 + 4) = 0xE000000000000000;
  *(v14 + 11) = 0;
  *(v14 + 72) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 40) = 0u;
  v14[96] = 0;
  *(v14 + 13) = v27;
  *(v14 + 16) = sub_1BD214190;
  *(v14 + 17) = v19;
  *(v14 + 72) = 1792;
  v31 = v30;
  v32 = [v25 identifier];
  if (!v32)
  {
    sub_1BE052434();
    v34 = v33;
    v32 = sub_1BE052404();
    v34, v35, v36, v37, v38, v39, v40, v41;
  }

  v42 = [v31 preferredLocalizationLanguageForCriteriaIdentifier_];

  v43 = sub_1BE052434();
  v45 = v44;

  *(v14 + 14) = v43;
  *(v14 + 15) = v45;
  v64 = 0;
  sub_1BE051944();
  v46 = v66;
  v47 = v67;
  v48 = &v14[*(v12 + 64)];
  *v48 = v65;
  *(v48 + 1) = v46;
  v48[16] = v47;
  v49 = v60;
  *(v14 + 19) = v61;
  *(v14 + 20) = v49;
  v50 = v58;
  *(v14 + 21) = v59;
  *(v14 + 22) = v50;
  v14[184] = 1;
  *(v14 + 24) = 0;
  *(v14 + 25) = 0;
  v51 = v62;
  sub_1BD2141B8(v14, v62);
  sub_1BD213F8C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView, &unk_1BE0D53B8);
  sub_1BE050E54();
  return sub_1BD21421C(v51);
}

id sub_1BD212BA4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v68 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v68 - v10;
  v12 = *(v0 + 16);
  if (v12)
  {
    v13 = [v12 dynamicContent];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 dynamicContentPageForPageType_];

      if (v15)
      {
        v16 = [v15 title];

        if (v16)
        {
          v17 = sub_1BE052434();

          return v17;
        }
      }
    }
  }

  sub_1BD2111F8(&selRef_minimumAmounts);
  v69 = v1;
  if (v18)
  {
    v19 = v18;
    sub_1BD2111F8(&selRef_maximumAmounts);
    if (v20)
    {
      v21 = v20;
      (*(v2 + 104))(v11, *MEMORY[0x1E69B8078], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BE0B6CA0;
      result = [v19 minimalFormattedStringValue];
      if (result)
      {
        v24 = result;
        v25 = sub_1BE052434();
        v27 = v26;

        *(v22 + 56) = MEMORY[0x1E69E6158];
        v28 = sub_1BD110550();
        *(v22 + 64) = v28;
        *(v22 + 32) = v25;
        *(v22 + 40) = v27;
        result = [v21 minimalFormattedStringValue];
        if (result)
        {
          v29 = result;
          v30 = sub_1BE052434();
          v32 = v31;

          *(v22 + 96) = MEMORY[0x1E69E6158];
          *(v22 + 104) = v28;
          *(v22 + 72) = v30;
          *(v22 + 80) = v32;
          v17 = sub_1BE04B714();

          v22, v33, v34, v35, v36, v37, v38, v39;
          (*(v2 + 8))(v11, v69);
          return v17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  sub_1BD2111F8(&selRef_minimumAmounts);
  if (v40)
  {
    v41 = v40;
    (*(v2 + 104))(v7, *MEMORY[0x1E69B8078], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BE0B69E0;
    result = [v41 minimalFormattedStringValue];
    if (result)
    {
      v43 = result;
      v44 = sub_1BE052434();
      v46 = v45;

      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1BD110550();
      *(v42 + 32) = v44;
      *(v42 + 40) = v46;
      v17 = sub_1BE04B714();

      v42, v47, v48, v49, v50, v51, v52, v53;
      (*(v2 + 8))(v7, v69);
      return v17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1BD2111F8(&selRef_maximumAmounts);
  if (!v54)
  {
    return 0;
  }

  v55 = v54;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B8078], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1BE0B69E0;
  result = [v55 minimalFormattedStringValue];
  if (result)
  {
    v57 = result;
    v58 = sub_1BE052434();
    v60 = v59;

    *(v56 + 56) = MEMORY[0x1E69E6158];
    *(v56 + 64) = sub_1BD110550();
    *(v56 + 32) = v58;
    *(v56 + 40) = v60;
    v17 = sub_1BE04B714();

    v56, v61, v62, v63, v64, v65, v66, v67;
    (*(v2 + 8))(v4, v69);
    return v17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BD2130A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v7 + 220) = a7;
  *(v7 + 664) = a6;
  *(v7 + 656) = a5;
  *(v7 + 648) = a4;
  v8 = sub_1BE04D214();
  *(v7 + 672) = v8;
  *(v7 + 680) = *(v8 - 8);
  *(v7 + 688) = swift_task_alloc();
  sub_1BE0528A4();
  *(v7 + 696) = sub_1BE052894();
  v10 = sub_1BE052844();
  *(v7 + 704) = v10;
  *(v7 + 712) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD2131A4, v10, v9);
}

uint64_t sub_1BD2131A4()
{
  v1 = *(v0 + 648);
  *(v0 + 376) = *(v1 + 136);
  *(v0 + 504) = *(v0 + 384);
  *(v0 + 424) = *(v1 + 136);
  *(v0 + 764) = 1;
  sub_1BD0DE19C(v0 + 504, v0 + 568, &unk_1EBD4EF10, &qword_1BE0C2670);
  sub_1BD0DE19C(v0 + 504, v0 + 560, &unk_1EBD4EF10, &qword_1BE0C2670);
  sub_1BD0DE19C(v0 + 504, v0 + 552, &unk_1EBD4EF10, &qword_1BE0C2670);
  sub_1BD0DE19C(v0 + 504, v0 + 520, &unk_1EBD4EF10, &qword_1BE0C2670);
  sub_1BD0DE19C(v0 + 504, v0 + 512, &unk_1EBD4EF10, &qword_1BE0C2670);
  *(v0 + 720) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v2 = sub_1BE053344();
  v3 = sub_1BE052404();
  v4 = PKCurrencyAmountMake();
  *(v0 + 728) = v4;

  sub_1BD0DE53C(v0 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
  if (v4)
  {
    v16 = (*(*(v0 + 648) + 32) + **(*(v0 + 648) + 32));
    v5 = swift_task_alloc();
    *(v0 + 736) = v5;
    *v5 = v0;
    v5[1] = sub_1BD2134B0;

    return v16(v4);
  }

  else
  {
    v7 = *(v0 + 696);
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE53C(v0 + 504, &unk_1EBD4EF10, &qword_1BE0C2670);
    v7, v8, v9, v10, v11, v12, v13, v14;
    *(v0 + 360) = *(v0 + 376);
    *(v0 + 760) = 0;
    sub_1BE0516B4();
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350, &unk_1BE0B8D00);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1BD2134B0(uint64_t a1)
{
  v3 = *v2;
  v3[93] = a1;
  v3[94] = v1;

  if (v1)
  {
    sub_1BD0DE53C((v3 + 47), &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE53C((v3 + 47), &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE53C((v3 + 47), &qword_1EBD54350, &unk_1BE0B8D00);
    v4 = v3[89];
    v5 = v3[88];
    v6 = sub_1BD213B3C;
  }

  else
  {
    v4 = v3[89];
    v5 = v3[88];
    v6 = sub_1BD213618;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1BD213618(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = (v8 + 376);
  v10 = *(v8 + 744);
  *(v8 + 696), a2, a3, a4, a5, a6, a7, a8;
  if (v10)
  {
    v11 = *(v8 + 744);
    sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
    v12 = [v11 isEligible];
    sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
    if (v12)
    {
      v13 = *(v8 + 744);
      v14 = *(v8 + 728);
      v15 = *(v8 + 648);
      sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
      v16 = *(v15 + 120);
      v17 = *(v15 + 128);
      *(v8 + 584) = v16;
      *(v8 + 576) = v17;
      *(v8 + 392) = v16;
      *(v8 + 400) = v17;
      *(v8 + 624) = v13;
      v18 = v11;
      sub_1BD0DE19C(v8 + 584, v8 + 632, &unk_1EBD57C20, &qword_1BE0C2690);
      sub_1BD0DE19C(v8 + 576, v8 + 640, &qword_1EBD3DCB0, &qword_1BE0C2698);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC90, &qword_1BE0C25F0);
      sub_1BE0516B4();

      sub_1BD0DE53C(v8 + 584, &unk_1EBD57C20, &qword_1BE0C2690);
      sub_1BD0DE53C(v8 + 576, &qword_1EBD3DCB0, &qword_1BE0C2698);
      *(v8 + 472) = *v9;
      *(v8 + 761) = 0;
    }

    else
    {
      v20 = [v11 ineligibleDynamicContent];
      if (v20)
      {
        v21 = v20;
        v22 = *(v8 + 744);
        v57 = *(v8 + 728);
        v23 = *(v8 + 648);
        sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
        v24 = swift_allocObject();
        v24[1] = *v23;
        v25 = v23[4];
        v27 = v23[1];
        v26 = v23[2];
        v24[4] = v23[3];
        v24[5] = v25;
        v24[2] = v27;
        v24[3] = v26;
        v28 = v23[8];
        v30 = v23[5];
        v29 = v23[6];
        v24[8] = v23[7];
        v24[9] = v28;
        v24[6] = v30;
        v24[7] = v29;
        v32 = v23[10];
        v31 = v23[11];
        v33 = v23[9];
        *(v24 + 204) = *(v23 + 188);
        v24[11] = v32;
        v24[12] = v31;
        v24[10] = v33;
        v34 = v23[6];
        *(v8 + 224) = v23[5];
        *(v8 + 240) = v34;
        v35 = *(v23 + 14);
        v36 = v23[6];
        *(v8 + 264) = v23[5];
        *(v8 + 280) = v36;
        *(v8 + 592) = v35;
        *(v8 + 256) = v35;
        *(v8 + 328) = v22;
        *(v8 + 336) = v21;
        *(v8 + 344) = sub_1BD214888;
        *(v8 + 352) = v24;
        v37 = v11;
        v38 = v21;
        v39 = v37;
        v40 = v38;
        sub_1BD213FD8(v23, v8 + 16);
        sub_1BD0DE19C(v8 + 264, v8 + 296, &qword_1EBD3DCA0, &qword_1BE0C2680);
        sub_1BD0DE19C(v8 + 592, v8 + 600, &qword_1EBD3DCA8, &qword_1BE0C2688);
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC58, &qword_1BE0C2588);
        sub_1BE0516B4();

        v24, v41, v42, v43, v44, v45, v46, v47;
        sub_1BD0DE53C(v8 + 264, &qword_1EBD3DCA0, &qword_1BE0C2680);
        sub_1BD0DE53C(v8 + 592, &qword_1EBD3DCA8, &qword_1BE0C2688);
        *(v8 + 408) = *v9;
        *(v8 + 765) = 0;
      }

      else
      {
        sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
        sub_1BE04D1E4();
        v48 = sub_1BE04D204();
        v49 = sub_1BE052C34();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = v11;
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_1BD026000, v48, v49, "No dynamic content defined for ineligible installment assessment", v51, 2u);
          MEMORY[0x1BFB45F20](v51, -1, -1);
          v11 = v48;
          v48 = v50;
        }

        v52 = *(v8 + 688);
        v53 = *(v8 + 680);
        v54 = *(v8 + 672);

        (*(v53 + 8))(v52, v54);
        *(v8 + 440) = *v9;
        *(v8 + 763) = 0;
      }
    }
  }

  else
  {
    v19 = *(v8 + 728);
    sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);

    *(v8 + 456) = *v9;
    *(v8 + 762) = 0;
  }

  sub_1BE0516B4();
  sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);

  v55 = *(v8 + 8);

  return v55();
}

uint64_t sub_1BD213B3C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 752);
  v10 = *(v8 + 728);
  v11 = *(v8 + 648);
  *(v8 + 696), a2, a3, a4, a5, a6, a7, a8;
  v12 = v9;
  v13 = sub_1BE04A844();

  v14 = *(v11 + 152);
  v15 = *(v11 + 160);
  *(v8 + 616) = v14;
  *(v8 + 608) = v15;
  *(v8 + 488) = v14;
  *(v8 + 496) = v15;
  *(v8 + 528) = v13;
  sub_1BD0DE19C(v8 + 616, v8 + 536, &qword_1EBD49710, &qword_1BE0B8580);
  sub_1BD0DE19C(v8 + 608, v8 + 544, &qword_1EBD3DC98, &qword_1BE0C2678);
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516B4();

  sub_1BD0DE53C(v8 + 616, &qword_1EBD49710, &qword_1BE0B8580);
  sub_1BD0DE53C(v8 + 608, &qword_1EBD3DC98, &qword_1BE0C2678);
  *(v8 + 472) = *(v8 + 376);
  *(v8 + 761) = 0;
  sub_1BE0516B4();
  sub_1BD0DE53C(v8 + 376, &qword_1EBD54350, &unk_1BE0B8D00);

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD213CE0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC58, &qword_1BE0C2588);
  v2 = sub_1BE0516B4();
  return (*(a1 + 48))(v2);
}

unint64_t sub_1BD213DF8()
{
  result = qword_1EBD3DC30;
  if (!qword_1EBD3DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DC28, &qword_1BE0C2578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DC38, &qword_1BE0C2580);
    sub_1BD0E5E8C(255, &qword_1EBD3DC40, 0x1E69B8C80);
    type metadata accessor for PaymentOfferInstallmentSelectionView(255);
    sub_1BD0DE4F4(&qword_1EBD3DC48, &qword_1EBD3DC38, &qword_1BE0C2580, &unk_1BE101240);
    sub_1BD214890(&qword_1EBD3DC50, &qword_1EBD3DC40, 0x1E69B8C80);
    sub_1BD213F8C(&qword_1EBD57AE0, type metadata accessor for PaymentOfferInstallmentSelectionView, &unk_1BE104DE8);
    swift_getOpaqueTypeConformance2();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DC30);
  }

  return result;
}

uint64_t sub_1BD213F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD21403C()
{
  result = qword_1EBD3DC60;
  if (!qword_1EBD3DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DC20, &qword_1BE0C2570);
    sub_1BD0DE4F4(&qword_1EBD3DC68, &qword_1EBD3DC70, &qword_1BE0C2598, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DC60);
  }

  return result;
}

unint64_t sub_1BD2140F4()
{
  result = qword_1EBD3DC78;
  if (!qword_1EBD3DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DC78);
  }

  return result;
}

void sub_1BD214148(void *result, void *a2, uint64_t a3, void *a4)
{
  if (result)
  {

    a4, v6, v7, v8, v9, v10, v11, v12;
  }
}

uint64_t sub_1BD2141B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferActionExplanationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD21421C(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferActionExplanationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD214278(void *a1)
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BB6C0];
  v4 = *MEMORY[0x1E69BB6F8];
  *(v2 + 32) = *MEMORY[0x1E69BB6C0];
  *(v2 + 40) = v4;
  type metadata accessor for PKAnalyticsSubject(0);
  v5 = v3;
  v6 = v4;
  v7 = sub_1BE052724();
  v2, v8, v9, v10, v11, v12, v13, v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v16 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v17;
  v18 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  v19 = sub_1BE052434();
  v20 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v19;
  *(inited + 72) = v21;
  v22 = *v20;
  *(inited + 80) = *v20;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v23;
  v24 = v16;
  v25 = v18;
  v26 = v22;
  v27 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD213F8C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v28 = sub_1BE052224();
  v27, v29, v30, v31, v32, v33, v34, v35;
  [v1 subjects:v7 sendEvent:v28];
}

void sub_1BD21449C()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B6CA0;
  v2 = *MEMORY[0x1E69BB6C0];
  v3 = *MEMORY[0x1E69BB6F8];
  *(v1 + 32) = *MEMORY[0x1E69BB6C0];
  *(v1 + 40) = v3;
  type metadata accessor for PKAnalyticsSubject(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1BE052724();
  v1, v7, v8, v9, v10, v11, v12, v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v15 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v16 = sub_1BE052434();
  v17 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v16;
  *(inited + 48) = v18;
  v19 = *v17;
  *(inited + 56) = *v17;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v20;
  v21 = v15;
  v22 = v19;
  v23 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD213F8C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v24 = sub_1BE052224();
  v23, v25, v26, v27, v28, v29, v30, v31;
  [v0 subjects:v6 sendEvent:v24];
}

double sub_1BD2146D8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1BD2146F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 244);
  v7 = *(v1 + 252);
  v8 = *(v1 + 236);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD2130A0(a1, v4, v5, v1 + 32, v8, v6, v7);
}

uint64_t objectdestroyTm_12()
{
  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 72), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 88), v15, v16, v17, v18, v19, v20, v21;
  v29 = *(v0 + 96);
  if (v29)
  {

    *(v0 + 120), v30, v31, v32, v33, v34, v35, v36;
  }

  *(v0 + 128), v22, v23, v24, v25, v26, v27, v28;

  *(v0 + 144), v37, v38, v39, v40, v41, v42, v43;
  *(v0 + 160), v44, v45, v46, v47, v48, v49, v50;

  *(v0 + 176), v51, v52, v53, v54, v55, v56, v57;
  *(v0 + 192), v58, v59, v60, v61, v62, v63, v64;

  return swift_deallocObject();
}

uint64_t sub_1BD214890(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BD0E5E8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD2148E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BD214928(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BD21499C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v57 = sub_1BE04F434();
  v3 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCB8, &qword_1BE0C2750);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCC0, &qword_1BE0C2758);
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCC8, &qword_1BE0C2760);
  v14 = *(v13 - 8);
  v55 = v13;
  v56 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCD0, &qword_1BE0C2768);
  MEMORY[0x1EEE9AC00](v58);
  v51 = &v50 - v17;
  v60 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCD8, &qword_1BE0C2770);
  sub_1BD216668();
  sub_1BE0504A4();
  v66 = *(v2 + 1);
  v61 = *(v2 + 1);
  v18 = sub_1BD0DE4F4(&qword_1EBD3DD48, &qword_1EBD3DCB8, &qword_1BE0C2750, MEMORY[0x1E697CCF0]);
  v19 = sub_1BD0DDEBC();
  v20 = MEMORY[0x1E69E6158];
  sub_1BE050B74();
  (*(v6 + 8))(v8, v5);
  v21 = v54;
  v22 = v57;
  (*(v3 + 104))(v54, *MEMORY[0x1E697C438], v57);
  *&v61 = v5;
  *(&v61 + 1) = v20;
  v62 = v18;
  v63 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v52;
  sub_1BE050E84();
  (*(v3 + 8))(v21, v22);
  (*(v53 + 8))(v12, v24);
  sub_1BE052434();
  v26 = v25;
  *&v61 = v24;
  *(&v61 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v51;
  v28 = v55;
  sub_1BE050DE4();
  v26, v29, v30, v31, v32, v33, v34, v35;
  (*(v56 + 8))(v16, v28);
  v36 = *v2;
  v64 = v2[4];
  v65 = v36;
  v37 = swift_allocObject();
  v38 = *(v2 + 1);
  *(v37 + 16) = *v2;
  *(v37 + 32) = v38;
  *(v37 + 48) = v2[4];
  v39 = (v27 + *(v58 + 36));
  *v39 = sub_1BD216A68;
  v39[1] = v37;
  v39[2] = 0;
  v39[3] = 0;
  sub_1BE052434();
  v41 = v40;
  sub_1BD216A6C(&v65, &v61);
  sub_1BD206260(&v66, &v61);
  sub_1BD0DE19C(&v64, &v61, &qword_1EBD3DD40, &qword_1BE0C27A8);
  sub_1BD216AC8();
  sub_1BE050DE4();
  v41, v42, v43, v44, v45, v46, v47, v48;
  return sub_1BD0552E8(v27);
}

id sub_1BD214F0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCF0, &qword_1BE0C2778);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  if (*(*a1 + 16))
  {
    v25 = a2;
    v26 = v9;
    (*(v5 + 104))(v7, *MEMORY[0x1E69B8068], v4, v10.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v17 = v16;

      (*(v5 + 8))(v7, v4);
      v29 = v15;
      v30 = v17;
      sub_1BD0DDEBC();
      v29 = sub_1BE0506C4();
      v30 = v18;
      v31 = v19 & 1;
      v20 = a1[4];
      v32 = v21;
      v33 = v20;
      v28 = v20;
      MEMORY[0x1EEE9AC00](v29);
      sub_1BD0DE19C(&v33, v27, &qword_1EBD3DD40, &qword_1BE0C27A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD00, &qword_1BE0C2780);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD40, &qword_1BE0C27A8);
      sub_1BD216784();
      sub_1BD2169EC();
      sub_1BE051A34();
      v22 = v25;
      (*(v26 + 32))(v25, v12, v8);
      return (*(v26 + 56))(v22, 0, 1, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v23 = *(v9 + 56);

    return v23(a2, 1, 1, v8, v10);
  }

  return result;
}

uint64_t sub_1BD215278(uint64_t a1, uint64_t *a2)
{
  v7 = a1;
  swift_getKeyPath();
  v10 = *a2;
  v9 = *(a2 + 1);
  v8 = a2[4];
  v3 = swift_allocObject();
  v4 = *(a2 + 1);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[4];
  sub_1BE048C84();
  sub_1BD216A6C(&v10, v6);
  sub_1BD206260(&v9, v6);
  sub_1BD0DE19C(&v8, v6, &qword_1EBD3DD40, &qword_1BE0C27A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD68, &qword_1BE0C27D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD10, &qword_1BE0C2788);
  sub_1BD0DE4F4(&qword_1EBD3DD70, &qword_1EBD3DD68, &qword_1BE0C27D8, MEMORY[0x1E69E6338]);
  sub_1BD217414(&qword_1EBD3DD78, type metadata accessor for UnavailableIdentityMethodItem, &unk_1BE0ED8F8);
  sub_1BD216808();
  return sub_1BE0519C4();
}

uint64_t sub_1BD21542C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v40 = sub_1BE04FF64();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD80, &qword_1BE0C27E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD28, &unk_1BE0C2798);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD88, &qword_1BE0C27E8);
  v14 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v16 = &v39 - v15;
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0x4020000000000000;
  v13[16] = 0;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0x4030000000000000;
  v10[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD90, &qword_1BE0C27F0);
  sub_1BD215890(a2, a1, &v10[*(v17 + 44)]);
  sub_1BE051CE4();
  v18 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD98, &qword_1BE0C27F8) + 44)];
  sub_1BE04EE54();
  sub_1BD0DE204(v10, v18, &qword_1EBD3DD80, &qword_1BE0C27E0);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDA0, &qword_1BE0C2800) + 36));
  v20 = v49;
  v19[4] = v48;
  v19[5] = v20;
  v19[6] = v50;
  v21 = v45;
  *v19 = v44;
  v19[1] = v21;
  v22 = v47;
  v19[2] = v46;
  v19[3] = v22;
  sub_1BE04FF44();
  v23 = sub_1BD0DE4F4(&qword_1EBD3DD30, &qword_1EBD3DD28, &unk_1BE0C2798, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v5 + 8))(v7, v40);
  sub_1BD0DE53C(v13, &qword_1EBD3DD28, &unk_1BE0C2798);
  sub_1BE052434();
  v25 = v24;
  v42 = v11;
  v43 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v41;
  v27 = v39;
  sub_1BE050DE4();
  v25, v28, v29, v30, v31, v32, v33, v34;
  (*(v14 + 8))(v16, v27);
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD10, &qword_1BE0C2788);
  v38 = (v26 + *(result + 36));
  *v38 = KeyPath;
  v38[1] = sub_1BD10DF54;
  v38[2] = v36;
  return result;
}

uint64_t sub_1BD215890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v53 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDA8, &qword_1BE0C2838);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB0, &unk_1BE0C2840);
  v9 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB8, &qword_1BE0C2850);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v27 = *(type metadata accessor for UnavailableIdentityMethodItem(0) + 20);
  v52 = a2;
  sub_1BD0DE19C(a2 + v27, v14, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v28 = type metadata accessor for UnavailablePass(0);
  if ((*(*(v28 - 8) + 48))(v14, 1, v28) == 1)
  {
    sub_1BD0DE53C(v14, &qword_1EBD3C3F8, &qword_1BE0DB080);
    v29 = 1;
    v30 = v50;
  }

  else
  {
    sub_1BD0E8EA0(v14, v17);
    sub_1BD21745C(v14, type metadata accessor for UnavailablePass);
    sub_1BD2174BC(v17, v20, type metadata accessor for WrappedPass);
    v31 = type metadata accessor for PassImage(0);
    sub_1BD0E8EA0(v20, &v11[v31[6]]);
    PKPassFrontFaceContentSize();
    *(v11 + 3) = 0x4049800000000000;
    *(v11 + 4) = v33 / v32 * 51.0;
    *v11 = sub_1BD70C870;
    *(v11 + 1) = 0;
    v11[16] = 0;
    v11[v31[7]] = 0;
    *&v11[v31[8]] = 1911;
    LOBYTE(v31) = sub_1BE050234();
    sub_1BE04E1F4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_1BD21745C(v20, type metadata accessor for WrappedPass);
    v42 = v50;
    v43 = &v11[*(v50 + 36)];
    *v43 = v31;
    *(v43 + 1) = v35;
    *(v43 + 2) = v37;
    *(v43 + 3) = v39;
    *(v43 + 4) = v41;
    v43[40] = 0;
    sub_1BD0DE204(v11, v26, &qword_1EBD3DDB0, &unk_1BE0C2840);
    v29 = 0;
    v30 = v42;
  }

  (*(v9 + 56))(v26, v29, 1, v30);
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDC0, &qword_1BE0C2858);
  sub_1BD215DE4(v51, v52, &v8[*(v44 + 44)]);
  sub_1BD0DE19C(v26, v23, &qword_1EBD3DDB8, &qword_1BE0C2850);
  v45 = v54;
  sub_1BD0DE19C(v8, v54, &qword_1EBD3DDA8, &qword_1BE0C2838);
  v46 = v53;
  sub_1BD0DE19C(v23, v53, &qword_1EBD3DDB8, &qword_1BE0C2850);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDC8, &unk_1BE0C2860);
  sub_1BD0DE19C(v45, v46 + *(v47 + 48), &qword_1EBD3DDA8, &qword_1BE0C2838);
  sub_1BD0DE53C(v8, &qword_1EBD3DDA8, &qword_1BE0C2838);
  sub_1BD0DE53C(v26, &qword_1EBD3DDB8, &qword_1BE0C2850);
  sub_1BD0DE53C(v45, &qword_1EBD3DDA8, &qword_1BE0C2838);
  return sub_1BD0DE53C(v23, &qword_1EBD3DDB8, &qword_1BE0C2850);
}

uint64_t sub_1BD215DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDD0, &unk_1BE0C2870);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDD8, &unk_1BE102B20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  *v21 = sub_1BE04F504();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDE0, &qword_1BE0C2880) + 44)];
  sub_1BD2161B4();
  v23 = sub_1BE04F794();
  v24 = &v15[*(v10 + 44)];
  *v24 = v23;
  v24[1] = sub_1BD21636C;
  v24[2] = 0;
  sub_1BD0DE19C(v15, v12, &qword_1EBD3DDD0, &unk_1BE0C2870);
  sub_1BD0DE19C(v12, v22, &qword_1EBD3DDD0, &unk_1BE0C2870);
  v25 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDE8, &qword_1BE0C2888) + 48));
  v34 = 0uLL;
  *&v35 = 0;
  *(&v35 + 1) = 1;
  v36 = 0u;
  v37 = 0u;
  v26 = v35;
  *v25 = 0uLL;
  v25[1] = v26;
  v27 = v37;
  v25[2] = v36;
  v25[3] = v27;
  sub_1BD0DE19C(&v34, v38, &qword_1EBD3DDF0, &unk_1BE0C2890);
  sub_1BD0DE53C(v15, &qword_1EBD3DDD0, &unk_1BE0C2870);
  memset(v38, 0, 24);
  v38[3] = 1;
  v39 = 0u;
  v40 = 0u;
  sub_1BD0DE53C(v38, &qword_1EBD3DDF0, &unk_1BE0C2890);
  sub_1BD0DE53C(v12, &qword_1EBD3DDD0, &unk_1BE0C2870);
  sub_1BD216394(v32, v8);
  sub_1BD0DE19C(v21, v18, &qword_1EBD3DDD8, &unk_1BE102B20);
  sub_1BD0DE19C(v8, v5, &unk_1EBD5BB60, &qword_1BE0C4580);
  v28 = v33;
  sub_1BD0DE19C(v18, v33, &qword_1EBD3DDD8, &unk_1BE102B20);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDF8, &qword_1BE102B30);
  sub_1BD0DE19C(v5, v28 + *(v29 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v8, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v21, &qword_1EBD3DDD8, &unk_1BE102B20);
  sub_1BD0DE53C(v5, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v18, &qword_1EBD3DDD8, &unk_1BE102B20);
}

void sub_1BD2161B4()
{
  sub_1BD690908();
  sub_1BD0DDEBC();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BE050324();
  v8 = sub_1BE0505F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v7, v9, v11, v13, v15, v16, v17, v18;
  sub_1BD0DDF10(v0, v2, (v4 & 1), v19, v20, v21, v22, v23);
  v6, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_1BE051234();
  v32 = sub_1BE050564();
  v34 = v33;
  LOBYTE(v7) = v35;
  v37 = v36;
  v31, v33, v35, v36, v38, v39, v40, v41;
  sub_1BD0DDF10(v8, v10, (v12 & 1), v42, v43, v44, v45, v46);
  v14, v47, v48, v49, v50, v51, v52, v53;
  KeyPath = swift_getKeyPath();
  sub_1BE052434();
  v55 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
  sub_1BD1B9C50();
  sub_1BE050DE4();
  v55, v56, v57, v58, v59, v60, v61, v62;
  sub_1BD0DDF10(v32, v34, (v7 & 1), v63, v64, v65, v66, v67);
  KeyPath, v68, v69, v70, v71, v72, v73, v74;
  v37, v75, v76, v77, v78, v79, v80, v81;
}

uint64_t sub_1BD216394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v90 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v87 - v5;
  v7 = sub_1BD216CD8(a1);
  if (v8)
  {
    v91 = v7;
    v92 = v8;
    sub_1BD0DDEBC();
    v9 = sub_1BE0506C4();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_1BE0502E4();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v88 = a2;
    v89 = v4;
    v21 = v20;
    v23 = v22;
    v16, v18, v20, v22, v24, v25, v26, v27;
    sub_1BD0DDF10(v9, v11, (v13 & 1), v28, v29, v30, v31, v32);
    v15, v33, v34, v35, v36, v37, v38, v39;
    v40 = sub_1BE051234();
    v41 = sub_1BE050564();
    v43 = v42;
    LOBYTE(v15) = v44;
    v46 = v45;
    v40, v42, v44, v45, v47, v48, v49, v50;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v51, v52, v53, v54, v55);
    v23, v56, v57, v58, v59, v60, v61, v62;
    v91 = v41;
    v92 = v43;
    v93 = v15 & 1;
    v94 = v46;
    sub_1BE052434();
    v64 = v63;
    sub_1BE050DE4();
    v64, v65, v66, v67, v68, v69, v70, v71;
    sub_1BD0DDF10(v41, v43, (v15 & 1), v72, v73, v74, v75, v76);
    v46, v77, v78, v79, v80, v81, v82, v83;
    v84 = v88;
    sub_1BD0DE204(v6, v88, &qword_1EBD452C0, &qword_1BE0B7620);
    return (*(v90 + 56))(v84, 0, 1, v89);
  }

  else
  {
    v86 = *(v90 + 56);

    return v86(a2, 1, 1, v4);
  }
}

unint64_t sub_1BD216668()
{
  result = qword_1EBD3DCE0;
  if (!qword_1EBD3DCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCD8, &qword_1BE0C2770);
    sub_1BD2166EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DCE0);
  }

  return result;
}

unint64_t sub_1BD2166EC()
{
  result = qword_1EBD3DCE8;
  if (!qword_1EBD3DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCF0, &qword_1BE0C2778);
    sub_1BD216784();
    sub_1BD2169EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DCE8);
  }

  return result;
}

unint64_t sub_1BD216784()
{
  result = qword_1EBD3DCF8;
  if (!qword_1EBD3DCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD00, &qword_1BE0C2780);
    sub_1BD216808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DCF8);
  }

  return result;
}

unint64_t sub_1BD216808()
{
  result = qword_1EBD3DD08;
  if (!qword_1EBD3DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD10, &qword_1BE0C2788);
    sub_1BD2168C0();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD08);
  }

  return result;
}

unint64_t sub_1BD2168C0()
{
  result = qword_1EBD3DD18;
  if (!qword_1EBD3DD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD20, &qword_1BE0C2790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD28, &unk_1BE0C2798);
    sub_1BD0DE4F4(&qword_1EBD3DD30, &qword_1EBD3DD28, &unk_1BE0C2798, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD217414(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD18);
  }

  return result;
}

unint64_t sub_1BD2169EC()
{
  result = qword_1EBD3DD38;
  if (!qword_1EBD3DD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD40, &qword_1BE0C27A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD38);
  }

  return result;
}

unint64_t sub_1BD216AC8()
{
  result = qword_1EBD3DD50;
  if (!qword_1EBD3DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCD0, &qword_1BE0C2768);
    sub_1BD216B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD50);
  }

  return result;
}

unint64_t sub_1BD216B54()
{
  result = qword_1EBD3DD58;
  if (!qword_1EBD3DD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD60, &unk_1BE0C27B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCC0, &qword_1BE0C2758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCB8, &qword_1BE0C2750);
    sub_1BD0DE4F4(&qword_1EBD3DD48, &qword_1EBD3DCB8, &qword_1BE0C2750, MEMORY[0x1E697CCF0]);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD217414(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD58);
  }

  return result;
}

id sub_1BD216CD8(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for UnavailablePass(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = *(type metadata accessor for UnavailableIdentityMethodItem(0) + 20);
  sub_1BD0DE19C(a1 + v19, v11, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD3C3F8, &qword_1BE0DB080);
LABEL_9:
    sub_1BD0DE19C(a1 + v19, v8, &qword_1EBD3C3F8, &qword_1BE0DB080);
    if (v20(v8, 1, v12) == 1)
    {
      sub_1BD0DE53C(v8, &qword_1EBD3C3F8, &qword_1BE0DB080);
      return 0;
    }

    sub_1BD2174BC(v8, v15, type metadata accessor for UnavailablePass);
    v30 = sub_1BD68BA18(*&v15[*(v12 + 28)], *&v15[*(v12 + 28) + 8], v15[*(v12 + 28) + 16], 0);
    sub_1BD21745C(v15, type metadata accessor for UnavailablePass);
    return v30;
  }

  sub_1BD2174BC(v11, v18, type metadata accessor for UnavailablePass);
  v21 = WrappedPass.secureElementPass.getter();
  if (!v21)
  {
    sub_1BD21745C(v18, type metadata accessor for UnavailablePass);
    goto LABEL_9;
  }

  v22 = v21;
  if (([v21 isIdentityPass] & 1) == 0)
  {
    sub_1BD21745C(v18, type metadata accessor for UnavailablePass);

    goto LABEL_9;
  }

  v23 = &v18[*(v12 + 20)];
  v24 = *(v23 + 1);
  if (v24)
  {
    v25 = *v23;
    v27 = v45;
    v26 = v46;
    v28 = v47;
    (*(v46 + 104))(v45, *MEMORY[0x1E69B8068], v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BE0B69E0;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1BD110550();
    *(v29 + 32) = v25;
    *(v29 + 40) = v24;
    sub_1BE048C84();
    v30 = sub_1BE04B714();

    v29, v31, v32, v33, v34, v35, v36, v37;
    (*(v26 + 8))(v27, v28);
    sub_1BD21745C(v18, type metadata accessor for UnavailablePass);
    return v30;
  }

  v40 = v46;
  v39 = v47;
  v41 = v44;
  (*(v46 + 104))(v44, *MEMORY[0x1E69B8068], v47);
  result = PKPassKitBundle();
  if (result)
  {
    v42 = result;
    v43 = sub_1BE04B6F4();

    (*(v40 + 8))(v41, v39);
    sub_1BD21745C(v18, type metadata accessor for UnavailablePass);
    return v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD217234()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6E0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  v11 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD217414(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v12 = sub_1BE052224();
  v11, v13, v14, v15, v16, v17, v18, v19;
  [v0 subject:v1 sendEvent:v12];
}

uint64_t objectdestroyTm_13(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD217414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD21745C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD2174BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD217524()
{
  result = qword_1EBD3DE00;
  if (!qword_1EBD3DE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE08, &unk_1BE0C28E0);
    sub_1BD216AC8();
    sub_1BD217414(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DE00);
  }

  return result;
}

uint64_t PeerPaymentIdentityManager.firstName.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKPeerPaymentIdentityManager_firstName);
  sub_1BE048C84();
  return v1;
}

id sub_1BD217634(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3 + 8);
  sub_1BE048C84();
  v4 = sub_1BE052404();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

uint64_t PeerPaymentIdentityManager.lastName.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKPeerPaymentIdentityManager_lastName);
  sub_1BE048C84();
  return v1;
}

void sub_1BD217824(void *a1, unint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v14 = *(v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v13 = *(v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  if (v13 >> 60 == 15)
  {
    if (a2 >> 60 == 15)
    {
      sub_1BD030394(v14, v13);
      sub_1BD030394(a1, a2);
      sub_1BD030220(v14, v13, v15, v16, v17, v18, v19, v20);
      return;
    }

    goto LABEL_5;
  }

  if (a2 >> 60 == 15)
  {
LABEL_5:
    sub_1BD030394(v14, v13);
    sub_1BD030394(a1, a2);
    sub_1BD030220(v14, v13, v21, v22, v23, v24, v25, v26);
    sub_1BD030220(a1, a2, v27, v28, v29, v30, v31, v32);
LABEL_6:
    sub_1BD217A8C();
    return;
  }

  sub_1BD030394(v14, v13);
  sub_1BD030394(v14, v13);
  sub_1BD030394(a1, a2);
  v33 = sub_1BD3D8CB4(v14, v13, a1, a2);
  sub_1BD030220(v14, v13, v34, v35, v36, v37, v38, v39);
  sub_1BD030220(a1, a2, v40, v41, v42, v43, v44, v45);
  sub_1BD030220(v14, v13, v46, v47, v48, v49, v50, v51);
  if (!v33)
  {
    goto LABEL_6;
  }
}

uint64_t PeerPaymentIdentityManager.profilePictureData.getter()
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  sub_1BD030394(v9, *(v0 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8));
  return v9;
}

void sub_1BD217A8C()
{
  v1 = v0;
  v2 = sub_1BE051FD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  *v5 = sub_1BE052D54();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1BE052004();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    KeyPath = swift_getKeyPath();
    v88 = v1;
    sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
    sub_1BE04B594();
    KeyPath, v8, v9, v10, v11, v12, v13, v14;
    v15 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
    v16 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager_firstName + 8);
    v17 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
    v18 = sub_1BE052404();
    v19 = sub_1BE052404();
    v20 = PKPeerPaymentDisplayNameWithNamesAndPreferences();

    if (v20)
    {
      sub_1BE052434();
      v16 = v21;
    }

    else
    {
      sub_1BE048C84();
    }

    v22 = swift_getKeyPath();
    v88 = v1;
    sub_1BE04B594();
    v22, v23, v24, v25, v26, v27, v28, v29;
    if ([*(v1 + v15) shareProfilePicture])
    {
      v30 = swift_getKeyPath();
      v88 = v1;
      sub_1BE04B594();
      v30, v31, v32, v33, v34, v35, v36, v37;
      v38 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
      v39 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
      sub_1BD030394(v38, v39);
    }

    else
    {
      v38 = 0;
      v39 = 0xF000000000000000;
    }

    sub_1BD030394(v38, v39);
    v40 = sub_1BE052404();
    v16, v41, v42, v43, v44, v45, v46, v47;
    if (v39 >> 60 == 15)
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_1BE04AAB4();
      sub_1BD030220(v38, v39, v49, v50, v51, v52, v53, v54);
    }

    v55 = [objc_allocWithZone(MEMORY[0x1E69B8FB8]) initWithDisplayName:v40 imageData:v48];

    sub_1BD2185B0(v55);
    v56 = swift_getKeyPath();
    v88 = v1;
    sub_1BE04B594();
    v56, v57, v58, v59, v60, v61, v62, v63;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v71 = Strong;
      v72 = swift_getKeyPath();
      v87 = v1;
      sub_1BE04B594();
      v72, v73, v74, v75, v76, v77, v78, v79;
      v80 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
      [v71 peerPaymentIdentityManager:v1 didUpdateProfileAppearanceData:v80];
      sub_1BD030220(v38, v39, v81, v82, v83, v84, v85, v86);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BD030220(v38, v39, v65, v66, v67, v68, v69, v70);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD218070(void *a1, const char *a2)
{
  v5 = v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData;
  v6 = *(v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v7 = *(v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  sub_1BD030394(v6, v7);
  v8 = sub_1BD1257C0(v6, v7, a1, a2);
  sub_1BD030220(v6, v7, v9, v10, v11, v12, v13, v14);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
    sub_1BE04B584();
    sub_1BD030220(a1, a2, v16, v17, v18, v19, v20, v21);
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v29 = *v5;
    v30 = *(v5 + 8);
    *v5 = a1;
    *(v5 + 8) = a2;
    sub_1BD030394(v29, v30);
    sub_1BD030394(a1, a2);
    sub_1BD030220(v29, v30, v31, v32, v33, v34, v35, v36);
    sub_1BD217824(v29, v30);
    sub_1BD030220(v29, v30, v37, v38, v39, v40, v41, v42);

    sub_1BD030220(a1, a2, v43, v44, v45, v46, v47, v48);
  }
}

uint64_t sub_1BD218240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v13 = *(v3 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  *a2 = v12;
  a2[1] = v13;
  return sub_1BD030394(v12, v13);
}

void sub_1BD2182F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BD030394(*a1, v2);
  sub_1BD218070(v1, v2);
}

uint64_t type metadata accessor for PeerPaymentIdentityManager(uint64_t a1)
{
  result = qword_1EBD3DE58;
  if (!qword_1EBD3DE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD218388(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v6 = *(a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v7 = *(a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  *v5 = a2;
  v5[1] = a3;
  sub_1BD030394(v6, v7);
  sub_1BD030394(a2, a3);
  sub_1BD030220(v6, v7, v8, v9, v10, v11, v12, v13);
  sub_1BD217824(v6, v7);
  sub_1BD030220(v6, v7, v14, v15, v16, v17, v18, v19);
}

void sub_1BD2185B0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData;
  v5 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  sub_1BD0E5E8C(0, &qword_1EBD3DE68, 0x1E69B8FB8);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
  }
}

id sub_1BD218778(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v2 + *a2);

  return v12;
}

id sub_1BD21883C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *(v6 + *a3);
  *a4 = v15;

  return v15;
}

void sub_1BD21892C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  v5 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
  sub_1BD0E5E8C(0, &qword_1EBD3DE50, 0x1E69B8FB0);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
  }
}

void (*PeerPaymentIdentityManager.shareLastName.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 8) = v1;
  KeyPath = swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____PKPeerPaymentIdentityManager___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  *(v4 + 32) = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  *(v4 + 40) = [*(v1 + v13) shareLastName];
  return sub_1BD218C30;
}

id sub_1BD218C50(void *a1, uint64_t a2, SEL *a3)
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  v6 = a1;
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = [*&v6[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference] *a3];

  return v14;
}

id sub_1BD218D30(SEL *a1)
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  return [*(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) *a1];
}

void sub_1BD218E4C(char a1, SEL *a2, SEL *a3)
{
  v6 = a1 & 1;
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  if ([*(v3 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) *a2] != v6)
  {
    v16 = swift_getKeyPath();
    sub_1BE04B594();
    v16, v17, v18, v19, v20, v21, v22, v23;
    [*(v3 + v15) *a3];
    sub_1BD217A8C();
  }
}

id sub_1BD218F6C@<X0>(uint64_t *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  result = [*(v5 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) *a2];
  *a3 = result;
  return result;
}

void (*PeerPaymentIdentityManager.shareProfilePicture.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 8) = v1;
  KeyPath = swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____PKPeerPaymentIdentityManager___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  *(v4 + 32) = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  *(v4 + 40) = [*(v1 + v13) shareProfilePicture];
  return sub_1BD219140;
}

void sub_1BD219154(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 40);
  KeyPath = swift_getKeyPath();
  v9 = v6[4];
  v10 = v6[1];
  *v6 = v10;
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  if (v7 != [*(v10 + v9) *a3])
  {
    v18 = v6[4];
    v19 = v6[1];
    v20 = swift_getKeyPath();
    *v6 = v19;
    sub_1BE04B594();
    v20, v21, v22, v23, v24, v25, v26, v27;
    [*(v19 + v18) *a4];
    sub_1BD217A8C();
  }

  free(v6);
}

uint64_t PeerPaymentIdentityManager.delegate.getter()
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t PeerPaymentIdentityManager.delegate.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B584();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD219670@<X0>(uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1BD219738(uint64_t *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t (*PeerPaymentIdentityManager.delegate.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____PKPeerPaymentIdentityManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = OBJC_IVAR____PKPeerPaymentIdentityManager__delegate;
  swift_beginAccess();
  v4[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1BD2199D8;
}

void sub_1BD2199D8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  v4 = v3[4];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  KeyPath = swift_getKeyPath();
  sub_1BE04B5A4();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;

  free(v3);
}

id PeerPaymentIdentityManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void PeerPaymentIdentityManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData];
  *&v0[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData] = xmmword_1BE0B8E60;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_1BE04B5C4();
  v3 = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR____PKPeerPaymentIdentityManager_service] = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [v3 preferences];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 profileAppearance];

  if (!v6)
  {
LABEL_40:
    __break(1u);
    return;
  }

  [v6 copy];

  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD3DE50, 0x1E69B8FB0);
  if (swift_dynamicCast())
  {
    v7 = v83;
  }

  else
  {
LABEL_6:
    v7 = [objc_allocWithZone(MEMORY[0x1E69B8FB0]) init];
    [v7 setShareLastName_];
    [v7 setShareProfilePicture_];
  }

  *&v0[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference] = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  if (!v10)
  {
    __break(1u);
    goto LABEL_40;
  }

  v11 = v10;
  v12 = [v10 appleAccountInformation];

  v81 = v12;
  v82 = v2;
  if (v12)
  {
    v13 = [v12 firstName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1BE052434();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v23 = [v12 lastName];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1BE052434();
      v21 = v26;

      if (v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v25 = 0;
      v21 = 0;
      if (v17)
      {
LABEL_15:
        v27 = v9;
        sub_1BE048C84();
        v22 = v15;
        v20 = sub_1BE052404();
        v17, v28, v29, v30, v31, v32, v33, v34;
        if (v21)
        {
LABEL_16:
          sub_1BE048C84();
          v12 = v25;
          v19 = sub_1BE052404();
          v21, v35, v36, v37, v38, v39, v40, v41;
          goto LABEL_20;
        }

LABEL_19:
        v12 = v25;
        v19 = 0;
        goto LABEL_20;
      }
    }

    v22 = v15;
    v42 = v9;
    v20 = 0;
    if (v21)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v18 = v9;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
LABEL_20:
  v43 = PKPeerPaymentDisplayNameWithNamesAndPreferences();

  if (v43)
  {
    sub_1BE052434();
    v45 = v44;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  v46 = objc_allocWithZone(MEMORY[0x1E69B8FB8]);
  v47 = sub_1BE052404();
  v45, v48, v49, v50, v51, v52, v53, v54;
  v55 = [v46 initWithDisplayName:v47 imageData:0];

  *&v0[OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData] = v55;
  if (v17)
  {
    v62 = v22;
  }

  else
  {
    v62 = 0;
  }

  if (v17)
  {
    v63 = v17;
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  v64 = &v0[OBJC_IVAR____PKPeerPaymentIdentityManager_firstName];
  *v64 = v62;
  *(v64 + 1) = v63;
  if (v21)
  {
    v65 = v12;
  }

  else
  {
    v65 = 0;
  }

  if (v21)
  {
    v66 = v21;
  }

  else
  {
    v66 = 0xE000000000000000;
  }

  v67 = &v0[OBJC_IVAR____PKPeerPaymentIdentityManager_lastName];
  *v67 = v65;
  *(v67 + 1) = v66;
  sub_1BD030220(*v82, v82[1], v56, v57, v58, v59, v60, v61);
  *v82 = xmmword_1BE0B8E60;
  v86.receiver = v0;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, sel_init);
  v68 = [objc_allocWithZone(MEMORY[0x1E698BB40]) init];
  if (v68)
  {
    v69 = v68;
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD21A2D4;
    v85 = v70;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD21AC88;
    aBlock[3] = &block_descriptor_28;
    v71 = _Block_copy(aBlock);
    v72 = v85;
    v73 = v69;
    v72, v74, v75, v76, v77, v78, v79, v80;
    [v73 profilePictureForAccountOwnerWithCompletion_];

    _Block_release(v71);
    v9 = v73;
  }

  else
  {
  }
}

uint64_t sub_1BD21A004(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1BD21AB88;
  v28 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_29;
  v14 = _Block_copy(aBlock);
  v15 = v28;
  v16 = a1;
  sub_1BE048964();
  v15, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD21AB90(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v26);
}

void sub_1BD21A2DC(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = a1;
      v6 = UIImagePNGRepresentation(v5);
      if (v6)
      {
        v7 = v6;
        v8 = sub_1BE04AAC4();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0xF000000000000000;
      }

      sub_1BD218070(v8, v10);
    }
  }
}

Swift::Void __swiftcall PeerPaymentIdentityManager.commitUpdatesIfNeeded()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager_service);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 preferences];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 profileAppearance];
      KeyPath = swift_getKeyPath();
      aBlock[0] = v1;
      sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
      sub_1BE04B594();
      KeyPath, v12, v13, v14, v15, v16, v17, v18;
      v19 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
      if (v10 && (v20 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference), sub_1BD0E5E8C(0, &qword_1EBD3DE50, 0x1E69B8FB0), v21 = v20, v22 = sub_1BE053074(), v10, v21, (v22 & 1) != 0))
      {
      }

      else
      {
        v23 = swift_getKeyPath();
        aBlock[0] = v1;
        sub_1BE04B594();
        v23, v24, v25, v26, v27, v28, v29, v30;
        [v9 setProfileAppearance_];
        aBlock[4] = sub_1BD21A6FC;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD21AC88;
        aBlock[3] = &block_descriptor_16_0;
        v31 = _Block_copy(aBlock);
        v32 = v9;
        [v7 setPreferences:v32 completion:v31];

        _Block_release(v31);
      }

      return;
    }
  }

  sub_1BE04D094();
  v33 = sub_1BE04D204();
  v34 = sub_1BE052C34();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1BD026000, v33, v34, "NearbyPeerPayment: unable to update appearance preferences", v35, 2u);
    MEMORY[0x1BFB45F20](v35, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

void sub_1BD21A6FC(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = a2;
    sub_1BE04D094();
    v8 = a2;
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1BE053C74();
      v15 = v14;
      v16 = sub_1BD123690(v13, v14, &v32);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v11 + 4) = v16;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: updating appearance preferences failed with error %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12, v24, v25, v26, v27, v28, v29, v30);
      MEMORY[0x1BFB45F20](v12, -1, -1);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
  }
}

id PeerPaymentIdentityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD21AA5C(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

void sub_1BD21AB28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData) = v2;
  v4 = v2;
}

uint64_t sub_1BD21AB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD21AC38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
  *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) = v2;
  v4 = v2;
}

id sub_1BD21ACB4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_allocWithZone(PKAccountSupportTopicsViewController) initWithAccount_];
  [v3 setSuggestedTopic_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v4;
}

id sub_1BD21AD40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD21AEB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD21AD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD21AF7C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD21ADD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD21AF7C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD21AE34(uint64_t a1)
{
  sub_1BD21AF7C();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD21AE60()
{
  result = qword_1EBD3DE70;
  if (!qword_1EBD3DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DE70);
  }

  return result;
}

id sub_1BD21AEB4(void *a1)
{
  result = [a1 accountIdentifier];
  if (result)
  {
    v2 = result;
    sub_1BE052434();
    v4 = v3;

    v12 = sub_1BE052644();
    sub_1BE052564();
    v4, v5, v6, v7, v8, v9, v10, v11;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD21AF7C()
{
  result = qword_1EBD3DE78;
  if (!qword_1EBD3DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DE78);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CurrencyAmountTextField(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CurrencyAmountTextField(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD21B0CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DE80, &qword_1BE0B1188);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DE88, &qword_1BE0C2D80);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - v10;
  *v11 = sub_1BE04F7B4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DE90, &qword_1BE0C2D88);
  sub_1BD21B718(&v11[*(v12 + 44)]);
  KeyPath = swift_getKeyPath();
  v14 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DE98, &qword_1BE0C2DC0) + 36)];
  *v14 = KeyPath;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = swift_getKeyPath();
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DEA0, &qword_1BE0C2DF8) + 36)];
  *v16 = v15;
  v16[8] = 1;
  v17 = *(v2 + 32);
  v65 = vsubq_f64(xmmword_1BE0C2BD0, *(v2 + 16));
  v64 = vsubq_f64(xmmword_1BE0C2BE0, v17);
  v18 = sub_1BE0501D4();
  v19 = &v11[*(v9 + 44)];
  *v19 = v18;
  *(v19 + 8) = v65;
  *(v19 + 24) = v64;
  v19[40] = 0;
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v11, v7, &qword_1EBD3DE88, &qword_1BE0C2D80);
  v20 = &v7[*(v5 + 44)];
  v21 = v74;
  *(v20 + 4) = v73;
  *(v20 + 5) = v21;
  *(v20 + 6) = v75;
  v22 = v70;
  *v20 = v69;
  *(v20 + 1) = v22;
  v23 = v72;
  *(v20 + 2) = v71;
  *(v20 + 3) = v23;
  sub_1BE0528A4();
  sub_1BD222678(v2, &v67);
  v24 = sub_1BE052894();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = *(v2 + 80);
  *(v25 + 96) = *(v2 + 64);
  *(v25 + 112) = v27;
  *(v25 + 128) = *(v2 + 96);
  *(v25 + 144) = *(v2 + 112);
  v28 = *(v2 + 16);
  *(v25 + 32) = *v2;
  *(v25 + 48) = v28;
  v29 = *(v2 + 48);
  *(v25 + 64) = *(v2 + 32);
  *(v25 + 80) = v29;
  v30 = sub_1BE0528D4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = &v60 - v33;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v63 = sub_1BE04EAA4();
    *&v64.f64[0] = &v60;
    v62 = *(v63 - 8);
    MEMORY[0x1EEE9AC00](v63);
    v61 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_1BE053834();
    v68, v36, v37, v38, v39, v40, v41, v42;
    v67 = 0xD000000000000031;
    v68 = 0x80000001BE11E830;
    v66 = 44;
    v43 = sub_1BE053B24();
    v60 = v7;
    v45 = v44;
    MEMORY[0x1BFB3F610](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    *&v65.f64[0] = &v60;
    v54 = MEMORY[0x1EEE9AC00](v53);
    (*(v31 + 16))(&v60 - v33, &v60 - v33, v30, v54);
    v55 = v61;
    sub_1BE04EA94();
    (*(v31 + 8))(v34, v30);
    sub_1BD0DE204(v60, a1, &qword_1EBD3DE80, &qword_1BE0B1188);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37170, &qword_1BE0B1190);
    return (*(v62 + 32))(a1 + *(v56 + 36), v55, v63);
  }

  else
  {
    v58 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DEB0, &qword_1BE0B1198) + 36));
    v59 = sub_1BE04E7B4();
    (*(v31 + 32))(&v58[*(v59 + 20)], &v60 - v33, v30);
    *v58 = &unk_1BE0C2E08;
    *(v58 + 1) = v25;
    return sub_1BD0DE204(v7, a1, &qword_1EBD3DE80, &qword_1BE0B1188);
  }
}

uint64_t sub_1BD21B718@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF38, &qword_1BE0C2E40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v34 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF40, &qword_1BE0C2E48);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v34 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF48, &qword_1BE0C2E50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v34 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF50, &qword_1BE0C2E58);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v40 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v35 = &v34 - v19;
  sub_1BD21BC10(&v34 - v19);
  sub_1BD21C020(v41);
  sub_1BD21C390();
  sub_1BD21DD2C(&v42);
  sub_1BD21DF7C(v6);
  sub_1BD0DE19C(v6, v3, &qword_1EBD3DF38, &qword_1BE0C2E40);
  v21 = v45[0];
  v46[2] = v44;
  v47[0] = v45[0];
  v22 = *(v45 + 10);
  *(v47 + 10) = *(v45 + 10);
  v24 = v42;
  v23 = v43;
  v46[0] = v42;
  v46[1] = v43;
  v11[2] = v44;
  v11[3] = v21;
  *(v11 + 58) = v22;
  *v11 = v24;
  v11[1] = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF58, &qword_1BE0C2E60);
  sub_1BD0DE19C(v3, v11 + *(v25 + 48), &qword_1EBD3DF38, &qword_1BE0C2E40);
  sub_1BD0DE19C(v46, v51, &qword_1EBD3DF60, &qword_1BE0C2E68);
  sub_1BD0DE53C(v6, &qword_1EBD3DF38, &qword_1BE0C2E40);
  sub_1BD0DE53C(v3, &qword_1EBD3DF38, &qword_1BE0C2E40);
  v48[2] = v44;
  v49[0] = v45[0];
  *(v49 + 10) = *(v45 + 10);
  v48[0] = v42;
  v48[1] = v43;
  sub_1BD0DE53C(v48, &qword_1EBD3DF60, &qword_1BE0C2E68);
  v26 = v40;
  sub_1BD0DE19C(v20, v40, &qword_1EBD3DF50, &qword_1BE0C2E58);
  v28 = v36;
  v27 = v37;
  sub_1BD0DE19C(v36, v37, &qword_1EBD3DF48, &qword_1BE0C2E50);
  v29 = v38;
  sub_1BD0DE19C(v11, v38, &qword_1EBD3DF40, &qword_1BE0C2E48);
  v30 = v39;
  sub_1BD0DE19C(v26, v39, &qword_1EBD3DF50, &qword_1BE0C2E58);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF68, &qword_1BE0C2E70);
  v32 = v31[12];
  memcpy(v50, v41, 0x274uLL);
  memcpy((v30 + v32), v41, 0x274uLL);
  sub_1BD0DE19C(v27, v30 + v31[16], &qword_1EBD3DF48, &qword_1BE0C2E50);
  sub_1BD0DE19C(v29, v30 + v31[20], &qword_1EBD3DF40, &qword_1BE0C2E48);
  sub_1BD0DE19C(v50, v51, &qword_1EBD3DF70, &qword_1BE0C2E78);
  sub_1BD0DE53C(v11, &qword_1EBD3DF40, &qword_1BE0C2E48);
  sub_1BD0DE53C(v28, &qword_1EBD3DF48, &qword_1BE0C2E50);
  sub_1BD0DE53C(v35, &qword_1EBD3DF50, &qword_1BE0C2E58);
  sub_1BD0DE53C(v29, &qword_1EBD3DF40, &qword_1BE0C2E48);
  sub_1BD0DE53C(v27, &qword_1EBD3DF48, &qword_1BE0C2E50);
  memcpy(v51, v41, 0x274uLL);
  sub_1BD0DE53C(v51, &qword_1EBD3DF70, &qword_1BE0C2E78);
  return sub_1BD0DE53C(v40, &qword_1EBD3DF50, &qword_1BE0C2E58);
}

uint64_t sub_1BD21BC10@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_1BE04F6E4();
  v1 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E1F8, &qword_1BE0C3068);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E200, &qword_1BE0C3070);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v27 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  sub_1BD21D038(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E208, &qword_1BE0C3078);
  sub_1BD2238E4();
  sub_1BE050A24();
  memcpy(v33, v32, 0x142uLL);
  sub_1BD0DE53C(v33, &qword_1EBD3E208, &qword_1BE0C3078);
  sub_1BD21D4F8(v32);
  sub_1BE04F6D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF60, &qword_1BE0C2E68);
  sub_1BD223D28();
  sub_1BE050DA4();
  (*(v1 + 8))(v3, v25);
  v34[2] = *&v32[32];
  v35[0] = *&v32[48];
  *(v35 + 10) = *&v32[58];
  v34[0] = *v32;
  v34[1] = *&v32[16];
  sub_1BD0DE53C(v34, &qword_1EBD3DF60, &qword_1BE0C2E68);
  sub_1BD21D7C4(&v28);
  v14 = v27;
  sub_1BD0DE19C(v13, v27, &qword_1EBD3E200, &qword_1BE0C3070);
  v15 = v24;
  sub_1BD0DE19C(v8, v24, &qword_1EBD3E1F8, &qword_1BE0C3068);
  v16 = v26;
  sub_1BD0DE19C(v14, v26, &qword_1EBD3E200, &qword_1BE0C3070);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E298, &qword_1BE0C30B8);
  sub_1BD0DE19C(v15, v16 + *(v17 + 48), &qword_1EBD3E1F8, &qword_1BE0C3068);
  v18 = (v16 + *(v17 + 64));
  v19 = *(v31 + 10);
  *(v37 + 10) = *(v31 + 10);
  v20 = v31[0];
  v36[2] = v30;
  v37[0] = v31[0];
  v22 = v28;
  v21 = v29;
  v36[0] = v28;
  v36[1] = v29;
  v18[2] = v30;
  v18[3] = v20;
  *(v18 + 58) = v19;
  *v18 = v22;
  v18[1] = v21;
  sub_1BD0DE19C(v36, v32, &qword_1EBD3DF60, &qword_1BE0C2E68);
  sub_1BD0DE53C(v8, &qword_1EBD3E1F8, &qword_1BE0C3068);
  sub_1BD0DE53C(v13, &qword_1EBD3E200, &qword_1BE0C3070);
  *&v32[32] = v30;
  *&v32[48] = v31[0];
  *&v32[58] = *(v31 + 10);
  *v32 = v28;
  *&v32[16] = v29;
  sub_1BD0DE53C(v32, &qword_1EBD3DF60, &qword_1BE0C2E68);
  sub_1BD0DE53C(v15, &qword_1EBD3E1F8, &qword_1BE0C3068);
  return sub_1BD0DE53C(v27, &qword_1EBD3E200, &qword_1BE0C3070);
}

void *sub_1BD21C020@<X0>(void *a1@<X8>)
{
  v3 = *(*(v1 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_template);
  if (v3 > 2 || v3 == 0)
  {
    sub_1BD223078(__src);
    memcpy(__dst, __src, 0x274uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0B0, &qword_1BE0C2F78);
    sub_1BD223084();
    sub_1BE04F9A4();
  }

  else
  {
    if (v3 == 1)
    {
      sub_1BD21DBE8(v6);
      memcpy(v8, v6, 0x272uLL);
      sub_1BD2236E4(v8);
      memcpy(v11, v8, 0x273uLL);
      sub_1BD0DE19C(v6, __src, &qword_1EBD3E0C8, &qword_1BE0C2F80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0C8, &qword_1BE0C2F80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0D8, &qword_1BE0C2F88);
      sub_1BD0DE4F4(&qword_1EBD3E0C0, &qword_1EBD3E0C8, &qword_1BE0C2F80, MEMORY[0x1E6981F48]);
      sub_1BD22313C();
      sub_1BE04F9A4();
      memcpy(__src, v7, 0x273uLL);
      sub_1BD2236DC(__src);
      memcpy(v11, __src, 0x274uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0B0, &qword_1BE0C2F78);
      sub_1BD223084();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v6, &qword_1EBD3E0C8, &qword_1BE0C2F80);
    }

    else
    {
      sub_1BD21E918(v6);
      memcpy(v8, v6, 0x19CuLL);
      sub_1BD2236D0(v8);
      memcpy(v11, v8, 0x273uLL);
      sub_1BD0DE19C(v6, __src, &qword_1EBD3E0D8, &qword_1BE0C2F88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0C8, &qword_1BE0C2F80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0D8, &qword_1BE0C2F88);
      sub_1BD0DE4F4(&qword_1EBD3E0C0, &qword_1EBD3E0C8, &qword_1BE0C2F80, MEMORY[0x1E6981F48]);
      sub_1BD22313C();
      sub_1BE04F9A4();
      memcpy(__src, v7, 0x273uLL);
      sub_1BD2236DC(__src);
      memcpy(v11, __src, 0x274uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0B0, &qword_1BE0C2F78);
      sub_1BD223084();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v6, &qword_1EBD3E0D8, &qword_1BE0C2F88);
    }

    memcpy(v11, __dst, 0x274uLL);
  }

  return memcpy(a1, v11, 0x274uLL);
}

uint64_t sub_1BD21C390()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFA0, &qword_1BE0C2E98);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v14 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFA8, &qword_1BE0C2EA0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFB0, &qword_1BE0C2EA8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v14 - v10);
  if ([*(*(v1 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) isInTerminalState])
  {
    goto LABEL_6;
  }

  if (qword_1EBD36BD0 != -1)
  {
    swift_once();
  }

  sub_1BD2220F0(qword_1EBD42EB0, *algn_1EBD42EB8);
  if (!v12)
  {
LABEL_6:
    sub_1BD220980(v4);
    sub_1BD0DE19C(v4, v7, &qword_1EBD3DFA0, &qword_1BE0C2E98);
    swift_storeEnumTagMultiPayload();
    sub_1BD2227A8();
    sub_1BD222B38();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v4, &qword_1EBD3DFA0, &qword_1BE0C2E98);
  }

  else
  {

    sub_1BD2204E4(v11);
    sub_1BD0DE19C(v11, v7, &qword_1EBD3DFB0, &qword_1BE0C2EA8);
    swift_storeEnumTagMultiPayload();
    sub_1BD2227A8();
    sub_1BD222B38();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v11, &qword_1EBD3DFB0, &qword_1BE0C2EA8);
  }
}

uint64_t sub_1BD21C630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a3;
  sub_1BE0528A4();
  v3[10] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD21C6C8, v5, v4);
}

uint64_t sub_1BD21C6C8()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  sub_1BD2217E0(qword_1EBD42EA0, *algn_1EBD42EA8);
  if (v1)
  {
    v9 = v1;
    v10 = [v1 remoteImage];
    if (!v10)
    {
      v16 = v0[10];

      v15 = v16;
      goto LABEL_11;
    }

    v11 = v10;
    PKScreenScale();
    v12 = [v11 imageForScaleFactorValue_];
    v0[13] = v12;

    if (v12)
    {
      v13 = swift_task_alloc();
      v0[14] = v13;
      *v13 = v0;
      v13[1] = sub_1BD21C84C;

      return sub_1BD21CB68(v12);
    }
  }

  v15 = v0[10];
LABEL_11:
  v15, v2, v3, v4, v5, v6, v7, v8;
  v17 = v0[1];

  return v17();
}

uint64_t sub_1BD21C84C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_1BD21CAF4;
  }

  else
  {
    v7 = sub_1BD21C990;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD21C990(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 128);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE052984();
  if (v9)
  {
    v10 = *(v8 + 120);
  }

  else
  {
    v11 = *(v8 + 120);
    v12 = *(*(v8 + 72) + 64);
    *(v8 + 48) = v11;
    v13 = *(v8 + 104);
    *(v8 + 32) = v12;
    *(v8 + 16) = v12;
    sub_1BD0DE19C(v8 + 32, v8 + 56, &unk_1EBD4AB00, &qword_1BE0C85C0);
    sub_1BD0DE19C(v8 + 40, v8 + 64, &qword_1EBD3DEC0, &unk_1BE0C2E20);
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DEC8, &unk_1BE0F1370);
    sub_1BE0516B4();

    sub_1BD0DE53C(v8 + 32, &unk_1EBD4AB00, &qword_1BE0C85C0);
    sub_1BD0DE53C(v8 + 40, &qword_1EBD3DEC0, &unk_1BE0C2E20);
  }

  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_1BD21CAF4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 128);
  v10 = *(v8 + 104);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1BD21CB68(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_1BE0528A4();
  v2[21] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD21CC00, v4, v3);
}

uint64_t sub_1BD21CC00(uint64_t a1)
{
  sub_1BE052984();
  v1[24] = 0;
  v2 = v1[19];
  v3 = *(v1[20] + 112);
  v4 = sub_1BD36B104();
  v6 = v5;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1BD21CDB0;
  v7 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DED0, &unk_1BE0C2E30);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1BD1F07A8;
  v1[13] = &block_descriptor_29;
  v1[14] = v7;
  [v3 fetchRemoteImage:v2 scaleToSize:1 preheatBitmap:v1 + 10 completion:{v4, v6}];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1BD21CDB0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1BD21CEB8, v2, v1);
}

id sub_1BD21CEB8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 144);
  if (v9)
  {
    v10 = *(v8 + 192);
    sub_1BE052984();
    if (v10)
    {
      v11 = *(v8 + 168);

      v11, v12, v13, v14, v15, v16, v17, v18;
      v19 = *(v8 + 8);

      return v19();
    }

    result = [v9 imageRef];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v29 = result;
    *(v8 + 168), v22, v23, v24, v25, v26, v27, v28;
    v30 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    v21 = v30;
  }

  else
  {
    *(v8 + 168), a2, a3, a4, a5, a6, a7, a8;
    v21 = 0;
  }

  v31 = *(v8 + 8);

  return v31(v21);
}

void *sub_1BD21D038@<X0>(void *a1@<X8>)
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  sub_1BD2217E0(qword_1EBD42EA0, *algn_1EBD42EA8);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 remoteImage];
    if (v5)
    {
      v6 = v5;
      PKScreenScale();
      v7 = [v6 imageForScaleFactorValue_];

      if (v7)
      {
        sub_1BD21F154(v1, v41);
        v8 = v7;
        [v8 width];
        v10 = v9;
        if (PKRemoteImageDimensionIsMaximum())
        {
          v11 = 0;
          v12 = 1;
        }

        else
        {
          IsAutomatic = PKRemoteImageDimensionIsAutomatic();
          v12 = IsAutomatic;
          if (IsAutomatic)
          {
            v11 = 1;
          }

          else
          {
            v11 = v10;
          }
        }

        [v8 height];
        v15 = v14;
        if (PKRemoteImageDimensionIsMaximum())
        {
          if (v12)
          {
LABEL_15:
            v34 = 0;
            v35 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 1;
            LOBYTE(v45[0]) = 1;
            __src[0] = 1;
            LOBYTE(__dst[0]) = 0;
            LOBYTE(v38[0]) = 0;
            v36 = 0x4072C00000000000;
            v37 = 0x7FF0000000000000;
            v19 = 1;
LABEL_26:
            v38[6] = v41[6];
            v38[7] = v42[0];
            *(&v38[7] + 9) = *(v42 + 9);
            v38[2] = v41[2];
            v38[3] = v41[3];
            v38[4] = v41[4];
            v38[5] = v41[5];
            v38[0] = v41[0];
            v38[1] = v41[1];
            v22 = sub_1BD36A9B4();
            v23 = [objc_opt_self() systemGrayColor];
            v24 = sub_1BE0511C4();
            v25 = PKUIPixelLength();
            v26 = sub_1BD36AABC();
            v27 = sub_1BE0501F4();
            sub_1BE04E1F4();
            v39 = 0;
            *(&v38[9] + 8) = vdupq_n_s64(0x4046800000000000uLL);
            *(&v38[10] + 8) = xmmword_1BE0C2BF0;
            *&v38[9] = v8;
            *(&v38[11] + 1) = v34;
            LOBYTE(v38[12]) = v18;
            *(&v38[12] + 1) = v35;
            LOBYTE(v38[13]) = v19;
            *(&v38[13] + 1) = v37;
            LOBYTE(v38[14]) = v16;
            *(&v38[14] + 1) = v36;
            LOBYTE(v38[15]) = v17;
            BYTE8(v38[15]) = v22 & 1;
            *&v38[16] = v24;
            *(&v38[16] + 1) = v25;
            *&v38[17] = v26;
            BYTE8(v38[17]) = v27;
            *(&v38[17] + 9) = *v40;
            HIDWORD(v38[17]) = *&v40[3];
            *&v38[18] = v28;
            *(&v38[18] + 1) = v29;
            *&v38[19] = v30;
            *(&v38[19] + 1) = v31;
            LOBYTE(v38[20]) = 0;
            memcpy(__src, v38, 0x141uLL);
            sub_1BD223E78(__src);
            memcpy(v45, __src, 0x142uLL);
            sub_1BD0DE19C(v38, __dst, &qword_1EBD3E220, &qword_1BE0C3080);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E220, &qword_1BE0C3080);
            sub_1BD223970();
            sub_1BE04F9A4();

            sub_1BD0DE53C(v38, &qword_1EBD3E220, &qword_1BE0C3080);
            memcpy(v45, __dst, 0x142uLL);
            return memcpy(a1, v45, 0x142uLL);
          }
        }

        else
        {
          v20 = PKRemoteImageDimensionIsAutomatic();
          if (v12)
          {
            if (v11)
            {
              if (v20)
              {
                v18 = 0;
                v19 = 0;
                v36 = 0;
                v37 = 0;
                LOBYTE(v45[0]) = 0;
                v34 = 0x4046800000000000;
                v35 = 0x4046800000000000;
                __src[0] = 0;
                v16 = 1;
                LOBYTE(__dst[0]) = 1;
                LOBYTE(v38[0]) = 1;
                v17 = 1;
                goto LABEL_26;
              }
            }

            else if (v20)
            {
              goto LABEL_15;
            }

            v34 = 0;
            v19 = 0;
            v36 = 0;
            v37 = 0;
            v33 = 300.0;
            v18 = 1;
            LOBYTE(v45[0]) = 1;
            __src[0] = 0;
            if (v15 <= 300.0)
            {
              v33 = v15;
            }

            v35 = *&v33;
            LOBYTE(__dst[0]) = 1;
            LOBYTE(v38[0]) = 1;
            v16 = 1;
            v17 = 1;
            goto LABEL_26;
          }

          if ((v20 & 1) == 0)
          {
            v18 = 0;
            v19 = 0;
            v36 = 0;
            v37 = 0;
            v21 = 300.0;
            if (v15 <= 300.0)
            {
              v21 = v15;
            }

            v35 = *&v21;
            LOBYTE(v45[0]) = 0;
            __src[0] = 0;
            v16 = 1;
            LOBYTE(__dst[0]) = 1;
            LOBYTE(v38[0]) = 1;
            goto LABEL_25;
          }
        }

        v18 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        LOBYTE(v45[0]) = 0;
        v19 = 1;
        __src[0] = 1;
        LOBYTE(__dst[0]) = 1;
        LOBYTE(v38[0]) = 1;
        v16 = 1;
LABEL_25:
        v17 = 1;
        v34 = v11;
        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  sub_1BD223E6C(__src);
  memcpy(__dst, __src, 0x142uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E220, &qword_1BE0C3080);
  sub_1BD223970();
  sub_1BE04F9A4();
  return memcpy(a1, v45, 0x142uLL);
}

__n128 sub_1BD21D4F8@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36BB8 != -1)
  {
    swift_once();
  }

  sub_1BD221C68(qword_1EBD42E80, *algn_1EBD42E88);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1BD21F554(v3);
  if (!v7)
  {

LABEL_7:
    LOBYTE(v51) = 1;
    v57[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BE04F9A4();
    goto LABEL_8;
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = sub_1BE0503E4();
  v13 = sub_1BE050334();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v50 = (v10 & 1);
  v21 = sub_1BE0505F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v13, v22, v24, v26, v28, v29, v30, v31;
  LOBYTE(v13) = sub_1BE0501F4();
  sub_1BE04E1F4();
  LOBYTE(v56[0]) = 0;
  *&v51 = v21;
  *(&v51 + 1) = v23;
  v52.n128_u8[0] = v25 & 1;
  v52.n128_u64[1] = v27;
  LOBYTE(v53) = v13;
  *(&v53 + 1) = v32;
  *v54 = v33;
  *&v54[8] = v34;
  *&v54[16] = v35;
  v54[24] = 0;
  v60 = v53;
  *v61 = *v54;
  *&v61[9] = *&v54[9];
  v58 = v51;
  v59 = v52;
  v55 = 0;
  v61[25] = 0;
  sub_1BD0DE19C(&v51, v56, &unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BD0DE19C(&v51, v56, &unk_1EBD3DF90, &qword_1BE0C2E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BE04F9A4();
  sub_1BD0DDF10(v8, v9, v50, v36, v37, v38, v39, v40);
  v11, v41, v42, v43, v44, v45, v46, v47;
  sub_1BD0DE53C(&v51, &unk_1EBD3DF90, &qword_1BE0C2E90);

  sub_1BD0DE53C(&v51, &unk_1EBD3DF90, &qword_1BE0C2E90);
  v60 = v56[2];
  *v61 = *v57;
  *&v61[10] = *&v57[10];
  v58 = v56[0];
  v59 = v56[1];
LABEL_8:
  v48 = *v61;
  *(a1 + 32) = v60;
  *(a1 + 48) = v48;
  *(a1 + 58) = *&v61[10];
  result = v59;
  *a1 = v58;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1BD21D7C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE050404();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBD36BC0 != -1)
  {
    swift_once();
  }

  sub_1BD221C68(qword_1EBD42E90, *algn_1EBD42E98);
  if (!v6)
  {
    goto LABEL_7;
  }

  v78 = v6;
  v7 = sub_1BD21F554(v78);
  if (!v10)
  {

LABEL_7:
    LOBYTE(v80) = 1;
    BYTE9(v86[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BE04F9A4();
    goto LABEL_8;
  }

  v74 = v8;
  v75 = v10;
  v73 = v7;
  v77 = v9;
  v11 = sub_1BE0502A4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  v12 = sub_1BE050434();
  v11, v13, v14, v15, v16, v17, v18, v19;
  (*(v3 + 8))(v5, v2);
  v76 = (v77 & 1);
  LOBYTE(v87) = v77 & 1;
  v20 = sub_1BE0505F4();
  v22 = v21;
  LOBYTE(v11) = v23;
  v77 = a1;
  v25 = v24;
  v12, v21, v23, v24, v26, v27, v28, v29;
  v30 = sub_1BE051234();
  v31 = sub_1BE050564();
  v33 = v32;
  v35 = v34;
  v72 = v36;
  v30, v32, v34, v36, v37, v38, v39, v40;
  sub_1BD0DDF10(v20, v22, (v11 & 1), v41, v42, v43, v44, v45);
  v46 = v25;
  a1 = v77;
  v46, v47, v48, v49, v50, v51, v52, v53;
  LOBYTE(v30) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v79 = 0;
  *&v80 = v31;
  *(&v80 + 1) = v33;
  v81.n128_u8[0] = v35 & 1;
  *(v81.n128_u32 + 1) = v87;
  v81.n128_u32[1] = *(&v87 + 3);
  v81.n128_u64[1] = v72;
  LOBYTE(v82) = v30;
  DWORD1(v82) = *(v85 + 3);
  *(&v82 + 1) = v85[0];
  *(&v82 + 1) = v54;
  *&v83[0] = v55;
  *(&v83[0] + 1) = v56;
  *&v83[1] = v57;
  BYTE8(v83[1]) = 0;
  v89 = v82;
  *v90 = v83[0];
  *&v90[9] = *(v83 + 9);
  v87 = v80;
  v88 = v81;
  v84 = 0;
  v90[25] = 0;
  sub_1BD0DE19C(&v80, v85, &unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BD0DE19C(&v80, v85, &unk_1EBD3DF90, &qword_1BE0C2E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BE04F9A4();
  sub_1BD0DDF10(v73, v74, v76, v58, v59, v60, v61, v62);
  v75, v63, v64, v65, v66, v67, v68, v69;
  sub_1BD0DE53C(&v80, &unk_1EBD3DF90, &qword_1BE0C2E90);

  sub_1BD0DE53C(&v80, &unk_1EBD3DF90, &qword_1BE0C2E90);
  v89 = v85[2];
  *v90 = v86[0];
  *&v90[10] = *(v86 + 10);
  v87 = v85[0];
  v88 = v85[1];
LABEL_8:
  v70 = *v90;
  *(a1 + 32) = v89;
  *(a1 + 48) = v70;
  *(a1 + 58) = *&v90[10];
  result = v88;
  *a1 = v87;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD21DBE8@<X0>(void *a1@<X8>)
{
  sub_1BD21E2BC(__src);
  sub_1BD21E670(&v4);
  memcpy(__dst, __src, 0x222uLL);
  memcpy(v3, __src, 0x222uLL);
  v10[1] = v5;
  v10[2] = v6;
  v11[0] = v7[0];
  *(v11 + 10) = *(v7 + 10);
  v10[0] = v4;
  *&v3[73] = v6;
  *&v3[75] = v7[0];
  *(&v3[76] + 2) = *(v7 + 10);
  *&v3[69] = v4;
  *&v3[71] = v5;
  memcpy(a1, v3, 0x272uLL);
  v12[2] = v6;
  v13[0] = v7[0];
  *(v13 + 10) = *(v7 + 10);
  v12[0] = v4;
  v12[1] = v5;
  sub_1BD0DE19C(__dst, v14, &qword_1EBD3E180, &qword_1BE0C2FE0);
  sub_1BD0DE19C(v10, v14, &qword_1EBD3DF60, &qword_1BE0C2E68);
  sub_1BD0DE53C(v12, &qword_1EBD3DF60, &qword_1BE0C2E68);
  memcpy(v14, __src, 0x222uLL);
  return sub_1BD0DE53C(v14, &qword_1EBD3E180, &qword_1BE0C2FE0);
}

__n128 sub_1BD21DD2C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE050404();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD36ABF8();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE0502A4();
    (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
    v9 = sub_1BE050434();
    v8, v10, v11, v12, v13, v14, v15, v16;
    (*(v3 + 8))(v5, v2);
    v17 = sub_1BE050334();
    v9, v18, v19, v20, v21, v22, v23, v24;
    v25 = sub_1BE0505F4();
    v27 = v26;
    LOBYTE(v8) = v28;
    v30 = v29;
    v7, v26, v28, v29, v31, v32, v33, v34;
    v17, v35, v36, v37, v38, v39, v40, v41;
    LOBYTE(v7) = sub_1BE0501F4();
    sub_1BE04E1F4();
    LOBYTE(v58) = v8 & 1;
    v57 = 0;
    v48[2] = v25;
    v48[3] = v27;
    v49 = v8 & 1;
    v50 = v30;
    v51 = v7;
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v56 = 0;
  }

  else
  {
    v57 = 1;
    HIBYTE(v56) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BE04F9A4();
  v46 = v61[0];
  *(a1 + 32) = v60;
  *(a1 + 48) = v46;
  *(a1 + 58) = *(v61 + 10);
  result = v59;
  *a1 = v58;
  *(a1 + 16) = result;
  return result;
}

void *sub_1BD21DF7C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF78, &unk_1BE0C2E80);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-v9 - 8];
  if (qword_1EBD36BE0 != -1)
  {
    swift_once();
  }

  sub_1BD2220F0(qword_1EBD42ED0, *algn_1EBD42ED8);
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v20 = a1;
    v14 = *(v2 + 80);
    *(v13 + 80) = *(v2 + 64);
    *(v13 + 96) = v14;
    *(v13 + 112) = *(v2 + 96);
    v15 = *(v2 + 112);
    v16 = *(v2 + 16);
    *(v13 + 16) = *v2;
    *(v13 + 32) = v16;
    v17 = *(v2 + 48);
    *(v13 + 48) = *(v2 + 32);
    *(v13 + 64) = v17;
    *(v13 + 128) = v15;
    *(v13 + 136) = v12;
    MEMORY[0x1EEE9AC00](v13);
    *(&v20 - 2) = v12;
    sub_1BD222678(v2, v21);
    v18 = v12;
    sub_1BE051704();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BE04F9A4();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    return sub_1BE04F9A4();
  }
}

void *sub_1BD21E2BC@<X0>(void *a1@<X8>)
{
  v2 = sub_1BD36BFB4();
  if (v2 && (v3 = v2, v4 = sub_1BD36C0FC(), v6 = v5, v3, (v6 & 1) == 0))
  {
    v7 = PKRewardsHubPurpleColor();
    v48 = sub_1BE0511C4();
    v8 = PKRewardsHubPurpleColor();
    v47 = sub_1BE0511C4();
    v9 = PKRewardsHubIncompleteProgressGrayColor();
    v46 = sub_1BE0511C4();
    v45 = sub_1BE051CD4();
    v11 = v10;
    sub_1BD2212EC(__src, *&v4);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v50, __src, 0x118uLL);
    sub_1BD0DE19C(__dst, v57, &qword_1EBD3E1C8, &qword_1BE0C3008);
    sub_1BD0DE53C(v50, &qword_1EBD3E1C8, &qword_1BE0C3008);
    memcpy(v55, __dst, sizeof(v55));
    v12 = sub_1BE0513F4();
    v13 = sub_1BE051454();
    v12, v14, v15, v16, v17, v18, v19, v20;
    v21 = PKUIScreenScale();
    *v57 = 0;
    v44 = 4.4 / v21;
    sub_1BE051694();
    v43 = __src[0];
    v22 = __src[1];
    *v57 = 0;
    sub_1BE051694();
    v42 = __src[0];
    v23 = __src[1];
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LOBYTE(v12) = sub_1BE0501C4();
    sub_1BE04E1F4();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    LOBYTE(__src[0]) = 0;
    v32 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    *v57 = v4;
    *&v57[8] = v48;
    *&v57[16] = v47;
    *&v57[24] = v46;
    *&v57[32] = xmmword_1BE0C2C00;
    *&v57[48] = v45;
    *&v57[56] = v11;
    memcpy(&v57[64], v55, 0x118uLL);
    *&v57[344] = v13;
    *&v57[352] = v44;
    *&v57[368] = 0;
    *&v57[360] = 0;
    *&v57[376] = v43;
    *&v57[384] = v22;
    *&v57[392] = v42;
    *&v57[400] = v23;
    *&v57[408] = v54[0];
    *&v57[424] = v54[1];
    *&v57[440] = v54[2];
    v57[456] = v12;
    *&v57[457] = *v53;
    *&v57[460] = *&v53[3];
    *&v57[464] = v25;
    *&v57[472] = v27;
    *&v57[480] = v29;
    *&v57[488] = v31;
    v57[496] = 0;
    *&v57[497] = *v52;
    *&v57[500] = *&v52[3];
    v57[504] = v32;
    *&v57[505] = *v51;
    *&v57[508] = *&v51[3];
    *&v57[512] = v34;
    *&v57[520] = v36;
    *&v57[528] = v38;
    *&v57[536] = v40;
    v57[544] = 0;
    sub_1BD2238C8(v57);
  }

  else
  {
    sub_1BD2236EC(v57);
  }

  memcpy(v56, v57, sizeof(v56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E188, &qword_1BE0C2FE8);
  sub_1BD2236F8();
  sub_1BE04F9A4();
  return memcpy(a1, __src, 0x222uLL);
}

__n128 sub_1BD21E670@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE050404();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD36AEE0();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE050424();
    (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
    v9 = sub_1BE050434();
    v8, v10, v11, v12, v13, v14, v15, v16;
    (*(v3 + 8))(v5, v2);
    v17 = sub_1BE0505F4();
    v19 = v18;
    LOBYTE(v8) = v20;
    v22 = v21;
    v7, v18, v20, v21, v23, v24, v25, v26;
    v9, v27, v28, v29, v30, v31, v32, v33;
    v34 = [objc_opt_self() labelColor];
    v35 = sub_1BE0511C4();
    v36 = sub_1BE050564();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v35, v37, v39, v41, v43, v44, v45, v46;
    sub_1BD0DDF10(v17, v19, (v8 & 1), v47, v48, v49, v50, v51);
    v22, v52, v53, v54, v55, v56, v57, v58;
    LOBYTE(v22) = sub_1BE0501F4();
    sub_1BE04E1F4();
    LOBYTE(v75) = v40 & 1;
    v74 = 0;
    v65[3] = v36;
    v65[4] = v38;
    v66 = v40 & 1;
    v67 = v42;
    v68 = v22;
    v69 = v59;
    v70 = v60;
    v71 = v61;
    v72 = v62;
    v73 = 0;
  }

  else
  {
    v74 = 1;
    HIBYTE(v73) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BE04F9A4();
  v63 = v78[0];
  *(a1 + 32) = v77;
  *(a1 + 48) = v63;
  *(a1 + 58) = *(v78 + 10);
  result = v76;
  *a1 = v75;
  *(a1 + 16) = result;
  return result;
}

id sub_1BD21E918@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BD36BFB4();
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v72 = a1;
  if ([v11 progressType] != 1 || (v13 = objc_msgSend(v12, sel_currentValue)) == 0)
  {
    v14 = v12;
LABEL_14:

    a1 = v72;
LABEL_15:
    sub_1BD2238D0(v90);
LABEL_16:
    memcpy(v89, v90, sizeof(v89));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0E8, &qword_1BE0C2F90);
    sub_1BD2231C8();
    sub_1BE04F9A4();
    return memcpy(a1, v95, 0x19CuLL);
  }

  v14 = v13;
  v15 = [v12 currencyCode];
  if (!v15)
  {

    goto LABEL_14;
  }

  v16 = v15;
  v17 = PKCurrencyAmountMake();

  a1 = v72;
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = [v17 formattedStringValue];

  if (!v18)
  {
    goto LABEL_15;
  }

  v69 = sub_1BE052434();
  v20 = v19;

  (*(v8 + 104))(v10, *MEMORY[0x1E69B80B0], v7);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    sub_1BE04B6E4();
    v24 = v23;

    (*(v8 + 8))(v10, v7);
    sub_1BD21FC70(v20, v24, v95);
    v24, v25, v26, v27, v28, v29, v30, v31;
    v20, v32, v33, v34, v35, v36, v37, v38;
    v81 = v95[4];
    v82[0] = v95[5];
    *(v82 + 9) = *(&v95[5] + 9);
    v77 = v95[0];
    v78 = v95[1];
    v79 = v95[2];
    v80 = v95[3];
    v39 = sub_1BE0501C4();
    if (qword_1EBD37098 != -1)
    {
      swift_once();
    }

    sub_1BE04E1F4();
    v69 = v40;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v87 = v81;
    v88[0] = v82[0];
    *(v88 + 9) = *(v82 + 9);
    v83 = v77;
    v84 = v78;
    v85 = v79;
    v86 = v80;
    v73 = 0;
    v47 = sub_1BE050234();
    v48 = *(v2 + 80);
    v93 = v48;
    v94 = *(v2 + 88);
    if (v94 == 1)
    {
      a1 = v72;
      if (v48)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v49 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v93, &qword_1EBD5C6E0, &qword_1BE0C3590);
      (*(v70 + 8))(v6, v71);
      a1 = v72;
      if (v95[0])
      {
LABEL_21:
        sub_1BE04E1F4();
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v74 = 0;
        if (qword_1EBD370A0 != -1)
        {
          swift_once();
        }

        sub_1BE051CD4();
        sub_1BE04EE54();
        *&v75[55] = v90[29];
        *&v75[71] = v90[30];
        *&v75[87] = v90[31];
        *&v75[103] = v90[32];
        *&v75[7] = v90[26];
        *&v75[23] = v90[27];
        *&v75[39] = v90[28];
        v59 = [objc_opt_self() systemGroupedBackgroundColor];
        v60 = sub_1BE0511C4();
        v61 = sub_1BE0501D4();
        if (qword_1EBD370A8 != -1)
        {
          swift_once();
        }

        v62 = qword_1EBDAB940;
        v63 = sub_1BE051214();
        v64 = sub_1BE0501F4();
        sub_1BE04E1F4();
        v76 = 0;
        v90[4] = v87;
        v90[5] = v88[0];
        v90[6] = v88[1];
        v90[0] = v83;
        v90[1] = v84;
        v90[2] = v85;
        v90[3] = v86;
        LOBYTE(v90[7]) = v39;
        *(&v90[7] + 1) = v69;
        *&v90[8] = v42;
        *(&v90[8] + 1) = v44;
        *&v90[9] = v46;
        BYTE8(v90[9]) = 0;
        LOBYTE(v90[10]) = v47;
        *(&v90[10] + 1) = v52;
        *&v90[11] = v54;
        *(&v90[11] + 1) = v56;
        *&v90[12] = v58;
        BYTE8(v90[12]) = 0;
        *(&v90[17] + 9) = *&v75[80];
        *(&v90[18] + 9) = *&v75[96];
        *(&v90[16] + 9) = *&v75[64];
        *(&v90[15] + 9) = *&v75[48];
        *(&v90[14] + 9) = *&v75[32];
        *(&v90[13] + 9) = *&v75[16];
        *(&v90[12] + 9) = *v75;
        *(&v90[19] + 1) = *&v75[111];
        *&v90[20] = v60;
        BYTE8(v90[20]) = v61;
        LOBYTE(v90[21]) = 0;
        *(&v90[21] + 1) = v63;
        *&v90[22] = 0x3FF0000000000000;
        *(&v90[22] + 1) = v62;
        LOBYTE(v90[23]) = v64;
        *(&v90[23] + 1) = v65;
        *&v90[24] = v66;
        *(&v90[24] + 1) = v67;
        *&v90[25] = v68;
        BYTE8(v90[25]) = 0;
        *(&v90[25] + 9) = 256;
        sub_1BD2238DC(v90);
        goto LABEL_16;
      }
    }

    v92 = *(v2 + 104);
    v91 = *(v2 + 96);
    if (v92 != 1)
    {
      sub_1BE048964();
      sub_1BE052C44();
      v50 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v91, &qword_1EBD5C6E0, &qword_1BE0C3590);
      (*(v70 + 8))(v6, v71);
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

__n128 sub_1BD21F154@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DEC8, &unk_1BE0F1370);
  sub_1BE0516A4();
  if (v34)
  {
    v21 = v34;
    v8 = sub_1BE051544();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v9 = sub_1BE0515E4();
    v8, v10, v11, v12, v13, v14, v15, v16;
    (*(v5 + 8))(v7, v4);
    sub_1BE051CD4();
    sub_1BE04EE54();
    *&v24[54] = v41[5];
    *&v24[70] = v41[6];
    *&v24[86] = v41[7];
    *&v24[102] = v42;
    *&v24[6] = v41[2];
    v25 = 1;
    *&v24[22] = v41[3];
    *&v24[38] = v41[4];
    v22[0] = v9;
    v22[1] = 0;
    *v23 = 1;
    *&v23[66] = *&v24[64];
    *&v23[82] = *&v24[80];
    *&v23[98] = *&v24[96];
    *&v23[112] = *(&v42 + 1);
    *&v23[2] = *v24;
    *&v23[18] = *&v24[16];
    *&v23[34] = *&v24[32];
    *&v23[50] = *&v24[48];
    *&v41[1] = *(&v42 + 1);
    v40 = *&v23[80];
    v41[0] = *&v23[96];
    v38 = *&v23[48];
    v39 = *&v23[64];
    v36 = *&v23[16];
    v37 = *&v23[32];
    v34 = v9;
    v35 = *v23;
    sub_1BD223E8C(&v34);
    v48 = v39;
    v49 = v40;
    v50[0] = v41[0];
    *(v50 + 9) = *(v41 + 9);
    v45 = v36;
    v46 = v37;
    v47 = v38;
    v43 = v34;
    v44 = v35;
    sub_1BD0DE19C(v22, &v26, &qword_1EBD3E270, &unk_1BE10CE50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E270, &unk_1BE10CE50);
    sub_1BD223BC4();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v22, &qword_1EBD3E270, &unk_1BE10CE50);
    v49 = v32;
    v50[0] = v33[0];
    *(v50 + 9) = *(v33 + 9);
    v45 = v28;
    v46 = v29;
    v47 = v30;
    v48 = v31;
    v43 = v26;
    v44 = v27;
  }

  else
  {
    *&v34 = sub_1BE0512C4();
    sub_1BD223E80(&v34);
    v31 = v39;
    v32 = v40;
    v33[0] = v41[0];
    *(v33 + 9) = *(v41 + 9);
    v27 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    v26 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E270, &unk_1BE10CE50);
    sub_1BD223BC4();
    sub_1BE04F9A4();
  }

  v17 = v50[0];
  *(a2 + 96) = v49;
  *(a2 + 112) = v17;
  *(a2 + 121) = *(v50 + 9);
  v18 = v46;
  *(a2 + 32) = v45;
  *(a2 + 48) = v18;
  v19 = v48;
  *(a2 + 64) = v47;
  *(a2 + 80) = v19;
  result = v44;
  *a2 = v43;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BD21F554(void *a1)
{
  v2 = sub_1BE04A564();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04A574();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04A594();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0, &qword_1BE0BEB50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_1BE04A5B4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v36 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v37 = &v36 - v21;
  v42 = a1;
  v22 = [a1 markdownText];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BE052434();
    v38 = v25;
    v39 = v24;

    v26 = sub_1BE04AA64();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    (*(v40 + 104))(v8, *MEMORY[0x1E6968750], v41);
    (*(v3 + 104))(v5, *MEMORY[0x1E6968728], v2);
    sub_1BE04A584();
    sub_1BE04A5A4();
    (*(v17 + 56))(v15, 0, 1, v16);
    v33 = v37;
    (*(v17 + 32))(v37, v15, v16);
    (*(v17 + 16))(v36, v33, v16);
    v34 = sub_1BE0506A4();

    (*(v17 + 8))(v33, v16);
  }

  else
  {
    v27 = v42;
    v28 = [v42 displayText];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1BE052434();
      v32 = v31;

      v43 = v30;
      v44 = v32;
      sub_1BD0DDEBC();
      v34 = sub_1BE0506C4();
    }

    else
    {

      return 0;
    }
  }

  return v34;
}

void sub_1BD21FA68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE050404();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 displayText];
  sub_1BE052434();
  v11 = v10;

  v12 = sub_1BE050424();
  (*(v5 + 104))(v8, *MEMORY[0x1E6980EA8], v4);
  v13 = sub_1BE050434();
  v12, v14, v15, v16, v17, v18, v19, v20;
  (*(v5 + 8))(v8, v4);
  v21 = sub_1BE0505F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v11, v22, v24, v26, v28, v29, v30, v31;
  v13, v32, v33, v34, v35, v36, v37, v38;
  v39 = [objc_opt_self() systemBlueColor];
  v40 = sub_1BE0511C4();
  v41 = sub_1BE050564();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v40, v42, v44, v46, v48, v49, v50, v51;
  sub_1BD0DDF10(v21, v23, (v25 & 1), v52, v53, v54, v55, v56);
  v27, v57, v58, v59, v60, v61, v62, v63;
  *a2 = v41;
  *(a2 + 8) = v43;
  *(a2 + 16) = v45 & 1;
  *(a2 + 24) = v47;
}

__n128 sub_1BD21FC70@<Q0>(void *a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1BE04F3D4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(v5 + 88);
  v12 = *(v5 + 80);
  v54 = v12;
  v30 = v14;
  v31 = v13;
  if (v55 == 1)
  {
    v51 = v12 & 1;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v15 = sub_1BE050174();
    v29 = a5;
    v16 = a4;
    v17 = a2;
    v18 = v15;
    sub_1BE04CF84();

    a2 = v17;
    a4 = v16;
    a5 = v29;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v54, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v30 + 8))(v11, v31);
    if (v51)
    {
      goto LABEL_9;
    }
  }

  v53 = *(v5 + 104);
  v19 = *(v5 + 96);
  v52 = v19;
  if (v53 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v21 = a4;
    v22 = a2;
    v23 = sub_1BE050174();
    sub_1BE04CF84();

    a2 = v22;
    a4 = v21;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v52, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v30 + 8))(v11, v31);
    if (v33 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v24 = sub_1BE04F7B4();
    LOBYTE(v33) = 0;
    sub_1BD220158(a4, a2, &v44);
    *&v32[55] = v47;
    *&v32[39] = v46;
    *&v32[23] = v45;
    *&v32[7] = v44;
    *&v34[17] = *&v32[16];
    *&v34[33] = *&v32[32];
    *&v34[49] = *&v32[48];
    v25 = v33;
    LOBYTE(v39) = 0;
    v33 = v24;
    v34[0] = v25;
    *&v34[64] = *(&v47 + 1);
    *&v34[1] = *v32;
    v35 = 0;
    goto LABEL_10;
  }

  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = sub_1BE04F504();
  v38 = 0;
  sub_1BD220314(a4, a2, &v33);
  v41 = *&v34[16];
  v42 = *&v34[32];
  v39 = v33;
  v40 = *v34;
  v45 = *v34;
  v46 = *&v34[16];
  v47 = *&v34[32];
  v48 = *&v34[48];
  v43 = *&v34[48];
  v44 = v33;
  sub_1BD0DE19C(&v39, v36, &qword_1EBD3E1F0, &qword_1BE0C3060);
  sub_1BD0DE53C(&v44, &qword_1EBD3E1F0, &qword_1BE0C3060);
  *&v37[71] = v43;
  *&v37[55] = v42;
  *&v37[39] = v41;
  *&v37[23] = v40;
  *&v37[7] = v39;
  *&v34[33] = *&v37[32];
  *&v34[49] = *&v37[48];
  *&v34[65] = *&v37[64];
  *&v34[17] = *&v37[16];
  v36[0] = 1;
  v33 = v20;
  v34[0] = v38;
  *&v34[80] = *(&v43 + 1);
  *&v34[1] = *v37;
  v35 = 1;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B890, &unk_1BE0C2FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3D0, &qword_1BE0DA410);
  sub_1BD0DE4F4(&unk_1EBD3E160, &qword_1EBD3B890, &unk_1BE0C2FD0, MEMORY[0x1E6981870]);
  sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0, &qword_1BE0DA410, MEMORY[0x1E69817F8]);
  sub_1BE04F9A4();
  result = v49[3];
  v27 = *v50;
  *(a5 + 64) = v49[4];
  *(a5 + 80) = v27;
  *(a5 + 89) = *&v50[9];
  v28 = v49[1];
  *a5 = v49[0];
  *(a5 + 16) = v28;
  *(a5 + 32) = v49[2];
  *(a5 + 48) = result;
  return result;
}

void sub_1BD220158(void *a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE048C84();
  v8 = sub_1BE0502A4();
  v87 = sub_1BE0505F4();
  v88 = v9;
  v11 = v10;
  v86 = v12;
  a2, v10, v12, v9, v13, v14, v15, v16;
  v8, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE048C84();
  v24 = sub_1BE0502A4();
  v25 = sub_1BE0505F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  a4, v26, v28, v30, v32, v33, v34, v35;
  v24, v36, v37, v38, v39, v40, v41, v42;
  v43 = sub_1BE0505D4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1BD0DDF10(v25, v27, (v29 & 1), v48, v50, v51, v52, v53);
  v31, v54, v55, v56, v57, v58, v59, v60;
  v61 = (v47 & 1);
  *a5 = v87;
  *(a5 + 8) = v11;
  *(a5 + 16) = v86 & 1;
  *(a5 + 24) = v88;
  *(a5 + 32) = v43;
  *(a5 + 40) = v45;
  *(a5 + 48) = v61;
  *(a5 + 56) = v49;
  sub_1BD0D7F18(v87, v11, v86 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v43, v45, v61);
  sub_1BE048C84();
  sub_1BD0DDF10(v43, v45, v61, v62, v63, v64, v65, v66);
  v49, v67, v68, v69, v70, v71, v72, v73;
  sub_1BD0DDF10(v87, v11, (v86 & 1), v74, v75, v76, v77, v78);

  v88, v79, v80, v81, v82, v83, v84, v85;
}

void sub_1BD220314(void *a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE048C84();
  v8 = sub_1BE0502A4();
  v88 = sub_1BE0505F4();
  v89 = v9;
  v11 = v10;
  v87 = v12;
  a2, v10, v12, v9, v13, v14, v15, v16;
  v8, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE048C84();
  v24 = sub_1BE0502A4();
  v25 = sub_1BE0505F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  a4, v26, v28, v30, v32, v33, v34, v35;
  v24, v36, v37, v38, v39, v40, v41, v42;
  v43 = sub_1BE0505D4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1BD0DDF10(v25, v27, (v29 & 1), v48, v50, v51, v52, v53);
  v31, v54, v55, v56, v57, v58, v59, v60;
  v61 = (v87 & 1);
  v62 = (v47 & 1);
  *a5 = v88;
  *(a5 + 8) = v11;
  *(a5 + 16) = v61;
  *(a5 + 24) = v89;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v43;
  *(a5 + 56) = v45;
  *(a5 + 64) = v62;
  *(a5 + 72) = v49;
  sub_1BD0D7F18(v88, v11, v87 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v43, v45, v62);
  sub_1BE048C84();
  sub_1BD0DDF10(v43, v45, v62, v63, v64, v65, v66, v67);
  v49, v68, v69, v70, v71, v72, v73, v74;
  sub_1BD0DDF10(v88, v11, v61, v75, v76, v77, v78, v79);

  v89, v80, v81, v82, v83, v84, v85, v86;
}

void *sub_1BD2204E4@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E070, &qword_1BE0C2F08);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFD0, &qword_1BE0C2EB8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFC8, &qword_1BE0C2EB0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  if ([*(*(v1 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) isInTerminalState])
  {
    goto LABEL_6;
  }

  if (qword_1EBD36BD0 != -1)
  {
    swift_once();
  }

  sub_1BD2220F0(qword_1EBD42EB0, *algn_1EBD42EB8);
  if (!v13)
  {
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_1BD222834();
    return sub_1BE04F9A4();
  }

  else
  {
    v14 = v13;
    v15 = swift_allocObject();
    v33 = v3;
    v16 = *(v1 + 80);
    *(v15 + 80) = *(v1 + 64);
    *(v15 + 96) = v16;
    *(v15 + 112) = *(v1 + 96);
    v17 = *(v1 + 112);
    v18 = *(v1 + 16);
    *(v15 + 16) = *v1;
    *(v15 + 32) = v18;
    v19 = *(v1 + 48);
    *(v15 + 48) = *(v1 + 32);
    *(v15 + 64) = v19;
    *(v15 + 128) = v17;
    *(v15 + 136) = v14;
    MEMORY[0x1EEE9AC00](v15);
    v32 = a1;
    sub_1BD222678(v1, v34);
    v31 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E078, &unk_1BE0C2F10);
    sub_1BD222E24();
    sub_1BE051704();
    v20 = [objc_opt_self() systemBlueColor];
    v21 = sub_1BE0511C4();
    v22 = sub_1BE0501D4();
    v23 = &v8[*(v6 + 36)];
    *v23 = v21;
    v23[8] = v22;
    sub_1BE051C64();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFD8, &qword_1BE0C2EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFE0, &qword_1BE0C2EC8);
    sub_1BD22299C();
    sub_1BD222A80();
    sub_1BD22330C(&qword_1EBD3E018, &qword_1EBD3DFE0, &qword_1BE0C2EC8, sub_1BD22299C);
    sub_1BE0510B4();
    sub_1BD0DE53C(v8, &qword_1EBD3DFD0, &qword_1BE0C2EB8);
    LOBYTE(v21) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v24 = &v12[*(v9 + 36)];
    *v24 = v21;
    *(v24 + 1) = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    *(v24 + 4) = v28;
    v24[40] = 0;
    sub_1BD0DE19C(v12, v5, &qword_1EBD3DFC8, &qword_1BE0C2EB0);
    swift_storeEnumTagMultiPayload();
    sub_1BD222834();
    sub_1BE04F9A4();

    return sub_1BD0DE53C(v12, &qword_1EBD3DFC8, &qword_1BE0C2EB0);
  }
}

void *sub_1BD220980@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E098, &qword_1BE0C2F20);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E038, &qword_1BE0C2EE8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v56 - v8;
  if (([*(*(v1 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) isInTerminalState] & 1) == 0)
  {
    if (qword_1EBD36BD8 != -1)
    {
      swift_once();
    }

    sub_1BD2220F0(qword_1EBD42EC0, *algn_1EBD42EC8);
    if (v10)
    {
      v11 = v10;
      KeyPath = swift_getKeyPath();
      v13 = swift_getKeyPath();
      sub_1BE04D8B4(&v57);
      KeyPath, v14, v15, v16, v17, v18, v19, v20;
      v13, v21, v22, v23, v24, v25, v26, v27;
      v28 = v58;
      if (v58)
      {
        v56[2] = a1;
        v29 = v57;
        v30 = swift_allocObject();
        v56[1] = v56;
        v31 = *(v1 + 80);
        *(v30 + 80) = *(v1 + 64);
        *(v30 + 96) = v31;
        *(v30 + 112) = *(v1 + 96);
        v32 = *(v1 + 112);
        v33 = *(v1 + 16);
        *(v30 + 16) = *v1;
        *(v30 + 32) = v33;
        v34 = *(v1 + 48);
        *(v30 + 48) = *(v1 + 32);
        *(v30 + 64) = v34;
        *(v30 + 128) = v32;
        *(v30 + 136) = v11;
        MEMORY[0x1EEE9AC00](v30);
        v56[-2] = v29;
        v56[-1] = v28;
        sub_1BD222678(v1, &v57);
        v35 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0A0, &qword_1BE0C2F70);
        sub_1BD222FCC();
        sub_1BE051704();
        v28, v36, v37, v38, v39, v40, v41, v42;
        v43 = PKRewardsHubGrayButtonColor();
        v44 = sub_1BE0511C4();
        v45 = sub_1BE0501D4();
        v46 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E058, &qword_1BE0C2EF8) + 36)];
        *v46 = v44;
        v46[8] = v45;
        v47 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E048, &qword_1BE0C2EF0) + 36)];
        v48 = *MEMORY[0x1E697F468];
        v49 = sub_1BE04F684();
        (*(*(v49 - 8) + 104))(v47, v48, v49);
        *&v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E010, &qword_1BE0C2EE0) + 36)] = 256;
        LOBYTE(v47) = sub_1BE0501F4();
        sub_1BE04E1F4();
        v50 = &v9[*(v6 + 36)];
        *v50 = v47;
        *(v50 + 1) = v51;
        *(v50 + 2) = v52;
        *(v50 + 3) = v53;
        *(v50 + 4) = v54;
        v50[40] = 0;
        sub_1BD0DE19C(v9, v5, &qword_1EBD3E038, &qword_1BE0C2EE8);
        swift_storeEnumTagMultiPayload();
        sub_1BD222BC4();
        sub_1BE04F9A4();

        return sub_1BD0DE53C(v9, &qword_1EBD3E038, &qword_1BE0C2EE8);
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1BD222BC4();
  return sub_1BE04F9A4();
}

void sub_1BD220DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication);
  v5 = v4;
  v3(a2, v4);
}

__n128 sub_1BD220E2C@<Q0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BE048C84();
  v5 = sub_1BE0502A4();
  sub_1BE0503A4();
  v6 = sub_1BE0503F4();
  v5, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1BE0505F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  a2, v15, v17, v19, v21, v22, v23, v24;
  v6, v25, v26, v27, v28, v29, v30, v31;
  v32 = [objc_opt_self() labelColor];
  v33 = sub_1BE0511C4();
  v34 = sub_1BE050564();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v33, v35, v37, v39, v41, v42, v43, v44;
  sub_1BD0DDF10(v14, v16, (v18 & 1), v45, v46, v47, v48, v49);
  v20, v50, v51, v52, v53, v54, v55, v56;
  LOBYTE(v20) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v66[39] = v69;
  *&v66[23] = v68;
  *&v66[7] = v67;
  *a3 = v34;
  *(a3 + 8) = v36;
  *(a3 + 16) = v38 & 1;
  *(a3 + 24) = v40;
  *(a3 + 32) = v20;
  *(a3 + 40) = v58;
  *(a3 + 48) = v60;
  *(a3 + 56) = v62;
  *(a3 + 64) = v64;
  *(a3 + 72) = 0;
  *(a3 + 73) = *v66;
  *(a3 + 89) = *&v66[16];
  result = *&v66[32];
  *(a3 + 105) = *&v66[32];
  *(a3 + 120) = *(&v69 + 1);
  return result;
}

__n128 sub_1BD220FFC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 displayText];
  sub_1BE052434();
  v5 = v4;

  v6 = sub_1BE050464();
  v7 = sub_1BE0505F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v5, v8, v10, v12, v14, v15, v16, v17;
  v6, v18, v19, v20, v21, v22, v23, v24;
  v25 = sub_1BE051424();
  v26 = sub_1BE050564();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v25, v27, v29, v31, v33, v34, v35, v36;
  sub_1BD0DDF10(v7, v9, (v11 & 1), v37, v38, v39, v40, v41);
  v13, v42, v43, v44, v45, v46, v47, v48;
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *a2 = v26;
  *(a2 + 8) = v28;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v32;
  *(a2 + 96) = v57;
  *(a2 + 112) = v58;
  result = v59;
  *(a2 + 32) = v53;
  *(a2 + 48) = v54;
  *(a2 + 64) = v55;
  *(a2 + 80) = v56;
  *(a2 + 160) = v51;
  *(a2 + 176) = v52;
  *(a2 + 128) = v59;
  *(a2 + 144) = v50;
  return result;
}

uint64_t sub_1BD2211A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFD8, &qword_1BE0C2EC0) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E010, &qword_1BE0C2EE0) + 36)) = 256;
  return sub_1BD0DE19C(a1, a2, &qword_1EBD3DFD0, &qword_1BE0C2EB8);
}

double sub_1BD22126C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051214();
  sub_1BD0DE19C(a1, a2, &qword_1EBD3DFD0, &qword_1BE0C2EB8);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFE0, &qword_1BE0C2EC8) + 36);
  *v5 = 0;
  *(v5 + 8) = v4;
  result = 1.0;
  *(v5 + 16) = xmmword_1BE0C2C10;
  return result;
}

uint64_t sub_1BD2212EC@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v39 = a1;
  v3 = sub_1BE051584();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BE051424();
  sub_1BE04E3F4();
  v7 = v114;
  v42 = v116;
  v43 = v115;
  v8 = v117;
  v41 = v118;
  v9 = v119;
  v10 = sub_1BE051CD4();
  v37 = v11;
  v38 = v10;
  if (a2 == 0.0)
  {
    v12 = PKRewardsHubIncompleteProgressGrayColor();
  }

  else
  {
    v12 = PKRewardsHubPurpleColor();
  }

  v13 = v12;
  v14 = sub_1BE0511C4();
  v15 = PKRewardsHubCellBackgroundColor();
  v16 = sub_1BE0511C4();
  v17 = sub_1BE051CD4();
  v19 = v18;
  v20 = sub_1BE051CD4();
  *&v50 = v14;
  WORD4(v50) = 256;
  *&v51 = v16;
  WORD4(v51) = 256;
  *&v52 = v17;
  *(&v52 + 1) = v19;
  *&v53 = v20;
  *(&v53 + 1) = v21;
  v65 = v50;
  v66 = v51;
  v67 = v52;
  v68 = v53;
  v54 = v14;
  v55 = 256;
  v56 = v16;
  v57 = 256;
  v58 = v17;
  v59 = v19;
  v60 = v20;
  v61 = v21;
  sub_1BD0DE19C(&v50, v95, &qword_1EBD3E1D0, &qword_1BE0C3010);
  sub_1BD0DE53C(&v54, &qword_1EBD3E1D0, &qword_1BE0C3010);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v22 = sub_1BE051574();
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v23 = sub_1BE0515E4();
  v22, v24, v25, v26, v27, v28, v29, v30;
  (*(v4 + 8))(v6, v3);
  v31 = sub_1BE051424();
  KeyPath = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v71 = v7 * 0.5;
  *(&v71 + 1) = v7;
  *&v72 = __PAIR64__(v42, v43);
  *(&v72 + 1) = v8;
  v33 = v40;
  *&v73 = v41;
  *(&v73 + 1) = v9;
  *&v74 = v40;
  WORD4(v74) = 256;
  *(&v74 + 10) = v69;
  HIWORD(v74) = v70;
  v34 = v37;
  v35 = v38;
  *&v75 = v38;
  *(&v75 + 1) = v37;
  v78 = v67;
  v79 = v68;
  v76 = v65;
  v77 = v66;
  v80 = v62;
  v81 = v63;
  v82 = v64;
  v44[4] = v75;
  v44[5] = v65;
  v44[6] = v66;
  v44[7] = v67;
  v44[8] = v68;
  v44[9] = v62;
  v44[10] = v63;
  v44[11] = v64;
  v44[0] = v71;
  v44[1] = v72;
  v44[2] = v73;
  v44[3] = v74;
  v83[0] = v23;
  v83[1] = 0;
  LOWORD(v84) = 1;
  *(&v84 + 2) = v48;
  WORD3(v84) = v49;
  *(&v84 + 1) = KeyPath;
  *v85 = v31;
  *&v85[40] = v47;
  *&v85[24] = v46;
  *&v85[8] = v45;
  v44[12] = v23;
  v44[13] = v84;
  *&v44[17] = *(&v47 + 1);
  v44[15] = *&v85[16];
  v44[16] = *&v85[32];
  v44[14] = *v85;
  memcpy(v39, v44, 0x118uLL);
  v86[0] = v23;
  v86[1] = 0;
  v87 = 1;
  v88 = v48;
  v89 = v49;
  v90 = KeyPath;
  v91 = v31;
  v92 = v45;
  v93 = v46;
  v94 = v47;
  sub_1BD0DE19C(&v71, v95, &qword_1EBD3E1D8, &qword_1BE0C3048);
  sub_1BD0DE19C(v83, v95, &unk_1EBD3E1E0, &unk_1BE0C3050);
  sub_1BD0DE53C(v86, &unk_1EBD3E1E0, &unk_1BE0C3050);
  v95[0] = v7 * 0.5;
  v95[1] = v7;
  v96 = v43;
  v97 = v42;
  v98 = v8;
  v99 = v41;
  v100 = v9;
  v101 = v33;
  v102 = 256;
  v103 = v69;
  v104 = v70;
  v105 = v35;
  v106 = v34;
  v109 = v67;
  v110 = v68;
  v107 = v65;
  v108 = v66;
  v111 = v62;
  v112 = v63;
  v113 = v64;
  return sub_1BD0DE53C(v95, &qword_1EBD3E1D8, &qword_1BE0C3048);
}

void sub_1BD2217E0(uint64_t a1, uint64_t a2)
{
  v3 = [*(v2 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state];
  v4 = swift_allocObject();
  v4[2] = v3;
  v5 = [objc_opt_self() fromDeviceVersion];
  if (v5)
  {
    v6 = v5;
    v7 = PKDeviceClass();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1BE052434();
      v11 = v10;

      v12 = swift_allocObject();
      v12[2] = v6;
      v12[3] = v9;
      v12[4] = v11;
      sub_1BE048964();
      v13 = sub_1BD222768;
    }

    else
    {

      v12 = 0;
      v13 = sub_1BD134F50;
    }

    v14 = v13;
  }

  else
  {
    v14 = sub_1BD134F50;
    v12 = 0;
  }

  v15 = swift_allocObject();
  v15[2] = sub_1BD222754;
  v15[3] = v4;
  v15[4] = v14;
  v15[5] = v12;
  v16 = swift_allocObject();
  v16[2] = sub_1BD36CA6C;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = v12;
  v17 = *(v2 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_layout);
  sub_1BE048964();
  sub_1BE048964();
  v18 = v17;
  v19 = sub_1BE052404();
  v20 = swift_allocObject();
  v20[2] = sub_1BD22275C;
  v20[3] = v15;
  v119 = sub_1BD224180;
  v120 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v116 = 1107296256;
  v117 = sub_1BD224168;
  v118 = &block_descriptor_22;
  v21 = _Block_copy(&aBlock);
  v22 = v120;
  sub_1BE048964();
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = [v18 layoutImageNamed:v19 passingTest:v21];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();
  v20, v31, v32, v33, v34, v35, v36, v37;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v30)
  {

    v16, v38, v39, v40, v41, v42, v43, v44;
    v4, v45, v46, v47, v48, v49, v50, v51;
    v12, v52, v53, v54, v55, v56, v57, v58;
    goto LABEL_12;
  }

  v59 = sub_1BE052404();
  v60 = swift_allocObject();
  v60[2] = sub_1BD22275C;
  v60[3] = v16;
  v119 = sub_1BD224180;
  v120 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v116 = 1107296256;
  v117 = sub_1BD224168;
  v118 = &block_descriptor_29_0;
  v61 = _Block_copy(&aBlock);
  v62 = v120;
  sub_1BE048964();
  v62, v63, v64, v65, v66, v67, v68, v69;
  v70 = [v18 layoutImageNamed:v59 passingTest:v61];

  v4, v71, v72, v73, v74, v75, v76, v77;
  v12, v78, v79, v80, v81, v82, v83, v84;
  _Block_release(v61);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v16, v86, v87, v88, v89, v90, v91, v92;
  v60, v93, v94, v95, v96, v97, v98, v99;
  if (isEscapingClosureAtFileLocation)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (!v70)
  {
    v15, v100, v101, v102, v103, v104, v105, v106;
    return;
  }

LABEL_12:
  objc_opt_self();
  v107 = swift_dynamicCastObjCClass();
  v15, v108, v109, v110, v111, v112, v113, v114;
  if (!v107)
  {
    swift_unknownObjectRelease();
  }
}

void sub_1BD221C68(uint64_t a1, uint64_t a2)
{
  v3 = [*(v2 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state];
  v4 = swift_allocObject();
  v4[2] = v3;
  v5 = [objc_opt_self() fromDeviceVersion];
  if (v5)
  {
    v6 = v5;
    v7 = PKDeviceClass();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1BE052434();
      v11 = v10;

      v12 = swift_allocObject();
      v12[2] = v6;
      v12[3] = v9;
      v12[4] = v11;
      sub_1BE048964();
      v13 = sub_1BD224164;
    }

    else
    {

      v12 = 0;
      v13 = sub_1BD134F50;
    }

    v14 = v13;
  }

  else
  {
    v14 = sub_1BD134F50;
    v12 = 0;
  }

  v15 = swift_allocObject();
  v15[2] = sub_1BD224184;
  v15[3] = v4;
  v15[4] = v14;
  v15[5] = v12;
  v16 = swift_allocObject();
  v16[2] = sub_1BD36CA6C;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = v12;
  v17 = *(v2 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_layout);
  sub_1BE048964();
  sub_1BE048964();
  v18 = v17;
  v19 = sub_1BE052404();
  v20 = swift_allocObject();
  v20[2] = sub_1BD22415C;
  v20[3] = v15;
  v119 = sub_1BD224180;
  v120 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v116 = 1107296256;
  v117 = sub_1BD224168;
  v118 = &block_descriptor_99_0;
  v21 = _Block_copy(&aBlock);
  v22 = v120;
  sub_1BE048964();
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = [v18 layoutStringNamed:v19 passingTest:v21];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();
  v20, v31, v32, v33, v34, v35, v36, v37;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v30)
  {

    v16, v38, v39, v40, v41, v42, v43, v44;
    v4, v45, v46, v47, v48, v49, v50, v51;
    v12, v52, v53, v54, v55, v56, v57, v58;
    goto LABEL_12;
  }

  v59 = sub_1BE052404();
  v60 = swift_allocObject();
  v60[2] = sub_1BD22415C;
  v60[3] = v16;
  v119 = sub_1BD224180;
  v120 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v116 = 1107296256;
  v117 = sub_1BD224168;
  v118 = &block_descriptor_106;
  v61 = _Block_copy(&aBlock);
  v62 = v120;
  sub_1BE048964();
  v62, v63, v64, v65, v66, v67, v68, v69;
  v70 = [v18 layoutStringNamed:v59 passingTest:v61];

  v4, v71, v72, v73, v74, v75, v76, v77;
  v12, v78, v79, v80, v81, v82, v83, v84;
  _Block_release(v61);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v16, v86, v87, v88, v89, v90, v91, v92;
  v60, v93, v94, v95, v96, v97, v98, v99;
  if (isEscapingClosureAtFileLocation)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (!v70)
  {
    v15, v100, v101, v102, v103, v104, v105, v106;
    return;
  }

LABEL_12:
  objc_opt_self();
  v107 = swift_dynamicCastObjCClass();
  v15, v108, v109, v110, v111, v112, v113, v114;
  if (!v107)
  {
    swift_unknownObjectRelease();
  }
}

void sub_1BD2220F0(uint64_t a1, uint64_t a2)
{
  v3 = [*(v2 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state];
  v4 = swift_allocObject();
  v4[2] = v3;
  v5 = [objc_opt_self() fromDeviceVersion];
  if (v5)
  {
    v6 = v5;
    v7 = PKDeviceClass();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1BE052434();
      v11 = v10;

      v12 = swift_allocObject();
      v12[2] = v6;
      v12[3] = v9;
      v12[4] = v11;
      sub_1BE048964();
      v13 = sub_1BD224164;
    }

    else
    {

      v12 = 0;
      v13 = sub_1BD134F50;
    }

    v14 = v13;
  }

  else
  {
    v14 = sub_1BD134F50;
    v12 = 0;
  }

  v15 = swift_allocObject();
  v15[2] = sub_1BD224184;
  v15[3] = v4;
  v15[4] = v14;
  v15[5] = v12;
  v16 = swift_allocObject();
  v16[2] = sub_1BD36CA6C;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = v12;
  v17 = *(v2 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_layout);
  sub_1BE048964();
  sub_1BE048964();
  v18 = v17;
  v19 = sub_1BE052404();
  v20 = swift_allocObject();
  v20[2] = sub_1BD22415C;
  v20[3] = v15;
  v119 = sub_1BD22277C;
  v120 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v116 = 1107296256;
  v117 = sub_1BD224168;
  v118 = &block_descriptor_53;
  v21 = _Block_copy(&aBlock);
  v22 = v120;
  sub_1BE048964();
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = [v18 layoutLinkNamed:v19 passingTest:v21];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();
  v20, v31, v32, v33, v34, v35, v36, v37;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v30)
  {

    v16, v38, v39, v40, v41, v42, v43, v44;
    v4, v45, v46, v47, v48, v49, v50, v51;
    v12, v52, v53, v54, v55, v56, v57, v58;
    goto LABEL_12;
  }

  v59 = sub_1BE052404();
  v60 = swift_allocObject();
  v60[2] = sub_1BD22415C;
  v60[3] = v16;
  v119 = sub_1BD224180;
  v120 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v116 = 1107296256;
  v117 = sub_1BD224168;
  v118 = &block_descriptor_60_0;
  v61 = _Block_copy(&aBlock);
  v62 = v120;
  sub_1BE048964();
  v62, v63, v64, v65, v66, v67, v68, v69;
  v70 = [v18 layoutLinkNamed:v59 passingTest:v61];

  v4, v71, v72, v73, v74, v75, v76, v77;
  v12, v78, v79, v80, v81, v82, v83, v84;
  _Block_release(v61);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v16, v86, v87, v88, v89, v90, v91, v92;
  v60, v93, v94, v95, v96, v97, v98, v99;
  if (isEscapingClosureAtFileLocation)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (!v70)
  {
    v15, v100, v101, v102, v103, v104, v105, v106;
    return;
  }

LABEL_12:
  objc_opt_self();
  v107 = swift_dynamicCastObjCClass();
  v15, v108, v109, v110, v111, v112, v113, v114;
  if (!v107)
  {
    swift_unknownObjectRelease();
  }
}

double sub_1BD222578@<D0>(_OWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  result = *&v20;
  *a2 = v20;
  return result;
}

uint64_t sub_1BD2225F8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD2226B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD21C630(v2, v3, v0 + 32);
}

unint64_t sub_1BD2227A8()
{
  result = qword_1EBD3DFB8;
  if (!qword_1EBD3DFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFB0, &qword_1BE0C2EA8);
    sub_1BD222834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DFB8);
  }

  return result;
}

unint64_t sub_1BD222834()
{
  result = qword_1EBD3DFC0;
  if (!qword_1EBD3DFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFC8, &qword_1BE0C2EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFD0, &qword_1BE0C2EB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFD8, &qword_1BE0C2EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFE0, &qword_1BE0C2EC8);
    sub_1BD22299C();
    sub_1BD222A80();
    sub_1BD22330C(&qword_1EBD3E018, &qword_1EBD3DFE0, &qword_1BE0C2EC8, sub_1BD22299C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DFC0);
  }

  return result;
}

unint64_t sub_1BD22299C()
{
  result = qword_1EBD3DFE8;
  if (!qword_1EBD3DFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFD0, &qword_1BE0C2EB8);
    sub_1BD0DE4F4(&qword_1EBD3DFF0, &qword_1EBD3DFF8, &unk_1BE0C2ED0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DFE8);
  }

  return result;
}

unint64_t sub_1BD222A80()
{
  result = qword_1EBD3E000;
  if (!qword_1EBD3E000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFD8, &qword_1BE0C2EC0);
    sub_1BD22299C();
    sub_1BD0DE4F4(&qword_1EBD3E008, &qword_1EBD3E010, &qword_1BE0C2EE0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E000);
  }

  return result;
}

unint64_t sub_1BD222B38()
{
  result = qword_1EBD3E028;
  if (!qword_1EBD3E028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFA0, &qword_1BE0C2E98);
    sub_1BD222BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E028);
  }

  return result;
}

unint64_t sub_1BD222BC4()
{
  result = qword_1EBD3E030;
  if (!qword_1EBD3E030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E038, &qword_1BE0C2EE8);
    sub_1BD222C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E030);
  }

  return result;
}

unint64_t sub_1BD222C50()
{
  result = qword_1EBD3E040;
  if (!qword_1EBD3E040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E048, &qword_1BE0C2EF0);
    sub_1BD222D08();
    sub_1BD0DE4F4(&qword_1EBD3E008, &qword_1EBD3E010, &qword_1BE0C2EE0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E040);
  }

  return result;
}

unint64_t sub_1BD222D08()
{
  result = qword_1EBD3E050;
  if (!qword_1EBD3E050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E058, &qword_1BE0C2EF8);
    sub_1BD0DE4F4(&qword_1EBD3E060, &qword_1EBD3E068, &qword_1BE0C2F00, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E050);
  }

  return result;
}

unint64_t sub_1BD222E24()
{
  result = qword_1EBD3E080;
  if (!qword_1EBD3E080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E078, &unk_1BE0C2F10);
    sub_1BD222ED0(&qword_1EBD4E8F0, &qword_1EBD3E090, &unk_1BE0D49D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E080);
  }

  return result;
}

uint64_t sub_1BD222ED0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_34Tm_0()
{
  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;

  *(v0 + 88), v8, v9, v10, v11, v12, v13, v14;
  sub_1BD0D4604(*(v0 + 96), *(v0 + 104), v15, v16, v17, v18, v19, v20);
  sub_1BD0D4604(*(v0 + 112), *(v0 + 120), v21, v22, v23, v24, v25, v26);

  return swift_deallocObject();
}

unint64_t sub_1BD222FCC()
{
  result = qword_1EBD3E0A8;
  if (!qword_1EBD3E0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0A0, &qword_1BE0C2F70);
    sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90, &qword_1BE0C2E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0A8);
  }

  return result;
}

unint64_t sub_1BD223084()
{
  result = qword_1EBD3E0B8;
  if (!qword_1EBD3E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0B0, &qword_1BE0C2F78);
    sub_1BD0DE4F4(&qword_1EBD3E0C0, &qword_1EBD3E0C8, &qword_1BE0C2F80, MEMORY[0x1E6981F48]);
    sub_1BD22313C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0B8);
  }

  return result;
}

unint64_t sub_1BD22313C()
{
  result = qword_1EBD3E0D0;
  if (!qword_1EBD3E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0D8, &qword_1BE0C2F88);
    sub_1BD2231C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0D0);
  }

  return result;
}

unint64_t sub_1BD2231C8()
{
  result = qword_1EBD3E0E0;
  if (!qword_1EBD3E0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0E8, &qword_1BE0C2F90);
    sub_1BD223254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0E0);
  }

  return result;
}

unint64_t sub_1BD223254()
{
  result = qword_1EBD3E0F0;
  if (!qword_1EBD3E0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0F8, &qword_1BE0C2F98);
    sub_1BD22330C(&qword_1EBD3E100, &qword_1EBD3E108, &qword_1BE0C2FA0, sub_1BD223390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0F0);
  }

  return result;
}

uint64_t sub_1BD22330C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD0FEBBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD223390()
{
  result = qword_1EBD3E110;
  if (!qword_1EBD3E110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E118, &qword_1BE0C2FA8);
    sub_1BD223448();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E110);
  }

  return result;
}

unint64_t sub_1BD223448()
{
  result = qword_1EBD3E120;
  if (!qword_1EBD3E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E128, &qword_1BE0C2FB0);
    sub_1BD2234D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E120);
  }

  return result;
}

unint64_t sub_1BD2234D4()
{
  result = qword_1EBD3E130;
  if (!qword_1EBD3E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E138, &qword_1BE0C2FB8);
    sub_1BD223560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E130);
  }

  return result;
}

unint64_t sub_1BD223560()
{
  result = qword_1EBD3E140;
  if (!qword_1EBD3E140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E148, &qword_1BE0C2FC0);
    sub_1BD2235EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E140);
  }

  return result;
}

unint64_t sub_1BD2235EC()
{
  result = qword_1EBD3E150;
  if (!qword_1EBD3E150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E158, &qword_1BE0C2FC8);
    sub_1BD0DE4F4(&unk_1EBD3E160, &qword_1EBD3B890, &unk_1BE0C2FD0, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0, &qword_1BE0DA410, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E150);
  }

  return result;
}

unint64_t sub_1BD2236F8()
{
  result = qword_1EBD3E190;
  if (!qword_1EBD3E190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E188, &qword_1BE0C2FE8);
    sub_1BD223784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E190);
  }

  return result;
}

unint64_t sub_1BD223784()
{
  result = qword_1EBD3E198;
  if (!qword_1EBD3E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E1A0, &qword_1BE0C2FF0);
    sub_1BD223810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E198);
  }

  return result;
}

unint64_t sub_1BD223810()
{
  result = qword_1EBD3E1A8;
  if (!qword_1EBD3E1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E1B0, &qword_1BE0C2FF8);
    sub_1BD0DE4F4(&qword_1EBD3E1B8, &qword_1EBD3E1C0, &qword_1BE0C3000, &unk_1BE0C0920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E1A8);
  }

  return result;
}

unint64_t sub_1BD2238E4()
{
  result = qword_1EBD3E210;
  if (!qword_1EBD3E210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E208, &qword_1BE0C3078);
    sub_1BD223970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E210);
  }

  return result;
}

unint64_t sub_1BD223970()
{
  result = qword_1EBD3E218;
  if (!qword_1EBD3E218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E220, &qword_1BE0C3080);
    sub_1BD22330C(&qword_1EBD3E228, &qword_1EBD3E230, &qword_1BE0C3088, sub_1BD223A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E218);
  }

  return result;
}

unint64_t sub_1BD223A28()
{
  result = qword_1EBD3E238;
  if (!qword_1EBD3E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E240, &qword_1BE0C3090);
    sub_1BD223AB4();
    sub_1BD223CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E238);
  }

  return result;
}

unint64_t sub_1BD223AB4()
{
  result = qword_1EBD3E248;
  if (!qword_1EBD3E248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E250, &qword_1BE0C3098);
    sub_1BD223B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E248);
  }

  return result;
}

unint64_t sub_1BD223B38()
{
  result = qword_1EBD3E258;
  if (!qword_1EBD3E258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E260, &unk_1BE0C30A0);
    sub_1BD223BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E258);
  }

  return result;
}

unint64_t sub_1BD223BC4()
{
  result = qword_1EBD3E268;
  if (!qword_1EBD3E268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E270, &unk_1BE10CE50);
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E268);
  }

  return result;
}

unint64_t sub_1BD223C50()
{
  result = qword_1EBD3E278;
  if (!qword_1EBD3E278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E278);
  }

  return result;
}

unint64_t sub_1BD223CD4()
{
  result = qword_1EBD3E288;
  if (!qword_1EBD3E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E288);
  }

  return result;
}

unint64_t sub_1BD223D28()
{
  result = qword_1EBD3E290;
  if (!qword_1EBD3E290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DF60, &qword_1BE0C2E68);
    sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90, &qword_1BE0C2E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E290);
  }

  return result;
}

uint64_t objectdestroy_12Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

unint64_t sub_1BD223E94()
{
  result = qword_1EBD3E2A8;
  if (!qword_1EBD3E2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE80, &qword_1BE0B1188);
    sub_1BD223F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E2A8);
  }

  return result;
}

unint64_t sub_1BD223F20()
{
  result = qword_1EBD3E2B0;
  if (!qword_1EBD3E2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE88, &qword_1BE0C2D80);
    sub_1BD223FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E2B0);
  }

  return result;
}

unint64_t sub_1BD223FAC()
{
  result = qword_1EBD3E2B8;
  if (!qword_1EBD3E2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DEA0, &qword_1BE0C2DF8);
    sub_1BD224064();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E2B8);
  }

  return result;
}

unint64_t sub_1BD224064()
{
  result = qword_1EBD3E2C0;
  if (!qword_1EBD3E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE98, &qword_1BE0C2DC0);
    sub_1BD0DE4F4(&qword_1EBD3E2C8, &unk_1EBD3E2D0, &unk_1BE0C30C0, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E2C0);
  }

  return result;
}

uint64_t sub_1BD224188(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v6 = 0;
    v7 = (a4 + 48);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v11 = v8;
      sub_1BE048C84();
      if (sub_1BE053074() & 1) != 0 && (sub_1BE053074())
      {
        v19 = sub_1BD3FDC00(v9, a3);
        v9, v20, v21, v22, v23, v24, v25, v26;

        if (v19)
        {
          return v6;
        }
      }

      else
      {
        v9, v12, v13, v14, v15, v16, v17, v18;
      }

      ++v6;
      v7 += 3;
    }

    while (v4 != v6);
  }

  return 0;
}

unint64_t sub_1BD2242B8(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = sub_1BE053704();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB40900](v9, a2);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_1BD0E5E8C(0, a3, a4);
    v12 = sub_1BE053074();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1BD2243C0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceViewModel(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  v9 = 0;
  if (v8)
  {
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    while (1)
    {
      sub_1BD2266D8(v10, v7, type metadata accessor for DeviceViewModel);
      if (*v7 == *a1 && v7[1] == a1[1])
      {
        break;
      }

      v13 = sub_1BE053B84();
      sub_1BD226740(v7, type metadata accessor for DeviceViewModel);
      if (v13)
      {
        return v9;
      }

      ++v9;
      v10 += v11;
      if (v8 == v9)
      {
        return 0;
      }
    }

    sub_1BD226740(v7, type metadata accessor for DeviceViewModel);
  }

  return v9;
}

uint64_t sub_1BD224538(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      v7 = [v6 identifier];
      v8 = sub_1BE052434();
      v10 = v9;

      v11 = [a1 identifier];
      v12 = sub_1BE052434();
      v14 = v13;

      if (v8 == v12 && v10 == v14)
      {
        v10, v15, v16, v17, v18, v19, v20, v21;
        v14, v38, v39, v40, v41, v42, v43, v44;
      }

      else
      {
        v23 = sub_1BE053B84();
        v10, v24, v25, v26, v27, v28, v29, v30;
        v14, v31, v32, v33, v34, v35, v36, v37;
        if ((v23 & 1) == 0)
        {

          goto LABEL_4;
        }
      }

      sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
      v45 = sub_1BE053074();

      if (v45)
      {
        return v4;
      }

LABEL_4:
      ++v4;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t sub_1BD224690(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageGroup(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = *a1;
  v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v12 = *(v5 + 72);
  v45 = v12;
  v46 = v10;
  while (1)
  {
    sub_1BD2266D8(v11, v7, type metadata accessor for SEStorageUsageGroup);
    if ((sub_1BD3FF77C(*v7, v10) & 1) == 0)
    {
      goto LABEL_3;
    }

    v13 = v4;
    sub_1BE04C164();
    sub_1BD2267A0(&qword_1EBD3A358, MEMORY[0x1E69B8260], MEMORY[0x1E69B8270]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v20 = v50;
    v21 = v48;
    if (v49 == v47 && v50 == v48)
    {
      break;
    }

    v29 = sub_1BE053B84();
    v20, v30, v31, v32, v33, v34, v35, v36;
    v21, v37, v38, v39, v40, v41, v42, v43;
    v4 = v13;
    v12 = v45;
    v10 = v46;
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_3:
    sub_1BD226740(v7, type metadata accessor for SEStorageUsageGroup);
    ++v9;
    v11 += v12;
    if (v8 == v9)
    {
      return 0;
    }
  }

  v50, v14, v47, v15, v16, v17, v18, v19;
  v21, v22, v23, v24, v25, v26, v27, v28;
  v4 = v13;
  v12 = v45;
  v10 = v46;
LABEL_9:
  if (*(v7 + *(v4 + 24)) != *(a1 + *(v4 + 24)) || *(v7 + *(v4 + 28)) != *(a1 + *(v4 + 28)))
  {
    goto LABEL_3;
  }

  sub_1BD226740(v7, type metadata accessor for SEStorageUsageGroup);
  return v9;
}

uint64_t sub_1BD224914(void *a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v32 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v32 - v9;
  v40 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v11 = *(v40 - 1);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a2 + 16);
  if (v43)
  {
    v37 = v4;
    v14 = sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v41 = a1;
    v42 = v14;
    v15 = 0;
    v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    v32 = (v5 + 32);
    v35 = (v5 + 8);
    v36 = (v5 + 48);
    do
    {
      sub_1BD2266D8(v16 + v17 * v15, v13, type metadata accessor for SEStorageUsageGroup.PassEntry);
      result = sub_1BE053074();
      if ((result & 1) == 0)
      {
        goto LABEL_5;
      }

      v19 = *(v13 + 1);
      v20 = v41[1];
      v21 = *(v19 + 16);
      if (v21 != *(v20 + 16))
      {
        goto LABEL_5;
      }

      if (v21)
      {
        v22 = v19 == v20;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v29 = (v19 + 40);
        v30 = (v20 + 40);
        while (v21)
        {
          result = *(v29 - 1);
          if (result != *(v30 - 1) || *v29 != *v30)
          {
            result = sub_1BE053B84();
            if ((result & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v29 += 2;
          v30 += 2;
          if (!--v21)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        return result;
      }

LABEL_13:
      v23 = v40[6];
      v24 = *(v38 + 48);
      sub_1BD15D62C(&v13[v23], v10);
      sub_1BD15D62C(v41 + v23, &v10[v24]);
      v25 = v37;
      v26 = *v36;
      if ((*v36)(v10, 1, v37) == 1)
      {
        if (v26(&v10[v24], 1, v25) != 1)
        {
          goto LABEL_4;
        }

        sub_1BD0DE53C(v10, &unk_1EBD39970, &unk_1BE0B9F80);
      }

      else
      {
        sub_1BD15D62C(v10, v39);
        if (v26(&v10[v24], 1, v25) == 1)
        {
          (*v35)(v39, v25);
LABEL_4:
          sub_1BD0DE53C(v10, &qword_1EBD3A750, &unk_1BE0D3540);
          goto LABEL_5;
        }

        v27 = v33;
        (*v32)(v33, &v10[v24], v25);
        sub_1BD2267A0(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v34 = sub_1BE052334();
        v28 = *v35;
        (*v35)(v27, v25);
        v28(v39, v25);
        sub_1BD0DE53C(v10, &unk_1EBD39970, &unk_1BE0B9F80);
        if ((v34 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (*&v13[v40[7]] == *(v41 + v40[7]) && v13[v40[8]] == *(v41 + v40[8]))
      {
        sub_1BD226740(v13, type metadata accessor for SEStorageUsageGroup.PassEntry);
        return v15;
      }

LABEL_5:
      sub_1BD226740(v13, type metadata accessor for SEStorageUsageGroup.PassEntry);
      ++v15;
    }

    while (v15 != v43);
  }

  return 0;
}

uint64_t sub_1BD224E3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = MEMORY[0x1E69E7CC0];
  *(v2 + 56) = v5;
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1BD0D4744(v6, v7, v8, v9, v10, v11, v12, v13);
  return v2;
}

uint64_t sub_1BD224E9C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1BD0D4744(*(v8 + 16), *(v8 + 24), a3, a4, a5, a6, a7, a8);

  *(v8 + 48), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 56), v16, v17, v18, v19, v20, v21, v22;
  sub_1BD0D4534(v8 + 64);

  return swift_deallocClassInstance();
}

void sub_1BD224F20(void *a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BE0B7020;
    *(v9 + 32) = a1;
    v15 = a1;
    v13 = a2 & 1;
    v14 = v9;
    goto LABEL_10;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = *(v2 + 40);
  if (!v6)
  {
    v9 = *(v2 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = a1;
    v11 = a1;
    sub_1BE048C84();
    sub_1BDA7A14C(inited);
    v13 = a2 & 1;
    v14 = v9;
LABEL_10:
    sub_1BD225100(v14, v13, v12);
    v9, v16, v17, v18, v19, v20, v21, v22;
    return;
  }

  swift_beginAccess();
  v7 = a1;
  v8 = v6;
  MEMORY[0x1BFB3F7A0]();
  if (*((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  swift_endAccess();
  [v8 pushViewController:v7 animated:a2 & 1];
}

void sub_1BD225100(unint64_t a1, char a2, __n128 a3)
{
  v10 = v3[5];
  if (v10)
  {
    swift_beginAccess();
    v11 = v3[7];
    v3[7] = a1;
    v12 = v10;
    sub_1BE048C84();
    v11, v13, v14, v15, v16, v17, v18, v19;
    swift_beginAccess();
    v117 = v3[6];
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BDA7A14C(a1);
    sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
    v20 = sub_1BE052724();
    v117, v21, v22, v23, v24, v25, v26, v27;
    [v12 setViewControllers:v20 animated:a2 & 1];

    return;
  }

  v28 = v3[4];
  if (v28)
  {
    v10 = v28;
    v29 = [v10 navigationController];
    if (v29)
    {
      v4 = v29;
      v30 = [v29 viewControllers];
      v31 = 0x1E69DD258uLL;
      sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
      v32 = sub_1BE052744();

      swift_beginAccess();
      v33 = v3[6];
      v3[6] = v32;
      v33, v34, v35, v36, v37, v38, v39, v40;
      v41 = v3[6];
      sub_1BE048C84();
      v42 = sub_1BD2242B8(v10, v41, &qword_1EBD43450, 0x1E69DD258);
      v7 = v43;
      v41, v43, v44, v45, v46, v47, v48, v49;
      if (v7)
      {
LABEL_36:
        v103 = v3[5];
        v3[5] = v4;
        v104 = v4;

        sub_1BD225100(a1, a2 & 1, v105);
        return;
      }

      if (v42 < 0)
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        v31 = v3[6];
        v7 = v31 >> 62;
        if (!(v31 >> 62))
        {
          v50 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v50 >= v42)
          {
            goto LABEL_9;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }
      }

      if ((sub_1BE053704() & 0x8000000000000000) == 0)
      {
        v50 = sub_1BE053704();
        if (v50 >= v42)
        {
LABEL_9:
          if ((v31 & 0xC000000000000001) != 0)
          {
            sub_1BE048C84();
            if (v42)
            {
              v58 = 0;
              do
              {
                v59 = v58 + 1;
                sub_1BE053864();
                v58 = v59;
              }

              while (v42 != v59);
            }

            if (!v7)
            {
              goto LABEL_14;
            }
          }

          else
          {
            sub_1BE048C84();
            if (!v7)
            {
LABEL_14:
              v5 = v31 & 0xFFFFFFFFFFFFFF8;
              v60 = (v31 & 0xFFFFFFFFFFFFFF8) + 32;
              v6 = (2 * v42) | 1;
              goto LABEL_26;
            }
          }

          v31, v51, v52, v53, v54, v55, v56, v57;
          v5 = sub_1BE0539D4();
          v60 = v81;
          v7 = v82;
          v6 = v83;
LABEL_26:
          swift_endAccess();
          if ((v6 & 1) == 0)
          {
LABEL_27:
            sub_1BD1DA30C(v5, v60, v7, v6);
            v85 = v84;
            goto LABEL_34;
          }

          v116 = v60;
          sub_1BE053BB4();
          swift_unknownObjectRetain_n();
          v86 = swift_dynamicCastClass();
          if (!v86)
          {
            swift_unknownObjectRelease();
            v86 = MEMORY[0x1E69E7CC0];
          }

          v94 = v86[2];
          v86, v87, v88, v89, v90, v91, v92, v93;
          if (!__OFSUB__(v6 >> 1, v7))
          {
            if (v94 == (v6 >> 1) - v7)
            {
              v85 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v85)
              {
LABEL_35:
                v102 = v3[6];
                v3[6] = v85;
                v102, v95, v96, v97, v98, v99, v100, v101;
                goto LABEL_36;
              }

              v85 = MEMORY[0x1E69E7CC0];
LABEL_34:
              swift_unknownObjectRelease();
              goto LABEL_35;
            }

            goto LABEL_51;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          swift_unknownObjectRelease();
          v60 = v116;
          goto LABEL_27;
        }

        goto LABEL_45;
      }

      __break(1u);
    }

    sub_1BE053994();
    __break(1u);
    return;
  }

  if (a1 >> 62)
  {
    v61 = sub_1BE053704();
    if (!v61)
    {
      return;
    }
  }

  else
  {
    v61 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v61)
    {
      return;
    }
  }

  v62 = __OFSUB__(v61, 1);
  v50 = v61 - 1;
  if (v62)
  {
    goto LABEL_46;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v63 = MEMORY[0x1BFB40900](v50, a1);
    goto LABEL_22;
  }

  if (v50 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v50 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v63 = *(a1 + 8 * v50 + 32);
LABEL_22:
  v64 = v3[4];
  v3[4] = v63;
  v65 = v63;

  v72 = v3[2];
  if (v72)
  {
    v73 = v3[3];
    sub_1BE048964();
    v72(v65);
    sub_1BD0D4744(v72, v73, v74, v75, v76, v77, v78, v79);
    v80 = v3[2];
  }

  else
  {
    v80 = 0;
  }

  v106 = v3[3];
  v3[2] = 0;
  v3[3] = 0;
  sub_1BD0D4744(v80, v106, v66, v67, v68, v69, v70, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1BE0B7020;
  *(v107 + 32) = v65;
  swift_beginAccess();
  v108 = v3[7];
  v3[7] = v107;
  v108, v109, v110, v111, v112, v113, v114, v115;
}

uint64_t sub_1BD225648()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v8 = sub_1BE052D54();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD2266D0;
  v20 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_30;
  v10 = _Block_copy(aBlock);
  v20, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD2267A0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1BD225910(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentedViewController];

    if (v3)
    {
      if ([v3 isBeingDismissed])
      {
LABEL_19:

        return;
      }

      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
LABEL_16:
        v27 = swift_dynamicCastObjCProtocolConditional();
        if (v27)
        {
          [v27 showLoadingUI:1 animated:{1, &unk_1F3CDEF98}];
        }

        else
        {
          v28 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
          [v28 startAnimating];
          v29 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
          v30 = [v3 navigationItem];
          v31 = v29;
          [v30 setRightBarButtonItem:v31 animated:1];
        }

        goto LABEL_19;
      }

      v5 = v4;
      v6 = v3;
      v7 = [v5 viewControllers];
      sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
      v8 = sub_1BE052744();

      if (v8 >> 62)
      {
        v16 = sub_1BE053704();
        if (v16)
        {
LABEL_7:
          v17 = __OFSUB__(v16, 1);
          v18 = v16 - 1;
          if (v17)
          {
            __break(1u);
          }

          else if ((v8 & 0xC000000000000001) == 0)
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v18 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v19 = *(v8 + 8 * v18 + 32);
LABEL_12:
              v3 = v19;
              v8, v20, v21, v22, v23, v24, v25, v26;

LABEL_15:
              goto LABEL_16;
            }

            __break(1u);
            return;
          }

          v19 = MEMORY[0x1BFB40900](v18, v8);
          goto LABEL_12;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_7;
        }
      }

      v8, v9, v10, v11, v12, v13, v14, v15;
      v3 = v6;
      goto LABEL_15;
    }
  }
}

id sub_1BD225BB4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

void *sub_1BD225C08()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_1BD225C30()
{
  result = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD225C70(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD225CB4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_navigationController;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_presentedViewControllerToDismiss;
  swift_unknownObjectWeakInit();
  v11 = &v4[OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_onCompletion];
  *v11 = 0;
  *(v11 + 1) = 0;
  v4[OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_isValid] = 1;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v19 = v12;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v20 = *v11;
    v21 = *(v11 + 1);
    *v11 = a3;
    *(v11 + 1) = a4;
    v22 = a1;
    sub_1BD0D44B8(a3, a4);
    sub_1BD0D4744(v20, v21, v23, v24, v25, v26, v27, v28);
    v45.receiver = v4;
    v45.super_class = type metadata accessor for ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser();
    v29 = objc_msgSendSuper2(&v45, sel_init);
    [v19 addDelegateObserver_];
    key = 0;
    v30 = a2;
    objc_setAssociatedObject(v30, &key, v29, 1);

    sub_1BD0D4744(a3, a4, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    sub_1BD0D4744(a3, a4, v13, v14, v15, v16, v17, v18);

    MEMORY[0x1BFB46050](&v4[v9]);
    MEMORY[0x1BFB46050](&v4[v10]);
    sub_1BD0D4744(*v11, *(v11 + 1), v37, v38, v39, v40, v41, v42);
    type metadata accessor for ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v29;
}

id sub_1BD225EA8()
{
  sub_1BD225F98(0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD225F98(char a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_isValid) == 1)
  {
    *(v2 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_isValid) = 0;
    sub_1BE04D0E4();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = a1 & 1;
      _os_log_impl(&dword_1BD026000, v8, v9, "PresentingNavigationPresentationDismisser: invalidating with didDismiss: %{BOOL}d", v10, 8u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v17 = (v2 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_onCompletion);
    v18 = *(v2 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_onCompletion);
    if (v18)
    {
      v19 = v17[1];
      sub_1BE048964();
      v18(0);
      sub_1BD0D4744(v18, v19, v20, v21, v22, v23, v24, v25);
      v26 = *v17;
    }

    else
    {
      v26 = 0;
    }

    v27 = v17[1];
    *v17 = 0;
    v17[1] = 0;
    sub_1BD0D4744(v26, v27, v11, v12, v13, v14, v15, v16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      [Strong removeDelegateObserver_];
    }
  }
}

void sub_1BD22624C(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    if ([v8 transitioningDelegate])
    {
      swift_unknownObjectRelease();

      goto LABEL_4;
    }

    v15 = [v8 viewControllers];
    sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
    v16 = sub_1BE052744();

    if (v16 >> 62)
    {
      v24 = sub_1BE053704();
      if (v24)
      {
LABEL_10:
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v25)
        {
          __break(1u);
        }

        else if ((v16 & 0xC000000000000001) == 0)
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v26 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v27 = *(v16 + 8 * v26 + 32);
LABEL_15:
            v28 = v27;
            goto LABEL_18;
          }

          __break(1u);
          return;
        }

        v27 = MEMORY[0x1BFB40900](v26, v16);
        goto LABEL_15;
      }
    }

    else
    {
      v24 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_10;
      }
    }

    v28 = 0;
LABEL_18:
    v16, v17, v18, v19, v20, v21, v22, v23;
    v29 = [v28 transitioningDelegate];

    [v8 setTransitioningDelegate_];
    swift_unknownObjectRelease();
    v10 = *(v1 + 40);
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_4:
  v10 = *(v1 + 40);
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_19:
  v30 = *(v1 + 32);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BE0B7020;
    *(v31 + 32) = v30;
    v32 = v30;
    sub_1BD225100(v31, 0, v33);

    v31, v34, v35, v36, v37, v38, v39, v40;
    v10 = *(v1 + 40);
    if (v10)
    {
LABEL_5:
      v11 = objc_allocWithZone(type metadata accessor for ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser());
      v12 = v10;
      v13 = a1;
      v45 = v12;

      [v45 presentViewController:v13 animated:1 completion:0];
      v14 = v45;

      return;
    }
  }

  sub_1BE04D0E4();
  v41 = sub_1BE04D204();
  v42 = sub_1BE052C34();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1BD026000, v41, v42, "Failed to find navigation controller when attempting to present VC.", v43, 2u);
    MEMORY[0x1BFB45F20](v43, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

void sub_1BD226600(void *a1)
{
  if ((*(v1 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_isValid) & 1) == 0)
  {
    return;
  }

  v3 = [a1 presentedViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    if (Strong)
    {
      v5 = Strong;

      if (v3 == v5)
      {
        goto LABEL_8;
      }

LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    Strong = v3;
LABEL_10:

    goto LABEL_11;
  }

  if (Strong)
  {
    goto LABEL_10;
  }

LABEL_8:
  [a1 dismissViewControllerAnimated:1 completion:0];
  v6 = 1;
LABEL_12:

  sub_1BD225F98(v6);
}

uint64_t sub_1BD2266D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD226740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD2267A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static NearbyAirDropSendFactory.peerPaymentPostTransactionMetadataFileURL()@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 temporaryDirectory];
  sub_1BE04A9F4();

  v16 = sub_1BE04A9C4();
  v17 = sub_1BE052404();
  v18 = [v16 URLByAppendingPathComponent_];

  if (v18)
  {
    sub_1BE04A9F4();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v8 + 56);
  v20(v3, v19, 1, v7);
  sub_1BD226B4C(v3, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);

    sub_1BD226BBC(v6);
    v21 = 1;
    v22 = v35;
  }

  else
  {
    sub_1BE052434();
    v24 = v23;
    sub_1BE04A9D4();

    v24, v25, v26, v27, v28, v29, v30, v31;
    v32 = *(v8 + 8);
    v32(v13, v7);
    v32(v6, v7);
    v22 = v35;
    (*(v8 + 32))(v35, v10, v7);
    v21 = 0;
  }

  return (v20)(v22, v21, 1, v7);
}

uint64_t sub_1BD226B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD226BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static NearbyAirDropSendFactory.peerPaymentPostTransactionMetadata()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE052434();
  v4 = v3;
  MEMORY[0x1BFB3F610](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  sub_1BE052434();
  MEMORY[0x1BFB3F610](0xD00000000000002ELL, 0x80000001BE11EC30);
  sub_1BE04DC34();
  v12 = sub_1BE04DC44();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 0, 1, v12);
}

uint64_t sub_1BD226D70()
{
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return sub_1BE048C84();
}

uint64_t sub_1BD226E1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria);
  return sub_1BE048C84();
}

void sub_1BD226ED0(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria;
  v11 = *(v8 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria);
  if (!v11)
  {
    if (!a1)
    {
      v21 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    a1, v30, v31, v32, v33, v34, v35, v36;
    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v12 = sub_1BE048C84();
  v13 = sub_1BD400190(v12, a1);
  v11, v14, v15, v16, v17, v18, v19, v20;
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v21 = *(v8 + v10);
LABEL_8:
  *(v8 + v10) = a1;

  v21, a2, a3, a4, a5, a6, a7, a8;
}

void sub_1BD227068(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD227098(v1);
}

void sub_1BD227098(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD3E560, 0x1E69B91F8);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD227258(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD227288(v1);
}

void sub_1BD227288(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD3E570, 0x1E69B8DA8);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1BD227448(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  return *(v2 + *a2);
}

void sub_1BD2274F0(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = (v6 + *a3);
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  *a4 = v16;
  *(a4 + 8) = v15;
}

void sub_1BD2275B0(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + *a3;
  if ((*(v6 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v6 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v6 = result;
    *(v6 + 8) = a2 & 1;
    return;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B584();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
}

void sub_1BD2276F8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1BD227890()
{
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled);
}

void sub_1BD227938(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled);
}

void sub_1BD227A10(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD227B28()
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1BD227C90(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E548, &qword_1BE0C3258);
  sub_1BE052754();
  v4[4] = v12;
  v4[5] = v13;
  v4[6] = v14;
  v5 = v15;
  v4[0] = v8;
  v4[1] = v9;
  v4[2] = v10;
  v4[3] = v11;
  sub_1BD0DE53C(v4, &qword_1EBD3E550, &qword_1BE0C3260);
  sub_1BD227E5C(&v8);
  sub_1BE052754();
  v6[4] = v12;
  v6[5] = v13;
  v6[6] = v14;
  v7 = v15;
  v6[0] = v8;
  v6[1] = v9;
  v6[2] = v10;
  v6[3] = v11;
  sub_1BD0DE53C(v6, &qword_1EBD3E550, &qword_1BE0C3260);
  sub_1BD22826C(v1);
  sub_1BE052754();
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = v2;
  v8 = v1[0];
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  sub_1BD0DE53C(&v8, &qword_1EBD3E550, &qword_1BE0C3260);
  return v3;
}

void sub_1BD227C90(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BD228AA4();
  if ((v4 || (v4 = sub_1BD228C3C()) != 0) && ((v4, (v5 = sub_1BD228AA4()) == 0) || (v6 = v5, v7 = [v5 suppressPayInFull], v6, (v7 & 1) == 0)))
  {
    v16 = sub_1BD228AA4();
    v17 = sub_1BD228AA4();
    if ((v17 || (v17 = sub_1BD228C3C()) != 0) && ((v17, (v18 = sub_1BD228AA4()) == 0) || (v19 = v18, v20 = [v18 suppressPayInFull], v19, !v20)))
    {
      KeyPath = swift_getKeyPath();
      *&v37[0] = v2;
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
      sub_1BE04B594();
      KeyPath, v23, v24, v25, v26, v27, v28, v29;
      v21 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer) == 0;
    }

    else
    {
      v21 = 0;
    }

    sub_1BD6CCE5C(v16, v21, v37);
    v35 = v37[1];
    v36 = v37[0];
    v33 = v37[3];
    v34 = v37[2];
    v31 = v37[5];
    v32 = v37[4];
    v30 = v37[6];
    v8 = v38;

    v15 = v30;
    v14 = v31;
    v13 = v32;
    v12 = v33;
    v11 = v34;
    v10 = v35;
    v9 = v36;
  }

  else
  {
    v8 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  *(a1 + 96) = v15;
  *(a1 + 112) = v8;
}

void sub_1BD227E5C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BD228AA4();
  if (v4)
  {
    v5 = v4;
    KeyPath = swift_getKeyPath();
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B594();
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
    v86 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState);
    v88 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState + 8);
    v14 = swift_getKeyPath();
    sub_1BE04B594();
    v14, v15, v16, v17, v18, v19, v20, v21;
    if ((*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) != 0 || *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType) != 1)
    {
      v22 = swift_getKeyPath();
      sub_1BE04B594();
      v22, v23, v24, v25, v26, v27, v28, v29;
      v30 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel);
      if (v30)
      {
        v31 = swift_getKeyPath();
        sub_1BD22CCA8(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel, &protocol conformance descriptor for PaymentOfferInstallmentPlanSelectionModel);
        v32 = v30;
        sub_1BE04B594();
        v31, v33, v34, v35, v36, v37, v38, v39;
        v87 = v32[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading];
      }

      else
      {
        v87 = 0;
      }
    }

    else
    {
      v87 = 1;
    }

    v53 = swift_getKeyPath();
    sub_1BE04B594();
    v53, v54, v55, v56, v57, v58, v59, v60;
    v61 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
    if (v61)
    {
      objc_opt_self();
      v62 = swift_dynamicCastObjCClass();
      if (v62)
      {
        v63 = v61;
      }
    }

    else
    {
      v62 = 0;
    }

    v64 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    if (v64 && (v65 = [v64 fallbackSelectedPaymentOfferForType_]) != 0)
    {
      v66 = v65;
      objc_opt_self();
      v67 = swift_dynamicCastObjCClass();
      if (!v67)
      {
      }
    }

    else
    {
      v67 = 0;
    }

    v68 = [v5 identifier];
    v69 = sub_1BE052434();
    v84 = v70;
    v85 = v69;

    v83 = sub_1BE051444();
    v71 = sub_1BD6CD0B4(v5, v62, v67);
    v81 = v72;
    v82 = v71;
    v73 = sub_1BD6CD3F4(v5, v86, v88, v62, v67, v87);
    v75 = v74;
    v76 = sub_1BD6CD964(v5, v62);
    v78 = v77;
    v80 = v79;

    v50 = v80;
    v48 = v76;
    v47 = v75;
    v46 = v73;
    v45 = v81;
    v44 = v82;
    v43 = v83;
    v41 = v84;
    v40 = v85;
    if (v87)
    {
      v51 = 65792;
    }

    else
    {
      v51 = 0;
    }

    v49 = v78 & 1;
    if (v62)
    {
      ++v51;
    }

    v52 = xmmword_1BE0C31B0;
    v42 = 1;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0uLL;
  }

  *a1 = v40;
  *(a1 + 8) = v41;
  *(a1 + 16) = v42;
  *(a1 + 24) = 0;
  *(a1 + 32) = v52;
  *(a1 + 48) = v43;
  *(a1 + 56) = v44;
  *(a1 + 64) = v45;
  *(a1 + 72) = v46;
  *(a1 + 80) = v47;
  *(a1 + 88) = v51;
  *(a1 + 96) = v48;
  *(a1 + 104) = v49;
  *(a1 + 112) = v50;
}

void sub_1BD22826C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BD228C3C();
  if (v4)
  {
    v5 = v4;
    v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    if (v6)
    {
      v76 = [*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController) ineligibleDetailsForCriteria_];
    }

    else
    {
      v76 = 0;
    }

    KeyPath = swift_getKeyPath();
    *&v77[0] = v1;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B594();
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
    v23 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
    v24 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
    v25 = swift_getKeyPath();
    *&v77[0] = v2;
    v73 = v24;
    v75 = v24;
    sub_1BE04B594();
    v25, v26, v27, v28, v29, v30, v31, v32;
    v33 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError);
    v71 = v33 && [v33 code] == 40030;
    v34 = swift_getKeyPath();
    *&v77[0] = v2;
    sub_1BE04B594();
    v34, v35, v36, v37, v38, v39, v40, v41;
    v42 = *(v2 + v23);
    if (v42)
    {
      v43 = v42;
      if (([v43 isRedeemable] & 1) != 0 && objc_msgSend(v43, sel_isValid))
      {
        v44 = [v43 isPositive];
      }

      else
      {
        v44 = 0;
      }
    }

    else
    {
      v44 = 0;
    }

    v45 = swift_getKeyPath();
    *&v77[0] = v2;
    sub_1BE04B594();
    v45, v46, v47, v48, v49, v50, v51, v52;
    v53 = (*(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) == 0 && *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType) == 2;
    v54 = swift_getKeyPath();
    *&v77[0] = v2;
    sub_1BE04B594();
    v54, v55, v56, v57, v58, v59, v60, v61;
    v62 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
    if (v62)
    {
      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();
      if (!v63)
      {
        v62 = 0;
        if (v6)
        {
LABEL_24:
          v64 = [v6 fallbackSelectedPaymentOfferForType_];
          if (v64)
          {
            v65 = v64;
            objc_opt_self();
            v6 = swift_dynamicCastObjCClass();
            if (!v6)
            {
            }
          }

          else
          {
            v6 = 0;
          }
        }

LABEL_30:
        sub_1BD6CE15C(v5, v76, v73, v71, v44, v53, v62, v6, v77);
        v72 = v77[1];
        v74 = v77[0];
        v69 = v77[3];
        v70 = v77[2];
        v67 = v77[5];
        v68 = v77[4];
        v66 = v77[6];
        v7 = v78;

        v14 = v66;
        v13 = v67;
        v12 = v68;
        v11 = v69;
        v10 = v70;
        v9 = v72;
        v8 = v74;
        goto LABEL_31;
      }

      v62 = [v63 rewardsRedemptionIntent];
    }

    if (v6)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  v7 = 0;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
LABEL_31:
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v14;
  *(a1 + 112) = v7;
}