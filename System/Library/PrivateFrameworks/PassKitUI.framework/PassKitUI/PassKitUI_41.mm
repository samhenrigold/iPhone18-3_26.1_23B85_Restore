uint64_t sub_1BD46D240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v64 - v6;
  v77 = sub_1BE04E6D4();
  v75 = *(v77 - 1);
  MEMORY[0x1EEE9AC00](v77);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = v11;
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v17 = *(v16 - 8);
  v81 = v16;
  v82 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CC0, &qword_1BE0D8178);
  v21 = *(v20 - 8);
  v73 = v20;
  v74 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v64 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CC8, &qword_1BE0D8180);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v76 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  sub_1BE04E194();
  v71 = sub_1BE04E1D4();
  v29 = *(v71 - 8);
  v70 = *(v29 + 56);
  v72 = v29 + 56;
  v70(v15, 0, 1, v71);
  v68 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet;
  v65 = v12;
  sub_1BD471B10(a1, v12, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  v30 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v31 = swift_allocObject();
  v66 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet;
  sub_1BD471FF8(v12, v31 + v30, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  sub_1BE0516F4();
  sub_1BE04E6C4();
  sub_1BE04E7F4();
  v32 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  v33 = v81;
  sub_1BE050B94();
  (*(v75 + 8))(v8, v77);
  v34 = *(v82 + 8);
  v82 += 8;
  v77 = v34;
  v34(v19, v33);
  sub_1BE052434();
  v36 = v35;
  v83 = v33;
  v84 = v32;
  swift_getOpaqueTypeConformance2();
  v37 = v28;
  v38 = v73;
  sub_1BE050DE4();
  v36, v39, v40, v41, v42, v43, v44, v45;
  (*(v74 + 8))(v23, v38);
  sub_1BE04E1B4();
  v70(v15, 0, 1, v71);
  v46 = v65;
  sub_1BD471B10(v69, v65, v68);
  v47 = swift_allocObject();
  sub_1BD471FF8(v46, v47 + v30, v66);
  sub_1BE0516F4();
  sub_1BE052434();
  v49 = v48;
  v50 = v78;
  v51 = v81;
  sub_1BE050DE4();
  v49, v52, v53, v54, v55, v56, v57, v58;
  v77(v19, v51);
  v59 = v76;
  sub_1BD0DE19C(v37, v76, &qword_1EBD46CC8, &qword_1BE0D8180);
  v60 = v79;
  sub_1BD0DE19C(v50, v79, &unk_1EBD45200, &qword_1BE0BB900);
  v61 = v80;
  sub_1BD0DE19C(v59, v80, &qword_1EBD46CC8, &qword_1BE0D8180);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CD0, &qword_1BE0D8188);
  sub_1BD0DE19C(v60, v61 + *(v62 + 48), &unk_1EBD45200, &qword_1BE0BB900);
  sub_1BD0DE53C(v50, &unk_1EBD45200, &qword_1BE0BB900);
  sub_1BD0DE53C(v37, &qword_1EBD46CC8, &qword_1BE0D8180);
  sub_1BD0DE53C(v60, &unk_1EBD45200, &qword_1BE0BB900);
  return sub_1BD0DE53C(v59, &qword_1EBD46CC8, &qword_1BE0D8180);
}

void sub_1BD46D9CC(id *a1)
{
  v1 = *a1;
  v2 = [*a1 uniqueID];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1BE052434();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v7);
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15 = [objc_opt_self() sharedInstance];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 removePass_];
}

double sub_1BD46DAA0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

__n128 sub_1BD46DAFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *a1;
  sub_1BE048964();
  sub_1BD5F8A8C(v4, v3, v7);
  v5 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v5;
  *(a2 + 64) = v7[4];
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

void sub_1BD46DB6C(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v75 - v8;
  v10 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = *a1;
  v14 = a1[3];
  sub_1BD471B10(a1, &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  sub_1BD471FF8(&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  v77 = 0;
  v17 = v13;
  sub_1BE048964();
  sub_1BE051694();
  v76 = v78;
  v75 = v79;
  type metadata accessor for WalletSettingsModel(0);
  v18 = [v17 paymentPass];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE052434();
    v22 = v21;
    sub_1BD4089F0(v19, v20, v21, v9);

    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = sub_1BE04AA64();
    if ((*(*(v30 - 8) + 48))(v9, 1, v30) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v31 = sub_1BE04AA64();
    (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  }

  sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  v32 = [v17 paymentPass];
  if (!v32)
  {
    v51 = sub_1BE04AA64();
    (*(*(v51 - 8) + 56))(v6, 1, 1, v51);
    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_1BE052434();
  v36 = v35;
  sub_1BD4089F0(v33, v34, v35, v6);

  v36, v37, v38, v39, v40, v41, v42, v43;
  v44 = sub_1BE04AA64();
  if ((*(*(v44 - 8) + 48))(v6, 1, v44) == 1)
  {
LABEL_10:
    sub_1BD0DE53C(v6, &unk_1EBD3CF70, &qword_1BE0BA000);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_11;
  }

  v9 = v6;
LABEL_8:
  sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  v77 = 0;
  v45 = v17;
  sub_1BE051694();
  v46 = v78;
  v47 = v79;
  v77 = 0;
  sub_1BE051694();
  v48 = v78;
  v49 = v79;
  sub_1BE048964();
  v50 = v45;
  sub_1BE048964();
LABEL_11:
  v52 = v75;
  sub_1BE048964();
  v53 = v17;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD20FDB8(v45);
  sub_1BD20FE04(v45, v46, v47, v48, v49);
  *a2 = v53;
  *(a2 + 8) = sub_1BD472674;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;
  *(a2 + 32) = v76;
  *(a2 + 40) = v52;
  *(a2 + 48) = v45;
  *(a2 + 56) = v46;
  *(a2 + 64) = v47;
  *(a2 + 72) = v48;
  *(a2 + 80) = v49;
  sub_1BD20FE04(v45, v46, v47, v48, v49);
  v52, v54, v55, v56, v57, v58, v59, v60;
  v14, v61, v62, v63, v64, v65, v66, v67;
  v16, v68, v69, v70, v71, v72, v73, v74;
}

uint64_t sub_1BD46E06C(uint64_t a1)
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
  v12 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  sub_1BD0DE19C(a1 + *(v12 + 36), v7, &qword_1EBD3FA20, &qword_1BE0C6AD0);
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

uint64_t sub_1BD46E2F4@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
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

id sub_1BD46E500()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = [*v0 devicePrimaryPaymentApplication];
  if (!v9 || (v10 = v9, v11 = [v9 state], v10, v11 == 6))
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69B80F0], v1);
    v14 = sub_1BE04B714();
    v8 = v4;
    goto LABEL_7;
  }

  if (v11 != 7)
  {
    return 0;
  }

  (*(v2 + 104))(v8, *MEMORY[0x1E69B80F0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();

LABEL_7:
    (*(v2 + 8))(v8, v1);
    return v14;
  }

  __break(1u);
  return result;
}

id sub_1BD46E768()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = *v0;
  v10 = [*v0 devicePrimaryPaymentApplication];
  if (!v10)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69B80F0], v1);
    v15 = sub_1BE04B714();
LABEL_8:
    v8 = v4;
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v10 state];

  if (v12 == 6)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69B80F0], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BE0B69E0;
    v17 = [v9 organizationName];
    v18 = sub_1BE052434();
    v20 = v19;

    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1BD110550();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    v15 = sub_1BE04B714();
    v16, v21, v22, v23, v24, v25, v26, v27;
    goto LABEL_8;
  }

  if (v12 != 7)
  {
    return 0;
  }

  (*(v2 + 104))(v8, *MEMORY[0x1E69B80F0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();

LABEL_9:
    (*(v2 + 8))(v8, v1);
    return v15;
  }

  __break(1u);
  return result;
}

id sub_1BD46EA58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = sub_1BE04ECF4();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1BE04BD74();
  v5 = *(v78 - 1);
  MEMORY[0x1EEE9AC00](v78);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C70, &qword_1BE0D8138);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C78, &qword_1BE0D8140);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v13 = &v65 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C80, &qword_1BE0D8148);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v65 - v14;
  v80 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C88, &qword_1BE0D8150);
  sub_1BD0DE4F4(&qword_1EBD46C90, &qword_1EBD46C88, &qword_1BE0D8150, MEMORY[0x1E6981F48]);
  sub_1BE0504A4();
  v67 = v2;
  v79 = v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C98, &unk_1BE0D8158);
  v16 = sub_1BD0DE4F4(&qword_1EBD46CA0, &qword_1EBD46C70, &qword_1BE0D8138, MEMORY[0x1E697CCF0]);
  v17 = sub_1BD0DE4F4(&qword_1EBD46CA8, &qword_1EBD46C98, &unk_1BE0D8158, MEMORY[0x1E697C5E0]);
  v68 = v13;
  v65 = v15;
  v18 = v16;
  v19 = v17;
  sub_1BE051024();
  v20 = *(v9 + 8);
  v66 = v8;
  v21 = v8;
  v22 = v78;
  v20(v11, v21);
  (*(v5 + 104))(v7, *MEMORY[0x1E69B80F0], v22);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    (*(v5 + 8))(v7, v22);
    v89 = v25;
    v90 = v27;
    v28 = (v67 + *(type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0) + 32));
    v29 = *v28;
    v30 = *(v28 + 1);
    v87 = v29;
    v88 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    v31 = sub_1BE0516C4();
    v78 = &v65;
    v32 = v81;
    v33 = v82;
    MEMORY[0x1EEE9AC00](v31);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CB0, &unk_1BE0D8168);
    v81 = v66;
    v82 = v65;
    v83 = v18;
    v84 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v63 = sub_1BD0DDEBC();
    v64 = sub_1BD0DE4F4(&qword_1EBD46CB8, &qword_1EBD46CB0, &unk_1BE0D8168, MEMORY[0x1E6981F48]);
    v36 = v71;
    v37 = v70;
    v38 = v68;
    sub_1BE050F44();
    v27, v39, v40, v41, v42, v43, v44, v45;
    v33, v46, v47, v48, v49, v50, v51, v52;
    v32, v53, v54, v55, v56, v57, v58, v59;
    (*(v69 + 8))(v38, v37);
    v60 = v74;
    sub_1BE051DD4();
    v81 = v37;
    v82 = MEMORY[0x1E69E6158];
    v83 = v34;
    v84 = OpaqueTypeConformance2;
    v85 = v63;
    v86 = v64;
    swift_getOpaqueTypeConformance2();
    sub_1BD471A78(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    v61 = v73;
    v62 = v77;
    sub_1BE051134();
    (*(v76 + 8))(v60, v62);
    return (*(v72 + 8))(v36, v61);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD46F1C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D00, &qword_1BE0D81C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8];
  v10 = *(a1 + 8);
  v11 = *a1;
  sub_1BE048964();
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D08, &qword_1BE0D81C8);
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D10, &qword_1BE0D81D0);
  sub_1BD0DE4F4(&qword_1EBD46D18, &qword_1EBD46D10, &qword_1BE0D81D0, MEMORY[0x1E6981F48]);
  sub_1BE04E2B4();
  sub_1BD0DE19C(v9, v6, &qword_1EBD46D00, &qword_1BE0D81C0);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D20, &unk_1BE0D81D8);
  sub_1BD0DE19C(v6, a2 + *(v12 + 48), &qword_1EBD46D00, &qword_1BE0D81C0);
  v13 = v11;
  sub_1BE048964();
  sub_1BD0DE53C(v9, &qword_1EBD46D00, &qword_1BE0D81C0);
  sub_1BD0DE53C(v6, &qword_1EBD46D00, &qword_1BE0D81C0);
  v10, v14, v15, v16, v17, v18, v19, v20;
}

void sub_1BD46F3BC(uint64_t *a1@<X8>)
{
  sub_1BD46E500();
  if (!v2)
  {
    v3 = 0;
    v5 = 0;
    v9 = 0;
    v7 = 0;
    sub_1BD46E768();
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v13 = 0;
    v17 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  v9 = v8 & 1;
  sub_1BD0D7F18(v3, v4, v8 & 1);
  sub_1BE048C84();
  sub_1BD46E768();
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1BD0DDEBC();
  v11 = sub_1BE0506C4();
  v13 = v12;
  v15 = v14;
  v17 = v16 & 1;
  sub_1BD0D7F18(v11, v12, v16 & 1);
  sub_1BE048C84();
LABEL_6:
  sub_1BD1969AC(v3, v5, v9, v7);
  sub_1BD1969AC(v11, v13, v17, v15);
  sub_1BD1969F0(v3, v5, v9, v7, v19, v20, v21, v22);
  sub_1BD1969F0(v11, v13, v17, v15, v23, v24, v25, v26);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v9;
  a1[3] = v7;
  a1[4] = v11;
  a1[5] = v13;
  a1[6] = v17;
  a1[7] = v15;
  sub_1BD1969F0(v11, v13, v17, v15, v27, v28, v29, v30);
  sub_1BD1969F0(v3, v5, v9, v7, v31, v32, v33, v34);
}

uint64_t sub_1BD46F544@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CD8, &unk_1BE0D8190);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v43 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0, &qword_1BE0E06C0);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v43 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CE0, &qword_1BE0D81A0);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v43 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CE8, &qword_1BE0D81A8);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CF0, &unk_1BE0D81B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v43 - v8;
  v9 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  sub_1BE04FAF4();
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  v50 = v19;
  sub_1BE04E424();
  LODWORD(v19) = a1[*(type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0) + 28)];
  sub_1BE04FB04();
  v57 = a1;
  if (v19 == 1)
  {
    v20 = v16;
    v43 = v16;
    sub_1BE04E424();
    v21 = sub_1BE04FAC4();
    MEMORY[0x1EEE9AC00](v21);
    *(&v43 - 2) = a1;
    sub_1BE04E424();
    v22 = *(v45 + 48);
    v23 = *(v11 + 16);
    v24 = v44;
    v23(v44, v20, v10);
    v23(&v24[v22], v13, v10);
    v25 = v47;
    sub_1BE04F854();
    v26 = sub_1BD0DE4F4(&qword_1EBD46CF8, &qword_1EBD46CE8, &qword_1BE0D81A8, MEMORY[0x1E697C5E0]);
    v27 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
    v59 = v10;
    v60 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = v51;
    MEMORY[0x1BFB3CC60](v25, v51, v52, v26, OpaqueTypeConformance2);
    (*(v49 + 8))(v25, v29);
    v30 = *(v11 + 8);
    v30(v13, v10);
    v30(v43, v10);
  }

  else
  {
    v31 = v16;
    sub_1BE04E424();
    v32 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
    v33 = v46;
    MEMORY[0x1BFB3CC50](v31, v10, v32);
    v34 = sub_1BD0DE4F4(&qword_1EBD46CF8, &qword_1EBD46CE8, &qword_1BE0D81A8, MEMORY[0x1E697C5E0]);
    v59 = v10;
    v60 = v32;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = v52;
    MEMORY[0x1BFB3CC70](v33, v51, v52, v34, v35);
    (*(v48 + 8))(v33, v36);
    v30 = *(v11 + 8);
    v30(v31, v10);
    v23 = *(v11 + 16);
  }

  v37 = v53;
  v38 = *(v54 + 48);
  v39 = v50;
  v23(v53, v50, v10);
  v40 = &v37[v38];
  v41 = v56;
  sub_1BD0DE19C(v56, v40, &qword_1EBD46CF0, &unk_1BE0D81B0);
  sub_1BE04F854();
  sub_1BD0DE53C(v41, &qword_1EBD46CF0, &unk_1BE0D81B0);
  return (v30)(v39, v10);
}

void sub_1BD46FD04(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v42[2] = v9;
    v42[3] = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    v18 = sub_1BE0513B4();
    v19 = sub_1BE050564();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v18, v20, v22, v24, v26, v27, v28, v29;
    sub_1BD0DDF10(v12, v14, (v8 & 1), v30, v31, v32, v33, v34);
    v17, v35, v36, v37, v38, v39, v40, v41;
    *a1 = v19;
    *(a1 + 8) = v21;
    *(a1 + 16) = v23 & 1;
    *(a1 + 24) = v25;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD46FED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80F0], v7, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v19[2] = v14;
    v19[3] = v16;
    sub_1BD471B10(a1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    sub_1BD471FF8(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD470130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1BD471B10(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1BD471FF8(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
  return sub_1BE051704();
}

uint64_t sub_1BD470274()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD46E2F4(v3);
  sub_1BE04E654();
  (*(v1 + 8))(v3, v0);
  return sub_1BD40EC88();
}

id sub_1BD470344@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD4704B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80F0], v7, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v19[2] = v14;
    v19[3] = v16;
    sub_1BD471B10(a1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    sub_1BD471FF8(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD470708(uint64_t a1)
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
  v12 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
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

uint64_t sub_1BD470990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v64 - v6;
  v77 = sub_1BE04E6D4();
  v75 = *(v77 - 1);
  MEMORY[0x1EEE9AC00](v77);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = v11;
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v17 = *(v16 - 8);
  v81 = v16;
  v82 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CC0, &qword_1BE0D8178);
  v21 = *(v20 - 8);
  v73 = v20;
  v74 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v64 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CC8, &qword_1BE0D8180);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v76 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  sub_1BE04E194();
  v71 = sub_1BE04E1D4();
  v29 = *(v71 - 8);
  v70 = *(v29 + 56);
  v72 = v29 + 56;
  v70(v15, 0, 1, v71);
  v68 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet;
  v65 = v12;
  sub_1BD471B10(a1, v12, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
  v30 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v31 = swift_allocObject();
  v66 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet;
  sub_1BD471FF8(v12, v31 + v30, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
  sub_1BE0516F4();
  sub_1BE04E6C4();
  sub_1BE04E7F4();
  v32 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  v33 = v81;
  sub_1BE050B94();
  (*(v75 + 8))(v8, v77);
  v34 = *(v82 + 8);
  v82 += 8;
  v77 = v34;
  v34(v19, v33);
  sub_1BE052434();
  v36 = v35;
  v83 = v33;
  v84 = v32;
  swift_getOpaqueTypeConformance2();
  v37 = v28;
  v38 = v73;
  sub_1BE050DE4();
  v36, v39, v40, v41, v42, v43, v44, v45;
  (*(v74 + 8))(v23, v38);
  sub_1BE04E1B4();
  v70(v15, 0, 1, v71);
  v46 = v65;
  sub_1BD471B10(v69, v65, v68);
  v47 = swift_allocObject();
  sub_1BD471FF8(v46, v47 + v30, v66);
  sub_1BE0516F4();
  sub_1BE052434();
  v49 = v48;
  v50 = v78;
  v51 = v81;
  sub_1BE050DE4();
  v49, v52, v53, v54, v55, v56, v57, v58;
  v77(v19, v51);
  v59 = v76;
  sub_1BD0DE19C(v37, v76, &qword_1EBD46CC8, &qword_1BE0D8180);
  v60 = v79;
  sub_1BD0DE19C(v50, v79, &unk_1EBD45200, &qword_1BE0BB900);
  v61 = v80;
  sub_1BD0DE19C(v59, v80, &qword_1EBD46CC8, &qword_1BE0D8180);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CD0, &qword_1BE0D8188);
  sub_1BD0DE19C(v60, v61 + *(v62 + 48), &unk_1EBD45200, &qword_1BE0BB900);
  sub_1BD0DE53C(v50, &unk_1EBD45200, &qword_1BE0BB900);
  sub_1BD0DE53C(v37, &qword_1EBD46CC8, &qword_1BE0D8180);
  sub_1BD0DE53C(v60, &unk_1EBD45200, &qword_1BE0BB900);
  return sub_1BD0DE53C(v59, &qword_1EBD46CC8, &qword_1BE0D8180);
}

void sub_1BD47111C(void **a1)
{
  v2 = sub_1BE04E664();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD46E2F4(v5);
  sub_1BE04E654();
  (*(v3 + 8))(v5, v2);
  v6 = *a1;
  v7 = [v6 uniqueID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE052434();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v12);
    v11, v13, v14, v15, v16, v17, v18, v19;
    v20 = [objc_opt_self() sharedInstance];
    if (v20)
    {
      v21 = v20;
      [v20 removePass_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD471280@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD4713EC(uint64_t a1, char a2, double a3)
{
  type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

id sub_1BD471460@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_44()
{
  v1 = (type metadata accessor for PaymentPassDetailsSheet(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v17 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_1BE04E664();
    (*(*(v25 - 8) + 8))(v2 + v17, v25);
  }

  else
  {
    *(v2 + v17), v18, v19, v20, v21, v22, v23, v24;
  }

  return swift_deallocObject();
}

unint64_t sub_1BD4717A8()
{
  result = qword_1EBD46BC0;
  if (!qword_1EBD46BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46BB8, &qword_1BE0D7FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46BC0);
  }

  return result;
}

unint64_t sub_1BD47182C()
{
  result = qword_1EBD46BD0;
  if (!qword_1EBD46BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46BD8, &qword_1BE0D7FC8);
    sub_1BD4718B8();
    sub_1BD47198C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46BD0);
  }

  return result;
}

unint64_t sub_1BD4718B8()
{
  result = qword_1EBD46BE0;
  if (!qword_1EBD46BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46BE8, &qword_1BE0D7FD0);
    sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet, &unk_1BE0D80E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46BE0);
  }

  return result;
}

unint64_t sub_1BD47198C()
{
  result = qword_1EBD46BF8;
  if (!qword_1EBD46BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C00, &qword_1BE0D7FD8);
    sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet, &unk_1BE0D80E8);
    sub_1BD471A78(&qword_1EBD46C08, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet, &unk_1BE0D8098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46BF8);
  }

  return result;
}

uint64_t sub_1BD471A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD471B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD471B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD471C00(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0, 0x1E69B91E8);
  if (v1 <= 0x3F)
  {
    sub_1BD10EE48();
    if (v2 <= 0x3F)
    {
      type metadata accessor for WalletSettingsModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TransactionsModel(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AddressInformation(319);
          if (v5 <= 0x3F)
          {
            sub_1BD170C00(319);
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

void sub_1BD471D1C(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0, 0x1E69B91E8);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WalletSettingsModel(319);
    if (v2 <= 0x3F)
    {
      sub_1BD170C00(319);
      if (v3 <= 0x3F)
      {
        sub_1BD10EE48();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD471DE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD471E6C()
{
  result = qword_1EBD46C50;
  if (!qword_1EBD46C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C58, &qword_1BE0D8088);
    sub_1BD471EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46C50);
  }

  return result;
}

unint64_t sub_1BD471EF0()
{
  result = qword_1EBD46C60;
  if (!qword_1EBD46C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C68, &qword_1BE0D8090);
    sub_1BD4717A8();
    sub_1BD471DE8(&qword_1EBD46BC8, &qword_1EBD46BA8, &qword_1BE0D7FB0, sub_1BD47182C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46C60);
  }

  return result;
}

uint64_t sub_1BD471FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1BE04E664();
    (*(*(v18 - 8) + 8))(v2 + v10, v18);
  }

  else
  {
    *(v2 + v10), v11, v12, v13, v14, v15, v16, v17;
  }

  *(v2 + *(v1 + 32) + 8), v19, v20, v21, v22, v23, v24, v25;

  return swift_deallocObject();
}

uint64_t sub_1BD47238C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_58Tm_0()
{
  v1 = (type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v2[2], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;

  v2[5], v17, v18, v19, v20, v21, v22, v23;
  v24 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1BE04E664();
    (*(*(v32 - 8) + 8))(v2 + v24, v32);
  }

  else
  {
    *(v2 + v24), v25, v26, v27, v28, v29, v30, v31;
  }

  return swift_deallocObject();
}

unint64_t sub_1BD472618()
{
  result = qword_1EBD46DB8;
  if (!qword_1EBD46DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46DB8);
  }

  return result;
}

uint64_t sub_1BD4726B0()
{
  type metadata accessor for SavingsActionSheetObserver(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3B488, &qword_1BE0BC5B0);
  sub_1BE04D874();
  *(v0 + OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear) = 0;
  return v0;
}

uint64_t sub_1BD47273C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v3 = type metadata accessor for SavingsView(0);
  v108 = *(v3 - 8);
  v106 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v105 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1BE04FB94();
  v104 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E58, &qword_1BE0D8538);
  MEMORY[0x1EEE9AC00](v111);
  v8 = &v101 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E60, &qword_1BE0D8540);
  v109 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v103 = &v101 - v9;
  v113 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E68, &qword_1BE0D8548);
  sub_1BD0DE4F4(&qword_1EBD46E70, &qword_1EBD46E68, &qword_1BE0D8548, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v10 = sub_1BE051D74();
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_1BE04D8B4(v123);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  v27 = v123[0];
  v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E78, &qword_1BE0D8598) + 36)];
  *v28 = v10;
  v28[1] = v27;
  v29 = sub_1BE051D74();
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  sub_1BE04D8B4(v123);
  v30, v32, v33, v34, v35, v36, v37, v38;
  v31, v39, v40, v41, v42, v43, v44, v45;
  v46 = v123[0];
  v47 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E80, &qword_1BE0D85E8) + 36)];
  *v47 = v29;
  v47[1] = v46;
  v48 = swift_getKeyPath();
  v49 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E88, &qword_1BE0D8620) + 36)];
  *v49 = v48;
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = swift_getKeyPath();
  v51 = &v8[*(v111 + 36)];
  *v51 = v50;
  v51[1] = 0;
  sub_1BE04FB84();
  v52 = sub_1BD47B620();
  v53 = v112;
  sub_1BE051144();
  (*(v104 + 1))(v6, v53);
  sub_1BD0DE53C(v8, &qword_1EBD46E58, &qword_1BE0D8538);
  v102 = v1;
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
  v54 = sub_1BE04E3D4();
  v55 = swift_getKeyPath();
  sub_1BE04E974();
  v55, v56, v57, v58, v59, v60, v61, v62;
  v54, v63, v64, v65, v66, v67, v68, v69;
  v118 = v123[0];
  v119 = v123[1];
  v120 = v124;
  v122 = v126;
  v121 = v125;
  v104 = type metadata accessor for SavingsView;
  v70 = v105;
  sub_1BD47C300(v2, v105, type metadata accessor for SavingsView);
  v71 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v72 = swift_allocObject();
  sub_1BD47B1C8(v70, v72 + v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46EE0, &qword_1BE0D8680);
  v114 = v111;
  v115 = v112;
  v116 = v52;
  v117 = MEMORY[0x1E697C750];
  swift_getOpaqueTypeConformance2();
  sub_1BD1828C4();
  sub_1BD47B9AC();
  v73 = v110;
  v74 = v107;
  v75 = v103;
  sub_1BE051124();
  v72, v76, v77, v78, v79, v80, v81, v82;
  v83 = v118;
  v119, v84, v85, v86, v87, v88, v89, v90;
  v83, v91, v92, v93, v94, v95, v96, v97;
  (*(v109 + 8))(v75, v74);
  sub_1BD47C300(v102, v70, v104);
  v98 = swift_allocObject();
  sub_1BD47B1C8(v70, v98 + v71);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F40, &qword_1BE0D86B0);
  v100 = (v73 + *(result + 36));
  *v100 = sub_1BD47BD10;
  v100[1] = v98;
  v100[2] = 0;
  v100[3] = 0;
  return result;
}

void sub_1BD472E24(uint64_t a1)
{
  v2 = type metadata accessor for SavingsView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BD472FEC();
  v6 = *(a1 + 24);
  sub_1BD47C300(a1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1BD47B1C8(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (v6 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
  v10 = *(v6 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
  v11 = *(v6 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet + 8);
  *v9 = sub_1BD47B500;
  v9[1] = v8;
  sub_1BD0D4744(v10, v11, v12, v13, v14, v15, v16, v17);
  v18 = (a1 + *(v3 + 76));
  v19 = *v18;
  v20 = v18[1];
  v21 = (v6 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  v22 = *(v6 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  v23 = *(v6 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration + 8);
  *v21 = v19;
  v21[1] = v20;
  sub_1BD0D44B8(v19, v20);
  sub_1BD0D4744(v22, v23, v24, v25, v26, v27, v28, v29);
  v30 = [objc_allocWithZone(MEMORY[0x1E69B8390]) initWithApp:1 page:3];
  sub_1BE04BEF4();
  v31 = v30;
  sub_1BE04BEF4();
}

void sub_1BD472FEC()
{
  v1 = sub_1BE051F54();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v66 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1BE051FA4();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavingsView(0);
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1BE051FC4();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = v0 + *(v4 + 72);
  if ((*(v12 + 8) & 1) == 0)
  {
    v13 = *v12;
    type metadata accessor for SavingsActionSheetObserver(0);
    sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
    v14 = sub_1BE04E3C4();
    v15 = v14[OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear];
    v14, v16, v17, v18, v19, v20, v21, v22;
    if ((v15 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      v24 = swift_getKeyPath();
      sub_1BE04D8B4(aBlock);
      KeyPath, v25, v26, v27, v28, v29, v30, v31;
      v24, v32, v33, v34, v35, v36, v37, v38;
      v39 = aBlock[0];
      LODWORD(KeyPath) = [aBlock[0] supportsMoneyMovement];

      if (KeyPath)
      {
        if (v13 == 2)
        {
          v60 = v0;
          v40 = 0x100000000;
        }

        else
        {
          if (v13 != 3)
          {
            return;
          }

          v60 = v0;
          v40 = 0x4100000000;
        }

        sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
        v59 = sub_1BE052D54();
        sub_1BE051FB4();
        sub_1BE051FF4();
        v62 = *(v62 + 8);
        v41 = v8;
        v42 = v63;
        (v62)(v41, v63);
        sub_1BD47C300(v60, &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
        v43 = (*(v61 + 80) + 16) & ~*(v61 + 80);
        v44 = swift_allocObject();
        sub_1BD47B1C8(&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), &v44[v43]);
        v45 = &v44[(v5 + v43 + 3) & 0xFFFFFFFFFFFFFFFCLL];
        *v45 = 0;
        *(v45 + 1) = 0;
        v45[20] = BYTE4(v40);
        *(v45 + 4) = v40;
        aBlock[4] = sub_1BD47B57C;
        v71 = v44;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_100;
        v46 = _Block_copy(aBlock);
        v71, v47, v48, v49, v50, v51, v52, v53;
        v54 = v64;
        sub_1BE051F74();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1BD47AD44(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
        sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
        v55 = v66;
        v56 = v69;
        sub_1BE053664();
        v57 = v59;
        MEMORY[0x1BFB3FD90](v11, v54, v55, v46);
        _Block_release(v46);

        (*(v68 + 8))(v55, v56);
        (*(v65 + 8))(v54, v67);
        (v62)(v11, v42);
      }
    }
  }
}

uint64_t sub_1BD4735C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v38 = sub_1BE04D214();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SavingsView(0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
  v6 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1BE04D8B4(v39);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v6, v23, v24, v25, v26, v27, v28, v29;
  if (v41 >> 1 <= 0x7EuLL)
  {
    sub_1BE04D1E4();
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C34();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1BD026000, v31, v32, "Savings action sheet already set, ignoring", v33, 2u);
      MEMORY[0x1BFB45F20](v33, -1, -1);
    }

    return (*(v3 + 8))(v5, v38);
  }

  else
  {
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v39[0] = v35;
    v39[1] = v36;
    v41 = BYTE4(v37);
    v40 = v37;
    return sub_1BE04D8C4();
  }
}

void sub_1BD473854(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *(a1 + 24);
  v9 = (v8 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
  v10 = *(v8 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
  v11 = *(v8 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet + 8);
  *v9 = 0;
  v9[1] = 0;
  sub_1BD0D4744(v10, v11, a3, a4, a5, a6, a7, a8);
  v18 = (v8 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  v19 = *(v8 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  v20 = *(v8 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration + 8);
  *v18 = 0;
  v18[1] = 0;

  sub_1BD0D4744(v19, v20, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1BD4738B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v297 = a1;
  v276 = a2;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F70, &qword_1BE0D8778);
  MEMORY[0x1EEE9AC00](v273);
  v277 = &v254 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v274 = &v254 - v5;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F78, &qword_1BE0D8780);
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v264 = (&v254 - v6);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F80, &qword_1BE0D8788);
  MEMORY[0x1EEE9AC00](v261);
  v263 = &v254 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v262 = (&v254 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F88, &qword_1BE0D8790);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v275 = &v254 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v285 = &v254 - v13;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F90, &qword_1BE0D8798);
  MEMORY[0x1EEE9AC00](v257);
  v256 = &v254 - v14;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F98, &qword_1BE0D87A0);
  MEMORY[0x1EEE9AC00](v258);
  v278 = &v254 - v15;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FA0, &qword_1BE0D87A8);
  v268 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v260 = &v254 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v259 = &v254 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FA8, &qword_1BE0D87B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v272 = &v254 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v289 = &v254 - v22;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FB0, &qword_1BE0D87B8);
  v266 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v255 = &v254 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FB8, &qword_1BE0D87C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v286 = &v254 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v295 = &v254 - v27;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FC0, &qword_1BE0D87C8);
  v265 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v254 = &v254 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FC8, &qword_1BE0D87D0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v284 = &v254 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v254 - v32;
  v34 = sub_1BE04F5B4();
  v292 = v34;
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v254 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = v37;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FD0, &qword_1BE0D87D8) - 8;
  MEMORY[0x1EEE9AC00](v287);
  v283 = &v254 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v254 - v40;
  v298 = a1;
  type metadata accessor for SavingsSummaryView(0);
  sub_1BD47AD44(&qword_1EBD46FD8, type metadata accessor for SavingsSummaryView, &unk_1BE0D9810);
  sub_1BE051A44();
  sub_1BE04F594();
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FE0, &qword_1BE0D87E0) + 36);
  v43 = v35[2];
  v291 = v35 + 2;
  v296 = v43;
  v43(&v41[v42], v37, v34);
  v44 = v35[7];
  v290 = v35 + 7;
  v44(&v41[v42], 0, 1, v34);
  KeyPath = swift_getKeyPath();
  v45 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FE8, &qword_1BE0D8818) + 36)];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820);
  v47 = *(v46 + 28);
  v48 = v35[4];
  v293 = v35 + 4;
  v288 = v48;
  v48(&v45[v47], v37, v34);
  v49 = v33;
  v44(&v45[v47], 0, 1, v34);
  *v45 = KeyPath;
  v50 = *(v287 + 44);
  v51 = v44;
  KeyPath = v41;
  v52 = &v41[v50];
  v53 = v46;
  *v52 = xmmword_1BE0D82A0;
  *(v52 + 1) = xmmword_1BE0D82A0;
  v52[32] = 0;
  v54 = *(v297 + 8);
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v267 = v54;
  sub_1BE04D8B4(&v299);
  v55, v57, v58, v59, v60, v61, v62, v63;
  v56, v64, v65, v66, v67, v68, v69, v70;
  v71 = v299;
  LODWORD(v56) = [v299 supportsMoneyMovement];

  v73 = 1;
  v287 = v49;
  if (v56)
  {
    MEMORY[0x1EEE9AC00](v72);
    *(&v254 - 2) = v297;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47070, &qword_1BE0D8890);
    sub_1BD47C204();
    v74 = v254;
    sub_1BE051A44();
    v299 = sub_1BE051404();
    v75 = sub_1BE0518D4();
    *(v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470A0, &qword_1BE0D88A8) + 36)) = v75;
    v76 = v294;
    sub_1BE04F594();
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470A8, &qword_1BE0D88B0) + 36);
    v78 = v292;
    v296(v74 + v77, v76, v292);
    v51((v74 + v77), 0, 1, v78);
    v79 = swift_getKeyPath();
    v80 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470B0, &qword_1BE0D88B8) + 36));
    v81 = *(v53 + 28);
    v82 = v76;
    v49 = v287;
    v288(v80 + v81, v82, v78);
    v83 = v80 + v81;
    v84 = v279;
    v51(v83, 0, 1, v78);
    *v80 = v79;
    v85 = v74 + *(v84 + 36);
    *v85 = xmmword_1BE0CACB0;
    *(v85 + 16) = xmmword_1BE0CACB0;
    *(v85 + 32) = 0;
    sub_1BD0DE204(v74, v49, &qword_1EBD46FC0, &qword_1BE0D87C8);
    v73 = 0;
  }

  v86 = 1;
  (*(v265 + 56))(v49, v73, 1, v279);
  if (PKSavingsFDICSignageEnabled())
  {
    v299 = sub_1BE051404();
    v87 = sub_1BE0518D4();
    v88 = v294;
    sub_1BE04F594();
    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47060, &qword_1BE0D8880) + 36);
    v90 = v53;
    v91 = v255;
    v92 = v292;
    v296(&v255[v89], v88, v292);
    v51(&v91[v89], 0, 1, v92);
    *v91 = 5;
    *(v91 + 2) = 16777217;
    *(v91 + 2) = v87;
    v93 = swift_getKeyPath();
    v94 = &v91[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47068, &qword_1BE0D8888) + 36)];
    v95 = *(v90 + 28);
    v288(v94 + v95, v88, v92);
    v51(v94 + v95, 0, 1, v92);
    *v94 = v93;
    v96 = &v91[*(v280 + 36)];
    *v96 = xmmword_1BE0D82B0;
    *(v96 + 1) = xmmword_1BE0D82C0;
    v96[32] = 0;
    v97 = v91;
    v53 = v90;
    sub_1BD0DE204(v97, v295, &qword_1EBD46FB0, &qword_1BE0D87B8);
    v86 = 0;
  }

  (*(v266 + 56))(v295, v86, 1, v280);
  v98 = swift_getKeyPath();
  v99 = swift_getKeyPath();
  sub_1BE04D8B4(&v299);
  v98, v100, v101, v102, v103, v104, v105, v106;
  v99, v107, v108, v109, v110, v111, v112, v113;
  v121 = v299;
  if (v299 >> 62)
  {
    v252 = v299;
    v122 = sub_1BE053704();
    v121 = v252;
  }

  else
  {
    v122 = *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v121, v114, v115, v116, v117, v118, v119, v120;
  v280 = v53;
  if (v122 < 1)
  {
    v163 = 1;
    v156 = v289;
    v157 = v269;
  }

  else
  {
    sub_1BD476160(v256);
    sub_1BD47BFFC();
    v123 = v278;
    sub_1BE051A24();
    v124 = v53;
    v125 = v294;
    sub_1BE04F594();
    v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47058, &qword_1BE0D8878) + 36);
    v127 = v292;
    v296(v123 + v126, v125, v292);
    v51((v123 + v126), 0, 1, v127);
    v128 = swift_getKeyPath();
    v129 = (v123 + *(v258 + 36));
    v130 = *(v124 + 28);
    v288(v129 + v130, v125, v127);
    v51(v129 + v130, 0, 1, v127);
    *v129 = v128;
    v131 = swift_getKeyPath();
    v132 = swift_getKeyPath();
    sub_1BE04D8B4(&v299);
    v131, v133, v134, v135, v136, v137, v138, v139;
    v132, v140, v141, v142, v143, v144, v145, v146;
    v154 = v299;
    if (v299 >> 62)
    {
      v253 = v299;
      v155 = sub_1BE053704();
      v154 = v253;
    }

    else
    {
      v155 = *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v156 = v289;
    v157 = v269;
    v154, v147, v148, v149, v150, v151, v152, v153;
    if (v155 <= 1)
    {
      v158 = 0x4024000000000000;
    }

    else
    {
      v158 = 0xC01C000000000000;
    }

    v159 = v260;
    sub_1BD0DE204(v278, v260, &qword_1EBD46F98, &qword_1BE0D87A0);
    v160 = v159 + *(v157 + 36);
    *v160 = xmmword_1BE0D82D0;
    *(v160 + 16) = v158;
    *(v160 + 24) = 0xC030000000000000;
    *(v160 + 32) = 0;
    v161 = v159;
    v162 = v259;
    sub_1BD0DE204(v161, v259, &qword_1EBD46FA0, &qword_1BE0D87A8);
    sub_1BD0DE204(v162, v156, &qword_1EBD46FA0, &qword_1BE0D87A8);
    v163 = 0;
  }

  v164 = v296;
  v281 = v51;
  (*(v268 + 56))(v156, v163, 1, v157);
  v165 = swift_getKeyPath();
  v166 = swift_getKeyPath();
  sub_1BE04D8B4(&v299);
  v165, v167, v168, v169, v170, v171, v172, v173;
  v166, v174, v175, v176, v177, v178, v179, v180;
  v181 = v299;
  v182 = [v299 state];

  if (v182 == 1 || (v183 = swift_getKeyPath(), v184 = swift_getKeyPath(), sub_1BE04D8B4(&v299), v183, v185, v186, v187, v188, v189, v190, v191, v184, v192, v193, v194, v195, v196, v197, v198, v199 = v299, v200 = [v299 state], v199, v200 == 2))
  {
    v201 = *(v297 + *(type metadata accessor for SavingsView(0) + 44));
    type metadata accessor for TransactionList(0);
    sub_1BD47AD44(&qword_1EBD3AFF8, type metadata accessor for TransactionList, &unk_1BE0E1C30);
    v202 = v201;
    v279 = sub_1BE04E954();
    v204 = v203;
    v205 = PKAccountViewStyleToPKPaymentPassDetailViewStyle(0);
    v206 = [*&v202[OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher] paymentDataProvider];
    v207 = v292;
    v208 = [objc_allocWithZone(PKPaymentTransactionDetailsFactory) initWithContactResolver:0 peerPaymentWebService:0 paymentServiceDataProvider:v206 detailViewStyle:v205 context:0];
    swift_unknownObjectRelease();
    v209 = v202;
    v210 = sub_1BE04E954();
    v212 = v211;
    v213 = v294;
    sub_1BE04F594();
    v214 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47020, &qword_1BE0D8850) + 36);
    v215 = v262;
    v296(v262 + v214, v213, v207);
    v216 = v281;
    v281(v215 + v214, 0, 1, v207);
    *v215 = v210;
    v215[1] = v212;
    v215[2] = 0;
    v217 = swift_getKeyPath();
    v218 = (v215 + *(v261 + 36));
    v219 = *(v280 + 28);
    v220 = v213;
    v221 = v288;
    v288(v218 + v219, v220, v207);
    v216(v218 + v219, 0, 1, v207);
    *v218 = v217;
    v222 = v263;
    sub_1BD0DE19C(v215, v263, &qword_1EBD46F80, &qword_1BE0D8788);
    v223 = v264;
    *v264 = v279;
    v223[1] = v204;
    v223[2] = 0;
    v223[3] = v208;
    v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47028, &qword_1BE0D8858);
    sub_1BD0DE19C(v222, v223 + *(v224 + 48), &qword_1EBD46F80, &qword_1BE0D8788);
    v225 = v204;
    v226 = v208;
    sub_1BD0DE53C(v215, &qword_1EBD46F80, &qword_1BE0D8788);
    v227 = v222;
    v228 = v221;
    sub_1BD0DE53C(v227, &qword_1EBD46F80, &qword_1BE0D8788);

    v229 = v223;
    v164 = v296;
    v230 = v285;
    sub_1BD0DE204(v229, v285, &qword_1EBD46F78, &qword_1BE0D8780);
    v231 = 0;
  }

  else
  {
    v231 = 1;
    v230 = v285;
    v228 = v288;
  }

  v232 = (*(v270 + 56))(v230, v231, 1, v271);
  MEMORY[0x1EEE9AC00](v232);
  *(&v254 - 2) = v297;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FF0, &qword_1BE0D8828);
  sub_1BD47BF40();
  v233 = v274;
  sub_1BE051A44();
  v299 = sub_1BE051404();
  v234 = sub_1BE0518D4();
  *(v233 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47000, &qword_1BE0D8830) + 36)) = v234;
  v235 = v294;
  sub_1BE04F594();
  v236 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47008, &qword_1BE0D8838) + 36);
  v237 = v292;
  v164(v233 + v236, v235, v292);
  v238 = v281;
  v281((v233 + v236), 0, 1, v237);
  v239 = swift_getKeyPath();
  v240 = (v233 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47010, &qword_1BE0D8840) + 36));
  v241 = *(v280 + 28);
  v228(v240 + v241, v235, v237);
  v238(v240 + v241, 0, 1, v237);
  *v240 = v239;
  v242 = v233 + *(v273 + 36);
  *v242 = xmmword_1BE0D82E0;
  *(v242 + 16) = xmmword_1BE0D82F0;
  *(v242 + 32) = 0;
  v243 = v283;
  sub_1BD0DE19C(KeyPath, v283, &qword_1EBD46FD0, &qword_1BE0D87D8);
  v244 = v284;
  sub_1BD0DE19C(v287, v284, &qword_1EBD46FC8, &qword_1BE0D87D0);
  v245 = v286;
  sub_1BD0DE19C(v295, v286, &qword_1EBD46FB8, &qword_1BE0D87C0);
  v246 = v272;
  sub_1BD0DE19C(v289, v272, &qword_1EBD46FA8, &qword_1BE0D87B0);
  v247 = v275;
  sub_1BD0DE19C(v230, v275, &qword_1EBD46F88, &qword_1BE0D8790);
  v248 = v277;
  sub_1BD0DE19C(v233, v277, &qword_1EBD46F70, &qword_1BE0D8778);
  v249 = v276;
  sub_1BD0DE19C(v243, v276, &qword_1EBD46FD0, &qword_1BE0D87D8);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47018, &qword_1BE0D8848);
  sub_1BD0DE19C(v244, v249 + v250[12], &qword_1EBD46FC8, &qword_1BE0D87D0);
  sub_1BD0DE19C(v245, v249 + v250[16], &qword_1EBD46FB8, &qword_1BE0D87C0);
  sub_1BD0DE19C(v246, v249 + v250[20], &qword_1EBD46FA8, &qword_1BE0D87B0);
  sub_1BD0DE19C(v247, v249 + v250[24], &qword_1EBD46F88, &qword_1BE0D8790);
  sub_1BD0DE19C(v248, v249 + v250[28], &qword_1EBD46F70, &qword_1BE0D8778);
  sub_1BD0DE53C(v233, &qword_1EBD46F70, &qword_1BE0D8778);
  sub_1BD0DE53C(v285, &qword_1EBD46F88, &qword_1BE0D8790);
  sub_1BD0DE53C(v289, &qword_1EBD46FA8, &qword_1BE0D87B0);
  sub_1BD0DE53C(v295, &qword_1EBD46FB8, &qword_1BE0D87C0);
  sub_1BD0DE53C(v287, &qword_1EBD46FC8, &qword_1BE0D87D0);
  sub_1BD0DE53C(KeyPath, &qword_1EBD46FD0, &qword_1BE0D87D8);
  sub_1BD0DE53C(v248, &qword_1EBD46F70, &qword_1BE0D8778);
  sub_1BD0DE53C(v247, &qword_1EBD46F88, &qword_1BE0D8790);
  sub_1BD0DE53C(v246, &qword_1EBD46FA8, &qword_1BE0D87B0);
  sub_1BD0DE53C(v286, &qword_1EBD46FB8, &qword_1BE0D87C0);
  sub_1BD0DE53C(v284, &qword_1EBD46FC8, &qword_1BE0D87D0);
  return sub_1BD0DE53C(v283, &qword_1EBD46FD0, &qword_1BE0D87D8);
}

uint64_t sub_1BD475154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(a1 + 8);
  v11 = type metadata accessor for SavingsView(0);
  v12 = *(a1 + *(v11 + 48));
  v13 = *(a1 + *(v11 + 52));
  *a2 = v10;
  type metadata accessor for AccountBalanceHistory(0);
  sub_1BD47AD44(&qword_1EBD47108, type metadata accessor for AccountBalanceHistory, &unk_1BE0B6F10);
  v14 = v10;
  v15 = v12;
  v16 = v13;
  a2[1] = sub_1BE04E954();
  a2[2] = v17;
  a2[3] = v16;
  type metadata accessor for SavingsSummaryView(0);
  v18 = type metadata accessor for AccountBalance(0);
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_1BD0DE19C(v9, v6, &qword_1EBD40EC8, &unk_1BE0C9A60);
  sub_1BE051694();
  return sub_1BD0DE53C(v9, &qword_1EBD40EC8, &unk_1BE0C9A60);
}

uint64_t sub_1BD47532C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47098, &qword_1BE0D88A0);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470B8, &qword_1BE0D88C0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470C0, &qword_1BE0D88C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47088, &qword_1BE0D8898);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v28 - v11;
  v13 = sub_1BE04EB24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SavingsView(0);
  sub_1BD70A2A0(v16);
  v17 = sub_1BE04EB14();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    *v12 = sub_1BE04F7B4();
    *(v12 + 1) = 0x4030000000000000;
    v12[16] = 0;
    sub_1BD475DD0(a1, sub_1BD47C2E8, &unk_1F3BA84D0, sub_1BD47C2F4, v10);
    sub_1BE051CD4();
    v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470D0, &qword_1BE0D88D8) + 44)];
    sub_1BE04EE54();
    sub_1BD0DE204(v10, v18, &qword_1EBD470C0, &qword_1BE0D88C8);
    v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470D8, &qword_1BE0D88E0) + 36));
    v20 = v37;
    v19[4] = v36;
    v19[5] = v20;
    v19[6] = v38;
    v21 = v33;
    *v19 = v32;
    v19[1] = v21;
    v22 = v35;
    v19[2] = v34;
    v19[3] = v22;
    v23 = &qword_1EBD47088;
    v24 = &qword_1BE0D8898;
    sub_1BD0DE19C(v12, v7, &qword_1EBD47088, &qword_1BE0D8898);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD47080, &qword_1EBD47088, &qword_1BE0D8898, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD47090, &qword_1EBD47098, &qword_1BE0D88A0, MEMORY[0x1E697BF80]);
    sub_1BE04F9A4();
    v25 = v12;
  }

  else
  {
    *v4 = sub_1BE050194();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470C8, &qword_1BE0D88D0);
    sub_1BD475828(a1, &v4[*(v26 + 44)]);
    v23 = &qword_1EBD47098;
    v24 = &qword_1BE0D88A0;
    sub_1BD0DE19C(v4, v7, &qword_1EBD47098, &qword_1BE0D88A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD47080, &qword_1EBD47088, &qword_1BE0D8898, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD47090, &qword_1EBD47098, &qword_1BE0D88A0, MEMORY[0x1E697BF80]);
    sub_1BE04F9A4();
    v25 = v4;
  }

  return sub_1BD0DE53C(v25, v23, v24);
}

uint64_t sub_1BD475828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470C0, &qword_1BE0D88C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47088, &qword_1BE0D8898);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470E8, &qword_1BE0D8928);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470F0, &qword_1BE0D8930);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470F8, &qword_1BE0D8938);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  *v13 = 0x4030000000000000;
  v13[8] = 0;
  sub_1BD475DD0(a1, sub_1BD47C5C0, &unk_1F3BA8570, sub_1BD47C5C4, &v13[*(v11 + 52)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v13, v17, &qword_1EBD470E8, &qword_1BE0D8928);
  v28 = &v17[*(v15 + 44)];
  v29 = v52;
  *(v28 + 4) = v51;
  *(v28 + 5) = v29;
  *(v28 + 6) = v53;
  v30 = v48;
  *v28 = v47;
  *(v28 + 1) = v30;
  v31 = v50;
  *(v28 + 2) = v49;
  *(v28 + 3) = v31;
  KeyPath = swift_getKeyPath();
  sub_1BD0DE204(v17, v24, &qword_1EBD470F0, &qword_1BE0D8930);
  v33 = &v24[*(v19 + 44)];
  *v33 = KeyPath;
  *(v33 + 1) = 1;
  v33[16] = 0;
  sub_1BD0DE204(v24, v27, &qword_1EBD470F8, &qword_1BE0D8938);
  *v9 = sub_1BE04F7B4();
  *(v9 + 1) = 0x4030000000000000;
  v9[16] = 0;
  v34 = v44;
  sub_1BD475DD0(a1, sub_1BD47C5C0, &unk_1F3BA8520, sub_1BD47C5C4, v44);
  sub_1BE051CD4();
  v35 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470D0, &qword_1BE0D88D8) + 44)];
  sub_1BE04EE54();
  sub_1BD0DE204(v34, v35, &qword_1EBD470C0, &qword_1BE0D88C8);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470D8, &qword_1BE0D88E0) + 36));
  v37 = v59;
  v36[4] = v58;
  v36[5] = v37;
  v36[6] = v60;
  v38 = v55;
  *v36 = v54;
  v36[1] = v38;
  v39 = v57;
  v36[2] = v56;
  v36[3] = v39;
  sub_1BD0DE19C(v27, v21, &qword_1EBD470F8, &qword_1BE0D8938);
  v40 = v45;
  sub_1BD0DE19C(v9, v45, &qword_1EBD47088, &qword_1BE0D8898);
  v41 = v46;
  sub_1BD0DE19C(v21, v46, &qword_1EBD470F8, &qword_1BE0D8938);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47100, &unk_1BE0D8970);
  sub_1BD0DE19C(v40, v41 + *(v42 + 48), &qword_1EBD47088, &qword_1BE0D8898);
  sub_1BD0DE53C(v9, &qword_1EBD47088, &qword_1BE0D8898);
  sub_1BD0DE53C(v27, &qword_1EBD470F8, &qword_1BE0D8938);
  sub_1BD0DE53C(v40, &qword_1EBD47088, &qword_1BE0D8898);
  return sub_1BD0DE53C(v21, &qword_1EBD470F8, &qword_1BE0D8938);
}

uint64_t sub_1BD475DD0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v39 = a3;
  v44 = a6;
  v7 = type metadata accessor for SavingsView(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36[1] = v9;
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MoneyTransferButton(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v41 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40 = v36 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v36 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v36 - v20;
  v22 = *(a1 + 8);
  v37 = type metadata accessor for SavingsView;
  v38 = a1;
  sub_1BD47C300(a1, v10, type metadata accessor for SavingsView);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  sub_1BD47B1C8(v10, v24 + v23);
  *v21 = 1;
  v36[0] = type metadata accessor for AccountModel(0);
  sub_1BD47AD44(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
  v25 = v22;
  *(v21 + 1) = sub_1BE04E954();
  *(v21 + 2) = v26;
  *(v21 + 3) = v39;
  *(v21 + 4) = v24;
  v27 = *(v12 + 40);
  *&v21[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  swift_storeEnumTagMultiPayload();
  sub_1BD47C300(v38, v10, v37);
  v28 = swift_allocObject();
  sub_1BD47B1C8(v10, v28 + v23);
  *v18 = 0;
  *(v18 + 1) = sub_1BE04E954();
  *(v18 + 2) = v29;
  *(v18 + 3) = v43;
  *(v18 + 4) = v28;
  v30 = *(v12 + 40);
  *&v18[v30] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v31 = v40;
  sub_1BD47C300(v21, v40, type metadata accessor for MoneyTransferButton);
  v32 = v41;
  sub_1BD47C300(v18, v41, type metadata accessor for MoneyTransferButton);
  v33 = v44;
  sub_1BD47C300(v31, v44, type metadata accessor for MoneyTransferButton);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470E0, &qword_1BE0D8920);
  sub_1BD47C300(v32, v33 + *(v34 + 48), type metadata accessor for MoneyTransferButton);
  sub_1BD183810(v18);
  sub_1BD183810(v21);
  sub_1BD183810(v32);
  return sub_1BD183810(v31);
}

id sub_1BD476160@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v2 = sub_1BE04BD74();
  v131 = *(v2 - 8);
  v132 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v130 = v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v129);
  v128 = v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v127 = v118 - v6;
  v7 = type metadata accessor for SavingsView(0);
  v126 = *(v7 - 8);
  v8 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v125 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47050, &unk_1BE0D8868);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v118 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47040, &qword_1BE0D8860);
  MEMORY[0x1EEE9AC00](v119);
  v120 = v118 - v13;
  v14 = v1[2];
  v15 = v1[3];
  v16 = type metadata accessor for SavingsDashboardMessageSource(0);
  v17 = sub_1BD47AD44(&qword_1EBD3BD50, type metadata accessor for SavingsDashboardMessageSource, &unk_1BE10AFF0);
  v118[2] = v15;
  v118[3] = v14;
  v118[0] = v16;
  v18 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  v118[1] = v17;
  sub_1BE04E974();
  KeyPath, v20, v21, v22, v23, v24, v25, v26;

  v124 = v133;
  v123 = v134;
  v122 = v1[1];
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_1BE04D8B4(&v133);
  v27, v29, v30, v31, v32, v33, v34, v35;
  v28, v36, v37, v38, v39, v40, v41, v42;
  v43 = v133;
  type metadata accessor for FCCStepUpModel(0);
  sub_1BD47AD44(&qword_1EBD46E28, type metadata accessor for FCCStepUpModel, &unk_1BE10AFB8);
  v44 = v12;
  v45 = sub_1BE04E3D4();
  v46 = swift_getKeyPath();
  sub_1BE04E974();
  v46, v47, v48, v49, v50, v51, v52, v53;
  v45, v54, v55, v56, v57, v58, v59, v60;
  v61 = v133;
  v62 = v134;
  LOBYTE(v46) = BYTE8(v134);
  v63 = v125;
  sub_1BD47C300(v1, v125, type metadata accessor for SavingsView);
  v64 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v65 = swift_allocObject();
  sub_1BD47B1C8(v63, v65 + v64);
  v66 = v44 + *(v10 + 44);
  *v66 = v43;
  *(v66 + 8) = v61;
  *(v66 + 16) = v62;
  *(v66 + 24) = v46;
  *(v66 + 32) = sub_1BD47C368;
  *(v66 + 40) = v65;
  v67 = type metadata accessor for SavingsFCCStepUpPresenter(0);
  v68 = type metadata accessor for FeatureError(0);
  v69 = v127;
  (*(*(v68 - 8) + 56))(v127, 1, 1, v68);
  sub_1BD0DE19C(v69, v128, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BE051694();
  sub_1BD0DE53C(v69, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v70 = v66 + *(v67 + 32);
  *v70 = sub_1BD3633F4;
  *(v70 + 8) = 0;
  *(v70 + 16) = 0;
  *v44 = v124;
  *(v44 + 8) = v123;
  v71 = swift_getKeyPath();
  v72 = swift_getKeyPath();
  sub_1BE04D8B4(&v133);
  v71, v73, v74, v75, v76, v77, v78, v79;
  v72, v80, v81, v82, v83, v84, v85, v86;
  v87 = v133;
  if (v133)
  {
    v88 = [v133 contactNumber];

    if (v88)
    {
      v87 = sub_1BE052434();
      v90 = v89;

      goto LABEL_6;
    }

    v87 = 0;
  }

  v90 = 0;
LABEL_6:
  v92 = v131;
  v91 = v132;
  v93 = v130;
  (*(v131 + 104))(v130, *MEMORY[0x1E69B80E0], v132);
  result = PKPassKitBundle();
  if (result)
  {
    v95 = result;
    v96 = sub_1BE04B6F4();
    v98 = v97;

    (*(v92 + 8))(v93, v91);
    v99 = sub_1BE04E964();
    v100 = swift_getKeyPath();
    sub_1BE04E974();
    v100, v101, v102, v103, v104, v105, v106, v107;

    v108 = v133;
    v109 = v134;
    v110 = BYTE8(v134);
    v111 = v120;
    sub_1BD0DE204(v44, v120, &qword_1EBD47050, &unk_1BE0D8868);
    v112 = v111 + *(v119 + 36);
    *v112 = v87;
    *(v112 + 8) = v90;
    *(v112 + 16) = v96;
    *(v112 + 24) = v98;
    *(v112 + 32) = 0;
    *(v112 + 40) = v108;
    *(v112 + 48) = v109;
    *(v112 + 56) = v110;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F90, &qword_1BE0D8798);
    v114 = v121;
    v115 = (v121 + *(v113 + 36));
    v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v117 = sub_1BE0505C4();
    (*(*(v117 - 8) + 56))(v115 + v116, 1, 1, v117);
    *v115 = swift_getKeyPath();
    return sub_1BD0DE204(v111, v114, &qword_1EBD47040, &qword_1BE0D8860);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD476910(uint64_t a1@<X8>)
{
  v2 = v1;
  v97[1] = a1;
  v3 = type metadata accessor for SavingsView(0);
  v97[0] = *(v3 - 8);
  v4 = *(v97[0] + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = 0;
  v107 = 0xE000000000000000;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  sub_1BE04D8B4(&aBlock);
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
  v25 = aBlock;
  if (aBlock)
  {
    v26 = [aBlock currentBalance];

    if (v26)
    {
      if ([v26 pk_isNegativeNumber])
      {
        (*(v6 + 104))(v8, *MEMORY[0x1E69B80E0], v5);
        v27 = PKPassKitBundle();
        if (!v27)
        {
          __break(1u);
          return;
        }

        v28 = v27;
        v29 = sub_1BE04B6F4();
        v31 = v30;

        (*(v6 + 8))(v8, v5);
        MEMORY[0x1BFB3F610](v29, v31);

        v31, v32, v33, v34, v35, v36, v37, v38;
      }

      else
      {
      }
    }
  }

  v39 = sub_1BE04C124();
  v41 = v40;
  MEMORY[0x1BFB3F610](v39);
  v41, v42, v43, v44, v45, v46, v47, v48;
  sub_1BE04C124();
  v50 = v49;
  v51 = MEMORY[0x1E69E7CC0];
  v105 = MEMORY[0x1E69E7CC0];
  sub_1BD47C300(v2, v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
  v52 = (*(v97[0] + 80) + 16) & ~*(v97[0] + 80);
  v53 = swift_allocObject();
  sub_1BD47B1C8(v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v53 + v52);
  v54 = objc_allocWithZone(PKTextRangeHyperlink);
  v55 = sub_1BE052404();
  v50, v56, v57, v58, v59, v60, v61, v62;
  v102 = sub_1BD47C380;
  v103 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v99 = 1107296256;
  v100 = sub_1BD126964;
  v101 = &block_descriptor_178;
  v63 = _Block_copy(&aBlock);
  v103, v64, v65, v66, v67, v68, v69, v70;
  v71 = [v54 initWithLinkText:v55 action:v63];
  _Block_release(v63);

  if (v71)
  {
    v72 = v71;
    MEMORY[0x1BFB3F7A0]();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v51 = v105;
  }

  v73 = v107;
  aBlock = v51;
  v99 = 4;
  LOBYTE(v100) = 0;
  v101 = v106;
  v102 = v107;
  v103 = 0;
  v104 = 0;
  sub_1BE052434();
  v75 = v74;
  sub_1BD10E4BC();
  sub_1BE050DE4();
  v73, v76, v77, v78, v79, v80, v81, v82;
  v51, v83, v84, v85, v86, v87, v88, v89;
  v75, v90, v91, v92, v93, v94, v95, v96;
}

void sub_1BD476DD0(int64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v166 = a2;
  v160 = a1;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F30, &qword_1BE0D86A8);
  v150 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v147 = v139 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F48, &qword_1BE0D8748);
  v154 = *(v7 - 8);
  v155 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v149 = v139 - v8;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F28, &qword_1BE0D86A0);
  MEMORY[0x1EEE9AC00](v148);
  v156 = v139 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F18, &qword_1BE0D8698);
  v157 = *(v10 - 8);
  v158 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v151 = v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v152 = v139 - v13;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F08, &qword_1BE0D8690);
  MEMORY[0x1EEE9AC00](v164);
  v159 = v139 - v14;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F50, &qword_1BE0D8750);
  MEMORY[0x1EEE9AC00](v171);
  v169 = (v139 - v15);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F58, &qword_1BE0D8758);
  MEMORY[0x1EEE9AC00](v162);
  v163 = v139 - v16;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46EF8, &qword_1BE0D8688);
  MEMORY[0x1EEE9AC00](v168);
  v165 = v139 - v17;
  v18 = type metadata accessor for SavingsView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v139 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v139 - v26;
  v28 = [objc_opt_self() sharedService];
  if (!v28)
  {
    __break(1u);
    goto LABEL_46;
  }

  v29 = v28;
  v30 = [v28 peerPaymentService];

  if (!v30)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v167 = a4;
  v31 = [v30 account];

  v32 = [objc_opt_self() sharedInstance];
  if (!v32)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v33 = v32;
  v34 = a3 & 0xFFFFFFFFFFLL;
  if (!v31 || (v35 = [v31 associatedPassUniqueID]) == 0)
  {
    v35 = 0;
  }

  v172 = v31;
  v36 = [v33 passWithUniqueID_];

  v37 = [v36 paymentPass];
  if (!(v34 >> 38))
  {
    v38 = 2;
    goto LABEL_11;
  }

  if (v34 >> 38 != 1)
  {
    if (v166 | v160 || v34 != 0x8000000000)
    {
      sub_1BD47C300(v170, v27, type metadata accessor for SavingsView);
      v98 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v99 = swift_allocObject();
      sub_1BD47B1C8(v27, v99 + v98);
      v100 = v169;
      *v169 = sub_1BD47C5BC;
      v100[1] = v99;
      swift_storeEnumTagMultiPayload();
      sub_1BD47BA38();
      sub_1BD47BCBC();
      swift_retain_n();
      sub_1BE04F9A4();

      return;
    }

    v69 = v172;
    v161 = v37;
    if (!v172 || !v37)
    {
      v101 = v159;
      (*(v157 + 56))(v159, 1, 1, v158);
LABEL_41:
      sub_1BD0DE19C(v101, v163, &qword_1EBD46F08, &qword_1BE0D8690);
      swift_storeEnumTagMultiPayload();
      sub_1BD1829A4();
      sub_1BD47BAC4();
      v138 = v165;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v138, v169, &qword_1EBD46EF8, &qword_1BE0D8688);
      swift_storeEnumTagMultiPayload();
      sub_1BD47BA38();
      sub_1BD47BCBC();
      sub_1BE04F9A4();

      sub_1BD0DE53C(v138, &qword_1EBD46EF8, &qword_1BE0D8688);
      v66 = v101;
      v67 = &qword_1EBD46F08;
      v68 = &qword_1BE0D8690;
      goto LABEL_12;
    }

    v70 = v170;
    v160 = v170[1];
    KeyPath = swift_getKeyPath();
    v71 = swift_getKeyPath();
    v72 = v69;
    v73 = v37;
    v166 = v72;
    v145 = v73;
    v74 = KeyPath;
    sub_1BE04D8B4(&v188);
    v74, v75, v76, v77, v78, v79, v80, v81;
    v71, v82, v83, v84, v85, v86, v87, v88;
    v89 = v188;
    sub_1BD47C300(v70, v24, type metadata accessor for SavingsView);
    v90 = *(v19 + 80);
    v91 = ((v90 + 16) & ~v90);
    v143 = swift_allocObject();
    sub_1BD47B1C8(v24, &v91[v143]);
    sub_1BD47C300(v70, v21, type metadata accessor for SavingsView);
    KeyPath = v90;
    v144 = &v91[v20];
    v92 = swift_allocObject();
    v160 = v91;
    sub_1BD47B1C8(v21, &v91[v92]);
    v93 = v89;
    v94 = v166;
    v95 = [v166 currentBalance];
    if (v95)
    {
      v96 = v95;
      v97 = [v95 amount];

      if (!v97)
      {

        goto LABEL_25;
      }

      v188 = 0uLL;
      LODWORD(v189) = 0;
      BYTE4(v189) = 1;
      sub_1BE0533E4();

      if (BYTE4(v189))
      {

LABEL_38:
        v102 = 0;
        v97 = 0;
        goto LABEL_39;
      }

      v103 = *(&v188 + 1);
      v142 = v189;
      v104 = [v94 currentBalance];
      if (v104)
      {
        v105 = v104;
        v106 = [v104 currency];

        if (!v106)
        {

          v102 = 0;
          v97 = 0;
LABEL_40:
          v113 = v145;
          *&v180 = v145;
          *(&v180 + 1) = v94;
          v114 = v94;
          *&v181 = v93;
          *(&v181 + 1) = sub_1BD47BD88;
          *&v182 = v143;
          *(&v182 + 1) = sub_1BD47BDA0;
          *&v183 = v92;
          BYTE8(v183) = v102;
          *&v184 = v97;
          *(&v184 + 1) = v106;
          v115 = v170;
          v116 = sub_1BD479058();
          v117 = sub_1BD47BC68();
          v118 = v147;
          sub_1BE050D04();
          v116, v119, v120, v121, v122, v123, v124, v125;
          v190 = v182;
          v191 = v183;
          v192 = v184;
          v188 = v180;
          v189 = v181;
          sub_1BD47BDA4(&v188);
          *&v180 = &type metadata for PostApplyAppleCashTransferView;
          *(&v180 + 1) = v117;
          swift_getOpaqueTypeConformance2();
          v126 = v149;
          v127 = v153;
          sub_1BE050E44();

          (*(v150 + 8))(v118, v127);
          sub_1BD47C300(v115, v27, type metadata accessor for SavingsView);
          v128 = swift_allocObject();
          v129 = v160;
          sub_1BD47B1C8(v27, v128 + v160);
          v130 = v156;
          (*(v154 + 4))(v156, v126, v155);
          v131 = (v130 + *(v148 + 36));
          *v131 = sub_1BD47BDF8;
          v131[1] = v128;
          v131[2] = 0;
          v131[3] = 0;
          sub_1BD47C300(v115, v27, type metadata accessor for SavingsView);
          v132 = swift_allocObject();
          sub_1BD47B1C8(v27, v132 + v129);
          v133 = v151;
          sub_1BD0DE204(v130, v151, &qword_1EBD46F28, &qword_1BE0D86A0);
          v134 = v158;
          v135 = (v133 + *(v158 + 36));
          *v135 = 0;
          v135[1] = 0;
          v135[2] = sub_1BD47BE10;
          v135[3] = v132;
          v136 = v133;
          v137 = v152;
          sub_1BD0DE204(v136, v152, &qword_1EBD46F18, &qword_1BE0D8698);
          v101 = v159;
          sub_1BD0DE204(v137, v159, &qword_1EBD46F18, &qword_1BE0D8698);
          (*(v157 + 56))(v101, 0, 1, v134);
          goto LABEL_41;
        }

        v107 = [v93 oneTimeDepositWithAppleCashFeatureDescriptor];

        if (!v107)
        {
          goto LABEL_37;
        }

        v141 = v103;
        v97 = [v107 maximumAmount];
        if (v97)
        {
          v180 = 0uLL;
          LODWORD(v181) = 0;
          BYTE4(v181) = 1;
          sub_1BE0533E4();

          if ((BYTE4(v181) & 1) == 0)
          {
            v140 = *(&v180 + 1);
            v139[1] = v181;
            if (MEMORY[0x1BFB403F0](v180))
            {
              v108 = sub_1BE053344();
              v109 = PKCurrencyAmountMake();

              if (v109)
              {
                v97 = [v109 formattedStringValue];

                if (v97)
                {
                  v110 = sub_1BE052434();
                  v111 = v97;
                  v97 = v110;
                  v106 = v112;
                }

                else
                {

                  v106 = 0;
                }

                v102 = 1;
                goto LABEL_40;
              }

LABEL_50:
              __break(1u);
              return;
            }
          }

LABEL_37:
          goto LABEL_38;
        }

LABEL_25:
        v102 = 0;
LABEL_39:
        v106 = 0;
        goto LABEL_40;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v38 = 3;
LABEL_11:
  v166 = v38;
  v39 = v170[1];
  sub_1BD47C300(v170, v27, type metadata accessor for SavingsView);
  v40 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v159 = swift_allocObject();
  sub_1BD47B1C8(v27, v159 + v40);
  v177 = 0;
  *&v180 = MEMORY[0x1E69E7CC0];
  v170 = v172;
  v160 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE40, &qword_1BE0BBF40);
  sub_1BE051694();
  v158 = *(&v188 + 1);
  v41 = v188;
  *&v180 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE48, &qword_1BE0BBF48);
  sub_1BE051694();
  v42 = *(&v188 + 1);
  v157 = v188;
  type metadata accessor for AccountModel(0);
  sub_1BD47AD44(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
  v43 = v39;
  v44 = sub_1BE04E954();
  v155 = v45;
  v156 = v44;
  v46 = v45;
  *&v188 = MEMORY[0x1BFB403C0](0);
  *(&v188 + 1) = v47;
  LODWORD(v189) = v48;
  type metadata accessor for Decimal(0);
  sub_1BE051694();
  v173 = v178;
  v174 = v179;
  type metadata accessor for AccountScheduleTransferModel();
  v49 = swift_allocObject();
  v50 = v37;
  v161 = v37;
  v51 = v49;
  v52 = [objc_opt_self() sharedService];
  v51[5] = 0;
  v51[6] = 0;
  v51[4] = v52;
  swift_beginAccess();
  v53 = v43;
  v51[2] = sub_1BE04E954();
  v51[3] = v54;
  swift_endAccess();
  *&v188 = v44;
  *(&v188 + 1) = v46;
  v154 = sub_1BD571878;
  *&v189 = sub_1BD571878;
  *(&v189 + 1) = 0;
  LODWORD(v153) = v177;
  LOBYTE(v190) = v177;
  *(&v190 + 1) = *v176;
  DWORD1(v190) = *&v176[3];
  *(&v190 + 1) = v51;
  *&v191 = v166;
  v55 = v172;
  *(&v191 + 1) = v172;
  *&v192 = v50;
  v56 = v158;
  v57 = v159;
  *(&v192 + 1) = sub_1BD47C5BC;
  v193 = v159;
  v195 = v174;
  v194 = v173;
  v196 = v41;
  v197 = v158;
  v58 = v157;
  *&v198 = v157;
  *(&v198 + 1) = v42;
  sub_1BD572D70();
  v180 = v198;
  v175 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60, &qword_1BE0D8760);
  sub_1BE0516B4();
  *&v180 = v156;
  *(&v180 + 1) = v155;
  v181 = v154;
  LOBYTE(v182) = v153;
  *(&v182 + 1) = *v176;
  DWORD1(v182) = *&v176[3];
  *(&v182 + 1) = v51;
  *&v183 = v166;
  *(&v183 + 1) = v55;
  *&v184 = v161;
  *(&v184 + 1) = sub_1BD47C5BC;
  *&v185[0] = v57;
  *(&v185[1] + 8) = v174;
  *(v185 + 8) = v173;
  *(&v185[2] + 1) = v41;
  *&v186 = v56;
  *(&v186 + 1) = v58;
  v187 = v42;
  v60 = v185[2];
  v61 = v163;
  *(v163 + 96) = v185[1];
  *(v61 + 112) = v60;
  *(v61 + 128) = v186;
  *(v61 + 144) = v42;
  v62 = v183;
  *(v61 + 32) = v182;
  *(v61 + 48) = v62;
  v63 = v185[0];
  *(v61 + 64) = v184;
  *(v61 + 80) = v63;
  v64 = v181;
  *v61 = v180;
  *(v61 + 16) = v64;
  swift_storeEnumTagMultiPayload();
  sub_1BD182A34(&v180, &v173);
  sub_1BD1829A4();
  sub_1BD47BAC4();
  v65 = v165;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v65, v169, &qword_1EBD46EF8, &qword_1BE0D8688);
  swift_storeEnumTagMultiPayload();
  sub_1BD47BA38();
  sub_1BD47BCBC();
  sub_1BE04F9A4();

  sub_1BD182A90(&v180);
  v66 = v65;
  v67 = &qword_1EBD46EF8;
  v68 = &qword_1BE0D8688;
LABEL_12:
  sub_1BD0DE53C(v66, v67, v68);
}

uint64_t sub_1BD477F60(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  v8 = sub_1BE051F54();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BE051FA4();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SavingsView(0);
  v57 = *(v11 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = sub_1BE051FC4();
  v58 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  sub_1BE04D8B4(aBlock);
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  v19, v27, v28, v29, v30, v31, v32, v33;
  if (LOBYTE(aBlock[0]) == 1)
  {
    sub_1BD47860C();
    if (v34)
    {

      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v35 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v67 = *(v58 + 8);
      v67(v14, v65);
      sub_1BD47C300(a1, &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
      v36 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v37 = swift_allocObject();
      sub_1BD47B1C8(&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
      aBlock[4] = sub_1BD47BD28;
      v69 = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_74;
      v38 = _Block_copy(aBlock);
      v69, v39, v40, v41, v42, v43, v44, v45;
      v46 = v59;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD47AD44(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
      v47 = v61;
      v48 = v64;
      sub_1BE053664();
      MEMORY[0x1BFB3FD90](v17, v46, v47, v38);
      _Block_release(v38);

      (*(v63 + 8))(v47, v48);
      (*(v60 + 8))(v46, v62);
      return (v67)(v17, v65);
    }

    else
    {
      sub_1BE04D194();
      v53 = sub_1BE04D204();
      v54 = sub_1BE052C54();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1BD026000, v53, v54, "Skipping postApplyTransfer: Payment request not available.", v55, 2u);
        MEMORY[0x1BFB45F20](v55, -1, -1);
      }

      return (*(v66 + 8))(v7, v67);
    }
  }

  else
  {
    sub_1BE04D194();
    v50 = sub_1BE04D204();
    v51 = sub_1BE052C54();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1BD026000, v50, v51, "Not showing postApplyTransfer. Account is not new", v52, 2u);
      MEMORY[0x1BFB45F20](v52, -1, -1);
    }

    return (*(v66 + 8))(v4, v67);
  }
}

void sub_1BD47860C()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  sub_1BD479528();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [objc_opt_self() sharedService];
  if (!v12)
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v12 peerPaymentService];

  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 account];

  if (v15)
  {
    v16 = [objc_opt_self() sharedInstance];
    if (v16)
    {
      v17 = v16;
      v18 = [v15 associatedPassUniqueID];
      v19 = [v17 passWithUniqueID_];

      v20 = [v19 paymentPass];
      v21 = v15;
      if (PKPeerPaymentCanPerformAccountServicePayments())
      {
        KeyPath = swift_getKeyPath();
        v23 = swift_getKeyPath();
        sub_1BE04D8B4(&v55);
        KeyPath, v24, v25, v26, v27, v28, v29, v30;
        v23, v31, v32, v33, v34, v35, v36, v37;
        v38 = v55;
        v39 = objc_allocWithZone(MEMORY[0x1E69B8410]);
        sub_1BD0E5E8C(0, &qword_1EBD4E090, 0x1E69B83A8);
        v40 = v11;
        v41 = v20;
        v42 = sub_1BE052724();
        v43 = [v39 initWithAccount:v38 peerPaymentAccount:v21 peerPaymentPass:v41 transferType:2 fundingSources:v42 currencyAmount:v40];

        if (v43 && (v44 = v43, ![v43 accountPaymentSupportsPeerPayment]))
        {
          sub_1BE04D194();
          v51 = sub_1BE04D204();
          v52 = sub_1BE052C34();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_1BD026000, v51, v52, "PaymentRequest failed. Peer payment not supported", v53, 2u);
            MEMORY[0x1BFB45F20](v53, -1, -1);
          }

          else
          {
          }

          (*(v1 + 8))(v9, v0);
        }

        else
        {
        }
      }

      else
      {

        sub_1BE04D194();
        v48 = sub_1BE04D204();
        v49 = sub_1BE052C34();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1BD026000, v48, v49, "PaymentRequest failed. Peer payment cannot perform", v50, 2u);
          MEMORY[0x1BFB45F20](v50, -1, -1);
        }

        else
        {
        }

        (*(v1 + 8))(v6, v0);
      }

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  sub_1BE04D194();
  v45 = sub_1BE04D204();
  v46 = sub_1BE052C34();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1BD026000, v45, v46, "PaymentRequest failed. Peer payment account is nil", v47, 2u);
    MEMORY[0x1BFB45F20](v47, -1, -1);
  }

  else
  {
  }

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BD478B90(uint64_t a1)
{
  type metadata accessor for SavingsView(0);
  type metadata accessor for FCCStepUpModel(0);
  sub_1BD47AD44(&qword_1EBD46E28, type metadata accessor for FCCStepUpModel, &unk_1BE10AFB8);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BE04D8C4();
}

void sub_1BD478C94(uint64_t a1)
{
  v2 = [objc_allocWithZone(PKAccountLegalDisclosureViewController) initWithFeature_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  if (*(a1 + *(type metadata accessor for SavingsView(0) + 40)))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong presentViewController:v3 animated:1 completion:0];
    }
  }

  else
  {
    type metadata accessor for ObservableHostingController();
    sub_1BD47AD44(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD478DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BD4735C4(a2, a3, a4 & 0xFFFFFFFFFFLL);
  type metadata accessor for SavingsView(0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
  v4 = sub_1BE04E3C4();
  v4[OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear] = 1;

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD478E8C(uint64_t a1)
{
  v2 = sub_1BE050144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SavingsView(0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = 0;
  v10 = 0;
  v12 = -2;
  v11 = 0;
  sub_1BE04D8C4();
  sub_1BD1DEDD4();
  sub_1BD70A4F8(v5);
  v8 = a1;
  sub_1BE050134();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD479058()
{
  v0 = sub_1BE04EB24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SavingsView(0);
  sub_1BD70A2A0(v3);
  v4 = sub_1BE04EB14();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F60, &qword_1BE0D8768);
  v5 = sub_1BE04F674();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B69E0;
  if (v4)
  {
    sub_1BE04F654();
  }

  else
  {
    PKSavingsFDICSignageEnabled();
    sub_1BE04F664();
  }

  v9 = sub_1BD11253C(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  return v9;
}

id sub_1BD47924C(uint64_t a1)
{
  sub_1BD47860C();
  if (v2)
  {
    v3 = v2;
    sub_1BD85A4D8(v2);
  }

  v4 = *(a1 + 32);
  result = *(v4 + 32);
  if (result)
  {
    result = [result targetDevice];
    if (result)
    {
      v6 = result;
      if ([result respondsToSelector_] && (objc_msgSend(v6, sel_respondsToSelector_, sel_paymentWebService_deviceMetadataWithFields_completion_) & 1) != 0)
      {
        v7 = *(v4 + 32);
        v17[4] = PKEdgeInsetsMake;
        v18 = 0;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 1107296256;
        v17[2] = sub_1BD20815C;
        v17[3] = &block_descriptor_101_1;
        v8 = _Block_copy(v17);
        v9 = v18;
        swift_unknownObjectRetain();
        v9, v10, v11, v12, v13, v14, v15, v16;
        [v6 paymentWebService:v7 deviceMetadataWithFields:128 completion:v8];
        _Block_release(v8);
        return swift_unknownObjectRelease_n();
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1BD4793C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1BE04D8C4();
}

void sub_1BD479434(uint64_t a1)
{
  type metadata accessor for SavingsView(0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8C4();
  sub_1BD1DEDD4();
}

void sub_1BD479528()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v119[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v119[-v5];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v119[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v119[-v11];
  v13 = [objc_opt_self() sharedService];
  if (!v13)
  {
    __break(1u);
    goto LABEL_49;
  }

  v14 = v13;
  v15 = [v13 peerPaymentService];

  if (!v15)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = [v15 account];

  if (v16)
  {
    v17 = [v16 currentBalance];
    if (v17)
    {
      v18 = v17;
      KeyPath = swift_getKeyPath();
      v20 = swift_getKeyPath();
      sub_1BE04D8B4(&v122);
      KeyPath, v21, v22, v23, v24, v25, v26, v27;
      v20, v28, v29, v30, v31, v32, v33, v34;
      v35 = v122;
      v36 = [v122 oneTimeDepositWithAppleCashFeatureDescriptor];

      if (!v36)
      {
        goto LABEL_25;
      }

      v37 = [v18 amount];
      if (!v37)
      {
        goto LABEL_24;
      }

      v122 = 0;
      v123 = 0;
      v124 = 0;
      v125 = 1;
      v38 = v37;
      sub_1BE0533E4();

      if (v125 == 1)
      {
        goto LABEL_24;
      }

      v39 = v122;
      v121 = v123;
      v120 = v124;
      v36 = v36;
      v40 = [v36 minimumAmount];
      if (v40)
      {
        v41 = v40;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 1;
        sub_1BE0533E4();

        if (v125 != 1 && (MEMORY[0x1BFB403F0](v39, v121, v120, v122, v123, v124) & 1) != 0)
        {

          sub_1BE04D194();
          v42 = sub_1BE04D204();
          v43 = sub_1BE052C34();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_1BD026000, v42, v43, "PaymentRequest failed. Peer payment balance is below minimum", v44, 2u);
            MEMORY[0x1BFB45F20](v44, -1, -1);
          }

          else
          {
          }

          (*(v1 + 8))(v12, v0);
          return;
        }
      }

      v51 = [v36 maximumAmount];

      if (!v51 || (v122 = 0, v123 = 0, v124 = 0, v125 = 1, sub_1BE0533E4(), v51, v125 == 1) || (MEMORY[0x1BFB403F0](v122, v123, v124, v39, v121, v120) & 1) == 0)
      {
LABEL_24:

LABEL_25:
        v55 = [v18 currency];
        if (v55)
        {
          v56 = v55;
          v57 = sub_1BE052434();
          v59 = v58;
        }

        else
        {
          v57 = 0;
          v59 = 0;
        }

        v60 = swift_getKeyPath();
        v61 = swift_getKeyPath();
        sub_1BE04D8B4(&v122);
        v60, v62, v63, v64, v65, v66, v67, v68;
        v61, v69, v70, v71, v72, v73, v74, v75;
        v83 = v122;
        if (v122)
        {
          v84 = [v122 currencyCode];

          if (v84)
          {
            v85 = sub_1BE052434();
            v83 = v86;

            if (!v59)
            {
LABEL_38:
              if (v83)
              {
                v59 = v83;
                goto LABEL_40;
              }

              goto LABEL_45;
            }
          }

          else
          {
            v85 = 0;
            v83 = 0;
            if (!v59)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          v85 = 0;
          if (!v59)
          {
            goto LABEL_38;
          }
        }

        if (!v83)
        {
LABEL_40:
          v59, v76, v77, v78, v79, v80, v81, v82;
LABEL_41:
          sub_1BE04D194();
          v101 = sub_1BE04D204();
          v102 = sub_1BE052C34();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            *v103 = 0;
            _os_log_impl(&dword_1BD026000, v101, v102, "PaymentRequest failed. Currency codes do not match", v103, 2u);
            MEMORY[0x1BFB45F20](v103, -1, -1);
          }

          (*(v1 + 8))(v9, v0);
          return;
        }

        if (v57 == v85 && v59 == v83)
        {

          v59, v87, v88, v89, v90, v91, v92, v93;
          v83, v94, v95, v96, v97, v98, v99, v100;
          return;
        }

        v104 = sub_1BE053B84();
        v59, v105, v106, v107, v108, v109, v110, v111;
        v83, v112, v113, v114, v115, v116, v117, v118;
        if ((v104 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_45:

        return;
      }

      v52 = sub_1BE053344();
      v53 = [v18 currency];
      v54 = PKCurrencyAmountMake();

      if (v54)
      {

        v18 = v54;
        goto LABEL_25;
      }

LABEL_50:
      __break(1u);
      return;
    }

    sub_1BE04D194();
    v48 = sub_1BE04D204();
    v49 = sub_1BE052C34();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1BD026000, v48, v49, "PaymentRequest failed. Peer payment currentBalance is nil", v50, 2u);
      MEMORY[0x1BFB45F20](v50, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    sub_1BE04D194();
    v45 = sub_1BE04D204();
    v46 = sub_1BE052C34();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1BD026000, v45, v46, "PaymentRequest failed. Peer payment account is nil", v47, 2u);
      MEMORY[0x1BFB45F20](v47, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

void sub_1BD479C90(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v95 - v9;
  sub_1BD47860C();
  v11 = *(a2 + 32);
  v96 = *(a2 + 8);
  v97 = v11;
  v101 = v12;
  if (a1)
  {
    v13 = [a1 view];
    if (!v13)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v14 = v13;
    v98 = [v13 window];
  }

  else
  {
    v98 = 0;
  }

  sub_1BD47C300(a2, v10, type metadata accessor for SavingsView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v100 = swift_allocObject();
  sub_1BD47B1C8(v10, v100 + v15);
  v95 = a2;
  sub_1BD47C300(a2, v7, type metadata accessor for SavingsView);
  v99 = swift_allocObject();
  sub_1BD47B1C8(v7, v99 + v15);
  v16 = type metadata accessor for AccountTransferAuthorizationController(0);
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentWebService;
  *&v17[v18] = [objc_opt_self() sharedService];
  v19 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest;
  *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest] = 0;
  v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized] = 0;
  v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp] = 0;
  v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction] = 0;
  v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate] = 0;
  *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData] = 0;
  v20 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountService;
  *&v17[v20] = [objc_opt_self() sharedInstance];
  v21 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer;
  *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer] = 3;
  v22 = *MEMORY[0x1E69E7F48];
  v23 = sub_1BE051F44();
  v24 = *(v23 - 8);
  (*(v24 + 104))(&v17[v21], v22, v23);
  *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_pastUpdateLeeway] = 0x4024000000000000;
  v32 = v101;
  if (v101)
  {
    v33 = v16;
    *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentRequest] = v101;
    v35 = v96;
    v34 = v97;
    *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountModel] = v96;
    *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferModel] = v34;
    v36 = objc_allocWithZone(PKPaymentAuthorizationController);
    v37 = v32;
    v38 = v36;
    v39 = v37;
    v40 = v35;
    sub_1BE048964();
    v41 = [v38 initWithPaymentRequest_];
    *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController] = v41;
    v42 = v98;
    v43 = v99;
    *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_window] = v98;
    v44 = &v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_stepUpAction];
    v45 = v100;
    *v44 = sub_1BD47BE30;
    v44[1] = v45;
    v46 = &v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissAction];
    *v46 = sub_1BD47BEB4;
    v46[1] = v43;
    v47 = &v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transferDidFinish];
    *v47 = 0;
    v47[1] = 0;
    KeyPath = swift_getKeyPath();
    v49 = swift_getKeyPath();
    v50 = v42;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04D8B4(&v103);
    KeyPath, v51, v52, v53, v54, v55, v56, v57;
    v49, v58, v59, v60, v61, v62, v63, v64;
    v65 = v103;
    v66 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccount_];

    v67 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
    v68 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
    v69 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v67 paymentDataProvider:v68];

    if (v69)
    {
      *&v17[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transactionFetcher] = v69;
      v104.receiver = v17;
      v104.super_class = v33;
      v70 = objc_msgSendSuper2(&v104, sel_init);
      v71 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController;
      v72 = *&v70[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController];
      v73 = v70;
      [v72 setDelegate_];
      [*&v70[v71] setPrivateDelegate_];

      v45, v74, v75, v76, v77, v78, v79, v80;
      v43, v81, v82, v83, v84, v85, v86, v87;

      [*&v70[v71] presentWithCompletion_];
      v103 = *(v95 + 48);
      v102 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68, &qword_1BE0D8770);
      sub_1BE0516B4();
      return;
    }

    goto LABEL_11;
  }

  v100, v25, v26, v27, v28, v29, v30, v31;
  v99, v88, v89, v90, v91, v92, v93, v94;

  swift_unknownObjectRelease();
  (*(v24 + 8))(&v17[v21], v23);
  swift_deallocPartialClassInstance();
}

uint64_t sub_1BD47A2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1BD47273C(a2);
  sub_1BD47C300(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1BD47B1C8(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E48, &qword_1BE0D8490) + 36));
  *v8 = sub_1BD47B22C;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  sub_1BD47C300(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
  v9 = swift_allocObject();
  sub_1BD47B1C8(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E50, &qword_1BE0D8498);
  v11 = (a2 + *(result + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_1BD47B474;
  v11[3] = v9;
  return result;
}

uint64_t sub_1BD47A470(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 & 0xFFFFFFFFFFLL;
  v5 = (a4 >> 38) & 3;
  if (!v5)
  {
    MEMORY[0x1BFB40DA0](0);
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_4;
    }

    return sub_1BE053D24();
  }

  if (v5 == 1)
  {
    MEMORY[0x1BFB40DA0](1);
    if ((v4 & 0x100000000) == 0)
    {
LABEL_4:
      sub_1BE053D24();

      return sub_1BE053404();
    }

    return sub_1BE053D24();
  }

  if (a3 | a2 || v4 != 0x8000000000)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  return MEMORY[0x1BFB40DA0](v7);
}

uint64_t sub_1BD47A544()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

__n128 sub_1BD47A5C4@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  v3 = v1[1].n128_u8[4];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[4] = v3;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t sub_1BD47A5E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  sub_1BE053D04();
  sub_1BD47A470(v5, v1, v2, v3);
  return sub_1BE053D64();
}

uint64_t sub_1BD47A658(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | (*(v1 + 20) << 32);
  sub_1BE053D04();
  sub_1BD47A470(v6, v2, v3, v4);
  return sub_1BE053D64();
}

uint64_t sub_1BD47A6E4()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver__presentedSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47110, &qword_1BE0D8AD8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD47A7B4(uint64_t a1)
{
  sub_1BD47AEB4(319, &qword_1EBD46DE0, qword_1EBD3B488, &qword_1BE0BC5B0, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SavingsActionSheet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 21))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 20) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 20) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SavingsActionSheet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 20) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1BD47A93C(uint64_t a1)
{
  v1 = *(a1 + 20) >> 6;
  if (v1 <= 1)
  {
    return v1;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1BD47A958(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_1BD47A974(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16);
    result += 16;
    v3 = (v2 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = 0x80;
  }

  return result;
}

void sub_1BD47AA0C(uint64_t a1)
{
  sub_1BD2D63D4(319);
  if (v1 <= 0x3F)
  {
    sub_1BD47ACB0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccountScheduleTransferModel();
      if (v3 <= 0x3F)
      {
        sub_1BE04BF14();
        if (v4 <= 0x3F)
        {
          sub_1BD47AEB4(319, &qword_1EBD46E08, &qword_1EBD3BD40, &qword_1BE0F6A10, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1BD47AF18(319, &qword_1EBD46E10, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1BD3C9D6C(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for TransactionList(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for AccountBalanceHistory(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for AccountDailyCash(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1BD47AD8C(319);
                      if (v11 <= 0x3F)
                      {
                        sub_1BD47AE20(319);
                        if (v12 <= 0x3F)
                        {
                          sub_1BD47AF18(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                          if (v13 <= 0x3F)
                          {
                            sub_1BD47AEB4(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1BD47AF18(319, &qword_1EBD46E30, type metadata accessor for PKAccountDestination, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_1BD47ACB0(uint64_t a1)
{
  if (!qword_1EBD46E00)
  {
    type metadata accessor for SavingsDashboardMessageSource(255);
    sub_1BD47AD44(&qword_1EBD3BD50, type metadata accessor for SavingsDashboardMessageSource, &unk_1BE10AFF0);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD46E00);
    }
  }
}

uint64_t sub_1BD47AD44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD47AD8C(uint64_t a1)
{
  if (!qword_1EBD46E18)
  {
    type metadata accessor for SavingsActionSheetObserver(255);
    sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver, &unk_1BE0D8458);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD46E18);
    }
  }
}

void sub_1BD47AE20(uint64_t a1)
{
  if (!qword_1EBD46E20)
  {
    type metadata accessor for FCCStepUpModel(255);
    sub_1BD47AD44(&qword_1EBD46E28, type metadata accessor for FCCStepUpModel, &unk_1BE10AFB8);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD46E20);
    }
  }
}

void sub_1BD47AEB4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1BD47AF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD47AF9C()
{
  result = qword_1EBD46E38;
  if (!qword_1EBD46E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46E38);
  }

  return result;
}

unint64_t sub_1BD47AFF4()
{
  result = qword_1EBD46E40;
  if (!qword_1EBD46E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46E40);
  }

  return result;
}

uint64_t sub_1BD47B048@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SavingsActionSheetObserver(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

BOOL sub_1BD47B100(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6 & 0xFFFFFFFFFFLL;
  v7 = (a3 >> 38) & 3;
  if (!v7)
  {
    if (v6 >> 38)
    {
      return 0;
    }

    if ((a3 & 0x100000000) == 0)
    {
      return (a6 & 0x100000000) == 0 && (MEMORY[0x1BFB40440](a1, a2) & 1) != 0;
    }

    return (a6 & 0x100000000) != 0;
  }

  if (v7 == 1)
  {
    if ((a6 & 0xC000000000) != 0x4000000000)
    {
      return 0;
    }

    if ((a3 & 0x100000000) == 0)
    {
      return (a6 & 0x100000000) == 0 && (MEMORY[0x1BFB40440](a1, a2) & 1) != 0;
    }

    return (a6 & 0x100000000) != 0;
  }

  if (a2 | a1 || (a3 & 0xFFFFFFFFFFLL) != 0x8000000000)
  {
    if ((a6 & 0xC000000000) != 0x8000000000 || a4 != 1 || a5)
    {
      return 0;
    }
  }

  else if ((a6 & 0xC000000000) != 0x8000000000 || a5 | a4)
  {
    return 0;
  }

  return v6 == 0x8000000000;
}

uint64_t sub_1BD47B1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_45()
{
  v1 = type metadata accessor for SavingsView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v2[4], v3, v4, v5, v6, v7, v8, v9;
  v2[7], v10, v11, v12, v13, v14, v15, v16;
  v17 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD48, &qword_1BE0BD880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_1BE050144();
    (*(*(v25 - 8) + 8))(v2 + v17, v25);
  }

  else
  {
    *(v2 + v17), v18, v19, v20, v21, v22, v23, v24;
  }

  *(v2 + v1[10]), v26, v27, v28, v29, v30, v31, v32;

  sub_1BD0D45CC(*(v2 + v1[14]), *(v2 + v1[14] + 8), *(v2 + v1[14] + 16), v33, v34, v35, v36, v37);
  sub_1BD0D45CC(*(v2 + v1[15]), *(v2 + v1[15] + 8), *(v2 + v1[15] + 16), v38, v39, v40, v41, v42);
  v43 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = sub_1BE04EB24();
    (*(*(v51 - 8) + 8))(v2 + v43, v51);
  }

  else
  {
    *(v2 + v43), v44, v45, v46, v47, v48, v49, v50;
  }

  v59 = (v2 + v1[17]);
  if (*v59)
  {
    v59[1], v52, v53, v54, v55, v56, v57, v58;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD47B48C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SavingsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1BD47B57C()
{
  v1 = *(type metadata accessor for SavingsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16) | (*(v3 + 20) << 32);

  sub_1BD478DC0(v0 + v2, v4, v5, v6);
}

unint64_t sub_1BD47B620()
{
  result = qword_1EBD46E90;
  if (!qword_1EBD46E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E58, &qword_1BE0D8538);
    sub_1BD47B6D8();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8, &qword_1BE0BB050, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46E90);
  }

  return result;
}

unint64_t sub_1BD47B6D8()
{
  result = qword_1EBD46E98;
  if (!qword_1EBD46E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E88, &qword_1BE0D8620);
    sub_1BD47B790();
    sub_1BD0DE4F4(&qword_1EBD3A8A0, &qword_1EBD3A8A8, &unk_1BE0D8670, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46E98);
  }

  return result;
}

unint64_t sub_1BD47B790()
{
  result = qword_1EBD46EA0;
  if (!qword_1EBD46EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E80, &qword_1BE0D85E8);
    sub_1BD47B848();
    sub_1BD0DE4F4(&qword_1EBD46ED0, &qword_1EBD46ED8, &qword_1BE0D8668, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46EA0);
  }

  return result;
}

unint64_t sub_1BD47B848()
{
  result = qword_1EBD46EA8;
  if (!qword_1EBD46EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E78, &qword_1BE0D8598);
    sub_1BD0DE4F4(&qword_1EBD46EB0, &qword_1EBD46EB8, &qword_1BE0D8658, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&qword_1EBD46EC0, &qword_1EBD46EC8, &qword_1BE0D8660, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46EA8);
  }

  return result;
}

unint64_t sub_1BD47B9AC()
{
  result = qword_1EBD46EE8;
  if (!qword_1EBD46EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46EE0, &qword_1BE0D8680);
    sub_1BD47BA38();
    sub_1BD47BCBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46EE8);
  }

  return result;
}

unint64_t sub_1BD47BA38()
{
  result = qword_1EBD46EF0;
  if (!qword_1EBD46EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46EF8, &qword_1BE0D8688);
    sub_1BD1829A4();
    sub_1BD47BAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46EF0);
  }

  return result;
}

unint64_t sub_1BD47BAC4()
{
  result = qword_1EBD46F00;
  if (!qword_1EBD46F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F08, &qword_1BE0D8690);
    sub_1BD47C3C8(&qword_1EBD46F10, &qword_1EBD46F18, &qword_1BE0D8698, sub_1BD47BB74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46F00);
  }

  return result;
}

unint64_t sub_1BD47BB74()
{
  result = qword_1EBD46F20;
  if (!qword_1EBD46F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F28, &qword_1BE0D86A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F30, &qword_1BE0D86A8);
    sub_1BD47BC68();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46F20);
  }

  return result;
}

unint64_t sub_1BD47BC68()
{
  result = qword_1EBD46F38;
  if (!qword_1EBD46F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46F38);
  }

  return result;
}

unint64_t sub_1BD47BCBC()
{
  result = qword_1EBD57070;
  if (!qword_1EBD57070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57070);
  }

  return result;
}

unint64_t sub_1BD47BF40()
{
  result = qword_1EBD46FF8;
  if (!qword_1EBD46FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46FF0, &qword_1BE0D8828);
    sub_1BD10E4BC();
    sub_1BD47AD44(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46FF8);
  }

  return result;
}

unint64_t sub_1BD47BFFC()
{
  result = qword_1EBD47030;
  if (!qword_1EBD47030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F90, &qword_1BE0D8798);
    sub_1BD47C0B4();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47030);
  }

  return result;
}

unint64_t sub_1BD47C0B4()
{
  result = qword_1EBD47038;
  if (!qword_1EBD47038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47040, &qword_1BE0D8860);
    sub_1BD47C140();
    sub_1BD3CA3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47038);
  }

  return result;
}

unint64_t sub_1BD47C140()
{
  result = qword_1EBD47048;
  if (!qword_1EBD47048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47050, &unk_1BE0D8868);
    sub_1BD1A4654();
    sub_1BD47AD44(&qword_1EBD3B280, type metadata accessor for SavingsFCCStepUpPresenter, &unk_1BE10D038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47048);
  }

  return result;
}

unint64_t sub_1BD47C204()
{
  result = qword_1EBD47078;
  if (!qword_1EBD47078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47070, &qword_1BE0D8890);
    sub_1BD0DE4F4(&qword_1EBD47080, &qword_1EBD47088, &qword_1BE0D8898, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD47090, &qword_1EBD47098, &qword_1BE0D88A0, MEMORY[0x1E697BF80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47078);
  }

  return result;
}

uint64_t sub_1BD47C300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD47C3C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD47C44C()
{
  result = qword_1EBD47128;
  if (!qword_1EBD47128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46F40, &qword_1BE0D86B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E60, &qword_1BE0D8540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46EE0, &qword_1BE0D8680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46E58, &qword_1BE0D8538);
    sub_1BE04FB94();
    sub_1BD47B620();
    swift_getOpaqueTypeConformance2();
    sub_1BD1828C4();
    sub_1BD47B9AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47128);
  }

  return result;
}

uint64_t sub_1BD47C5D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BD47C61C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD47C68C(uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7C4();
  if (*(v2 + 32))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 8);
  sub_1BE048C84();
  v9 = sub_1BE050224();
  sub_1BE04E1F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1BE0501F4();
  sub_1BE04E1F4();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v5;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = v13;
  *(a2 + 80) = v15;
  *(a2 + 88) = v17;
  *(a2 + 96) = 0;
  *(a2 + 104) = v18;
  *(a2 + 112) = v19;
  *(a2 + 120) = v20;
  *(a2 + 128) = v21;
  *(a2 + 136) = v22;
  *(a2 + 144) = 0;
}

unint64_t sub_1BD47C79C()
{
  result = qword_1EBD47130;
  if (!qword_1EBD47130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47138, &qword_1BE0D8B98);
    sub_1BD47C828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47130);
  }

  return result;
}

unint64_t sub_1BD47C828()
{
  result = qword_1EBD47140;
  if (!qword_1EBD47140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47148, qword_1BE0D8BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47140);
  }

  return result;
}

unint64_t sub_1BD47C890()
{
  result = qword_1EBD47150;
  if (!qword_1EBD47150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47150);
  }

  return result;
}

void *sub_1BD47C8E4(uint64_t a1)
{
  v2 = sub_1BE050324();
  v3 = [v1 font];
  if (v3 > 5)
  {
    if (v3 <= 7)
    {
      if (v3 == 6)
      {
        v4 = sub_1BE050324();
      }

      else
      {
        v4 = sub_1BE050414();
      }

      goto LABEL_22;
    }

    switch(v3)
    {
      case 8:
        v4 = sub_1BE050454();
        goto LABEL_22;
      case 9:
        v4 = sub_1BE050424();
        goto LABEL_22;
      case 10:
        v4 = sub_1BE050444();
LABEL_22:
        v12 = v4;
        v2, v5, v6, v7, v8, v9, v10, v11;
        return v12;
    }
  }

  else
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v4 = sub_1BE0503E4();
      }

      else if (v3 == 4)
      {
        v4 = sub_1BE050464();
      }

      else
      {
        v4 = sub_1BE0502A4();
      }

      goto LABEL_22;
    }

    if (v3 == 1)
    {
      v4 = sub_1BE050344();
      goto LABEL_22;
    }

    if (v3 == 2)
    {
      v4 = sub_1BE0503D4();
      goto LABEL_22;
    }
  }

  return v2;
}

Swift::String __swiftcall PKPaymentOfferInstallmentAssessmentOffer.installmentCountString(useUpdatedText:)(Swift::Bool_optional useUpdatedText)
{
  v2 = v1;
  value = useUpdatedText.value;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v10;
  if (value == 2 || !useUpdatedText.value)
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E69B8078], v5, v11);
    v31 = [v2 preferredLanguage];
    sub_1BE052434();
    v15 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BE0B69E0;
    v33 = [v2 installmentCount];
    v34 = MEMORY[0x1E69E65A8];
    *(v16 + 56) = MEMORY[0x1E69E6530];
    *(v16 + 64) = v34;
    *(v16 + 32) = v33;
    v19 = PKPassKitBundle();
    if (v19)
    {
      v21 = v19;
      v29 = sub_1BE04B704();
      v30 = v22;
      v12 = v8;
      goto LABEL_7;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  (*(v6 + 104))(&v43 - v10, *MEMORY[0x1E69B8078], v5, v11.n128_f64[0]);
  v13 = [v2 preferredLanguage];
  sub_1BE052434();
  v15 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BE0B69E0;
  v17 = [v2 installmentCount];
  v18 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = MEMORY[0x1E69E6530];
  *(v16 + 64) = v18;
  *(v16 + 32) = v17;
  v19 = PKPassKitBundle();
  if (!v19)
  {
    goto LABEL_9;
  }

  v21 = v19;
  v29 = sub_1BE04B704();
  v30 = v22;
LABEL_7:
  v15, v22, v23, v24, v25, v26, v27, v28;
  v16, v35, v36, v37, v38, v39, v40, v41;

  (*(v6 + 8))(v12, v5);
  v19 = v29;
  v20 = v30;
LABEL_10:
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

id PKPaymentOfferInstallmentAssessmentOffer.installmentAmountPeriodString.getter()
{
  v1 = v0;
  v2 = sub_1BE04B2D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B2F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v80 - v15;
  result = [v1 installmentAmount];
  if (result)
  {
    v83 = result;
    v18 = [v1 installmentPeriod];
    if (!v18)
    {
LABEL_8:

      return 0;
    }

    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v19 = v11;
        (*(v11 + 104))(v16, *MEMORY[0x1E69B8078], v10);
        v20 = [v1 preferredLanguage];
        sub_1BE052434();
        v22 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1BE0B69E0;
        result = [v83 formattedStringValue];
        if (result)
        {
          v24 = result;

          v25 = sub_1BE052434();
          v27 = v26;

          *(v23 + 56) = MEMORY[0x1E69E6158];
          *(v23 + 64) = sub_1BD110550();
          *(v23 + 32) = v25;
          *(v23 + 40) = v27;
          result = PKPassKitBundle();
          if (result)
          {
            v28 = result;
            v29 = sub_1BE04B704();

            v22, v30, v31, v32, v33, v34, v35, v36;
            v23, v37, v38, v39, v40, v41, v42, v43;

            (*(v19 + 8))(v16, v10);
            return v29;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    v81 = v10;
    v44 = [objc_opt_self() currentCalendar];
    sub_1BE04B1F4();

    (*(v3 + 104))(v5, *MEMORY[0x1E6969AB0], v2);
    v80 = sub_1BE04B144();
    v46 = v45;
    v48 = v47;
    (*(v3 + 8))(v5, v2);
    result = (*(v7 + 8))(v9, v6);
    if (v48)
    {
      v49 = [v1 installmentInterval];
      v50 = 7;
      v51 = v11;
      v52 = v82;
      goto LABEL_16;
    }

    v50 = v46 - v80;
    if (!__OFSUB__(v46, v80))
    {
      v51 = v11;
      result = [v1 installmentInterval];
      v52 = v82;
      if (v50)
      {
        v49 = result;
        if (result != 0x8000000000000000 || v50 != -1)
        {
LABEL_16:
          (*(v51 + 104))(v52, *MEMORY[0x1E69B8078], v81);
          v53 = [v1 preferredLanguage];
          sub_1BE052434();
          v55 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1BE0B6CA0;
          result = [v83 formattedStringValue];
          if (result)
          {
            v57 = result;

            v58 = v49 / v50;
            v59 = sub_1BE052434();
            v61 = v60;

            *(v56 + 56) = MEMORY[0x1E69E6158];
            v62 = sub_1BD110550();
            *(v56 + 32) = v59;
            *(v56 + 40) = v61;
            v63 = MEMORY[0x1E69E65A8];
            *(v56 + 96) = MEMORY[0x1E69E6530];
            *(v56 + 104) = v63;
            *(v56 + 64) = v62;
            *(v56 + 72) = v58;
            result = PKPassKitBundle();
            if (result)
            {
              v64 = result;
              v65 = sub_1BE04B704();
              v55, v66, v67, v68, v69, v70, v71, v72;
              v56, v73, v74, v75, v76, v77, v78, v79;

              (*(v51 + 8))(v52, v81);
              return v65;
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

void PKPaymentOfferInstallmentAssessmentOffer.downpaymentAmountString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v108 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v108 - v10;
  v12 = sub_1BE04AF64();
  v114 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v108 - v17;
  v19 = [v1 downpaymentDetails];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 paymentDate];
    if (v21)
    {
      v112 = v3;
      v113 = v2;
      v22 = v21;
      sub_1BE04AEE4();

      (*(v114 + 32))(v18, v14, v12);
      v23 = [v20 amount];
      v24 = [v23 amount];

      if (!v24)
      {
        __break(1u);
        goto LABEL_18;
      }

      v25 = [v24 pk_isZeroNumber];

      if ((v25 & 1) == 0)
      {
        v26 = [v20 amount];
        v27 = [v26 formattedStringValue];

        if (v27)
        {
          v28 = sub_1BE052434();
          v111 = v29;

          v30 = sub_1BE04AE64();
          v31 = [v30 isToday];
          v110 = v30;
          if (!v31)
          {
            v54 = [v30 isTomorrow];
            v55 = v113;
            if (!v54)
            {
              v78 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
              v79 = sub_1BE052404();
              [v78 setLocalizedDateFormatFromTemplate_];

              v80 = v112;
              (*(v112 + 104))(v5, *MEMORY[0x1E69B8078], v55);
              v81 = [v1 preferredLanguage];
              v108[1] = sub_1BE052434();
              v109 = v82;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
              v83 = swift_allocObject();
              *(v83 + 16) = xmmword_1BE0B6CA0;
              *(v83 + 56) = MEMORY[0x1E69E6158];
              v84 = sub_1BD110550();
              *(v83 + 64) = v84;
              v85 = v111;
              *(v83 + 32) = v28;
              *(v83 + 40) = v85;
              v86 = sub_1BE04AE64();
              v111 = v78;
              v87 = [v78 stringFromDate_];

              v88 = sub_1BE052434();
              v90 = v89;

              *(v83 + 96) = MEMORY[0x1E69E6158];
              *(v83 + 104) = v84;
              *(v83 + 72) = v88;
              *(v83 + 80) = v90;
              v91 = PKPassKitBundle();
              if (v91)
              {
                v92 = v91;
                v93 = v109;
                sub_1BE04B704();

                v93, v94, v95, v96, v97, v98, v99, v100;
                v83, v101, v102, v103, v104, v105, v106, v107;

                (*(v80 + 8))(v5, v113);
                (*(v114 + 8))(v18, v12);
                return;
              }

              goto LABEL_20;
            }

            v56 = v112;
            (*(v112 + 104))(v8, *MEMORY[0x1E69B8078], v113);
            v57 = [v1 preferredLanguage];
            sub_1BE052434();
            v59 = v58;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
            v60 = swift_allocObject();
            *(v60 + 16) = xmmword_1BE0B69E0;
            *(v60 + 56) = MEMORY[0x1E69E6158];
            *(v60 + 64) = sub_1BD110550();
            v61 = v111;
            *(v60 + 32) = v28;
            *(v60 + 40) = v61;
            v62 = PKPassKitBundle();
            if (v62)
            {
              v63 = v62;
              sub_1BE04B704();
              v59, v64, v65, v66, v67, v68, v69, v70;
              v60, v71, v72, v73, v74, v75, v76, v77;

              (*(v56 + 8))(v8, v113);
              (*(v114 + 8))(v18, v12);
              return;
            }

LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            return;
          }

          v32 = v112;
          (*(v112 + 104))(v11, *MEMORY[0x1E69B8078], v113);
          v33 = [v1 preferredLanguage];
          sub_1BE052434();
          v35 = v34;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1BE0B69E0;
          *(v36 + 56) = MEMORY[0x1E69E6158];
          *(v36 + 64) = sub_1BD110550();
          v37 = v111;
          *(v36 + 32) = v28;
          *(v36 + 40) = v37;
          v38 = PKPassKitBundle();
          if (v38)
          {
            v39 = v38;
            sub_1BE04B704();

            v35, v40, v41, v42, v43, v44, v45, v46;
            v36, v47, v48, v49, v50, v51, v52, v53;

            (*(v32 + 8))(v11, v113);
            (*(v114 + 8))(v18, v12);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      (*(v114 + 8))(v18, v12);
    }
  }
}

void PKPaymentOfferInstallmentAssessmentOffer.feesOfferSelectionString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v120 - v8;
  v11 = v3 + 104;
  v10 = *(v3 + 104);
  v128 = *MEMORY[0x1E69B8078];
  v127 = v10;
  v10(v120 - v8, v7);
  v12 = [v1 preferredLanguage];
  sub_1BE052434();
  v14 = v13;

  v15 = PKPassKitBundle();
  if (!v15)
  {
    goto LABEL_42;
  }

  v16 = v15;
  v17 = sub_1BE04B6E4();
  v19 = v18;
  v14, v18, v20, v21, v22, v23, v24, v25;

  v28 = *(v3 + 8);
  v27 = v3 + 8;
  v26 = v28;
  v28(v9, v2);
  v29 = [v1 feeDetails];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = [v29 feeItems];
  if (!v31)
  {

    return;
  }

  v32 = v31;
  v120[2] = v11;
  v121 = v1;
  v125 = v17;
  v126 = v19;
  v120[0] = v26;
  v120[1] = v27;
  v122 = v5;
  v123 = v2;
  sub_1BD0E5E8C(0, &qword_1EBD47158, 0x1E69B8CA0);
  v33 = sub_1BE052744();

  v129 = MEMORY[0x1E69E7CC0];
  if (v33 >> 62)
  {
LABEL_21:
    v41 = sub_1BE053704();
    if (v41)
    {
LABEL_6:
      v124 = v30;
      v42 = 0;
      v30 = (v33 & 0xC000000000000001);
      do
      {
        if (v30)
        {
          v43 = MEMORY[0x1BFB40900](v42, v33);
        }

        else
        {
          if (v42 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v43 = *(v33 + 8 * v42 + 32);
        }

        v44 = v43;
        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ([v43 type] == 1)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v42;
      }

      while (v45 != v41);
      v46 = v129;
      v30 = v124;
      if ((v129 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_6;
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_23:
  if ((v46 & 0x4000000000000000) != 0)
  {
LABEL_36:
    if (!sub_1BE053704())
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  if (!*(v46 + 16))
  {
LABEL_37:
    v46, v34, v35, v36, v37, v38, v39, v40;
    v33, v113, v114, v115, v116, v117, v118, v119;
    goto LABEL_38;
  }

LABEL_25:
  if ((v46 & 0xC000000000000001) == 0)
  {
    if (*(v46 + 16))
    {
      v47 = *(v46 + 32);
      goto LABEL_28;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v47 = MEMORY[0x1BFB40900](0, v46);
LABEL_28:
  v55 = v47;
  v46, v48, v49, v50, v51, v52, v53, v54;
  v56 = [v55 feeAmount];
  v57 = [v56 amount];

  if (!v57)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v58 = [v57 pk_isZeroNumber];

  if (v58)
  {

    v33, v59, v60, v61, v62, v63, v64, v65;
    return;
  }

  if ([v55 feesPeriod] == 2)
  {
    v127(v122, v128, v123);
    v73 = [v121 preferredLanguage];
    sub_1BE052434();
    v75 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1BE0B69E0;
    v77 = [v55 feeAmount];
    v78 = [v77 formattedStringValue];

    if (v78)
    {
      v33, v79, v80, v81, v82, v83, v84, v85;

      v126, v86, v87, v88, v89, v90, v91, v92;
      v93 = sub_1BE052434();
      v95 = v94;

      *(v76 + 56) = MEMORY[0x1E69E6158];
      *(v76 + 64) = sub_1BD110550();
      *(v76 + 32) = v93;
      *(v76 + 40) = v95;
      v96 = PKPassKitBundle();
      if (v96)
      {
        v97 = v96;
        v98 = v122;
        sub_1BE04B704();

        v75, v99, v100, v101, v102, v103, v104, v105;
        v76, v106, v107, v108, v109, v110, v111, v112;

        (v120[0])(v98, v123);
        return;
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  v33, v66, v67, v68, v69, v70, v71, v72;

LABEL_38:
}

void PKPaymentOfferInstallmentAssessmentOffer.interestString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v99 - v8;
  v10 = [v0 interestDetails];
  if (!v10)
  {
LABEL_44:
    (*(v3 + 104))(v5, *MEMORY[0x1E69B8078], v2);
    v87 = [v1 preferredLanguage];
    sub_1BE052434();
    v89 = v88;

    v90 = PKPassKitBundle();
    if (v90)
    {
      v91 = v90;
      sub_1BE04B6E4();
      v89, v92, v93, v94, v95, v96, v97, v98;

      (*(v3 + 8))(v5, v2);
      return;
    }

    goto LABEL_48;
  }

  v11 = v10;
  v12 = [v10 interestItems];
  if (!v12)
  {

    goto LABEL_44;
  }

  v13 = v12;
  v105 = v5;
  v100 = v9;
  sub_1BD0E5E8C(0, &qword_1EBD47160, 0x1E69B8CA8);
  v14 = sub_1BE052744();

  v106 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v101 = v1;
    v102 = v3;
    v103 = v11;
    v104 = v2;
    v23 = 0;
    v11 = (v14 & 0xC000000000000001);
    v3 = v14 & 0xFFFFFFFFFFFFFF8;
    v2 = &selRef_thumbnailWidth;
    while (1)
    {
      if (v11)
      {
        v24 = MEMORY[0x1BFB40900](v23, v14);
      }

      else
      {
        if (v23 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v24 = *(v14 + 8 * v23 + 32);
      }

      v25 = v24;
      v1 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if ([v24 type] == 1)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v23;
      if (v1 == i)
      {
        v26 = v106;
        v11 = v103;
        v2 = v104;
        v1 = v101;
        v3 = v102;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v14, v15, v16, v17, v18, v19, v20, v21;
  if ((v26 & 0x8000000000000000) == 0 && (v26 & 0x4000000000000000) == 0)
  {
    if (*(v26 + 16))
    {
      goto LABEL_24;
    }

LABEL_42:

    v26, v80, v81, v82, v83, v84, v85, v86;
LABEL_43:
    v5 = v105;
    goto LABEL_44;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_42;
  }

LABEL_24:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1BFB40900](0, v26);
LABEL_27:
    v35 = v27;
    v26, v28, v29, v30, v31, v32, v33, v34;
    v36 = [v35 interestPercentage];
    if (v36)
    {
      v37 = v36;
      v38 = [v35 totalInterest];
      if (v38)
      {
        v39 = v38;
        v40 = v1;
        v41 = sub_1BD481E84(v37);
        v43 = v42;
        v44 = [v39 formattedStringValue];
        if (v44)
        {
          v52 = v44;
          v105 = v41;
          v102 = sub_1BE052434();
          v54 = v53;

          if (v43)
          {
            if (v54)
            {
              v103 = v11;
              v55 = v100;
              (*(v3 + 104))(v100, *MEMORY[0x1E69B8078], v2);
              v56 = [v40 preferredLanguage];
              v101 = sub_1BE052434();
              v58 = v57;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
              v59 = v3;
              v60 = swift_allocObject();
              *(v60 + 16) = xmmword_1BE0B6CA0;
              v104 = v2;
              v61 = MEMORY[0x1E69E6158];
              *(v60 + 56) = MEMORY[0x1E69E6158];
              v62 = sub_1BD110550();
              *(v60 + 32) = v105;
              *(v60 + 40) = v43;
              *(v60 + 96) = v61;
              *(v60 + 104) = v62;
              v63 = v102;
              *(v60 + 64) = v62;
              *(v60 + 72) = v63;
              *(v60 + 80) = v54;
              v64 = PKPassKitBundle();
              if (v64)
              {
                v65 = v64;
                sub_1BE04B704();
                v58, v66, v58, v67, v68, v69, v70, v71;
                v60, v72, v73, v74, v75, v76, v77, v78;

                (*(v59 + 8))(v55, v104);
                return;
              }

              goto LABEL_49;
            }

            goto LABEL_37;
          }
        }

        else
        {
          if (v43)
          {
LABEL_37:
            v79 = v43;
LABEL_40:
            v79, v45, v46, v47, v48, v49, v50, v51;

            return;
          }

          v54 = 0;
        }

        v79 = v54;
        goto LABEL_40;
      }
    }

    else
    {
    }

    goto LABEL_43;
  }

  if (*(v26 + 16))
  {
    v27 = *(v26 + 32);
    goto LABEL_27;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

id PKPaymentOfferInstallmentAssessmentOffer.totalCostString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 totalCost];
  if (result)
  {
    v8 = result;
    v9 = [result formattedStringValue];

    if (v9)
    {
      v10 = sub_1BE052434();
      v12 = v11;

      (*(v3 + 104))(v6, *MEMORY[0x1E69B8078], v2);
      v13 = [v1 preferredLanguage];
      sub_1BE052434();
      v15 = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BE0B69E0;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1BD110550();
      *(v16 + 32) = v10;
      *(v16 + 40) = v12;
      result = PKPassKitBundle();
      if (result)
      {
        v17 = result;
        v18 = sub_1BE04B704();
        v15, v19, v20, v21, v22, v23, v24, v25;
        v16, v26, v27, v28, v29, v30, v31, v32;

        (*(v3 + 8))(v6, v2);
        return v18;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDateString.getter()
{
  v1 = sub_1BE04BD74();
  v121 = *(v1 - 8);
  v122 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v117 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v117 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v117 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v117 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v117 - v21;
  v23 = [v0 dynamicContent];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 dynamicContentPageForPageType_];

    if (v25)
    {
      v26 = [v25 title];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1BE052434();

        return v28;
      }
    }
  }

  v29 = v9;
  v118 = v6;
  v119 = v3;
  v120 = v0;
  PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDate.getter(v22);
  v30 = sub_1BE04AF64();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(v22, 1, v30) == 1)
  {
    sub_1BD15D69C(v22);
    return 0;
  }

  v33 = sub_1BE04AE64();
  (*(v31 + 8))(v22, v30);
  if ([v33 isToday])
  {
    v35 = v121;
    v34 = v122;
    (*(v121 + 104))(v12, *MEMORY[0x1E69B8078], v122);
    v36 = [v120 preferredLanguage];
    sub_1BE052434();
    v38 = v37;

    result = PKPassKitBundle();
    if (result)
    {
      v40 = result;
      v28 = sub_1BE04B6E4();

      v38, v41, v42, v43, v44, v45, v46, v47;
      (*(v35 + 8))(v12, v34);
      return v28;
    }

    __break(1u);
    goto LABEL_28;
  }

  if ([v33 isTomorrow])
  {
    v49 = v121;
    v48 = v122;
    (*(v121 + 104))(v29, *MEMORY[0x1E69B8078], v122);
    v50 = [v120 preferredLanguage];
    sub_1BE052434();
    v52 = v51;

    result = PKPassKitBundle();
    if (result)
    {
      v53 = result;
      v28 = sub_1BE04B6E4();

      v52, v54, v55, v56, v57, v58, v59, v60;
      (*(v49 + 8))(v29, v48);
      return v28;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v61 = [v120 downpaymentDetails];
  if (!v61)
  {
    (*(v31 + 56))(v18, 1, 1, v30);
    goto LABEL_20;
  }

  v62 = v61;
  v63 = [v61 paymentDate];

  if (v63)
  {
    sub_1BE04AEE4();

    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  (*(v31 + 56))(v15, v64, 1, v30);
  sub_1BD0DE204(v15, v18, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v32(v18, 1, v30) == 1)
  {
LABEL_20:
    sub_1BD15D69C(v18);
    v66 = v121;
    v65 = v122;
    (*(v121 + 104))(v119, *MEMORY[0x1E69B8078], v122);
    v67 = [v120 preferredLanguage];
    sub_1BE052434();
    v69 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1BE0B69E0;
    result = PKLongDateString();
    if (result)
    {
      v71 = result;

      v72 = sub_1BE052434();
      v74 = v73;

      *(v70 + 56) = MEMORY[0x1E69E6158];
      *(v70 + 64) = sub_1BD110550();
      *(v70 + 32) = v72;
      *(v70 + 40) = v74;
      result = PKPassKitBundle();
      if (result)
      {
        v75 = result;
        v76 = v119;
        v28 = sub_1BE04B704();

        v69, v77, v78, v79, v80, v81, v82, v83;
        v70, v84, v85, v86, v87, v88, v89, v90;

        (*(v66 + 8))(v76, v65);
        return v28;
      }

      goto LABEL_30;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1BD15D69C(v18);
  v92 = v121;
  v91 = v122;
  (*(v121 + 104))(v118, *MEMORY[0x1E69B8078], v122);
  v93 = [v120 preferredLanguage];
  sub_1BE052434();
  v95 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1BE0B69E0;
  result = PKLongDateString();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v97 = result;

  v98 = sub_1BE052434();
  v100 = v99;

  *(v96 + 56) = MEMORY[0x1E69E6158];
  *(v96 + 64) = sub_1BD110550();
  *(v96 + 32) = v98;
  *(v96 + 40) = v100;
  result = PKPassKitBundle();
  if (result)
  {
    v101 = result;
    v102 = v118;
    v28 = sub_1BE04B704();

    v95, v103, v104, v105, v106, v107, v108, v109;
    v96, v110, v111, v112, v113, v114, v115, v116;

    (*(v92 + 8))(v102, v91);
    return v28;
  }

LABEL_32:
  __break(1u);
  return result;
}

id PKPaymentOfferInstallmentAssessmentOffer.checkoutAmountString.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = [v0 dynamicContent];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 dynamicContentPageForPageType_];

    if (v14)
    {
      v15 = [v14 subtitle];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1BE052434();

        return v17;
      }
    }
  }

  v18 = [v1 downpaymentDetails];
  if (!v18 || (v19 = v18, v20 = [v18 amount], v19, !v20))
  {
    v21 = [v1 installmentAmount];
    if (!v21)
    {
      return 0;
    }

    v20 = v21;
  }

  PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDate.getter(v11);
  v22 = sub_1BE04AF64();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v11, 1, v22) == 1)
  {
    v25 = v11;
LABEL_12:
    sub_1BD15D69C(v25);
    goto LABEL_13;
  }

  v28 = sub_1BE04AE64();
  (*(v23 + 8))(v11, v22);
  if (([v28 isToday] & 1) != 0 || objc_msgSend(v28, sel_isTomorrow))
  {
    result = [v20 formattedStringValue];
    if (result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v31 = [v1 downpaymentDetails];
    if (!v31 || (v32 = v31, v37 = [v31 amount], v32, !v37))
    {

LABEL_13:
      v17 = PKPaymentOfferInstallmentAssessmentOffer.installmentAmountPeriodString.getter();
      v27 = v26;

      if (v27)
      {
        return v17;
      }

      return 0;
    }

    v33 = [v1 downpaymentDetails];
    if (!v33)
    {

      (*(v23 + 56))(v7, 1, 1, v22);
      v25 = v7;
      goto LABEL_12;
    }

    v37 = v33;
    v34 = [v33 paymentDate];

    if (v34)
    {
      sub_1BE04AEE4();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    (*(v23 + 56))(v4, v35, 1, v22);
    sub_1BD0DE204(v4, v7, &unk_1EBD39970, &unk_1BE0B9F80);
    if (v24(v7, 1, v22) == 1)
    {

      v25 = v7;
      goto LABEL_12;
    }

    sub_1BD15D69C(v7);
    result = [v20 formattedStringValue];
    if (result)
    {
LABEL_18:
      v30 = result;
      v17 = sub_1BE052434();

      return v17;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id PKPaymentOfferInstallmentCriteria.setupLogo.getter()
{
  v1 = [v0 icon];

  return v1;
}

void PKPaymentOfferInstallmentAssessmentOffer.interestPercentString.getter()
{
  sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
  v1 = sub_1BE053054();
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v2 setNumberStyle_];
  v3 = [v0 interestDetails];
  if (!v3)
  {
    goto LABEL_31;
  }

  v4 = v3;
  v5 = [v3 interestItems];
  if (!v5)
  {

LABEL_31:
    sub_1BD481E84(v1);

    return;
  }

  v6 = v5;
  sub_1BD0E5E8C(0, &qword_1EBD47160, 0x1E69B8CA8);
  v7 = sub_1BE052744();

  v40 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v37 = v4;
    v38 = v2;
    v39 = v1;
    v16 = 0;
    v2 = (v7 & 0xFFFFFFFFFFFFFF8);
    v1 = &selRef_thumbnailWidth;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1BFB40900](v16, v7);
      }

      else
      {
        if (v16 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v17 = *(v7 + 8 * v16 + 32);
      }

      v18 = v17;
      v4 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if ([v17 type] == 1)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v16;
      if (v4 == i)
      {
        v1 = v39;
        v19 = v40;
        v4 = v37;
        v2 = v38;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v7, v8, v9, v10, v11, v12, v13, v14;
  if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
  {
    if (*(v19 + 16))
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (!sub_1BE053704())
  {
LABEL_30:

    v19, v30, v31, v32, v33, v34, v35, v36;
    goto LABEL_31;
  }

LABEL_24:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1BFB40900](0, v19);
LABEL_27:
    v28 = v20;
    v19, v21, v22, v23, v24, v25, v26, v27;
    v29 = [v28 interestPercentage];

    if (v29)
    {

      v1 = v29;
    }

    goto LABEL_31;
  }

  if (*(v19 + 16))
  {
    v20 = *(v19 + 32);
    goto LABEL_27;
  }

  __break(1u);
}

void PKPaymentOfferInstallmentAssessmentOffer.feesSummaryString.getter()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v98 - v8;
  v10 = [v0 feeDetails];
  if (!v10)
  {
LABEL_38:
    (*(v3 + 13))(v5, *MEMORY[0x1E69B8078], v2);
    v86 = [v1 preferredLanguage];
    sub_1BE052434();
    v88 = v87;

    v89 = PKPassKitBundle();
    if (v89)
    {
      v90 = v89;
      sub_1BE04B6E4();
      v88, v91, v92, v93, v94, v95, v96, v97;

      (*(v3 + 1))(v5, v2);
      return;
    }

    goto LABEL_42;
  }

  v11 = v10;
  v12 = [v10 feeItems];
  if (!v12)
  {
LABEL_37:

    goto LABEL_38;
  }

  v13 = v12;
  v103 = v9;
  sub_1BD0E5E8C(0, &qword_1EBD47158, 0x1E69B8CA0);
  v14 = sub_1BE052744();

  v105 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
LABEL_19:
    v22 = sub_1BE053704();
    if (v22)
    {
LABEL_5:
      v99 = v1;
      v100 = v5;
      v101 = v11;
      v102 = v2;
      v104 = v3;
      v5 = 0;
      v11 = (v14 & 0xC000000000000001);
      v1 = (v14 & 0xFFFFFFFFFFFFFF8);
      v2 = &selRef_thumbnailWidth;
      do
      {
        if (v11)
        {
          v23 = MEMORY[0x1BFB40900](v5, v14);
        }

        else
        {
          if (v5 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v23 = *(v14 + 8 * v5 + 32);
        }

        v24 = v23;
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if ([v23 type] == 1)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v5;
      }

      while (v3 != v22);
      v3 = v104;
      v25 = v105;
      v11 = v101;
      v2 = v102;
      v1 = v99;
      v5 = v100;
      if ((v105 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_5;
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  if ((v25 & 0x4000000000000000) != 0)
  {
LABEL_34:
    if (!sub_1BE053704())
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if (!*(v25 + 16))
  {
LABEL_35:
    v25, v15, v16, v17, v18, v19, v20, v21;
    goto LABEL_36;
  }

LABEL_23:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1BFB40900](0, v25);
  }

  else
  {
    if (!*(v25 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v26 = *(v25 + 32);
  }

  v34 = v26;
  v25, v27, v28, v29, v30, v31, v32, v33;
  v35 = [v34 feeAmount];
  v36 = [v35 amount];

  if (!v36)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v37 = [v36 pk_isZeroNumber];

  if (v37)
  {

    v11 = v34;
LABEL_36:
    v14, v38, v39, v40, v41, v42, v43, v44;
    goto LABEL_37;
  }

  if ([v34 feesPeriod] != 2)
  {
    v14, v45, v46, v47, v48, v49, v50, v51;

    return;
  }

  v52 = *MEMORY[0x1E69B8078];
  v104 = v3;
  (*(v3 + 13))(v103, v52, v2);
  v53 = [v1 preferredLanguage];
  sub_1BE052434();
  v55 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1BE0B69E0;
  v57 = [v34 feeAmount];
  v58 = [v57 formattedStringValue];

  if (v58)
  {
    v14, v59, v60, v61, v62, v63, v64, v65;

    v66 = sub_1BE052434();
    v68 = v67;

    *(v56 + 56) = MEMORY[0x1E69E6158];
    *(v56 + 64) = sub_1BD110550();
    *(v56 + 32) = v66;
    *(v56 + 40) = v68;
    v69 = PKPassKitBundle();
    if (v69)
    {
      v70 = v69;
      v71 = v103;
      sub_1BE04B704();

      v55, v72, v73, v74, v75, v76, v77, v78;
      v56, v79, v80, v81, v82, v83, v84, v85;

      (*(v104 + 1))(v71, v2);
      return;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void PKPaymentOfferInstallmentAssessmentOffer.totalInterestDollarString.getter()
{
  v1 = [v0 interestDetails];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 totalInterestAmount];
    v4 = [v3 formattedStringValue];

    if (v4)
    {
LABEL_3:
      sub_1BE052434();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = [v0 totalCost];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currency];

    if (v7)
    {
      sub_1BE052434();
      v9 = v8;

      sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
      v10 = sub_1BE053054();
      v11 = objc_allocWithZone(MEMORY[0x1E69B8780]);
      v12 = sub_1BE052404();
      v2 = [v11 initWithAmount:v10 currency:v12 exponent:0];

      if (v2)
      {
        v20 = [v2 formattedStringValue];
        if (v20)
        {
          v4 = v20;
          v9, v21, v22, v23, v24, v25, v26, v27;
          goto LABEL_3;
        }

        goto LABEL_12;
      }

      v9, v13, v14, v15, v16, v17, v18, v19;
    }
  }
}

void PKPaymentOfferInstallmentAssessmentOffer.totalFeesDollarString.getter()
{
  v1 = [v0 feeDetails];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 totalFeeAmount];
    v4 = [v3 formattedStringValue];

    if (v4)
    {
LABEL_3:
      sub_1BE052434();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = [v0 totalCost];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currency];

    if (v7)
    {
      sub_1BE052434();
      v9 = v8;

      v10 = [objc_opt_self() zero];
      v11 = objc_allocWithZone(MEMORY[0x1E69B8780]);
      v12 = sub_1BE052404();
      v2 = [v11 initWithAmount:v10 currency:v12 exponent:0];

      if (v2)
      {
        v20 = [v2 formattedStringValue];
        if (v20)
        {
          v4 = v20;
          v9, v21, v22, v23, v24, v25, v26, v27;
          goto LABEL_3;
        }

        goto LABEL_12;
      }

      v9, v13, v14, v15, v16, v17, v18, v19;
    }
  }
}

id PKPaymentOfferInstallmentAssessmentOffer.totalCostDollarString.getter()
{
  result = [v0 totalCost];
  if (result)
  {
    v2 = result;
    v3 = [result formattedStringValue];

    if (v3)
    {
      v4 = sub_1BE052434();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id PKPaymentOfferAction.webViewLogo.getter()
{
  v1 = [v0 dynamicContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 dynamicContentPageForPageType_];

  v4 = [v3 iconURL];
  return v4;
}

uint64_t PKPaymentOfferAction.cardArtURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = [v2 dynamicContent];
  if (v8 && (v9 = v8, v10 = [v8 dynamicContentPageForPageType_], v9, v10) && (v11 = objc_msgSend(v10, sel_iconURL), v10, v11))
  {
    PKScreenScale();
    v12 = [v11 urlForScreenScale:0 appearance:?];

    if (v12)
    {
      sub_1BE04A9F4();

      v13 = sub_1BE04AA64();
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    }

    else
    {
      v17 = sub_1BE04AA64();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    return sub_1BD0DE204(v7, a1, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  else
  {
    v14 = sub_1BE04AA64();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

uint64_t PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = [v2 downpaymentDetails];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 paymentDate];

    if (v16)
    {
      sub_1BE04AEE4();

      v17 = sub_1BE04AF64();
      (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
    }

    else
    {
      v17 = sub_1BE04AF64();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    }

    sub_1BD0DE204(v9, v13, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BE04AF64();
    v19 = *(v17 - 8);
    if ((*(v19 + 48))(v13, 1, v17) != 1)
    {
      (*(v19 + 32))(a1, v13, v17);
      return (*(v19 + 56))(a1, 0, 1, v17);
    }
  }

  else
  {
    v18 = sub_1BE04AF64();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  }

  sub_1BD15D69C(v13);
  v20 = [v2 dueDate];
  if (v20)
  {
    v21 = v20;
    sub_1BE04AEE4();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v24 = sub_1BE04AF64();
  (*(*(v24 - 8) + 56))(v6, v22, 1, v24);
  return sub_1BD0DE204(v6, a1, &unk_1EBD39970, &unk_1BE0B9F80);
}

id PKPaymentOfferInstallmentAssessmentOffer.checkoutAmount.getter()
{
  v1 = [v0 downpaymentDetails];
  if (!v1)
  {
    return [v0 installmentAmount];
  }

  v2 = v1;
  v3 = [v1 amount];

  result = v3;
  if (!v3)
  {
    return [v0 installmentAmount];
  }

  return result;
}

uint64_t sub_1BD480824(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_1BE052434();

  return v3;
}

void sub_1BD480884(SEL *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = [*v2 *a1];
  v5 = sub_1BE052434();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

void sub_1BD4808D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE052404();
  v4 = [v2 eligiblePaymentOfferCriteriaForPassUniqueID_];

  v12 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
    v13 = sub_1BE052744();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v36 = v12;
  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB40900](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ([v16 type] == 1)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v15;
      if (v18 == i)
      {
        v19 = v36;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v13, v5, v6, v7, v8, v9, v10, v11;
  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    if (sub_1BE053704())
    {
      goto LABEL_24;
    }

LABEL_30:
    v19, v20, v21, v22, v23, v24, v25, v26;
    return;
  }

  if (!*(v19 + 16))
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1BFB40900](0, v19);
  }

  else
  {
    if (!*(v19 + 16))
    {
      __break(1u);
      return;
    }

    v27 = *(v19 + 32);
  }

  v35 = v27;
  v19, v28, v29, v30, v31, v32, v33, v34;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
  }
}

uint64_t sub_1BD480B04(void *a1, void *a2)
{
  v5 = sub_1BE04D214();
  v210 = *(v5 - 8);
  v211 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v207 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 identifier];
  if (!v9)
  {
    sub_1BE052434();
    v11 = v10;
    v9 = sub_1BE052404();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v209 = sub_1BE052434();
  v20 = v19;
  v21 = [a1 supportedLanguages];
  v22 = sub_1BE052744();

  v23 = [objc_opt_self() pk_deviceLanguage];
  if (!v23)
  {
    goto LABEL_8;
  }

  v31 = v23;
  v208 = sub_1BE052434();
  v33 = v32;

  if (!v22[2])
  {
    v33, v34, v35, v36, v37, v38, v39, v40;
LABEL_8:
    v22, v24, v25, v26, v27, v28, v29, v30;
    v20, v64, v65, v66, v67, v68, v69, v70;

    return 0;
  }

  v41 = [v2 hasSeenLanguageDisclosureForCriteriaForIdentifier_];

  if (v41)
  {
    v33, v43, v44, v45, v46, v47, v48, v49;
    v22, v50, v51, v52, v53, v54, v55, v56;
    v20, v57, v58, v59, v60, v61, v62, v63;
    return 0;
  }

  v212[0] = v208;
  v212[1] = v33;
  MEMORY[0x1EEE9AC00](v42);
  *(&v207 - 2) = v212;
  if (sub_1BD2FF084(sub_1BD20DFC4, (&v207 - 4), v22))
  {
    v20, v72, v73, v74, v75, v76, v77, v78;
    v22, v79, v80, v81, v82, v83, v84, v85;
    v33, v86, v87, v88, v89, v90, v91, v92;
    return 0;
  }

  v93 = [a1 identifier];
  if (!v93)
  {
    sub_1BE052434();
    v95 = v94;
    v93 = sub_1BE052404();
    v95, v96, v97, v98, v99, v100, v101, v102;
  }

  if (!a2)
  {
    v106 = [v2 dynamicContentPageForCriteriaIdentifier:v93 pageType:6];

    if (v106)
    {
      goto LABEL_19;
    }

LABEL_21:
    sub_1BE04D084();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    v128 = sub_1BE04D204();
    v129 = sub_1BE052C34();
    v20, v130, v131, v132, v133, v134, v135, v136;
    v22, v137, v138, v139, v140, v141, v142, v143;
    v33, v144, v145, v146, v147, v148, v149, v150;
    if (os_log_type_enabled(v128, v129))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v212[0] = v152;
      *v151 = 136315650;
      v153 = sub_1BD123690(v208, v33, v212);
      v33, v154, v155, v156, v157, v158, v159, v160;
      *(v151 + 4) = v153;
      *(v151 + 12) = 2080;
      v161 = MEMORY[0x1BFB3F7F0](v22, MEMORY[0x1E69E6158]);
      v163 = v162;
      v22, v162, v164, v165, v166, v167, v168, v169;
      v170 = sub_1BD123690(v161, v163, v212);
      v163, v171, v172, v173, v174, v175, v176, v177;
      *(v151 + 14) = v170;
      *(v151 + 22) = 2080;
      v178 = sub_1BD123690(v209, v20, v212);
      v20, v179, v180, v181, v182, v183, v184, v185;
      *(v151 + 24) = v178;
      _os_log_impl(&dword_1BD026000, v128, v129, "The users device language of %s is not in the supported list of languages %s for criteria identifier %s, but there is no languageNotice dynamic content defined.", v151, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v152, -1, -1);
      MEMORY[0x1BFB45F20](v151, -1, -1);
    }

    else
    {

      v33, v186, v187, v188, v189, v190, v191, v192;
      v22, v193, v194, v195, v196, v197, v198, v199;
      v20, v200, v201, v202, v203, v204, v205, v206;
    }

    (*(v210 + 8))(v8, v211);
    return 0;
  }

  v103 = a2;

  v104 = [v103 dynamicContent];
  if (!v104)
  {

    goto LABEL_21;
  }

  v105 = v104;
  v106 = [v104 dynamicContentPageForPageType_];

  if (!v106)
  {
    goto LABEL_21;
  }

LABEL_19:
  v33, v107, v108, v109, v110, v111, v112, v113;
  v22, v114, v115, v116, v117, v118, v119, v120;
  v20, v121, v122, v123, v124, v125, v126, v127;

  return 1;
}

void sub_1BD480FEC(void *a1, void *a2)
{
  v3 = v2;
  v250 = a2;
  v248 = a1;
  v4 = sub_1BE04BD74();
  v251 = *(v4 - 8);
  v252 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v249 = &v241 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v241 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v241 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v241 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v241 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v241 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v241 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v241 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v241 - v29;
  v253 = v3;
  v31 = [v3 reason];
  if (v31 > 14)
  {
    if ((v31 - 15) < 0xD)
    {
      v32 = [v253 overrideDisplayString];
      if (v32)
      {
        v33 = v32;
        sub_1BE052434();

        return;
      }
    }

LABEL_22:
    v58 = v251;
    v57 = v252;
    v59 = v249;
    (*(v251 + 104))(v249, *MEMORY[0x1E69B8078], v252);
    v60 = PKPassKitBundle();
    if (v60)
    {
      v61 = v60;
      sub_1BE04B6F4();

      (*(v58 + 8))(v59, v57);
      return;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v246 = v8;
  v247 = v26;
  v245 = v11;
  if (v31 <= 8)
  {
    if (v31 > 6)
    {
      if (v31 == 7)
      {
        v75 = [v253 supportedCurrencyCodes];
        if (v75)
        {
          v83 = v75;
          v84 = sub_1BE052744();
        }

        else
        {
          v84 = MEMORY[0x1E69E7CC0];
        }

        v135 = v252;
        v136 = v247;
        if (v84[2] == 1)
        {
          v138 = v84[4];
          v137 = v84[5];
          sub_1BE048C84();
          v84, v139, v140, v141, v142, v143, v144, v145;
          v146 = v251;
          (*(v251 + 104))(v136, *MEMORY[0x1E69B8078], v135);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v147 = swift_allocObject();
          *(v147 + 16) = xmmword_1BE0B69E0;
          *(v147 + 56) = MEMORY[0x1E69E6158];
          *(v147 + 64) = sub_1BD110550();
          *(v147 + 32) = v138;
          *(v147 + 40) = v137;
          sub_1BE04B714();
          v147, v148, v149, v150, v151, v152, v153, v154;
          (*(v146 + 8))(v136, v135);
          return;
        }

        v84, v76, v77, v78, v79, v80, v81, v82;
        v155 = v251;
        (*(v251 + 104))(v23, *MEMORY[0x1E69B8078], v135);
        v156 = PKPassKitBundle();
        if (v156)
        {
          v157 = v156;
          sub_1BE04B6F4();

          (*(v155 + 8))(v23, v135);
          return;
        }

        goto LABEL_114;
      }

      v54 = v251;
      v34 = v252;
      (*(v251 + 104))(v20, *MEMORY[0x1E69B8078], v252);
      v55 = PKPassKitBundle();
      if (!v55)
      {
        goto LABEL_109;
      }

      v56 = v55;
      sub_1BE04B6F4();

      v38 = *(v54 + 8);
      v39 = v20;
    }

    else
    {
      if (!v31)
      {
        return;
      }

      if (v31 != 2)
      {
        goto LABEL_22;
      }

      v35 = v251;
      v34 = v252;
      (*(v251 + 104))(v30, *MEMORY[0x1E69B8078], v252);
      v36 = PKPassKitBundle();
      if (!v36)
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      v37 = v36;
      sub_1BE04B6F4();

      v38 = *(v35 + 8);
      v39 = v30;
    }

LABEL_31:
    v38(v39, v34);
    return;
  }

  if ((v31 - 13) >= 2)
  {
    if (v31 != 9)
    {
      if (v31 == 12)
      {
        v40 = [v253 isWebPaymentRequest];
        v42 = v251;
        v41 = v252;
        v43 = v14;
        (*(v251 + 104))(v14, *MEMORY[0x1E69B8068], v252);
        v44 = PKPassKitBundle();
        if (v44)
        {
          v45 = v44;
          if (v40)
          {
            v46 = "REASON_NETWORK_NOT_SUPPORTED";
          }

          else
          {
            v46 = "ELIGIBLE_AMOUNT_RANGE";
          }

          sub_1BE04B6F4();
          (v46 | 0x8000000000000000), v47, v48, v49, v50, v51, v52, v53;

          (*(v42 + 8))(v43, v41);
          return;
        }

        goto LABEL_110;
      }

      goto LABEL_22;
    }

    v85 = v251;
    v34 = v252;
    (*(v251 + 104))(v17, *MEMORY[0x1E69B8078], v252);
    v86 = PKPassKitBundle();
    if (!v86)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v87 = v86;
    sub_1BE04B6F4();

    v38 = *(v85 + 8);
    v39 = v17;
    goto LABEL_31;
  }

  v63 = v251;
  v62 = v252;
  if (!v250)
  {
LABEL_58:
    v128 = [v253 reason];
    v129 = *MEMORY[0x1E69B8078];
    v130 = *(v63 + 104);
    if (v128 == 13)
    {
      v131 = v245;
      v130(v245, v129, v62);
      v132 = PKPassKitBundle();
      if (!v132)
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v133 = v132;
    }

    else
    {
      v131 = v246;
      v130(v246, v129, v62);
      v134 = PKPassKitBundle();
      if (!v134)
      {
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        return;
      }

      v133 = v134;
    }

    sub_1BE04B6F4();

    (*(v63 + 8))(v131, v62);
    return;
  }

  v64 = [v253 minimumAmounts];
  v65 = sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
  v66 = sub_1BD2B5358();
  v67 = sub_1BE052A34();

  v241 = v66;
  v243 = v67;
  v244 = v65;
  if ((v67 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v67 = v256;
    v71 = v257;
    v72 = v258;
    v73 = v259;
    v74 = v260;
  }

  else
  {
    v88 = -1 << *(v67 + 32);
    v71 = (v67 + 56);
    v89 = ~v88;
    v90 = -v88;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    else
    {
      v91 = -1;
    }

    v74 = (v91 & *(v67 + 56));
    sub_1BE048C84();
    v72 = v89;
    v73 = 0;
  }

  v242 = v72;
  v92 = (v72 + 64) >> 6;
  while (1)
  {
    if (v67 < 0)
    {
      v65 = (v67 & 0x7FFFFFFFFFFFFFFFLL);
      v98 = sub_1BE053744();
      if (!v98 || (v255 = v98, swift_dynamicCast(), v97 = v261, v95 = v73, v96 = v74, !v261))
      {
LABEL_55:
        sub_1BD0D45FC(v67, v71, v242, v73, v74, v68, v69, v70);
        v127 = v243;
LABEL_56:
        v127, v120, v121, v122, v123, v124, v125, v126;
LABEL_57:
        v63 = v251;
        v62 = v252;
        goto LABEL_58;
      }
    }

    else
    {
      v93 = v73;
      v94 = v74;
      v95 = v73;
      if (!v74)
      {
        while (1)
        {
          v95 = (v93 + 1);
          if (__OFADD__(v93, 1))
          {
            break;
          }

          if (v95 >= v92)
          {
            v74 = 0;
            goto LABEL_55;
          }

          v94 = *&v71[8 * v95];
          ++v93;
          if (v94)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_105:

        v127 = v95;
        goto LABEL_56;
      }

LABEL_43:
      v96 = (v94 - 1) & v94;
      v97 = *(*(v67 + 48) + ((v95 << 9) | (8 * __clz(__rbit64(v94)))));
      if (!v97)
      {
        goto LABEL_55;
      }
    }

    v99 = [v97 currency];
    if (v99)
    {
      break;
    }

LABEL_37:

    v73 = v95;
    v74 = v96;
  }

  v249 = v97;
  v100 = v99;
  v101 = sub_1BE052434();
  v65 = v102;

  if (v101 != v248 || v65 != v250)
  {
    v109 = sub_1BE053B84();
    v65, v110, v111, v112, v113, v114, v115, v116;
    v97 = v249;
    if (v109)
    {
      goto LABEL_71;
    }

    goto LABEL_37;
  }

  v65, v103, v248, v250, v104, v105, v106, v107;
  v97 = v249;
LABEL_71:
  sub_1BD0D45FC(v67, v71, v242, v73, v74, v117, v118, v119);
  v243, v158, v159, v160, v161, v162, v163, v164;
  v165 = [v253 maximumAmounts];
  v166 = sub_1BE052A34();

  v242 = v166;
  if ((v166 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v166 = v261;
    v170 = v262;
    v171 = v263;
    v172 = v264;
    v173 = v265;
  }

  else
  {
    v174 = -1 << *(v166 + 32);
    v170 = (v166 + 56);
    v171 = ~v174;
    v175 = -v174;
    if (v175 < 64)
    {
      v176 = ~(-1 << v175);
    }

    else
    {
      v176 = -1;
    }

    v173 = (v176 & *(v166 + 56));
    sub_1BE048C84();
    v172 = 0;
  }

  v63 = v251;
  v62 = v252;
  v241 = v171;
  v177 = (v171 + 64) >> 6;
  while (2)
  {
    if (v166 < 0)
    {
      v182 = sub_1BE053744();
      if (!v182)
      {
        goto LABEL_97;
      }

      v254 = v182;
      swift_dynamicCast();
      v65 = v255;
      v180 = v172;
      v181 = v173;
    }

    else
    {
      v178 = v172;
      v179 = v173;
      v180 = v172;
      if (!v173)
      {
        while (1)
        {
          v180 = (v178 + 1);
          if (__OFADD__(v178, 1))
          {
            break;
          }

          if (v180 >= v177)
          {
            v173 = 0;
            goto LABEL_96;
          }

          v179 = *&v170[8 * v180];
          ++v178;
          if (v179)
          {
            goto LABEL_84;
          }
        }

        __break(1u);
        goto LABEL_107;
      }

LABEL_84:
      v181 = (v179 - 1) & v179;
      v65 = *(*(v166 + 48) + ((v180 << 9) | (8 * __clz(__rbit64(v179)))));
    }

    if (!v65)
    {
      v63 = v251;
LABEL_96:
      v62 = v252;
LABEL_97:
      sub_1BD0D45FC(v166, v170, v241, v172, v173, v167, v168, v169);

      v242, v206, v207, v208, v209, v210, v211, v212;
      goto LABEL_58;
    }

    v243 = v172;
    v183 = [v65 currency];
    if (!v183)
    {
LABEL_78:

      v172 = v180;
      v173 = v181;
      v63 = v251;
      v62 = v252;
      continue;
    }

    break;
  }

  v184 = v183;
  v185 = v166;
  v186 = sub_1BE052434();
  v188 = v187;

  if (v186 != v248 || v188 != v250)
  {
    v195 = sub_1BE053B84();
    v188, v196, v197, v198, v199, v200, v201, v202;
    v97 = v249;
    v166 = v185;
    if (v195)
    {
      goto LABEL_100;
    }

    goto LABEL_78;
  }

  v188, v189, v248, v250, v190, v191, v192, v193;
  v97 = v249;
  v166 = v185;
LABEL_100:
  sub_1BD0D45FC(v166, v170, v241, v243, v173, v203, v204, v205);
  v242, v213, v214, v215, v216, v217, v218, v219;
  v220 = [v97 minimalFormattedStringValue];
  if (!v220)
  {

    goto LABEL_57;
  }

  v221 = v220;
  v222 = sub_1BE052434();
  v95 = v223;

  v224 = [v65 minimalFormattedStringValue];
  if (!v224)
  {
    goto LABEL_105;
  }

  v225 = v224;
  v226 = sub_1BE052434();
  v253 = v227;

  v228 = v251;
  v229 = v252;
  v230 = v247;
  (*(v251 + 104))(v247, *MEMORY[0x1E69B8078], v252);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_1BE0B6CA0;
  v232 = MEMORY[0x1E69E6158];
  *(v231 + 56) = MEMORY[0x1E69E6158];
  v233 = sub_1BD110550();
  *(v231 + 32) = v222;
  *(v231 + 40) = v95;
  *(v231 + 96) = v232;
  *(v231 + 104) = v233;
  *(v231 + 64) = v233;
  *(v231 + 72) = v226;
  *(v231 + 80) = v253;
  sub_1BE04B714();
  v231, v234, v235, v236, v237, v238, v239, v240;

  (*(v228 + 8))(v230, v229);
}

uint64_t sub_1BD481E84(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v2 setNumberStyle_];
  [v2 setMinimumFractionDigits_];
  [v2 setMaximumFractionDigits_];
  v3 = [v2 stringFromNumber_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1BD481F5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1BD481FA4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BD482010@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = swift_allocObject();
  v17 = *(v2 + 80);
  *(v16 + 80) = *(v2 + 64);
  *(v16 + 96) = v17;
  *(v16 + 112) = *(v2 + 96);
  *(v16 + 128) = *(v2 + 112);
  v18 = *(v2 + 16);
  *(v16 + 16) = *v2;
  *(v16 + 32) = v18;
  v19 = *(v2 + 48);
  *(v16 + 48) = *(v2 + 32);
  *(v16 + 64) = v19;
  v32 = v2;
  sub_1BD482978(v2, v33);
  sub_1BE051704();
  v20 = swift_allocObject();
  v21 = *(v2 + 80);
  *(v20 + 80) = *(v2 + 64);
  *(v20 + 96) = v21;
  *(v20 + 112) = *(v2 + 96);
  *(v20 + 128) = *(v2 + 112);
  v22 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v22;
  v23 = *(v2 + 48);
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = v23;
  v31 = v2;
  sub_1BD482978(v2, v33);
  sub_1BE051704();
  v24 = *(v4 + 16);
  v24(v9, v15, v3);
  v24(v6, v12, v3);
  v25 = v30;
  v24(v30, v9, v3);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98, &unk_1BE0ECEC0);
  v24(&v25[*(v26 + 48)], v6, v3);
  v27 = *(v4 + 8);
  v27(v12, v3);
  v27(v15, v3);
  v27(v6, v3);
  return (v27)(v9, v3);
}

void sub_1BD482350(uint64_t a1)
{
  sub_1BD482584(MEMORY[0x1E69BA468]);
  v2 = *a1;
  v3 = sub_1BE052404();
  [v2 markLanguageDisclosureAsSeenForCriteriaForIdentifier_];

  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = *(a1 + 112);
    v6 = sub_1BE048964();
    v4(v6);

    sub_1BD0D4744(v4, v5, v7, v8, v9, v10, v11, v12);
  }
}

uint64_t sub_1BD4823F0@<X0>(uint64_t a2@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_1BD48245C(uint64_t a1)
{
  sub_1BD482584(MEMORY[0x1E69BA500]);
  v2 = *a1;
  v3 = sub_1BE052404();
  [v2 markLanguageDisclosureAsSeenForCriteriaForIdentifier_];

  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = *(a1 + 96);
    v6 = sub_1BE048964();
    v4(v6);

    sub_1BD0D4744(v4, v5, v7, v8, v9, v10, v11, v12);
  }
}

uint64_t sub_1BD4824FC@<X0>(uint64_t a2@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_1BD482584(void *a1)
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B98D0;
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BB6C0];
  *(v2 + 32) = *MEMORY[0x1E69BB6E0];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E69BB6F8];
  *(v2 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  v9 = sub_1BE052724();
  v2, v10, v11, v12, v13, v14, v15, v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v18 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v19;
  v20 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  v21 = sub_1BE052434();
  v22 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v21;
  *(inited + 72) = v23;
  v24 = *v22;
  *(inited + 80) = *v22;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v25;
  v26 = v18;
  v27 = v20;
  v28 = v24;
  v29 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v30 = sub_1BE052224();
  v29, v31, v32, v33, v34, v35, v36, v37;
  [v1 subjects:v9 sendEvent:v30];
}

void sub_1BD48278C()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B98D0;
  v2 = *MEMORY[0x1E69BB6E0];
  v3 = *MEMORY[0x1E69BB6C0];
  *(v1 + 32) = *MEMORY[0x1E69BB6E0];
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x1E69BB6F8];
  *(v1 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_1BE052724();
  v1, v9, v10, v11, v12, v13, v14, v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v17 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v18 = sub_1BE052434();
  v19 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v18;
  *(inited + 48) = v20;
  v21 = *v19;
  *(inited + 56) = *v19;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v22;
  v23 = v17;
  v24 = v21;
  v25 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v26 = sub_1BE052224();
  v25, v27, v28, v29, v30, v31, v32, v33;
  [v0 subjects:v8 sendEvent:v26];
}

uint64_t objectdestroyTm_46()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 64), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 80), v22, v23, v24, v25, v26, v27, v28;
  *(v0 + 96), v29, v30, v31, v32, v33, v34, v35;
  if (*(v0 + 104))
  {
    *(v0 + 112), v36, v37, v38, v39, v40, v41, v42;
  }

  if (*(v0 + 120))
  {
    *(v0 + 128), v36, v37, v38, v39, v40, v41, v42;
  }

  return swift_deallocObject();
}

void sub_1BD482A40(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v16 = sub_1BE04D214();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v179 = &v170 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = a3;
  if ((sub_1BD480B04(a2, a3) & 1) == 0)
  {
    sub_1BD0D4744(a6, a7, v19, v20, v21, v22, v23, v24);
    sub_1BD0D4744(a4, a5, v41, v42, v43, v44, v45, v46);

LABEL_26:
    v79 = 0;
    v76 = 0;
    v78 = 0;
    v49 = 0;
    v84 = 0;
    v54 = 0;
    v57 = 0;
    v62 = 0;
    v64 = 0;
    v73 = 0;
    v75 = 0;
    v81 = 0;
    v80 = 0;
    v83 = 0;
    v82 = 0;
    goto LABEL_27;
  }

  v177 = a5;
  v178 = a1;
  v174 = a6;
  v175 = a7;
  v176 = a4;
  v25 = [a2 identifier];
  if (!v25)
  {
    sub_1BE052434();
    v27 = v26;
    v25 = sub_1BE052404();
    v27, v28, v29, v30, v31, v32, v33, v34;
  }

  v36 = v178;
  v35 = v179;
  if (v180)
  {
    v37 = v180;

    v38 = [v37 dynamicContent];
    if (!v38)
    {

      v40 = 0;
      goto LABEL_20;
    }

    v39 = v38;
    v40 = [v38 dynamicContentPageForPageType_];

    if (!v40)
    {
LABEL_20:
      sub_1BE04D084();
      v120 = v40;
      v121 = sub_1BE04D204();
      v122 = sub_1BE052C34();

      if (os_log_type_enabled(v121, v122))
      {
        v172 = a2;
        v173 = v17;
        v129 = v120;
        v171 = v16;
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v181 = v131;
        *v130 = 136315138;
        if (v40)
        {
          v132 = [v120 description];
          v133 = sub_1BE052434();
          v135 = v134;
        }

        else
        {
          v133 = 0;
          v135 = 0xE000000000000000;
        }

        v142 = v172;
        v143 = sub_1BD123690(v133, v135, &v181);
        v135, v144, v145, v146, v147, v148, v149, v150;
        *(v130 + 4) = v143;
        _os_log_impl(&dword_1BD026000, v121, v122, "Cannot form issuer installment languageNotice alert without dynamic content defined properly %s", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v131, v151, v152, v153, v154, v155, v156, v157);
        MEMORY[0x1BFB45F20](v131, -1, -1);
        MEMORY[0x1BFB45F20](v130, -1, -1);
        sub_1BD0D4744(v174, v175, v158, v159, v160, v161, v162, v163);
        sub_1BD0D4744(v176, v177, v164, v165, v166, v167, v168, v169);

        (*(v173 + 8))(v179, v171);
      }

      else
      {
        sub_1BD0D4744(v174, v175, v123, v124, v125, v126, v127, v128);
        sub_1BD0D4744(v176, v177, v136, v137, v138, v139, v140, v141);

        (*(v17 + 8))(v35, v16);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v40 = [v178 dynamicContentPageForCriteriaIdentifier:v25 pageType:6];

    if (!v40)
    {
      goto LABEL_20;
    }
  }

  v40 = v40;
  v47 = [v40 title];
  if (!v47)
  {

    goto LABEL_20;
  }

  v48 = v47;
  v49 = sub_1BE052434();
  v51 = v50;

  v52 = [v40 subtitle];
  if (!v52)
  {

    v51, v85, v86, v87, v88, v89, v90, v91;
    v36 = v178;
    goto LABEL_20;
  }

  v171 = v51;
  v53 = v52;
  v54 = sub_1BE052434();
  v55 = v40;
  v57 = v56;

  v58 = [v55 primaryActionTitle];
  if (!v58)
  {

    v171, v92, v93, v94, v95, v96, v97, v98;
    v57, v99, v100, v101, v102, v103, v104, v105;
    v36 = v178;
    v35 = v179;
    v40 = v55;
    goto LABEL_20;
  }

  v173 = v17;
  v59 = v55;
  v60 = a2;
  v61 = v58;
  v62 = sub_1BE052434();
  v64 = v63;

  v65 = [v59 secondaryActionTitle];
  v170 = v59;

  if (!v65)
  {
    v171, v66, v67, v68, v69, v70, v71, v72;
    v57, v106, v107, v108, v109, v110, v111, v112;
    v64, v113, v114, v115, v116, v117, v118, v119;
    v36 = v178;
    v35 = v179;
    a2 = v60;
    v17 = v173;
    v40 = v170;
    goto LABEL_20;
  }

  v73 = sub_1BE052434();
  v75 = v74;

  v172 = v60;
  v179 = [v60 identifier];
  v76 = sub_1BE052434();
  v78 = v77;

  v80 = v177;
  v79 = v178;
  v82 = v175;
  v81 = v176;
  v83 = v174;
  v84 = v171;
LABEL_27:
  *a8 = v79;
  a8[1] = v76;
  a8[2] = v78;
  a8[3] = v49;
  a8[4] = v84;
  a8[5] = v54;
  a8[6] = v57;
  a8[7] = v62;
  a8[8] = v64;
  a8[9] = v73;
  a8[10] = v75;
  a8[11] = v81;
  a8[12] = v80;
  a8[13] = v83;
  a8[14] = v82;
}

uint64_t static NearbyPeerPaymentSenderAuthorizationController.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47168, &qword_1BE0D8E90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v8 = *(v7 + 56);
  sub_1BD4864E0(a1, &v11 - v5, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BD4864E0(a2, &v6[v8], type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
LABEL_4:
      sub_1BD486410(v6, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_4;
  }

  sub_1BD0DE53C(v6, &qword_1EBD47168, &qword_1BE0D8E90);
  return 0;
}

uint64_t sub_1BD48315C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47168, &qword_1BE0D8E90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v9 = *(v8 + 56);
  sub_1BD4864E0(a1, &v12 - v6, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BD4864E0(a2, &v7[v9], type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
LABEL_4:
      sub_1BD486410(v7, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_4;
  }

  sub_1BD0DE53C(v7, &qword_1EBD47168, &qword_1BE0D8E90);
  return 0;
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.state.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController, &protocol conformance descriptor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  return sub_1BD4864E0(v13 + v11, a1, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
}

uint64_t sub_1BD48337C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController, &protocol conformance descriptor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  return sub_1BD4864E0(v3 + v12, a2, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
}

uint64_t sub_1BD483458(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4864E0(a1, v4, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  return sub_1BD483518(v4);
}

uint64_t sub_1BD483518(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47168, &qword_1BE0D8E90);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - v5;
  v7 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD4864E0(v1 + v10, v9, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  v11 = *(v4 + 56);
  sub_1BD486A24(v9, v6, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BD4864E0(a1, &v6[v11], type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_1BD0DE53C(v6, &qword_1EBD47168, &qword_1BE0D8E90);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v22[-2] = v1;
    v22[-1] = a1;
    v22[1] = v1;
    sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController, &protocol conformance descriptor for NearbyPeerPaymentSenderAuthorizationController);
    sub_1BE04B584();
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    return sub_1BD486410(a1, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_1BD486410(v6, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  swift_beginAccess();
  sub_1BD486B3C(a1, v1 + v10);
  swift_endAccess();
  return sub_1BD486410(a1, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
}

uint64_t sub_1BD4837E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD486B3C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.__allocating_init()()
{
  v0 = swift_allocObject();
  NearbyPeerPaymentSenderAuthorizationController.init()();
  return v0;
}

id NearbyPeerPaymentSenderAuthorizationController.init()()
{
  v1 = v0;
  v2 = sub_1BE052D44();
  v13 = *(v2 - 8);
  v14 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController_identityManager;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for PeerPaymentIdentityManager(0)) init];
  v12 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController_queue;
  v11[1] = sub_1BD14BE3C();
  sub_1BE051F74();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1BD483BE0(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
  sub_1BD126024(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530);
  sub_1BE053664();
  (*(v13 + 104))(v4, *MEMORY[0x1E69E8090], v14);
  *(v0 + v12) = sub_1BE052D74();
  *(v0 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__quoteAuthorizationTask) = 0;
  sub_1BE04B5C4();
  v8 = [objc_allocWithZone(MEMORY[0x1E69B8F40]) init];
  [v8 setEndpoint_];
  [v8 setQuoteRequestDestination_];
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v10 = result;
    [result prewarmDeviceScoreForAttributes_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD483BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void NearbyPeerPaymentSenderAuthorizationController.authorizeAmount(_:memo:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1BE051F54();
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[1] = *(v5 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController_queue);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a2;
  v18[7] = a3;
  aBlock[4] = sub_1BD484724;
  v42 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_101;
  v19 = _Block_copy(aBlock);
  sub_1BE048964();
  v20 = a1;
  sub_1BD0D44B8(a4, a5);
  sub_1BE048C84();
  sub_1BE051F74();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1BD483BE0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v16, v13, v19);
  _Block_release(v19);
  (*(v39 + 8))(v13, v11);
  (*(v37 + 8))(v16, v38);
  v21 = v42;
  v17, v22, v23, v24, v25, v26, v27, v28;
  v21, v29, v30, v31, v32, v33, v34, v35;
}

void sub_1BD483F4C(uint64_t a1, void *a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v114 = a5;
  v115 = a6;
  v116 = a2;
  v117 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v112 = &v111 - v8;
  v9 = sub_1BE04D214();
  v119 = *(v9 - 8);
  v120 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v111 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v111 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47168, &qword_1BE0D8E90);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v111 - v17;
  v19 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v111 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v29 = Strong;
  v111 = a4;
  KeyPath = swift_getKeyPath();
  v121 = v29;
  sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController, &protocol conformance descriptor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();
  KeyPath, v31, v32, v33, v34, v35, v36, v37;
  v38 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD4864E0(v29 + v38, v27, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  swift_storeEnumTagMultiPayload();
  v39 = *(v16 + 48);
  sub_1BD486A24(v27, v18, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BD486A24(v24, &v18[v39], type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    v41 = v119;
    if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_1BD0DE53C(v18, &qword_1EBD47168, &qword_1BE0D8E90);
    sub_1BE04D094();
    v80 = sub_1BE04D204();
    v81 = sub_1BE052C54();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1BD026000, v80, v81, "NearbyPeerPayment: quote generation and authorization already in progress", v82, 2u);
      MEMORY[0x1BFB45F20](v82, -1, -1);
      v29, v83, v84, v85, v86, v87, v88, v89;
    }

    else
    {

      v29, v90, v91, v92, v93, v94, v95, v96;
    }

    (*(v41 + 8))(v15, v120);
    return;
  }

  v79 = swift_getEnumCaseMultiPayload();
  v41 = v119;
  if (v79 != 3)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_1BD486410(v18, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  sub_1BE04D094();
  v42 = v116;
  v43 = sub_1BE04D204();
  v44 = sub_1BE052C54();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    _os_log_impl(&dword_1BD026000, v43, v44, "NearbyPeerPayment: generating authorized quote for amount %@", v45, 0xCu);
    sub_1BD0DE53C(v46, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v46, -1, -1);
    MEMORY[0x1BFB45F20](v45, -1, -1);
  }

  v48 = *(v41 + 8);
  v49 = v120;
  v48(v118, v120);
  swift_storeEnumTagMultiPayload();
  sub_1BD484734(v21, 0, 0);
  sub_1BD486410(v21, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  v50 = [objc_opt_self() sharedService];
  v51 = [objc_allocWithZone(MEMORY[0x1E69B8F28]) initWithPeerPaymentWebService_];

  v52 = v111;
  if (v51)
  {
    sub_1BE04C184();
    v53 = swift_allocObject();
    swift_weakInit();
    v54 = swift_allocObject();
    v55 = v114;
    v54[2] = v53;
    v54[3] = v55;
    v56 = v117;
    v54[4] = v115;
    v54[5] = v56;
    v54[6] = v52;
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BD0D44B8(v56, v52);
    sub_1BE04C174();
    v29, v57, v58, v59, v60, v61, v62, v63;

    v53, v64, v65, v66, v67, v68, v69, v70;
    v78 = v54;
LABEL_9:
    v78, v71, v72, v73, v74, v75, v76, v77;
    return;
  }

  v97 = v113;
  sub_1BE04D094();
  v98 = sub_1BE04D204();
  v99 = sub_1BE052C54();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_1BD026000, v98, v99, "NearbyPeerPayment: failed to initialize PKPeerPaymentController", v100, 2u);
    MEMORY[0x1BFB45F20](v100, -1, -1);
  }

  v48(v97, v49);
  v101 = v117;
  if (!v117)
  {
    v78 = v29;
    goto LABEL_9;
  }

  v102 = sub_1BE04B7C4();
  v103 = v112;
  (*(*(v102 - 8) + 56))(v112, 1, 1, v102);
  v101(0, v103);
  v29, v104, v105, v106, v107, v108, v109, v110;
  sub_1BD0DE53C(v103, &qword_1EBD47198, &qword_1BE0D8EC0);
}

uint64_t sub_1BD484734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v3 = sub_1BE051F54();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BE051FA4();
  v6 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1BD14BE3C();
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1BD4864E0(v30, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_1BD486A24(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  v16 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v31;
  v17 = v32;
  *v16 = v31;
  v16[1] = v17;
  aBlock[4] = sub_1BD486A8C;
  v36 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_13_2;
  v19 = _Block_copy(aBlock);
  v20 = v36;
  sub_1BD0D44B8(v18, v17);
  v20, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD483BE0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v8, v5, v19);
  _Block_release(v19);

  (*(v34 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v33);
}

void *sub_1BD484B10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v171 = a6;
  v172 = a7;
  v176 = *MEMORY[0x1E69E9840];
  v11 = sub_1BE04B7C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v166 - v16);
  v170 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v170);
  v173 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1BE04C4C4();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v174 = &v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (!a1)
  {
    if (!a2)
    {
      v146 = v173;
      swift_storeEnumTagMultiPayload();
      v147 = swift_allocObject();
      v148 = v171;
      v149 = v172;
      v147[2] = v171;
      v147[3] = v149;
      sub_1BD0D44B8(v148, v149);
      sub_1BD484734(v146, sub_1BD486BB0, v147);
      v147, v150, v151, v152, v153, v154, v155, v156;
      v21, v157, v158, v159, v160, v161, v162, v163;
      return sub_1BD486410(v146, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    }

    *v17 = a2;
    (*(v12 + 104))(v17, *MEMORY[0x1E69B7EC8], v11);
    v45 = *(v12 + 16);
    v46 = v173;
    v45(v173, v17, v11);
    (*(v12 + 56))(v46, 0, 1, v11);
    swift_storeEnumTagMultiPayload();
    v45(v14, v17, v11);
    v47 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v48 = swift_allocObject();
    v49 = v171;
    v167 = v21;
    v50 = v172;
    *(v48 + 2) = v171;
    *(v48 + 3) = v50;
    (*(v12 + 32))(&v48[v47], v14, v11);
    v51 = a2;
    sub_1BD0D44B8(v49, v50);
    v52 = a2;
    v53 = v167;
    sub_1BD484734(v46, sub_1BD486DAC, v48);
    v48, v54, v55, v56, v57, v58, v59, v60;
    v53, v61, v62, v63, v64, v65, v66, v67;

    v68 = v46;
    goto LABEL_6;
  }

  v22 = a1;
  sub_1BD485450(v22, a4, a5, v174);
  v167 = v21;
  v166 = v22;
  v69 = objc_opt_self();
  v175[0] = 0;
  v70 = [v69 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v175];
  v71 = v175[0];
  if (!v70)
  {
    v164 = v71;
    v165 = sub_1BE04A854();

    swift_willThrow();
    (*(v168 + 8))(v174, v169);
    *v17 = v165;
    (*(v12 + 104))(v17, *MEMORY[0x1E69B7EC8], v11);
    v23 = *(v12 + 16);
    v24 = v173;
    v23(v173, v17, v11);
    (*(v12 + 56))(v24, 0, 1, v11);
    swift_storeEnumTagMultiPayload();
    v23(v14, v17, v11);
    v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v26 = swift_allocObject();
    v28 = v171;
    v27 = v172;
    *(v26 + 2) = v171;
    *(v26 + 3) = v27;
    (*(v12 + 32))(&v26[v25], v14, v11);
    sub_1BD0D44B8(v28, v27);
    v29 = v165;
    v30 = v167;
    sub_1BD484734(v24, sub_1BD486C84, v26);

    v26, v31, v32, v33, v34, v35, v36, v37;
    v30, v38, v39, v40, v41, v42, v43, v44;

    v68 = v24;
LABEL_6:
    sub_1BD486410(v68, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    return (*(v12 + 8))(v17, v11);
  }

  v72 = sub_1BE04AAC4();
  v74 = v73;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD471D8, &qword_1BE0D8F80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001BE12B060;
  v76 = sub_1BE04C424();
  v78 = v77;
  v79 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v80 = sub_1BE04AAB4();
  v81 = [v79 initWithData_];

  sub_1BD1245AC(v76, v78, v82, v83, v84, v85, v86, v87);
  *(inited + 48) = v81;
  strcpy((inited + 56), "encodedQuote");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v88 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  sub_1BD041A38(v72, v74);
  v89 = sub_1BE04AAB4();
  v90 = [v88 initWithData_];

  sub_1BD1245AC(v72, v74, v91, v92, v93, v94, v95, v96);
  *(inited + 72) = v90;
  v97 = sub_1BD1ACE78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD471E0, qword_1BE0D8F88);
  swift_arrayDestroy();
  v98 = [objc_opt_self() archivedSessionTokenForSubject_];
  if (v98)
  {
    v99 = v98;
    v100 = sub_1BE04AAC4();
    v102 = v101;

    v103 = sub_1BE052434();
    v105 = v104;
    v106 = sub_1BE04AAB4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175[0] = v97;
    sub_1BD1DB684(v106, v103, v105, isUniquelyReferenced_nonNull_native);
    v105, v108, v109, v110, v111, v112, v113, v114;
    sub_1BD1245AC(v100, v102, v115, v116, v117, v118, v119, v120);
    v97 = v175[0];
  }

  v121 = v173;
  *v173 = v97;
  swift_storeEnumTagMultiPayload();
  v122 = swift_allocObject();
  v124 = v171;
  v123 = v172;
  v122[2] = v171;
  v122[3] = v123;
  v122[4] = v97;
  sub_1BE048C84();
  sub_1BD0D44B8(v124, v123);
  v125 = v167;
  sub_1BD484734(v121, sub_1BD486CE0, v122);
  v125, v126, v127, v128, v129, v130, v131, v132;
  v122, v133, v134, v135, v136, v137, v138, v139;
  sub_1BD1245AC(v72, v74, v140, v141, v142, v143, v144, v145);

  sub_1BD486410(v121, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  return (*(v168 + 8))(v174, v169);
}

void sub_1BD485450(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a2;
  v75 = a3;
  v6 = sub_1BE04D214();
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0, &qword_1BE0B9180);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v69 - v14;
  v16 = [a1 peerPaymentQuote];
  if (v16)
  {
    v17 = v16;
    v72 = v15;
    v70 = a4;
    v18 = [v16 totalReceiveAmount];
    if (v18)
    {
      v19 = v18;
      v71 = v6;
      v20 = [v17 totalReceiveAmountCurrency];
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        v19 = PKCurrencyAmountMake();

        if (v19)
        {
          v69 = v22;
          v23 = [a1 peerPaymentQuote];
          if (!v23)
          {
            __break(1u);
            return;
          }

          v24 = v23;
          v25 = [v23 transactionIdentifier];

          if (v25)
          {
            v76 = sub_1BE052434();
            v71 = v26;

            v27 = *(v73 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController_identityManager);
            KeyPath = swift_getKeyPath();
            v77 = v27;
            sub_1BD483BE0(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
            v29 = v19;
            sub_1BE04B594();
            KeyPath, v30, v31, v32, v33, v34, v35, v36;
            v37 = *(v27 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
            v38 = sub_1BE04AF64();
            (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
            sub_1BE048C84();
            v39 = v37;
            v40 = v72;
            sub_1BE04C464();
            v41 = sub_1BE04C4C4();
            v42 = *(v41 - 8);
            if ((*(v42 + 48))(v40, 1, v41) == 1)
            {
              sub_1BD0DE53C(v40, &unk_1EBD476F0, &qword_1BE0B9180);
              sub_1BD486CEC();
              swift_allocError();
              *v43 = 1;
              swift_willThrow();
            }

            else
            {

              (*(v42 + 32))(v70, v40, v41);
            }

            return;
          }

          v17 = v69;
        }

        else
        {
          v19 = v22;
        }
      }

      v17 = v19;
      v6 = v71;
    }
  }

  sub_1BE04D094();
  v44 = a1;
  v45 = sub_1BE04D204();
  v46 = sub_1BE052C34();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v77 = v48;
    *v47 = 136315138;
    v49 = [v44 debugDescription];
    v50 = sub_1BE052434();
    v52 = v51;

    v53 = sub_1BD123690(v50, v52, &v77);
    v52, v54, v55, v56, v57, v58, v59, v60;
    *(v47 + 4) = v53;
    _os_log_impl(&dword_1BD026000, v45, v46, "NearbyPeerPayment: attempted to generate sender metadata without quote data, authorized quote: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48, v61, v62, v63, v64, v65, v66, v67);
    MEMORY[0x1BFB45F20](v48, -1, -1);
    MEMORY[0x1BFB45F20](v47, -1, -1);
  }

  (*(v76 + 8))(v8, v6);
  sub_1BD486CEC();
  swift_allocError();
  *v68 = 0;
  swift_willThrow();
}

void sub_1BD4859FC(void (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  if (a1)
  {
    v8 = sub_1BE04B7C4();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    a1(a3, v7);
    sub_1BD0DE53C(v7, &qword_1EBD47198, &qword_1BE0D8EC0);
  }
}

void sub_1BD485AE8(void (*a1)(void, char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  if (a1)
  {
    v8 = sub_1BE04B7C4();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v7, a3, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    a1(0, v7);
    sub_1BD0DE53C(v7, &qword_1EBD47198, &qword_1BE0D8EC0);
  }
}

void sub_1BD485C28(void (*a1)(void, char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  if (a1)
  {
    v5 = sub_1BE04B7C4();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    a1(0, v4);
    sub_1BD0DE53C(v4, &qword_1EBD47198, &qword_1BE0D8EC0);
  }
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.errorProcessed(_:)(uint64_t a1)
{
  v57 = a1;
  v2 = sub_1BE04D214();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v49 - v7;
  v8 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for FeatureError(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  sub_1BD0DE19C(v57, v18, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v25 = *(v20 + 48);
  v57 = v19;
  if (v25(v18, 1, v19) == 1)
  {
    return sub_1BD0DE53C(v18, &qword_1EBD416C0, &unk_1BE0BC2A0);
  }

  sub_1BD486A24(v18, v24, type metadata accessor for FeatureError);
  KeyPath = swift_getKeyPath();
  v58 = v1;
  sub_1BD483BE0(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController, &protocol conformance descriptor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();
  KeyPath, v28, v29, v30, v31, v32, v33, v34;
  v35 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD4864E0(v1 + v35, v12, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v56;
    sub_1BD486470(v12, v56);
    v37 = v55;
    sub_1BD0DE19C(v36, v55, &qword_1EBD47198, &qword_1BE0D8EC0);
    FeatureError.init(_:)(v37, v15);
    LOBYTE(v37) = FeatureError.matches(error:)(v15);
    sub_1BD0DE53C(v15, &qword_1EBD416C0, &unk_1BE0BC2A0);
    if (v37)
    {
      v38 = v52;
      sub_1BE04D094();
      v55 = v24;
      v39 = v50;
      sub_1BD4864E0(v24, v50, type metadata accessor for FeatureError);
      v40 = sub_1BE04D204();
      v41 = sub_1BE052C54();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v42 = 138412290;
        sub_1BD483BE0(&qword_1EBD471A0, type metadata accessor for FeatureError, &protocol conformance descriptor for FeatureError);
        swift_allocError();
        sub_1BD4864E0(v39, v43, type metadata accessor for FeatureError);
        v44 = _swift_stdlib_bridgeErrorToNSError();
        sub_1BD486410(v39, type metadata accessor for FeatureError);
        *(v42 + 4) = v44;
        v45 = v49;
        *v49 = v44;
        _os_log_impl(&dword_1BD026000, v40, v41, "NearbyPeerPayment: error marked as processed: %@, resetting authorization state", v42, 0xCu);
        sub_1BD0DE53C(v45, &unk_1EBD3E590, &unk_1BE0B7E50);
        MEMORY[0x1BFB45F20](v45, -1, -1);
        MEMORY[0x1BFB45F20](v42, -1, -1);
      }

      else
      {

        sub_1BD486410(v39, type metadata accessor for FeatureError);
      }

      (*(v53 + 8))(v38, v54);
      v48 = v51;
      swift_storeEnumTagMultiPayload();
      sub_1BD484734(v48, 0, 0);
      sub_1BD486410(v48, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
      sub_1BD0DE53C(v36, &qword_1EBD47198, &qword_1BE0D8EC0);
      v46 = type metadata accessor for FeatureError;
      v47 = v55;
    }

    else
    {
      sub_1BD0DE53C(v36, &qword_1EBD47198, &qword_1BE0D8EC0);
      v46 = type metadata accessor for FeatureError;
      v47 = v24;
    }
  }

  else
  {
    sub_1BD486410(v24, type metadata accessor for FeatureError);
    v46 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State;
    v47 = v12;
  }

  return sub_1BD486410(v47, v46);
}

uint64_t sub_1BD486410(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD486470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198, &qword_1BE0D8EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4864E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BD486548(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1BD4864E0(a2, v7, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    sub_1BD483518(v7);
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  if (a3)
  {
    a3();
  }
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.deinit()
{
  sub_1BD486410(v0 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);

  *(v0 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__quoteAuthorizationTask), v1, v2, v3, v4, v5, v6, v7;
  v8 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController___observationRegistrar;
  v9 = sub_1BE04B5D4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t NearbyPeerPaymentSenderAuthorizationController.__deallocating_deinit()
{
  sub_1BD486410(v0 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);

  *(v0 + OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__quoteAuthorizationTask), v1, v2, v3, v4, v5, v6, v7;
  v8 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController___observationRegistrar;
  v9 = sub_1BE04B5D4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD4867E4(uint64_t a1)
{
  result = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BE04B5D4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1BD4868F4(uint64_t a1)
{
  sub_1BD486968();
  if (v1 <= 0x3F)
  {
    sub_1BD4869CC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD486968()
{
  if (!qword_1EBD471C8)
  {
    v0 = sub_1BE052274();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD471C8);
    }
  }
}

void sub_1BD4869CC(uint64_t a1)
{
  if (!qword_1EBD471D0)
  {
    sub_1BE04B7C4();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD471D0);
    }
  }
}

uint64_t sub_1BD486A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD486A8C()
{
  v1 = *(type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD486548(v3, v0 + v2, v4);
}

uint64_t sub_1BD486B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  v8 = sub_1BE04B7C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  if (*(v0 + 16))
  {
    *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  }

  (*(v9 + 8))(v0 + ((v10 + 32) & ~v10), v8);

  return swift_deallocObject();
}

unint64_t sub_1BD486CEC()
{
  result = qword_1EBD471E8;
  if (!qword_1EBD471E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD471E8);
  }

  return result;
}

unint64_t sub_1BD486D54()
{
  result = qword_1EBD471F0;
  if (!qword_1EBD471F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD471F0);
  }

  return result;
}

uint64_t sub_1BD486DB8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v133[2] = a3;
  v134 = a1;
  v135 = a2;
  v141 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v140 = v133 - v8;
  v9 = sub_1BE050474();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v137 = *(v13 - 8);
  v138 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v136 = v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v133 - v16;
  v143 = sub_1BD487FF0(a3);
  v144 = v18;
  v133[1] = sub_1BD0DDEBC();
  v19 = sub_1BE0506C4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v10 + 104))(v12, *MEMORY[0x1E6980EF8], v9);
  sub_1BE0503A4();
  v26 = sub_1BE050284();
  (*(v10 + 8))(v12, v9);
  v27 = sub_1BE0505F4();
  v29 = v28;
  LOBYTE(v9) = v30;
  v32 = v31;
  v26, v28, v30, v31, v33, v34, v35, v36;
  sub_1BD0DDF10(v19, v21, (v23 & 1), v37, v38, v39, v40, v41);
  v25, v42, v43, v44, v45, v46, v47, v48;
  v143 = v27;
  v144 = v29;
  v145 = v9 & 1;
  v146 = v32;
  sub_1BE052434();
  v50 = v49;
  v139 = v17;
  sub_1BE050DE4();
  v50, v51, v52, v53, v54, v55, v56, v57;
  sub_1BD0DDF10(v27, v29, (v9 & 1), v58, v59, v60, v61, v62);
  v32, v63, v64, v65, v66, v67, v68, v69;
  v70 = sub_1BD4872D0(v134, v135);
  if (v71)
  {
    v143 = v70;
    v144 = v71;
    v72 = sub_1BE0506C4();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = sub_1BE051494();
    v80 = sub_1BE050564();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v79, v81, v83, v85, v87, v88, v89, v90;
    sub_1BD0DDF10(v72, v74, (v76 & 1), v91, v92, v93, v94, v95);
    v78, v96, v97, v98, v99, v100, v101, v102;
    v143 = v80;
    v144 = v82;
    v103 = (v84 & 1);
    v145 = v84 & 1;
    v146 = v86;
    sub_1BE052434();
    v105 = v104;
    v106 = v136;
    sub_1BE050DE4();
    v105, v107, v108, v109, v110, v111, v112, v113;
    sub_1BD0DDF10(v80, v82, v103, v114, v115, v116, v117, v118);
    v86, v119, v120, v121, v122, v123, v124, v125;
    v126 = v140;
    sub_1BD133260(v106, v140);
    v127 = 0;
  }

  else
  {
    v127 = 1;
    v126 = v140;
    v106 = v136;
  }

  (*(v137 + 56))(v126, v127, 1, v138);
  v128 = v139;
  sub_1BD0DE19C(v139, v106, &qword_1EBD452C0, &qword_1BE0B7620);
  v129 = v142;
  sub_1BD0DE19C(v126, v142, &unk_1EBD5BB60, &qword_1BE0C4580);
  v130 = v141;
  sub_1BD0DE19C(v106, v141, &qword_1EBD452C0, &qword_1BE0B7620);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228, &qword_1BE0D9270);
  sub_1BD0DE19C(v129, v130 + *(v131 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v126, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v128, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v129, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v106, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD4872D0(void *a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  if ([v8 type] == 1 && (objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) != 0))
  {
    v10 = [v9 selectedOffer];

    if (v10)
    {
      v11 = [v10 rewardsSelectedPaymentOffer];

      if (v11)
      {
        v12 = [v11 rewardsRedemptionIntent];
        v13 = [v12 programName];

        v14 = sub_1BE052434();
        return v14;
      }
    }
  }

  else
  {
  }

  if (a2 && (v15 = [a2 programName]) != 0)
  {
    v16 = v15;
    v14 = sub_1BE052434();
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69B8078], v4);
    v14 = sub_1BE04B714();
    (*(v5 + 8))(v7, v4);
  }

  return v14;
}

double sub_1BD487504@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47218, &qword_1BE0D9260);
  sub_1BD486DB8(v4, v5, v6, a2 + *(v7 + 44));
  LOBYTE(v6) = sub_1BE0501D4();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47220, &qword_1BE0D9268) + 36);
  *v8 = v6;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

unint64_t sub_1BD4875CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BD488194(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PKPaymentOfferConfirmationRecordDetailCell.configure(withConfirmationRecord:transaction:installmentCriteria:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD471F8, &qword_1BE0D9080);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-v9];
  v13 = a1;
  v14 = a3;
  v15 = a2;
  v16 = ObjectType;
  sub_1BD4881B0();
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v17[3] = v7;
  v17[4] = sub_1BD0DE4F4(&qword_1EBD47208, &qword_1EBD471F8, &qword_1BE0D9080, MEMORY[0x1E697C858]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1BE04FCD4();
  (*(v8 + 8))(v10, v7);
  return MEMORY[0x1BFB3FD10](v17);
}

id sub_1BD487798@<X0>(id a1@<X2>, void *a2@<X0>, void *a3@<X1>, void *a4@<X8>)
{
  v6 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(a2, a1, a3);
  *a4 = a2;
  a4[1] = a3;
  a4[2] = v6;
  v7 = a3;

  return a2;
}

id PKPaymentOfferConfirmationRecordDetailCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v7];

  return v15;
}