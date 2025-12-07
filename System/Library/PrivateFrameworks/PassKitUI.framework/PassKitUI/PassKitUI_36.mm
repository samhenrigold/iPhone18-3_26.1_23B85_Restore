double sub_1BD3E63B8@<D0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v21);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v22;
  result = *&v21;
  *a2 = v21;
  *(a2 + 16) = v19;
  return result;
}

void sub_1BD3E6448(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8088], v3, v5);
  v8 = PKPassKitBundle();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v8;
  sub_1BE04B6F4();
  v11 = v10;

  (*(v4 + 8))(v7, v3);
  v12 = sub_1BE053344();
  v13 = [*(a2 + 16) monetaryValue];
  v14 = [v13 currency];

  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1BE052434();
  v16 = v15;

  v17 = sub_1BE052404();
  v11, v18, v19, v20, v21, v22, v23, v24;
  v25 = sub_1BE052404();
  v16, v26, v27, v28, v29, v30, v31, v32;
  v33 = [objc_opt_self() suggestionWithTitle:v17 value:v12 currencyCode:v25];

  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BE0B7020;
    *(v34 + 32) = v33;
  }
}

uint64_t sub_1BD3E6698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a1;
  v79 = a2;
  v89 = a3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45238, &qword_1BE0D3F88);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45240, &qword_1BE0D3F90);
  v7 = *(v6 - 8);
  v87 = v6;
  v88 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45248, &qword_1BE0D3F98);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v71 - v12;
  v84 = sub_1BE051994();
  v93 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v71 - v15;
  v90 = sub_1BE04FF64();
  v16 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45250, &qword_1BE0D3FA0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45258, &qword_1BE0D3FA8);
  v22 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v24 = &v71 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45260, &qword_1BE0D3FB0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v80 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v71 - v28;
  *v21 = sub_1BE050194();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45268, &qword_1BE0D3FB8);
  sub_1BD3E6E90(a1, a2, sub_1BD3E70FC, &v21[*(v30 + 44)]);
  sub_1BE04FF44();
  v76 = MEMORY[0x1E697BF80];
  v31 = sub_1BD0DE4F4(&qword_1EBD45270, &qword_1EBD45250, &qword_1BE0D3FA0, MEMORY[0x1E697BF80]);
  sub_1BE050D14();
  v32 = *(v16 + 8);
  v74 = v16 + 8;
  v75 = v32;
  v32(v18, v90);
  sub_1BD0DE53C(v21, &qword_1EBD45250, &qword_1BE0D3FA0);
  sub_1BE052434();
  v34 = v33;
  v94 = v19;
  v95 = v31;
  v73 = MEMORY[0x1E697D248];
  swift_getOpaqueTypeConformance2();
  v35 = v29;
  v72 = v29;
  v36 = v77;
  sub_1BE050DE4();
  v34, v37, v38, v39, v40, v41, v42, v43;
  (*(v22 + 8))(v24, v36);
  v44 = v91;
  sub_1BE051984();
  v45 = sub_1BE050194();
  v46 = v81;
  *v81 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45278, &qword_1BE0D3FC0);
  sub_1BD3E72FC(v46 + *(v47 + 44));
  sub_1BE04FF44();
  v48 = sub_1BD0DE4F4(&qword_1EBD45280, &qword_1EBD45238, &qword_1BE0D3F88, v76);
  v49 = v82;
  v50 = v85;
  sub_1BE050D14();
  v75(v18, v90);
  sub_1BD0DE53C(v46, &qword_1EBD45238, &qword_1BE0D3F88);
  sub_1BE052434();
  v52 = v51;
  v94 = v50;
  v95 = v48;
  swift_getOpaqueTypeConformance2();
  v53 = v92;
  v54 = v87;
  sub_1BE050DE4();
  v52, v55, v56, v57, v58, v59, v60, v61;
  (*(v88 + 8))(v49, v54);
  v62 = v80;
  sub_1BD0DE19C(v35, v80, &qword_1EBD45260, &qword_1BE0D3FB0);
  v63 = *(v93 + 16);
  v65 = v83;
  v64 = v84;
  v63(v83, v44, v84);
  v66 = v86;
  sub_1BD0DE19C(v53, v86, &qword_1EBD45248, &qword_1BE0D3F98);
  v67 = v89;
  sub_1BD0DE19C(v62, v89, &qword_1EBD45260, &qword_1BE0D3FB0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45288, &qword_1BE0D3FC8);
  v63((v67 + *(v68 + 48)), v65, v64);
  sub_1BD0DE19C(v66, v67 + *(v68 + 64), &qword_1EBD45248, &qword_1BE0D3F98);
  sub_1BD0DE53C(v92, &qword_1EBD45248, &qword_1BE0D3F98);
  v69 = *(v93 + 8);
  v69(v91, v64);
  sub_1BD0DE53C(v72, &qword_1EBD45260, &qword_1BE0D3FB0);
  sub_1BD0DE53C(v66, &qword_1EBD45248, &qword_1BE0D3F98);
  v69(v65, v64);
  return sub_1BD0DE53C(v62, &qword_1EBD45260, &qword_1BE0D3FB0);
}

uint64_t sub_1BD3E6E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452D8, &qword_1BE0D4008);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452E0, &qword_1BE0D4010);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  *v18 = sub_1BE04F504();
  *(v18 + 1) = 0;
  v18[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452E8, &qword_1BE0D4018);
  a3(a1, a2);
  *v12 = sub_1BE04F7C4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452F0, &qword_1BE0D4020);
  a3(a1, a2);
  sub_1BD0DE19C(v18, v15, &qword_1EBD452E0, &qword_1BE0D4010);
  sub_1BD0DE19C(v12, v9, &qword_1EBD452D8, &qword_1BE0D4008);
  v19 = v23;
  sub_1BD0DE19C(v15, v23, &qword_1EBD452E0, &qword_1BE0D4010);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452F8, &qword_1BE0D4028);
  sub_1BD0DE19C(v9, v19 + *(v20 + 48), &qword_1EBD452D8, &qword_1BE0D4008);
  sub_1BD0DE53C(v12, &qword_1EBD452D8, &qword_1BE0D4008);
  sub_1BD0DE53C(v18, &qword_1EBD452E0, &qword_1BE0D4010);
  sub_1BD0DE53C(v9, &qword_1EBD452D8, &qword_1BE0D4008);
  return sub_1BD0DE53C(v15, &qword_1EBD452E0, &qword_1BE0D4010);
}

uint64_t sub_1BD3E70FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45300, &qword_1BE0D4030);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  sub_1BD3E5F68();
  sub_1BD3E6130(a1, a2);
  sub_1BD0DE19C(v17, v14, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE19C(v11, v8, &qword_1EBD45300, &qword_1BE0D4030);
  sub_1BD0DE19C(v14, a3, &qword_1EBD452C0, &qword_1BE0B7620);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45308, &unk_1BE0D4038);
  sub_1BD0DE19C(v8, a3 + *(v18 + 48), &qword_1EBD45300, &qword_1BE0D4030);
  sub_1BD0DE53C(v11, &qword_1EBD45300, &qword_1BE0D4030);
  sub_1BD0DE53C(v17, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v8, &qword_1EBD45300, &qword_1BE0D4030);
  return sub_1BD0DE53C(v14, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD3E72FC@<X0>(uint64_t a3@<X8>)
{
  v28 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45290, &qword_1BE0D3FD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45298, &qword_1BE0D3FD8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  *v15 = sub_1BE04F504();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452A0, &qword_1BE0D3FE0);
  sub_1BD3E758C(&v15[*(v16 + 44)]);
  v17 = sub_1BE050234();
  sub_1BE04E1F4();
  v18 = &v15[*(v10 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452A8, &qword_1BE0D3FE8);
  sub_1BD3E7980(&v8[*(v23 + 44)]);
  sub_1BD0DE19C(v15, v12, &qword_1EBD45298, &qword_1BE0D3FD8);
  sub_1BD0DE19C(v8, v5, &qword_1EBD45290, &qword_1BE0D3FD0);
  v24 = v28;
  sub_1BD0DE19C(v12, v28, &qword_1EBD45298, &qword_1BE0D3FD8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD452B0, &qword_1BE0D3FF0);
  sub_1BD0DE19C(v5, v24 + *(v25 + 48), &qword_1EBD45290, &qword_1BE0D3FD0);
  sub_1BD0DE53C(v8, &qword_1EBD45290, &qword_1BE0D3FD0);
  sub_1BD0DE53C(v15, &qword_1EBD45298, &qword_1BE0D3FD8);
  sub_1BD0DE53C(v5, &qword_1EBD45290, &qword_1BE0D3FD0);
  return sub_1BD0DE53C(v12, &qword_1EBD45298, &qword_1BE0D3FD8);
}

uint64_t sub_1BD3E758C@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v85 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v81 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  v87 = sub_1BD3E8D8C();
  v88 = v15;
  sub_1BD0DDEBC();
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  v87 = v16;
  v88 = v17;
  v22 = (v21 & 1);
  v89 = v21 & 1;
  v90 = v19;
  sub_1BE052434();
  v24 = v23;
  v81 = v14;
  sub_1BE050DE4();
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_1BD0DDF10(v16, v18, v22, v32, v33, v34, v35, v36);
  v20, v37, v38, v39, v40, v41, v42, v43;
  v44 = v82;
  sub_1BD3E5D24(v82);
  v87 = sub_1BD3E92E0();
  v88 = v45;
  v46 = sub_1BE0506C4();
  v48 = v47;
  v50 = v49;
  v87 = v46;
  v88 = v47;
  v52 = (v51 & 1);
  v89 = v51 & 1;
  v90 = v49;
  sub_1BE052434();
  v54 = v53;
  sub_1BE050DE4();
  v54, v55, v56, v57, v58, v59, v60, v61;
  sub_1BD0DDF10(v46, v48, v52, v62, v63, v64, v65, v66);
  v50, v67, v68, v69, v70, v71, v72, v73;
  v74 = v83;
  sub_1BD0DE19C(v14, v83, &qword_1EBD452C0, &qword_1BE0B7620);
  v75 = v85;
  sub_1BD0DE19C(v44, v85, &unk_1EBD5BB60, &qword_1BE0C4580);
  v76 = v84;
  sub_1BD0DE19C(v11, v84, &qword_1EBD452C0, &qword_1BE0B7620);
  v77 = v86;
  sub_1BD0DE19C(v74, v86, &qword_1EBD452C0, &qword_1BE0B7620);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452D0, &qword_1BE0D4000);
  sub_1BD0DE19C(v75, v77 + v78[12], &unk_1EBD5BB60, &qword_1BE0C4580);
  v79 = v77 + v78[16];
  *v79 = 0;
  *(v79 + 8) = 1;
  sub_1BD0DE19C(v76, v77 + v78[20], &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v11, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v44, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v81, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v76, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v75, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v74, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD3E7980@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v84 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v83 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v80 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80 - v13;
  v86 = sub_1BD3E8D8C();
  v87 = v15;
  sub_1BD0DDEBC();
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  v86 = v16;
  v87 = v17;
  v22 = (v21 & 1);
  v88 = v21 & 1;
  v89 = v19;
  sub_1BE052434();
  v24 = v23;
  v80 = v14;
  sub_1BE050DE4();
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_1BD0DDF10(v16, v18, v22, v32, v33, v34, v35, v36);
  v20, v37, v38, v39, v40, v41, v42, v43;
  v44 = v81;
  sub_1BD3E5D24(v81);
  v86 = sub_1BD3E92E0();
  v87 = v45;
  v46 = sub_1BE0506C4();
  v48 = v47;
  v50 = v49;
  v86 = v46;
  v87 = v47;
  v52 = (v51 & 1);
  v88 = v51 & 1;
  v89 = v49;
  sub_1BE052434();
  v54 = v53;
  sub_1BE050DE4();
  v54, v55, v56, v57, v58, v59, v60, v61;
  sub_1BD0DDF10(v46, v48, v52, v62, v63, v64, v65, v66);
  v50, v67, v68, v69, v70, v71, v72, v73;
  v74 = v82;
  sub_1BD0DE19C(v14, v82, &qword_1EBD452C0, &qword_1BE0B7620);
  v75 = v84;
  sub_1BD0DE19C(v44, v84, &unk_1EBD5BB60, &qword_1BE0C4580);
  v76 = v83;
  sub_1BD0DE19C(v11, v83, &qword_1EBD452C0, &qword_1BE0B7620);
  v77 = v85;
  sub_1BD0DE19C(v74, v85, &qword_1EBD452C0, &qword_1BE0B7620);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C8, &qword_1BE0D3FF8);
  sub_1BD0DE19C(v75, v77 + *(v78 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE19C(v76, v77 + *(v78 + 64), &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v11, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v44, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v80, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v76, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v75, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v74, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD3E7D9C@<X0>(uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v11 = *v5;
  v10 = v5[1];
  *a5 = sub_1BE04F7C4();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v11, v10);
}

void sub_1BD3E7E10(void *a1, void *a2, uint64_t a3, __int128 *a4)
{
  v8 = a4[1];
  *(v4 + 112) = *a4;
  *(v4 + 128) = v8;
  *(v4 + 144) = a4[2];
  *(v4 + 154) = *(a4 + 42);
  *(v4 + 16) = a1;
  v9 = *(a3 + 16);
  *(v4 + 32) = *a3;
  *(v4 + 48) = v9;
  *(v4 + 64) = *(a3 + 32);
  v256 = a1;
  v254 = a4;
  sub_1BD0DE19C(a4, &v277, &unk_1EBD45070, &qword_1BE0D3C68);
  v258 = a3;
  sub_1BD3EB974(a3, &v277);
  v255 = a2;
  v10 = [a2 userEnteredMinimumAmounts];
  v257 = v4;
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
  sub_1BD2B5358();
  v12 = sub_1BE052A34();

  v248 = v12;
  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v12 = v280;
    v16 = v281;
    v17 = v282;
    v18 = v283;
    v19 = v284;
  }

  else
  {
    v20 = -1 << *(v12 + 32);
    v16 = (v12 + 56);
    v21 = ~v20;
    v22 = -v20;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v19 = (v23 & *(v12 + 56));
    sub_1BE048C84();
    v17 = v21;
    v18 = 0;
  }

  v245 = v17;
  v24 = (v17 + 64) >> 6;
  while (1)
  {
    if (v12 < 0)
    {
      v30 = sub_1BE053744();
      if (v30)
      {
        *&v266 = v30;
        swift_dynamicCast();
        v29 = v277;
        v27 = v18;
        v28 = v19;
        if (v277)
        {
          goto LABEL_19;
        }
      }

LABEL_27:
      sub_1BD0D45FC(v12, v16, v245, v18, v19, v13, v14, v15);
      v248, v56, v57, v58, v59, v60, v61, v62;
      v4 = v257;
LABEL_28:
      v63 = MEMORY[0x1BFB403C0](0);
      goto LABEL_29;
    }

    v25 = v18;
    v26 = v19;
    v27 = v18;
    if (!v19)
    {
      while (1)
      {
        v27 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          v19 = 0;
          goto LABEL_27;
        }

        v26 = *&v16[8 * v27];
        ++v25;
        if (v26)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

LABEL_15:
    v28 = (v26 - 1) & v26;
    v29 = *(*(v12 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v29)
    {
      goto LABEL_27;
    }

LABEL_19:
    v252 = v18;
    v31 = [v29 currency];
    if (!v31)
    {
      goto LABEL_9;
    }

    v32 = v31;
    v33 = v12;
    v34 = sub_1BE052434();
    v36 = v35;

    v42 = *(v258 + 24);
    v43 = *(v258 + 32);
    if (v34 == v42 && v36 == v43)
    {
      break;
    }

    v45 = sub_1BE053B84();
    v36, v46, v47, v48, v49, v50, v51, v52;
    v12 = v33;
    if (v45)
    {
      goto LABEL_112;
    }

LABEL_9:

    v18 = v27;
    v19 = v28;
  }

  v36, v37, v42, v43, v38, v39, v40, v41;
  v12 = v33;
LABEL_112:
  sub_1BD0D45FC(v12, v16, v245, v252, v19, v53, v54, v55);
  v248, v218, v219, v220, v221, v222, v223, v224;
  v225 = [v29 amount];
  if (!v225)
  {
LABEL_120:
    __break(1u);
    return;
  }

  v226 = v225;
  v227 = sub_1BE0533F4();
  v229 = v228;
  v231 = v230;

  v65 = v231;
  v64 = v229;
  v63 = v227;
  v4 = v257;
LABEL_29:
  *(v4 + 72) = v63;
  *(v4 + 80) = v64;
  *(v4 + 88) = v65;
  v66 = *v258;
  v67 = *(v258 + 8);
  v68 = *(v258 + 16);
  v69 = [v256 monetaryValue];
  v70 = [v69 amount];

  if (!v70)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v71 = sub_1BE0533F4();
  v73 = v72;
  v75 = v74;

  v76 = MEMORY[0x1BFB403F0](v66, v67, v68, v71, v73, v75);
  if (v76)
  {
    v77 = v68;
  }

  else
  {
    v77 = v75;
  }

  if (v76)
  {
    v73 = v67;
    v78 = v66;
  }

  else
  {
    v78 = v71;
  }

  v79 = [v255 userEnteredMaximumAmounts];
  if (!v79)
  {
    sub_1BD3EB9B4(v258, v80, v81, v82, v83, v84, v85, v86);
LABEL_67:
    v250 = 0;
    goto LABEL_68;
  }

  v87 = v79;
  v243 = v78;
  v244 = v73;
  v246 = v77;
  sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
  sub_1BD2B5358();
  v88 = sub_1BE052A34();

  v249 = v88;
  if ((v88 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v96 = v285;
    v97 = v286;
    v98 = v287;
    v99 = v288;
    v100 = v289;
  }

  else
  {
    v101 = -1 << *(v88 + 32);
    v97 = (v88 + 56);
    v102 = ~v101;
    v103 = -v101;
    if (v103 < 64)
    {
      v104 = ~(-1 << v103);
    }

    else
    {
      v104 = -1;
    }

    v100 = (v104 & *(v88 + 56));
    sub_1BE048C84();
    v98 = v102;
    v99 = 0;
    v96 = v88;
  }

  v242 = v98;
  v105 = (v98 + 64) >> 6;
  while (2)
  {
    if (v96 < 0)
    {
      v111 = sub_1BE053744();
      if (!v111)
      {
        goto LABEL_63;
      }

      *&v266 = v111;
      swift_dynamicCast();
      v110 = v277;
      v108 = v99;
      v109 = v100;
      if (!v277)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v106 = v99;
      v107 = v100;
      v108 = v99;
      if (!v100)
      {
        do
        {
          v108 = (v106 + 1);
          if (__OFADD__(v106, 1))
          {
            goto LABEL_118;
          }

          if (v108 >= v105)
          {
            v100 = 0;
            goto LABEL_63;
          }

          v107 = *&v97[8 * v108];
          ++v106;
        }

        while (!v107);
      }

      v109 = (v107 - 1) & v107;
      v110 = *(*(v96 + 48) + ((v108 << 9) | (8 * __clz(__rbit64(v107)))));
      if (!v110)
      {
LABEL_63:
        sub_1BD3EB9B4(v258, v89, v90, v91, v92, v93, v94, v95);
        sub_1BD0D45FC(v96, v97, v242, v99, v100, v136, v137, v138);
        v110 = 0;
        goto LABEL_64;
      }
    }

    v253 = v99;
    v112 = [v110 currency];
    if (!v112)
    {
LABEL_45:

      v99 = v108;
      v100 = v109;
      continue;
    }

    break;
  }

  v113 = v112;
  v114 = sub_1BE052434();
  v116 = v115;

  v122 = *(v258 + 24);
  v123 = *(v258 + 32);
  if (v114 != v122 || v116 != v123)
  {
    v125 = sub_1BE053B84();
    v116, v126, v127, v128, v129, v130, v131, v132;
    if (v125)
    {
      goto LABEL_115;
    }

    goto LABEL_45;
  }

  v116, v117, v122, v123, v118, v119, v120, v121;
LABEL_115:
  sub_1BD0D45FC(v96, v97, v242, v253, v100, v133, v134, v135);
  sub_1BD3EB9B4(v258, v232, v233, v234, v235, v236, v237, v238);
LABEL_64:
  v4 = v257;
  v249, v139, v140, v141, v142, v143, v144, v145;
  v146 = [v110 amount];

  v77 = v246;
  v78 = v243;
  v73 = v244;
  if (!v146)
  {
    goto LABEL_67;
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  BYTE4(v278) = 1;
  v147 = v146;
  sub_1BE0533E4();
  v250 = v147;

  if ((BYTE4(v278) & 1) == 0)
  {
    v148 = v278;
    v149 = *(&v277 + 1);
    v150 = v277;
    goto LABEL_69;
  }

LABEL_68:
  v148 = v77;
  v149 = v73;
  v150 = v78;
LABEL_69:
  v259 = WORD1(v77);
  v151 = MEMORY[0x1BFB403F0](v78, v73, v77, v150, v149, v148);
  if (v151)
  {
    v152 = v78;
  }

  else
  {
    v152 = v150;
  }

  *(v4 + 92) = v152;
  if (v151)
  {
    v153 = v73;
  }

  else
  {
    v153 = v149;
  }

  if (v151)
  {
    v154 = v77;
  }

  else
  {
    v154 = v148;
  }

  *(v4 + 100) = v153;
  *(v4 + 108) = v154;
  v155 = v254[1];
  v277 = *v254;
  v278 = v155;
  v279[0] = v254[2];
  *(v279 + 10) = *(v254 + 42);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45070, &qword_1BE0D3C68);
  MEMORY[0x1BFB3E970](&v269);
  if (v276)
  {
    v156 = v78;
    v157 = WORD2(v78);
    v158 = HIWORD(v78);
    v159 = v73;
    v160 = v73 >> 16;
    v161 = WORD2(v73);
    v162 = HIWORD(v73);
    v163 = v77;
    v164 = WORD1(v77);
  }

  else
  {
    v156 = v269;
    v157 = WORD2(v269);
    v158 = HIWORD(v269);
    v159 = v270;
    LOWORD(v160) = v271;
    v161 = v272;
    v162 = v273;
    v163 = v274;
    LOWORD(v164) = v275;
  }

  v239 = v164;
  v240 = v156;
  v165 = v77;
  v166 = v77;
  v167 = v159;
  v168 = v161;
  v169 = MEMORY[0x1BFB403F0](v78, v73, v166, v156 | (v157 << 32) | (v158 << 48), v159 | (v160 << 16) | (v161 << 32) | (v162 << 48), v163 | (v164 << 16));
  v170 = v240;
  if (v169)
  {
    v170 = v78;
  }

  v241 = v170;
  if (v169)
  {
    v171 = WORD2(v78);
  }

  else
  {
    v171 = v157;
  }

  v251 = v171;
  if (v169)
  {
    v172 = HIWORD(v78);
  }

  else
  {
    v172 = v158;
  }

  if (v169)
  {
    v173 = v73;
  }

  else
  {
    v173 = v167;
  }

  if (v169)
  {
    v174 = WORD1(v73);
  }

  else
  {
    v174 = v160;
  }

  if (v169)
  {
    v175 = WORD2(v73);
  }

  else
  {
    v175 = v168;
  }

  if (v169)
  {
    v176 = HIWORD(v73);
  }

  else
  {
    v176 = v162;
  }

  if (v169)
  {
    v177 = v165;
  }

  else
  {
    v177 = v163;
  }

  if (v169)
  {
    v178 = v259;
  }

  else
  {
    v178 = v239;
  }

  swift_beginAccess();
  LODWORD(v263) = v241;
  WORD2(v263) = v251;
  WORD3(v263) = v172;
  WORD4(v263) = v173;
  WORD5(v263) = v174;
  WORD6(v263) = v175;
  HIWORD(v263) = v176;
  LOWORD(v264) = v177;
  WORD1(v264) = v178;
  type metadata accessor for Decimal(0);
  sub_1BE04D874();
  swift_endAccess();
  *(v257 + 24) = v255;
  v179 = *(v257 + 128);
  v266 = *(v257 + 112);
  v267 = v179;
  v268[0] = *(v257 + 144);
  *(v268 + 10) = *(v257 + 154);
  v180 = v255;
  MEMORY[0x1BFB3E970](&v263, v247);
  if (v265[9] & 1) != 0 || (v181 = v263, v182 = v264, v183 = swift_getKeyPath(), v184 = swift_getKeyPath(), sub_1BE04D8B4(&v266), v183, v185, v186, v187, v188, v189, v190, v191, v184, v192, v193, v194, v195, v196, v197, v198, (MEMORY[0x1BFB40440](v181, *(&v181 + 1), v182, v266, *(&v266 + 1), v267)))
  {

    sub_1BD0DE53C(v254, &unk_1EBD45070, &qword_1BE0D3C68);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v200 = swift_getKeyPath();
    sub_1BE04D8B4(&v266);
    KeyPath, v201, v202, v203, v204, v205, v206, v207;
    v200, v208, v209, v210, v211, v212, v213, v214;
    v215 = *(v257 + 128);
    v263 = *(v257 + 112);
    v264 = v215;
    v217 = *(v257 + 112);
    v216 = *(v257 + 128);
    *v265 = *(v257 + 144);
    *&v265[10] = *(v257 + 154);
    v260 = v217;
    v261 = v216;
    *v262 = *(v257 + 144);
    *&v262[10] = *(v257 + 154);
    sub_1BD0DE19C(&v263, &v266, &unk_1EBD45070, &qword_1BE0D3C68);
    sub_1BE0518F4();

    sub_1BD0DE53C(v254, &unk_1EBD45070, &qword_1BE0D3C68);
    v266 = v260;
    v267 = v261;
    v268[0] = *v262;
    *(v268 + 10) = *&v262[10];
    sub_1BD0DE53C(&v266, &unk_1EBD45070, &qword_1BE0D3C68);
  }
}

void sub_1BD3E8918(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v24);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v26 = v24;
  v27 = v25;
  v19 = [*(v1 + 16) monetaryValue];
  v20 = [v19 currency];

  if (v20)
  {
    v21 = sub_1BE052434();
    v23 = v22;

    LODWORD(v25) = v27;
    *a1 = v26;
    *(a1 + 16) = v25;
    *(a1 + 24) = v21;
    *(a1 + 32) = v23;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3E8A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  if (MEMORY[0x1BFB403F0](*(v3 + 92), *(v3 + 100), *(v3 + 108), a1, a2, a3))
  {
    v6 = *(v3 + 92);
    v5 = *(v3 + 100);
    v4 = *(v3 + 108);
  }

  v7 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB403F0](v6, v5, v4, v7, v8, v9))
  {
    v6 = MEMORY[0x1BFB403C0](0);
    v5 = v10;
    LODWORD(v4) = v11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v21 = v6;
  *(&v21 + 1) = v5;
  LODWORD(v22) = v4;
  sub_1BE048964();
  sub_1BE04D8C4();
  v12 = *(v3 + 128);
  v19[0] = *(v3 + 112);
  v19[1] = v12;
  v14 = *(v3 + 112);
  v13 = *(v3 + 128);
  v20[0] = *(v3 + 144);
  *(v20 + 10) = *(v3 + 154);
  v16 = v14;
  v17 = v13;
  *v18 = *(v3 + 144);
  *&v18[10] = *(v3 + 154);
  sub_1BD0DE19C(v19, &v21, &unk_1EBD45070, &qword_1BE0D3C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45070, &qword_1BE0D3C68);
  sub_1BE0518F4();
  v21 = v16;
  v22 = v17;
  v23[0] = *v18;
  *(v23 + 10) = *&v18[10];
  return sub_1BD0DE53C(&v21, &unk_1EBD45070, &qword_1BE0D3C68);
}

uint64_t sub_1BD3E8BB8()
{
  sub_1BE053D04();
  sub_1BE053404();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD3E8C30(uint64_t a1)
{
  sub_1BE053404();

  return sub_1BE052524();
}

uint64_t sub_1BD3E8C84(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE053404();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD3E8CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if ((MEMORY[0x1BFB40440](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1BE053B84();
}

id sub_1BD3E8D8C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = [*(v0 + 16) type];
  if (v12 == 1)
  {
    (*(v2 + 104))(v7, *MEMORY[0x1E69B8088], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v11 = v7;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 == 2)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69B8088], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v11 = v4;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v12 != 3)
  {
    return 0;
  }

  (*(v2 + 104))(v11, *MEMORY[0x1E69B8088], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
LABEL_10:

    (*(v2 + 8))(v11, v1);
    return v15;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BD3E9034()
{
  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;
  v8 = *(v0 + 112);
  *(v0 + 120), v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC9PassKitUI25PaymentRewardsAmountModel__selectedAmount;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45108, &qword_1BE0D3CC0);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);

  return swift_deallocClassInstance();
}

void sub_1BD3E912C(uint64_t a1)
{
  sub_1BD3EC09C(319, &qword_1EBD44FF0, type metadata accessor for Decimal, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BD3E9230(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  return v19;
}

uint64_t sub_1BD3E92A0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PaymentRewardsAmountModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD3E92E0()
{
  v28 = sub_1BE04A914();
  v0 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE053304();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(&v29);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1BFB37210]();
  sub_1BE04A904();
  sub_1BE0532F4();
  (*(v0 + 8))(v2, v28);
  v26 = *(v4 + 8);
  v26(v6, v3);
  sub_1BD3EBF40(&qword_1EBD45110, MEMORY[0x1E6969FD0], MEMORY[0x1E6969FC8]);
  sub_1BE053464();
  v26(v9, v3);
  return v29;
}

uint64_t sub_1BD3E953C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  if (MEMORY[0x1BFB403F0](*(v3 + 92), *(v3 + 100), *(v3 + 108), a1, a2, a3))
  {
    v6 = *(v3 + 92);
    v5 = *(v3 + 100);
    v4 = *(v3 + 108);
  }

  v7 = *(v3 + 16);
  v8 = sub_1BE053344();
  v9 = [v7 convertValueFromAmount_];

  if (!v9)
  {
    v9 = [objc_opt_self() zero];
  }

  v10 = sub_1BE0533F4();
  v12 = v11;
  v14 = v13;

  v15 = v3 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity;
  if ((MEMORY[0x1BFB403F0](v10, v12, v14, *(v3 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity), *(v3 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity + 8), *(v3 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity + 16)) & 1) == 0 || (MEMORY[0x1BFB403F0](v6, v5, v4, *(v3 + 92), *(v3 + 100), *(v3 + 108)) & 1) == 0)
  {
    v10 = *v15;
    v12 = *(v15 + 8);
    v14 = *(v15 + 16);
  }

  v16 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB403F0](v10, v12, v14, v16, v17, v18))
  {
    v10 = MEMORY[0x1BFB403C0](0);
    v12 = v19;
    LODWORD(v14) = v20;
    MEMORY[0x1BFB403C0](0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v30 = v10;
  *(&v30 + 1) = v12;
  LODWORD(v31) = v14;
  sub_1BE048964();
  sub_1BE04D8C4();
  v21 = *(v3 + 128);
  v28[0] = *(v3 + 112);
  v28[1] = v21;
  v23 = *(v3 + 112);
  v22 = *(v3 + 128);
  v29[0] = *(v3 + 144);
  *(v29 + 10) = *(v3 + 154);
  v25 = v23;
  v26 = v22;
  *v27 = *(v3 + 144);
  *&v27[10] = *(v3 + 154);
  sub_1BD0DE19C(v28, &v30, &unk_1EBD45070, &qword_1BE0D3C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45070, &qword_1BE0D3C68);
  sub_1BE0518F4();
  v30 = v25;
  v31 = v26;
  v32[0] = *v27;
  *(v32 + 10) = *&v27[10];
  return sub_1BD0DE53C(&v30, &unk_1EBD45070, &qword_1BE0D3C68);
}

uint64_t sub_1BD3E982C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45108, &qword_1BE0D3CC0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1BD3E98A0()
{
  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;
  v8 = *(v0 + 112);
  *(v0 + 120), v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC9PassKitUI25PaymentRewardsAmountModel__selectedAmount;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45108, &qword_1BE0D3CC0);
  v25 = *(*(v24 - 8) + 8);
  v25(v0 + v23, v24);
  v25(v0 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity, v24);

  return swift_deallocClassInstance();
}

void sub_1BD3E99C8(uint64_t a1)
{
  sub_1BD3EC09C(319, &qword_1EBD44FF0, type metadata accessor for Decimal, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1BD3E9A94()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v62 = *v0;
  v63 = v2;
  v64 = *(v0 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
  sub_1BE051914();
  v71 = *(v0 + 56);
  v72 = *(v0 + 72);
  v4 = *(v0 + 36);
  v70 = *(v0 + 52);
  v68 = *(v0 + 80);
  v69 = v4;
  v5 = swift_allocObject();
  v6 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = *(v0 + 112);
  v7 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v7;
  v8 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v8;
  v9 = type metadata accessor for CurrencyAmountTextField.AmountTextField();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_firstEdit] = 1;
  *&v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter] = 0;
  v11 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount];
  v13 = v73;
  v12 = v74;
  *(v11 + 8) = v75;
  *v11 = v13;
  *(v11 + 1) = v12;
  *&v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_currencyCode] = v68;
  v14 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_minimumAmount];
  *v14 = v71;
  *(v14 + 4) = v72;
  v15 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_maximumAmount];
  *v15 = v69;
  *(v15 + 4) = v70;
  v65 = v73;
  v66 = v74;
  v67 = v75;
  sub_1BD206260(&v68, &v62);
  sub_1BD3ECCC0(v0, &v62);
  sub_1BD0DE19C(&v73, &v62, &unk_1EBD4EED0, &qword_1BE0CEA30);
  MEMORY[0x1BFB3E970](&v62, v3);
  v16 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount];
  v17 = v63;
  *v16 = v62;
  *(v16 + 4) = v17;
  v18 = &v10[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_loadSuggestions];
  *v18 = sub_1BD3ECCB8;
  v18[1] = v5;
  v61.receiver = v10;
  v61.super_class = v9;
  sub_1BE048964();
  v19 = objc_msgSendSuper2(&v61, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setTintColor_];

  [v21 addTarget:v21 action:sel_editingChanged forControlEvents:0x20000];
  [v21 addTarget:v21 action:sel_resetSelection forControlEvents:4095];
  [v21 setKeyboardType_];
  [v21 setAutocorrectionType_];
  [v21 sendActionsForControlEvents_];
  [v21 setDelegate_];
  v23 = v21;
  v24 = sub_1BD3EA308();
  v25 = sub_1BE053344();
  v26 = [v24 stringForObjectValue_];

  if (v26)
  {
    sub_1BE052434();
    v28 = v27;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29 = sub_1BE052404();
  v28, v30, v31, v32, v33, v34, v35, v36;
  [v23 setText_];

  v37 = [objc_opt_self() defaultCenter];
  [v37 addObserver:v23 selector:sel_textInputResponderIsReloaded_ name:*MEMORY[0x1E69DE6E8] object:0];
  v5, v38, v39, v40, v41, v42, v43, v44;

  sub_1BD0DE53C(&v73, &unk_1EBD4EED0, &qword_1BE0CEA30);
  [v23 setTextColor_];
  v45 = *(v1 + 96);
  if ([v23 _shouldReverseLayoutDirection])
  {
    if (v45)
    {
      if (v45 == 2)
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 2;
    }
  }

  [v23 setTextAlignment_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  LODWORD(v46) = 1132068864;
  [v23 setContentCompressionResistancePriority:0 forAxis:v46];
  LODWORD(v47) = 1132068864;
  [v23 setContentHuggingPriority:0 forAxis:v47];
  [v23 setAccessibilityIdentifier_];
  sub_1BD3EB3A0();
  v48 = v23;
  if (PKIsPhone())
  {
    v48 = v23;
    if ((sub_1BE051C54() & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1BE0D39A0;
      *(v49 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
      sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE0530B4();
      *(v49 + 40) = sub_1BE052C74();
      v51 = [objc_allocWithZone(MEMORY[0x1E69DD180]) init];
      v52 = sub_1BE052724();
      v49, v53, v54, v55, v56, v57, v58, v59;
      [v51 setItems:v52 animated:0];

      v48 = v51;
      [v48 sizeToFit];
      [v23 setInputAccessoryView_];
    }
  }

  return v23;
}

void sub_1BD3EA15C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong resignFirstResponder];
  }
}

void sub_1BD3EA1B8(char *a1)
{
  v3 = v1[1];
  v24 = *v1;
  v25 = v3;
  v26 = *(v1 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
  MEMORY[0x1BFB3E970](&v17, v4);
  v5 = v17;
  v6 = WORD2(v17);
  v7 = HIWORD(v17);
  v8 = v18;
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v16 = a1;
  v14 = &a1[OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount];
  if ((MEMORY[0x1BFB40440](v17 | (WORD2(v17) << 32) | (HIWORD(v17) << 48), v18 | (v19 << 16) | (v20 << 32) | (v21 << 48), v22 | (v23 << 16), *v14, *(v14 + 1), *(v14 + 4)) & 1) == 0)
  {
    *v14 = v5;
    *(v14 + 2) = v6;
    *(v14 + 3) = v7;
    *(v14 + 4) = v8;
    *(v14 + 5) = v9;
    *(v14 + 6) = v10;
    *(v14 + 7) = v11;
    *(v14 + 8) = v12;
    *(v14 + 9) = v13;
    sub_1BD3EAA68();
  }

  v15 = [objc_opt_self() preferredFontForTextStyle_];
  [v16 setFont_];
}

id sub_1BD3EA308()
{
  v1 = OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter;
  v2 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField____lazy_storage___currencyFormatter);
  }

  else
  {
    sub_1BD3EA36C(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BD3EA36C(uint64_t a1)
{
  v1 = sub_1BE04B0F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE052404();
  v6 = PKMutableNumberFormatterForCurrencyCode();

  if (v6)
  {
    v7 = [objc_opt_self() currentLocale];
    sub_1BE04B064();

    v8 = sub_1BE052404();
    v9 = PKDefaultFractionDigitsForCurrencyCode();

    v10 = sub_1BE04B044();
    [v6 setLocale_];

    [v6 setMinimumFractionDigits_];
    [v6 setMaximumFractionDigits_];
    [v6 setUsesGroupingSeparator_];
    [v6 setGeneratesDecimalNumbers_];
    sub_1BE04B024();
    if (v11)
    {
      v12 = v11;
      v13 = sub_1BE052404();
      v12, v14, v15, v16, v17, v18, v19, v20;
    }

    else
    {
      v13 = 0;
    }

    [v6 setDecimalSeparator_];

    sub_1BE04B024();
    if (v21)
    {
      v22 = v21;
      v23 = sub_1BE052404();
      v22, v24, v25, v26, v27, v28, v29, v30;
    }

    else
    {
      v23 = 0;
    }

    [v6 setCurrencyDecimalSeparator_];

    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    v31 = sub_1BE053044();
    [v6 setMinimum_];

    v32 = sub_1BE053344();
    [v6 setMaximum_];

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD3EA62C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E69DE6E8] object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CurrencyAmountTextField.AmountTextField();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD3EA848()
{
  sub_1BD3EAA68();
  v1 = (v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount);
  v2 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount + 16);
  v11 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount);
  v12 = v2;
  v13 = *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField__amount + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
  MEMORY[0x1BFB3E970](&v8);
  result = MEMORY[0x1BFB40440](v8, *(&v8 + 1), v9, *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount), *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount + 8), *(v0 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount + 16));
  if ((result & 1) == 0)
  {
    v4 = v1[1];
    v8 = *v1;
    v9 = v4;
    v10 = *(v1 + 8);
    v5 = *v1;
    v6 = v1[1];
    v7 = *(v1 + 8);
    sub_1BD0DE19C(&v8, &v11, &unk_1EBD4EED0, &qword_1BE0CEA30);
    sub_1BE0518F4();
    v11 = v5;
    v12 = v6;
    v13 = v7;
    return sub_1BD0DE53C(&v11, &unk_1EBD4EED0, &qword_1BE0CEA30);
  }

  return result;
}

void sub_1BD3EAA68()
{
  v1 = sub_1BD3EA308();
  v2 = sub_1BE053344();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [v0 text];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = sub_1BE052434();
  v11 = v10;

  if (v4 == v9 && v6 == v11)
  {
    v6, v12, v13, v14, v15, v16, v17, v18;
    v35 = v11;
    goto LABEL_13;
  }

  v20 = sub_1BE053B84();
  v11, v21, v22, v23, v24, v25, v26, v27;
  if ((v20 & 1) == 0)
  {
LABEL_11:
    v36 = sub_1BE052404();
    v6, v37, v38, v39, v40, v41, v42, v43;
    [v0 setText_];

    v44 = [v0 endOfDocument];
    v45 = [v0 endOfDocument];
    v46 = [v0 textRangeFromPosition:v44 toPosition:v45];

    [v0 setSelectedTextRange_];
    goto LABEL_14;
  }

  v35 = v6;
LABEL_13:
  v35, v28, v29, v30, v31, v32, v33, v34;
LABEL_14:

  sub_1BD3EB3A0();
}

uint64_t sub_1BD3EAC48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = [a1 text];
  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = v9;
  sub_1BE052434();
  v12 = v11;

  v13 = sub_1BE052B64();
  v15 = v14;
  LOBYTE(v10) = v16;
  v12, v14, v16, v17, v18, v19, v20, v21;
  if (v10)
  {
    goto LABEL_3;
  }

  v36 = OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_firstEdit;
  if (*(v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_firstEdit) == 1)
  {
    sub_1BE048C84();
LABEL_10:
    *(v5 + v36) = 0;
    goto LABEL_11;
  }

  v37 = [a1 text];
  if (!v37)
  {
LABEL_3:
    CGAffineTransformMakeTranslation(&v90, 20.0, 0.0);
    [a1 setTransform_];
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *&v90.tx = sub_1BD3EBD44;
    *&v90.ty = v23;
    *&v90.a = MEMORY[0x1E69E9820];
    *&v90.b = 1107296256;
    v24 = &block_descriptor_84;
    goto LABEL_4;
  }

  v38 = v37;
  v39 = sub_1BE052434();
  v41 = v40;

  sub_1BD65C8D0(v13, v15, a4, a5, v39, v41);
  a4 = v42;
  a5 = v43;
  v41, v43, v44, v45, v46, v47, v48, v49;
  if (*(v5 + v36) == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1BD3EBC7C(a4, a5);
  v51 = v50;
  if (!sub_1BE052534())
  {
    v51, v52, v53, v54, v55, v56, v57, v58;
    goto LABEL_16;
  }

  v59 = sub_1BE052534();
  v51, v60, v61, v62, v63, v64, v65, v66;
  if (!v59)
  {
LABEL_16:
    a5, v67, v68, v69, v70, v71, v72, v73;
    v85 = MEMORY[0x1BFB403C0](0);
    v86 = v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount;
    *v86 = v85;
    *(v86 + 8) = v87;
    *(v86 + 16) = v88;
    return 1;
  }

  v74 = sub_1BD3EB154(a4, a5);
  v76 = v75;
  v78 = v77;
  a5, v75, v77, v79, v80, v81, v82, v83;
  if ((MEMORY[0x1BFB403F0](*(v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_maximumAmount), *(v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_maximumAmount + 8), *(v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_maximumAmount + 16), v74, v76, v78) & 1) == 0 && ((sub_1BE053414() & 1) == 0 || (sub_1BE053414() & 1) == 0))
  {
    v89 = v5 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_lastAmount;
    *v89 = v74;
    *(v89 + 8) = v76;
    *(v89 + 16) = v78;
    return 1;
  }

  CGAffineTransformMakeTranslation(&v90, 20.0, 0.0);
  [a1 setTransform_];
  v22 = objc_opt_self();
  v84 = swift_allocObject();
  *(v84 + 16) = a1;
  *&v90.tx = sub_1BD3ECD0C;
  *&v90.ty = v84;
  *&v90.a = MEMORY[0x1E69E9820];
  *&v90.b = 1107296256;
  v24 = &block_descriptor_80;
LABEL_4:
  *&v90.c = sub_1BD126964;
  *&v90.d = v24;
  v25 = _Block_copy(&v90);
  ty = v90.ty;
  v27 = a1;
  *&ty, v28, v29, v30, v31, v32, v33, v34;
  [v22 animateWithDuration:0 delay:v25 usingSpringWithDamping:0 initialSpringVelocity:0.2 options:0.0 animations:1.1 completion:{1.0, *&v90.a}];
  _Block_release(v25);
  return 0;
}

uint64_t sub_1BD3EB154(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  sub_1BD3EBC7C(a1, a2);
  v8 = v7;
  v9 = sub_1BE04B0F4();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_1BE053434();
  v11 = v10;
  v8, v12, v10, v13, v14, v15, v16, v17;
  sub_1BD0DE53C(v6, &qword_1EBD450F0, &unk_1BE0B8510);
  if ((v11 & 0x100000000) != 0)
  {
    MEMORY[0x1BFB403C0](0);
  }

  v18 = sub_1BD3EA308();
  [v18 maximumFractionDigits];

  MEMORY[0x1BFB403C0](10);
  sub_1BE04AA74();
  return sub_1BE053354();
}

void sub_1BD3EB3A0()
{
  v1 = [v0 inputDelegate];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3)
  {
LABEL_30:
    swift_unknownObjectRelease();
    return;
  }

  v4 = v3;
  v5 = (*(v53 + OBJC_IVAR____TtCV9PassKitUIP33_9DF5EB707CF8ADE05C1E2D1C73483CEC23CurrencyAmountTextField15AmountTextField_loadSuggestions))();
  if (!v5)
  {
LABEL_29:
    [v4 setSuggestions_];
    goto LABEL_30;
  }

  v13 = v5;
  v54 = MEMORY[0x1E69E7CC0];
  v14 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!(v5 >> 62))
  {
    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = sub_1BE053704();
  if (!v15)
  {
LABEL_23:
    v35 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v13, v6, v7, v8, v9, v10, v11, v12;
    if (v35 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_26;
      }
    }

    else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      sub_1BD0E5E8C(0, &qword_1EBD450E8, 0x1E69DD158);
      v43 = sub_1BE052724();
      v35, v44, v45, v46, v47, v48, v49, v50;
      [v4 setSuggestions_];
      swift_unknownObjectRelease();

      return;
    }

    v35, v36, v37, v38, v39, v40, v41, v42;
    goto LABEL_29;
  }

LABEL_6:
  v51 = v4;
  v52 = v2;
  v4 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1BFB40900](v4, v13);
    }

    else
    {
      if (v4 >= *(v14 + 16))
      {
        goto LABEL_21;
      }

      v16 = *(v13 + 8 * v4 + 32);
    }

    v17 = v16;
    v2 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v18 = [v16 value];
    if (!v18)
    {
      break;
    }

    v19 = v18;
    sub_1BE0533F4();

    v20 = sub_1BD3EA308();
    v21 = sub_1BE053344();
    v22 = [v20 stringForObjectValue_];

    if (v22)
    {
      sub_1BE052434();
      v24 = v23;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = sub_1BE052404();
    v24, v26, v27, v28, v29, v30, v31, v32;
    v33 = [objc_opt_self() textSuggestionWithInputText_];

    v34 = [v17 displayValue];
    [v33 setDisplayText_];

    MEMORY[0x1BFB3F7A0]();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    ++v4;
    if (v2 == v15)
    {
      v35 = v54;
      v4 = v51;
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t initializeWithCopy for PaymentRewardsAmountModel.CurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  sub_1BE048C84();
  return a1;
}

uint64_t assignWithCopy for PaymentRewardsAmountModel.CurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return a1;
}

uint64_t assignWithTake for PaymentRewardsAmountModel.CurrencyAmount(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v9 = *(a2 + 32);
  v10 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v9;
  v10, a2, a3, a4, a5, a6, a7, a8;
  return a1;
}

uint64_t getEnumTagSinglePayload for PaymentRewardsAmountModel.CurrencyAmount(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentRewardsAmountModel.CurrencyAmount(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1BD3EB920()
{
  result = qword_1EBD45068;
  if (!qword_1EBD45068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45068);
  }

  return result;
}

uint64_t sub_1BD3EB974(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = *(a1 + 4);
  *a2 = v3;
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  sub_1BE048C84();
  return a2;
}

uint64_t sub_1BD3EBA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3ECC64();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD3EBAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3ECC64();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD3EBB50(uint64_t a1)
{
  sub_1BD3ECC64();
  sub_1BE04F964();
  __break(1u);
}

double sub_1BD3EBB78@<D0>(uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v23);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  v21 = v24;
  result = *&v23;
  *a4 = v23;
  *(a4 + 16) = v21;
  return result;
}

uint64_t sub_1BD3EBC04(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD3EBC7C(uint64_t a1, void *a2)
{
  sub_1BE048C84();
  v2 = sub_1BE052594();
  if (v3)
  {
    v10 = v2;
    v11 = v3;
    do
    {
      sub_1BE0522A4();
      if ((v13 & 1) == 0)
      {
        MEMORY[0x1BFB3F600](v10, v11);
      }

      v11, v13, v14, v15, v16, v17, v18, v19;
      v10 = sub_1BE052594();
      v11 = v12;
    }

    while (v12);
  }

  a2, 0, v4, v5, v6, v7, v8, v9;
  return 0;
}

id sub_1BD3EBD48()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

uint64_t sub_1BD3EBD88()
{
  v1 = sub_1BD3EA308();
  v2 = sub_1BE053344();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [v0 text];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = sub_1BE052434();
  v11 = v10;

  if (v4 == v9 && v6 == v11)
  {
    v6, v12, v13, v14, v15, v16, v17, v18;
    v35 = v11;
    goto LABEL_13;
  }

  v20 = sub_1BE053B84();
  v11, v21, v22, v23, v24, v25, v26, v27;
  if ((v20 & 1) == 0)
  {
LABEL_11:
    v36 = sub_1BE052404();
    v6, v37, v38, v39, v40, v41, v42, v43;
    [v0 setText_];

    goto LABEL_14;
  }

  v35 = v6;
LABEL_13:
  v35, v28, v29, v30, v31, v32, v33, v34;
LABEL_14:
  if ([v0 inputDelegate])
  {
    v44 = swift_dynamicCastObjCProtocolConditional();
    if (v44)
    {
      [v44 setSuggestions_];
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_1BD3EBF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD3EBFD0(uint64_t a1)
{
  sub_1BD3EC09C(319, &qword_1EBD45140, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BD3EC100(319);
    if (v2 <= 0x3F)
    {
      sub_1BD3EC194(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD3EC09C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD3EC100(uint64_t a1)
{
  if (!qword_1EBD45148)
  {
    type metadata accessor for PaymentRewardsAmountModel(255);
    sub_1BD3EBF40(&unk_1EBD45150, type metadata accessor for PaymentRewardsAmountModel, &unk_1BE0D3C30);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD45148);
    }
  }
}

void sub_1BD3EC194(uint64_t a1)
{
  if (!qword_1EBD39358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45160, &qword_1BE0C25A0);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD39358);
    }
  }
}

unint64_t sub_1BD3EC21C()
{
  result = qword_1EBD45188;
  if (!qword_1EBD45188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45180, &qword_1BE0D3DA0);
    sub_1BD3EC2A8();
    sub_1BD3EC2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45188);
  }

  return result;
}

unint64_t sub_1BD3EC2A8()
{
  result = qword_1EBD45190;
  if (!qword_1EBD45190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45190);
  }

  return result;
}

unint64_t sub_1BD3EC2FC()
{
  result = qword_1EBD45198;
  if (!qword_1EBD45198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45198);
  }

  return result;
}

unint64_t sub_1BD3EC358()
{
  result = qword_1EBD451B8;
  if (!qword_1EBD451B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451B8);
  }

  return result;
}

unint64_t sub_1BD3EC3AC()
{
  result = qword_1EBD451C8;
  if (!qword_1EBD451C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD451B0, &unk_1BE0D3DB0);
    sub_1BD10CC54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451C8);
  }

  return result;
}

unint64_t sub_1BD3EC438()
{
  result = qword_1EBD451F0;
  if (!qword_1EBD451F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B348, &qword_1BE0BC4C0);
    sub_1BD35CEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451F0);
  }

  return result;
}

uint64_t sub_1BD3EC4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3EC520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3EC584()
{
  v1 = *(type metadata accessor for PaymentPassHubRewardsApplyView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE04AA64() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD3E2918(v0 + v2, v5);
}

unint64_t sub_1BD3EC708()
{
  result = qword_1EBD45310;
  if (!qword_1EBD45310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45310);
  }

  return result;
}

void destroy for CurrencyAmountTextField(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 8), v9, v10, v11, v12, v13, v14, v15;
  *(a1 + 88), v16, v17, v18, v19, v20, v21, v22;

  v30 = *(a1 + 112);

  v30, v23, v24, v25, v26, v27, v28, v29;
}

uint64_t initializeWithCopy for CurrencyAmountTextField(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  v6 = v5;
  sub_1BE048C84();
  return a1;
}

uint64_t assignWithCopy for CurrencyAmountTextField(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_1BE048964();
  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_1BE048964();
  v12, v13, v14, v15, v16, v17, v18, v19;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 54) = *(a2 + 54);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 70) = *(a2 + 70);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 80) = *(a2 + 80);
  v20 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  sub_1BE048C84();
  v20, v21, v22, v23, v24, v25, v26, v27;
  *(a1 + 96) = *(a2 + 96);
  v28 = *(a2 + 104);
  v29 = *(a1 + 104);
  *(a1 + 104) = v28;
  v30 = v28;

  v31 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  sub_1BE048C84();
  v31, v32, v33, v34, v35, v36, v37, v38;
  return a1;
}

uint64_t assignWithTake for CurrencyAmountTextField(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = *(a1 + 8);
  *a1 = *a2;
  v10, v11, v12, v13, v14, v15, v16, v17;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  v18 = *(a2 + 88);
  v19 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v18;
  v19, v20, v21, v22, v23, v24, v25, v26;
  *(a1 + 96) = *(a2 + 96);

  v27 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  v27, v28, v29, v30, v31, v32, v33, v34;
  return a1;
}

unint64_t sub_1BD3ECB34()
{
  result = qword_1EBD453A8;
  if (!qword_1EBD453A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45260, &qword_1BE0D3FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45250, &qword_1BE0D3FA0);
    sub_1BD0DE4F4(&qword_1EBD45270, &qword_1EBD45250, &qword_1BE0D3FA0, MEMORY[0x1E697BF80]);
    swift_getOpaqueTypeConformance2();
    sub_1BD3EBF40(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD453A8);
  }

  return result;
}

unint64_t sub_1BD3ECC64()
{
  result = qword_1EBD453C0;
  if (!qword_1EBD453C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD453C0);
  }

  return result;
}

void sub_1BD3ECD44(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD45478, &qword_1EBD45480, &unk_1BE0B8C30);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD45488, &qword_1EBD45490, &qword_1BE0D41D0);
    if (v2 <= 0x3F)
    {
      sub_1BD3EF498(319);
      if (v3 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD454A0, &qword_1EBD454A8, &qword_1BE0D41D8);
        if (v4 <= 0x3F)
        {
          sub_1BD0E4578(319, &qword_1EBD454B0, &qword_1EBD454B8, &qword_1BE0D41E0);
          if (v5 <= 0x3F)
          {
            sub_1BD3EF4F0();
            if (v6 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

double sub_1BD3ECFB8@<D0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v21);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v22;
  result = *v21;
  v20 = v21[1];
  *a1 = v21[0];
  *(a1 + 16) = v20;
  *(a1 + 32) = v18;
  return result;
}

uint64_t sub_1BD3ED050(uint64_t a1, uint64_t *a2)
{
  v3 = _s11BillPaymentVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1BD3EFBC0(a1, &v10 - v7, _s11BillPaymentVMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD3EFBC0(v8, v5, _s11BillPaymentVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD3EFB60(v8, _s11BillPaymentVMa);
}

double sub_1BD3ED180@<D0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v22);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v23;
  result = *v22;
  v20 = v22[1];
  v21 = v22[2];
  *a1 = v22[0];
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  *(a1 + 48) = v18;
  return result;
}

uint64_t sub_1BD3ED20C()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

id sub_1BD3ED280(uint64_t a1)
{
  v142 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v122 = &v122 - v2;
  v131 = _s11BillPaymentVMa(0);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v129 = (&v122 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F8, &qword_1BE0D4290);
  v140 = *(v6 - 1);
  v141 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v139 = &v122 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F0, &qword_1BE0D4288);
  v137 = *(v8 - 8);
  v138 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v122 - v9;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454A8, &qword_1BE0D41D8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v122 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E0, &qword_1BE0D4278);
  v143 = *(v13 - 1);
  v144 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0, &qword_1BE0D4270);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v122 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v122 - v23);
  v25 = qword_1EBD45430;
  v26 = type metadata accessor for PeerPaymentModel(0);
  (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  sub_1BD0DE19C(v24, v21, &qword_1EBD45480, &unk_1BE0B8C30);
  v124 = v21;
  v125 = v19;
  sub_1BE04D874();
  sub_1BD0DE53C(v24, &qword_1EBD45480, &unk_1BE0B8C30);
  v126 = v16;
  v127 = v15;
  v27 = *(v16 + 32);
  v123 = v25;
  v28 = v145;
  v27(v145 + v25, v18, v15);
  v29 = qword_1EBD45438;
  v154 = 1uLL;
  v155 = 0uLL;
  LOBYTE(v156) = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45490, &qword_1BE0D41D0);
  v31 = v132;
  v128 = v30;
  sub_1BE04D874();
  (*(v143 + 32))(v28 + v29, v31, v144);
  v32 = qword_1EBD45448;
  v33 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
  v34 = v133;
  (*(*(v33 - 8) + 56))(v133, 1, 1, v33);
  sub_1BD0DE19C(v34, v134, &qword_1EBD454A8, &qword_1BE0D41D8);
  v35 = v136;
  sub_1BE04D874();
  sub_1BD0DE53C(v34, &qword_1EBD454A8, &qword_1BE0D41D8);
  (*(v137 + 32))(v28 + v32, v35, v138);
  v36 = qword_1EBD45450;
  v157 = 0;
  v155 = 0u;
  v156 = 0u;
  v154 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454B8, &qword_1BE0D41E0);
  v37 = v139;
  sub_1BE04D874();
  (*(v140 + 32))(v28 + v36, v37, v141);
  v38 = v28 + qword_1EBDAB040;
  *v38 = 0;
  *(v38 + 8) = 1;
  v140 = qword_1EBDAB050;
  *(v28 + qword_1EBDAB050) = 0;
  v39 = *(v142 + 32);
  result = [v39 paymentRequest];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v41 = result;
  v42 = [result requestType];

  v43 = v145;
  *(v145 + qword_1EBDAB030) = v42;
  v44 = v39;
  sub_1BD56ED40(v44, v24);
  v45 = v123;
  swift_beginAccess();
  (*(v126 + 8))(v43 + v45, v127);
  sub_1BD0DE19C(v24, v124, &qword_1EBD45480, &unk_1BE0B8C30);
  sub_1BE04D874();
  v141 = v24;
  sub_1BD0DE53C(v24, &qword_1EBD45480, &unk_1BE0B8C30);
  swift_endAccess();
  v46 = v44;
  sub_1BD83A564(v46, &v151);
  v161 = v151;
  v162 = v151;
  v159 = *(&v152 + 1);
  v160 = v152;
  v163 = v152;
  v164 = v153;
  swift_beginAccess();
  sub_1BD0DE19C(&v161, &v154, &qword_1EBD45518, &qword_1BE0D4480);
  sub_1BD0DE19C(&v160, &v154, &unk_1EBD45520, &qword_1BE0D4488);
  sub_1BD0DE19C(&v159, &v154, &unk_1EBD45520, &qword_1BE0D4488);
  (*(v143 + 8))(v43 + v29, v144);
  v154 = v162;
  v155 = v163;
  LOBYTE(v156) = v164;
  sub_1BD0DE19C(&v161, v150, &qword_1EBD45518, &qword_1BE0D4480);
  sub_1BD0DE19C(&v160, v150, &unk_1EBD45520, &qword_1BE0D4488);
  sub_1BD0DE19C(&v159, v150, &unk_1EBD45520, &qword_1BE0D4488);
  sub_1BE04D874();
  swift_endAccess();
  v47 = v46;
  v48 = v129;
  sub_1BD36F228(v47, v129);
  swift_beginAccess();
  sub_1BD3EFBC0(v48, v130, _s11BillPaymentVMa);
  sub_1BE04D874();
  sub_1BD3EFB60(v48, _s11BillPaymentVMa);
  swift_endAccess();
  result = [v47 paymentRequest];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v49 = result;
  v50 = [result accountServiceTransferRequest];

  if (v50)
  {
    v51 = [v50 transferType];
    v52 = v145;
    *(v145 + qword_1EBDAB038) = v51;
    v53 = [v50 account];
    v54 = objc_allocWithZone(type metadata accessor for AccountModel(0));
    v55 = sub_1BD1DF0D8(v53, 0);
    v56 = *(v52 + v140);
    *(v52 + v140) = v55;

    *v38 = [v50 initialAction];
    *(v38 + 8) = 0;
    LOBYTE(v53) = [v50 userWasShownAPCTransferSpeed];

    *(v52 + qword_1EBDAB048) = v53;
  }

  else
  {
    v57 = v145;
    *(v145 + qword_1EBDAB038) = 0;
    *v38 = 0;
    *(v38 + 8) = 1;
    *(v57 + qword_1EBDAB048) = 0;
  }

  v58 = type metadata accessor for Passes(0);
  v59 = v122;
  (*(*(v58 - 8) + 56))(v122, 1, 1, v58);
  sub_1BD0DE19C(&v161, &v154, &qword_1EBD45518, &qword_1BE0D4480);
  sub_1BD0DE19C(&v160, &v154, &unk_1EBD45520, &qword_1BE0D4488);
  sub_1BD0DE19C(&v159, &v154, &unk_1EBD45520, &qword_1BE0D4488);
  v60 = sub_1BD7D51F4(v59, &v162, 0);
  swift_beginAccess();
  *&v146 = v60;
  sub_1BE04D874();
  swift_endAccess();
  v61 = v142;
  v62 = *v142;
  v150[0] = *(v142 + 8);
  v158 = *(v142 + 24);
  v63 = *(v142 + 40);
  v64 = v47;
  v65 = v62;
  v144 = v65;
  sub_1BD0DE19C(v150, &v154, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v158, &v154, &qword_1EBD40150, &qword_1BE0C12A0);
  sub_1BE048964();
  v66 = sub_1BD46A578(v61);

  sub_1BD0DE53C(v150, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(&v158, &qword_1EBD40150, &qword_1BE0C12A0);
  v63, v67, v68, v69, v70, v71, v72, v73;

  KeyPath = swift_getKeyPath();
  v75 = swift_getKeyPath();
  swift_retain_n();
  v76 = v64;
  v77 = v141;
  sub_1BE04D8B4(v141);
  KeyPath, v78, v79, v80, v81, v82, v83, v84;
  v75, v85, v86, v87, v88, v89, v90, v91;
  sub_1BD28B71C(v76, v77, &v162, &v154);
  swift_getKeyPath();
  swift_getKeyPath();
  v146 = v154;
  v147 = v155;
  v148 = v156;
  v149 = v157;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD3EE028();
  v92 = swift_allocObject();
  swift_weakInit();
  v66, v93, v94, v95, v96, v97, v98, v99;
  *&v148 = sub_1BD3EFD18;
  *(&v148 + 1) = v92;
  *&v146 = MEMORY[0x1E69E9820];
  *(&v146 + 1) = 1107296256;
  *&v147 = sub_1BD126964;
  *(&v147 + 1) = &block_descriptor_85;
  v100 = _Block_copy(&v146);
  *(&v148 + 1), v101, v102, v103, v104, v105, v106, v107;
  [v76 setUpdateHandler_];
  _Block_release(v100);
  sub_1BD0DE53C(&v161, &qword_1EBD45518, &qword_1BE0D4480);
  sub_1BD0DE53C(&v160, &unk_1EBD45520, &qword_1BE0D4488);
  sub_1BD0DE53C(&v159, &unk_1EBD45520, &qword_1BE0D4488);

  sub_1BD0DE53C(v150, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(&v158, &qword_1EBD40150, &qword_1BE0C12A0);
  v66, v108, v109, v110, v111, v112, v113, v114;
  v63, v115, v116, v117, v118, v119, v120, v121;

  return v66;
}

uint64_t sub_1BD3EE028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510, &qword_1BE0D4430);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v55 - v1;
  v57 = _s11BillPaymentVMa(0);
  MEMORY[0x1EEE9AC00](v57);
  v4 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = _s15PaymentDateInfoVMa(0);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454A8, &qword_1BE0D41D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v55 - v11);
  v13 = type metadata accessor for PeerPaymentModel(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  sub_1BE04D8B4(v12);
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v18, v26, v27, v28, v29, v30, v31, v32;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD45480, &unk_1BE0B8C30);
  }

  else
  {
    sub_1BD3EFAF8(v12, v16, type metadata accessor for PeerPaymentModel);
    if ((v16[*(v13 + 52)] & 1) == 0 && v16[*(v13 + 48)] == 1)
    {
      v52 = type metadata accessor for PeerPaymentModel;
      v53 = v60;
      sub_1BD3EFBC0(v16, v60, type metadata accessor for PeerPaymentModel);
      v54 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
      goto LABEL_10;
    }

    sub_1BD3EFB60(v16, type metadata accessor for PeerPaymentModel);
  }

  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  sub_1BE04D8B4(v4);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v34, v42, v43, v44, v45, v46, v47, v48;
  sub_1BD0DE19C(v4 + *(v57 + 24), v2, &qword_1EBD45510, &qword_1BE0D4430);
  sub_1BD3EFB60(v4, _s11BillPaymentVMa);
  if ((*(v56 + 48))(v2, 1, v58) == 1)
  {
    sub_1BD0DE53C(v2, &qword_1EBD45510, &qword_1BE0D4430);
    v49 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
    v50 = v60;
    (*(*(v49 - 8) + 56))(v60, 1, 1, v49);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v50, v59, &qword_1EBD454A8, &qword_1BE0D41D8);
    sub_1BE048964();
    sub_1BE04D8C4();
    return sub_1BD0DE53C(v50, &qword_1EBD454A8, &qword_1BE0D41D8);
  }

  v16 = v55;
  sub_1BD3EFAF8(v2, v55, _s15PaymentDateInfoVMa);
  v52 = _s15PaymentDateInfoVMa;
  v53 = v60;
  sub_1BD3EFBC0(v16, v60, _s15PaymentDateInfoVMa);
  v54 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v53, v59, &qword_1EBD454A8, &qword_1BE0D41D8);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD0DE53C(v53, &qword_1EBD454A8, &qword_1BE0D41D8);
  return sub_1BD3EFB60(v16, v52);
}

void sub_1BD3EE6AC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD3EE704();
    v2, v3, v4, v5, v6, v7, v8, v9;
  }
}

void sub_1BD3EE704()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v82 = &v80 - v2;
  v3 = _s11BillPaymentVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v80 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v80 - v12);
  v14 = *(v0 + qword_1EBDAAD68 + 24);
  v15 = *(v0 + qword_1EBDAAD68 + 32);
  v16 = v14;
  v17 = v15;
  sub_1BD2B1238(v17, v14, &v89);
  v18 = v90;
  if (v90)
  {
    v19 = v89;
    v20 = sub_1BD1C2B14();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v18;
    v22 = v92;
    *(v21 + 32) = v91;
    *(v21 + 48) = v22;
    v23 = &type metadata for AuthorizationError;
  }

  else
  {
    v21 = 0;
    v23 = 0;
    v20 = 0;
    *(&v95 + 1) = 0;
    *&v96 = 0;
  }

  *&v95 = v21;
  *(&v96 + 1) = v23;
  *&v97 = v20;
  sub_1BE04C8F4();
  v24 = v17;
  sub_1BD56ED40(v24, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v13, v10, &qword_1EBD45480, &unk_1BE0B8C30);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD0DE53C(v13, &qword_1EBD45480, &unk_1BE0B8C30);
  v25 = v24;
  sub_1BD83A564(v25, v93);
  v26 = v94;
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v93[1];
  v95 = v93[0];
  LOBYTE(v97) = v26;
  sub_1BE048964();
  sub_1BE04D8C4();
  v27 = v25;
  sub_1BD36F228(v27, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD3EFBC0(v7, v81, _s11BillPaymentVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD3EFB60(v7, _s11BillPaymentVMa);
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = v27;
  sub_1BE04D8B4(v13);
  KeyPath, v31, v32, v33, v34, v35, v36, v37;
  v29, v38, v39, v40, v41, v42, v43, v44;
  v45 = swift_getKeyPath();
  v46 = swift_getKeyPath();
  sub_1BE04D8B4(&v95);
  v45, v47, v48, v49, v50, v51, v52, v53;
  v46, v54, v55, v56, v57, v58, v59, v60;
  v99[0] = v95;
  v99[1] = v96;
  v100 = v97;
  sub_1BD28B71C(v30, v13, v99, &v95);
  swift_getKeyPath();
  swift_getKeyPath();
  v85 = v95;
  v86 = v96;
  v87 = v97;
  v88 = v98;
  sub_1BE048964();
  sub_1BE04D8C4();
  v61 = type metadata accessor for Passes(0);
  v62 = v82;
  (*(*(v61 - 8) + 56))(v82, 1, 1, v61);
  v63 = swift_getKeyPath();
  v64 = swift_getKeyPath();
  sub_1BE04D8B4(v83);
  v63, v65, v66, v67, v68, v69, v70, v71;
  v64, v72, v73, v74, v75, v76, v77, v78;
  v85 = v83[0];
  v86 = v83[1];
  LOBYTE(v87) = v84;
  v79 = sub_1BD7D51F4(v62, &v85, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v83[0] = v79;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD3EE028();
}

void sub_1BD3EEC78(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v21 = *(a1 + 24);
  v22 = v3;
  v5 = (v1 + qword_1EBDAAD68);
  v6 = *(v1 + qword_1EBDAAD68);
  v7 = *(v1 + qword_1EBDAAD68 + 24);
  v8 = *(v1 + qword_1EBDAAD68 + 32);
  v9 = *(v1 + qword_1EBDAAD68 + 40);
  v10 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v10;
  v5[2] = *(a1 + 32);
  v11 = v2;
  sub_1BD0DE19C(&v22, v20, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v21, v20, &qword_1EBD40150, &qword_1BE0C12A0);
  v12 = v4;
  sub_1BE048964();
  v9, v13, v14, v15, v16, v17, v18, v19;

  swift_unknownObjectRelease();
  sub_1BD3EE704();
}

void sub_1BD3EED58(void *a1)
{
  v3 = v1 + qword_1EBDAAD68;
  v4 = [*(v1 + qword_1EBDAAD68 + 32) paymentRequest];
  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [v4 bankAccounts];

  if (v6)
  {

    v7 = [*(v3 + 32) paymentRequest];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 bankAccounts];
      if (v9)
      {
        v10 = v9;
        sub_1BD3EFD20();
        v11 = sub_1BE052744();

        v12 = a1;
        MEMORY[0x1BFB3F7A0]();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        if (v11)
        {
          v13 = sub_1BE052724();
          v11, v14, v15, v16, v17, v18, v19, v20;
        }

        else
        {
          v13 = 0;
        }

        [v8 setBankAccounts_];

        goto LABEL_13;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = [*(v3 + 32) paymentRequest];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BE0B7020;
  *(v23 + 32) = a1;
  sub_1BD3EFD20();
  v24 = a1;
  v25 = sub_1BE052724();
  v23, v26, v27, v28, v29, v30, v31, v32;
  [v22 setBankAccounts_];

LABEL_13:
  [*(v3 + 32) setBankAccount_];

  sub_1BD3EE704();
}

void sub_1BD3EEFB4()
{
  v1 = qword_1EBD45430;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0, &qword_1BE0D4270);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD45438;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E0, &qword_1BE0D4278);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1EBD45440;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E8, &qword_1BE0D4280);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = qword_1EBD45448;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F0, &qword_1BE0D4288);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = qword_1EBD45450;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F8, &qword_1BE0D4290);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = qword_1EBD45458;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45500, &qword_1BE0D4298);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + qword_1EBDAB050);
}

uint64_t sub_1BD3EF1B4()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140, &unk_1BE0D42A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EBDAAD68);
  v4 = *(v0 + qword_1EBDAAD68 + 24);
  v5 = *(v0 + qword_1EBDAAD68 + 32);
  *(v0 + qword_1EBDAAD68 + 40), v6, v7, v8, v9, v10, v11, v12;

  swift_unknownObjectRelease();
  v13 = qword_1EBD45430;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0, &qword_1BE0D4270);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = qword_1EBD45438;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E0, &qword_1BE0D4278);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = qword_1EBD45440;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454E8, &qword_1BE0D4280);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = qword_1EBD45448;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F0, &qword_1BE0D4288);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = qword_1EBD45450;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454F8, &qword_1BE0D4290);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = qword_1EBD45458;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45500, &qword_1BE0D4298);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);

  return v0;
}

uint64_t sub_1BD3EF444()
{
  sub_1BD3EF1B4();

  return swift_deallocClassInstance();
}

void sub_1BD3EF498(uint64_t a1)
{
  if (!qword_1EBD45498)
  {
    _s11BillPaymentVMa(255);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD45498);
    }
  }
}

void sub_1BD3EF4F0()
{
  if (!qword_1EBD454C0)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD454C0);
    }
  }
}

uint64_t sub_1BD3EF568(uint64_t a1)
{
  result = type metadata accessor for PeerPaymentModel(319);
  if (v2 <= 0x3F)
  {
    result = _s15PaymentDateInfoVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_1BD3EF614@<D0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v22);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v23;
  result = *v22;
  v21 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v21;
  *(a2 + 32) = v19;
  return result;
}

uint64_t sub_1BD3EF69C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD3EFC88(v2, v3, v4, v5);
  return sub_1BE04D8C4();
}

void sub_1BD3EF748(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD3EF7C8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

double sub_1BD3EF844@<D0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v23);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v24;
  result = *v23;
  v21 = v23[1];
  v22 = v23[2];
  *a2 = v23[0];
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 48) = v19;
  return result;
}

uint64_t sub_1BD3EF8D4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD3EFC28(v2, v3, v4, v5, v6, v7, v8);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD3EF9D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - v15;
  sub_1BD0DE19C(a1, &v18 - v15, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v16, v13, a5, a6);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v16, a5, a6);
}

uint64_t sub_1BD3EFAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3EFB60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD3EFBC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1BD3EFC28(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v7 = result;
    sub_1BE048C84();
    v8 = v7;
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

void *sub_1BD3EFC88(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    sub_1BD3EFCD8(result, a2);
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

id sub_1BD3EFCD8(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

unint64_t sub_1BD3EFD20()
{
  result = qword_1EBD45530;
  if (!qword_1EBD45530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45530);
  }

  return result;
}

void *sub_1BD3EFD6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 >> 62)
  {
    v9 = sub_1BE053704();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1BD531978(0, (v9 & ~(v9 >> 63)), 0, a4, a5, a6, a7, a8);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v35;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x1BFB40900](v12, a1);
        v20 = *(v35 + 16);
        v19 = *(v35 + 24);
        if (v20 >= v19 >> 1)
        {
          v22 = v13;
          sub_1BD531978((v19 > 1), (v20 + 1), 1, v14, v15, v16, v17, v18);
          v13 = v22;
        }

        ++v12;
        *(v35 + 16) = v20 + 1;
        v21 = v35 + 16 * v20;
        *(v21 + 32) = v13;
        *(v21 + 40) = &off_1F3B97A98;
      }

      while (v9 != v12);
    }

    else
    {
      v23 = (a1 + 32);
      do
      {
        v24 = *(v35 + 16);
        v25 = *(v35 + 24);
        v26 = *v23;
        if (v24 >= v25 >> 1)
        {
          v33 = v25 > 1;
          v34 = v26;
          sub_1BD531978(v33, (v24 + 1), 1, v27, v28, v29, v30, v31);
          v26 = v34;
        }

        *(v35 + 16) = v24 + 1;
        v32 = v35 + 16 * v24;
        *(v32 + 32) = v26;
        *(v32 + 40) = &off_1F3B97A98;
        ++v23;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3EFEF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v4 = a1 + 32;
    do
    {
      sub_1BE053794();
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_1BD3EFFDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v4 = a1 + 32;
    do
    {
      sub_1BD038CD0(v4, &v5);
      sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
      swift_dynamicCast();
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_1BD3F00D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
      swift_dynamicCast();
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void *sub_1BD3F01E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 >> 62)
  {
    v9 = sub_1BE053704();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v33 = MEMORY[0x1E69E7CC0];
  result = sub_1BD531AC4(0, (v9 & ~(v9 >> 63)), 0, a4, a5, a6, a7, a8);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v33;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = MEMORY[0x1BFB40900](i, a1);
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          v21 = v13;
          sub_1BD531AC4((v19 > 1), (v20 + 1), 1, v14, v15, v16, v17, v18);
          v13 = v21;
        }

        *(v33 + 16) = v20 + 1;
        *(v33 + 8 * v20 + 32) = v13;
      }
    }

    else
    {
      v22 = (a1 + 32);
      do
      {
        v23 = *(v33 + 16);
        v24 = *(v33 + 24);
        v25 = *v22;
        if (v23 >= v24 >> 1)
        {
          v31 = v24 > 1;
          v32 = v25;
          sub_1BD531AC4(v31, (v23 + 1), 1, v26, v27, v28, v29, v30);
          v25 = v32;
        }

        *(v33 + 16) = v23 + 1;
        *(v33 + 8 * v23 + 32) = v25;
        ++v22;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

char *sub_1BD3F0374(unint64_t a1, unint64_t *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 >> 62)
  {
    v11 = sub_1BE053704();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1BD5319DC(0, v11 & ~(v11 >> 63), 0, a4, a5, a6, a7, a8);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v32;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v11; ++i)
      {
        MEMORY[0x1BFB40900](i, a1);
        sub_1BD0E5E8C(0, a2, a3);
        swift_dynamicCast();
        v32 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1BD5319DC((v20 > 1), v21 + 1, 1, v15, v16, v17, v18, v19);
          v12 = v32;
        }

        *(v12 + 16) = v21 + 1;
        sub_1BD1B6140(v31, (v12 + 32 * v21 + 32));
      }
    }

    else
    {
      v22 = (a1 + 32);
      sub_1BD0E5E8C(0, a2, a3);
      do
      {
        v23 = *v22;
        swift_dynamicCast();
        v32 = v12;
        v30 = *(v12 + 16);
        v29 = *(v12 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1BD5319DC((v29 > 1), v30 + 1, 1, v24, v25, v26, v27, v28);
          v12 = v32;
        }

        *(v12 + 16) = v30 + 1;
        sub_1BD1B6140(v31, (v12 + 32 * v30 + 32));
        ++v22;
        --v11;
      }

      while (v11);
    }

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3F05C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1BD5323F8(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40A30, &unk_1BE0C8990);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB70, &qword_1BE0D4600);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BD5323F8((v5 > 1), (v6 + 1), 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1BD3F06F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 >> 62)
  {
    v9 = sub_1BE053704();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1BD5319DC(0, v9 & ~(v9 >> 63), 0, a4, a5, a6, a7, a8);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v30;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        MEMORY[0x1BFB40900](i, a1);
        type metadata accessor for _AllowedValue();
        swift_dynamicCast();
        v30 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1BD5319DC((v18 > 1), v19 + 1, 1, v13, v14, v15, v16, v17);
          v10 = v30;
        }

        *(v10 + 16) = v19 + 1;
        sub_1BD1B6140(v29, (v10 + 32 * v19 + 32));
      }
    }

    else
    {
      v20 = (a1 + 32);
      type metadata accessor for _AllowedValue();
      do
      {
        v21 = *v20;
        swift_dynamicCast();
        v30 = v10;
        v28 = *(v10 + 16);
        v27 = *(v10 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1BD5319DC((v27 > 1), v28 + 1, 1, v22, v23, v24, v25, v26);
          v10 = v30;
        }

        *(v10 + 16) = v28 + 1;
        sub_1BD1B6140(v29, (v10 + 32 * v28 + 32));
        ++v20;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

void sub_1BD3F08C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1BE048964();
  v4(a2);

  v3, v5, v6, v7, v8, v9, v10, v11;
}

id WatchUICoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchUICoordinator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchUICoordinator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WatchUICoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchUICoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD3F0B18(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BD3F0B78(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____PKProvisioningWatchUICoordinator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD3F0C10;
}

void sub_1BD3F0C10(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
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

  free(v3);
}

void sub_1BD3F0C90()
{
  v0 = sub_1BE04C384();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04C3A4();
  if (v4[2])
  {
    v12 = v4;
    (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = sub_1BE04C354();
    (*(v1 + 8))(v3, v0);
    v21 = [v20 sid];

    sub_1BE052434();
  }

  else
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    __break(1u);
  }
}

id ProvisioningWatchUICoordinator.__allocating_init(setupContext:provisioningController:credential:)(uint64_t a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BD3F5998(a1, a2, a3);

  return v8;
}

id ProvisioningWatchUICoordinator.init(setupContext:provisioningController:credential:)(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1BD3F5998(a1, a2, a3);

  return v5;
}

id ProvisioningWatchUICoordinator.__allocating_init(manualEntrySetupContext:provisioningController:skipRequirements:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BD3F5D74(a1, a2, v4);

  return v8;
}

id ProvisioningWatchUICoordinator.init(manualEntrySetupContext:provisioningController:skipRequirements:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1BD3F5D74(a1, a2, a3);

  return v4;
}

id ProvisioningWatchUICoordinator.__deallocating_deinit()
{
  sub_1BD3F1DCC();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningWatchUICoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD3F10E4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel);
  *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel) = a1;
  v3 = a1;

  v4 = OBJC_IVAR____PKProvisioningWatchUICoordinator_composer;
  if (!*(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_composer))
  {
    sub_1BD3F170C();
    v5 = *(v1 + v4);
    *(v1 + v4) = v6;
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  v14 = *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError);
  *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError) = 0;

  v15 = *(v1 + v4);
  if (v15)
  {
    sub_1BE048964();
    sub_1BE04C094();

    v15, v16, v17, v18, v19, v20, v21, v22;
  }
}

void sub_1BD3F11EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE04D214();
  v106 = *(v8 - 8);
  v107 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04C384();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = 0;
  v109 = 0xE000000000000000;
  v15 = sub_1BE04C3A4();
  if (v15[2])
  {
    v23 = v15;
    (*(v12 + 16))(v14, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);
    v23, v24, v25, v26, v27, v28, v29, v30;
    sub_1BE053974();
    (*(v12 + 8))(v14, v11);
    v31 = v108;
    v32 = v109;
    sub_1BE04D0D4();
    v33 = v4;
    sub_1BE048C84();
    v105 = v10;
    v34 = sub_1BE04D204();
    v35 = sub_1BE052C54();
    v32, v36, v37, v38, v39, v40, v41, v42;

    if (os_log_type_enabled(v34, v35))
    {
      v43 = swift_slowAlloc();
      v103 = v31;
      v44 = v43;
      v104 = swift_slowAlloc();
      v108 = v104;
      *v44 = 136315394;
      sub_1BD3F0C90();
      v46 = v45;
      v48 = a1;
      v49 = a2;
      v50 = a3;
      v51 = sub_1BD123690(v47, v45, &v108);
      v46, v52, v53, v54, v55, v56, v57, v58;
      *(v44 + 4) = v51;
      a3 = v50;
      a2 = v49;
      a1 = v48;
      *(v44 + 12) = 2080;
      v59 = sub_1BD123690(v103, v32, &v108);
      v32, v60, v61, v62, v63, v64, v65, v66;
      *(v44 + 14) = v59;
      _os_log_impl(&dword_1BD026000, v34, v35, "[%s] Preflighting provisioning credential: %s", v44, 0x16u);
      v67 = v104;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v67, -1, -1);
      MEMORY[0x1BFB45F20](v44, -1, -1);
    }

    else
    {

      v32, v68, v69, v70, v71, v72, v73, v74;
    }

    (*(v106 + 8))(v105, v107);
    v75 = *&v33[OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel];
    *&v33[OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel] = a1;
    v76 = a1;

    sub_1BD3F170C();
    v78 = v77;
    v79 = *&v33[OBJC_IVAR____PKProvisioningWatchUICoordinator_composer];
    *&v33[OBJC_IVAR____PKProvisioningWatchUICoordinator_composer] = v77;
    sub_1BE048964();
    v79, v80, v81, v82, v83, v84, v85, v86;
    LOBYTE(v108) = 10;
    v87 = swift_allocObject();
    v87[2] = a2;
    v87[3] = a3;
    sub_1BE048964();
    sub_1BE04C0D4();
    v87, v88, v89, v90, v91, v92, v93, v94;
    v78, v95, v96, v97, v98, v99, v100, v101;
  }

  else
  {
    v15, v16, v17, v18, v19, v20, v21, v22;
    __break(1u);
  }
}

void sub_1BD3F170C()
{
  v1 = v0;
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  }

  v8 = *(v1 + OBJC_IVAR____PKProvisioningWatchUICoordinator_skipRequirements);
  v9 = v6;
  if (v8 == 1)
  {
    v18 = sub_1BD1D8324(0, 1, 1, MEMORY[0x1E69E7CC0], v10, v11, v12, v13);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1BD1D8324((v19 > 1), v20 + 1, 1, v18, v14, v15, v16, v17);
    }

    *(v18 + 2) = v20 + 1;
    v18[v20 + 32] = 10;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1BE04C3A4();
  if (v21[2])
  {
    v29 = v21;
    (*(v3 + 16))(v5, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
    v29, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD3F710C(&qword_1EBD456C8, v37, type metadata accessor for ProvisioningWatchUICoordinator, &protocol conformance descriptor for ProvisioningWatchUICoordinator);
    sub_1BE04BF34();
    v18, v38, v39, v40, v41, v42, v43, v44;
    (*(v3 + 8))(v5, v2);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE04C054();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE04C0B4();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BE04C044();
    v45, v46, v47, v48, v49, v50, v51, v52;
  }

  else
  {
    v21, v22, v23, v24, v25, v26, v27, v28;
    __break(1u);
  }
}

void sub_1BD3F1A20(unsigned __int8 *a1, int a2, uint64_t a3)
{
  LODWORD(v3) = a2;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1BE04D0D4();
    v12 = v11;
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v53 = v3;
      v3 = v15;
      v52 = swift_slowAlloc();
      v54[0] = v52;
      *v3 = 136315650;
      sub_1BD3F0C90();
      v17 = v16;
      v19 = sub_1BD123690(v18, v16, v54);
      v17, v20, v21, v22, v23, v24, v25, v26;
      *(v3 + 4) = v19;
      *(v3 + 12) = 2080;
      v27 = sub_1BE04B734();
      v29 = v28;
      v30 = sub_1BD123690(v27, v28, v54);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v3 + 14) = v30;
      *(v3 + 22) = 2080;
      if (v53)
      {
        v38 = 7562585;
      }

      else
      {
        v38 = 28494;
      }

      if (v53)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE200000000000000;
      }

      v40 = sub_1BD123690(v38, v39, v54);
      v39, v41, v42, v43, v44, v45, v46, v47;
      *(v3 + 24) = v40;
      _os_log_impl(&dword_1BD026000, v13, v14, "[%s] Transitioning to Step %s isRunning: %s", v3, 0x20u);
      v48 = v52;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v48, -1, -1);
      v49 = v3;
      LOBYTE(v3) = v53;
      MEMORY[0x1BFB45F20](v49, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    sub_1BD88BA18(v9, v54);
    if (LOBYTE(v54[0]) - 4 > 8)
    {
      v50 = 3;
    }

    else
    {
      v50 = qword_1BE0D4658[(LOBYTE(v54[0]) - 4)];
    }

    swift_beginAccess();
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      [v51 didTransitionTo:v50 loading:v3 & 1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD3F1D1C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BD3F220C(a2);
  }
}

void sub_1BD3F1D78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD3F2628();
  }
}

void sub_1BD3F1DCC()
{
  v1 = *(v0 + OBJC_IVAR____PKProvisioningWatchUICoordinator_composer);
  if (v1)
  {
    *(v0 + OBJC_IVAR____PKProvisioningWatchUICoordinator_composer) = 0;
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 1;
    v3 = [objc_opt_self() sharedApplication];
    v21[4] = sub_1BD3F70E8;
    v22 = v2;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_1BD126964;
    v21[3] = &block_descriptor_57_2;
    v4 = _Block_copy(v21);
    v5 = v22;
    sub_1BE048964();
    v5, v6, v7, v8, v9, v10, v11, v12;
    v13 = [v3 beginBackgroundTaskWithExpirationHandler_];
    _Block_release(v4);

    swift_beginAccess();
    *(v2 + 16) = v13;
    *(v2 + 24) = 0;
    sub_1BE048964();
    sub_1BE04C024();
    v1, v14, v15, v16, v17, v18, v19, v20;
  }
}

uint64_t sub_1BD3F1F58(void *a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v10 = sub_1BE052D54();
  aBlock[4] = sub_1BD3F7168;
  v22 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_60_1;
  v11 = _Block_copy(aBlock);
  v12 = v22;
  sub_1BE048964();
  v12, v13, v14, v15, v16, v17, v18, v19;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3F710C(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1BD3F220C(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = *&v1[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError];
    *&v1[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError] = a1;
    v63 = a1;

    if ([v63 severity] == 1)
    {
      v8 = v63;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BE0B98D0;
      v33 = *MEMORY[0x1E69BB6E0];
      v34 = *MEMORY[0x1E69BB6E8];
      *(v32 + 32) = *MEMORY[0x1E69BB6E0];
      *(v32 + 40) = v34;
      v35 = *MEMORY[0x1E69BB728];
      *(v32 + 48) = *MEMORY[0x1E69BB728];
      v36 = objc_opt_self();
      type metadata accessor for PKAnalyticsSubject(0);
      v37 = v33;
      v38 = v34;
      v39 = v35;
      v40 = sub_1BE052724();
      v32, v41, v42, v43, v44, v45, v46, v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      v49 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v50;
      v51 = v49;
      v52 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD3F710C(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
      v53 = sub_1BE052224();
      v52, v54, v55, v56, v57, v58, v59, v60;
      [v36 subjects:v40 sendEvent:v53];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong showWithProvisioningError_];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_1BE04D0D4();
    v9 = v1;
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v64 = v13;
      *v12 = 136315138;
      sub_1BD3F0C90();
      v15 = v14;
      v17 = sub_1BD123690(v16, v14, &v64);
      v15, v18, v19, v20, v21, v22, v23, v24;
      *(v12 + 4) = v17;
      _os_log_impl(&dword_1BD026000, v10, v11, "[%s] Step failed with nil error", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13, v25, v26, v27, v28, v29, v30, v31);
      MEMORY[0x1BFB45F20](v13, -1, -1);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_1BD3F2628()
{
  v1 = OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses;
  v2 = *&v0[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses];
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_22:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      v35 = *&v0[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError];
      if (v35)
      {
        v36 = *&v0[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError];
      }

      else
      {
        v36 = [objc_opt_self() userCancelError];
        v35 = 0;
      }

      v37 = v35;
      [v34 didFinishWithSuccessWithPasses:0 error:v36];

LABEL_27:
      swift_unknownObjectRelease();
    }

    return;
  }

LABEL_21:
  if (sub_1BE053704() < 1)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = *&v0[v1];
  v38 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    v4 = sub_1BE053704();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  v12 = 0;
  v0 = MEMORY[0x1E69E7CC0];
  while (v4 != v12)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB40900](v12, v3);
    }

    else
    {
      if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v13 = *(v3 + 8 * v12 + 32);
    }

    v14 = v13;
    v1 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v15 = [v13 secureElementPass];

    ++v12;
    if (v15)
    {
      MEMORY[0x1BFB3F7A0]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      v0 = v38;
      v12 = v1;
    }
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v24 = v16;
    sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
    v25 = sub_1BE052724();
    v0, v26, v27, v28, v29, v30, v31, v32;
    [v24 didFinishWithSuccessWithPasses:v25 error:0];

    goto LABEL_27;
  }

  v0, v17, v18, v19, v20, v21, v22, v23;
}

void ProvisioningWatchUICoordinator.handleLostModeResult(result:completion:)(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&aBlock[-1] - v12);
  sub_1BD3F0C90();
  if (!a1)
  {
    v15, v15, v16, v17, v18, v19, v20, v21;
    (*(v7 + 104))(v9, *MEMORY[0x1E69B8308], v6);
    sub_1BE04BF54();
    (*(v7 + 8))(v9, v6);
LABEL_7:
    a2(v13);
    (*(v11 + 8))(v13, v10);
    return;
  }

  if (a1 != 1)
  {
    v15, v15, v16, v17, v18, v19, v20, v21;
    *v13 = a1;
    (*(v11 + 104))(v13, *MEMORY[0x1E69B8168], v10);
    v43 = a1;
    goto LABEL_7;
  }

  v22 = v14;
  v23 = v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = a3;
    v33[4] = v22;
    v33[5] = v23;
    aBlock[4] = sub_1BD3F67FC;
    v46 = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3F08C0;
    aBlock[3] = &block_descriptor_86;
    v34 = _Block_copy(aBlock);
    v35 = v46;
    sub_1BE048964();
    v35, v36, v37, v38, v39, v40, v41, v42;
    [v32 presentExitLostModeAlertWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v34);
  }

  else
  {
    v23, v25, v26, v27, v28, v29, v30, v31;
  }
}

uint64_t sub_1BD3F2C6C(char a1, void (*a2)(void), uint64_t a3, void *a4, void *a5)
{
  v44 = a4;
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = (v41 - v16);
  if (a1)
  {
    v18 = MEMORY[0x1E69B8160];
  }

  else
  {
    v43 = v9;
    sub_1BE04D0D4();
    sub_1BE048C84();
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();
    a5, v21, v22, v23, v24, v25, v26, v27;
    if (os_log_type_enabled(v19, v20))
    {
      v28 = swift_slowAlloc();
      v41[1] = a3;
      v29 = v28;
      v30 = swift_slowAlloc();
      v42 = a2;
      v31 = v30;
      v45 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1BD123690(v44, a5, &v45);
      _os_log_impl(&dword_1BD026000, v19, v20, "[%s] User failed to authenticate to exit lost mode", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31, v32, v33, v34, v35, v36, v37, v38);
      v39 = v31;
      a2 = v42;
      MEMORY[0x1BFB45F20](v39, -1, -1);
      MEMORY[0x1BFB45F20](v29, -1, -1);
    }

    (*(v10 + 8))(v12, v43);
    *v17 = 0;
    v18 = MEMORY[0x1E69B8168];
  }

  (*(v14 + 104))(v17, *v18, v13, v15);
  a2(v17);
  return (*(v14 + 8))(v17, v13);
}

void ProvisioningWatchUICoordinator.handleSetupAccountResult(result:completion:)(void *a1, unsigned __int8 a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v46 = a3;
  v8 = sub_1BE04C534();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v43 - v13);
  v15 = sub_1BE04C384();
  v16 = *(v15 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      *v14 = a1;
      (*(v12 + 104))(v14, *MEMORY[0x1E69B8168], v11, v18.n128_f64[0]);
      v32 = a1;
    }

    else
    {
      *v14 = [objc_opt_self() errorWithSeverity_];
      (*(v12 + 104))(v14, *MEMORY[0x1E69B8168], v11);
    }
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1BE0B7020;
      *(v33 + 32) = a1;
      v34 = *(v5 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses);
      *(v5 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses) = v33;
      v35 = a1;
      v34, v36, v37, v38, v39, v40, v41, v42;
      sub_1BE04BF44();
      v46(v14);
      (*(v12 + 8))(v14, v11);
      sub_1BD3F2628();
      return;
    }

    v21 = *(v5 + OBJC_IVAR____PKProvisioningWatchUICoordinator_composer);
    if (v21)
    {
      *v20 = a1;
      v22 = v17;
      (*(v16 + 104))(v20, *MEMORY[0x1E69B82A8], v17, v18.n128_f64[0]);
      sub_1BE048964();
      v23 = a1;
      sub_1BE04C084();
      v21, v24, v25, v26, v27, v28, v29, v30;
      (*(v16 + 8))(v20, v22);
    }

    v31 = v44;
    (*(v44 + 104))(v10, *MEMORY[0x1E69B8308], v8, v18);
    sub_1BE04BF54();
    (*(v31 + 8))(v10, v8);
  }

  v46(v14);
  (*(v12 + 8))(v14, v11);
}

void ProvisioningWatchUICoordinator.handlePrecursorPass(result:completion:)(void *a1, char a2, void (*a3)(char *), unint64_t a4)
{
  v9 = sub_1BE04C534();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v14 = *(v13 - 1);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v52 - v15);
  if (a2)
  {
    if (a2 == 1)
    {
      *v17 = a1;
      v18 = &v52 - v15;
      (*(v14 + 104))(v17, *MEMORY[0x1E69B8168], v13, v16);
      v19 = a1;
      a3(v18);
      (*(v14 + 8))(v18, v13);
    }

    else
    {
      v49 = &v52 - v15;
      (*(v10 + 104))(v12, *MEMORY[0x1E69B8308], v9, v16);
      sub_1BE04BF54();
      (*(v10 + 8))(v12, v9);
      a3(v49);
      (*(v14 + 8))(v49, v13);
    }
  }

  else
  {
    v56 = &v52 - v15;
    v57 = v4;
    v20 = sub_1BE04BD44();
    v28 = v20;
    if (v20 >> 62)
    {
      goto LABEL_20;
    }

    v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v57;
    if (v29)
    {
      while (1)
      {
        v52 = v14;
        v53 = v13;
        v54 = a4;
        v55 = a3;
        v59 = MEMORY[0x1E69E7CC0];
        sub_1BE0538E4();
        if (v29 < 0)
        {
          break;
        }

        v31 = 0;
        v14 = v28 & 0xC000000000000001;
        v58 = v28 & 0xFFFFFFFFFFFFFF8;
        a3 = 0x1E69B8000;
        v13 = &selRef_initWithIdentifier_;
        while (1)
        {
          a4 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v14)
          {
            v32 = MEMORY[0x1BFB40900](v31, v28);
          }

          else
          {
            if (v31 >= *(v58 + 16))
            {
              goto LABEL_19;
            }

            v32 = *(v28 + 8 * v31 + 32);
          }

          v33 = v32;
          if (![objc_allocWithZone(MEMORY[0x1E69B8D50]) initWithSecureElementPass_])
          {
            goto LABEL_25;
          }

          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
          ++v31;
          if (a4 == v29)
          {
            v28, v34, v35, v36, v37, v38, v39, v40;
            v48 = v59;
            a3 = v55;
            v14 = v52;
            v13 = v53;
            v30 = v57;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        v29 = sub_1BE053704();
        v30 = v57;
        if (!v29)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    else
    {
LABEL_21:
      v28, v21, v22, v23, v24, v25, v26, v27;
      v48 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v50 = *(v30 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses);
      *(v30 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses) = v48;
      v50, v41, v42, v43, v44, v45, v46, v47;
      v51 = v56;
      sub_1BE04BF44();
      a3(v51);
      (*(v14 + 8))(v51, v13);
      sub_1BD3F2628();
    }
  }
}

void ProvisioningWatchUICoordinator.handleRequirements(result:completion:)(uint64_t a1, void (*a2)(uint64_t *))
{
  v93 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v91 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55160, &unk_1BE0FBCF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v91 - v12);
  v14 = sub_1BE04C014();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD3F6C58(a1, v16, MEMORY[0x1E69B8180]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v63 = *v16;
        *v13 = *v16;
        (*(v11 + 104))(v13, *MEMORY[0x1E69B8168], v10);
        v64 = v63;
LABEL_31:
        v90 = v64;
        v93(v13);

LABEL_32:
        (*(v11 + 8))(v13, v10);
        return;
      }

      goto LABEL_35;
    }

    v25 = *v16;
    v26 = v16[1];
    v27 = *(v2 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel);
    if (v27)
    {
      if (v26 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_8;
        }
      }

      else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        v92 = v27;
        v28 = [v92 visiblePaymentSetupFields];
        if (v28)
        {
          v29 = v28;
          sub_1BD0E5E8C(0, &qword_1EBD4E6C0, 0x1E69B8DD0);
          v30 = sub_1BE052744();

          if (v30 >> 62)
          {
            v38 = sub_1BE053704();
          }

          else
          {
            v38 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v30, v31, v32, v33, v34, v35, v36, v37;
          if (!v38)
          {
            v65 = sub_1BD3F0374(v26, &qword_1EBD4E6C0, 0x1E69B8DD0, v39, v40, v41, v42, v43);
            v26, v66, v67, v68, v69, v70, v71, v72;
            v73 = sub_1BE052724();
            v65, v74, v75, v76, v77, v78, v79, v80;
            v81 = v92;
            [v92 updateWithPaymentSetupFields_];

            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong didUpdateFieldModel];
              swift_unknownObjectRelease();
            }

            v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570, &unk_1BE0D4490) + 48);
            v84 = *MEMORY[0x1E69B8300];
            v85 = sub_1BE04C534();
            (*(*(v85 - 8) + 104))(v13, v84, v85);
            *(v13 + v83) = v25;
            (*(v11 + 104))(v13, *MEMORY[0x1E69B8170], v10);
            v86 = v25;
            v93(v13);

            goto LABEL_32;
          }

          *v13 = 0;
          (*(v11 + 104))(v13, *MEMORY[0x1E69B8168], v10);
          v93(v13);
          (*(v11 + 8))(v13, v10);
          v44 = sub_1BE052724();
          v26, v45, v46, v47, v48, v49, v50, v51;
          v52 = v92;
          v53 = [v92 secondaryEntryFieldsModelWithPaymentSetupFields_];

          if (v53)
          {
            swift_beginAccess();
            v54 = swift_unknownObjectWeakLoadStrong();
            if (v54)
            {
              [v54 presentSecondaryFieldsViewControllerWithFieldsModel_];

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          else
          {
          }

          return;
        }

        __break(1u);
LABEL_35:
        sub_1BE053994();
        __break(1u);
        return;
      }
    }

    v26, v18, v19, v20, v21, v22, v23, v24;
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    v25 = *v16;
LABEL_30:
    v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570, &unk_1BE0D4490) + 48);
    v88 = *MEMORY[0x1E69B8308];
    v89 = sub_1BE04C534();
    (*(*(v89 - 8) + 104))(v13, v88, v89);
    *(v13 + v87) = v25;
    (*(v11 + 104))(v13, *MEMORY[0x1E69B8170], v10);
    v64 = v25;
    goto LABEL_31;
  }

  v55 = *v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45580, &unk_1BE0FBD00);
  sub_1BD226B4C(v16 + *(v56 + 48), v9);
  *v13 = 0;
  (*(v11 + 104))(v13, *MEMORY[0x1E69B8168], v10);
  v93(v13);
  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  v57 = swift_unknownObjectWeakLoadStrong();
  if (v57)
  {
    v58 = v57;
    v59 = PKPaymentCardIneligibleReasonForRequirementsStatus(v55);
    sub_1BD38F438(v9, v6);
    v60 = sub_1BE04AA64();
    v61 = *(v60 - 8);
    v62 = 0;
    if ((*(v61 + 48))(v6, 1, v60) != 1)
    {
      v62 = sub_1BE04A9C4();
      (*(v61 + 8))(v6, v60);
    }

    [v58 showEligibilityIssueWithReason:v59 learnMoreUrl:v62];
    swift_unknownObjectRelease();
  }

  sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
}

void ProvisioningWatchUICoordinator.handleEligibility(result:completion:)(uint64_t a1, void (*a2)(unint64_t *), uint64_t a3)
{
  v132 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v132 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588, &unk_1BE0D44A0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v132 - v14);
  v16 = sub_1BE04BF64();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD3F6C58(a1, v18, MEMORY[0x1E69B8178]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v27 = *v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1BE0B7020;
        v29 = [objc_allocWithZone(MEMORY[0x1E69B8D50]) initWithSecureElementPass_];
        if (v29)
        {
          *(v28 + 32) = v29;
          v37 = *(v3 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses);
          *(v3 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses) = v28;
          v37, v30, v31, v32, v33, v34, v35, v36;
          *v15 = 0;
          (*(v13 + 104))(v15, *MEMORY[0x1E69B8168], v12);
          v132(v15);
          (*(v13 + 8))(v15, v12);
          sub_1BD3F2628();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_1BD3F6CC0(v18, MEMORY[0x1E69B8178]);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v84 = Strong;
          v85 = swift_allocObject();
          *(v85 + 16) = v132;
          *(v85 + 24) = a3;
          v137 = sub_1BD3F6C48;
          v138 = v85;
          aBlock = MEMORY[0x1E69E9820];
          v134 = 1107296256;
          v135 = sub_1BD3F08C0;
          v136 = &block_descriptor_9_3;
          v86 = _Block_copy(&aBlock);
          v87 = v138;
          sub_1BE048964();
          v87, v88, v89, v90, v91, v92, v93, v94;
          [v84 presentSEStorageCleanupWithCompletion_];
          swift_unknownObjectRelease();
          _Block_release(v86);
        }
      }

      return;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v68 = *v18;
      *v15 = *v18;
      (*(v13 + 104))(v15, *MEMORY[0x1E69B8168], v12);
      v69 = v68;
LABEL_28:
      v41 = v69;
      v132(v15);
LABEL_29:

      (*(v13 + 8))(v15, v12);
      return;
    }

    v95 = *v18;
    v70 = [objc_opt_self() errorWithCommonType:1 severity:5];
    aBlock = 0;
    v134 = 0xE000000000000000;
    sub_1BE053834();
    v134, v96, v97, v98, v99, v100, v101, v102;
    aBlock = 0xD000000000000016;
    v134 = 0x80000001BE128180;
    v103 = sub_1BE04BDF4();
    v104 = MEMORY[0x1BFB3F7F0](v95, v103);
    v106 = v105;
    v95, v105, v107, v108, v109, v110, v111, v112;
    MEMORY[0x1BFB3F610](v104, v106);
    v106, v113, v114, v115, v116, v117, v118, v119;
    v120 = v134;
    v121 = sub_1BE052404();
    v120, v122, v123, v124, v125, v126, v127, v128;
    [v70 addInternalDebugDescription_];

    *v15 = v70;
    v74 = MEMORY[0x1E69B8168];
LABEL_25:
    (*(v13 + 104))(v15, *v74, v12);
    v69 = v70;
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    v70 = *v18;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0, &qword_1BE0D44B0) + 48);
    v72 = *MEMORY[0x1E69B8308];
    v73 = sub_1BE04C534();
    (*(*(v73 - 8) + 104))(v15, v72, v73);
    *(v15 + v71) = v70;
    v74 = MEMORY[0x1E69B8170];
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v39 = *v18;
    v38 = v18[1];
    v40 = *(v3 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel);
    if (v40)
    {
      if (v38 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_11;
        }
      }

      else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_11:
        v41 = v40;
        v47 = sub_1BD3F0374(v38, &qword_1EBD4E6C0, 0x1E69B8DD0, v42, v43, v44, v45, v46);
        v38, v48, v49, v50, v51, v52, v53, v54;
        v55 = sub_1BE052724();
        v47, v56, v57, v58, v59, v60, v61, v62;
        [v41 updateWithPaymentSetupFields_];

        swift_beginAccess();
        v63 = swift_unknownObjectWeakLoadStrong();
        if (v63)
        {
          [v63 didUpdateFieldModel];
          swift_unknownObjectRelease();
        }

        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0, &qword_1BE0D44B0) + 48);
        v65 = *MEMORY[0x1E69B8300];
        v66 = sub_1BE04C534();
        (*(*(v66 - 8) + 104))(v15, v65, v66);
        *(v15 + v64) = v39;
        (*(v13 + 104))(v15, *MEMORY[0x1E69B8170], v12);
        v67 = v39;
        v132(v15);

        goto LABEL_29;
      }
    }

    v38, v20, v21, v22, v23, v24, v25, v26;
    v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0, &qword_1BE0D44B0) + 48);
    v130 = *MEMORY[0x1E69B8308];
    v131 = sub_1BE04C534();
    (*(*(v131 - 8) + 104))(v15, v130, v131);
    *(v15 + v129) = v39;
    (*(v13 + 104))(v15, *MEMORY[0x1E69B8170], v12);
    v69 = v39;
    goto LABEL_28;
  }

  v75 = *v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45590, &unk_1BE0FBCE0);
  sub_1BD226B4C(v18 + *(v76 + 48), v11);
  *v15 = 0;
  (*(v13 + 104))(v15, *MEMORY[0x1E69B8168], v12);
  v132(v15);
  (*(v13 + 8))(v15, v12);
  v77 = PKPaymentCardIneligibleReasonForEligibilityStatus(v75);
  swift_beginAccess();
  v78 = swift_unknownObjectWeakLoadStrong();
  if (v78)
  {
    v79 = v78;
    sub_1BD38F438(v11, v8);
    v80 = sub_1BE04AA64();
    v81 = *(v80 - 8);
    v82 = 0;
    if ((*(v81 + 48))(v8, 1, v80) != 1)
    {
      v82 = sub_1BE04A9C4();
      (*(v81 + 8))(v8, v80);
    }

    [v79 showEligibilityIssueWithReason:v77 learnMoreUrl:{v82, v132}];
    swift_unknownObjectRelease();
  }

  sub_1BD0DE53C(v11, &unk_1EBD3CF70, &qword_1BE0BA000);
}

uint64_t sub_1BD3F4834(char a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588, &unk_1BE0D44A0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  if (a1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8160], v4, v6);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD45688, 0x1E69B8BF0);
    sub_1BE04BF44();
  }

  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

void ProvisioningWatchUICoordinator.handleSEStorage(result:completion:)(void *a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0, &qword_1BE0D44B8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&aBlock[-1] - v11);
  if (!a2)
  {
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550D0, &unk_1BE0D44C0) + 48);
    v26 = *MEMORY[0x1E69B8308];
    v27 = sub_1BE04C534();
    (*(*(v27 - 8) + 104))(v12, v26, v27);
    *(v12 + v25) = a1;
    (*(v9 + 104))(v12, *MEMORY[0x1E69B8170], v8);
    sub_1BE048C84();
LABEL_7:
    a3(v12);
    (*(v9 + 8))(v12, v8);
    return;
  }

  if (a2 != 1)
  {
    *v12 = a1;
    (*(v9 + 104))(v12, *MEMORY[0x1E69B8168], v8, v10);
    v28 = a1;
    goto LABEL_7;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    aBlock[4] = sub_1BD3F6C50;
    v31 = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3F08C0;
    aBlock[3] = &block_descriptor_15_4;
    v16 = _Block_copy(aBlock);
    v17 = v31;
    sub_1BE048964();
    v17, v18, v19, v20, v21, v22, v23, v24;
    [v14 presentSEStorageCleanupWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v16);
  }
}

uint64_t sub_1BD3F4C14(char a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0, &qword_1BE0D44B8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  if (a1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8160], v4, v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45680, &qword_1BE0D4628);
    sub_1BE04BF44();
  }

  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t ProvisioningWatchUICoordinator.handleTerms(result:completion:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v4 = sub_1BE04C534();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v34 - v9;
  v11 = sub_1BE04BD84();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD3F6C58(a1, v13, MEMORY[0x1E69B8108]);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD3F6CC0(v13, MEMORY[0x1E69B8108]);
    (*(v5 + 104))(v7, *MEMORY[0x1E69B8308], v4);
    sub_1BE04BF54();
    (*(v5 + 8))(v7, v4);
    v36(v10);
    return (*(v8 + 8))(v10, v35);
  }

  else
  {
    v19 = v36;
    v20 = v37;
    (*(v15 + 32))(v17, v13, v14);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = sub_1BE04A9C4();
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = v20;
      aBlock[4] = sub_1BD3F6D20;
      v39 = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_21_1;
      v25 = _Block_copy(aBlock);
      v26 = v39;
      sub_1BE048964();
      v26, v27, v28, v29, v30, v31, v32, v33;
      [v22 presentTermsWithTermsUrl:v23 completion:v25];
      _Block_release(v25);
      swift_unknownObjectRelease();
    }

    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_1BD3F5154(char a1, void (*a2)(void *))
{
  v4 = sub_1BE04C534();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v14 - v11);
  if (a1)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69B8308], v4, v10);
    sub_1BE04BF54();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    *v12 = 0;
    (*(v9 + 104))(v12, *MEMORY[0x1E69B8168], v8, v10);
  }

  a2(v12);
  return (*(v9 + 8))(v12, v8);
}

void *ProvisioningWatchUICoordinator.handleProvisioned(result:completion:)(void *a1, char a2, void (*a3)(unint64_t), unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD455B0, &unk_1BE0CC140);
  v10 = *(v9 - 1);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  if (a2)
  {
    *v13 = a1;
    v14 = MEMORY[0x1E69B8168];
LABEL_22:
    (v10[13])(v13, *v14, v9, v11);
    v49 = a1;
    a3(v13);
    return (v10[1])(v13, v9);
  }

  v57 = v4;
  v15 = sub_1BE04BD44();
  v23 = v15;
  if (v15 >> 62)
  {
    goto LABEL_17;
  }

  v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_18:
    v23, v16, v17, v18, v19, v20, v21, v22;
    v42 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v43 = v57;
    v44 = *(v57 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses);
    *(v57 + OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses) = v42;
    v44, v35, v36, v37, v38, v39, v40, v41;
    [*(v43 + OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel) unhideFieldsWithEnteredValues];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didUpdateFieldModel];
      swift_unknownObjectRelease();
    }

    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D68, &qword_1BE0D44D0) + 48);
    v47 = *MEMORY[0x1E69B8308];
    v48 = sub_1BE04C534();
    (*(*(v48 - 8) + 104))(v13, v47, v48);
    *(v13 + v46) = a1;
    v14 = MEMORY[0x1E69B8170];
    goto LABEL_22;
  }

  while (1)
  {
    v59[0] = MEMORY[0x1E69E7CC0];
    result = sub_1BE0538E4();
    if (v24 < 0)
    {
      break;
    }

    v51 = v13;
    v52 = a1;
    v53 = v10;
    v54 = a4;
    v55 = a3;
    v56 = v9;
    v13 = 0;
    v58 = v23 & 0xFFFFFFFFFFFFFF8;
    a4 = 0x1E69B8000uLL;
    v10 = &selRef_initWithIdentifier_;
    while (1)
    {
      a1 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1BFB40900](v13, v23);
      }

      else
      {
        if (v13 >= *(v58 + 16))
        {
          goto LABEL_16;
        }

        v26 = *(v23 + 8 * v13 + 32);
      }

      v27 = v26;
      result = [objc_allocWithZone(MEMORY[0x1E69B8D50]) initWithSecureElementPass_];
      if (!result)
      {
        goto LABEL_24;
      }

      v9 = result;

      sub_1BE0538C4();
      a3 = *(v59[0] + 16);
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      ++v13;
      if (a1 == v24)
      {
        v23, v28, v29, v30, v31, v32, v33, v34;
        v42 = v59[0];
        a3 = v55;
        v9 = v56;
        v10 = v53;
        v13 = v51;
        a1 = v52;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v24 = sub_1BE053704();
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void (*sub_1BD3F5808(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BD3F7170;
  }

  __break(1u);
  return result;
}

void (*sub_1BD3F5888(void (*result)(id *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8), unint64_t a2, uint64_t a3))(id *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = sub_1BE048964();
LABEL_5:
    *v3 = v4;
    return sub_1BD3F5908;
  }

  __break(1u);
  return result;
}

void (*sub_1BD3F5910(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BD3F5990;
  }

  __break(1u);
  return result;
}

id sub_1BD3F5998(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0, &unk_1BE0E7EE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_1BE04B944();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_composer] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel] = 0;
  v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_skipRequirements] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses] = MEMORY[0x1E69E7CC0];
  sub_1BE04BC44();
  v14 = a2;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_context] = sub_1BE04BAE4();
  v15 = *MEMORY[0x1E69B7F80];
  v16 = sub_1BE04B8D4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  result = [v14 webService];
  if (result)
  {
    sub_1BE04B914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
    v19 = sub_1BE04C384();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    v28 = xmmword_1BE0B69E0;
    *(v22 + 16) = xmmword_1BE0B69E0;
    *(v22 + v21) = a3;
    (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69B82A8], v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0, &unk_1BE0FF0F0);
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v28;
    (*(v11 + 16))(v24 + v23, v13, v10);
    sub_1BE04C3D4();
    swift_allocObject();
    v25 = a3;
    v26 = sub_1BE04C394();
    (*(v11 + 8))(v13, v10);
    *&v4[OBJC_IVAR____PKProvisioningWatchUICoordinator_configuration] = v26;
    v27 = type metadata accessor for ProvisioningWatchUICoordinator();
    v29.receiver = v4;
    v29.super_class = v27;
    return objc_msgSendSuper2(&v29, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3F5D74(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0, &unk_1BE0E7EE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1BE04B944();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_composer] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_fieldsModel] = 0;
  v13 = OBJC_IVAR____PKProvisioningWatchUICoordinator_skipRequirements;
  v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_skipRequirements] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisioningError] = 0;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_provisionedPasses] = MEMORY[0x1E69E7CC0];
  sub_1BE04BC44();
  v14 = a2;
  *&v3[OBJC_IVAR____PKProvisioningWatchUICoordinator_context] = sub_1BE04BAE4();
  v15 = *MEMORY[0x1E69B7F80];
  v16 = sub_1BE04B8D4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v8, v15, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  result = [v14 webService];
  if (result)
  {
    sub_1BE04B914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
    v19 = sub_1BE04C384();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    v27 = xmmword_1BE0B69E0;
    *(v22 + 16) = xmmword_1BE0B69E0;
    *(v22 + v21) = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
    (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69B8290], v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0, &unk_1BE0FF0F0);
    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    (*(v10 + 16))(v24 + v23, v12, v9);
    sub_1BE04C3D4();
    swift_allocObject();
    v25 = sub_1BE04C394();
    (*(v10 + 8))(v12, v9);
    *&v4[OBJC_IVAR____PKProvisioningWatchUICoordinator_configuration] = v25;
    v4[v13] = v28 & 1;
    v26 = type metadata accessor for ProvisioningWatchUICoordinator();
    v29.receiver = v4;
    v29.super_class = v26;
    return objc_msgSendSuper2(&v29, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9PassKitUI30ProvisioningWatchUICoordinatorC22handleBiometricBinding6result10completiony0aB4Core0d4StephI0C0I6ResultO_yAG0d9OperationN0OyytGctF_0(void *a1, uint64_t a2, char a3, void (*a4)(void *))
{
  v7 = sub_1BE04C534();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v18 - v14);
  if (a3)
  {
    if (a3 == 1)
    {
      *v15 = a1;
      (*(v12 + 104))(v15, *MEMORY[0x1E69B8168], v11, v13);
      v16 = a1;
    }

    else
    {
      (*(v8 + 104))(v10, *MEMORY[0x1E69B8308], v7, v13);
      sub_1BE04BF54();
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    *v15 = [objc_opt_self() errorWithSeverity_];
    (*(v12 + 104))(v15, *MEMORY[0x1E69B8168], v11);
  }

  a4(v15);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1BD3F63E0(void *a1, char a2, void (*a3)(void *))
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v17 - v13);
  if (a2)
  {
    *v14 = a1;
    (*(v11 + 104))(v14, *MEMORY[0x1E69B8168], v10, v12);
    v15 = a1;
  }

  else
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E69B8308], v6, v12);
    sub_1BE04BF54();
    (*(v7 + 8))(v9, v6);
  }

  a3(v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t _s9PassKitUI30ProvisioningWatchUICoordinatorC22handleValidationResult6result10completiony0aB4Core0D25StepValidatePreconditionsC0hI0O_yAG0d9OperationI0OyytGctF_0(void *a1, char a2, void (*a3)(void *))
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v17 - v13);
  if (a2)
  {
    if (a2 == 1)
    {
      *v14 = a1;
      (*(v11 + 104))(v14, *MEMORY[0x1E69B8168], v10, v12);
      v15 = a1;
    }

    else
    {
      (*(v7 + 104))(v9, *MEMORY[0x1E69B8308], v6, v12);
      sub_1BE04BF54();
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    *v14 = 0;
    (*(v11 + 104))(v14, *MEMORY[0x1E69B8168], v10, v12);
  }

  a3(v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t _s9PassKitUI30ProvisioningWatchUICoordinatorC14handleReadCard6result10completiony0aB4Core0d4StephI0C0hI6ResultO_yAG0d9OperationN0OySo27PKPaymentTapToProvisionDataCGctF_0(void *a1, unsigned __int8 a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A0, &qword_1BE0D4640);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - v8);
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v15 = [objc_opt_self() errorWithSeverity_];
      *v9 = v15;
      (*(v7 + 104))(v9, *MEMORY[0x1E69B8168], v6);
      v16 = v15;
      a3(v9);

      return (*(v7 + 8))(v9, v6);
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *v9 = a1;
    v13 = MEMORY[0x1E69B8168];
    goto LABEL_6;
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A8, &qword_1BE0D4648) + 48);
  v11 = *MEMORY[0x1E69B8308];
  v12 = sub_1BE04C534();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  *(v9 + v10) = a1;
  v13 = MEMORY[0x1E69B8170];
LABEL_6:
  (*(v7 + 104))(v9, *v13, v6);
  v14 = a1;
  a3(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t _s9PassKitUI30ProvisioningWatchUICoordinatorC22handleDeviceAssessment6result10completiony0aB4Core0d4StephI0C0I6ResultO_yAG0d9OperationN0OySo020PKODIServiceProviderI0CSgGXEtF_0(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45690, &qword_1BE0D4630);
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v20 - v9);
  if (a2)
  {
    if (a2 != 1)
    {
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55140, &qword_1BE0D4638) + 48);
      v17 = *MEMORY[0x1E69B8308];
      v18 = sub_1BE04C534();
      (*(*(v18 - 8) + 104))(v10, v17, v18);
      *(v10 + v16) = 0;
      (*(v7 + 104))(v10, *MEMORY[0x1E69B8170], v6);
      goto LABEL_7;
    }

    *v10 = a1;
    v11 = MEMORY[0x1E69B8168];
  }

  else
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55140, &qword_1BE0D4638) + 48);
    v13 = *MEMORY[0x1E69B8308];
    v14 = sub_1BE04C534();
    (*(*(v14 - 8) + 104))(v10, v13, v14);
    *(v10 + v12) = a1;
    v11 = MEMORY[0x1E69B8170];
  }

  (*(v7 + 104))(v10, *v11, v6, v8);
  v15 = a1;
LABEL_7:
  a3(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BD3F6C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3F6CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD3F6D28(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v24 - v16);
  if (a2)
  {
    *v17 = a1;
    v18 = MEMORY[0x1E69B8168];
  }

  else
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) + 48);
    v20 = *MEMORY[0x1E69B8308];
    v21 = sub_1BE04C534();
    (*(*(v21 - 8) + 104))(v17, v20, v21);
    *(v17 + v19) = a1;
    v18 = MEMORY[0x1E69B8170];
  }

  (*(v14 + 104))(v17, *v18, v13, v15);
  v22 = a1;
  a3(v17);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD3F710C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for WebIconImage(uint64_t a1)
{
  result = qword_1EBD45700;
  if (!qword_1EBD45700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3F71FC(uint64_t a1)
{
  sub_1BD3F7300(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD238A58(319, &qword_1EBD45710, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD3F7300(uint64_t a1)
{
  if (!qword_1EBD45140)
  {
    sub_1BE04AA64();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD45140);
    }
  }
}

void *sub_1BD3F7374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v111 = &v95 - v4;
  v5 = type metadata accessor for WebIconImage(0);
  v106 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v107 = v6;
  v108 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45728, &qword_1BE0D4708);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v95 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45730, &qword_1BE0D4710);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v95 - v12;
  v104 = sub_1BE04F3D4();
  v100 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45738, &qword_1BE0D4718);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v95 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v105 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v95 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v95 - v23;
  v25 = sub_1BE04AA64();
  MEMORY[0x1EEE9AC00](v25);
  v101 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v102 = &v95 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v95 - v30;
  v33 = v32;
  sub_1BD0DE19C(a1, v24, &unk_1EBD3CF70, &qword_1BE0BA000);
  v103 = *(v33 + 48);
  if (v103(v24, 1, v25) == 1)
  {
    sub_1BD0DE53C(v24, &unk_1EBD3CF70, &qword_1BE0BA000);
    v34 = (a1 + v5[7]);
    v36 = *v34;
    v35 = v34[1];
    v37 = (a1 + v5[5]);
    v38 = *v37;
    v39 = v37[1];
    v40 = *(a1 + v5[6]);
    sub_1BE048C84();
    v41 = sub_1BE0512A4();
    v42 = sub_1BE051284();
    *v17 = v36;
    v17[1] = v35;
    v17[2] = v38;
    v17[3] = v39;
    v17[4] = v40;
    v17[5] = v41;
    v17[6] = v42;
    swift_storeEnumTagMultiPayload();
    sub_1BD3F82A4();
    sub_1BD3F835C();
    return sub_1BE04F9A4();
  }

  else
  {
    v98 = v17;
    v99 = v15;
    v97 = *(v33 + 32);
    v97(v31, v24, v25);
    v44 = (a1 + v5[5]);
    v45 = *v44;
    v46 = a1 + v5[8];
    v47 = *v46;
    v48 = a1;
    if (*(v46 + 8) == 1)
    {
      v49 = *v46;
      v50 = v44[1];
      v51 = *v46;
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v96 = a1;
      v52 = v31;
      v53 = v33;
      v54 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0D4604(v47, 0, v55, v56, v57, v58, v59, v60);
      v95 = v33 + 32;
      v100 = *(v100 + 8);
      (v100)(v14, v104);
      v51 = *&v119;
      v50 = v44[1];
      sub_1BE048964();
      sub_1BE052C44();
      v61 = sub_1BE050174();
      sub_1BE04CF84();

      v33 = v53;
      v31 = v52;
      v48 = v96;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0D4604(v47, 0, v62, v63, v64, v65, v66, v67);
      (v100)(v14, v104);
      v49 = *&v119;
    }

    v68 = v45 * v51;
    v69 = v50 * v49;
    v70 = *(v33 + 16);
    v71 = v115;
    v104 = v31;
    v70(v115, v31, v25);
    (*(v33 + 56))(v71, 0, 1, v25);
    v72 = v48;
    v73 = v108;
    sub_1BD3F83B0(v72, v108);
    v74 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v75 = swift_allocObject();
    sub_1BD3F8414(v73, v75 + v74);
    v76 = [objc_opt_self() sharedURLCache];
    v77 = v105;
    sub_1BD0DE19C(v71, v105, &unk_1EBD3CF70, &qword_1BE0BA000);
    v78 = v103(v77, 1, v25);
    v79 = v116;
    if (v78 == 1)
    {
      sub_1BD0DE53C(v77, &unk_1EBD3CF70, &qword_1BE0BA000);
      v80 = 1;
      v81 = v111;
    }

    else
    {
      v82 = v102;
      v97(v102, v77, v25);
      v70(v101, v82, v25);
      v81 = v111;
      sub_1BE04A114();
      (*(v33 + 8))(v82, v25);
      v80 = 0;
    }

    v83 = v33;
    v84 = v98;
    v85 = sub_1BE04A134();
    (*(*(v85 - 8) + 56))(v81, v80, 1, v85);
    v86 = v109;
    v87 = v110;
    sub_1BD0DE204(v81, &v110[*(v109 + 40)], &qword_1EBD45720, &qword_1BE0DBCF0);
    *(v87 + 2) = sub_1BD3F8478;
    *(v87 + 3) = v75;
    *&v87[v86[12]] = 0;
    v88 = &v87[v86[13]];
    *v88 = v68;
    *(v88 + 1) = v69;
    *(v88 + 2) = 0x200000;
    v88[24] = 0;
    *&v87[v86[11]] = v76;
    v118 = 0x8000000000000000;
    sub_1BE051694();
    sub_1BD0DE53C(v115, &unk_1EBD3CF70, &qword_1BE0BA000);
    *v87 = v119;
    v89 = v87;
    v90 = v113;
    sub_1BD0DE204(v89, v113, &qword_1EBD45728, &qword_1BE0D4708);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v91 = v112;
    sub_1BD0DE204(v90, v112, &qword_1EBD45728, &qword_1BE0D4708);
    v92 = (v91 + *(v79 + 36));
    v93 = v120;
    *v92 = v119;
    v92[1] = v93;
    v92[2] = v121;
    v94 = v114;
    sub_1BD0DE204(v91, v114, &qword_1EBD45730, &qword_1BE0D4710);
    sub_1BD0DE19C(v94, v84, &qword_1EBD45730, &qword_1BE0D4710);
    swift_storeEnumTagMultiPayload();
    sub_1BD3F82A4();
    sub_1BD3F835C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v94, &qword_1EBD45730, &qword_1BE0D4710);
    return (*(v83 + 8))(v104, v25);
  }
}

double sub_1BD3F7E80@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1BE051584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    v19 = type metadata accessor for WebIconImage(0);
    v20 = (a2 + v19[7]);
    v22 = *v20;
    v21 = v20[1];
    v23 = (a2 + v19[5]);
    v24 = *v23;
    v25 = v23[1];
    v26 = *(a2 + v19[6]);
    sub_1BE048C84();
    v27 = sub_1BE0512A4();
    v28 = sub_1BE051284();
    v60 = 1;
    *v61 = v22;
    *&v61[8] = v21;
    *&v61[16] = v24;
    *&v61[24] = v25;
    *&v61[32] = v26;
    *&v61[40] = v27;
    *&v61[48] = v28;
    v61[56] = 1;
    sub_1BD3F835C();
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04F9A4();
    *v61 = v56;
    *&v61[16] = v57;
    *&v61[32] = v58[0];
    *&v61[41] = *(v58 + 9);
    LOBYTE(v53) = 0;
    v61[57] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45758, &qword_1BE0D4720);
    sub_1BD3F84F8();
    sub_1BE04F9A4();
    v28, v29, v30, v31, v32, v33, v34, v35;
    v27, v36, v37, v38, v39, v40, v41, v42;
    v21, v43, v44, v45, v46, v47, v48, v49;
  }

  else
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v6, v8);
    v11 = sub_1BE0515E4();
    (*(v7 + 8))(v10, v6);
    v52[0] = 0;
    *v61 = v11;
    *&v61[8] = v53;
    *&v61[24] = v54;
    *&v61[40] = v55;
    v61[56] = 0;
    sub_1BD3F835C();
    sub_1BE048964();
    sub_1BE04F9A4();
    *v61 = v56;
    *&v61[16] = v57;
    *&v61[32] = v58[0];
    *&v61[41] = *(v58 + 9);
    v60 = 0;
    v61[57] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45758, &qword_1BE0D4720);
    sub_1BD3F84F8();
    sub_1BE04F9A4();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  *&v61[32] = v59[0];
  *&v61[42] = *(v59 + 10);
  v50 = v58[3];
  *a3 = v58[2];
  a3[1] = v50;
  a3[2] = *&v61[32];
  result = *&v61[42];
  *(a3 + 42) = *&v61[42];
  return result;
}

uint64_t sub_1BD3F81DC@<X0>(void *a1@<X8>)
{
  sub_1BD3F7374(v1, a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45718, &qword_1BE0D4700) + 36);
  v4 = *(sub_1BE04EDE4() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  __asm { FMOV            V0.2D, #8.0 }

  *v3 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20);
  *&v3[*(result + 36)] = 256;
  return result;
}

unint64_t sub_1BD3F82A4()
{
  result = qword_1EBD45740;
  if (!qword_1EBD45740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45730, &qword_1BE0D4710);
    sub_1BD0DE4F4(&qword_1EBD45748, &qword_1EBD45728, &qword_1BE0D4708, &unk_1BE10F338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45740);
  }

  return result;
}

unint64_t sub_1BD3F835C()
{
  result = qword_1EBD45750;
  if (!qword_1EBD45750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45750);
  }

  return result;
}

uint64_t sub_1BD3F83B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebIconImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3F8414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebIconImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BD3F8478@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for WebIconImage(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD3F7E80(a1, v6, a2);
}

unint64_t sub_1BD3F84F8()
{
  result = qword_1EBD45760;
  if (!qword_1EBD45760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45758, &qword_1BE0D4720);
    sub_1BD3F835C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45760);
  }

  return result;
}

unint64_t sub_1BD3F8584()
{
  result = qword_1EBD45768;
  if (!qword_1EBD45768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45718, &qword_1BE0D4700);
    sub_1BD3F863C();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45768);
  }

  return result;
}

unint64_t sub_1BD3F863C()
{
  result = qword_1EBD45770;
  if (!qword_1EBD45770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45778, &qword_1BE0D4728);
    sub_1BD3F86C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45770);
  }

  return result;
}

unint64_t sub_1BD3F86C0()
{
  result = qword_1EBD45780;
  if (!qword_1EBD45780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45788, &qword_1BE0D4730);
    sub_1BD3F82A4();
    sub_1BD3F835C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45780);
  }

  return result;
}

uint64_t sub_1BD3F874C(void *a1)
{
  v1 = a1;
  v2 = UINavigationController.pk_settings_useStateDrivenNavigation.getter();

  return v2 & 1;
}

uint64_t UINavigationController.pk_settings_useStateDrivenNavigation.getter()
{
  v1 = v0;
  v2 = sub_1BE052094();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04CEC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - v12;
  v14 = [v0 traitCollection];
  sub_1BE052DA4();

  v15 = [v1 traitCollection];
  sub_1BE052DB4();

  LOBYTE(v1) = sub_1BE052034();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 104))(v9, *MEMORY[0x1E69C59D0], v6);
  sub_1BD3F9BA0(&qword_1EBD45790, MEMORY[0x1E69C59D8], MEMORY[0x1E69C59E0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v16(v13, v6);
  return (v18[1] == v18[0]) & v1;
}

Swift::Void __swiftcall UINavigationController.pk_settings_pushViewController(_:)(UIViewController *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE052094();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v26 = sub_1BE04CEF4();
    v27 = sub_1BD3F9BA0(&qword_1EBD45798, MEMORY[0x1E69C59E8], MEMORY[0x1E69C59F0]);
    __swift_allocate_boxed_opaque_existential_1(v25);
    v12 = a1;
    sub_1BE04CF04();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v13 = [v1 traitCollection];
    sub_1BE052DB4();

    sub_1BE052054();
    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(v25, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    sub_1BE04D1A4();
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C34();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1BD026000, v21, v22, "Attempted to perform a Settings state driven push when unavailable", v23, 2u);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_1BD3F8CB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UINavigationController.pk_settings_pushViewController(_:)(v4);
}

Swift::Void __swiftcall UINavigationController.pk_settings_popViewController()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE052094();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v11 = [v1 traitCollection];
    sub_1BE052DB4();

    sub_1BE052064();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_1BE04D1A4();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "Attempted to perform a Settings state driven pop when unavailable", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_1BD3F8F38(void *a1)
{
  v1 = a1;
  UINavigationController.pk_settings_popViewController()();
}

Swift::Void __swiftcall UINavigationController.pk_settings_popToViewController(_:)(UIViewController *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = sub_1BE052094();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v25[1] = v3;
    v27 = sub_1BE04CEF4();
    v28 = sub_1BD3F9BA0(&qword_1EBD45798, MEMORY[0x1E69C59E8], MEMORY[0x1E69C59F0]);
    __swift_allocate_boxed_opaque_existential_1(v26);
    v13 = a1;
    sub_1BE04CF04();
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v14 = [v1 traitCollection];
    sub_1BE052DB4();

    sub_1BE052084();
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(v26, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    sub_1BE04D1A4();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "Attempted to perform a Settings state driven popTo when unavailable", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_1BD3F9378(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UINavigationController.pk_settings_popToViewController(_:)(v4);
}

Swift::Void __swiftcall UINavigationController.pk_settings_popToRootViewController()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - v5;
  v7 = sub_1BE052094();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  v11 = sub_1BE053034();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1BE052024();
  v22 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v21[3] = v2;
    sub_1BE053024();
    sub_1BE052014();
    v16 = [v1 traitCollection];
    sub_1BE052DB4();

    sub_1BD3F9BA0(&qword_1EBD457A0, MEMORY[0x1E69CA998], MEMORY[0x1E69CA9A0]);
    sub_1BE052084();
    (*(v23 + 8))(v10, v24);
    (*(v22 + 8))(v15, v12);
  }

  else
  {
    v17 = v3;
    sub_1BE04D1A4();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v18, v19, "Attempted to perform a Settings state driven popToRoot when unavailable", v20, 2u);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    (*(v17 + 8))(v6, v2);
  }
}

void sub_1BD3F9900(void *a1)
{
  v1 = a1;
  UINavigationController.pk_settings_popToRootViewController()();
}

Swift::Int __swiftcall UINavigationController.pk_settings_viewControllerCount()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE052094();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _pk_settings_useStateDrivenNavigation])
  {
    v11 = [v1 traitCollection];
    sub_1BE052DB4();

    v12 = sub_1BE052074();
    (*(v7 + 8))(v10, v6);
    return v12;
  }

  else
  {
    sub_1BE04D1A4();
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v14, v15, "Attempted to get Settings state driven view controller count when unavailable", v16, 2u);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

Swift::Int sub_1BD3F9B6C(void *a1)
{
  v1 = a1;
  v2 = UINavigationController.pk_settings_viewControllerCount()();

  return v2;
}

uint64_t sub_1BD3F9BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD3F9BE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BD3F9C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD3F9CA8(double *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v86 - v5 + 8;
  v7 = *(a1 + 5);
  v87 = v7;
  v8 = *(a1 + 1);
  if (v8 && (v9 = sub_1BD961028(*a1, v8), v10))
  {
    v86[0] = v9;
    v86[1] = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = sub_1BE050354();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = sub_1BE0503B4();
    sub_1BD3FA0F4(v6);
    sub_1BE050374();
    v20 = sub_1BE0503F4();
    v19, v21, v22, v23, v24, v25, v26, v27;
    v28 = sub_1BE0505F4();
    v30 = v29;
    v32 = v31;
    v85 = v33;
    v20, v29, v31, v33, v34, v35, v36, v37;
    sub_1BD0DDF10(v11, v13, (v15 & 1), v38, v39, v40, v41, v42);
    v17, v43, v44, v45, v46, v47, v48, v49;
    v50 = v85;
    v51 = sub_1BE050564();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_1BD0DDF10(v28, v30, (v32 & 1), v56, v58, v59, v60, v61);
    v50, v62, v63, v64, v65, v66, v67, v68;
    v69 = v55 & 1;
    sub_1BD0D7F18(v51, v53, v69);
    sub_1BE048C84();
    v7 = v87;
  }

  else
  {
    v51 = 0;
    v53 = 0;
    v69 = 0;
    v57 = 0;
  }

  sub_1BD3FA098(&v87, v86);
  sub_1BE048964();
  sub_1BD1969AC(v51, v53, v69, v57);
  sub_1BD1969F0(v51, v53, v69, v57, v70, v71, v72, v73);
  *a2 = v7;
  a2[1] = v51;
  a2[2] = v53;
  a2[3] = v69;
  a2[4] = v57;
  sub_1BD1969F0(v51, v53, v69, v57, v74, v75, v76, v77);
  v7, v78, v79, v80, v81, v82, v83, v84;
}

double sub_1BD3F9F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v22[0] = *v2;
  v22[1] = v4;
  v22[2] = *(v2 + 32);
  v23 = *(v2 + 48);
  v5 = sub_1BE051CD4();
  v7 = v6;
  sub_1BD3F9CA8(v22, v24);
  v8 = *v24;
  v20 = *&v24[24];
  v21 = *&v24[8];
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD457A8, &qword_1BE0D47D8) + 36));
  v10 = *(sub_1BE04EDE4() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1BE04F684();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #6.0 }

  *v9 = _Q0;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 40) = v20;
  *(a2 + 24) = v21;
  v18 = *&v24[16];
  *(a2 + 56) = *v24;
  *(a2 + 72) = v18;
  result = *&v24[32];
  *(a2 + 88) = *&v24[32];
  return result;
}

uint64_t sub_1BD3FA0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD3FA15C()
{
  result = qword_1EBD457B0;
  if (!qword_1EBD457B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD457A8, &qword_1BE0D47D8);
    sub_1BD3FA214();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD457B0);
  }

  return result;
}

unint64_t sub_1BD3FA214()
{
  result = qword_1EBD457B8;
  if (!qword_1EBD457B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD457C0, &qword_1BE0D47E0);
    sub_1BD0DE4F4(&qword_1EBD457C8, &qword_1EBD457D0, &qword_1BE0D47E8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD457B8);
  }

  return result;
}

id sub_1BD3FA2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B80E0], v9, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v10 + 8))(v13, v9);
    v23 = v16;
    v24 = v18;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v24 = v19;
    v25 = v20 & 1;
    v26 = v21;
    MEMORY[0x1EEE9AC00](v23);
    v22[-4] = a1;
    v22[-3] = a2;
    v22[-2] = a3;
    v22[-1] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD457F8, &qword_1BE0D4898);
    sub_1BD0DE4F4(&qword_1EBD457F0, &qword_1EBD457F8, &qword_1BE0D4898, MEMORY[0x1E6981F48]);
    return sub_1BE051A54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3FA530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v131 = a4;
  v130 = a3;
  v135 = a1;
  v136 = a2;
  v123 = a5;
  v137 = sub_1BE04FF64();
  v147 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v6 = v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v126 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v128 = v111 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v140 = v111 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v111 - v15;
  v133 = type metadata accessor for AccountNumbersRowView(0);
  MEMORY[0x1EEE9AC00](v133);
  v18 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v111 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45808, &qword_1BE0D48A0);
  v146 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v124 = v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v132 = v111 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45810, &qword_1BE0D48A8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v125 = v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v139 = v111 - v28;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45818, &qword_1BE0D48B0);
  MEMORY[0x1EEE9AC00](v134);
  v122 = v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v121 = v111 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v118 = v111 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v120 = v111 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v127 = v111 - v37;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v129 = v111 - v40;
  v41 = *(v8 + 104);
  v144 = *MEMORY[0x1E69B80E0];
  v42 = v7;
  v145 = v8 + 104;
  v143 = v41;
  v41(v16, v39);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v44 = result;
  v45 = sub_1BE04B6F4();
  v47 = v46;

  v48 = *(v8 + 8);
  v148 = v42;
  v141 = v48;
  v142 = v8 + 8;
  v48(v16, v42);
  v149 = 0;
  v49 = v136;
  sub_1BE048C84();
  sub_1BE051694();
  v50 = v151;
  v21[40] = v150;
  *(v21 + 6) = v50;
  v51 = v133;
  v52 = *(v133 + 32);
  *&v21[v52] = swift_getKeyPath();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  *v21 = v45;
  *(v21 + 1) = v47;
  v53 = v135;
  *(v21 + 2) = v135;
  *(v21 + 3) = v49;
  v21[32] = 0;
  sub_1BE04FF44();
  v54 = sub_1BD3FB5FC();
  v55 = v132;
  sub_1BE050D14();
  v56 = *(v147 + 8);
  v119 = v6;
  v147 += 8;
  v115 = v56;
  v56(v6, v137);
  sub_1BD3FB654(v21);
  sub_1BE052434();
  v58 = v57;
  v150 = v51;
  v151 = v54;
  v116 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v138;
  v114 = OpaqueTypeConformance2;
  sub_1BE050DE4();
  v58, v61, v62, v63, v64, v65, v66, v67;
  v68 = v146 + 8;
  v132 = *(v146 + 8);
  (v132)(v55, v60);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v69 = swift_allocObject();
  v112 = xmmword_1BE0B7020;
  *(v69 + 16) = xmmword_1BE0B7020;
  v143(v140, v144, v148);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v70 = result;
  v146 = v68;
  v71 = sub_1BD3FB6B0();
  v111[1] = "ACCOUNT_NUMBERS_ROUTING_TITLE";
  v72 = v140;
  sub_1BE04B6F4();

  v73 = v72;
  v74 = v148;
  v141(v73, v148);
  v75 = swift_allocObject();
  v75[2] = v53;
  v75[3] = v49;
  v76 = v130;
  v75[4] = v130;
  v77 = v131;
  v75[5] = v131;
  sub_1BE048C84();
  sub_1BE048C84();
  v140 = v71;
  *(v69 + 32) = sub_1BE0530B4();
  v78 = v127;
  sub_1BD0DE204(v139, v127, &qword_1EBD45810, &qword_1BE0D48A8);
  *(v78 + *(v134 + 36)) = v69;
  v79 = v129;
  sub_1BD0DE204(v78, v129, &qword_1EBD45818, &qword_1BE0D48B0);
  v80 = v128;
  v143(v128, v144, v74);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v81 = result;
  v82 = sub_1BE04B6F4();
  v84 = v83;

  v85 = v148;
  v141(v80, v148);
  v149 = 0;
  sub_1BE048C84();
  sub_1BE051694();
  v86 = v151;
  v18[40] = v150;
  *(v18 + 6) = v86;
  v87 = *(v51 + 32);
  *&v18[v87] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v18 = v82;
  *(v18 + 1) = v84;
  *(v18 + 2) = v76;
  *(v18 + 3) = v77;
  v18[32] = 1;
  v88 = v119;
  sub_1BE04FF44();
  v89 = v124;
  sub_1BE050D14();
  v115(v88, v137);
  sub_1BD3FB654(v18);
  sub_1BE052434();
  v91 = v90;
  v92 = v125;
  v93 = v138;
  sub_1BE050DE4();
  v91, v94, v95, v96, v97, v98, v99, v100;
  (v132)(v89, v93);
  v101 = swift_allocObject();
  *(v101 + 16) = v112;
  v102 = v126;
  v143(v126, v144, v85);
  result = PKPassKitBundle();
  if (result)
  {
    v103 = result;
    sub_1BE04B6F4();

    v141(v102, v148);
    v104 = swift_allocObject();
    v104[2] = v135;
    v104[3] = v136;
    v104[4] = v76;
    v104[5] = v77;
    sub_1BE048C84();
    sub_1BE048C84();
    *(v101 + 32) = sub_1BE0530B4();
    v105 = v118;
    sub_1BD0DE204(v92, v118, &qword_1EBD45810, &qword_1BE0D48A8);
    *(v105 + *(v134 + 36)) = v101;
    v106 = v120;
    sub_1BD0DE204(v105, v120, &qword_1EBD45818, &qword_1BE0D48B0);
    v107 = v121;
    sub_1BD0DE19C(v79, v121, &qword_1EBD45818, &qword_1BE0D48B0);
    v108 = v122;
    sub_1BD0DE19C(v106, v122, &qword_1EBD45818, &qword_1BE0D48B0);
    v109 = v123;
    sub_1BD0DE19C(v107, v123, &qword_1EBD45818, &qword_1BE0D48B0);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45828, &qword_1BE0D48E8);
    sub_1BD0DE19C(v108, v109 + *(v110 + 48), &qword_1EBD45818, &qword_1BE0D48B0);
    sub_1BD0DE53C(v106, &qword_1EBD45818, &qword_1BE0D48B0);
    sub_1BD0DE53C(v79, &qword_1EBD45818, &qword_1BE0D48B0);
    sub_1BD0DE53C(v108, &qword_1EBD45818, &qword_1BE0D48B0);
    return sub_1BD0DE53C(v107, &qword_1EBD45818, &qword_1BE0D48B0);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1BD3FB18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() generalPasteboard];
  v4 = sub_1BE052404();
  [v3 setString_];
}

void sub_1BD3FB220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = [objc_opt_self() generalPasteboard];
  v6 = sub_1BE052404();
  [v5 setString_];
}

uint64_t sub_1BD3FB2B4()
{
  v1 = sub_1BE04FB94();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD457D8, &qword_1BE0D4888);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *(v0 + 2);
  v10 = *(v0 + 3);
  v13 = *v0;
  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD457E0, &qword_1BE0D4890);
  sub_1BD3FB4E0();
  sub_1BE0504E4();
  sub_1BE04FB84();
  sub_1BD0DE4F4(&qword_1EBD45800, &qword_1EBD457D8, &qword_1BE0D4888, MEMORY[0x1E697CD20]);
  sub_1BE051144();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BD3FB4E0()
{
  result = qword_1EBD457E8;
  if (!qword_1EBD457E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD457E0, &qword_1BE0D4890);
    sub_1BD0DE4F4(&qword_1EBD457F0, &qword_1EBD457F8, &qword_1BE0D4898, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD457E8);
  }

  return result;
}

uint64_t type metadata accessor for AccountNumbersRowView(uint64_t a1)
{
  result = qword_1EBD45830;
  if (!qword_1EBD45830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD3FB5FC()
{
  result = qword_1EBD45820;
  if (!qword_1EBD45820)
  {
    type metadata accessor for AccountNumbersRowView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45820);
  }

  return result;
}

uint64_t sub_1BD3FB654(uint64_t a1)
{
  v2 = type metadata accessor for AccountNumbersRowView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD3FB6B0()
{
  result = qword_1EBD3ECB0;
  if (!qword_1EBD3ECB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3ECB0);
  }

  return result;
}

uint64_t objectdestroyTm_37(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

void sub_1BD3FB77C(uint64_t a1)
{
  sub_1BD10EE48();
  if (v1 <= 0x3F)
  {
    sub_1BD25EFF4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD3FB820()
{
  result = qword_1EBD45840;
  if (!qword_1EBD45840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45848, &qword_1BE0D4908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD457D8, &qword_1BE0D4888);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD45800, &qword_1EBD457D8, &qword_1BE0D4888, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45840);
  }

  return result;
}

uint64_t sub_1BD3FB958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45850, &qword_1BE0D4960);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v25 - v8);
  v10 = sub_1BE04EB24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AccountNumbersRowView(0);
  sub_1BD70A2A0(v13);
  v14 = sub_1BE04EB14();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v26 = sub_1BE04F7C4();
    v27 = 0;
    v28 = 1;
    sub_1BD3FCC4C();
  }

  else
  {
    v26 = sub_1BE04F504();
    v27 = 0;
    v28 = 1;
    sub_1BD3FCB14();
  }

  v15 = sub_1BE051DB4();
  *v9 = v15;
  v16 = *(v7 + 44);
  sub_1BE048964();
  sub_1BD3FBBEC(v2, v9 + v16);
  sub_1BE04FF44();
  sub_1BD3FCB68();
  sub_1BE050D14();
  v15, v17, v18, v19, v20, v21, v22, v23;
  (*(v4 + 8))(v6, v3);
  return sub_1BD0DE53C(v9, &qword_1EBD45850, &qword_1BE0D4960);
}

uint64_t sub_1BD3FBBEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45890, &qword_1BE0D4978);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v92 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45898, &qword_1BE0D4980);
  v108 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v101 = &v92 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458A0, &qword_1BE0D4988);
  MEMORY[0x1EEE9AC00](v107);
  v103 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v92 - v7;
  v100 = sub_1BE04EB24();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_1BE04FF64();
  v114 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458A8, &qword_1BE0D4990);
  v97 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v12 = &v92 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458B0, &qword_1BE0D4998);
  MEMORY[0x1EEE9AC00](v95);
  v110 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v92 - v15;
  v16 = a1;
  v96 = a1;
  v17 = *a1;
  v18 = v16[1];
  v117 = v17;
  v118 = v18;
  v111 = sub_1BD0DDEBC();
  swift_bridgeObjectRetain_n();
  v19 = sub_1BE0506C4();
  v21 = v20;
  v23 = v22;
  v117 = v19;
  v118 = v20;
  v25 = (v24 & 1);
  v119 = v24 & 1;
  v120 = v22;
  sub_1BE04FF34();
  v26 = MEMORY[0x1E6981148];
  sub_1BE050D14();
  v27 = *(v114 + 8);
  v114 += 8;
  v94 = v27;
  v27(v10, v112);
  sub_1BD0DDF10(v19, v21, v25, v28, v29, v30, v31, v32);
  v23, v33, v34, v35, v36, v37, v38, v39;
  v117 = v17;
  v118 = v18;
  v115 = v26;
  v116 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v40 = v110;
  v41 = v93;
  sub_1BE050C34();
  v18, v42, v43, v44, v45, v46, v47, v48;
  (*(v97 + 8))(v12, v41);
  sub_1BE052434();
  v50 = v49;
  sub_1BE04EBB4();
  v50, v51, v52, v53, v54, v55, v56, v57;
  sub_1BD0DE53C(v40, &qword_1EBD458B0, &qword_1BE0D4998);
  type metadata accessor for AccountNumbersRowView(0);
  v58 = v98;
  sub_1BD70A2A0(v98);
  v59 = sub_1BE04EB14();
  LOBYTE(v50) = v59;
  LODWORD(v97) = v59;
  (*(v99 + 8))(v58, v100);
  LODWORD(v100) = (v50 & 1) == 0;
  v60 = v102;
  sub_1BD3FC3FC(v102);
  sub_1BE04FF34();
  v61 = sub_1BD0DE4F4(&qword_1EBD458B8, &qword_1EBD45890, &qword_1BE0D4978, &unk_1BE0CCCF8);
  v62 = v101;
  v63 = v104;
  sub_1BE050D14();
  v94(v10, v112);
  sub_1BD0DE53C(v60, &qword_1EBD45890, &qword_1BE0D4978);
  v64 = sub_1BD3FC8F0();
  v66 = v65;
  v117 = v64;
  v118 = v65;
  v115 = v63;
  v116 = v61;
  swift_getOpaqueTypeConformance2();
  v67 = v103;
  v68 = v106;
  sub_1BE050C34();
  v66, v69, v70, v71, v72, v73, v74, v75;
  (*(v108 + 8))(v62, v68);
  sub_1BE052434();
  v77 = v76;
  v78 = v105;
  sub_1BE04EBB4();
  v77, v79, v80, v81, v82, v83, v84, v85;
  sub_1BD0DE53C(v67, &qword_1EBD458A0, &qword_1BE0D4988);
  v86 = v113;
  v87 = v110;
  sub_1BD0DE19C(v113, v110, &qword_1EBD458B0, &qword_1BE0D4998);
  sub_1BD0DE19C(v78, v67, &qword_1EBD458A0, &qword_1BE0D4988);
  v88 = v109;
  sub_1BD0DE19C(v87, v109, &qword_1EBD458B0, &qword_1BE0D4998);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458C0, &unk_1BE0D49A0);
  v90 = v88 + *(v89 + 48);
  *v90 = 0;
  *(v90 + 8) = v100;
  *(v90 + 9) = v97 & 1;
  sub_1BD0DE19C(v67, v88 + *(v89 + 64), &qword_1EBD458A0, &qword_1BE0D4988);
  sub_1BD0DE53C(v78, &qword_1EBD458A0, &qword_1BE0D4988);
  sub_1BD0DE53C(v86, &qword_1EBD458B0, &qword_1BE0D4998);
  sub_1BD0DE53C(v67, &qword_1EBD458A0, &qword_1BE0D4988);
  return sub_1BD0DE53C(v87, &qword_1EBD458B0, &qword_1BE0D4998);
}

uint64_t sub_1BD3FC3FC@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v1 = type metadata accessor for AccountNumbersRowView(0);
  v71 = *(v1 - 8);
  v70 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v69 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC18, &unk_1BE0BD1D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v64 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458D8, &qword_1BE0D49C0) - 8;
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v64 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458E0, &qword_1BE0D49C8) - 8;
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v64 - v6;
  *&v83[0] = sub_1BD3FC8F0();
  *(&v83[0] + 1) = v7;
  sub_1BD0DDEBC();
  v8 = sub_1BE0506C4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_1BE051494();
  v16 = sub_1BE050564();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v15, v17, v19, v21, v23, v24, v25, v26;
  sub_1BD0DDF10(v8, v10, (v12 & 1), v27, v28, v29, v30, v31);
  v14, v32, v33, v34, v35, v36, v37, v38;
  sub_1BE051CF4();
  sub_1BE04EE54();
  v84 = v20 & 1;
  *&v74 = v16;
  *(&v74 + 1) = v18;
  LOBYTE(v75) = v20 & 1;
  *(&v75 + 1) = v22;
  sub_1BE052434();
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090, &unk_1BE0D49D0);
  sub_1BD19D16C();
  sub_1BE050DE4();
  v40, v41, v42, v43, v44, v45, v46, v47;
  v83[6] = v80;
  v83[7] = v81;
  v83[8] = v82;
  v83[2] = v76;
  v83[3] = v77;
  v83[4] = v78;
  v83[5] = v79;
  v83[0] = v74;
  v83[1] = v75;
  sub_1BD0DE53C(v83, &qword_1EBD3E090, &unk_1BE0D49D0);
  v48 = objc_opt_self();
  v49 = [v48 defaultCenter];
  v51 = v65;
  v50 = v66;
  sub_1BE052E54();

  v52 = v64;
  v53 = v69;
  sub_1BD3FCCA0(v64, v69);
  v54 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v55 = swift_allocObject();
  sub_1BD3FCD04(v53, v55 + v54);
  sub_1BD0DE204(v73, v51, &qword_1EBD3BC18, &unk_1BE0BD1D0);
  v56 = (v51 + *(v50 + 64));
  *v56 = sub_1BD3FCD68;
  v56[1] = v55;
  v57 = [v48 defaultCenter];
  v59 = v67;
  v58 = v68;
  sub_1BE052E54();

  sub_1BD3FCCA0(v52, v53);
  v60 = swift_allocObject();
  sub_1BD3FCD04(v53, v60 + v54);
  sub_1BD0DE204(v51, v59, &qword_1EBD458D8, &qword_1BE0D49C0);
  v61 = (v59 + *(v58 + 64));
  *v61 = sub_1BD3FCE9C;
  v61[1] = v60;
  v62 = v72;
  sub_1BD0DE204(v59, v72, &qword_1EBD458E0, &qword_1BE0D49C8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45890, &qword_1BE0D4978);
  *(v62 + *(result + 36)) = 0;
  *(v62 + *(result + 40)) = 1;
  return result;
}

uint64_t sub_1BD3FC8F0()
{
  if (*(v0 + 32) == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00), sub_1BE0516A4(), v19 == 1))
  {
    v18 = *(v0 + 24);
    sub_1BE048C84();
    sub_1BE052594();
    v8 = MEMORY[0x1E69E7CC0];
    while (v1)
    {
      v1, v1, v2, v3, v4, v5, v6, v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1BD1D8D34(0, *(v8 + 2) + 1, 1, v8, v9, v10, v11, v12);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_1BD1D8D34((v13 > 1), v14 + 1, 1, v8, v9, v10, v11, v12);
      }

      *(v8 + 2) = v14 + 1;
      v15 = &v8[16 * v14];
      *(v15 + 4) = 10649826;
      *(v15 + 5) = 0xA300000000000000;
      sub_1BE052594();
    }

    v18, v1, v2, v3, v4, v5, v6, v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD458C8, &unk_1BE0D49B0);
    sub_1BD0DE4F4(&qword_1EBD458D0, &qword_1EBD458C8, &unk_1BE0D49B0, MEMORY[0x1E69E6328]);
    return sub_1BE052634();
  }

  else
  {
    v16 = *(v0 + 16);
    sub_1BE048C84();
  }

  return v16;
}

double sub_1BD3FCAB4(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

unint64_t sub_1BD3FCB14()
{
  result = qword_1EBD45858;
  if (!qword_1EBD45858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45858);
  }

  return result;
}

unint64_t sub_1BD3FCB68()
{
  result = qword_1EBD45860;
  if (!qword_1EBD45860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45850, &qword_1BE0D4960);
    sub_1BD0DE4F4(&qword_1EBD45868, &qword_1EBD45870, &qword_1BE0D4968, MEMORY[0x1E697DDD0]);
    sub_1BD0DE4F4(&qword_1EBD45878, &qword_1EBD45880, &qword_1BE0D4970, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45860);
  }

  return result;
}

unint64_t sub_1BD3FCC4C()
{
  result = qword_1EBD45888;
  if (!qword_1EBD45888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45888);
  }

  return result;
}

uint64_t sub_1BD3FCCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNumbersRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3FCD04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNumbersRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_14Tm()
{
  v1 = (type metadata accessor for AccountNumbersRowView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v2[6], v17, v18, v19, v20, v21, v22, v23;
  v24 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1BE04EB24();
    (*(*(v32 - 8) + 8))(v2 + v24, v32);
  }

  else
  {
    *(v2 + v24), v25, v26, v27, v28, v29, v30, v31;
  }

  return swift_deallocObject();
}

void *sub_1BD3FCF3C(unint64_t a1, void *a2)
{
  v16 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1BE0538E4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB40900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        v16, v8, v9, v10, v11, v12, v13, v14;
        return 0;
      }

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      if (v7 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1BE053704();
    sub_1BE0538E4();
  }

  return v16;
}

void *sub_1BD3FD0CC(uint64_t a1, unint64_t *a2, void *a3)
{
  v17 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_1BE0538E4();
  if (!v6)
  {
    return v17;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1BD038CD0(i, v16);
    sub_1BD0E5E8C(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
    if (!--v6)
    {
      return v17;
    }
  }

  v17, v8, v9, v10, v11, v12, v13, v14;
  return 0;
}

void *sub_1BD3FD1E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  sub_1BD531E60(0, v2, 0);
  v3 = v17;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1BD038CD0(i, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45998, &qword_1BE0D4DB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        sub_1BD531E60((v12 > 1), (v13 + 1), 1);
        v3 = v17;
      }

      v3[2] = v13 + 1;
      v3[v13 + 4] = v15;
      if (!--v2)
      {
        return v3;
      }
    }

    v3, v5, v6, v7, v8, v9, v10, v11;
    return 0;
  }

  return v3;
}

void *sub_1BD3FD334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1BD03B254(0, v9, 0, a4, a5, a6, a7, a8);
  v10 = v26;
  if (v9)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1BD038CD0(i, v25);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v26 = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        sub_1BD03B254((v19 > 1), v20 + 1, 1, v14, v15, v16, v17, v18);
        v10 = v26;
      }

      v10[2] = v20 + 1;
      v21 = &v10[2 * v20];
      v21[4] = v23;
      v21[5] = v24;
      if (!--v9)
      {
        return v10;
      }
    }

    v10, v12, v13, v14, v15, v16, v17, v18;
    return 0;
  }

  return v10;
}

uint64_t sub_1BD3FD49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v81 - v10);
  v86 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v86);
  v87 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v81 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v14 + 72);
  v81[1] = v6;
  v82 = v21;
  v83 = v11;
  v84 = v8;
  while (1)
  {
    sub_1BD40FE9C(v19, v16, type metadata accessor for UnavailablePass);
    sub_1BD40FE9C(v20, v87, type metadata accessor for UnavailablePass);
    sub_1BD40FE9C(v16, v11, type metadata accessor for WrappedPass);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v23 = *v11;
      result = [v23 uniqueID];
      if (!result)
      {
        goto LABEL_65;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v29 = v11;
    v30 = v85;
    sub_1BD40F820(v29, v85, type metadata accessor for PlaceholderPass);
    v26 = *(v30 + 16);
    v28 = *(v30 + 24);
    sub_1BE048C84();
    sub_1BD40FF04(v30, type metadata accessor for PlaceholderPass);
LABEL_14:
    sub_1BD40FE9C(v87, v8, type metadata accessor for WrappedPass);
    v31 = swift_getEnumCaseMultiPayload();
    if (!v31)
    {
      v32 = *v8;
      result = [v32 uniqueID];
      if (!result)
      {
        goto LABEL_66;
      }

LABEL_19:
      v33 = result;
      v34 = sub_1BE052434();
      v36 = v35;

      if (v26 != v34)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (v31 == 1)
    {
      v32 = *v8;
      result = [v32 passIdentifier];
      if (!result)
      {
        goto LABEL_64;
      }

      goto LABEL_19;
    }

    v44 = v8;
    v45 = v85;
    sub_1BD40F820(v44, v85, type metadata accessor for PlaceholderPass);
    v46 = *(v45 + 16);
    v36 = *(v45 + 24);
    sub_1BE048C84();
    sub_1BD40FF04(v45, type metadata accessor for PlaceholderPass);
    if (v26 != v46)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (v28 == v36)
    {
      v28, v37, v38, v39, v40, v41, v42, v43;
      v36, v47, v48, v49, v50, v51, v52, v53;
      v8 = v84;
      goto LABEL_25;
    }

LABEL_24:
    v54 = sub_1BE053B84();
    v28, v55, v56, v57, v58, v59, v60, v61;
    v36, v62, v63, v64, v65, v66, v67, v68;
    v8 = v84;
    if ((v54 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_25:
    v69 = *(v86 + 28);
    v71 = *&v16[v69];
    v70 = *&v16[v69 + 8];
    v72 = v16[v69 + 16];
    v73 = (v87 + v69);
    v75 = *v73;
    v74 = v73[1];
    v76 = *(v73 + 16);
    if (v72 > 1)
    {
      if (v72 == 2)
      {
        if (v76 != 2 || (sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0), (sub_1BE053074() & 1) == 0))
        {
LABEL_62:
          sub_1BD40FF04(v87, type metadata accessor for UnavailablePass);
          sub_1BD40FF04(v16, type metadata accessor for UnavailablePass);
          return 0;
        }

LABEL_5:
        sub_1BD40FF04(v87, type metadata accessor for UnavailablePass);
        sub_1BD40FF04(v16, type metadata accessor for UnavailablePass);
        goto LABEL_6;
      }

      if (v71 <= 2)
      {
        if (v71 | v70)
        {
          if (v71 ^ 1 | v70)
          {
            v79 = v75 == 2;
          }

          else
          {
            v79 = v75 == 1;
          }

LABEL_50:
          v77 = v79 && v74 == 0 && v76 == 3;
        }

        else
        {
          v77 = v76 == 3 && (v74 | v75) == 0;
        }

LABEL_56:
        v78 = v77;
        goto LABEL_59;
      }

      if (v71 ^ 3 | v70)
      {
        if (v71 ^ 4 | v70)
        {
          v79 = v75 == 5;
        }

        else
        {
          v79 = v75 == 4;
        }
      }

      else
      {
        v79 = v75 == 3;
      }

      goto LABEL_50;
    }

    if (!v72)
    {
      if (v76)
      {
        goto LABEL_62;
      }

      v77 = v71 == v75;
      goto LABEL_56;
    }

    if (v76 != 1)
    {
      goto LABEL_62;
    }

    if (v71 == v75 && v70 == v74)
    {
      goto LABEL_5;
    }

    v78 = sub_1BE053B84();
LABEL_59:
    sub_1BD40FF04(v87, type metadata accessor for UnavailablePass);
    sub_1BD40FF04(v16, type metadata accessor for UnavailablePass);
    if ((v78 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v11 = v83;
    v20 += v82;
    v19 += v82;
    if (!--v17)
    {
      return 1;
    }
  }

  v23 = *v11;
  result = [v23 passIdentifier];
  if (result)
  {
LABEL_12:
    v25 = result;
    v26 = sub_1BE052434();
    v28 = v27;

    goto LABEL_14;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

void sub_1BD3FDAD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v12 = sub_1BE052434();
      v14 = v13;
      v15 = sub_1BE052434();
      v23 = v16;
      if (v12 == v15 && v14 == v16)
      {
        v14, v16, v17, v18, v19, v20, v21, v22;
        v23, v5, v6, v7, v8, v9, v10, v11;
      }

      else
      {
        v25 = sub_1BE053B84();
        v14, v26, v27, v28, v29, v30, v31, v32;
        v23, v33, v34, v35, v36, v37, v38, v39;
        if ((v25 & 1) == 0)
        {
          return;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1BD3FDC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1BD40FE9C(v20, v17, a4);
        sub_1BD40FE9C(v21, v13, a4);
        v23 = a5(v17, v13);
        sub_1BD40FF04(v13, a6);
        sub_1BD40FF04(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1BD3FDE08(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for TileContextDetailsTableViewEntry(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1BFB40900](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1BFB40900](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1BE053074();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1BE053074();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1BE053704();
  }

  result = sub_1BE053704();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1BD3FE0F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    v4 = a2 + 32;
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    for (i = v2 - 1; ; --i)
    {
      v6 = *(v3 + 32);
      v7 = *(v3 + 64);
      *&v20[16] = *(v3 + 48);
      *v21 = v7;
      *&v21[16] = *(v3 + 80);
      v8 = *(v3 + 16);
      *v19 = *v3;
      *&v19[16] = v8;
      *v20 = v6;
      v9 = *(v4 + 48);
      *v23 = *(v4 + 32);
      *&v23[16] = v9;
      *v24 = *(v4 + 64);
      *&v24[16] = *(v4 + 80);
      v10 = *(v4 + 16);
      *v22 = *v4;
      *&v22[16] = v10;
      sub_1BD40F770(v19, v18);
      sub_1BD40F770(v22, v18);
      if ((sub_1BE053074() & 1) == 0)
      {
        break;
      }

      v11 = *&v19[24];
      v12 = v20[0];
      v13 = *&v22[24];
      v14 = v23[0];
      if (*&v19[8] != *&v22[8] && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      if (v12)
      {
        if (!v14)
        {
          break;
        }
      }

      else
      {
        if (v11 == v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          break;
        }
      }

      if (*&v20[8] != *&v23[8] && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      if (*v21)
      {
        if (!*v24 || (*&v20[24] != *&v23[24] || *v21 != *v24) && (sub_1BE053B84() & 1) == 0)
        {
          break;
        }
      }

      else if (*v24)
      {
        break;
      }

      if (*&v21[8] == *&v24[8])
      {
        sub_1BD40F7CC(v22);
        sub_1BD40F7CC(v19);
      }

      else
      {
        v16 = sub_1BE053B84();
        sub_1BD40F7CC(v22);
        sub_1BD40F7CC(v19);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      if (!i)
      {
        return 1;
      }

      v4 += 88;
      v3 += 88;
    }

    sub_1BD40F7CC(v22);
    sub_1BD40F7CC(v19);
  }

  return 0;
}

uint64_t sub_1BD3FE328(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1BD0E5E8C(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1BFB40900](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1BFB40900](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1BE053074();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1BE053074();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1BE053704();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1BE053704();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

void sub_1BD3FE5B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v3 - 2) == *(v4 - 2) && v5 == v7;
      if (!v9 && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
      sub_1BE048C84();
      v10 = v6;
      sub_1BE048C84();
      v11 = v8;
      v12 = sub_1BE053074();

      v5, v13, v14, v15, v16, v17, v18, v19;
      v7, v20, v21, v22, v23, v24, v25, v26;
      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1BD3FE6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E80, &qword_1BE0D3550);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v40 - v10;
  v44 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  MEMORY[0x1EEE9AC00](v44);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v40 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_27:
    v38 = 0;
    return v38 & 1;
  }

  if (v18 && a1 != a2)
  {
    v40 = v9;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = (v5 + 48);
    v42 = *(v15 + 72);
    v43 = v4;
    v23 = v44;
    while (1)
    {
      sub_1BD40FE9C(v20, v17, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      v47 = v20;
      sub_1BD40FE9C(v21, v13, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      v24 = *v17 == *v13 && v17[1] == v13[1];
      if (!v24 && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      v25 = v17[2] == v13[2] && v17[3] == v13[3];
      if (!v25 && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      v46 = v18;
      v26 = *(v23 + 24);
      v27 = *(v45 + 48);
      sub_1BD0DE19C(v17 + v26, v11, &qword_1EBD44D48, &qword_1BE1067C0);
      sub_1BD0DE19C(v13 + v26, &v11[v27], &qword_1EBD44D48, &qword_1BE1067C0);
      v28 = *v22;
      v29 = v11;
      v30 = v11;
      v31 = v43;
      if ((*v22)(v29, 1, v43) == 1)
      {
        if (v28((v30 + v27), 1, v31) != 1)
        {
          goto LABEL_25;
        }

        sub_1BD0DE53C(v30, &qword_1EBD44D48, &qword_1BE1067C0);
        v11 = v30;
        v32 = v46;
      }

      else
      {
        v33 = v40;
        sub_1BD0DE19C(v30, v40, &qword_1EBD44D48, &qword_1BE1067C0);
        if (v28((v30 + v27), 1, v31) == 1)
        {
          sub_1BD40FF04(v33, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
LABEL_25:
          sub_1BD0DE53C(v30, &qword_1EBD44E80, &qword_1BE0D3550);
          break;
        }

        v34 = v22;
        v35 = v41;
        sub_1BD40F820(v30 + v27, v41, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        v36 = sub_1BD3D8E1C(v33, v35);
        v37 = v35;
        v22 = v34;
        sub_1BD40FF04(v37, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        sub_1BD40FF04(v33, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        sub_1BD0DE53C(v30, &qword_1EBD44D48, &qword_1BE1067C0);
        v23 = v44;
        v11 = v30;
        v32 = v46;
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      v38 = sub_1BD3CED6C();
      sub_1BD40FF04(v13, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      sub_1BD40FF04(v17, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      if (v38)
      {
        v21 += v42;
        v20 = v47 + v42;
        v18 = v32 - 1;
        if (v18)
        {
          continue;
        }
      }

      return v38 & 1;
    }

    sub_1BD40FF04(v13, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
    sub_1BD40FF04(v17, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
    goto LABEL_27;
  }

  v38 = 1;
  return v38 & 1;
}

uint64_t sub_1BD3FEC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1BD40FE9C(v13, v10, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      sub_1BD40FE9C(v14, v6, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      v16 = *v10 == *v6 && v10[1] == v6[1];
      if (!v16 && (sub_1BE053B84() & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
      {
        break;
      }

      v17 = sub_1BE04AED4();
      sub_1BD40FF04(v6, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      sub_1BD40FF04(v10, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1BD40FF04(v6, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
    sub_1BD40FF04(v10, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1BD3FEE38(uint64_t a1, uint64_t a2)
{
  v46 = sub_1BE0493F4();
  v4 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v33 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E98, &unk_1BE0D4CB0);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v33 - v8;
  v41 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v14 || a1 == a2)
  {
    v31 = 1;
    return v31 & 1;
  }

  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v34 = (v4 + 32);
  v35 = (v4 + 8);
  v39 = *(v11 + 72);
  v40 = (v4 + 48);
  v18 = &qword_1EBD3BCA0;
  v19 = v44;
  while (1)
  {
    sub_1BD40FE9C(v16, v13, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
    v20 = v45;
    sub_1BD40FE9C(v17, v45, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
    v21 = v42;
    v22 = *(v43 + 48);
    sub_1BD0DE19C(v13, v42, v18, &qword_1BE0BD3E0);
    sub_1BD0DE19C(v20, v21 + v22, v18, &qword_1BE0BD3E0);
    v23 = v18;
    v24 = *v40;
    if ((*v40)(v21, 1, v46) != 1)
    {
      break;
    }

    if (v24(v21 + v22, 1, v46) != 1)
    {
      goto LABEL_15;
    }

    sub_1BD0DE53C(v21, v18, &qword_1BE0BD3E0);
LABEL_10:
    v30 = v45;
    v31 = MEMORY[0x1BFB374A0](&v13[*(v41 + 20)], v45 + *(v41 + 20));
    sub_1BD40FF04(v30, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
    sub_1BD40FF04(v13, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
    if (v31)
    {
      v17 += v39;
      v16 += v39;
      if (--v14)
      {
        continue;
      }
    }

    return v31 & 1;
  }

  v38 = v14;
  sub_1BD0DE19C(v21, v19, v18, &qword_1BE0BD3E0);
  if (v24(v21 + v22, 1, v46) != 1)
  {
    v25 = v36;
    v26 = v46;
    (*v34)(v36, v21 + v22, v46);
    sub_1BD40F6B8(&qword_1EBD44EA8, MEMORY[0x1E6967790], MEMORY[0x1E69677A8]);
    v37 = sub_1BE052334();
    v27 = *v35;
    v28 = v25;
    v29 = v44;
    (*v35)(v28, v26);
    v19 = v29;
    v27(v29, v26);
    sub_1BD0DE53C(v21, v23, &qword_1BE0BD3E0);
    v18 = v23;
    v14 = v38;
    if ((v37 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  (*v35)(v19, v46);
LABEL_15:
  sub_1BD0DE53C(v21, &qword_1EBD44E98, &unk_1BE0D4CB0);
LABEL_16:
  sub_1BD40FF04(v45, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
  sub_1BD40FF04(v13, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
LABEL_17:
  v31 = 0;
  return v31 & 1;
}

void sub_1BD3FF37C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v12 = PKPeerPaymentRecurringPaymentFrequencyToString();
      v13 = sub_1BE052434();
      v15 = v14;

      v16 = PKPeerPaymentRecurringPaymentFrequencyToString();
      v17 = sub_1BE052434();
      v19 = v18;

      if (v13 == v17 && v15 == v19)
      {
        v15, v20, v21, v22, v23, v24, v25, v26;
        v19, v5, v6, v7, v8, v9, v10, v11;
      }

      else
      {
        v28 = sub_1BE053B84();
        v15, v29, v30, v31, v32, v33, v34, v35;
        v19, v36, v37, v38, v39, v40, v41, v42;
        if ((v28 & 1) == 0)
        {
          return;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1BD3FF494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageGroup(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v50 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v51 = *(v8 + 72);
  while (1)
  {
    result = sub_1BD40FE9C(v13, v10, type metadata accessor for SEStorageUsageGroup);
    if (!v11)
    {
      break;
    }

    sub_1BD40FE9C(v14, v6, type metadata accessor for SEStorageUsageGroup);
    if ((sub_1BD3FF77C(*v10, *v6) & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_1BE04C164();
    sub_1BD40F6B8(&qword_1EBD3A358, MEMORY[0x1E69B8260], MEMORY[0x1E69B8270]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v22 = v55;
    v23 = v53;
    if (v54 == v52 && v55 == v53)
    {
      v55, v16, v52, v17, v18, v19, v20, v21;
      v23, v24, v25, v26, v27, v28, v29, v30;
    }

    else
    {
      v31 = sub_1BE053B84();
      v22, v32, v33, v34, v35, v36, v37, v38;
      v23, v39, v40, v41, v42, v43, v44, v45;
      if ((v31 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (*(v10 + *(v4 + 24)) != *(v6 + *(v4 + 24)))
    {
LABEL_19:
      sub_1BD40FF04(v6, type metadata accessor for SEStorageUsageGroup);
      sub_1BD40FF04(v10, type metadata accessor for SEStorageUsageGroup);
      return 0;
    }

    v46 = *(v4 + 28);
    v47 = *(v10 + v46);
    v48 = *(v6 + v46);
    sub_1BD40FF04(v6, type metadata accessor for SEStorageUsageGroup);
    sub_1BD40FF04(v10, type metadata accessor for SEStorageUsageGroup);
    result = v47 == v48;
    v49 = v47 != v48 || v11-- == 1;
    v14 += v51;
    v13 += v51;
    if (v49)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3FF77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v43 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v43 - v9;
  v56 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v10 = *(v56 - 1);
  MEMORY[0x1EEE9AC00](v56);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_30:
    v42 = 0;
    return v42 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v51 = a1 + v17;
  v49 = a2 + v17;
  v18 = sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  v19 = 0;
  v47 = (v5 + 48);
  v48 = v18;
  v43 = (v5 + 32);
  v44 = (v5 + 8);
  v50 = *(v10 + 72);
  v20 = &unk_1BE0B9F80;
  v46 = v12;
  while (1)
  {
    v21 = v50 * v19;
    result = sub_1BD40FE9C(v51 + v50 * v19, v15, type metadata accessor for SEStorageUsageGroup.PassEntry);
    if (v19 == v16)
    {
      break;
    }

    sub_1BD40FE9C(v49 + v21, v12, type metadata accessor for SEStorageUsageGroup.PassEntry);
    result = sub_1BE053074();
    if ((result & 1) == 0)
    {
      goto LABEL_29;
    }

    v23 = *(v15 + 1);
    v24 = *(v12 + 1);
    v25 = *(v23 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_29;
    }

    if (v25)
    {
      v26 = v23 == v24;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v39 = (v23 + 40);
      v40 = (v24 + 40);
      while (v25)
      {
        result = *(v39 - 1);
        if (result != *(v40 - 1) || *v39 != *v40)
        {
          result = sub_1BE053B84();
          if ((result & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v39 += 2;
        v40 += 2;
        if (!--v25)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      break;
    }

LABEL_13:
    v27 = v56[6];
    v28 = *(v55 + 48);
    v29 = v54;
    sub_1BD0DE19C(&v15[v27], v54, &unk_1EBD39970, v20);
    sub_1BD0DE19C(&v12[v27], v29 + v28, &unk_1EBD39970, v20);
    v30 = *v47;
    v31 = v20;
    if ((*v47)(v29, 1, v4) == 1)
    {
      if (v30(v29 + v28, 1, v4) != 1)
      {
        goto LABEL_35;
      }

      sub_1BD0DE53C(v29, &unk_1EBD39970, v20);
      v12 = v46;
    }

    else
    {
      v32 = v29;
      v33 = v29;
      v34 = v53;
      sub_1BD0DE19C(v32, v53, &unk_1EBD39970, v31);
      if (v30(v33 + v28, 1, v4) == 1)
      {
        (*v44)(v34, v4);
        v29 = v33;
LABEL_35:
        sub_1BD0DE53C(v29, &qword_1EBD3A750, &unk_1BE0D3540);
        v12 = v46;
LABEL_29:
        sub_1BD40FF04(v12, type metadata accessor for SEStorageUsageGroup.PassEntry);
        sub_1BD40FF04(v15, type metadata accessor for SEStorageUsageGroup.PassEntry);
        goto LABEL_30;
      }

      v35 = v34;
      v36 = v52;
      (*v43)(v52, v33 + v28, v4);
      sub_1BD40F6B8(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v45 = sub_1BE052334();
      v37 = *v44;
      (*v44)(v36, v4);
      v37(v35, v4);
      sub_1BD0DE53C(v33, &unk_1EBD39970, v31);
      v20 = v31;
      v12 = v46;
      if ((v45 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (*&v15[v56[7]] != *&v12[v56[7]])
    {
      goto LABEL_29;
    }

    v38 = v15[v56[8]] ^ v12[v56[8]];
    sub_1BD40FF04(v12, type metadata accessor for SEStorageUsageGroup.PassEntry);
    sub_1BD40FF04(v15, type metadata accessor for SEStorageUsageGroup.PassEntry);
    if ((v38 & 1) == 0 && ++v19 != v16)
    {
      continue;
    }

    v42 = v38 ^ 1;
    return v42 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3FFD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BE053B84() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}