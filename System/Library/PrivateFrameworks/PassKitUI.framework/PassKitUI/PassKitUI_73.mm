unint64_t sub_1BD7AC490()
{
  result = qword_1EBD534E0;
  if (!qword_1EBD534E0)
  {
    type metadata accessor for AppleCardFeaturesAndBenefitsManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD534E0);
  }

  return result;
}

void sub_1BD7AC530(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return;
  }

  if (*(a2 + 112))
  {
    v4 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
    [a3 presentViewController:v4 animated:1 completion:0];
LABEL_7:

    goto LABEL_8;
  }

  v5 = a1;
  v6 = [a3 navigationController];
  if (v6)
  {
    v4 = v6;
    [v6 pushViewController:v5 animated:1];
    goto LABEL_7;
  }

LABEL_8:
}

id AppleCardFeaturesAndBenefitsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
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

id AppleCardFeaturesAndBenefitsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD7AC758@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for TransferOptionsSheet(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = v5;
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53510, &qword_1BE0F8288);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v67 = v61 - v9;
  v10 = sub_1BD7ACBAC();
  v12 = v11;
  v62 = v1;
  v14 = *(v1 + 40);
  v13 = *(v1 + 48);
  v66 = type metadata accessor for TransferOptionsSheet;
  sub_1BD7B10BC(v1, v6, type metadata accessor for TransferOptionsSheet);
  v63 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = v63;
  v16 = swift_allocObject();
  v64 = type metadata accessor for TransferOptionsSheet;
  sub_1BD7B1124(v6, v16 + v15, type metadata accessor for TransferOptionsSheet);
  *&v79 = sub_1BD7B0464;
  *(&v79 + 1) = v16;
  *&v80 = v10;
  *(&v80 + 1) = v12;
  *&v81 = v14;
  *(&v81 + 1) = v13;
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  v85[0] = sub_1BD7B0464;
  v85[1] = v16;
  v85[2] = v10;
  v85[3] = v12;
  v85[4] = v14;
  v85[5] = v13;
  v86 = 0u;
  v87 = 0u;
  v88 = 0;
  sub_1BE048964();
  sub_1BD0B4274(&v79, &v89);
  sub_1BD0B42E4(v85);
  v76 = v82;
  v77 = v83;
  v78 = v84;
  v74 = v80;
  v75 = v81;
  v73 = v79;
  v17 = v62;
  v18 = v62 + *(v3 + 56);
  v19 = *v18;
  v20 = *(v18 + 8);
  v71 = v19;
  v72 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v21 = v89;
  v61[1] = v90;
  v22 = v6;
  sub_1BD7B10BC(v17, v6, v66);
  v23 = v63;
  v24 = swift_allocObject();
  sub_1BD7B1124(v22, v24 + v23, v64);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53518, &unk_1BE0F8290);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53520, &unk_1BE0F82A0);
  *&v60 = sub_1BD0DE4F4(&qword_1EBD53528, &qword_1EBD53518, &unk_1BE0F8290, &unk_1BE0E6430);
  *(&v60 + 1) = sub_1BD7B0554();
  v27 = v67;
  sub_1BE050F64();
  *(&v21 + 1), v28, v29, v30, v31, v32, v33, v34;
  v24, v35, v36, v37, v38, v39, v40, v41;
  v21, v42, v43, v44, v45, v46, v47, v48;
  v91 = v75;
  v92 = v76;
  v93 = v77;
  v94 = v78;
  v89 = v73;
  v90 = v74;
  sub_1BD0B42E4(&v89);
  sub_1BE052434();
  v50 = v49;
  *&v73 = v25;
  *(&v73 + 1) = v26;
  v74 = v60;
  swift_getOpaqueTypeConformance2();
  v51 = v68;
  sub_1BE050DE4();
  v50, v52, v53, v54, v55, v56, v57, v58;
  return (*(v69 + 8))(v27, v51);
}

id sub_1BD7ACBAC()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v9;
  v12 = *(*v0 + qword_1EBDAB038);
  v13 = *(v2 + 104);
  if (v12 == 3)
  {
    v13(v7, *MEMORY[0x1E69B80E0], v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      v11 = v7;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v12 == 2)
  {
    v13(&v17 - v9, *MEMORY[0x1E69B80E0], v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v11, v1);
      return v16;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13(v4, *MEMORY[0x1E69B8068], v1, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v11 = v4;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BD7ACE44(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53538, &qword_1BE0F82F8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24[-v5];
  v25 = a2;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53540, &qword_1BE0F8300);
  sub_1BD0DE4F4(&qword_1EBD53548, &qword_1EBD53540, &qword_1BE0F8300, MEMORY[0x1E6981F48]);
  sub_1BE0504A4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v7 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53550, &qword_1BE0F8308) + 36)];
  v8 = v32;
  v7[4] = v31;
  v7[5] = v8;
  v7[6] = v33;
  v9 = v28;
  *v7 = v27;
  v7[1] = v9;
  v10 = v30;
  v7[2] = v29;
  v7[3] = v10;
  v11 = sub_1BE051274();
  v12 = sub_1BE0501D4();
  v13 = sub_1BE051CD4();
  v14 = &v6[*(v4 + 36)];
  *v14 = v11;
  v14[8] = v12;
  *(v14 + 2) = v13;
  *(v14 + 3) = v15;
  sub_1BD7B05E0();
  sub_1BD4CDC28();
  sub_1BD4CDC7C();
  sub_1BE048964();
  sub_1BE050D64();
  a1, v16, v17, v18, v19, v20, v21, v22;
  return sub_1BD0DE53C(v6, &qword_1EBD53538, &qword_1BE0F82F8);
}

uint64_t sub_1BD7AD09C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53578, &qword_1BE0F8320);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53580, &qword_1BE0F8328);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1BD7AD298(a1, &v18 - v14);
  sub_1BD7ADC7C(v9);
  sub_1BD0DE19C(v15, v12, &qword_1EBD53580, &qword_1BE0F8328);
  sub_1BD0DE19C(v9, v6, &qword_1EBD53578, &qword_1BE0F8320);
  sub_1BD0DE19C(v12, a2, &qword_1EBD53580, &qword_1BE0F8328);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53588, &qword_1BE0F8330);
  sub_1BD0DE19C(v6, a2 + *(v16 + 48), &qword_1EBD53578, &qword_1BE0F8320);
  sub_1BD0DE53C(v9, &qword_1EBD53578, &qword_1BE0F8320);
  sub_1BD0DE53C(v15, &qword_1EBD53580, &qword_1BE0F8328);
  sub_1BD0DE53C(v6, &qword_1EBD53578, &qword_1BE0F8320);
  return sub_1BD0DE53C(v12, &qword_1EBD53580, &qword_1BE0F8328);
}

id sub_1BD7AD298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108[1] = a1;
  v115 = a2;
  v3 = sub_1BE04BD74();
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v109 = v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v110 = v108 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535A8, &qword_1BE0F8358);
  v111 = *(v7 - 8);
  v112 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v108[0] = v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535B0, &qword_1BE0F8360);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v118 = (v108 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535B8, &qword_1BE0F8368);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v108 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v108 - v18;
  v20 = type metadata accessor for PeerPaymentModel(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535C0, &qword_1BE0F8370);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v113 = v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v119 = v108 - v27;
  v28 = type metadata accessor for TransferOptionsSheet(0);
  sub_1BD0DE19C(v2 + *(v28 + 40), v19, &qword_1EBD45480, &unk_1BE0B8C30);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD45480, &unk_1BE0B8C30);
LABEL_6:
    v37 = v117;
    v36 = v118;
    (*(v14 + 56))(v119, 1, 1, v13);
    goto LABEL_7;
  }

  sub_1BD7B1124(v19, v23, type metadata accessor for PeerPaymentModel);
  if (v23[*(v20 + 48)] != 1)
  {
    sub_1BD7B118C(v23, type metadata accessor for PeerPaymentModel);
    goto LABEL_6;
  }

  v124 = sub_1BD7AE168();
  v125 = v29;
  sub_1BD0DDEBC();
  v124 = sub_1BE0506C4();
  v125 = v30;
  v126 = v31 & 1;
  v127 = v32;
  MEMORY[0x1EEE9AC00](v124);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535E0, &qword_1BE0F8388);
  sub_1BD7B0804();
  sub_1BE051A54();
  v33 = sub_1BE04F794();
  v34 = &v16[*(v13 + 36)];
  *v34 = v33;
  v34[1] = sub_1BD7AEC8C;
  v34[2] = 0;
  v35 = v119;
  sub_1BD7B09A4(v16, v119);
  (*(v14 + 56))(v35, 0, 1, v13);
  sub_1BD7B118C(v23, type metadata accessor for PeerPaymentModel);
  v37 = v117;
  v36 = v118;
LABEL_7:
  v38 = *(v2 + 64);
  v39 = v116;
  if (v38 == 1)
  {
    goto LABEL_19;
  }

  v40 = *(v2 + 80);
  v41 = *(v2 + 88);
  v42 = *(v2 + 72);
  if (v40 && v40[2])
  {
    sub_1BD3EFCD8(*(v2 + 64), *(v2 + 72));
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BD17195C(v38, v42);
    v41, v43, v44, v45, v46, v47, v48, v49;
    v40, v50, v51, v52, v53, v54, v55, v56;
    goto LABEL_13;
  }

  sub_1BD3EFCD8(*(v2 + 64), *(v2 + 72));
  sub_1BE048C84();
  sub_1BE048C84();
  v57 = PKOslo2024UIUpdatesEnabled();
  sub_1BD17195C(v38, v42);
  v41, v58, v59, v60, v61, v62, v63, v64;
  v40, v65, v66, v67, v68, v69, v70, v71;
  if (!v57 || !*(*(v2 + 56) + 16))
  {
LABEL_19:
    v102 = 1;
    v100 = v111;
    v101 = v112;
LABEL_20:
    (*(v100 + 56))(v36, v102, 1, v101);
    v103 = v119;
    v104 = v113;
    sub_1BD0DE19C(v119, v113, &qword_1EBD535C0, &qword_1BE0F8370);
    v105 = v114;
    sub_1BD0DE19C(v36, v114, &qword_1EBD535B0, &qword_1BE0F8360);
    v106 = v115;
    sub_1BD0DE19C(v104, v115, &qword_1EBD535C0, &qword_1BE0F8370);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535C8, &qword_1BE0F8378);
    sub_1BD0DE19C(v105, v106 + *(v107 + 48), &qword_1EBD535B0, &qword_1BE0F8360);
    sub_1BD0DE53C(v36, &qword_1EBD535B0, &qword_1BE0F8360);
    sub_1BD0DE53C(v103, &qword_1EBD535C0, &qword_1BE0F8370);
    sub_1BD0DE53C(v105, &qword_1EBD535B0, &qword_1BE0F8360);
    return sub_1BD0DE53C(v104, &qword_1EBD535C0, &qword_1BE0F8370);
  }

LABEL_13:
  v72 = *(v39 + 104);
  v73 = v110;
  v72(v110, *MEMORY[0x1E69B8068], v37);
  result = PKPassKitBundle();
  if (result)
  {
    v75 = result;
    v76 = sub_1BE04B6F4();
    v78 = v77;

    v118 = *(v39 + 8);
    v118(v73, v37);
    v124 = v76;
    v125 = v78;
    v117 = sub_1BD0DDEBC();
    v124 = sub_1BE0506C4();
    v125 = v79;
    v126 = v80 & 1;
    v127 = v81;
    v82 = *(*v2 + qword_1EBDAB038);
    v83 = v109;
    v72(v109, *MEMORY[0x1E69B80E0], v37);
    result = PKPassKitBundle();
    if (result)
    {
      v84 = result;
      if (v82 == 2)
      {
        v85 = "ACH_WITHDRAWAL_SPEED_FOOTER";
      }

      else
      {
        v85 = "UNAVAILABLE_BANK_ACCOUNT_FOOTER";
      }

      v86 = sub_1BE04B6F4();
      v88 = v87;
      (v85 | 0x8000000000000000), v87, v89, v90, v91, v92, v93, v94;

      v118(v83, v37);
      v120 = v86;
      v121 = v88;
      v120 = sub_1BE0506C4();
      v121 = v95;
      v122 = v96 & 1;
      v123 = v97;
      MEMORY[0x1EEE9AC00](v120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535D0, &qword_1BE0F8380);
      sub_1BD0DE4F4(&qword_1EBD535D8, &qword_1EBD535D0, &qword_1BE0F8380, MEMORY[0x1E6981F48]);
      v98 = v108[0];
      sub_1BE051A34();
      v100 = v111;
      v99 = v112;
      (*(v111 + 32))(v36, v98, v112);
      v101 = v99;
      v102 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD7ADC7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53590, &qword_1BE0F8338);
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  if ((PKOslo2024UIUpdatesEnabled() & 1) == 0)
  {
    v10 = *(v1 + 64);
    if (v10 != 1)
    {
      v51 = a1;
      v12 = *(v1 + 72);
      v11 = *(v1 + 80);
      v13 = *(v1 + 88);
      if (v13)
      {
        if (v13[2])
        {
          v14 = *MEMORY[0x1E69B80E0];
          v15 = *(v4 + 104);
          LODWORD(v50) = *(v1 + 96);
          v15(v6, v14, v3);
          v48 = v12;
          v49 = v11;
          sub_1BD3EFC88(v10, v12, v11, v13);
          sub_1BE048C84();
          result = PKPassKitBundle();
          if (result)
          {
            v17 = result;
            v18 = sub_1BE04B6F4();
            v50 = v19;

            (*(v4 + 8))(v6, v3);
            *&v53 = v18;
            *(&v53 + 1) = v50;
            sub_1BD0DDEBC();
            v54 = sub_1BE0506C4();
            v55 = v20;
            v56 = v21 & 1;
            v57 = v22;
            v23 = sub_1BD7AFCA0(&v53);
            MEMORY[0x1EEE9AC00](v23);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C548, &qword_1BE0F8340);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53598, &unk_1BE0F8348);
            sub_1BD5CEA78();
            sub_1BD7B0750();
            sub_1BE051A34();
            sub_1BD17195C(v10, v48);
            swift_bridgeObjectRelease_n();
            v49, v24, v25, v26, v27, v28, v29, v30;
            v31 = v51;
            (*(v52 + 32))(v51, v9, v7);
            return (*(v52 + 56))(v31, 0, 1, v7);
          }

          else
          {
            __break(1u);
          }

          return result;
        }

        sub_1BD3EFC88(v10, *(v1 + 72), *(v1 + 80), *(v1 + 88));
        sub_1BD17195C(v10, v12);
        v13, v39, v40, v41, v42, v43, v44, v45;
      }

      else
      {
        sub_1BD3EFCD8(v10, *(v1 + 72));
        sub_1BE048C84();
        sub_1BD17195C(v10, v12);
      }

      v11, v32, v33, v34, v35, v36, v37, v38;
      a1 = v51;
    }
  }

  v46 = *(v52 + 56);

  return v46(a1, 1, 1, v7);
}

uint64_t sub_1BD7AE094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + qword_1EBDAB050);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    v5 = swift_getKeyPath();
    v6 = v3;
    sub_1BE04D8B4(&v24);
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
    v5, v14, v15, v16, v17, v18, v19, v20;

    v21 = v24;
    v22 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithUnavailableFundingSourceTopicForAccount_];
    result = sub_1BE0501F4();
  }

  else
  {
    v21 = 0;
    v22 = 0;
    result = 0;
  }

  *a2 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = result;
  return result;
}

id sub_1BD7AE168()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for TransferOptionsSheet(0);
  sub_1BD0DE19C(v0 + *(v14 + 40), v13, &qword_1EBD45480, &unk_1BE0B8C30);
  v15 = type metadata accessor for PeerPaymentModel(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    sub_1BD0DE53C(v13, &qword_1EBD45480, &unk_1BE0B8C30);
LABEL_6:
    (*(v2 + 104))(v4, *MEMORY[0x1E69B80E0], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();
      v7 = v4;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  sub_1BD7B10BC(&v13[*(v15 + 20)], v10, type metadata accessor for AvailablePass);
  sub_1BD7B118C(v13, type metadata accessor for PeerPaymentModel);
  v16 = *&v10[*(v8 + 36)];
  v17 = v16;
  sub_1BD7B118C(v10, type metadata accessor for AvailablePass);
  if (!v16)
  {
    goto LABEL_6;
  }

  (*(v2 + 104))(v7, *MEMORY[0x1E69B80E0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v19 = result;
    v20 = sub_1BE04B6F4();

LABEL_8:
    (*(v2 + 8))(v7, v1);
    return v20;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BD7AE4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v4 = type metadata accessor for TransferOptionsSheet(0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535F8, &unk_1BE0F8390);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53600, &unk_1BE0F83A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for PassRow(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(type metadata accessor for PeerPaymentModel(0) + 20);
  if (*(v15 + *(type metadata accessor for AvailablePass(0) + 36)))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0, &qword_1BE0DB0D0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    sub_1BD7B10BC(v15, v14, type metadata accessor for AvailablePass);
    *&v14[v17] = 0;
    v14[v18] = 1;
    type metadata accessor for PassRow.Pass(0);
    swift_storeEnumTagMultiPayload();
    v14[*(v12 + 20)] = 0;
    sub_1BD7B10BC(v14, v11, type metadata accessor for PassRow);
    swift_storeEnumTagMultiPayload();
    sub_1BD7B1520(&qword_1EBD397D8, type metadata accessor for PassRow, &unk_1BE0ED358);
    sub_1BD7B08C0();
    sub_1BE04F9A4();
    return sub_1BD7B118C(v14, type metadata accessor for PassRow);
  }

  else
  {
    sub_1BD7B10BC(v26, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransferOptionsSheet);
    v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v21 = swift_allocObject();
    v22 = sub_1BD7B1124(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for TransferOptionsSheet);
    MEMORY[0x1EEE9AC00](v22);
    *(&v24 - 2) = a1;
    sub_1BD7B1520(&qword_1EBD397D8, type metadata accessor for PassRow, &unk_1BE0ED358);
    sub_1BE051704();
    v23 = &v8[*(v6 + 36)];
    *v23 = xmmword_1BE0B8C20;
    *(v23 + 1) = xmmword_1BE0B8C20;
    v23[32] = 0;
    sub_1BD0DE19C(v8, v11, &qword_1EBD535F8, &unk_1BE0F8390);
    swift_storeEnumTagMultiPayload();
    sub_1BD7B08C0();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v8, &qword_1EBD535F8, &unk_1BE0F8390);
  }
}

id sub_1BD7AE94C(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKAccountTransferTypeToString();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE052434();
    v10 = v9;

    sub_1BE04D084();
    sub_1BE048C84();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();
    v10, v13, v14, v15, v16, v17, v18, v19;
    if (os_log_type_enabled(v11, v12))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v21;
      *v20 = 136315138;
      v22 = sub_1BD123690(v8, v10, &v45);
      v10, v23, v24, v25, v26, v27, v28, v29;
      *(v20 + 4) = v22;
      _os_log_impl(&dword_1BD026000, v11, v12, "Selected peer payment as transfer option for type: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21, v30, v31, v32, v33, v34, v35, v36);
      MEMORY[0x1BFB45F20](v21, -1, -1);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    else
    {

      v10, v37, v38, v39, v40, v41, v42, v43;
    }

    (*(v3 + 8))(v5, v2);
    (*(a1 + 24))(1);
    return (*(a1 + 8))(0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7AEB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PeerPaymentModel(0);
  sub_1BD7B10BC(a1 + *(v7 + 20), v6, type metadata accessor for AvailablePass);
  LOBYTE(a1) = *(a1 + *(v7 + 40));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0, &qword_1BE0DB0D0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  sub_1BD7B1124(v6, a2, type metadata accessor for AvailablePass);
  *(a2 + v9) = 0;
  *(a2 + v10) = 0;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for PassRow(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1BD7AEC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v5 = type metadata accessor for TransferOptionsSheet(0);
  v63 = *(v5 - 8);
  v6 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5B0, &unk_1BE0F83B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5B8, &qword_1BE0E6310);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v58 - v16;
  v18 = *(a1 + 64);
  v65 = v58 - v16;
  if (v18 == 1)
  {
    goto LABEL_8;
  }

  v60 = v11;
  v61 = a2;
  v62 = v8;
  v20 = *(a1 + 72);
  v19 = *(a1 + 80);
  v21 = *(a1 + 88);
  if (!v19)
  {
    sub_1BD3EFCD8(v18, *(a1 + 72));
    sub_1BE048C84();
    sub_1BD17195C(v18, v20);
LABEL_7:
    v21, v33, v34, v35, v36, v37, v38, v39;
    a2 = v61;
    v8 = v62;
LABEL_8:
    (*(v9 + 56))(v17, 1, 1, v8);
    v32 = v17;
    goto LABEL_9;
  }

  v22 = *(a1 + 96);
  if (!v19[2])
  {
    sub_1BD3EFC88(v18, *(a1 + 72), *(a1 + 80), *(a1 + 88));
    sub_1BD17195C(v18, v20);
    v19, v40, v41, v42, v43, v44, v45, v46;
    goto LABEL_7;
  }

  v58[2] = *(a1 + 96);
  v59 = v22 & 1;
  v66[0] = v19;
  sub_1BD7B10BC(a1, v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransferOptionsSheet);
  v23 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v25;
  v63 = v25;
  sub_1BD7B1124(v7, v26, type metadata accessor for TransferOptionsSheet);
  v28 = v27 + v24;
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v19;
  *(v28 + 24) = v21;
  *(v28 + 32) = v59;
  sub_1BD3EFC88(v18, v20, v19, v21);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C570, &qword_1BE0E62E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5F0, &qword_1BE0E6328);
  sub_1BD0DE4F4(&qword_1EBD4C578, &qword_1EBD4C570, &qword_1BE0E62E0, MEMORY[0x1E69E6338]);
  sub_1BD5CEEA0();
  sub_1BD5CEC08();
  v29 = v60;
  sub_1BE0519D4();
  v30 = v65;
  v31 = v62;
  (*(v9 + 32))(v65, v29, v62);
  v32 = v30;
  (*(v9 + 56))(v30, 0, 1, v31);
  a2 = v61;
LABEL_9:
  sub_1BD7AF754(a2, v66);
  v47 = v66[0];
  v48 = v66[1];
  v49 = v66[2];
  v50 = v66[3];
  v51 = v66[4];
  v52 = v66[5];
  sub_1BD0DE19C(v32, v14, &qword_1EBD4C5B8, &qword_1BE0E6310);
  v53 = v64;
  sub_1BD0DE19C(v14, v64, &qword_1EBD4C5B8, &qword_1BE0E6310);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53608, &qword_1BE0F83C0) + 48));
  *v54 = v47;
  v54[1] = v48;
  v54[2] = v49;
  v54[3] = v50;
  v54[4] = v51;
  v54[5] = v52;
  sub_1BD0EE87C(v47, v48, v49, v50, v51, v52);
  sub_1BD0DE53C(v65, &qword_1EBD4C5B8, &qword_1BE0E6310);
  sub_1BD4CE958(v47, v48, v49, v50, v51, v52, v55, v56);
  return sub_1BD0DE53C(v14, &qword_1EBD4C5B8, &qword_1BE0E6310);
}

__n128 sub_1BD7AF188@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TransferOptionsSheet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = *a1;
  v11 = *(a1 + 8);
  sub_1BD7B10BC(a2, &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TransferOptionsSheet);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_1BD7B1124(&v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for TransferOptionsSheet);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v12;
  v15[1] = v11;
  v25 = a2;
  v26 = v12;
  v27 = v11;
  v28 = a3;
  sub_1BD5CEBB4();
  v16 = v12;
  v17 = v11;
  sub_1BE051704();
  v18 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5F0, &qword_1BE0E6328) + 36));
  __asm { FMOV            V0.2D, #16.0 }

  *v18 = result;
  v18[1] = result;
  v18[2].n128_u8[0] = 0;
  return result;
}

id sub_1BD7AF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKAccountTransferTypeToString();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE052434();
    v14 = v13;

    sub_1BE04D084();
    sub_1BE048C84();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();
    v14, v17, v18, v19, v20, v21, v22, v23;
    if (os_log_type_enabled(v15, v16))
    {
      v24 = swift_slowAlloc();
      v53 = v6;
      v25 = v24;
      v26 = swift_slowAlloc();
      v54 = a2;
      v55 = v26;
      v27 = a3;
      v28 = v26;
      *v25 = 136315138;
      v29 = sub_1BD123690(v12, v14, &v55);
      v14, v30, v31, v32, v33, v34, v35, v36;
      *(v25 + 4) = v29;
      _os_log_impl(&dword_1BD026000, v15, v16, "Selected ACH as transfer option for type: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28, v37, v38, v39, v40, v41, v42, v43);
      v44 = v28;
      a3 = v27;
      a2 = v54;
      MEMORY[0x1BFB45F20](v44, -1, -1);
      MEMORY[0x1BFB45F20](v25, -1, -1);

      (*(v7 + 8))(v9, v53);
    }

    else
    {

      v14, v45, v46, v47, v48, v49, v50, v51;
      (*(v7 + 8))(v9, v6);
    }

    (*(a1 + 24))(0);
    return (*(a1 + 8))(a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7AF590@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for TransferOptionsSheet(0);
  sub_1BD0DE19C(a1 + *(v12 + 40), v11, &qword_1EBD45480, &unk_1BE0B8C30);
  v13 = type metadata accessor for PeerPaymentModel(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD45480, &unk_1BE0B8C30);
    v14 = 1;
    v15 = *a4;
    if (*a4)
    {
LABEL_3:
      v16 = *(a4 + 8);
      sub_1BD3EFCD8(v15, v16);
      v17 = sub_1BD41F4F4(v24, a3, v15, v16);

      v18 = v17 & v14;
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v11[*(v13 + 40)];
    sub_1BD7B118C(v11, type metadata accessor for PeerPaymentModel);
    v14 = v19 ^ 1;
    v15 = *a4;
    if (*a4)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  *a5 = v24;
  *(a5 + 8) = a3;
  *(a5 + 16) = v18 & 1;
  v20 = a3;
  v21 = v24;

  return v21;
}

void sub_1BD7AF754(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for TransferOptionsSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!PKOslo2024UIUpdatesEnabled() || (v12 = *(v2 + 56), !*(v12 + 16)))
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
LABEL_9:
    *a2 = v15;
    a2[1] = v17;
    a2[2] = v21;
    a2[3] = v23;
    a2[4] = v24;
    a2[5] = v25;
    return;
  }

  v30 = v6;
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  (*(v9 + 104))(v11, *MEMORY[0x1E69B80E0], v8);
  v13 = PKPassKitBundle();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v9 + 8))(v11, v8);
    v18 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v20 = [v18 stringFromNumber_];

    if (v20)
    {
      v21 = sub_1BE052434();
      v23 = v22;
    }

    else
    {

      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v26 = v31;
    sub_1BD7B10BC(v2, v31, type metadata accessor for TransferOptionsSheet);
    v27 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v32;
    sub_1BD7B1124(v26, v25 + v27, type metadata accessor for TransferOptionsSheet);
    v28 = (v25 + ((v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = v15;
    v28[1] = v17;
    sub_1BE048964();
    sub_1BE048C84();
    v24 = sub_1BD7B1334;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1BD7AFA8C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2[7];
  v7 = *(*a2 + qword_1EBDAB030);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BD7AFCA0(&v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53598, &unk_1BE0F8348);
  sub_1BD7B0750();
  v8 = sub_1BE0518D4();
  *&v75 = v6;
  *(&v75 + 1) = a3;
  v76 = a4;
  v77 = v7;
  v78 = v8;
  KeyPath = swift_getKeyPath();
  sub_1BD7B1520(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel, &unk_1BE0E54CC);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = swift_getKeyPath();
  sub_1BE04B5B4();
  v17, v18, v19, v20, v21, v22, v23, v24;
  swift_beginAccess();
  sub_1BD4CDC28();
  sub_1BE04E904();
  swift_endAccess();
  v8, v25, v26, v27, v28, v29, v30, v31;
  a4, v32, v33, v34, v35, v36, v37, v38;
  v6, v39, v40, v41, v42, v43, v44, v45;
  v46 = swift_getKeyPath();
  sub_1BE04B5A4();
  v8, v47, v48, v49, v50, v51, v52, v53;
  a4, v54, v55, v56, v57, v58, v59, v60;
  v6, v61, v62, v63, v64, v65, v66, v67;
  v46, v68, v69, v70, v71, v72, v73, v74;
}

void *sub_1BD7AFCA0@<X0>(_OWORD *a1@<X8>)
{
  v69 = a1;
  v1 = type metadata accessor for TransferOptionsSheet(0);
  v64 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v65 = v2;
  v67 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v63 - v9;
  v11 = *MEMORY[0x1E69B80E0];
  v12 = *(v4 + 104);
  v12(&v63 - v9, v11, v3, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    v68 = *(v4 + 8);
    v68(v10, v3);
    (v12)(v6, v11, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0B69E0;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1BD110550();
    *(v18 + 32) = v15;
    *(v18 + 40) = v17;
    sub_1BE048C84();
    v19 = sub_1BE04B714();
    v21 = v20;
    v18, v20, v22, v23, v24, v25, v26, v27;
    v68(v6, v3);
    if ([objc_opt_self() deviceSupportsBusinessChat])
    {
      v35 = v67;
      sub_1BD7B10BC(v66, v67, type metadata accessor for TransferOptionsSheet);
      v36 = (*(v64 + 80) + 16) & ~*(v64 + 80);
      v37 = swift_allocObject();
      sub_1BD7B1124(v35, v37 + v36, type metadata accessor for TransferOptionsSheet);
      v38 = objc_allocWithZone(PKTextRangeHyperlink);
      v39 = sub_1BE052404();
      v17, v40, v41, v42, v43, v44, v45, v46;
      *&v82[0] = sub_1BD7B07DC;
      *(&v82[0] + 1) = v37;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v81 = sub_1BD126964;
      *(&v81 + 1) = &block_descriptor_178;
      v47 = _Block_copy(&aBlock);
      *(&v82[0] + 1), v48, v49, v50, v51, v52, v53, v54;
      v55 = [v38 initWithLinkText:v39 action:v47];
      _Block_release(v47);

      if (v55)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1BE0B7020;
        *(v56 + 32) = v55;
        v79 = 0;
        v78 = 0;
        v70 = v56;
        v71 = 4;
        v72 = 0;
        v73 = v19;
        v74 = v21;
        v75 = 0;
        v76 = 0;
        v77 = 0;
LABEL_7:
        sub_1BD10E4BC();
        result = sub_1BE04F9A4();
        v61 = v81;
        v62 = v69;
        *v69 = aBlock;
        v62[1] = v61;
        v62[2] = v82[0];
        *(v62 + 41) = *(v82 + 9);
        return result;
      }
    }

    else
    {
      v17, v28, v29, v30, v31, v32, v33, v34;
    }

    *&aBlock = v19;
    *(&aBlock + 1) = v21;
    sub_1BD0DDEBC();
    v57 = sub_1BE0506C4();
    v79 = v58 & 1;
    v78 = 1;
    v70 = v57;
    v71 = v59;
    v72 = v58 & 1;
    v73 = v60;
    v77 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

double sub_1BD7B018C(uint64_t a1)
{
  type metadata accessor for TransferOptionsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t type metadata accessor for TransferOptionsSheet(uint64_t a1)
{
  result = qword_1EBD534F0;
  if (!qword_1EBD534F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD7B0278(uint64_t a1)
{
  type metadata accessor for AccountServiceAuthorizationModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD4C490, &type metadata for BankAccounts, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD1B7F00(319);
        if (v4 <= 0x3F)
        {
          sub_1BD7B03B0(319);
          if (v5 <= 0x3F)
          {
            sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1BD7B03B0(uint64_t a1)
{
  if (!qword_1EBD53500)
  {
    type metadata accessor for PeerPaymentAccountResolutionControllerModel(255);
    sub_1BD7B1520(&qword_1EBD53508, type metadata accessor for PeerPaymentAccountResolutionControllerModel, &unk_1BE0DC6A0);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD53500);
    }
  }
}

uint64_t sub_1BD7B0464(void *a1)
{
  v3 = *(type metadata accessor for TransferOptionsSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD7ACE44(a1, v4);
}

uint64_t sub_1BD7B04E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransferOptionsSheet(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BD7AE094(v4, a1);
}

unint64_t sub_1BD7B0554()
{
  result = qword_1EBD53530;
  if (!qword_1EBD53530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53520, &unk_1BE0F82A0);
    sub_1BD7A1600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53530);
  }

  return result;
}

unint64_t sub_1BD7B05E0()
{
  result = qword_1EBD53558;
  if (!qword_1EBD53558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53538, &qword_1BE0F82F8);
    sub_1BD7B0698();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20, &unk_1BE0E4C40, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53558);
  }

  return result;
}

unint64_t sub_1BD7B0698()
{
  result = qword_1EBD53560;
  if (!qword_1EBD53560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53550, &qword_1BE0F8308);
    sub_1BD0DE4F4(&qword_1EBD53568, &qword_1EBD53570, &unk_1BE0F8310, MEMORY[0x1E697CCF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53560);
  }

  return result;
}

unint64_t sub_1BD7B0750()
{
  result = qword_1EBD535A0;
  if (!qword_1EBD535A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53598, &unk_1BE0F8348);
    sub_1BD10E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD535A0);
  }

  return result;
}

unint64_t sub_1BD7B0804()
{
  result = qword_1EBD535E8;
  if (!qword_1EBD535E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD535E0, &qword_1BE0F8388);
    sub_1BD7B1520(&qword_1EBD397D8, type metadata accessor for PassRow, &unk_1BE0ED358);
    sub_1BD7B08C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD535E8);
  }

  return result;
}

unint64_t sub_1BD7B08C0()
{
  result = qword_1EBD535F0;
  if (!qword_1EBD535F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD535F8, &unk_1BE0F8390);
    sub_1BD0DE4F4(&qword_1EBD47F28, &qword_1EBD47F30, &unk_1BE0E6C30, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD535F0);
  }

  return result;
}

uint64_t sub_1BD7B09A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535B8, &qword_1BE0F8368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_92()
{
  v1 = type metadata accessor for TransferOptionsSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  *v3, v4, v5, v6, v7, v8, v9, v10;
  *(v3 + 16), v11, v12, v13, v14, v15, v16, v17;
  *(v3 + 32), v18, v19, v20, v21, v22, v23, v24;
  *(v3 + 48), v25, v26, v27, v28, v29, v30, v31;
  *(v3 + 56), v32, v33, v34, v35, v36, v37, v38;
  v46 = *(v3 + 64);
  if (v46)
  {
    if (v46 == 1)
    {
      goto LABEL_5;
    }
  }

  *(v3 + 80), v39, v40, v41, v42, v43, v44, v45;
  *(v3 + 88), v47, v48, v49, v50, v51, v52, v53;
LABEL_5:
  v54 = (v3 + v1[10]);
  v55 = type metadata accessor for PeerPaymentModel(0);
  if (!(*(*(v55 - 1) + 48))(v54, 1, v55))
  {

    v61 = (v54 + v55[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v224 = v54;
    if (EnumCaseMultiPayload == 2)
    {
      v61[1], v63, v64, v65, v66, v67, v68, v69;
      v61[3], v70, v71, v72, v73, v74, v75, v76;
      v77 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v78 = sub_1BE04CF34();
      (*(*(v78 - 8) + 8))(v61 + v77, v78);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v79 = type metadata accessor for AvailablePass(0);
    v80 = (v61 + v79[6]);
    v81 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v81 - 1) + 48))(v80, 1, v81))
    {
      v80[1], v82, v83, v84, v85, v86, v87, v88;
      v89 = v81[5];
      v90 = sub_1BE04DA84();
      (*(*(v90 - 8) + 8))(v80 + v89, v90);
      *(v80 + v81[6] + 8), v91, v92, v93, v94, v95, v96, v97;
      *(v80 + v81[7] + 8), v98, v99, v100, v101, v102, v103, v104;
      *(v80 + v81[8] + 8), v105, v106, v107, v108, v109, v110, v111;
    }

    v112 = (v61 + v79[7]);
    v113 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v113 - 8) + 48))(v112, 1, v113))
    {

      v114 = *(v113 + 28);
      v115 = sub_1BE04AF64();
      v116 = *(v115 - 8);
      if (!(*(v116 + 48))(v112 + v114, 1, v115))
      {
        (*(v116 + 8))(v112 + v114, v115);
      }
    }

    v117 = v61 + v79[10];
    v118 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v118 - 8) + 48))(v117, 1, v118))
    {
      v126 = *(v117 + 2);
      if (v126 != 1)
      {
        v126, v119, v120, v121, v122, v123, v124, v125;
        *(v117 + 4), v127, v128, v129, v130, v131, v132, v133;
        *(v117 + 6), v134, v135, v136, v137, v138, v139, v140;
      }

      v141 = *(v117 + 9);
      if (v141 != 1)
      {
        v141, v119, v120, v121, v122, v123, v124, v125;
        *(v117 + 11), v142, v143, v144, v145, v146, v147, v148;
        *(v117 + 13), v149, v150, v151, v152, v153, v154, v155;
      }

      v156 = *(v118 + 28);
      v157 = sub_1BE04AF64();
      v223 = *(v157 - 8);
      v222 = v156;
      v158 = &v117[v156];
      v159 = *(v223 + 48);
      if (!v159(v158, 1, v157))
      {
        (*(v223 + 8))(&v117[v222], v157);
      }

      v160 = *(v118 + 32);
      if (!v159(&v117[v160], 1, v157))
      {
        (*(v223 + 8))(&v117[v160], v157);
      }
    }

    v161 = (v61 + v79[12]);
    if (*v161)
    {

      v161[4], v162, v163, v164, v165, v166, v167, v168;
    }

    v169 = (v61 + v79[13]);
    if (*v169)
    {

      v169[2], v170, v171, v172, v173, v174, v175, v176;
    }

    *(v61 + v79[14]), v119, v120, v121, v122, v123, v124, v125;
    *(v61 + v79[15]), v177, v178, v179, v180, v181, v182, v183;
    v184 = (v224 + v55[6]);
    if (*v184 != 1)
    {

      v192 = v184[3];
      if (v192)
      {
        v192, v185, v186, v187, v188, v189, v190, v191;
        v184[5], v193, v194, v195, v196, v197, v198, v199;
        v184[7], v200, v201, v202, v203, v204, v205, v206;
        v184[9], v207, v208, v209, v210, v211, v212, v213;
      }
    }
  }

  sub_1BD035CB4(*(v3 + v1[11]), *(v3 + v1[11] + 8), *(v3 + v1[11] + 16), v56, v57, v58, v59, v60);
  *(v3 + v1[12] + 8), v214, v215, v216, v217, v218, v219, v220;

  return swift_deallocObject();
}

uint64_t sub_1BD7B1040(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TransferOptionsSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD7B10BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7B1124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7B118C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1BD7B11EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TransferOptionsSheet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  *&result = sub_1BD7AF188(a1, v2 + v6, v7, a2).n128_u64[0];
  return result;
}

id sub_1BD7B1298()
{
  v1 = *(type metadata accessor for TransferOptionsSheet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1BD7AF34C(v0 + v2, v4, v5);
}

void sub_1BD7B1334()
{
  v1 = *(type metadata accessor for TransferOptionsSheet(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_1BD7AFA8C(v3, (v0 + v2), v5, v6);
}

unint64_t sub_1BD7B13C8()
{
  result = qword_1EBD53610;
  if (!qword_1EBD53610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53618, &unk_1BE0F83F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53518, &unk_1BE0F8290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53520, &unk_1BE0F82A0);
    sub_1BD0DE4F4(&qword_1EBD53528, &qword_1EBD53518, &unk_1BE0F8290, &unk_1BE0E6430);
    sub_1BD7B0554();
    swift_getOpaqueTypeConformance2();
    sub_1BD7B1520(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53610);
  }

  return result;
}

uint64_t sub_1BD7B1520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1BD7B1590(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v2 + *a2);
  v13 = v12;
  return v12;
}

void sub_1BD7B1638(void (*a1)(uint64_t, void), uint64_t a2)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  aBlock[0] = v2;
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration))
  {
    a1(1, 0);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_loadingCompletions;
  swift_beginAccess();
  v16 = *(v3 + v15);
  sub_1BE048964();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1BD1D88E0(0, (v16[2] + 1), 1, v16);
    *(v3 + v15) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1BD1D88E0((v18 > 1), (v19 + 1), 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[2 * v19];
  v20[4] = sub_1BD7B26D0;
  v20[5] = v14;
  *(v3 + v15) = v16;
  swift_endAccess();
  v21 = swift_getKeyPath();
  aBlock[0] = v3;
  sub_1BE04B594();
  v21, v22, v23, v24, v25, v26, v27, v28;
  if ((*(v3 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration) & 1) == 0)
  {
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    aBlock[0] = v3;
    sub_1BE04B584();
    v29, v30, v31, v32, v33, v34, v35, v36;
    v37 = *(v3 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController);
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = a1;
    v39[4] = a2;
    aBlock[4] = sub_1BD7B2718;
    v50 = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD1487AC;
    aBlock[3] = &block_descriptor_179;
    v40 = _Block_copy(aBlock);
    v41 = v50;
    sub_1BE048964();
    v41, v42, v43, v44, v45, v46, v47, v48;
    [v37 requestDTUConfigurationWithCompletion_];
    _Block_release(v40);
  }
}

uint64_t sub_1BD7B1994()
{
  KeyPath = swift_getKeyPath();
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration);
}

void sub_1BD7B1A3C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration);
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
    sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD53688, 0x1E69B8578);
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

void sub_1BD7B1BD4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion);
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
    sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD53680, 0x1E69B8580);
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

void sub_1BD7B1D6C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration);
}

void sub_1BD7B1E44(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD7B1F5C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1BE051F54();
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE051FA4();
  v35 = *(v15 - 8);
  v36 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v34 = sub_1BE052D54();
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v19 = a3;
  aBlock[4] = sub_1BD7B2724;
  v39 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_22_8;
  v20 = _Block_copy(aBlock);
  v21 = v39;
  sub_1BE048964();
  sub_1BE048964();
  v22 = a1;
  v23 = a2;
  v24 = v19;
  v21, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD7B2734(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v32 = v34;
  MEMORY[0x1BFB3FDF0](0, v17, v14, v20);
  _Block_release(v20);

  (*(v37 + 8))(v14, v12);
  return (*(v35 + 8))(v17, v36);
}

void sub_1BD7B225C(uint64_t a1, void (*a2)(void, void), uint64_t a3, void *a4, void *a5, char *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = a4;
    sub_1BD7B1A3C(a4);
    v13 = a5;
    sub_1BD7B1BD4(a5);
    v14 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_loadingCompletions;
    swift_beginAccess();
    v22 = *&v11[v14];
    v23 = v22[2];
    if (v23)
    {
      v24 = a4 != 0;
      sub_1BE048C84();
      v25 = v22 + 5;
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        v51 = v24;
        v50 = a6;
        sub_1BE048964();
        v27(&v51, &v50);
        v26, v28, v29, v30, v31, v32, v33, v34;
        v25 += 2;
        --v23;
      }

      while (v23);
      v22, v35, v36, v37, v38, v39, v40, v41;
      v22 = *&v11[v14];
    }

    *&v11[v14] = MEMORY[0x1E69E7CC0];
    v22, v15, v16, v17, v18, v19, v20, v21;
    if (v11[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v50 = v11;
      sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
      sub_1BE04B584();

      KeyPath, v43, v44, v45, v46, v47, v48, v49;
    }

    else
    {
      v11[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration] = 0;
    }
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t type metadata accessor for DirectTopUpModel(uint64_t a1)
{
  result = qword_1EBD53668;
  if (!qword_1EBD53668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD7B25C0(uint64_t a1)
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

void sub_1BD7B2690()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion);
  *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion) = v2;
  v4 = v2;
}

uint64_t sub_1BD7B2734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD7B277C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration);
  *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration) = v2;
  v4 = v2;
}

id sub_1BD7B27BC(unint64_t a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration;
  *&v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration] = 0;
  v9 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion;
  *&v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion] = 0;
  v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration] = 0;
  v10 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_taskDelegate;
  *&v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_taskDelegate] = 0;
  v11 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x1E69B8318]) init];
  *&v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_loadingCompletions] = MEMORY[0x1E69E7CC0];
  v12 = &v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_kAmountDivisible];
  *v12 = MEMORY[0x1BFB403C0](1000);
  *(v12 + 1) = v13;
  *(v12 + 4) = v14;
  sub_1BE04B5C4();
  if (a1 | a3)
  {
    v15 = *&v3[v8];
    v16 = a1;

    *&v3[v8] = a1;
    v17 = *&v3[v9];
    v18 = a2;

    *&v3[v9] = a2;
    *&v3[v10] = a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v20.receiver = v3;
    v20.super_class = ObjectType;
    return objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

void sub_1BD7B2948(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  KeyPath = swift_getKeyPath();
  aBlock[0] = a1;
  sub_1BE048964();
  sub_1BE048964();
  v16 = a5;
  sub_1BD0D44B8(a6, a7);
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  if (*(a1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration))
  {
    a2();
  }

  v24 = swift_allocObject();
  *(v24 + 16) = sub_1BD7B2D18;
  *(v24 + 24) = v14;
  v25 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_loadingCompletions;
  swift_beginAccess();
  v26 = *(a1 + v25);
  sub_1BE048964();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v25) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_1BD1D88E0(0, (v26[2] + 1), 1, v26);
    *(a1 + v25) = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_1BD1D88E0((v28 > 1), (v29 + 1), 1, v26);
  }

  v26[2] = v29 + 1;
  v30 = &v26[2 * v29];
  v30[4] = sub_1BD7B2D48;
  v30[5] = v24;
  *(a1 + v25) = v26;
  swift_endAccess();
  v31 = swift_getKeyPath();
  aBlock[0] = a1;
  sub_1BE04B594();
  v31, v32, v33, v34, v35, v36, v37, v38;
  if ((*(a1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration) & 1) == 0)
  {
    v46 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v46);
    aBlock[0] = a1;
    sub_1BE04B584();
    v46, v47, v48, v49, v50, v51, v52, v53;
    v54 = *(a1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController);
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v56[2] = v55;
    v56[3] = sub_1BD7B2D18;
    v56[4] = v14;
    aBlock[4] = sub_1BD7B2D4C;
    v67 = v56;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD1487AC;
    aBlock[3] = &block_descriptor_40_3;
    v57 = _Block_copy(aBlock);
    v58 = v67;
    sub_1BE048964();
    v58, v59, v60, v61, v62, v63, v64, v65;
    [v54 requestDTUConfigurationWithCompletion_];
    _Block_release(v57);
  }

  v14, v39, v40, v41, v42, v43, v44, v45;
}

id sub_1BD7B2DD8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C14();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BD026000, v10, v11, "LoadingViewService: handleDismiss", v12, 2u);
    MEMORY[0x1BFB45F20](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  result = [*(v3 + OBJC_IVAR____TtC9PassKitUI38RemoteNetworkPaymentLoadingViewService_configuration) presenter];
  if (result)
  {
    v14 = result;
    if (a1)
    {
      aBlock[4] = a1;
      v24 = a2;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_180;
      a1 = _Block_copy(aBlock);
      v15 = v24;
      sub_1BE048964();
      v15, v16, v17, v18, v19, v20, v21, v22;
    }

    [v14 dismissWithReason:2 completion:a1];
    _Block_release(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD7B30A0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C14();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BD026000, v10, v11, "LoadingViewService: fulfillRemotePaymentRequestPromise", v12, 2u);
    MEMORY[0x1BFB45F20](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a1)
    {
      if (a2)
      {
        sub_1BD95EE4C(a1, a2, a3);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7B3304(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&dword_1BD026000, v6, v7, "LoadingViewService: rejectRemotePaymentRequestPromiseWithFailure: %lu", v8, 0xCu);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD95F974(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

id RemoteNetworkPaymentLoadingViewService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteNetworkPaymentLoadingViewService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteNetworkPaymentLoadingViewService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD7B3DCC(const char *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v6, v7, a1, v8, 2u);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_1BD7B4358()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100, &qword_1BE0F85D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v41 = &v38 - v1;
  v42 = sub_1BE04B8D4();
  v2 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v39 = sub_1BE04B944();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BAC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v38 = sub_1BE04B9A4();
  v15 = v14;
  v16 = v41;
  (*(v12 + 8))(v15, v11);
  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v8 + 8))(v10, v39);
  v17 = v42;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B7F80], v42);
  v18 = sub_1BE04B8C4();
  v19 = *(v2 + 8);
  v19(v4, v17);
  v19(v7, v17);
  v20 = objc_allocWithZone(PKPasscodeUpgradeExplanationViewController);
  v21 = v40;
  v22 = [v20 initWithContext:v38 isForWatch:v18 & 1 delegate:v40];
  v43 = *(v21 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_requirements);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500, &unk_1BE0C62D0);
  sub_1BD7B4A98();
  sub_1BE052674();
  v23 = sub_1BE04BDF4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v16, 1, v23) == 1)
  {
    sub_1BD0DE53C(v16, &unk_1EBD55100, &qword_1BE0F85D0);
    v25 = 1;
  }

  else
  {
    v26 = sub_1BE04BDC4();
    (*(v24 + 8))(v16, v23);
    v25 = v26 ^ 1;
  }

  [v22 setUpgradeStrongPasscodeRequiredToAddNewPass_];
  sub_1BE052434();
  v28 = v27;
  v29 = sub_1BE04BB74();
  v28, v30, v31, v32, v33, v34, v35, v36;
  [v22 setReporter_];

  return v22;
}

uint64_t sub_1BD7B47B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD7B47F4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD7B4918(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a1;
    a4(v7);
  }
}

id sub_1BD7B49A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_isRequirementOptional] = 1;
  *&v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_identifier];
  *v7 = 0xD00000000000002ELL;
  v7[1] = 0x80000001BE0F8570;
  *&v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_requirements] = a2;
  swift_unknownObjectWeakAssign();
  v9.receiver = v3;
  v9.super_class = ObjectType;
  sub_1BE048964();
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_1BD7B4A98()
{
  result = qword_1EBD55110;
  if (!qword_1EBD55110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3F500, &unk_1BE0C62D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55110);
  }

  return result;
}

uint64_t sub_1BD7B4AFC(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    memset(v6, 0, sizeof(v6));
    v7 = 2;
    sub_1BD865A00(a1, &off_1F3B99F60, v6, ObjectType, v4);
    swift_unknownObjectRelease();
    return sub_1BD0DE53C(v6, &unk_1EBD3F510, &unk_1BE0B9B30);
  }

  return result;
}

uint64_t sub_1BD7B4BB4()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38820, &qword_1BE0DF880);
  v4 = (type metadata accessor for AccountBalance(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B69E0;
  v7 = (v6 + v5);
  sub_1BE04AEF4();
  *v7 = 0x403E000000000000;
  result = (*(v1 + 32))(&v7[v4[7]], v3, v0);
  qword_1EBD53740 = v6;
  return result;
}

uint64_t sub_1BD7B4E18(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1BE04AEF4();
  sub_1BE04ADD4();
  v11 = sub_1BD7B4F4C(v7, v10);
  v12 = *(v5 + 8);
  v12(v7, v4);
  result = (v12)(v10, v4);
  *a3 = v11;
  return result;
}

void *sub_1BD7B4F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountBalance(0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v30 - v7);
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v31 = *(v10 + 16);
  v32 = v10 + 16;
  v31(v30 - v14, a1, v9, v13);
  v16 = sub_1BD7B5770();
  v37 = a2;
  v30[1] = v16;
  if ((sub_1BE0522F4() & 1) == 0)
  {
    v33 = (v10 + 8);
    v17 = MEMORY[0x1E69E7CC0];
    v30[0] = v10 + 32;
    v18 = 0.0;
    v19 = 0.0;
    while (1)
    {
      do
      {
        v39[0] = 0;
        MEMORY[0x1BFB45F40](v39, 8);
      }

      while (((100 * v39[0]) & 0xFFFFFFFFFFFFFFF0) == 0);
      v20 = (v39[0] * 0x64uLL) >> 64;
      v21 = v34;
      sub_1BE04ADD4();
      v22 = *v33;
      (*v33)(v15, v9);
      (*v30[0])(v15, v21, v9);
      do
      {
        v39[0] = 0;
        MEMORY[0x1BFB45F40](v39, 8);
      }

      while ((0x20000000000001 * v39[0]) < 0x1FFFFFFFFFF801);
      v24 = (v39[0] * 0x20000000000001uLL) >> 64;
      if (v24 == 0x20000000000000)
      {
        v23.n128_u64[0] = 3.0;
        if (v20 < 74)
        {
          goto LABEL_12;
        }
      }

      else if (v20 <= 73)
      {
        v23.n128_f64[0] = vcvtd_n_f64_u64(v24, 0x35uLL) * 2.99 + 0.01;
LABEL_12:
        v18 = v19 + v23.n128_f64[0];
        if (v20 <= 2)
        {
          do
          {
            v39[0] = 0;
            MEMORY[0x1BFB45F40](v39, 8);
          }

          while ((0x20000000000001 * v39[0]) < 0x1FFFFFFFFFF801);
          v25 = (v39[0] * 0x20000000000001uLL) >> 64;
          v23.n128_f64[0] = vcvtd_n_f64_u64(v25, 0x35uLL) * 499.0 + 1.0;
          if (v25 == 0x20000000000000)
          {
            v23.n128_f64[0] = 500.0;
          }

          v18 = v18 + v23.n128_f64[0];
        }

        if (v20 == 3)
        {
          do
          {
            v39[0] = 0;
            MEMORY[0x1BFB45F40](v39, 8);
          }

          while ((0x20000000000001 * v39[0]) < 0x1FFFFFFFFFF801);
          v26 = (v39[0] * 0x20000000000001uLL) >> 64;
          v23.n128_f64[0] = vcvtd_n_f64_u64(v26, 0x35uLL) * 299.0 + 1.0;
          if (v26 == 0x20000000000000)
          {
            v23.n128_f64[0] = 300.0;
          }

          v18 = v18 - v23.n128_f64[0];
        }

        v19 = v18;
      }

      if (v18 < 0.0)
      {
        v18 = 0.0;
        v19 = 0.0;
      }

      (v31)(v8 + *(v36 + 20), v15, v9, v23);
      *v8 = v18;
      sub_1BD0E5D5C(v8, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1BD1D7640(0, v17[2] + 1, 1, v17);
      }

      v28 = v17[2];
      v27 = v17[3];
      if (v28 >= v27 >> 1)
      {
        v17 = sub_1BD1D7640((v27 > 1), v28 + 1, 1, v17);
      }

      sub_1BD0E5E24(v8);
      v17[2] = v28 + 1;
      sub_1BD0E5DC0(v38, v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v28);
      if (sub_1BE0522F4())
      {
        v22(v15, v9);
        return v17;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  (*(v10 + 8))(v15, v9);
  return v17;
}

uint64_t sub_1BD7B5448()
{
  if (os_variant_has_internal_ui())
  {
    switch(PKSavingsGraphOverrideCurrentType())
    {
      case 2:
        if (qword_1EBD36F30 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53740;
        break;
      case 3:
        if (qword_1EBD36F38 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53748;
        break;
      case 4:
        if (qword_1EBD36F40 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53750;
        break;
      case 5:
        if (qword_1EBD36F48 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53758;
        break;
      case 6:
        if (qword_1EBD36F50 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53760;
        break;
      case 7:
        if (qword_1EBD36F58 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53768;
        break;
      case 8:
        if (qword_1EBD36F60 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53770;
        break;
      case 9:
        if (qword_1EBD36F68 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53778;
        break;
      case 10:
        if (qword_1EBD36F70 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53780;
        break;
      case 11:
        if (qword_1EBD36F78 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53788;
        break;
      case 12:
        if (qword_1EBD36F80 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53790;
        break;
      default:
        goto LABEL_3;
    }
  }

  else
  {
LABEL_3:
    if (qword_1EBD36F28 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EBD53738;
  }

  return *v0;
}

unint64_t sub_1BD7B5770()
{
  result = qword_1EBD525D0;
  if (!qword_1EBD525D0)
  {
    sub_1BE04AF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD525D0);
  }

  return result;
}

id sub_1BD7B57F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  v56 = a3;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53798, &qword_1BE0F8670);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - v12;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(&v57);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  v37 = v57;
  if (v57 >> 62)
  {
    v51 = a4;
    v52 = v57;
    v38 = sub_1BE053704();
    v37 = v52;
    a4 = v51;
  }

  else
  {
    v38 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37, v30, v31, v32, v33, v34, v35, v36;
  if (v38 < 1)
  {
    v49 = 1;
    return (*(v11 + 56))(a4, v49, 1, v10);
  }

  v54 = a4;
  if (v56 != 1)
  {
    v44 = 0;
    v45 = 0;
    v48 = 0;
    v46 = 0;
    goto LABEL_9;
  }

  (*(v7 + 104))(v9, *MEMORY[0x1E69B80E0], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v40 = result;
    v41 = sub_1BE04B6F4();
    v43 = v42;

    (*(v7 + 8))(v9, v6);
    v57 = v41;
    v58 = v43;
    sub_1BD0DDEBC();
    v44 = sub_1BE0506C4();
    v48 = v47 & 1;
LABEL_9:
    v57 = v44;
    v58 = v45;
    v59 = v48;
    v60 = v46;
    MEMORY[0x1EEE9AC00](v44);
    v50 = v56;
    *(&v53 - 4) = v55;
    *(&v53 - 3) = a2;
    *(&v53 - 2) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537A0, &qword_1BE0F86C8);
    sub_1BD12E194();
    sub_1BD7B6F10();
    sub_1BE051A24();
    a4 = v54;
    (*(v11 + 32))(v54, v13, v10);
    v49 = 0;
    return (*(v11 + 56))(a4, v49, 1, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7B5B90(uint64_t a1, void *a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(&v25);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AA70, &qword_1BE0F8700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537B8, &qword_1BE0F86D0);
  sub_1BD0DE4F4(&qword_1EBD53800, &qword_1EBD4AA70, &qword_1BE0F8700, MEMORY[0x1E69E6338]);
  sub_1BD7B6F94();
  sub_1BD7B71C8(&qword_1EBD53808, &unk_1BE0C85C8);
  return sub_1BE0519D4();
}

uint64_t sub_1BD7B5D10@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v50 = a3;
  v55 = a5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53810, &qword_1BE0F8708);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537D8, &qword_1BE0F86E0);
  MEMORY[0x1EEE9AC00](v54);
  v13 = (&v48 - v12);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53818, &qword_1BE0F8710);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53820, &qword_1BE0F8718);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537C8, &qword_1BE0F86D8);
  v18 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v20 = &v48 - v19;
  v21 = *a1;
  if (a4 == 1)
  {
    sub_1BD7B63E4(v21, v50, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3D0, &qword_1BE0DA410);
    sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0, &qword_1BE0DA410, MEMORY[0x1E69817F8]);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B850, &qword_1BE0BCB88);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B810, &unk_1BE0DD8F0);
    v24 = sub_1BD196C48();
    v56 = v23;
    v57 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = sub_1BD0DDEBC();
    v56 = v22;
    v57 = MEMORY[0x1E69E6158];
    v58 = OpaqueTypeConformance2;
    v59 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1BE04E8B4();
    v27 = v52;
    (*(v18 + 16))(v53, v20, v52);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD537C0, &qword_1EBD537C8, &qword_1BE0F86D8, MEMORY[0x1E697C090]);
    sub_1BD7B704C();
    sub_1BE04F9A4();
    return (*(v18 + 8))(v20, v27);
  }

  else
  {
    *v13 = sub_1BE051CD4();
    v13[1] = v29;
    v30 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53828, &qword_1BE0F8720) + 44);
    sub_1BD7B63E4(v21, v50, a4, v17);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B850, &qword_1BE0BCB88);
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B810, &unk_1BE0DD8F0);
    v33 = sub_1BD196C48();
    v56 = v32;
    v57 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v35 = sub_1BD0DDEBC();
    v56 = v31;
    v57 = MEMORY[0x1E69E6158];
    v58 = v34;
    v59 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1BE04E8B4();
    *&v11[*(v49 + 36)] = 0;
    type metadata accessor for TransactionGroupPresentation(0);
    sub_1BD7B71C8(&qword_1EBD53830, &unk_1BE0C8600);
    sub_1BE048964();
    v36 = sub_1BE04E954();
    v38 = v37;
    sub_1BD2AFD08();
    sub_1BD0DE19C(v11, v8, &qword_1EBD53810, &qword_1BE0F8708);
    sub_1BD0DE19C(v8, v30, &qword_1EBD53810, &qword_1BE0F8708);
    v39 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53838, &qword_1BE0F8728) + 48));
    *v39 = v36;
    v39[1] = v38;
    sub_1BE048964();
    sub_1BD0DE53C(v11, &qword_1EBD53810, &qword_1BE0F8708);
    v38, v40, v41, v42, v43, v44, v45, v46;
    sub_1BD0DE53C(v8, &qword_1EBD53810, &qword_1BE0F8708);
    v47 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537E8, &qword_1BE0F86E8) + 36);
    v47[32] = 0;
    *v47 = 0u;
    *(v47 + 1) = 0u;
    sub_1BD0DE19C(v13, v53, &qword_1EBD537D8, &qword_1BE0F86E0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD537C0, &qword_1EBD537C8, &qword_1BE0F86D8, MEMORY[0x1E697C090]);
    sub_1BD7B704C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v13, &qword_1EBD537D8, &qword_1BE0F86E0);
  }
}

uint64_t sub_1BD7B63E4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a4;
  v42 = a1;
  v47 = a5;
  v7 = sub_1BE04AF64();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04F434();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B850, &qword_1BE0BCB88);
  v15 = *(v14 - 8);
  v45 = v14;
  v46 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v18 = sub_1BE04F7B4();
  sub_1BD7B6C08(a3, v41, a1, v59);
  v19 = *&v59[0];
  sub_1BE051CD4();
  sub_1BE04EE54();
  LOBYTE(v59[0]) = 1;
  v20 = sub_1BE04EC54();
  v21 = sub_1BE0501D4();
  v50 = v18;
  LOBYTE(v51) = 1;
  *(&v51 + 1) = v19;
  *&v58[1] = v20;
  BYTE8(v58[1]) = v21;
  (*(v11 + 104))(v13, *MEMORY[0x1E697C438], v10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B810, &unk_1BE0DD8F0);
  v23 = sub_1BD196C48();
  sub_1BE050E84();
  (*(v11 + 8))(v13, v10);
  v59[6] = v56;
  v59[7] = v57;
  v60[0] = v58[0];
  *(v60 + 9) = *(v58 + 9);
  v59[2] = v52;
  v59[3] = v53;
  v59[4] = v54;
  v59[5] = v55;
  v59[0] = v50;
  v59[1] = v51;
  sub_1BD0DE53C(v59, &qword_1EBD3B810, &unk_1BE0DD8F0);
  v24 = objc_opt_self();
  v25 = [*(v42 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) startDate];
  sub_1BE04AEE4();

  v26 = sub_1BE04AE64();
  (*(v43 + 8))(v9, v44);
  v27 = [v24 titleForYear_];

  v28 = sub_1BE052434();
  v30 = v29;

  *&v50 = v28;
  *(&v50 + 1) = v30;
  v48 = v22;
  v49 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  v31 = v45;
  sub_1BE050B74();
  v30, v32, v33, v34, v35, v36, v37, v38;
  return (*(v46 + 8))(v17, v31);
}

double sub_1BD7B6828@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v16 = 1;
  sub_1BD7B6920(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_1BD7B7214(&v17, &v9);
  sub_1BD0DE53C(v22, &qword_1EBD3E1F0, &qword_1BE0C3060);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

void sub_1BD7B6920(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v4 - 8);
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(v89);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  v21 = v89[0];
  v22 = [v89[0] primaryString];

  if (v22)
  {
    v23 = sub_1BE052434();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v89[0] = v23;
  v89[1] = v25;
  sub_1BD0DDEBC();
  v26 = sub_1BE0506C4();
  v86 = v27;
  v87 = v26;
  v85 = v28;
  v88 = v29;
  sub_1BE04F604();
  sub_1BE04F5F4();
  v89[0] = [*(a1 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) transactionCount];
  sub_1BE04F5C4();
  sub_1BE04F5F4();
  sub_1BE04F634();
  v30 = sub_1BE050694();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_1BE051494();
  v38 = sub_1BE050564();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v37, v39, v41, v43, v45, v46, v47, v48;
  sub_1BD0DDF10(v30, v32, (v34 & 1), v49, v50, v51, v52, v53);
  v36, v54, v55, v56, v57, v58, v59, v60;
  LOBYTE(v89[0]) = v85 & 1;
  *a2 = v87;
  *(a2 + 8) = v86;
  *(a2 + 16) = v85 & 1;
  *(a2 + 24) = v88;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v38;
  *(a2 + 56) = v40;
  *(a2 + 64) = v42 & 1;
  *(a2 + 72) = v44;
  sub_1BD0D7F18(v87, v86, v85 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v38, v40, v42 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v38, v40, (v42 & 1), v61, v62, v63, v64, v65);
  v44, v66, v67, v68, v69, v70, v71, v72;
  sub_1BD0DDF10(v87, v86, LOBYTE(v89[0]), v73, v74, v75, v76, v77);
  v88, v78, v79, v80, v81, v82, v83, v84;
}

id sub_1BD7B6C08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v31 = a4;
  v7 = sub_1BE04B2F4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04AF64();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v14 = [*(a3 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) startDate];
  sub_1BE04AEE4();
  v15 = [objc_opt_self() currentCalendar];
  sub_1BE04B1F4();
  v16 = PKAccountViewStyleToPKPaymentPassDetailViewStyle(a2);
  result = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  if (result)
  {
    v18 = result;

    v19 = [objc_opt_self() sharedService];
    v20 = *(a1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_account);
    v21 = objc_allocWithZone(PKPaymentTransactionsInYearTableViewController);
    v22 = v20;
    v23 = sub_1BE04AE64();
    v24 = sub_1BE04B1D4();
    v25 = [v21 initWithDateFromYear:v23 calendar:v24 transactionSourceCollection:v13 familyCollection:0 detailViewStyle:v16 paymentServiceDataProvider:v18 contactResolver:0 peerPaymentWebService:v19 account:v22];

    (*(v29 + 8))(v9, v30);
    result = (*(v27 + 8))(v12, v28);
    *v31 = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD7B6F10()
{
  result = qword_1EBD537A8;
  if (!qword_1EBD537A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD537A0, &qword_1BE0F86C8);
    sub_1BD7B6F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD537A8);
  }

  return result;
}

unint64_t sub_1BD7B6F94()
{
  result = qword_1EBD537B0;
  if (!qword_1EBD537B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD537B8, &qword_1BE0F86D0);
    sub_1BD0DE4F4(&qword_1EBD537C0, &qword_1EBD537C8, &qword_1BE0F86D8, MEMORY[0x1E697C090]);
    sub_1BD7B704C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD537B0);
  }

  return result;
}

unint64_t sub_1BD7B704C()
{
  result = qword_1EBD537D0;
  if (!qword_1EBD537D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD537D8, &qword_1BE0F86E0);
    sub_1BD7B70D8();
    sub_1BD50C0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD537D0);
  }

  return result;
}

unint64_t sub_1BD7B70D8()
{
  result = qword_1EBD537E0;
  if (!qword_1EBD537E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD537E8, &qword_1BE0F86E8);
    sub_1BD0DE4F4(&qword_1EBD537F0, &qword_1EBD537F8, &unk_1BE0F86F0, MEMORY[0x1E6981880]);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD537E0);
  }

  return result;
}

uint64_t sub_1BD7B71C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TransactionGroupPresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD7B7214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E1F0, &qword_1BE0C3060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7B7284()
{
  result = qword_1EBD53840;
  if (!qword_1EBD53840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53848, &qword_1BE0F8778);
    sub_1BD7B7308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53840);
  }

  return result;
}

unint64_t sub_1BD7B7308()
{
  result = qword_1EBD53850;
  if (!qword_1EBD53850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53798, &qword_1BE0F8670);
    sub_1BD12E194();
    sub_1BD7B6F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53850);
  }

  return result;
}

uint64_t sub_1BD7B73F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53970, &qword_1BE0F8898);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *v2;
  v14 = *(v6 + 16);
  v14(&v18 - v11, a1, v5, v10);
  (v14)(v8, v12, v5);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD53978, &qword_1BE0F88A0));
  sub_1BE048C84();
  v16 = sub_1BE04EAC4();
  result = (*(v6 + 8))(v12, v5);
  *a2 = v16;
  a2[1] = v13;
  return result;
}

id sub_1BD7B7568(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for EditMenuView(255, a4, a5, a4);
  swift_getWitnessTable();
  sub_1BE04FF84();
  sub_1BE04FF74();
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];

  v7 = a2;
  [v7 addInteraction_];

  return v7;
}

id sub_1BD7B762C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EditMenuView.Coordinator(0, a3, a4, a4);
  v7 = a1;
  sub_1BE048C84();
  v8 = objc_allocWithZone(v6);
  return sub_1BD7B76DC(v7, a2, v8, v9);
}

id sub_1BD7B76DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  *(v4 + qword_1EBD53860) = a1;
  *(v4 + qword_1EBD53868) = a2;
  v8 = type metadata accessor for EditMenuView.Coordinator(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), a4);
  v25.receiver = v4;
  v25.super_class = v8;
  v9 = a1;
  v24 = objc_msgSendSuper2(&v25, sel_init);
  v10 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v11 = v24;
  v12 = [v10 initWithTarget:sub_1BE053B74() action:sel_didTap_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B7020;
  v14 = v12;
  *(v13 + 32) = sub_1BE052A94();
  sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
  v15 = sub_1BE052724();
  v13, v16, v17, v18, v19, v20, v21, v22;
  [v14 setAllowedTouchTypes_];

  [v9 addGestureRecognizer_];
  return v11;
}

void sub_1BD7B78A0(void *a1)
{
  v2 = *(v1 + qword_1EBD53860);
  [a1 locationInView_];
  sub_1BD0E5E8C(0, &qword_1EBD53950, 0x1E69DC9D8);
  v20 = sub_1BE052EC4();
  v3 = [v2 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53958, &unk_1BE0F8800);
  v4 = sub_1BE052744();

  if (v4 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_14:

    v4, v13, v14, v15, v16, v17, v18, v19;
    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFB40900](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  v4, v5, v6, v7, v8, v9, v10, v11;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    [v12 presentEditMenuWithConfiguration_];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1BD7B7A80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1BD7B78A0(v4);
}

id sub_1BD7B7AE8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1BD7B7E68();

  return v9;
}

double sub_1BD7B7B54(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1BD7B7F64();
  v10 = v9;

  return v10;
}

id sub_1BD7B7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EditMenuView.Coordinator(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1BD7B7C88(uint64_t a1)
{
  v9 = *(a1 + qword_1EBD53868);

  v9, v2, v3, v4, v5, v6, v7, v8;
}

id sub_1BD7B7CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BD7B762C(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1BD7B7D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD7B7DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1BD7B7E28(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD7B7E68()
{
  v1 = *(v0 + qword_1EBD53868);
  if (v1 >> 62)
  {
    sub_1BD0E5E8C(0, &unk_1EBD53960, 0x1E69DCC78);
    sub_1BE048C84();
    sub_1BE0539A4();
    v1, v3, v4, v5, v6, v7, v8, v9;
  }

  else
  {
    sub_1BE048C84();
    sub_1BE053BA4();
    sub_1BD0E5E8C(0, &unk_1EBD53960, 0x1E69DCC78);
  }

  sub_1BD0E5E8C(0, &qword_1EBD47258, 0x1E69DCC60);
  return sub_1BE052F64();
}

uint64_t sub_1BD7B7FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BD7B8018()
{
  result = qword_1EBD53A00;
  if (!qword_1EBD53A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53A08, &qword_1BE0F88C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53A00);
  }

  return result;
}

uint64_t sub_1BD7B8098()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD7B810C()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD7B8180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C58, &qword_1BE0F8DC0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC9PassKitUI16SetupFieldsModel__isEditing;
  v13 = 0;
  sub_1BE04D874();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC9PassKitUI16SetupFieldsModel__fields;
  v12 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0, &qword_1BE0D5160);
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v10, v4, v1);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  return v0;
}

void sub_1BD7B836C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = a1;
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE04D8C4();
    v23 = *(v1 + 16);
    v31 = sub_1BD3F0574(a1, v24, v25, v26, v27, v28, v29, v30);
    v32 = sub_1BE052724();
    v31, v33, v34, v35, v36, v37, v38, v39;
    [v23 updateWithPaymentSetupFields_];

    return;
  }

  v3 = sub_1BE053704();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB40900](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      KeyPath = swift_getKeyPath();
      v8 = swift_getKeyPath();
      sub_1BE04D8B4(&v41);
      KeyPath, v9, v10, v11, v12, v13, v14, v15;
      v8, v16, v17, v18, v19, v20, v21, v22;
      [v6 setReadonly_];
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1BD7B8528(char a1)
{
  v2 = v1;
  v66 = MEMORY[0x1E69E7CC0];
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v61 = v2;
  sub_1BE04D8B4(v65);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  v27 = v65[0];
  if (v65[0] >> 62)
  {
    v28 = sub_1BE053704();
  }

  else
  {
    v28 = *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x1E69E7CA0];
  v60 = a1;
  if (!v28)
  {
    v32 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v27, v20, v21, v22, v23, v24, v25, v26;
    v43 = *(v61 + 16);
    v51 = sub_1BD3F0574(v32, v44, v45, v46, v47, v48, v49, v50);
    v52 = sub_1BE052724();
    v51, v53, v54, v55, v56, v57, v58, v59;
    [v43 updateWithPaymentSetupFields_];

    swift_getKeyPath();
    swift_getKeyPath();
    v65[0] = v32;
    sub_1BE048964();
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v65[0]) = v60 & 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    return;
  }

  if (v28 >= 1)
  {
    v30 = 0;
    v31 = v27 & 0xC000000000000001;
    v63 = a1 ^ 1;
    v32 = MEMORY[0x1E69E7CC0];
    v33 = &selRef_chatWithHandle_;
    v34 = &qword_1EBD4E6C0;
    v62 = v28;
    do
    {
      if (v31)
      {
        v35 = MEMORY[0x1BFB40900](v30, v27);
      }

      else
      {
        v35 = *(v27 + 8 * v30 + 32);
      }

      v36 = v35;
      [v35 v33[365]];
      sub_1BE053624();
      swift_unknownObjectRelease();
      sub_1BD0E5E8C(0, v34, 0x1E69B8DD0);
      if (swift_dynamicCast())
      {
        v37 = v31;
        v38 = v27;
        v39 = v34;
        v40 = v33;
        v41 = v29;
        [v64 setReadonly_];
        v42 = v64;
        MEMORY[0x1BFB3F7A0]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v32 = v66;
        v29 = v41;
        v33 = v40;
        v34 = v39;
        v27 = v38;
        v31 = v37;
        v28 = v62;
      }

      else
      {
      }

      ++v30;
    }

    while (v28 != v30);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1BD7B8848()
{
  v1 = OBJC_IVAR____TtC9PassKitUI16SetupFieldsModel__isEditing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI16SetupFieldsModel__fields;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C58, &qword_1BE0F8DC0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1BD7B896C(uint64_t a1)
{
  sub_1BD7B8E28(319, &qword_1EBD368F0, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1BD7B8E7C(319, &qword_1EBD53A30, &unk_1EBD45AC0, &qword_1BE0D5160, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD7B8AD4(uint64_t a1)
{
  sub_1BD170C00(319);
  if (v1 <= 0x3F)
  {
    sub_1BD7B8CB8(319);
    if (v2 <= 0x3F)
    {
      sub_1BD7B8E28(319, &qword_1EBD53A50, MEMORY[0x1E697BD78]);
      if (v3 <= 0x3F)
      {
        sub_1BD7B8D4C(319);
        if (v4 <= 0x3F)
        {
          sub_1BD7B8E28(319, &qword_1EBD496E0, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1BD7B8E7C(319, &qword_1EBD53A68, &qword_1EBD53A70, &qword_1BE0F8A00, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1BD10315C(319, &qword_1EBD53A78, &qword_1EBD420C0, 0x1E69B8678);
              if (v7 <= 0x3F)
              {
                sub_1BD10315C(319, &qword_1EBD53A80, &qword_1EBD53A88, off_1E80058C8);
                if (v8 <= 0x3F)
                {
                  sub_1BD10315C(319, &qword_1EBD53A90, &qword_1EBD53A98, off_1E80056A8);
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

void sub_1BD7B8CB8(uint64_t a1)
{
  if (!qword_1EBD53A48)
  {
    type metadata accessor for DescriptorsModel(255);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
    v1 = sub_1BE04EED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD53A48);
    }
  }
}

void sub_1BD7B8D4C(uint64_t a1)
{
  if (!qword_1EBD53A58)
  {
    type metadata accessor for SetupFieldsModel(255);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel, &unk_1BE0F8A58);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD53A58);
    }
  }
}

uint64_t sub_1BD7B8DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD7B8E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD7B8E7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1BD7B8EFC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v22 - v9);
  sub_1BD0DE19C(v2, &v22 - v9, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = *v10;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BD7B90FC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SetupFieldsModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD7B913C()
{
  type metadata accessor for SetupFieldsModel(0);
  v0 = swift_allocObject();
  sub_1BD7B8180();
  return v0;
}

id sub_1BD7B9178@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v122 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v123 = v3;
  v125 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1BE04ECF4();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1BE04E454();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v128 = v6;
  v129 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v126 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v102 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AA0, &qword_1BE0F8A90);
  v108 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AA8, &qword_1BE0F8A98);
  v109 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v102 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AB0, &qword_1BE0F8AA0);
  v111 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v110 = &v102 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AB8, &qword_1BE0F8AA8);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v131 = &v102 - v19;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AC0, &qword_1BE0F8AB0);
  MEMORY[0x1EEE9AC00](v124);
  v118 = &v102 - v20;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AC8, &qword_1BE0F8AB8);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v130 = &v102 - v21;
  v132 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AD0, &qword_1BE0F8AC0);
  sub_1BD0DE4F4(&qword_1EBD53AD8, &qword_1EBD53AD0, &qword_1BE0F8AC0, MEMORY[0x1E6981F48]);
  sub_1BE0504A4();
  v106 = v2;
  v22 = *(v2 + 52);
  v127 = v1;
  v23 = *(v1 + v22);
  v112 = v17;
  if (v23)
  {
    v24 = [v23 cardNickname];
    v25 = sub_1BE052434();
    v27 = v26;
  }

  else
  {
    v28 = v128;
    (v129[13])(v103, *MEMORY[0x1E69B80D8], v128);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_11;
    }

    v30 = result;
    v31 = v103;
    v25 = sub_1BE04B6F4();
    v27 = v32;

    (v129[1])(v31, v28);
  }

  v137 = v25;
  v138 = v27;
  v33 = sub_1BD0DE4F4(&qword_1EBD53AE0, &qword_1EBD53AA0, &qword_1BE0F8A90, MEMORY[0x1E697CCF0]);
  v34 = sub_1BD0DDEBC();
  v35 = MEMORY[0x1E69E6158];
  sub_1BE050B74();
  v27, v36, v37, v38, v39, v40, v41, v42;
  (*(v108 + 8))(v13, v11);
  v43 = v113;
  sub_1BE04E444();
  v137 = v11;
  v138 = v35;
  v139 = v33;
  v140 = v34;
  v108 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v110;
  sub_1BE050984();
  (*(v114 + 8))(v43, v115);
  (*(v109 + 8))(v16, v14);
  v46 = v119;
  sub_1BE051DD4();
  v137 = v14;
  v138 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BD7B8DE0(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
  v47 = v112;
  v48 = v121;
  sub_1BE051134();
  (*(v120 + 8))(v46, v48);
  (*(v111 + 8))(v45, v47);
  if (v23)
  {
    v49 = [v23 identifier];
    v50 = sub_1BE052434();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = v126;
  v54 = v127;
  v56 = v124;
  v55 = v125;
  sub_1BD7C2E04(v127, v125);
  v57 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v58 = swift_allocObject();
  sub_1BD7C2E68(v55, v58 + v57);
  v59 = v118;
  v60 = &v118[*(v56 + 36)];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AE8, &qword_1BE0F8AE0);
  sub_1BE0528B4();
  v62 = &v60[*(v61 + 40)];
  *v62 = v50;
  v62[1] = v52;
  *v60 = &unk_1BE0F8AD8;
  *(v60 + 1) = v58;
  v63 = (*(v116 + 32))(v59, v131, v117);
  MEMORY[0x1EEE9AC00](v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AF0, &qword_1BE0F8AE8);
  v65 = sub_1BD7C2FA0();
  v66 = sub_1BD0DE4F4(&qword_1EBD53B08, &qword_1EBD53AF0, &qword_1BE0F8AE8, MEMORY[0x1E697C5E0]);
  v131 = v64;
  v127 = v65;
  sub_1BE051024();
  sub_1BD0DE53C(v59, &qword_1EBD53AC0, &qword_1BE0F8AB0);
  v68 = v128;
  v67 = v129;
  (v129[13])(v53, *MEMORY[0x1E69B80D8], v128);
  result = PKPassKitBundle();
  if (result)
  {
    v69 = result;
    v70 = sub_1BE04B6F4();
    v72 = v71;

    (v67[1])(v53, v68);
    v135 = v70;
    v136 = v72;
    v73 = v54 + *(v106 + 36);
    v74 = *v73;
    v75 = *(v73 + 8);
    v133 = v74;
    v134 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    v76 = sub_1BE0516C4();
    v129 = &v102;
    v77 = v137;
    v78 = v138;
    MEMORY[0x1EEE9AC00](v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    v137 = v56;
    v138 = v131;
    v139 = v127;
    v140 = v66;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v79 = v105;
    v80 = v130;
    sub_1BE050C64();
    v72, v81, v82, v83, v84, v85, v86, v87;
    v78, v88, v89, v90, v91, v92, v93, v94;
    v77, v95, v96, v97, v98, v99, v100, v101;
    return (*(v104 + 8))(v80, v79);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_1BD7B9EA4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v160 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B48, &qword_1BE0F8C38);
  v158 = *(v3 - 8);
  v159 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v148 = v130 - v4;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B50, &qword_1BE0F8C40);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v139 = v130 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B58, &qword_1BE0F8C48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v147 = v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v153 = v130 - v9;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B60, &qword_1BE0F8C50);
  v150 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v138 = v130 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B68, &qword_1BE0F8C58);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v146 = v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v154 = v130 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B70, &qword_1BE0F8C60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v157 = v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v156 = v130 - v18;
  v19 = sub_1BE04BD74();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v140 = v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v137 = v130 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v130 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B78, &qword_1BE0F8C68);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v155 = v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v130 - v32;
  v161 = v2;
  v34 = *(v20 + 104);
  v144 = *MEMORY[0x1E69B80D8];
  v145 = v20 + 104;
  v143 = v34;
  v34(v26, v31);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = result;
  v37 = sub_1BE04B6F4();
  v39 = v38;

  v40 = *(v20 + 8);
  v142 = v19;
  v141 = v40;
  v40(v26, v19);
  v162 = v37;
  v163 = v39;
  v41 = sub_1BD0DDEBC();
  v162 = sub_1BE0506C4();
  v163 = v42;
  LOBYTE(v164) = v43 & 1;
  v165 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B80, &qword_1BE0F8C70);
  sub_1BD7C39C0();
  sub_1BE051A54();
  v45 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v46 = *(v2 + *(v45 + 52));
  v47 = v33;
  if (!v46 || (v48 = v45, [v46 type] != 1))
  {
    v56 = 1;
    v57 = v156;
LABEL_16:
    (*(v158 + 56))(v57, v56, 1, v159);
    v108 = *(v28 + 16);
    v109 = v155;
    v108(v155, v47, v27);
    v110 = v157;
    sub_1BD0DE19C(v57, v157, &qword_1EBD53B70, &qword_1BE0F8C60);
    v111 = v47;
    v112 = v160;
    v108(v160, v109, v27);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BC8, &qword_1BE0F8C90);
    sub_1BD0DE19C(v110, &v112[*(v113 + 48)], &qword_1EBD53B70, &qword_1BE0F8C60);
    sub_1BD0DE53C(v57, &qword_1EBD53B70, &qword_1BE0F8C60);
    v114 = *(v28 + 8);
    v114(v111, v27);
    sub_1BD0DE53C(v110, &qword_1EBD53B70, &qword_1BE0F8C60);
    return (v114)(v109, v27);
  }

  v49 = (v2 + *(v48 + 44));
  v51 = *v49;
  v50 = v49[1];
  v162 = v51;
  v163 = v50;
  v133 = v50;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10, &qword_1BE0F8AF0);
  sub_1BE0516A4();
  v136 = v28;
  v135 = v27;
  v134 = v51;
  if (!v170 || (v170, sub_1BE04E134(), v162 != 1))
  {
    v54 = v47;
    v55 = 1;
    v53 = v149;
    goto LABEL_10;
  }

  v52 = [v46 cardIsInWallet];
  v53 = v149;
  if (v52)
  {
    v54 = v47;
    v55 = 1;
LABEL_10:
    v58 = 1;
    (*(v150 + 56))(v154, v55, 1, v53);
    type metadata accessor for SetupFieldsModel(0);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel, &unk_1BE0F8A58);
    v59 = sub_1BE04E3C4();
    KeyPath = swift_getKeyPath();
    v61 = swift_getKeyPath();
    sub_1BE04D8B4(&v162);
    KeyPath, v62, v63, v64, v65, v66, v67, v68;
    v61, v69, v70, v71, v72, v73, v74, v75;
    v59, v76, v77, v78, v79, v80, v81, v82;
    if (v162 != 1)
    {
LABEL_15:
      v102 = v153;
      (*(v151 + 56))(v153, v58, 1, v152);
      v103 = v154;
      v104 = v146;
      sub_1BD0DE19C(v154, v146, &qword_1EBD53B68, &qword_1BE0F8C58);
      v105 = v147;
      sub_1BD0DE19C(v102, v147, &qword_1EBD53B58, &qword_1BE0F8C48);
      v106 = v148;
      sub_1BD0DE19C(v104, v148, &qword_1EBD53B68, &qword_1BE0F8C58);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BD0, &qword_1BE0F8C98);
      sub_1BD0DE19C(v105, v106 + *(v107 + 48), &qword_1EBD53B58, &qword_1BE0F8C48);
      sub_1BD0DE53C(v102, &qword_1EBD53B58, &qword_1BE0F8C48);
      sub_1BD0DE53C(v103, &qword_1EBD53B68, &qword_1BE0F8C58);
      sub_1BD0DE53C(v105, &qword_1EBD53B58, &qword_1BE0F8C48);
      sub_1BD0DE53C(v104, &qword_1EBD53B68, &qword_1BE0F8C58);
      v57 = v156;
      sub_1BD0B6008(v106, v156);
      v56 = 0;
      v47 = v54;
      v27 = v135;
      v28 = v136;
      goto LABEL_16;
    }

    v162 = v134;
    v163 = v133;
    sub_1BE0516A4();
    if (!v170)
    {
      v58 = 1;
      goto LABEL_15;
    }

    v83 = v41;

    v85 = MEMORY[0x1EEE9AC00](v84);
    v130[-2] = v2;
    v86 = v140;
    v87 = v142;
    v143(v140, v144, v142, v85);
    result = PKPassKitBundle();
    if (result)
    {
      v88 = result;
      v89 = sub_1BE04B6F4();
      v91 = v90;

      v141(v86, v87);
      v162 = v89;
      v163 = v91;
      v92 = MEMORY[0x1E69E6158];
      v93 = v83;
      v170 = sub_1BE0506C4();
      v171 = v94;
      v172 = v95 & 1;
      v173 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BD8, &unk_1BE0F8CA0);
      v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
      v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
      v99 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
      v100 = sub_1BD170E70();
      v162 = v97;
      v163 = v92;
      v164 = v97;
      v165 = v98;
      v166 = v99;
      v167 = v93;
      v168 = v99;
      v169 = v100;
      swift_getOpaqueTypeConformance2();
      v101 = v139;
      sub_1BE051A54();
      (*(v151 + 32))(v153, v101, v152);
      v58 = 0;
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v115 = v149;
  v54 = v47;
  result = [objc_opt_self() sharedService];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v116 = result;
  v117 = [result paymentSetupSupportedInRegion];

  if (v117 == 2 || (v118 = PKPasscodeEnabled(), !v118))
  {
    v55 = 1;
    v53 = v115;
    goto LABEL_10;
  }

  v131 = v41;
  v130[1] = v130;
  v119 = MEMORY[0x1EEE9AC00](v118);
  v130[0] = &v130[-4];
  v130[-2] = v2;
  v120 = v137;
  v121 = v142;
  v143(v137, v144, v142, v119);
  result = PKPassKitBundle();
  if (result)
  {
    v122 = result;
    v123 = sub_1BE04B6F4();
    v125 = v124;

    v141(v120, v121);
    v162 = v123;
    v163 = v125;
    v41 = v131;
    v162 = sub_1BE0506C4();
    v163 = v126;
    LOBYTE(v164) = v127 & 1;
    v165 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BE0, &qword_1BE0F8CB0);
    sub_1BD7C3BE4();
    v129 = v138;
    sub_1BE051A54();
    (*(v150 + 32))(v154, v129, v115);
    v53 = v115;
    v55 = 0;
    goto LABEL_10;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD7BAD6C(uint64_t a1)
{
  v1[21] = a1;
  sub_1BE0528A4();
  v1[22] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD7BAE04, v3, v2);
}

uint64_t sub_1BD7BAE04()
{
  v1 = *(v0 + 168);
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  *(v0 + 200) = v2;
  v10 = *(v1 + *(v2 + 52));
  *(v0 + 208) = v10;
  if (v10)
  {
    v11 = *(v1 + *(v2 + 20));
    if (v11)
    {
      v12 = v11[2];
      *(v0 + 216) = v12;
      v13 = v11[4];
      if (v13 >> 60 == 15)
      {
        v14 = v10;
        v15 = v12;
        v16 = 0;
      }

      else
      {
        v44 = v11[3];
        v45 = v10;
        v46 = v12;
        sub_1BD030394(v44, v13);
        v16 = sub_1BE04AAB4();
        sub_1BD030220(v44, v13, v47, v48, v49, v50, v51, v52);
      }

      *(v0 + 224) = v16;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1BD7BB154;
      v53 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B38, &unk_1BE0F8C28);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1BD16F63C;
      *(v0 + 104) = &block_descriptor_103_2;
      *(v0 + 112) = v53;
      [v12 credentialForFPANCard:v10 authorization:v16 options:7 merchantHost:0 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    else
    {
      type metadata accessor for DescriptorsModel(0);
      sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
      v43 = v10;

      return sub_1BE04EEB4();
    }
  }

  else
  {
    *(v0 + 176), v3, v4, v5, v6, v7, v8, v9;
    type metadata accessor for SetupFieldsModel(0);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel, &unk_1BE0F8A58);
    v17 = sub_1BE04E3C4();
    v18 = sub_1BD7BB5A8();
    sub_1BD7B836C(v18);
    v18, v19, v20, v21, v22, v23, v24, v25;
    v17, v26, v27, v28, v29, v30, v31, v32;
    v33 = sub_1BE04E3C4();
    sub_1BD7B8528(1);
    v33, v34, v35, v36, v37, v38, v39, v40;
    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1BD7BB154()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1BD7BB514;
  }

  else
  {
    v5 = sub_1BD7BB284;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD7BB284(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 216);
  v10 = *(v8 + 224);
  *(v8 + 176), a2, a3, a4, a5, a6, a7, a8;
  v11 = *(v8 + 144);

  if (sub_1BE052974())
  {
    v12 = *(v8 + 208);
  }

  else
  {
    v13 = *(v8 + 200);
    v54 = *(v8 + 208);
    v14 = *(v8 + 168);
    [v11 mutableCopy];
    sub_1BE053624();
    swift_unknownObjectRelease();
    sub_1BD0E5E8C(0, &qword_1EBD53B40, 0x1E69B89D0);
    v15 = swift_dynamicCast();
    v16 = *(v8 + 144);
    if (!v15)
    {
      v16 = 0;
    }

    *(v8 + 144) = *(v14 + *(v13 + 44));
    *(v8 + 160) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10, &qword_1BE0F8AF0);
    sub_1BE0516B4();
    v52 = v14;
    type metadata accessor for SetupFieldsModel(0);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel, &unk_1BE0F8A58);
    v53 = v11;
    v17 = sub_1BE04E3C4();
    v18 = sub_1BD7BB5A8();
    sub_1BD7B836C(v18);
    v18, v19, v20, v21, v22, v23, v24, v25;
    v17, v26, v27, v28, v29, v30, v31, v32;
    v33 = sub_1BE04E3C4();
    sub_1BD7B8528(0);
    v33, v34, v35, v36, v37, v38, v39, v40;
    v41 = v52 + *(v13 + 40);
    v42 = *(v41 + 8);
    *(v8 + 80) = *v41;
    *(v8 + 88) = v42;
    *(v8 + 144) = 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();

    v42, v43, v44, v45, v46, v47, v48, v49;
  }

  v50 = *(v8 + 8);

  return v50();
}

uint64_t sub_1BD7BB514(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 224);
  v10 = *(v8 + 232);
  v12 = *(v8 + 208);
  v11 = *(v8 + 216);
  *(v8 + 176), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  v13 = *(v8 + 8);

  return v13();
}

id sub_1BD7BB5A8()
{
  v1 = sub_1BE04BD74();
  v67 = *(v1 - 8);
  v68 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v66 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1E69E7CC0];
  v11 = [objc_allocWithZone(MEMORY[0x1E69B8E18]) init];
  v64 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v65 = v0;
  v12 = (v0 + *(v64 + 44));
  v13 = *v12;
  v14 = v12[1];
  v70 = *v12;
  v71 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10, &qword_1BE0F8AF0);
  sub_1BE0516A4();
  v15 = v69;
  v16 = &selRef_setBankName_;
  if (v69)
  {
    result = [v69 primaryAccountNumber];
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v18 = result;
    [v11 setCurrentValue_];
  }

  v19 = v11;
  MEMORY[0x1BFB3F7A0]();
  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
    v16 = &selRef_setBankName_;
  }

  sub_1BE0527C4();
  v20 = [objc_allocWithZone(MEMORY[0x1E69B8DF8]) init];

  v70 = v13;
  v71 = v14;
  sub_1BE0516A4();
  v21 = v69;
  if (v69)
  {
    v22 = [v69 cardholderName];
    [v20 v16[271]];
  }

  v23 = v20;
  MEMORY[0x1BFB3F7A0]([v23 setOptional_]);
  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
    v16 = &selRef_setBankName_;
  }

  sub_1BE0527C4();
  v24 = [objc_allocWithZone(MEMORY[0x1E69B8DE0]) init];
  v70 = v13;
  v71 = v14;
  sub_1BE0516A4();
  v25 = v69;
  if (!v69)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_16:
    sub_1BD0DE53C(v7, &unk_1EBD39970, &unk_1BE0B9F80);
    goto LABEL_18;
  }

  v26 = [v69 expirationDate];

  if (v26)
  {
    v27 = v63;
    sub_1BE04AEE4();

    v28 = v27;
    v29 = 0;
    v30 = v8;
  }

  else
  {
    v29 = 1;
    v30 = v8;
    v28 = v63;
  }

  (*(v9 + 56))(v28, v29, 1, v30);
  sub_1BD0DE204(v28, v7, &unk_1EBD39970, &unk_1BE0B9F80);
  v16 = &selRef_setBankName_;
  if ((*(v9 + 48))(v7, 1, v30) == 1)
  {
    goto LABEL_16;
  }

  v31 = v62;
  (*(v9 + 32))(v62, v7, v30);
  v32 = v24;
  v33 = v30;
  v34 = sub_1BE04AE64();
  [v32 setCurrentValue_];

  v16 = &selRef_setBankName_;
  (*(v9 + 8))(v31, v33);
LABEL_18:
  v35 = v24;
  MEMORY[0x1BFB3F7A0]([v35 setOptional_]);
  v36 = v66;
  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
    v16 = &selRef_setBankName_;
  }

  sub_1BE0527C4();
  v37 = [objc_allocWithZone(MEMORY[0x1E69B8DF0]) init];

  v38 = v37;
  [v38 setOptional_];
  v70 = v13;
  v71 = v14;
  sub_1BE0516A4();
  v39 = v69;
  if (v69)
  {
    v40 = [v69 securityCode];
  }

  else
  {
    v40 = 0;
  }

  v42 = v67;
  v41 = v68;
  [v38 v16[271]];
  v43 = swift_unknownObjectRelease();
  MEMORY[0x1BFB3F7A0](v43);
  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v44 = [objc_allocWithZone(MEMORY[0x1E69B8E08]) init];

  (*(v42 + 104))(v36, *MEMORY[0x1E69B80D8], v41);
  v45 = v44;
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v46 = result;
  sub_1BE04B6F4();
  v48 = v47;

  (*(v42 + 8))(v36, v41);
  v49 = sub_1BE052404();
  v48, v50, v51, v52, v53, v54, v55, v56;
  [v45 setLocalizedDisplayName_];

  v57 = *(v65 + *(v64 + 52));
  if (v57)
  {
    v58 = v57;
    result = [v58 cardNickname];
    if (result)
    {
      v59 = result;
      [v45 setCurrentValue_];

      goto LABEL_29;
    }

LABEL_34:
    __break(1u);
    return result;
  }

LABEL_29:
  v60 = v45;
  MEMORY[0x1BFB3F7A0]([v60 setOptional_]);
  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();

  return v72;
}

uint64_t sub_1BD7BBDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B18, &qword_1BE0F8B88);
  MEMORY[0x1EEE9AC00](v70);
  v75 = &v58 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0, &qword_1BE0E06C0);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v61 = &v58 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
  v60 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v59 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACC0, &qword_1BE0F8B90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B20, &qword_1BE0F8B98);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A830, &qword_1BE0F8BA0);
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B28, &qword_1BE0F8BA8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v23 = sub_1BE04FB44();
  v77 = *(v23 - 8);
  v78 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v65 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v58 - v29;
  sub_1BE04FAE4();
  v30 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v31 = *(a1 + *(v30 + 52));
  v66 = a1;
  v67 = v31;
  v68 = v30;
  if (v31)
  {
    if ([v31 type] == 1)
    {
      goto LABEL_7;
    }

LABEL_6:
    (*(v12 + 56))(v19, 1, 1, v11);
    v32 = sub_1BD0DE4F4(&qword_1EBD53B30, &qword_1EBD4A830, &qword_1BE0F8BA0, MEMORY[0x1E697BEF0]);
    *&v80 = v14;
    *(&v80 + 1) = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v19, v11, OpaqueTypeConformance2);
    sub_1BD0DE53C(v19, &qword_1EBD53B28, &qword_1BE0F8BA8);
    goto LABEL_8;
  }

  v80 = *(a1 + *(v30 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10, &qword_1BE0F8AF0);
  sub_1BE0516A4();
  if (v79)
  {

    goto LABEL_6;
  }

LABEL_7:
  v34 = *(v77 + 16);
  v58 = v14;
  v35 = v34(v65, v76, v78);
  v62 = v22;
  MEMORY[0x1EEE9AC00](v35);
  *(&v58 - 2) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0);
  sub_1BD3BAA6C();
  sub_1BE04E424();
  v22 = v62;
  v36 = sub_1BD0DE4F4(&qword_1EBD53B30, &qword_1EBD4A830, &qword_1BE0F8BA0, MEMORY[0x1E697BEF0]);
  v37 = v64;
  v38 = v58;
  MEMORY[0x1BFB3CC50](v16, v58, v36);
  (*(v12 + 16))(v19, v37, v11);
  (*(v12 + 56))(v19, 0, 1, v11);
  *&v80 = v38;
  *(&v80 + 1) = v36;
  v39 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v19, v11, v39);
  sub_1BD0DE53C(v19, &qword_1EBD53B28, &qword_1BE0F8BA8);
  (*(v12 + 8))(v37, v11);
  (*(v63 + 8))(v16, v38);
LABEL_8:
  v40 = v74;
  if (!v67)
  {
    v41 = v66;
    v80 = *(v66 + *(v68 + 11));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10, &qword_1BE0F8AF0);
    sub_1BE0516A4();
    if (!v79)
    {
      v48 = v65;
      sub_1BE04FAD4();
      v49 = (*(v77 + 16))(v25, v48, v78);
      v68 = &v58;
      MEMORY[0x1EEE9AC00](v49);
      *(&v58 - 2) = v41;
      v50 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
      v62 = v22;
      v51 = v8;
      v52 = v69;
      sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
      v53 = v59;
      sub_1BE04E424();
      v54 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
      v55 = v61;
      v56 = v72;
      MEMORY[0x1BFB3CC50](v53, v72, v54);
      (*(v52 + 16))(v51, v55, v50);
      (*(v52 + 56))(v51, 0, 1, v50);
      *&v80 = v56;
      *(&v80 + 1) = v54;
      v57 = swift_getOpaqueTypeConformance2();
      MEMORY[0x1BFB3CC80](v51, v50, v57);
      v22 = v62;
      sub_1BD0DE53C(v51, &qword_1EBD3ACC0, &qword_1BE0F8B90);
      (*(v52 + 8))(v55, v50);
      (*(v60 + 8))(v53, v56);
      (*(v77 + 8))(v65, v78);
      goto LABEL_12;
    }
  }

  v42 = v71;
  (*(v69 + 56))(v8, 1, 1, v71);
  v43 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
  *&v80 = v72;
  *(&v80 + 1) = v43;
  v44 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v8, v42, v44);
  sub_1BD0DE53C(v8, &qword_1EBD3ACC0, &qword_1BE0F8B90);
LABEL_12:
  v45 = *(v70 + 48);
  v46 = v75;
  sub_1BD0DE19C(v22, v75, &qword_1EBD53B28, &qword_1BE0F8BA8);
  sub_1BD0DE19C(v40, v46 + v45, &qword_1EBD3ACC0, &qword_1BE0F8B90);
  sub_1BE04F854();
  sub_1BD0DE53C(v40, &qword_1EBD3ACC0, &qword_1BE0F8B90);
  sub_1BD0DE53C(v22, &qword_1EBD53B28, &qword_1BE0F8BA8);
  return (*(v77 + 8))(v76, v78);
}

int *sub_1BD7BC8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  v64 = v3;
  v67 = a1;
  type metadata accessor for SetupFieldsModel(0);
  sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel, &unk_1BE0F8A58);
  v12 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  sub_1BE04D8B4(&v70);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  v12, v29, v30, v31, v32, v33, v34, v35;
  (*(v6 + 104))(v8, *MEMORY[0x1E69B80D8], v5);
  result = PKPassKitBundle();
  if (result)
  {
    v37 = result;
    v38 = sub_1BE04B6F4();
    v40 = v39;
    0xEB000000004E4F54, v39, v41, v42, v43, v44, v45, v46;

    (*(v6 + 8))(v8, v5);
    v70 = v38;
    v71 = v40;
    v47 = v67;
    sub_1BD7C2E04(v67, &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v48 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v49 = swift_allocObject();
    sub_1BD7C2E68(&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48);
    sub_1BD0DDEBC();
    sub_1BE051744();
    v50 = v64;
    v51 = v47 + *(v64 + 48);
    v52 = *v51;
    v53 = *(v51 + 8);
    LOBYTE(v70) = v52;
    v71 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    if (v69)
    {
      v54 = 1;
    }

    else
    {
      v55 = v47 + *(v50 + 40);
      v56 = *v55;
      v57 = *(v55 + 8);
      LOBYTE(v70) = v56;
      v71 = v57;
      sub_1BE0516A4();
      v54 = v69 ^ 1;
    }

    v58 = swift_getKeyPath();
    v59 = swift_allocObject();
    *(v59 + 16) = v54 & 1;
    v60 = v68;
    (*(v65 + 32))(v68, v11, v66);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0);
    v61 = (v60 + result[9]);
    *v61 = v58;
    v61[1] = sub_1BD10DF54;
    v61[2] = v59;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD7BCD68(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  type metadata accessor for SetupFieldsModel(0);
  sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel, &unk_1BE0F8A58);
  v5 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(&v49);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v5, v22, v23, v24, v25, v26, v27, v28;
  LODWORD(KeyPath) = v49;
  v29 = sub_1BE04E3C4();
  if (KeyPath == 1)
  {
    sub_1BD7B8528(0);
    v29, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD7BCFCC(0, 0, 0, 0);
    if (!*(a1 + *(v4 + 52)))
    {
      v49 = *(a1 + *(v4 + 44));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10, &qword_1BE0F8AF0);
      sub_1BE0516A4();
      if (v48)
      {
      }

      else
      {
        v44 = v45;
        sub_1BD7B8EFC(v45);
        sub_1BE04E654();
        (*(v46 + 8))(v44, v47);
      }
    }
  }

  else
  {
    sub_1BD7B8528(1);
    v29, v37, v38, v39, v40, v41, v42, v43;
  }
}

void sub_1BD7BCFCC(char a1, int a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v111 = a3;
  v110 = a2;
  v8 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1BD7C2E04(v5, &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v9 + 80);
  v12 = swift_allocObject();
  sub_1BD7C2E68(&v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + ((v11 + 16) & ~v11));
  v20 = *(v5 + v8[13]);
  if (a1)
  {
    if (v20)
    {
      v21 = v5 + v8[5];
      if (*v21)
      {
        v22 = *(*v21 + 16);
        v23 = swift_allocObject();
        *(v23 + 16) = sub_1BD7C33E4;
        *(v23 + 24) = v12;
        v117 = sub_1BD267328;
        v118 = v23;
        aBlock = MEMORY[0x1E69E9820];
        v114 = 1107296256;
        v115 = sub_1BD03E30C;
        v116 = &block_descriptor_42_3;
        v24 = _Block_copy(&aBlock);
        v25 = v118;
        v26 = v20;
        v27 = v22;
        sub_1BE048964();
        v25, v28, v29, v30, v31, v32, v33, v34;
        [v27 deleteFPANCardWithDescriptor:v26 completion:v24];
        v12, v35, v36, v37, v38, v39, v40, v41;
        _Block_release(v24);

        return;
      }

      type metadata accessor for DescriptorsModel(0);
      sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
      v103 = v20;
      sub_1BE04EEB4();
      __break(1u);
LABEL_19:
      type metadata accessor for DescriptorsModel(0);
      sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
      v104 = a4;
      sub_1BE04EEB4();
      __break(1u);
LABEL_20:
      type metadata accessor for DescriptorsModel(0);
      sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
      sub_1BE04EEB4();
      __break(1u);
      return;
    }

    v102 = v12;
  }

  else
  {
    v108 = a4;
    v109 = v12;
    if (v20 && (v42 = (v5 + v8[11]), v44 = *v42, v43 = v42[1], aBlock = *v42, v114 = v43, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10, &qword_1BE0F8AF0), sub_1BE0516A4(), v112))
    {

      v45 = sub_1BD7C1A40();
      sub_1BD17195C(v45, v46);
      aBlock = v44;
      v114 = v43;
      v47 = v20;
      sub_1BE0516A4();
      v48 = v112;
      if (v112)
      {
        v49 = v5 + v8[5];
        v50 = v109;
        if (*v49)
        {
          v51 = *(*v49 + 16);
          v52 = swift_allocObject();
          *(v52 + 16) = sub_1BD7C33E4;
          *(v52 + 24) = v50;
          v117 = sub_1BD267328;
          v118 = v52;
          aBlock = MEMORY[0x1E69E9820];
          v114 = 1107296256;
          v115 = sub_1BD03E30C;
          v116 = &block_descriptor_36_3;
          v53 = _Block_copy(&aBlock);
          v54 = v118;
          sub_1BE048964();
          v55 = v51;
          v54, v56, v57, v58, v59, v60, v61, v62;
          [v55 updateFPANCardWithDescriptor:v47 credential:v48 completion:v53];
          v50, v63, v64, v65, v66, v67, v68, v69;
          _Block_release(v53);

          return;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v70 = sub_1BD7C1A40();
      if (v70)
      {
        a4 = v13;
        v107 = v70;
        v71 = v70;
        v72 = *(v5 + v8[5]);
        if (v72)
        {
          v73 = v71;
          v106 = *(v72 + 16);
          sub_1BD7C2E04(v5, &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
          v74 = (v11 + 32) & ~v11;
          v75 = (v10 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
          v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
          v77 = swift_allocObject();
          v78 = v111;
          v79 = v108;
          *(v77 + 16) = v111;
          *(v77 + 24) = v79;
          sub_1BD7C2E68(&v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v77 + v74);
          *(v77 + v75) = v73;
          *(v77 + v76) = a4;
          v80 = v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8);
          v81 = v109;
          *v80 = sub_1BD7C33E4;
          *(v80 + 8) = v81;
          *(v80 + 16) = v110 & 1;
          v117 = sub_1BD7C33FC;
          v118 = v77;
          aBlock = MEMORY[0x1E69E9820];
          v114 = 1107296256;
          v115 = sub_1BD198918;
          v116 = &block_descriptor_181;
          v82 = _Block_copy(&aBlock);
          v83 = v118;
          v84 = a4;
          sub_1BE048964();
          v85 = v84;
          v86 = v106;
          sub_1BD0D44B8(v78, v79);
          v87 = v73;
          v83, v88, v89, v90, v91, v92, v93, v94;
          [v86 canSaveFPANCardWithDescriptor:v87 credential:v85 completion:v82];
          v81, v95, v96, v97, v98, v99, v100, v101;
          sub_1BD17195C(v107, a4);
          _Block_release(v82);

          return;
        }

        goto LABEL_19;
      }
    }

    v102 = v109;
  }

  v102, v13, v14, v15, v16, v17, v18, v19;
}

id sub_1BD7BD644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B80D0], v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v7 + 8))(v10, v6);
    v18[2] = v13;
    v18[3] = v15;
    sub_1BD7C2E04(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v17 = swift_allocObject();
    sub_1BD7C2E68(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7BD86C(uint64_t a1)
{
  v23 = sub_1BE04F3D4();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v22 - v6);
  v8 = sub_1BE04E664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v7, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v12 = *v7;
    sub_1BE052C44();
    v13 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v12, v14, v15, v16, v17, v18, v19, v20;
    (*(v2 + 8))(v4, v23);
  }

  sub_1BE04E654();
  return (*(v9 + 8))(v11, v8);
}

id sub_1BD7BDAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B80D8], v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v7 + 8))(v10, v6);
    v18[2] = v13;
    v18[3] = v15;
    sub_1BD7C2E04(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v17 = swift_allocObject();
    sub_1BD7C2E68(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7BDD18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v4);
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

uint64_t sub_1BD7BDE84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v88 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BC0, &qword_1BE0F8C88);
  MEMORY[0x1EEE9AC00](v86);
  v78 = (&v78 - v3);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C38, &qword_1BE0F8D30);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v78 - v4;
  v5 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v79 = *(v5 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BA8, &qword_1BE0F8C80);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v78 - v7;
  v87 = a1;
  type metadata accessor for SetupFieldsModel(0);
  sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel, &unk_1BE0F8A58);
  v8 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  sub_1BE04D8B4(&v89);
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
  v8, v25, v26, v27, v28, v29, v30, v31;
  v39 = v89;
  if (v89 >> 62)
  {
    v40 = sub_1BE053704();
  }

  else
  {
    v40 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39, v32, v33, v34, v35, v36, v37, v38;
  if (v40 < 1)
  {
    v72 = 1;
    if (!*(v87 + *(v5 + 52)))
    {
      v71 = v88;
      goto LABEL_8;
    }

    v73 = sub_1BE04F504();
    v74 = v78;
    *v78 = v73;
    *(v74 + 8) = 0;
    *(v74 + 16) = 1;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C40, qword_1BE0F8D38);
    sub_1BD7BE73C(v74 + *(v75 + 44));
    sub_1BD0DE19C(v74, v85, &qword_1EBD53BC0, &qword_1BE0F8C88);
    swift_storeEnumTagMultiPayload();
    sub_1BD7C3AFC();
    sub_1BD0DE4F4(&qword_1EBD53BB8, &qword_1EBD53BC0, &qword_1BE0F8C88, MEMORY[0x1E69817F8]);
    v71 = v88;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v74, &qword_1EBD53BC0, &qword_1BE0F8C88);
  }

  else
  {
    v41 = sub_1BE04E3C4();
    v42 = swift_getKeyPath();
    v43 = swift_getKeyPath();
    sub_1BE04D8B4(&v89);
    v42, v44, v45, v46, v47, v48, v49, v50;
    v43, v51, v52, v53, v54, v55, v56, v57;
    v41, v58, v59, v60, v61, v62, v63, v64;
    swift_getKeyPath();
    v65 = v80;
    sub_1BD7C2E04(v87, v80);
    v66 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v67 = swift_allocObject();
    sub_1BD7C2E68(v65, v67 + v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0, &qword_1BE0D5160);
    sub_1BD0DE4F4(&qword_1EBD53C48, &unk_1EBD45AC0, &qword_1BE0D5160, MEMORY[0x1E69E6338]);
    sub_1BD7C3B80();
    v68 = v81;
    sub_1BE0519C4();
    v69 = v82;
    v70 = v84;
    (*(v82 + 16))(v85, v68, v84);
    swift_storeEnumTagMultiPayload();
    sub_1BD7C3AFC();
    sub_1BD0DE4F4(&qword_1EBD53BB8, &qword_1EBD53BC0, &qword_1BE0F8C88, MEMORY[0x1E69817F8]);
    v71 = v88;
    sub_1BE04F9A4();
    (*(v69 + 8))(v68, v70);
  }

  v72 = 0;
LABEL_8:
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B98, &qword_1BE0F8C78);
  return (*(*(v76 - 8) + 56))(v71, v72, 1, v76);
}

id sub_1BD7BE4BC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  sub_1BD7C2E04(a2, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_1BD7C2E68(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *a3 = v9;
  a3[1] = sub_1BD7C41DC;
  a3[2] = v11;
  v12 = v9;

  return v12;
}

double sub_1BD7BE5D8(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  v4 = sub_1BE052434();
  v6 = v5;

  v7 = sub_1BE052434();
  v15 = v8;
  if (v4 == v7 && v6 == v8)
  {
    v6, v8, v9, v10, v11, v12, v13, v14;
    v15, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v17 = sub_1BE053B84();
    v6, v18, v19, v20, v21, v22, v23, v24;
    v15, v25, v26, v27, v28, v29, v30, v31;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  if ([a1 submissionStringMeetsAllRequirements])
  {
    [a1 submissionStringMeetsValidationRegex];
  }

  type metadata accessor for AutoFillFPANCardDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

void sub_1BD7BE73C(uint64_t a1@<X8>)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424B8, &qword_1BE0CD770);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v68[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v68[-v4];
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 104))(v9, *MEMORY[0x1E69B80D8], v5, v7);
  v10 = PKPassKitBundle();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v6 + 8))(v9, v5);
    v73 = v12;
    v74 = v14;
    sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = objc_opt_self();
    v23 = [v22 tertiaryLabelColor];
    v24 = sub_1BE0511C4();
    v25 = sub_1BE050564();
    v27 = v26;
    v69 = v28;
    v30 = v29;
    v24, v26, v28, v29, v31, v32, v33, v34;
    sub_1BD0DDF10(v15, v17, (v19 & 1), v35, v36, v37, v38, v39);
    v21, v40, v41, v42, v43, v44, v45, v46;
    v47 = v71;
    sub_1BE04E4F4();
    v48 = [v22 tertiaryLabelColor];
    v49 = sub_1BE0511C4();
    KeyPath = swift_getKeyPath();
    v73 = v49;
    v51 = sub_1BE04E5F4();
    v52 = (v47 + *(v70 + 36));
    *v52 = KeyPath;
    v52[1] = v51;
    v53 = v72;
    sub_1BD0DE19C(v47, v72, &qword_1EBD424B8, &qword_1BE0CD770);
    *a1 = v25;
    *(a1 + 8) = v27;
    v54 = (v69 & 1);
    *(a1 + 16) = v54;
    *(a1 + 24) = v30;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C50, &unk_1BE0F8DB0);
    sub_1BD0DE19C(v53, a1 + *(v55 + 64), &qword_1EBD424B8, &qword_1BE0CD770);
    sub_1BD0D7F18(v25, v27, v54);
    sub_1BE048C84();
    sub_1BD0DE53C(v47, &qword_1EBD424B8, &qword_1BE0CD770);
    sub_1BD0DE53C(v53, &qword_1EBD424B8, &qword_1BE0CD770);
    sub_1BD0DDF10(v25, v27, v54, v56, v57, v58, v59, v60);
    v30, v61, v62, v63, v64, v65, v66, v67;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD7BEAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BF8, &qword_1BE0F8CB8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45[-v9];
  sub_1BD7C2E04(a1, &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1BD7C2E68(&v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C00, &qword_1BE0F8CC0);
  sub_1BD0DE4F4(&qword_1EBD53C08, &qword_1EBD53C00, &qword_1BE0F8CC0, MEMORY[0x1E69817F8]);
  sub_1BE051704();
  v13 = (a1 + *(v4 + 48));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v48[0]) = v14;
  v48[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v47)
  {
    v16 = 1;
  }

  else
  {
    type metadata accessor for SetupFieldsModel(0);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel, &unk_1BE0F8A58);
    v17 = sub_1BE04E3C4();
    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();
    sub_1BE04D8B4(v48);
    KeyPath, v20, v21, v22, v23, v24, v25, v26;
    v19, v27, v28, v29, v30, v31, v32, v33;
    v17, v34, v35, v36, v37, v38, v39, v40;
    v16 = v48[0];
  }

  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v16;
  (*(v8 + 32))(a2, v10, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BE0, &qword_1BE0F8CB0);
  v44 = (a2 + *(result + 36));
  *v44 = v41;
  v44[1] = sub_1BD185ABC;
  v44[2] = v42;
  return result;
}

void sub_1BD7BEE54(uint64_t a1)
{
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + *(v6 + 52));
  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  aBlock = *(a1 + v2[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10, &qword_1BE0F8AF0);
  sub_1BE0516A4();
  v10 = v62;
  v11 = [objc_allocWithZone(MEMORY[0x1E69B8880]) initWithFPANCardDescriptor:v8 credential:v62];

  if (v11)
  {
    v12 = *(a1 + v2[14]);
    if (v12)
    {
      v13 = (a1 + v2[12]);
      v14 = *v13;
      v15 = *(v13 + 1);
      LOBYTE(aBlock) = v14;
      *(&aBlock + 1) = v15;
      LOBYTE(v62) = 1;
      v16 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BE0B7020;
      *(v17 + 32) = v11;
      sub_1BD0E5E8C(0, &qword_1EBD41880, 0x1E69B8880);
      v18 = v11;
      v11 = sub_1BE052724();
      v17, v19, v20, v21, v22, v23, v24, v25;
      sub_1BD7C2E04(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v27 = swift_allocObject();
      sub_1BD7C2E68(v5, v27 + v26);
      v60 = sub_1BD7C3D58;
      v61 = v27;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v58 = sub_1BD126964;
      v59 = &block_descriptor_123_0;
      v28 = _Block_copy(&aBlock);
      v61, v29, v30, v31, v32, v33, v34, v35;
      [v16 presentFPANAdditionFlowWithPreflight:1 selectedCredentials:v11 withCompletion:v28];
    }

    else
    {
      v36 = *(a1 + v2[15]);
      if (!v36)
      {
LABEL_11:

        return;
      }

      v37 = (a1 + v2[12]);
      v38 = *v37;
      v39 = *(v37 + 1);
      LOBYTE(aBlock) = v38;
      *(&aBlock + 1) = v39;
      LOBYTE(v62) = 1;
      v16 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1BE0B7020;
      *(v40 + 32) = v11;
      sub_1BD0E5E8C(0, &qword_1EBD41880, 0x1E69B8880);
      v18 = v11;
      v11 = sub_1BE052724();
      v40, v41, v42, v43, v44, v45, v46, v47;
      sub_1BD7C2E04(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v48 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v49 = swift_allocObject();
      sub_1BD7C2E68(v5, v49 + v48);
      v60 = sub_1BD7C3CE8;
      v61 = v49;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v58 = sub_1BD976224;
      v59 = &block_descriptor_117_2;
      v28 = _Block_copy(&aBlock);
      v61, v50, v51, v52, v53, v54, v55, v56;
      [v16 presentAddFPANCardAnimated:1 selectedCredentials:v11 referralSource:2 completion:v28];
    }

    _Block_release(v28);
    goto LABEL_11;
  }
}

void sub_1BD7BF2E0(uint64_t a1)
{
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1BE0528D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BD7C2E04(a1, v5);
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v10;
  v12[3] = v13;
  sub_1BD7C2E68(v5, v12 + v11);
  v14 = sub_1BD122C00(0, 0, v8, &unk_1BE0F8D08, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

uint64_t sub_1BD7BF498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a4;
  sub_1BE0528A4();
  v4[30] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[31] = v6;
  v4[32] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD7BF530, v6, v5);
}

uint64_t sub_1BD7BF530()
{
  v1 = v0[29];
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v0[33] = v2;
  v3 = (v1 + *(v2 + 20));
  v4 = *v3;
  v0[34] = *v3;
  if (v4)
  {
    v5 = *(v4 + 16);
    v0[35] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0C63C0;
    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    sub_1BE048964();
    v7 = v5;
    *(inited + 32) = sub_1BE053054();
    *(inited + 40) = sub_1BE053054();
    *(inited + 48) = sub_1BE053054();
    sub_1BD112388(inited);
    v9 = v8;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD22CFF8();
    v10 = sub_1BE052A24();
    v0[36] = v10;
    v9, v11, v12, v13, v14, v15, v16, v17;
    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_1BD7BF7DC;
    v18 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C30, &qword_1BE0F8D10);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD7BF8E4;
    v0[13] = &block_descriptor_130_0;
    v0[14] = v18;
    [v7 activeFPANCardsWithOptions:7 allowedCardTypes:v10 sortType:1 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    type metadata accessor for DescriptorsModel(0);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);

    return sub_1BE04EEB4();
  }
}

uint64_t sub_1BD7BF7DC()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BD7C42A0, v2, v1);
}

uint64_t sub_1BD7BF8E4(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD420C0, 0x1E69B8678);
    v4 = sub_1BE052744();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

void sub_1BD7BF974(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1BE0528D4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1BD7C2E04(a2, v6);
  sub_1BE0528A4();
  v11 = sub_1BE052894();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v11;
  v13[3] = v14;
  sub_1BD7C2E68(v6, v13 + v12);
  v15 = sub_1BD122C00(0, 0, v9, &unk_1BE0F8D20, v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_1BD7BFB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a4;
  sub_1BE0528A4();
  v4[30] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[31] = v6;
  v4[32] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD7BFBC4, v6, v5);
}

uint64_t sub_1BD7BFBC4()
{
  v1 = v0[29];
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v0[33] = v2;
  v3 = (v1 + *(v2 + 20));
  v4 = *v3;
  v0[34] = *v3;
  if (v4)
  {
    v5 = *(v4 + 16);
    v0[35] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0C63C0;
    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    sub_1BE048964();
    v7 = v5;
    *(inited + 32) = sub_1BE053054();
    *(inited + 40) = sub_1BE053054();
    *(inited + 48) = sub_1BE053054();
    sub_1BD112388(inited);
    v9 = v8;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD22CFF8();
    v10 = sub_1BE052A24();
    v0[36] = v10;
    v9, v11, v12, v13, v14, v15, v16, v17;
    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_1BD7BFE70;
    v18 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C30, &qword_1BE0F8D10);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD7BF8E4;
    v0[13] = &block_descriptor_137_1;
    v0[14] = v18;
    [v7 activeFPANCardsWithOptions:7 allowedCardTypes:v10 sortType:1 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    type metadata accessor for DescriptorsModel(0);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);

    return sub_1BE04EEB4();
  }
}

uint64_t sub_1BD7BFE70()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BD7BFF78, v2, v1);
}

uint64_t sub_1BD7BFF78(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 280);
  v9 = *(v8 + 288);
  v11 = *(v8 + 264);
  v12 = *(v8 + 232);
  *(v8 + 240), a2, a3, a4, a5, a6, a7, a8;
  v13 = *(v8 + 216);

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v8 + 224) = v14;
  sub_1BE04D8C4();
  v15 = (v12 + *(v11 + 48));
  v16 = *v15;
  v17 = *(v15 + 1);
  *(v8 + 200) = v16;
  *(v8 + 208) = v17;
  *(v8 + 296) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v18 = *(v8 + 8);

  return v18();
}

id sub_1BD7C0080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C10, &qword_1BE0F8CC8);
  return sub_1BD7C00D8(a1, (a2 + *(v4 + 44)));
}

id sub_1BD7C00D8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C18, &qword_1BE0F8CD0);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v4 = &v58[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C20, &qword_1BE0F8CD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58[-v8];
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 104))(v14, *MEMORY[0x1E69B80D8], v10, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v11 + 8))(v14, v10);
    v69 = v17;
    v70 = v19;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    LOBYTE(v19) = v23;
    v60 = v24;
    v59 = sub_1BE050204();
    sub_1BE04E1F4();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v19 & 1;
    v84 = v19 & 1;
    v81 = 0;
    v34 = v61 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 48);
    v35 = *v34;
    v36 = *(v34 + 8);
    LOBYTE(v69) = v35;
    v70 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    if (v65 == 1)
    {
      sub_1BE04E4F4();
      v37 = sub_1BE050224();
      sub_1BE04E1F4();
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE58, &unk_1BE0F8CF0) + 36)];
      *v46 = v37;
      *(v46 + 1) = v39;
      *(v46 + 2) = v41;
      *(v46 + 3) = v43;
      *(v46 + 4) = v45;
      v46[40] = 0;
      v47 = sub_1BE04FC84();
      v48 = v63;
      *&v4[*(v63 + 36)] = v47;
      sub_1BD0DE204(v4, v9, &qword_1EBD53C18, &qword_1BE0F8CD0);
      v49 = 0;
    }

    else
    {
      v49 = 1;
      v48 = v63;
    }

    (*(v62 + 56))(v9, v49, 1, v48);
    v50 = v64;
    sub_1BD0DE19C(v9, v64, &qword_1EBD53C20, &qword_1BE0F8CD8);
    *&v65 = v20;
    *(&v65 + 1) = v22;
    LOBYTE(v66) = v33;
    *(&v66 + 1) = *v83;
    DWORD1(v66) = *&v83[3];
    LODWORD(v63) = v33;
    v62 = v22;
    v51 = v20;
    v52 = v60;
    *(&v66 + 1) = v60;
    v53 = v59;
    LOBYTE(v67) = v59;
    *(&v67 + 1) = *v82;
    DWORD1(v67) = *&v82[3];
    *(&v67 + 1) = v26;
    *&v68[0] = v28;
    *(&v68[0] + 1) = v30;
    *&v68[1] = v32;
    BYTE8(v68[1]) = 0;
    v54 = v65;
    v55 = v66;
    *(a2 + 57) = *(v68 + 9);
    v56 = v68[0];
    a2[2] = v67;
    a2[3] = v56;
    *a2 = v54;
    a2[1] = v55;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C28, &unk_1BE0F8CE0);
    sub_1BD0DE19C(v50, a2 + *(v57 + 48), &qword_1EBD53C20, &qword_1BE0F8CD8);
    sub_1BD0DE19C(&v65, &v69, &unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD0DE53C(v9, &qword_1EBD53C20, &qword_1BE0F8CD8);
    sub_1BD0DE53C(v50, &qword_1EBD53C20, &qword_1BE0F8CD8);
    v69 = v51;
    v70 = v62;
    v71 = v63;
    *v72 = *v83;
    *&v72[3] = *&v83[3];
    v73 = v52;
    v74 = v53;
    *v75 = *v82;
    *&v75[3] = *&v82[3];
    v76 = v26;
    v77 = v28;
    v78 = v30;
    v79 = v32;
    v80 = 0;
    return sub_1BD0DE53C(&v69, &unk_1EBD3DF90, &qword_1BE0C2E90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7C0698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v65 = a2;
  v62 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v68 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v69 = v2;
  v70 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v61 - v4;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v72 = &v61 - v15;
  v16 = *(v7 + 104);
  v67 = *MEMORY[0x1E69B80D8];
  v66 = v16;
  v16(v12, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    v61 = *(v7 + 8);
    v61(v12, v6);
    v73 = v19;
    v74 = v21;
    sub_1BE04E194();
    v22 = sub_1BE04E1D4();
    (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
    v24 = v70;
    v23 = v71;
    sub_1BD7C2E04(v71, v70);
    v25 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v26 = swift_allocObject();
    sub_1BD7C2E68(v24, v26 + v25);
    sub_1BD0DDEBC();
    sub_1BE051724();
    v66(v9, v67, v6);
    result = PKPassKitBundle();
    if (result)
    {
      v27 = result;
      v28 = sub_1BE04B6F4();
      v30 = v29;

      v61(v9, v6);
      v77 = v28;
      v78 = v30;
      v31 = v23 + *(v62 + 32);
      v32 = *v31;
      v33 = *(v31 + 8);
      v75 = v32;
      v76 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      v34 = sub_1BE0516C4();
      v35 = v73;
      v36 = v74;
      MEMORY[0x1EEE9AC00](v34);
      MEMORY[0x1EEE9AC00](v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
      sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
      sub_1BD170E70();
      v38 = v64;
      v39 = v72;
      sub_1BE050C64();
      v30, v40, v41, v42, v43, v44, v45, v46;
      v36, v47, v48, v49, v50, v51, v52, v53;
      v35, v54, v55, v56, v57, v58, v59, v60;
      return (*(v63 + 8))(v39, v38);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1BD7C0C2C(uint64_t a1)
{
  type metadata accessor for AutoFillFPANCardDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

id sub_1BD7C0CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a1;
  v21[1] = a2;
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B80D8], v8, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v9 + 8))(v12, v8);
    v21[2] = v15;
    v21[3] = v17;
    sub_1BE04E194();
    v18 = sub_1BE04E1D4();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    sub_1BD7C2E04(v21[0], v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v20 = swift_allocObject();
    sub_1BD7C2E68(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    sub_1BD0DDEBC();
    return sub_1BE051724();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7C0F64()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD7BCFCC(1, 0, 0, 0);
  sub_1BD7B8EFC(v3);
  sub_1BE04E654();
  return (*(v1 + 8))(v3, v0);
}

void *sub_1BD7C1044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = *(a1 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 52));
  if (v11 && [v11 cardIsInWallet])
  {
    (*(v5 + 104))(v10, *MEMORY[0x1E69B80D8], v4);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
      v16 = v15;

      (*(v5 + 8))(v10, v4);
      *&v35 = v14;
      *(&v35 + 1) = v16;
      sub_1BD0DDEBC();
      v30 = sub_1BE0506C4();
      v31 = v17;
      v32 = v18 & 1;
      v33 = v19;
      v34 = 0;
LABEL_7:
      result = sub_1BE04F9A4();
      v27 = v36;
      v28 = v37;
      *a2 = v35;
      *(a2 + 16) = v27;
      *(a2 + 32) = v28;
      return result;
    }
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69B80D8], v4);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();
      v23 = v22;

      (*(v5 + 8))(v7, v4);
      *&v35 = v21;
      *(&v35 + 1) = v23;
      sub_1BD0DDEBC();
      v30 = sub_1BE0506C4();
      v31 = v25;
      v32 = v24 & 1;
      v33 = v26;
      v34 = 1;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD7C12EC(uint64_t a1)
{
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = *(a1 + *(v5 + 28));
  if (v6)
  {
    v7 = *(v6 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0C63C0;
    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    v9 = v7;
    *(inited + 32) = sub_1BE053054();
    *(inited + 40) = sub_1BE053054();
    *(inited + 48) = sub_1BE053054();
    sub_1BD112388(inited);
    v11 = v10;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD22CFF8();
    v12 = sub_1BE052A24();
    v11, v13, v14, v15, v16, v17, v18, v19;
    sub_1BD7C2E04(a1, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v21 = swift_allocObject();
    sub_1BD7C2E68(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    aBlock[4] = sub_1BD7C37F0;
    v32 = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3293A4;
    aBlock[3] = &block_descriptor_68;
    v22 = _Block_copy(aBlock);
    v32, v23, v24, v25, v26, v27, v28, v29;
    [v9 activeFPANCardsWithOptions:7 allowedCardTypes:v12 sortType:1 completion:v22];
    _Block_release(v22);
  }

  else
  {
    type metadata accessor for DescriptorsModel(0);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD7C15B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v27 = v8;
    sub_1BE048C84();
    v26 = sub_1BE052D54();
    sub_1BD7C2E04(a2, &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v15 = swift_allocObject();
    sub_1BD7C2E68(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), &v15[v14]);
    *&v15[(v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;
    aBlock[4] = sub_1BD7C3860;
    v30 = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_74_0;
    v16 = _Block_copy(aBlock);
    v30, v17, v18, v19, v20, v21, v22, v23;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD7B8DE0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    sub_1BE053664();
    v24 = v26;
    MEMORY[0x1BFB3FDF0](0, v10, v7, v16);
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    (*(v28 + 8))(v10, v27);
  }
}

uint64_t sub_1BD7C1950(uint64_t a1, uint64_t a2)
{
  if (*(a1 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE048C84();
    return sub_1BE04D8C4();
  }

  else
  {
    type metadata accessor for DescriptorsModel(0);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

id sub_1BD7C1A40()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v240 = &v231 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v237 = &v231 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v232 = &v231 - v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = v2[7];
  v246 = &v231 - v11;
  v238 = v10;
  v239 = v2 + 7;
  v10(v9);
  v235 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v236 = v0;
  type metadata accessor for SetupFieldsModel(0);
  sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel, &unk_1BE0F8A58);
  v12 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  sub_1BE04D8B4(&v251);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  v12, v29, v30, v31, v32, v33, v34, v35;
  v43 = v251;
  if (v251 >> 62)
  {
    goto LABEL_60;
  }

  v44 = *((v251 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v243 = v2;
  v244 = v1;
  while (v44)
  {
    v242 = 0;
    v245 = 0;
    v249 = 0;
    v1 = 0;
    v233 = 0;
    v241 = 0;
    v247 = 0;
    v250 = 0;
    v45 = 0;
    v46 = v43 & 0xC000000000000001;
    v47 = v43 & 0xFFFFFFFFFFFFFF8;
    v48 = (v43 + 32);
    v234 = (v243 + 4);
    v248 = v44;
    while (1)
    {
      if (v46)
      {
        v49 = MEMORY[0x1BFB40900](v45, v43);
      }

      else
      {
        if (v45 >= *(v47 + 16))
        {
          goto LABEL_59;
        }

        v49 = *&v48[8 * v45];
      }

      v2 = v49;
      if (__OFADD__(v45++, 1))
      {
        break;
      }

      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        v52 = [v51 currentValue];
        if (v52)
        {
          v254 = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820, &unk_1BE0EBFD0);
          if (swift_dynamicCast())
          {
            v60 = v48;
            v61 = v43;
            v62 = v47;
            v63 = v1;
            v64 = v251;
            if ((*(&v251 + 1) & 0x2000000000000000) != 0)
            {
              v65 = HIBYTE(*(&v251 + 1)) & 0xFLL;
            }

            else
            {
              v65 = v251 & 0xFFFFFFFFFFFFLL;
            }

            if (v65)
            {
              v250, v53, v54, v55, v56, v57, v58, v59;
              v254 = 0;
              v255 = 0xE000000000000000;
              v251 = v64;
              v252 = 0;
              v253 = v65;
              v66 = sub_1BE052594();
              if (v67)
              {
                v74 = v66;
                v75 = v67;
                do
                {
                  if ((v74 != 32 || v75 != 0xE100000000000000) && (sub_1BE053B84() & 1) == 0)
                  {
                    MEMORY[0x1BFB3F600](v74, v75);
                  }

                  v75, v67, v68, v69, v70, v71, v72, v73;
                  v74 = sub_1BE052594();
                  v75 = v67;
                }

                while (v67);
                v247 = v254;
                v250 = v255;
              }

              else
              {
                v250 = 0xE000000000000000;
                v247 = 0;
              }

              *(&v251 + 1), v108, v109, v110, v111, v112, v113, v114;
            }

            else
            {
              *(&v251 + 1), v53, v54, v55, v56, v57, v58, v59;
            }

            v1 = v63;
            v47 = v62;
            v43 = v61;
            v48 = v60;
            v44 = v248;
            goto LABEL_5;
          }
        }
      }

      else
      {
        objc_opt_self();
        v76 = swift_dynamicCastObjCClass();
        if (v76)
        {
          v84 = v76;
          v1, v77, v78, v79, v80, v81, v82, v83;
          v85 = [v84 currentValue];

          if (v85)
          {
            v254 = v85;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820, &unk_1BE0EBFD0);
            v86 = swift_dynamicCast();
            v87 = v251;
            if (!v86)
            {
              v87 = 0;
            }

            v249 = v87;
            if (v86)
            {
              v1 = *(&v251 + 1);
            }

            else
            {
              v1 = 0;
            }
          }

          else
          {
            v249 = 0;
            v1 = 0;
          }

          goto LABEL_5;
        }

        objc_opt_self();
        v88 = swift_dynamicCastObjCClass();
        if (v88)
        {
          v89 = [v88 currentValue];
          if (v89)
          {
            v90 = v240;
            v91 = v89;
            sub_1BE04AEE4();

            v92 = v246;
            sub_1BD0DE53C(v246, &unk_1EBD39970, &unk_1BE0B9F80);
            v93 = v90;
            v94 = v244;
            (*v234)(v92, v93, v244);
            (v238)(v92, 0, 1, v94);
            goto LABEL_5;
          }
        }

        else
        {
          objc_opt_self();
          v95 = swift_dynamicCastObjCClass();
          if (v95)
          {
            v103 = v95;
            v245, v96, v97, v98, v99, v100, v101, v102;
            v104 = [v103 currentValue];

            if (v104)
            {
              v254 = v104;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820, &unk_1BE0EBFD0);
              v105 = swift_dynamicCast();
              v106 = v251;
              if (!v105)
              {
                v106 = 0;
              }

              v242 = v106;
              if (v105)
              {
                v107 = *(&v251 + 1);
              }

              else
              {
                v107 = 0;
              }

              v245 = v107;
            }

            else
            {
              v242 = 0;
              v245 = 0;
            }

            goto LABEL_5;
          }

          objc_opt_self();
          v115 = swift_dynamicCastObjCClass();
          if (v115)
          {
            v116 = [v115 currentValue];

            if (v116)
            {
              v254 = v116;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820, &unk_1BE0EBFD0);
              if (swift_dynamicCast())
              {
                v117 = v251;
                v118 = HIBYTE(*(&v251 + 1)) & 0xFLL;
                if ((*(&v251 + 1) & 0x2000000000000000) == 0)
                {
                  v118 = v251 & 0xFFFFFFFFFFFFLL;
                }

                if (v118)
                {
                  v241, v36, v37, v38, v39, v40, v41, v42;
                  v241 = (v117 >> 64);
                  v233 = v117;
                }

                else
                {
                  *(&v251 + 1), v36, v37, v38, v39, v40, v41, v42;
                }
              }
            }

            goto LABEL_5;
          }
        }
      }

LABEL_5:
      if (v45 == v44)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v44 = sub_1BE053704();
    v243 = v2;
    v244 = v1;
  }

  v242 = 0;
  v245 = 0;
  v249 = 0;
  v1 = 0;
  v233 = 0;
  v241 = 0;
  v247 = 0;
  v250 = 0;
LABEL_62:
  v43, v36, v37, v38, v39, v40, v41, v42;
  v119 = v235;
  v120 = v236;
  v251 = *(v236 + *(v235 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10, &qword_1BE0F8AF0);
  sub_1BE0516A4();
  v121 = v254;
  v122 = v237;
  if (v254)
  {
    v123 = *(v120 + *(v119 + 52));
    if (v123)
    {
      v124 = v250;
      if (v250)
      {
        v125 = v123;
      }

      else
      {
        v157 = v123;
        v158 = [v121 primaryAccountNumber];
        sub_1BE052434();
        v124 = v159;
      }

      v126 = v232;
      v160 = sub_1BE052404();
      v124, v161, v162, v163, v164, v165, v166, v167;
      [v121 setPrimaryAccountNumber_];

      if (v1)
      {
        v168 = sub_1BE052404();
        v1, v169, v170, v171, v172, v173, v174, v175;
      }

      else
      {
        v168 = 0;
      }

      v177 = v243;
      v176 = v244;
      v178 = v241;
      v179 = v245;
      [v121 setCardholderName_];

      sub_1BD0DE19C(v246, v126, &unk_1EBD39970, &unk_1BE0B9F80);
      if ((v177[6])(v126, 1, v176) == 1)
      {
        v180 = 0;
      }

      else
      {
        v180 = sub_1BE04AE64();
        (v177[1])(v126, v176);
      }

      [v121 setExpirationDate_];

      if (v179)
      {
        v181 = sub_1BE052404();
        v179, v182, v183, v184, v185, v186, v187, v188;
      }

      else
      {
        v181 = 0;
      }

      [v121 setSecurityCode_];

      if (v178)
      {
        v189 = sub_1BE052404();
        v178, v190, v191, v192, v193, v194, v195, v196;
        [v123 setCardNickname_];

        sub_1BD0DE53C(v246, &unk_1EBD39970, &unk_1BE0B9F80);
      }

      else
      {
        sub_1BD0DE53C(v246, &unk_1EBD39970, &unk_1BE0B9F80);
      }

      return 0;
    }
  }

  v127 = v250;
  if (!v250)
  {
    sub_1BD0DE53C(v246, &unk_1EBD39970, &unk_1BE0B9F80);
    v241, v136, v137, v138, v139, v140, v141, v142;
    v1, v143, v144, v145, v146, v147, v148, v149;
    v245, v150, v151, v152, v153, v154, v155, v156;
    return 0;
  }

  sub_1BD0DE19C(v246, v122, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v1)
  {
    v128 = sub_1BE052404();
    v1, v129, v130, v131, v132, v133, v134, v135;
  }

  else
  {
    v128 = 0;
  }

  v198 = sub_1BE052404();
  v127, v199, v200, v201, v202, v203, v204, v205;
  v207 = v243;
  v206 = v244;
  if ((v243[6])(v122, 1, v244) == 1)
  {
    v208 = 0;
  }

  else
  {
    v208 = sub_1BE04AE64();
    (v207[1])(v122, v206);
  }

  v209 = v241;
  v210 = v245;
  if (v245)
  {
    v211 = sub_1BE052404();
    v210, v212, v213, v214, v215, v216, v217, v218;
  }

  else
  {
    v211 = 0;
  }

  v219 = [objc_allocWithZone(MEMORY[0x1E69B8670]) initWithCardholderName:v128 pan:v198 expirationDate:v208 securityCode:v211 billingAddress:0];

  if (v209)
  {
    v220 = v209;
  }

  else
  {
    v220 = 0xE000000000000000;
  }

  v221 = v219;
  v222 = sub_1BE052404();
  v220, v223, v224, v225, v226, v227, v228, v229;
  v230 = [objc_opt_self() descriptorWithCardNickname:v222 credential:v221];

  sub_1BD0DE53C(v246, &unk_1EBD39970, &unk_1BE0B9F80);
  return v230;
}

uint64_t sub_1BD7C2604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v50 = a7;
  v51 = a8;
  v49 = a6;
  v46 = a3;
  v47 = a5;
  v48 = a9;
  v54 = sub_1BE051F54();
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v52 = sub_1BE052D54();
  sub_1BD7C2E04(a4, v19);
  v20 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v24 = v46;
  v23[4] = v46;
  sub_1BD7C2E68(v19, v23 + v20);
  v25 = v47;
  *(v23 + v21) = v47;
  v27 = v49;
  v26 = v50;
  *(v23 + v22) = v49;
  v28 = v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = v51;
  *v28 = v26;
  *(v28 + 1) = v29;
  v28[16] = v48;
  aBlock[4] = sub_1BD7C34BC;
  v59 = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_48_2;
  v30 = _Block_copy(aBlock);
  v31 = v59;
  v32 = a1;
  sub_1BD0D44B8(a2, v24);
  v33 = v25;
  v34 = v27;
  sub_1BE048964();
  v31, v35, v36, v37, v38, v39, v40, v41;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD7B8DE0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  v43 = v53;
  v42 = v54;
  sub_1BE053664();
  v44 = v52;
  MEMORY[0x1BFB3FDF0](0, v15, v43, v30);
  _Block_release(v30);

  (*(v57 + 8))(v43, v42);
  return (*(v55 + 8))(v15, v56);
}

void sub_1BD7C2A14(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ([a1 savableFields] == 7)
  {
    if (a2)
    {
      sub_1BE048964();
      a2(0);
      sub_1BD1107D8(a2, a3);
    }

    v17 = a4 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 20);
    if (*v17)
    {
      v18 = *(*v17 + 16);
      v19 = swift_allocObject();
      *(v19 + 16) = a7;
      *(v19 + 24) = a8;
      v60 = sub_1BD267328;
      v61 = v19;
      v56 = MEMORY[0x1E69E9820];
      v57 = 1107296256;
      v58 = sub_1BD03E30C;
      v59 = &block_descriptor_60_2;
      v20 = _Block_copy(&v56);
      v21 = v61;
      v22 = v18;
      sub_1BE048964();
      v21, v23, v24, v25, v26, v27, v28, v29;
      [v22 insertFPANCardWithDescriptor:a5 credential:a6 completion:v20];
      _Block_release(v20);

      return;
    }

    goto LABEL_19;
  }

  if (a9)
  {
    if (a2)
    {
      sub_1BE048964();
      a2(0);
      sub_1BD1107D8(a2, a3);
    }

    v30 = [a1 matchedCard];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 identifier];
    }

    else
    {
      v32 = [a5 identifier];
    }

    sub_1BE052434();
    v34 = v33;

    v35 = sub_1BE052404();
    v34, v36, v37, v38, v39, v40, v41, v42;
    [a5 setIdentifier_];

    v43 = a4 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 20);
    if (!*v43)
    {
LABEL_19:
      type metadata accessor for DescriptorsModel(0);
      sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
      sub_1BE04EEB4();
      __break(1u);
      return;
    }

    v44 = *(*v43 + 16);
    v45 = swift_allocObject();
    *(v45 + 16) = a7;
    *(v45 + 24) = a8;
    v60 = sub_1BD214190;
    v61 = v45;
    v56 = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_1BD03E30C;
    v59 = &block_descriptor_54_1;
    v46 = _Block_copy(&v56);
    v47 = v61;
    sub_1BE048964();
    v48 = v44;
    v47, v49, v50, v51, v52, v53, v54, v55;
    [v48 updateFPANCardWithDescriptor:a5 credential:a6 completion:v46];
    _Block_release(v46);
  }

  else if (a2)
  {
    sub_1BE048964();
    a2(1);

    sub_1BD1107D8(a2, a3);
  }
}

uint64_t sub_1BD7C2E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7C2E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7C2ECC()
{
  v2 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD7BAD6C(v0 + v3);
}

unint64_t sub_1BD7C2FA0()
{
  result = qword_1EBD53AF8;
  if (!qword_1EBD53AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53AC0, &qword_1BE0F8AB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53AB0, &qword_1BE0F8AA0);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53AA8, &qword_1BE0F8A98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53AA0, &qword_1BE0F8A90);
    sub_1BD0DE4F4(&qword_1EBD53AE0, &qword_1EBD53AA0, &qword_1BE0F8A90, MEMORY[0x1E697CCF0]);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD7B8DE0(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD53B00, &qword_1EBD53AE8, &qword_1BE0F8AE0, MEMORY[0x1E697C520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53AF8);
  }

  return result;
}

uint64_t objectdestroyTm_93()
{
  v1 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
  }

  else
  {
    *v3, v4, v5, v6, v7, v8, v9, v10;
  }

  *(v3 + v1[5]), v12, v13, v14, v15, v16, v17, v18;
  *(v3 + v1[6]), v19, v20, v21, v22, v23, v24, v25;
  sub_1BD0D45CC(*(v3 + v1[7]), *(v3 + v1[7] + 8), *(v3 + v1[7] + 16), v26, v27, v28, v29, v30);
  *(v3 + v1[8] + 8), v31, v32, v33, v34, v35, v36, v37;
  *(v3 + v1[9] + 8), v38, v39, v40, v41, v42, v43, v44;
  *(v3 + v1[10] + 8), v45, v46, v47, v48, v49, v50, v51;
  v52 = (v3 + v1[11]);

  v52[1], v53, v54, v55, v56, v57, v58, v59;
  *(v3 + v1[12] + 8), v60, v61, v62, v63, v64, v65, v66;

  return swift_deallocObject();
}

uint64_t sub_1BD7C33FC(void *a1)
{
  v3 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1BD7C2604(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1BD7C34BC()
{
  v1 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1BD7C2A14(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1BD7C3570@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = swift_allocObject();
  v5 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 32) = v3;
  *a1 = v5;
  *(a1 + 8) = 1;
  *(a1 + 16) = sub_1BD289278;
  *(a1 + 24) = v4;
  *(a1 + 32) = 1;
  v6 = v5;

  return sub_1BE048964();
}

void sub_1BD7C3600(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD7C3680(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD7C36F4(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD7C3774(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD7C37F0(uint64_t a1)
{
  v3 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD7C15B0(a1, v4);
}

uint64_t sub_1BD7C3860()
{
  v1 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD7C1950(v0 + v2, v3);
}

uint64_t sub_1BD7C3914(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD7C39C0()
{
  result = qword_1EBD53B88;
  if (!qword_1EBD53B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53B80, &qword_1BE0F8C70);
    sub_1BD7C3A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53B88);
  }

  return result;
}

unint64_t sub_1BD7C3A44()
{
  result = qword_1EBD53B90;
  if (!qword_1EBD53B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53B98, &qword_1BE0F8C78);
    sub_1BD7C3AFC();
    sub_1BD0DE4F4(&qword_1EBD53BB8, &qword_1EBD53BC0, &qword_1BE0F8C88, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53B90);
  }

  return result;
}

unint64_t sub_1BD7C3AFC()
{
  result = qword_1EBD53BA0;
  if (!qword_1EBD53BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53BA8, &qword_1BE0F8C80);
    sub_1BD7C3B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53BA0);
  }

  return result;
}

unint64_t sub_1BD7C3B80()
{
  result = qword_1EBD53BB0;
  if (!qword_1EBD53BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53BB0);
  }

  return result;
}

unint64_t sub_1BD7C3BE4()
{
  result = qword_1EBD53BE8;
  if (!qword_1EBD53BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53BE0, &qword_1BE0F8CB0);
    sub_1BD0DE4F4(&qword_1EBD53BF0, &qword_1EBD53BF8, &qword_1BE0F8CB8, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53BE8);
  }

  return result;
}

void sub_1BD7C3CE8(uint64_t a1)
{
  v3 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD7BF974(a1, v4);
}

uint64_t sub_1BD7C3D70(uint64_t a1)
{
  v4 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD7BF498(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_125Tm()
{
  v1 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
  }

  else
  {
    *v3, v4, v5, v6, v7, v8, v9, v10;
  }

  *(v3 + v1[5]), v12, v13, v14, v15, v16, v17, v18;
  *(v3 + v1[6]), v19, v20, v21, v22, v23, v24, v25;
  sub_1BD0D45CC(*(v3 + v1[7]), *(v3 + v1[7] + 8), *(v3 + v1[7] + 16), v26, v27, v28, v29, v30);
  *(v3 + v1[8] + 8), v31, v32, v33, v34, v35, v36, v37;
  *(v3 + v1[9] + 8), v38, v39, v40, v41, v42, v43, v44;
  *(v3 + v1[10] + 8), v45, v46, v47, v48, v49, v50, v51;
  v52 = (v3 + v1[11]);

  v52[1], v53, v54, v55, v56, v57, v58, v59;
  *(v3 + v1[12] + 8), v60, v61, v62, v63, v64, v65, v66;

  return swift_deallocObject();
}

uint64_t sub_1BD7C402C(uint64_t a1)
{
  v4 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD7BFB2C(a1, v6, v7, v1 + v5);
}

id sub_1BD7C415C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD7BE4BC(a1, v6, a2);
}

double sub_1BD7C41DC()
{
  v1 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1BD7BE5D8(v2, v3);
}

uint64_t type metadata accessor for RecurringPaymentMerchantDetailsView(uint64_t a1)
{
  result = qword_1EBD53C60;
  if (!qword_1EBD53C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD7C433C(uint64_t a1)
{
  _s8MerchantVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1463F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD7C43E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v3 = sub_1BE04F3D4();
  v139 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MerchantOriginIconImage(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C78, &qword_1BE0F8EE0);
  MEMORY[0x1EEE9AC00](v10);
  v143 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v138 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v144 = &v138 - v16;
  v17 = type metadata accessor for RecurringPaymentMerchantDetailsView(0);
  v18 = *(a1 + v17[5]);
  v19 = _s8MerchantVMa(0);
  sub_1BD129504(a1 + *(v19 + 20), &v9[*(v7 + 28)]);
  v21 = *a1;
  v20 = a1[1];
  *v9 = v18;
  v22 = &v9[*(v7 + 32)];
  v141 = v21;
  *v22 = v21;
  v22[1] = v20;
  v140 = v20;
  swift_bridgeObjectRetain_n();
  v23 = sub_1BE0501C4();
  v24 = a1 + v17[6];
  v25 = *v24;
  if (v24[8] == 1)
  {
    if (v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v26 = sub_1BE050174();
    v138 = v14;
    v27 = v5;
    v28 = v3;
    v29 = v26;
    sub_1BE04CF84();

    v3 = v28;
    v30 = v139;
    v5 = v27;
    v14 = v138;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v25, 0, v31, v32, v33, v34, v35, v36);
    (*(v30 + 8))(v5, v3);
    if (v152)
    {
      goto LABEL_7;
    }
  }

  v37 = a1 + v17[7];
  v38 = *v37;
  if (v37[8] != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v39 = v23;
    v40 = sub_1BE050174();
    sub_1BE04CF84();

    v23 = v39;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v38, 0, v41, v42, v43, v44, v45, v46);
    (*(v139 + 8))(v5, v3);
  }

LABEL_7:
  sub_1BE04E1F4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_1BD7C4B50(v9, v14);
  v55 = &v14[*(v10 + 36)];
  *v55 = v23;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  sub_1BD7C4BB4(v14, v144);
  v152 = v141;
  v153 = v140;
  sub_1BD0DDEBC();
  v56 = sub_1BE0506C4();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = sub_1BE0503D4();
  v64 = sub_1BE0505F4();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v63, v65, v67, v69, v71, v72, v73, v74;
  sub_1BD0DDF10(v56, v58, (v60 & 1), v75, v76, v77, v78, v79);
  v62, v80, v81, v82, v83, v84, v85, v86;
  sub_1BE050364();
  v87 = sub_1BE050544();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  sub_1BD0DDF10(v64, v66, (v68 & 1), v92, v94, v95, v96, v97);
  v70, v98, v99, v100, v101, v102, v103, v104;
  v105 = sub_1BE051224();
  v106 = sub_1BE050564();
  v108 = v107;
  LOBYTE(v64) = v109;
  v141 = v110;
  v105, v107, v109, v110, v111, v112, v113, v114;
  sub_1BD0DDF10(v87, v89, (v91 & 1), v115, v116, v117, v118, v119);
  v93, v120, v121, v122, v123, v124, v125, v126;
  KeyPath = swift_getKeyPath();
  v128 = swift_getKeyPath();
  LOBYTE(v64) = v64 & 1;
  LOBYTE(v152) = v64;
  LOBYTE(v147) = 0;
  v129 = v144;
  v130 = v143;
  sub_1BD0DE19C(v144, v143, &qword_1EBD53C78, &qword_1BE0F8EE0);
  v131 = v142;
  sub_1BD0DE19C(v130, v142, &qword_1EBD53C78, &qword_1BE0F8EE0);
  v132 = v131 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C80, &unk_1BE0F8F48) + 48);
  *&v147 = v106;
  v133 = v108;
  *(&v147 + 1) = v108;
  LOBYTE(v148) = v64;
  *(&v148 + 1) = *v146;
  DWORD1(v148) = *&v146[3];
  v134 = v141;
  *(&v148 + 1) = v141;
  *&v149 = KeyPath;
  BYTE8(v149) = 1;
  HIDWORD(v149) = *&v145[3];
  *(&v149 + 9) = *v145;
  *&v150 = v128;
  *(&v150 + 1) = 2;
  v151 = 0;
  *(v132 + 64) = 0;
  v135 = v148;
  *v132 = v147;
  *(v132 + 16) = v135;
  v136 = v150;
  *(v132 + 32) = v149;
  *(v132 + 48) = v136;
  sub_1BD0DE19C(&v147, &v152, &qword_1EBD391B8, &unk_1BE0CFC50);
  sub_1BD0DE53C(v129, &qword_1EBD53C78, &qword_1BE0F8EE0);
  v152 = v106;
  v153 = v133;
  v154 = v64;
  *v155 = *v146;
  *&v155[3] = *&v146[3];
  v156 = v134;
  v157 = KeyPath;
  v158 = 1;
  *v159 = *v145;
  *&v159[3] = *&v145[3];
  v160 = v128;
  v161 = 2;
  v162 = 0;
  sub_1BD0DE53C(&v152, &qword_1EBD391B8, &unk_1BE0CFC50);
  return sub_1BD0DE53C(v130, &qword_1EBD53C78, &qword_1BE0F8EE0);
}

uint64_t sub_1BD7C4AFC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C70, &qword_1BE0F8ED8);
  return sub_1BD7C43E4(v2, a2 + *(v4 + 44));
}

uint64_t sub_1BD7C4B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantOriginIconImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7C4BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C78, &qword_1BE0F8EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7C4C24()
{
  result = qword_1EBD53C88;
  if (!qword_1EBD53C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53C90, &unk_1BE0F8F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53C88);
  }

  return result;
}

uint64_t sub_1BD7C4C88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1BE04AF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = sub_1BE04B2F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() currentCalendar];
  sub_1BE04B1F4();

  v17 = [v1 startDate];
  if (v17)
  {
    v18 = v17;
    sub_1BE04AEE4();

    v19 = *(v6 + 32);
    v19(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v19(v11, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_1BE04AEF4();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_1BD15D69C(v4);
    }
  }

  v20 = sub_1BE04B164();
  (*(v6 + 8))(v11, v5);
  (*(v13 + 8))(v15, v12);
  return v20 & 1;
}

id sub_1BD7C4F84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  v8 = [v2 amount];
  v9 = [objc_opt_self() zero];
  v10 = sub_1BE053074();

  if ((v10 & 1) == 0)
  {
    v14 = [v3 amount];
    v15 = sub_1BE052404();
    v16 = PKFormattedCurrencyStringFromNumber();

    if (!v16)
    {
      return 0;
    }

    v13 = sub_1BE052434();

    return v13;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69B8068], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();

    (*(v5 + 8))(v7, v4);
    return v13;
  }

  __break(1u);
  return result;
}

id sub_1BD7C51C0()
{
  v0 = sub_1BE04BD74();
  v105 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v101 = &v84 - v4;
  v88 = sub_1BE04AC64();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B2D4();
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04ABD4();
  v96 = *(v8 - 8);
  v97 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BE04ACA4();
  v92 = *(v94 - 1);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BE04AD84();
  v11 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v89 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v102 = &v84 - v19;
  v20 = sub_1BE04AF64();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  v107 = sub_1BE04B2F4();
  v109 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v90 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  v31 = [objc_opt_self() currentCalendar];
  sub_1BE04B1F4();

  v32 = [v103 startDate];
  v108 = v20;
  v110 = v21;
  v93 = v23;
  if (v32)
  {
    v33 = v32;
    sub_1BE04AEE4();

    v34 = v23;
    v103 = v2;
    v35 = v0;
    v36 = v11;
    v37 = v30;
    v38 = v17;
    v39 = *(v21 + 32);
    v40 = v102;
    v39(v102, v34, v20);
    (*(v21 + 56))(v40, 0, 1, v20);
    v39(v26, v40, v20);
    v17 = v38;
    v30 = v37;
    v11 = v36;
    v0 = v35;
    v2 = v103;
  }

  else
  {
    v41 = v102;
    (*(v21 + 56))(v102, 1, 1, v20);
    sub_1BE04AEF4();
    if ((*(v21 + 48))(v41, 1, v20) != 1)
    {
      sub_1BD15D69C(v41);
    }
  }

  v42 = sub_1BE04B164();
  v43 = v106;
  if ((v42 & 1) == 0)
  {
    v84 = v30;
    v85 = v0;
    v48 = v89;
    MEMORY[0x1BFB376E0]();
    v49 = v91;
    sub_1BE04AC24();
    sub_1BE04ABB4();
    (*(v92 + 8))(v49, v94);
    v50 = *(v11 + 8);
    v51 = v104;
    v50(v48, v104);
    v52 = v95;
    sub_1BE04ABC4();
    sub_1BE04AB64();
    v96[1](v52, v97);
    v102 = v50;
    v103 = (v11 + 8);
    v50(v43, v51);
    v53 = v90;
    sub_1BE04B2A4();
    v54 = *MEMORY[0x1E6969A68];
    v56 = v98;
    v55 = v99;
    v92 = v11;
    v57 = v99[13];
    v58 = v100;
    v57(v98, v54, v100);
    v97 = v26;
    v95 = sub_1BE04B2E4();
    v96 = v17;
    v94 = v55[1];
    (v94)(v56, v58);
    v59 = v109 + 8;
    v60 = *(v109 + 8);
    v61 = v107;
    v60(v53, v107);
    sub_1BE04B2A4();
    v57(v56, v54, v58);
    v62 = v93;
    sub_1BE04AEF4();
    v63 = sub_1BE04B2E4();
    v64 = *(v110 + 8);
    v110 += 8;
    v99 = v64;
    (v64)(v62, v108);
    (v94)(v56, v58);
    v65 = v96;
    v66 = v104;
    v100 = v60;
    v109 = v59;
    v60(v53, v61);
    if (v63 < v95)
    {
      v67 = v86;
      sub_1BE04AC44();
      v68 = v106;
      sub_1BE04ABA4();
      (*(v87 + 8))(v67, v88);
      (v102)(v65, v66);
      (*(v92 + 32))(v65, v68, v66);
    }

    sub_1BD7C6EE0();
    v69 = v97;
    sub_1BE04AF44();
    v70 = v111;
    v71 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v72 = v66;
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1BE0B69E0;
    *(v73 + 56) = MEMORY[0x1E69E6158];
    *(v73 + 64) = sub_1BD110550();
    *(v73 + 32) = v70;
    *(v73 + 40) = v71;
    v74 = v105;
    v75 = v101;
    v76 = v85;
    (*(v105 + 104))(v101, *MEMORY[0x1E69B8068], v85);
    v47 = sub_1BE04B714();
    v73, v77, v78, v79, v80, v81, v82, v83;
    (*(v74 + 8))(v75, v76);
    (v102)(v65, v72);
    (v99)(v69, v108);
    v100(v84, v107);
    return v47;
  }

  v44 = v105;
  (*(v105 + 104))(v2, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v46 = result;
    v47 = sub_1BE04B6F4();

    (*(v44 + 8))(v2, v0);
    (*(v110 + 8))(v26, v108);
    (*(v109 + 8))(v30, v107);
    return v47;
  }

  __break(1u);
  return result;
}

id sub_1BD7C5CE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v97 = a1;
  v98 = a2;
  v4 = sub_1BE04BD74();
  v99 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v92 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v92 - v10;
  v12 = sub_1BE04AF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v92 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v92 - v24;
  v26 = [v3 endDate];
  v95 = v26;
  if (v26)
  {
    v93 = v6;
    v94 = v4;
    v27 = v26;
    sub_1BE04AEE4();

    v28 = *(v13 + 32);
    v28(v25, v21, v12);
    v29 = [v3 startDate];
    if (v29)
    {
      v30 = v29;
      sub_1BE04AEE4();

      v28(v11, v15, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      v28(v18, v11, v12);
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
      sub_1BE04AEF4();
      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        sub_1BD15D69C(v11);
      }
    }

    v35 = sub_1BE04AE64();
    v36 = *(v13 + 8);
    v36(v18, v12);
    v37 = sub_1BE04AE64();
    [v3 intervalUnit];
    v34 = PKDateRangeNumberOfIntervalsForUnit();

    [v3 intervalUnit];
    v38 = PKCalendarUnitIntervalString();
    v4 = v94;
    if (v38)
    {
      v39 = v38;
      v32 = sub_1BE052434();
      v33 = v40;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v36(v25, v12);
    v31 = v34;
    v6 = v93;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  v41 = [v3 amount];
  v42 = [objc_opt_self() zero];
  v43 = sub_1BE053074();

  if ((v43 & 1) == 0)
  {
    v33, v44, v45, v46, v47, v48, v49, v50;
    v55 = sub_1BD7C4F84(v97, v98);
    v64 = v63;
    v65 = sub_1BD7C641C(1);
    v73 = v66;
    if (v64)
    {
      if (v66)
      {
        v74 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v75 = swift_allocObject();
        v76 = MEMORY[0x1E69E6530];
        *(v75 + 16) = xmmword_1BE0B98D0;
        v77 = MEMORY[0x1E69E65A8];
        *(v75 + 56) = v76;
        *(v75 + 64) = v77;
        *(v75 + 32) = v34;
        v78 = MEMORY[0x1E69E6158];
        *(v75 + 96) = MEMORY[0x1E69E6158];
        v79 = sub_1BD110550();
        *(v75 + 72) = v55;
        *(v75 + 80) = v64;
        *(v75 + 136) = v78;
        *(v75 + 144) = v79;
        *(v75 + 104) = v79;
        *(v75 + 112) = v74;
        *(v75 + 120) = v73;
        v80 = v99;
        v81 = v96;
        (*(v99 + 104))(v96, *MEMORY[0x1E69B8068], v4);
        v55 = sub_1BE04B714();
        v75, v82, v83, v84, v85, v86, v87, v88;
        (*(v80 + 8))(v81, v4);
      }
    }

    else
    {
      v66, v66, v67, v68, v69, v70, v71, v72;
      return 0;
    }

    return v55;
  }

  if (v33)
  {
    if (v95)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1BE0B6CA0;
      v52 = MEMORY[0x1E69E65A8];
      *(v51 + 56) = MEMORY[0x1E69E6530];
      *(v51 + 64) = v52;
      *(v51 + 32) = v31;
      *(v51 + 96) = MEMORY[0x1E69E6158];
      *(v51 + 104) = sub_1BD110550();
      *(v51 + 72) = v32;
      *(v51 + 80) = v33;
      v53 = v99;
      v54 = v96;
      (*(v99 + 104))(v96, *MEMORY[0x1E69B8068], v4);
      v55 = sub_1BE04B714();
      v51, v56, v57, v58, v59, v60, v61, v62;
      (*(v53 + 8))(v54, v4);
      return v55;
    }

    v33, v44, v45, v46, v47, v48, v49, v50;
  }

  v89 = v99;
  (*(v99 + 104))(v6, *MEMORY[0x1E69B8068], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v91 = result;
    v55 = sub_1BE04B6F4();

    (*(v89 + 8))(v6, v4);
    return v55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7C641C(int a1)
{
  v2 = v1;
  v131 = a1;
  v3 = sub_1BE04BD74();
  v133 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v132 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v126 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v121 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v121 - v11;
  v13 = sub_1BE04AF64();
  v137 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v123 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v125 = &v121 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v121 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v136 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v121 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v121 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v138 = &v121 - v29;
  v30 = [v1 amount];
  v31 = [objc_opt_self() zero];
  sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
  v32 = sub_1BE053074();

  if ((v32 & 1) != 0 || ([v2 intervalCount], objc_msgSend(v2, sel_intervalUnit), (v33 = PKLocalizedIntervalTermString()) == 0))
  {
    v35 = 0;
    v37 = 0;
  }

  else
  {
    v34 = v33;
    v35 = sub_1BE052434();
    v37 = v36;
  }

  v38 = [v2 endDate];
  if (v38)
  {
    v129 = v9;
    v122 = v3;
    v39 = v38;
    sub_1BE04AEE4();

    v40 = v137;
    v41 = v26;
    v42 = *(v137 + 32);
    v42(v138, v41, v13);
    v43 = [v2 startDate];
    v124 = v42;
    v121 = v35;
    v130 = v37;
    if (v43)
    {
      v44 = v136;
      v45 = v43;
      sub_1BE04AEE4();

      v42(v12, v44, v13);
      v134 = *(v40 + 56);
      v134(v12, 0, 1, v13);
      v42(v23, v12, v13);
    }

    else
    {
      v134 = *(v40 + 56);
      v134(v12, 1, 1, v13);
      sub_1BE04AEF4();
      if ((*(v40 + 48))(v12, 1, v13) != 1)
      {
        sub_1BD15D69C(v12);
      }
    }

    v46 = sub_1BE04AE64();
    v47 = *(v40 + 8);
    v47(v23, v13);
    v48 = sub_1BE04AE64();
    [v2 intervalUnit];
    PKDateRangeNumberOfIntervalsForUnit();

    [v2 intervalUnit];
    v49 = PKCalendarUnitIntervalString();
    if (v49)
    {
      v50 = v49;
      v127 = sub_1BE052434();
      v52 = v51;
    }

    else
    {
      v127 = 0;
      v52 = 0;
    }

    v53 = v135;
    v135 = v47;
    v54 = [v2 startDate];
    v128 = v52;
    if (v54)
    {
      v55 = v136;
      v56 = v54;
      sub_1BE04AEE4();

      v57 = v129;
      v58 = v55;
      v59 = v124;
      v124(v129, v58, v13);
      v134(v57, 0, 1, v13);
      v59(v53, v57, v13);
    }

    else
    {
      v60 = v137;
      v61 = v129;
      v134(v129, 1, 1, v13);
      sub_1BE04AEF4();
      if ((*(v60 + 48))(v61, 1, v13) != 1)
      {
        sub_1BD15D69C(v61);
      }
    }

    v62 = sub_1BE04AE64();
    v63 = v135;
    (v135)(v53, v13);
    v64 = v138;
    v65 = sub_1BE04AE64();
    [v2 intervalCount];
    [v2 intervalUnit];
    v66 = PKDateRangeContainsMultipleIntervals();

    v63(v64, v13);
    if (v66)
    {
      v74 = v130;
      v75 = v128;
      if (v130)
      {
        if (!v128)
        {
          return v121;
        }

        v76 = [v2 startDate];
        if (v76)
        {
          v77 = v136;
          v78 = v76;
          sub_1BE04AEE4();

          v79 = v126;
          v80 = v124;
          v124(v126, v77, v13);
          v134(v79, 0, 1, v13);
          v81 = v125;
          v80(v125, v79, v13);
          v82 = v122;
          v83 = v135;
        }

        else
        {
          v96 = v137;
          v97 = v126;
          v134(v126, 1, 1, v13);
          v81 = v125;
          sub_1BE04AEF4();
          v98 = (*(v96 + 48))(v97, 1, v13);
          v82 = v122;
          v83 = v135;
          if (v98 != 1)
          {
            sub_1BD15D69C(v97);
          }
        }

        v99 = v74;
        v100 = sub_1BE04AE64();
        v83(v81, v13);
        v101 = [v2 endDate];
        if (v101)
        {
          v102 = v123;
          v103 = v101;
          sub_1BE04AEE4();

          v104 = sub_1BE04AE64();
          v83(v102, v13);
        }

        else
        {
          v104 = 0;
        }

        [v2 intervalUnit];
        v105 = PKDateRangeNumberOfIntervalsForUnit();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1BE0B98D0;
        v107 = MEMORY[0x1E69E65A8];
        *(v106 + 56) = MEMORY[0x1E69E6530];
        *(v106 + 64) = v107;
        *(v106 + 32) = v105;
        v108 = MEMORY[0x1E69E6158];
        *(v106 + 96) = MEMORY[0x1E69E6158];
        v109 = sub_1BD110550();
        *(v106 + 72) = v121;
        *(v106 + 80) = v99;
        *(v106 + 136) = v108;
        *(v106 + 144) = v109;
        v110 = v127;
        *(v106 + 104) = v109;
        *(v106 + 112) = v110;
        *(v106 + 120) = v75;
        v112 = v132;
        v111 = v133;
        (*(v133 + 104))(v132, *MEMORY[0x1E69B8068], v82);
        v35 = sub_1BE04B714();
        v106, v113, v114, v115, v116, v117, v118, v119;
        (*(v111 + 8))(v112, v82);
        return v35;
      }
    }

    else
    {
      v130, v67, v68, v69, v70, v71, v72, v73;
      v75 = v128;
    }

    v84 = v127;
    if (v75)
    {
      v35 = v127;
    }

    else
    {
      v35 = 0;
    }

    if (v75 && (v131 & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1BE0B69E0;
      *(v85 + 56) = MEMORY[0x1E69E6158];
      *(v85 + 64) = sub_1BD110550();
      *(v85 + 32) = v84;
      *(v85 + 40) = v75;
      v87 = v132;
      v86 = v133;
      v88 = v122;
      (*(v133 + 104))(v132, *MEMORY[0x1E69B8068], v122);
      v35 = sub_1BE04B714();
      v85, v89, v90, v91, v92, v93, v94, v95;
      (*(v86 + 8))(v87, v88);
    }
  }

  else if (!v37)
  {
    return 0;
  }

  return v35;
}

unint64_t sub_1BD7C6EE0()
{
  result = qword_1EBD4E940;
  if (!qword_1EBD4E940)
  {
    sub_1BE04AD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E940);
  }

  return result;
}

void static _PKDistributedAppLauncher.launchApp(distributorBundleID:itemID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_1BE0528D4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a5;
  sub_1BE048C84();
  sub_1BD0D44B8(a4, a5);
  v15 = sub_1BD122C00(0, 0, v12, &unk_1BE0F8F70, v14);
  v15, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_1BD7C7078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v12 = sub_1BE04D214();
  v8[4] = v12;
  v8[5] = *(v12 - 8);
  v8[6] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_1BD7C7190;

  return MEMORY[0x1EEDCCC68](a4, a5, a6, 0, 1);
}

uint64_t sub_1BD7C7190()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1BD7C731C;
  }

  else
  {
    v2 = sub_1BD7C72A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD7C72A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(1);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD7C731C(double a1)
{
  v2 = v1[8];
  sub_1BE04D0F4();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v4, v5, "Failed to launch app with error: %@", v7, 0xCu);
    sub_1BD1E236C(v8);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  v12 = v1[5];
  v11 = v1[6];
  v13 = v1[4];
  v14 = v1[2];

  (*(v12 + 8))(v11, v13);
  v15 = v1[8];
  if (v14)
  {
    (v1[2])(0);
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_1BD7C74A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD7C7078(a1, v4, v5, v6, v7, v8, v9, v10);
}

id _PKDistributedAppLauncher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _PKDistributedAppLauncher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PKDistributedAppLauncher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _PKDistributedAppLauncher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PKDistributedAppLauncher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroyTm_94()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  if (*(v0 + 56))
  {
    *(v0 + 64), v8, v9, v10, v11, v12, v13, v14;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD7C7844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD7C7078(a1, v4, v5, v6, v7, v8, v9, v10);
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD7C7944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD7C798C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1BD7C7A0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CA0, &qword_1BE0F9108);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  sub_1BD7C7CA4(&v19[-v8]);
  v10 = sub_1BE04F7C4();
  v20 = 1;
  sub_1BD7C86F8(a1, &v29);
  v23 = *&v30[16];
  v24[0] = *&v30[32];
  *(v24 + 10) = *&v30[42];
  v21 = v29;
  v22 = *v30;
  v25[2] = *&v30[16];
  v26[0] = *&v30[32];
  *(v26 + 10) = *&v30[42];
  v25[0] = v29;
  v25[1] = *v30;
  sub_1BD0DE19C(&v21, v27, &qword_1EBD53CA8, &qword_1BE0F9110);
  sub_1BD0DE53C(v25, &qword_1EBD53CA8, &qword_1BE0F9110);
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[55] = v24[0];
  *&v19[65] = *(v24 + 10);
  *&v19[7] = v21;
  v11 = v20;
  sub_1BD0DE19C(v9, v6, &qword_1EBD53CA0, &qword_1BE0F9108);
  sub_1BD0DE19C(v6, a2, &qword_1EBD53CA0, &qword_1BE0F9108);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CB0, &qword_1BE0F9118) + 48);
  v27[0] = v10;
  v27[1] = 0;
  v28[0] = v11;
  *&v28[1] = *v19;
  *&v28[17] = *&v19[16];
  *&v28[33] = *&v19[32];
  v28[81] = v19[80];
  *&v28[65] = *&v19[64];
  *&v28[49] = *&v19[48];
  v13 = *v28;
  *v12 = v10;
  *(v12 + 16) = v13;
  v14 = *&v28[16];
  v15 = *&v28[32];
  v16 = *&v28[48];
  v17 = *&v28[64];
  *(v12 + 96) = *&v28[80];
  *(v12 + 64) = v16;
  *(v12 + 80) = v17;
  *(v12 + 32) = v14;
  *(v12 + 48) = v15;
  sub_1BD0DE19C(v27, &v29, &qword_1EBD53CB8, &qword_1BE0F9120);
  sub_1BD0DE53C(v9, &qword_1EBD53CA0, &qword_1BE0F9108);
  *&v30[33] = *&v19[32];
  *&v30[49] = *&v19[48];
  *&v30[65] = *&v19[64];
  *&v30[1] = *v19;
  v29 = v10;
  v30[0] = v11;
  v30[81] = v19[80];
  *&v30[17] = *&v19[16];
  sub_1BD0DE53C(&v29, &qword_1EBD53CB8, &qword_1BE0F9120);
  return sub_1BD0DE53C(v6, &qword_1EBD53CA0, &qword_1BE0F9108);
}

uint64_t sub_1BD7C7CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CC0, &qword_1BE0F9128);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v63 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CC8, &qword_1BE0F9130);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v63 - v4;
  v65 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CD0, &qword_1BE0F9138);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v69 = &v63 - v6;
  v7 = sub_1BE051584();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CD8, &unk_1BE0F9140);
  MEMORY[0x1EEE9AC00](v68);
  v12 = &v63 - v11;
  v64 = sub_1BE04F3D4();
  v63 = *(v64 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v64);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[8];
  if (!v16)
  {
    v87 = *(v2 + 8);
    v86 = *v2;
    if (v87 != 1)
    {
      sub_1BE048964();
      sub_1BE052C44();
      v17 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v86, &qword_1EBD4E168, &qword_1BE0EB0F0);
      (*(v63 + 8))(v15, v64);
    }

    if (!PKMapsIconForMerchant())
    {
      return (*(v73 + 56))(v75, 1, 1, v74);
    }

    v16 = sub_1BE051544();
  }

  (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7, v13);
  sub_1BE048964();
  v18 = sub_1BE0515E4();
  (*(v8 + 8))(v10, v7);
  v19 = sub_1BE051D74();
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  LOBYTE(v84) = 1;
  v76 = v18;
  LOWORD(v77) = 1;
  *(&v77 + 1) = v19;
  *&v78 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CE0, &qword_1BE0F9150);
  sub_1BD7C897C();
  sub_1BE050A24();
  v82[3] = v79;
  v82[4] = v80;
  v83 = v81;
  v82[0] = v76;
  v82[1] = v77;
  v82[2] = v78;
  sub_1BD0DE53C(v82, &qword_1EBD53CE0, &qword_1BE0F9150);
  if (v2[9])
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:54.0 scale:{54.0, 1.0}];
    [v20 continuousCornerRadius];
    v22 = v21;

    v23 = *(v65 + 20);
    v24 = *MEMORY[0x1E697F468];
    v25 = sub_1BE04F684();
    v26 = v66;
    (*(*(v25 - 8) + 104))(&v66[v23], v24, v25);
    *v26 = v22;
    v26[1] = v22;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53D20, &qword_1BE0F9170);
    v28 = v67;
    sub_1BD1E4B10(v26, &v67[*(v27 + 36)]);
    sub_1BD0DE19C(v12, v28, &qword_1EBD53CD8, &unk_1BE0F9140);
    v29 = [objc_opt_self() systemGrayColor];
    v30 = sub_1BE0511C4();
    v84 = v2[2];
    v85 = *(v2 + 24);
    if (v85 != 1)
    {
      sub_1BE048964();
      sub_1BE052C44();
      v39 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v84, &qword_1EBD4E168, &qword_1BE0EB0F0);
      (*(v63 + 8))(v15, v64);
    }

    v31 = v69;
    sub_1BE04E3F4();
    v40 = v28 + *(v71 + 36);
    sub_1BD1E4B10(v26, v40);
    v41 = *&v76 * 0.5;
    v42 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B890, &qword_1BE0E3B90) + 68);
    sub_1BD1E4B10(v26, v42);
    *(v42 + *(sub_1BE04EDD4() + 20)) = v41;
    v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8A8, &qword_1BE0E3BB0) + 36);
    v44 = v77;
    *v43 = v76;
    *(v43 + 16) = v44;
    *(v43 + 32) = v78;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8B0, &qword_1BE0E3BB8);
    *(v42 + *(v45 + 52)) = v30;
    *(v42 + *(v45 + 56)) = 256;
    v46 = sub_1BE051CD4();
    v48 = v47;
    v49 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8B8, &qword_1BE0E3BC0) + 36));
    *v49 = v46;
    v49[1] = v48;
    v50 = sub_1BE051CD4();
    v52 = v51;
    v53 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8C8, &unk_1BE0E3BD0) + 36));
    *v53 = v50;
    v53[1] = v52;
    sub_1BD0DE19C(v28, v72, &qword_1EBD53CC8, &qword_1BE0F9130);
    swift_storeEnumTagMultiPayload();
    sub_1BD7C8AC0();
    sub_1BD7C8C30();
    sub_1BE04F9A4();
    v16, v54, v55, v56, v57, v58, v59, v60;
    sub_1BD0DE53C(v28, &qword_1EBD53CC8, &qword_1BE0F9130);
    sub_1BD1E4B74(v26);
  }

  else
  {
    sub_1BD0DE19C(v12, v72, &qword_1EBD53CD8, &unk_1BE0F9140);
    swift_storeEnumTagMultiPayload();
    sub_1BD7C8AC0();
    sub_1BD7C8C30();
    v31 = v69;
    sub_1BE04F9A4();
    v16, v32, v33, v34, v35, v36, v37, v38;
  }

  sub_1BD0DE53C(v12, &qword_1EBD53CD8, &unk_1BE0F9140);
  v61 = v75;
  sub_1BD0B663C(v31, v75);
  return (*(v73 + 56))(v61, 0, 1, v74);
}

void sub_1BD7C86F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v5 = sub_1BE0506C4();
  v7 = v6;
  v9 = v8;
  if (a1[7])
  {
    v58 = v4;
    sub_1BE048C84();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v59 = v7;
    v14 = v13;
    v16 = v15;
    sub_1BE04FC94();
    v17 = sub_1BE050574();
    v19 = v18;
    v60 = v5;
    v20 = v9;
    v22 = v21;
    v24 = v23;
    v25 = (v14 & 1);
    v7 = v59;
    sub_1BD0DDF10(v10, v12, v25, v23, v26, v27, v28, v29);
    v16, v30, v31, v32, v33, v34, v35, v36;
    v37 = v22 & 1;
    v9 = v20;
    v5 = v60;
    sub_1BD0D7F18(v17, v19, v37);
    sub_1BE048C84();
    v4 = v58;
    v38 = 256;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v37 = 0;
    v24 = 0;
    v38 = 0;
  }

  v39 = (v4 & 1);
  v61 = v4 & 1;
  sub_1BD0D7F18(v5, v7, v4 & 1);
  sub_1BE048C84();
  sub_1BD1969AC(v17, v19, v37, v24);
  sub_1BD1969F0(v17, v19, v37, v24, v38, v40, v41, v42);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v61;
  *(a2 + 24) = v9;
  *(a2 + 32) = 256;
  *(a2 + 40) = v17;
  *(a2 + 48) = v19;
  *(a2 + 56) = v37;
  *(a2 + 64) = v24;
  *(a2 + 72) = v38;
  sub_1BD1969F0(v17, v19, v37, v24, v38, v43, v44, v45);
  sub_1BD0DDF10(v5, v7, v39, v46, v47, v48, v49, v50);
  v9, v51, v52, v53, v54, v55, v56, v57;
}

uint64_t sub_1BD7C8908@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v8[2] = v2[2];
  v9[0] = v4;
  *(v9 + 9) = *(v2 + 57);
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C98, &qword_1BE0F9100);
  return sub_1BD7C7A0C(v8, a2 + *(v6 + 44));
}

unint64_t sub_1BD7C897C()
{
  result = qword_1EBD53CE8;
  if (!qword_1EBD53CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53CE0, &qword_1BE0F9150);
    sub_1BD7C8A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53CE8);
  }

  return result;
}

unint64_t sub_1BD7C8A08()
{
  result = qword_1EBD53CF0;
  if (!qword_1EBD53CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53CF8, &unk_1BE0F9158);
    sub_1BD223C50();
    sub_1BD0DE4F4(&qword_1EBD53D00, &qword_1EBD53D08, &qword_1BE0F9168, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53CF0);
  }

  return result;
}

unint64_t sub_1BD7C8AC0()
{
  result = qword_1EBD53D10;
  if (!qword_1EBD53D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53CC8, &qword_1BE0F9130);
    sub_1BD7C8B78();
    sub_1BD0DE4F4(&qword_1EBD4B8E8, &qword_1EBD4B8C8, &unk_1BE0E3BD0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53D10);
  }

  return result;
}

unint64_t sub_1BD7C8B78()
{
  result = qword_1EBD53D18;
  if (!qword_1EBD53D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53D20, &qword_1BE0F9170);
    sub_1BD7C8C30();
    sub_1BD0DE4F4(&qword_1EBD53D30, &qword_1EBD53D38, &unk_1BE0F9178, MEMORY[0x1E697DDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53D18);
  }

  return result;
}

unint64_t sub_1BD7C8C30()
{
  result = qword_1EBD53D28;
  if (!qword_1EBD53D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53CD8, &unk_1BE0F9140);
    sub_1BD7C897C();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53D28);
  }

  return result;
}

void sub_1BD7C8CC4(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1BD238A58(319, &qword_1EBD502A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD7C8DE4(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(v6 - 8) + 64) + 7;
  if (v16 < a2)
  {
    v19 = ((((v18 + ((v14 + v15 + (v17 & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 9;
    v20 = (a2 - v16 + 255) >> 8;
    if (v19 <= 3)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *&a1[v19];
        if (*&a1[v19])
        {
          goto LABEL_25;
        }
      }

      else
      {
        v24 = *&a1[v19];
        if (v24)
        {
          goto LABEL_25;
        }
      }
    }

    else if (v23)
    {
      v24 = a1[v19];
      if (a1[v19])
      {
LABEL_25:
        v25 = (v24 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v26 = *a1;
        }

        else
        {
          v25 = 0;
          v26 = *a1;
        }

        v33 = v16 + (v26 | v25);
        return (v33 + 1);
      }
    }
  }

  if (v7 == v16)
  {
    v27 = *(v5 + 48);

    return v27(a1, v7);
  }

  v29 = &a1[v17] & ~v13;
  if (v9 == v16)
  {
    v30 = *(v8 + 48);

    return v30(v29);
  }

  v31 = (v29 + v14 + v15) & ~v15;
  if (v12 != v16)
  {
    v34 = *(((v18 + v31) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v34 >= 2)
    {
      v33 = (v34 + 2147483646) & 0x7FFFFFFF;
      return (v33 + 1);
    }

    return 0;
  }

  v32 = *(v11 + 48);

  return v32(v31, v12, v6);
}

void sub_1BD7C90AC(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = a4[3];
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(a4[4] - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v9 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (v13 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = *(v12 + 84);
  }

  if (v19 <= 0xFE)
  {
    v19 = 254;
  }

  v20 = v18 + 7;
  v21 = ((((v18 + 7 + ((v16 + v17 + ((v14 + v15) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 >= a3)
  {
    v25 = 0;
    if (v19 >= a2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = ~v19 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_32:
        if (v25 == 2)
        {
          *&a1[v21] = v27;
        }

        else
        {
          *&a1[v21] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v25)
    {
      a1[v21] = v27;
    }

    return;
  }

  v22 = (a3 - v19 + 255) >> 8;
  if (v21 <= 3)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a2)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
  }

  else if (v25)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 != v19)
  {
    v29 = &a1[v14 + v15] & ~v15;
    if (v10 == v19)
    {
      v30 = *(v9 + 56);
    }

    else
    {
      v29 = (v29 + v16 + v17) & ~v17;
      if (v13 != v19)
      {
        *(((v20 + v29) & 0xFFFFFFFFFFFFFFF8) + 9) = a2 + 1;
        return;
      }

      v30 = *(v12 + 56);
    }

    v30(v29);
    return;
  }

  v28 = *(v6 + 56);

  v28(a1);
}

uint64_t sub_1BD7C944C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a4@<X3>, uint64_t x4_0@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v15 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v19, v16);
  *(&v22 + 1) = a5;
  *&v22 = x4_0;
  sub_1BD7C9598(v18, v20, a2, 0x4020000000000000, 0, 1, a4, a7, MEMORY[0x1E6981E70], v22, MEMORY[0x1E6981E60], a6);
  return (*(v15 + 8))(a1, a4);
}

uint64_t sub_1BD7C9598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, char a5@<W5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v25[0] = a7;
  v25[1] = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v18 = type metadata accessor for SheetSection(0, v25);
  v19 = a8 + v18[21];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a8 + v18[22];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  a3();
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  result = (*(*(a9 - 8) + 32))(a8 + v18[17], a2, a9);
  v22 = a8 + v18[19];
  *v22 = a4;
  *(v22 + 8) = a5 & 1;
  *(a8 + v18[20]) = a6;
  return result;
}

uint64_t sub_1BD7C96FC@<X0>(uint64_t a2@<X8>)
{
  if (sub_1BE051C54())
  {
    v3 = sub_1BE0505C4();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
  }

  else
  {
    v8 = *MEMORY[0x1E6980FD8];
    v9 = sub_1BE0505C4();
    v11 = *(v9 - 8);
    (*(v11 + 104))(a2, v8, v9);
    v4 = *(v11 + 56);
    v6 = a2;
    v7 = 0;
    v5 = v9;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t sub_1BD7C9814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v16 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386C0, &qword_1BE0B6C50);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49190, &unk_1BE0C5140);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD491A0, &qword_1BE0B89C0);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  sub_1BE051994();
  v4 = *(a1 + 56);
  v25 = *(a1 + 32);
  v3 = v25;
  v26 = v4;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  v5 = *(a1 + 24);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v6 = sub_1BE051854();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  sub_1BE04F7C4();
  v19 = v16;
  v20 = v5;
  v21 = v3;
  v22 = *(a1 + 40);
  v23 = v4;
  v24 = v17;
  sub_1BE051844();
  swift_getWitnessTable();
  sub_1BD147308();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_1BD147308();
  return (v13)(v12, v6);
}

uint64_t sub_1BD7C9BD4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v182 = a6;
  v156 = a5;
  v177 = a4;
  v178 = a3;
  v179 = a1;
  v173 = a8;
  v164 = sub_1BE04EBD4();
  v169 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v143 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49190, &unk_1BE0C5140);
  v165 = sub_1BE04EBD4();
  v170 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v161 = &v143 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD491A0, &qword_1BE0B89C0);
  v166 = sub_1BE04EBD4();
  v172 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v162 = &v143 - v13;
  sub_1BE0500D4();
  v168 = sub_1BE04EBD4();
  v171 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v181 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v143 - v16;
  sub_1BE051994();
  v190 = a4;
  v191 = a7;
  v17 = a7;
  v151 = a7;
  v160 = MEMORY[0x1E69BCB48];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v157 = sub_1BE051854();
  v158 = sub_1BE04EBD4();
  v176 = sub_1BE04F9B4();
  v159 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v184 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v180 = &v143 - v20;
  v21 = sub_1BE04F6E4();
  v154 = *(v21 - 8);
  v155 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v153 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F238, &unk_1BE0ED208);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v143 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386C0, &qword_1BE0B6C50);
  v26 = a2;
  v27 = sub_1BE04EBD4();
  v146 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v143 - v28;
  v30 = sub_1BE04EBD4();
  v152 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v143 - v31;
  v33 = sub_1BE04EBD4();
  v148 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v143 = &v143 - v34;
  v147 = sub_1BE04EBD4();
  v149 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v144 = &v143 - v35;
  v36 = sub_1BE04EBD4();
  v37 = *(v36 - 8);
  v174 = v36;
  v175 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v145 = &v143 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v183 = &v143 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v185 = &v143 - v42;
  v190 = v26;
  v191 = v178;
  v43 = v156;
  v192 = v177;
  v193 = v156;
  v194 = v182;
  v195 = v17;
  v150 = type metadata accessor for SheetSection(0, &v190);
  sub_1BD7C96FC(v25);
  sub_1BE0510D4();
  sub_1BD7CB764(v25);
  v44 = sub_1BE050424();
  v45 = sub_1BD3E0B1C(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50);
  v189[23] = v43;
  v189[24] = v45;
  WitnessTable = swift_getWitnessTable();
  sub_1BE050EB4();
  v44, v47, v48, v49, v50, v51, v52, v53;
  (*(v146 + 8))(v29, v27);
  v54 = sub_1BE051234();
  v156 = sub_1BD3E0B1C(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140);
  v189[21] = WitnessTable;
  v189[22] = v156;
  v55 = swift_getWitnessTable();
  v56 = v143;
  sub_1BE050B44();
  v54, v57, v58, v59, v60, v61, v62, v63;
  (*(v152 + 8))(v32, v30);
  sub_1BE0501C4();
  v152 = sub_1BD3E0B1C(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0);
  v189[19] = v55;
  v189[20] = v152;
  v64 = swift_getWitnessTable();
  v65 = v144;
  sub_1BE051014();
  (*(v148 + 8))(v56, v33);
  v66 = v153;
  sub_1BE04F6D4();
  v67 = MEMORY[0x1E697E5D8];
  v189[17] = v64;
  v189[18] = MEMORY[0x1E697E5D8];
  v68 = v147;
  v69 = swift_getWitnessTable();
  v70 = v145;
  sub_1BE050DA4();
  v154[1](v66, v155);
  (*(v149 + 8))(v65, v68);
  sub_1BE052434();
  v72 = v71;
  v73 = v183;
  v74 = v174;
  sub_1BE04EBB4();
  v72, v75, v76, v77, v78, v79, v80, v81;
  v82 = v175 + 8;
  v83 = *(v175 + 8);
  (v83)(v70, v74);
  v154 = v83;
  v155 = v82;
  v149 = sub_1BD7CB800(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v189[15] = v69;
  v189[16] = v149;
  v153 = swift_getWitnessTable();
  sub_1BD147308();
  (v83)(v73, v74);
  v84 = v184;
  sub_1BD7CAAD0(v150, v184);
  v85 = swift_getWitnessTable();
  v190 = v177;
  v191 = v151;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = sub_1BD0FEBBC();
  v189[13] = OpaqueTypeConformance2;
  v189[14] = v87;
  v88 = swift_getWitnessTable();
  v189[11] = v85;
  v189[12] = v88;
  v89 = v176;
  v158 = swift_getWitnessTable();
  sub_1BD147308();
  v90 = v159;
  v91 = *(v159 + 8);
  v160 = v159 + 8;
  v177 = v91;
  (v91)(v84, v89);
  sub_1BE0501C4();
  v92 = v163;
  v93 = v182;
  sub_1BE051014();
  v94 = sub_1BE050454();
  v189[9] = v93;
  v189[10] = v67;
  v95 = v164;
  v96 = swift_getWitnessTable();
  v97 = v161;
  sub_1BE050EB4();
  v94, v98, v99, v100, v101, v102, v103, v104;
  (*(v169 + 8))(v92, v95);
  v105 = sub_1BE051234();
  v189[7] = v96;
  v189[8] = v156;
  v106 = v165;
  v107 = swift_getWitnessTable();
  v108 = v162;
  sub_1BE050B44();
  v105, v109, v110, v111, v112, v113, v114, v115;
  (*(v170 + 8))(v97, v106);
  sub_1BE052434();
  v117 = v116;
  v189[5] = v107;
  v189[6] = v152;
  v118 = v166;
  v119 = swift_getWitnessTable();
  v120 = v181;
  sub_1BE050DE4();
  v117, v121, v122, v123, v124, v125, v126, v127;
  (*(v172 + 8))(v108, v118);
  v189[3] = v119;
  v189[4] = v149;
  v128 = v168;
  v179 = swift_getWitnessTable();
  v129 = v167;
  v130 = v120;
  sub_1BD147308();
  v131 = v171;
  v182 = *(v171 + 8);
  v182(v120, v128);
  v132 = v174;
  v133 = v183;
  (*(v175 + 16))(v183, v185, v174);
  v190 = v133;
  v134 = *(v90 + 16);
  v135 = v184;
  v136 = v180;
  v137 = v176;
  v134(v184, v180, v176);
  v191 = v135;
  (*(v131 + 16))(v130, v129, v128);
  v192 = v130;
  v189[0] = v132;
  v189[1] = v137;
  v138 = v137;
  v189[2] = v128;
  v186 = v153;
  v187 = v158;
  v188 = v179;
  sub_1BD13A4C4(&v190, 3uLL, v189);
  v139 = v182;
  v182(v129, v128);
  v140 = v177;
  (v177)(v136, v137);
  v141 = v154;
  (v154)(v185, v132);
  v139(v181, v128);
  (v140)(v184, v138);
  return (v141)(v183, v132);
}