uint64_t type metadata accessor for FlightWidgetProgressView(uint64_t a1)
{
  result = qword_1EBD385B8;
  if (!qword_1EBD385B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD0DBFDC()
{
  result = qword_1EBD38580;
  if (!qword_1EBD38580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38580);
  }

  return result;
}

uint64_t sub_1BD0DC030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v60 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
  MEMORY[0x1EEE9AC00](v61);
  v7 = v60 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A8, &qword_1BE0B6C38);
  MEMORY[0x1EEE9AC00](v65);
  v68 = v60 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386B0, &qword_1BE0B6C40);
  MEMORY[0x1EEE9AC00](v64);
  v66 = v60 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386B8, &qword_1BE0B6C48);
  MEMORY[0x1EEE9AC00](v69);
  v67 = v60 - v10;
  LOBYTE(v10) = *a1;
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a1 + 48);
  v62 = *(a1 + 56);
  v63 = v13;
  if (v10)
  {
    v14 = sub_1BE051CB4();
  }

  else
  {
    v14 = sub_1BE051CA4();
  }

  v60[0] = v15;
  v60[1] = v14;
  *&v71 = v12;
  *(&v71 + 1) = v11;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  type metadata accessor for FlightWidgetProgressView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
  sub_1BE04E534();
  sub_1BE050364();
  v23 = sub_1BE050354();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v24 = sub_1BE0503B4();
  sub_1BD0DE53C(v5, &qword_1EBD49130, &qword_1BE0C7180);
  v25 = sub_1BE0505F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v24, v26, v28, v30, v32, v33, v34, v35;
  sub_1BD0DDF10(v16, v18, (v20 & 1), v36, v37, v38, v39, v40);
  v22, v41, v42, v43, v44, v45, v46, v47;
  v48 = &v7[*(v61 + 36)];
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v50 = *MEMORY[0x1E6980FD8];
  v51 = sub_1BE0505C4();
  v52 = *(v51 - 8);
  (*(v52 + 104))(v48 + v49, v50, v51);
  (*(v52 + 56))(v48 + v49, 0, 1, v51);
  *v48 = swift_getKeyPath();
  *v7 = v25;
  *(v7 + 1) = v27;
  v7[16] = v29 & 1;
  *(v7 + 3) = v31;
  v53 = v68;
  sub_1BD0DE204(v7, v68, &qword_1EBD386A0, &qword_1BE0B6C30);
  *(v53 + *(v65 + 36)) = 257;
  sub_1BE04E5E4();
  v54 = v66;
  sub_1BD0DE204(v53, v66, &qword_1EBD386A8, &qword_1BE0B6C38);
  v55 = (v54 + *(v64 + 36));
  v56 = v72;
  *v55 = v71;
  v55[1] = v56;
  v55[2] = v73;
  v57 = sub_1BE051424();
  v58 = v67;
  sub_1BD0DE204(v54, v67, &qword_1EBD386B0, &qword_1BE0B6C40);
  *(v58 + *(v69 + 36)) = v57;
  sub_1BD0DE26C();
  sub_1BE050DE4();
  return sub_1BD0DE53C(v58, &qword_1EBD386B8, &qword_1BE0B6C48);
}

uint64_t sub_1BD0DC548(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*a1)
  {
    sub_1BE051CF4();
  }

  else
  {
    sub_1BE051CE4();
  }

  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1BE050454();
  v10 = sub_1BE0505F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v9, v11, v13, v15, v17, v18, v19, v20;
  sub_1BD0DDF10(v2, v4, (v6 & 1), v21, v22, v23, v24, v25);
  v8, v26, v27, v28, v29, v30, v31, v32;
  sub_1BE0503A4();
  v33 = sub_1BE050544();
  v35 = v34;
  LOBYTE(v4) = v36;
  v38 = v37;
  sub_1BD0DDF10(v10, v12, (v14 & 1), v37, v39, v40, v41, v42);
  v16, v43, v44, v45, v46, v47, v48, v49;
  sub_1BE048964();
  v50 = sub_1BE050574();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_1BD0DDF10(v33, v35, (v4 & 1), v55, v57, v58, v59, v60);
  v1, v61, v62, v63, v64, v65, v66, v67;
  v38, v68, v69, v70, v71, v72, v73, v74;
  sub_1BE04E5E4();
  *&v76 = v50;
  *(&v76 + 1) = v52;
  LOBYTE(v77) = v54 & 1;
  *(&v77 + 1) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E810, qword_1BE0EBFB0);
  sub_1BD0DDF20();
  sub_1BE050DE4();
  v81[2] = v78;
  v81[3] = v79;
  v81[4] = v80;
  v81[0] = v76;
  v81[1] = v77;
  return sub_1BD0DE53C(v81, &unk_1EBD4E810, qword_1BE0EBFB0);
}

double FlightWidgetProgressView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38588, &qword_1BE0B6A70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - v4;
  *v5 = sub_1BE04F7B4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38590, &qword_1BE0B6A78);
  sub_1BD0DC918(v1, &v5[*(v6 + 44)]);
  v7 = *v1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8 || v9 >= 2)
  {
    type metadata accessor for FlightWidgetProgressView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    sub_1BE04E534();
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v5, a1, &qword_1EBD38588, &qword_1BE0B6A70);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38598, &unk_1BE0B6A80) + 36));
  v11 = v13[1];
  *v10 = v13[0];
  v10[1] = v11;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_1BD0DC918@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385E0, &qword_1BE0B6B30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385E8, &qword_1BE0B6B38);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  *v15 = sub_1BE04F4F4();
  *(v15 + 1) = 0x402C000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385F0, &qword_1BE0B6B40);
  sub_1BD0DCBB8(a1, &v15[*(v16 + 44)]);
  *v9 = sub_1BE04F4C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385F8, &qword_1BE0B6B48);
  sub_1BD0DD298(a1, &v9[*(v17 + 44)]);
  sub_1BD0DE19C(v15, v12, &qword_1EBD385E8, &qword_1BE0B6B38);
  sub_1BD0DE19C(v9, v6, &qword_1EBD385E0, &qword_1BE0B6B30);
  sub_1BD0DE19C(v12, a2, &qword_1EBD385E8, &qword_1BE0B6B38);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38600, &qword_1BE0B6B50);
  sub_1BD0DE19C(v6, a2 + *(v18 + 48), &qword_1EBD385E0, &qword_1BE0B6B30);
  sub_1BD0DE53C(v9, &qword_1EBD385E0, &qword_1BE0B6B30);
  sub_1BD0DE53C(v15, &qword_1EBD385E8, &qword_1BE0B6B38);
  sub_1BD0DE53C(v6, &qword_1EBD385E0, &qword_1BE0B6B30);
  return sub_1BD0DE53C(v12, &qword_1EBD385E8, &qword_1BE0B6B38);
}

unint64_t sub_1BD0DCB64()
{
  result = qword_1EBD385A8;
  if (!qword_1EBD385A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD385A8);
  }

  return result;
}

uint64_t sub_1BD0DCBB8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38648, &qword_1BE0B6BF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38650, &qword_1BE0B6BF8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38658, &qword_1BE0B6C00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v65 - v17;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - v19;
  v22 = *a1;
  v68 = v8;
  v69 = v7;
  if (v22 == 4)
  {
    v23 = *(v8 + 56);
    v24 = &v65 - v19;
    v25 = 1;
  }

  else
  {
    v26 = *(a1 + 56);
    v83 = *(a1 + 40);
    v84 = v26;
    v27 = *(a1 + 88);
    v85 = *(a1 + 72);
    v86 = v27;
    v28 = *(a1 + 24);
    v81 = *(a1 + 8);
    v82 = v28;
    v29 = *(a1 + 56);
    v97 = *(a1 + 40);
    v98 = v29;
    v30 = *(a1 + 88);
    v99 = *(a1 + 72);
    v100 = v30;
    v31 = *(a1 + 24);
    v95 = *(a1 + 8);
    v96 = v31;
    sub_1BD0DDE0C(&v81, &v88);
    sub_1BD0DC030(&v95, v10);
    v90 = v97;
    v91 = v98;
    v92 = v99;
    v93 = v100;
    v88 = v95;
    v89 = v96;
    sub_1BD0DDE68(&v88);
    sub_1BD0DE204(v10, v21, &qword_1EBD38650, &qword_1BE0B6BF8);
    v23 = *(v8 + 56);
    v24 = v21;
    v25 = 0;
  }

  v67 = v23;
  (v23)(v24, v25, 1, v7, v20);
  v32 = *(a1 + 25);
  v33 = *(a1 + 28);
  v34 = *(a1 + 26);
  v35 = a1[216];
  v36 = *a1;
  v37 = v36 >= 2;
  v38 = v36 - 2;
  v66 = v10;
  if (v37 && v38 < 2)
  {
    sub_1BE048964();
    sub_1BE048964();
  }

  else
  {
    type metadata accessor for FlightWidgetProgressView(0);
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    sub_1BE04E534();
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v81 = v32;
  *(&v81 + 1) = v33;
  *&v82 = v34;
  BYTE8(v82) = v35;
  *&v83 = 0x4034000000000000;
  WORD4(v86) = 256;
  v87 = xmmword_1BE0B6A60;
  sub_1BE052434();
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38660, &qword_1BE0B6C08);
  sub_1BD0DDFA4();
  sub_1BE050DE4();
  v40, v41, v42, v43, v44, v45, v46, v47;
  v92 = v85;
  v93 = v86;
  v94 = v87;
  v88 = v81;
  v89 = v82;
  v90 = v83;
  v91 = v84;
  sub_1BD0DE53C(&v88, &qword_1EBD38660, &qword_1BE0B6C08);
  if (*a1 == 4)
  {
    v48 = v70;
    v49 = v70;
    v50 = 1;
  }

  else
  {
    v51 = *(a1 + 152);
    v97 = *(a1 + 136);
    v98 = v51;
    v52 = *(a1 + 184);
    v99 = *(a1 + 168);
    v100 = v52;
    v53 = *(a1 + 120);
    v95 = *(a1 + 104);
    v96 = v53;
    v54 = *(a1 + 152);
    v77 = *(a1 + 136);
    v78 = v54;
    v55 = *(a1 + 184);
    v79 = *(a1 + 168);
    v80 = v55;
    v56 = *(a1 + 120);
    v75 = *(a1 + 104);
    v76 = v56;
    sub_1BD0DDE0C(&v95, &v81);
    v57 = v66;
    sub_1BD0DC030(&v75, v66);
    v83 = v77;
    v84 = v78;
    v85 = v79;
    v86 = v80;
    v81 = v75;
    v82 = v76;
    sub_1BD0DDE68(&v81);
    v48 = v70;
    sub_1BD0DE204(v57, v70, &qword_1EBD38650, &qword_1BE0B6BF8);
    v49 = v48;
    v50 = 0;
  }

  v67(v49, v50, 1, v69);
  sub_1BD0DE19C(v21, v15, &qword_1EBD38658, &qword_1BE0B6C00);
  v70 = v21;
  v58 = v15;
  v59 = v73;
  v60 = v74;
  sub_1BD0DE19C(v74, v73, &qword_1EBD38648, &qword_1BE0B6BF0);
  v61 = v71;
  sub_1BD0DE19C(v48, v71, &qword_1EBD38658, &qword_1BE0B6C00);
  v62 = v72;
  sub_1BD0DE19C(v58, v72, &qword_1EBD38658, &qword_1BE0B6C00);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38698, &unk_1BE0B6C20);
  sub_1BD0DE19C(v59, v62 + *(v63 + 48), &qword_1EBD38648, &qword_1BE0B6BF0);
  sub_1BD0DE19C(v61, v62 + *(v63 + 64), &qword_1EBD38658, &qword_1BE0B6C00);
  sub_1BD0DE53C(v48, &qword_1EBD38658, &qword_1BE0B6C00);
  sub_1BD0DE53C(v60, &qword_1EBD38648, &qword_1BE0B6BF0);
  sub_1BD0DE53C(v70, &qword_1EBD38658, &qword_1BE0B6C00);
  sub_1BD0DE53C(v61, &qword_1EBD38658, &qword_1BE0B6C00);
  sub_1BD0DE53C(v59, &qword_1EBD38648, &qword_1BE0B6BF0);
  return sub_1BD0DE53C(v58, &qword_1EBD38658, &qword_1BE0B6C00);
}

uint64_t sub_1BD0DD298@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38608, &qword_1BE0B6B58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v84[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38610, &qword_1BE0B6B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v84[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84[-v13];
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v84[-v16];
  v19 = *a1;
  v91 = v6;
  if (v19 == 4)
  {
    (*(v4 + 56))(&v84[-v16], 1, 1, v3, v17);
  }

  else
  {
    v20 = *(a1 + 56);
    v123 = *(a1 + 40);
    v124 = v20;
    v21 = *(a1 + 88);
    v125 = *(a1 + 72);
    v126 = v21;
    v22 = *(a1 + 24);
    v121 = *(a1 + 8);
    v122 = v22;
    v23 = *(a1 + 56);
    v115 = *(a1 + 40);
    v116 = v23;
    v24 = *(a1 + 88);
    v117 = *(a1 + 72);
    v118 = v24;
    v25 = *(a1 + 24);
    v113 = *(a1 + 8);
    v114 = v25;
    sub_1BD0DDE0C(&v121, v129);
    sub_1BD0DC548(&v113);
    *&v129[32] = v115;
    *&v129[48] = v116;
    *&v129[64] = v117;
    *&v129[80] = v118;
    *v129 = v113;
    *&v129[16] = v114;
    sub_1BD0DDE68(v129);
    sub_1BD0DE204(v6, v18, &qword_1EBD38608, &qword_1BE0B6B58);
    (*(v4 + 56))(v18, 0, 1, v3, v26);
  }

  v27 = *(a1 + 30);
  v92 = v18;
  if (v27 && *a1 != 4)
  {
    *v129 = *(a1 + 29);
    *&v129[8] = v27;
    sub_1BD0DDEBC();
    v89 = v14;
    sub_1BE048C84();
    v28 = sub_1BE0506C4();
    v30 = v29;
    v31 = v3;
    v33 = v32;
    v35 = v34;
    v36 = sub_1BE050454();
    v90 = v9;
    v37 = v4;
    v38 = v36;
    v39 = sub_1BE0505F4();
    v87 = v40;
    v88 = v39;
    v85 = v41;
    v86 = v42;
    v43 = v38;
    v4 = v37;
    v43, v40, v41, v42, v44, v45, v46, v47;
    v48 = (v33 & 1);
    v3 = v31;
    sub_1BD0DDF10(v28, v30, v48, v49, v50, v51, v52, v53);
    v35, v54, v55, v56, v57, v58, v59, v60;
    KeyPath = swift_getKeyPath();
    v62 = swift_getKeyPath();
    LOBYTE(v31) = v85 & 1;
    v129[0] = v85 & 1;
    LOBYTE(v121) = 0;
    v63 = sub_1BE0513E4();
    *&v98 = v88;
    *(&v98 + 1) = v87;
    LOBYTE(v99) = v31;
    *(&v99 + 1) = v86;
    *&v100 = KeyPath;
    *(&v100 + 1) = 1;
    LOBYTE(v101) = 0;
    *(&v101 + 1) = v62;
    *&v102 = 0x3FE6666666666666;
    WORD4(v102) = 256;
    HIWORD(v102) = *&v129[4];
    *(&v102 + 10) = *v129;
    v113 = v98;
    v114 = v99;
    v116 = v101;
    v117 = v102;
    v115 = v100;
    v105 = v98;
    v106 = v99;
    v108 = v101;
    v109 = v102;
    v107 = v100;
    v103 = v63;
    *&v118 = v63;
    v97 = 1;
    *&v110 = v63;
    *(&v96[1] + 7) = v99;
    *(v96 + 7) = v98;
    *(&v96[5] + 7) = v63;
    *(&v96[4] + 7) = v102;
    *(&v96[3] + 7) = v101;
    *(&v96[2] + 7) = v100;
    v95 = 1;
    sub_1BD0DE19C(&v98, v129, &qword_1EBD38638, &unk_1BE0B6BE0);
    sub_1BD0DE19C(&v105, v129, &qword_1EBD38638, &unk_1BE0B6BE0);
    sub_1BD0DE53C(&v113, &qword_1EBD38638, &unk_1BE0B6BE0);
    *&v129[41] = v96[2];
    *&v129[57] = v96[3];
    *&v129[73] = v96[4];
    *&v129[88] = *(&v96[4] + 15);
    *&v129[9] = v96[0];
    v104 = 0;
    *v129 = 0;
    v129[8] = 1;
    *&v129[25] = v96[1];
    *&v129[104] = 0;
    v130 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38618, &qword_1BE0B6B68);
    sub_1BD0DE4F4(&qword_1EBD38620, &qword_1EBD38618, &qword_1BE0B6B68, MEMORY[0x1E6981F48]);
    v9 = v90;
    sub_1BE04F9A4();
    v14 = v89;
    sub_1BD0DE53C(&v98, &qword_1EBD38638, &unk_1BE0B6BE0);
    *&v129[64] = v125;
    *&v129[80] = v126;
    *&v129[96] = v127;
    v130 = v128;
    *v129 = v121;
    *&v129[16] = v122;
    *&v129[32] = v123;
    *&v129[48] = v124;
  }

  else
  {
    LOBYTE(v113) = 1;
    LOBYTE(v105) = 1;
    *&v121 = 0;
    BYTE8(v121) = 1;
    HIBYTE(v128) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38618, &qword_1BE0B6B68);
    sub_1BD0DE4F4(&qword_1EBD38620, &qword_1EBD38618, &qword_1BE0B6B68, MEMORY[0x1E6981F48]);
    sub_1BE04F9A4();
  }

  v64 = v91;
  if (*a1 == 4)
  {
    (*(v4 + 56))(v14, 1, 1, v3);
  }

  else
  {
    v65 = *(a1 + 152);
    v115 = *(a1 + 136);
    v116 = v65;
    v66 = *(a1 + 184);
    v117 = *(a1 + 168);
    v118 = v66;
    v67 = *(a1 + 120);
    v113 = *(a1 + 104);
    v114 = v67;
    v68 = *(a1 + 152);
    v107 = *(a1 + 136);
    v108 = v68;
    v69 = *(a1 + 184);
    v109 = *(a1 + 168);
    v110 = v69;
    v70 = *(a1 + 120);
    v105 = *(a1 + 104);
    v106 = v70;
    sub_1BD0DDE0C(&v113, &v121);
    sub_1BD0DC548(&v105);
    v123 = v107;
    v124 = v108;
    v125 = v109;
    v126 = v110;
    v121 = v105;
    v122 = v106;
    sub_1BD0DDE68(&v121);
    sub_1BD0DE204(v64, v14, &qword_1EBD38608, &qword_1BE0B6B58);
    (*(v4 + 56))(v14, 0, 1, v3);
  }

  v71 = v92;
  v72 = v94;
  sub_1BD0DE19C(v92, v94, &qword_1EBD38610, &qword_1BE0B6B60);
  v109 = *&v129[64];
  v110 = *&v129[80];
  v111 = *&v129[96];
  v112 = v130;
  v105 = *v129;
  v106 = *&v129[16];
  v107 = *&v129[32];
  v108 = *&v129[48];
  sub_1BD0DE19C(v14, v9, &qword_1EBD38610, &qword_1BE0B6B60);
  v73 = v93;
  sub_1BD0DE19C(v72, v93, &qword_1EBD38610, &qword_1BE0B6B60);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38628, &qword_1BE0B6B70);
  v75 = v73 + *(v74 + 48);
  v76 = v109;
  v77 = v110;
  v117 = v109;
  v118 = v110;
  v78 = v111;
  v119 = v111;
  v79 = v112;
  v120 = v112;
  v80 = v105;
  v81 = v106;
  v113 = v105;
  v114 = v106;
  v82 = v108;
  v115 = v107;
  v116 = v108;
  *(v75 + 32) = v107;
  *(v75 + 48) = v82;
  *v75 = v80;
  *(v75 + 16) = v81;
  *(v75 + 112) = v79;
  *(v75 + 80) = v77;
  *(v75 + 96) = v78;
  *(v75 + 64) = v76;
  sub_1BD0DE19C(v9, v73 + *(v74 + 64), &qword_1EBD38610, &qword_1BE0B6B60);
  sub_1BD0DE19C(&v113, &v121, &qword_1EBD38630, &qword_1BE0B6B78);
  sub_1BD0DE53C(v14, &qword_1EBD38610, &qword_1BE0B6B60);
  sub_1BD0DE53C(v71, &qword_1EBD38610, &qword_1BE0B6B60);
  sub_1BD0DE53C(v9, &qword_1EBD38610, &qword_1BE0B6B60);
  v125 = v109;
  v126 = v110;
  v127 = v111;
  v128 = v112;
  v121 = v105;
  v122 = v106;
  v123 = v107;
  v124 = v108;
  sub_1BD0DE53C(&v121, &qword_1EBD38630, &qword_1BE0B6B78);
  return sub_1BD0DE53C(v72, &qword_1EBD38610, &qword_1BE0B6B60);
}

uint64_t sub_1BD0DDAD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37 = v1[14];
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  *(a1 + 192) = v35;
  *(a1 + 208) = v4;
  *(a1 + 224) = v1[14];
  *(a1 + 128) = v6;
  *(a1 + 144) = v8;
  *(a1 + 160) = v10;
  *(a1 + 176) = v3;
  *(a1 + 64) = v12;
  *(a1 + 80) = v14;
  *(a1 + 96) = v16;
  *(a1 + 112) = v7;
  *a1 = v20;
  *(a1 + 16) = v19;
  v38 = *(v1 + 30);
  *(a1 + 240) = *(v1 + 30);
  *(a1 + 32) = v21;
  *(a1 + 48) = v13;
  return sub_1BD0DBDF0(v24, v23);
}

unint64_t sub_1BD0DDB98(uint64_t a1)
{
  result = sub_1BD0DDBC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD0DDBC0()
{
  result = qword_1EBD385B0;
  if (!qword_1EBD385B0)
  {
    type metadata accessor for FlightWidgetProgressView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD385B0);
  }

  return result;
}

void sub_1BD0DDC60(uint64_t a1)
{
  sub_1BD0DDCF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD0DDCF8(uint64_t a1)
{
  if (!qword_1EBD385C8)
  {
    sub_1BD0DBFDC();
    v1 = sub_1BE04E544();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD385C8);
    }
  }
}

unint64_t sub_1BD0DDD54()
{
  result = qword_1EBD385D0;
  if (!qword_1EBD385D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38598, &unk_1BE0B6A80);
    sub_1BD0DE4F4(&qword_1EBD385D8, &qword_1EBD38588, &qword_1BE0B6A70, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD385D0);
  }

  return result;
}

unint64_t sub_1BD0DDEBC()
{
  result = qword_1EBD35F30;
  if (!qword_1EBD35F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F30);
  }

  return result;
}

void sub_1BD0DDF10(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }

  else
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

unint64_t sub_1BD0DDF20()
{
  result = qword_1EBD38640;
  if (!qword_1EBD38640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4E810, qword_1BE0EBFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38640);
  }

  return result;
}

unint64_t sub_1BD0DDFA4()
{
  result = qword_1EBD38668;
  if (!qword_1EBD38668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38660, &qword_1BE0B6C08);
    sub_1BD0DE030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38668);
  }

  return result;
}

unint64_t sub_1BD0DE030()
{
  result = qword_1EBD38670;
  if (!qword_1EBD38670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38678, &qword_1BE0B6C10);
    sub_1BD0DE0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38670);
  }

  return result;
}

unint64_t sub_1BD0DE0BC()
{
  result = qword_1EBD38680;
  if (!qword_1EBD38680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38688, &qword_1BE0B6C18);
    sub_1BD0DE148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38680);
  }

  return result;
}

unint64_t sub_1BD0DE148()
{
  result = qword_1EBD38690;
  if (!qword_1EBD38690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38690);
  }

  return result;
}

uint64_t sub_1BD0DE19C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BD0DE204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BD0DE26C()
{
  result = qword_1EBD386C8;
  if (!qword_1EBD386C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386B8, &qword_1BE0B6C48);
    sub_1BD0DE324();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD386C8);
  }

  return result;
}

unint64_t sub_1BD0DE324()
{
  result = qword_1EBD386D0;
  if (!qword_1EBD386D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386B0, &qword_1BE0B6C40);
    sub_1BD0DE3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD386D0);
  }

  return result;
}

unint64_t sub_1BD0DE3B0()
{
  result = qword_1EBD386D8;
  if (!qword_1EBD386D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386A8, &qword_1BE0B6C38);
    sub_1BD0DE43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD386D8);
  }

  return result;
}

unint64_t sub_1BD0DE43C()
{
  result = qword_1EBD386E0;
  if (!qword_1EBD386E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386A0, &qword_1BE0B6C30);
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD386E0);
  }

  return result;
}

uint64_t sub_1BD0DE4F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1BD0DE53C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1BD0DE59C(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v16;
  v19 = *MEMORY[0x1E69B80E0];
  v20 = *(v3 + 104);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v20(v11, v19, v2, v17);
      result = PKPassKitBundle();
      if (result)
      {
        v22 = result;
        v23 = sub_1BE04B6F4();
        v18 = v11;
        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      if (a1 != 3)
      {
        v20(v5, v19, v2, v17);
        result = PKPassKitBundle();
        if (result)
        {
          v22 = result;
          v23 = sub_1BE04B6F4();
          v18 = v5;
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v20(v8, v19, v2, v17);
      result = PKPassKitBundle();
      if (result)
      {
        v22 = result;
        v23 = sub_1BE04B6F4();
        v18 = v8;
LABEL_15:

        (*(v3 + 8))(v18, v2);
        return v23;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a1)
  {
    v20(&v24 - v16, v19, v2, v17);
    result = PKPassKitBundle();
    if (result)
    {
      v22 = result;
      v23 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v20(v14, v19, v2, v17);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_1BE04B6F4();
    v18 = v14;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_1BD0DE914(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v16;
  v19 = *MEMORY[0x1E69B80E0];
  v20 = *(v3 + 104);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v20(v11, v19, v2, v17);
      result = PKPassKitBundle();
      if (result)
      {
        v22 = result;
        v23 = sub_1BE04B6F4();
        v18 = v11;
        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      if (a1 != 3)
      {
        v20(v5, v19, v2, v17);
        result = PKPassKitBundle();
        if (result)
        {
          v22 = result;
          v23 = sub_1BE04B6F4();
          v18 = v5;
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v20(v8, v19, v2, v17);
      result = PKPassKitBundle();
      if (result)
      {
        v22 = result;
        v23 = sub_1BE04B6F4();
        v18 = v8;
LABEL_15:

        (*(v3 + 8))(v18, v2);
        return v23;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a1)
  {
    v20(&v24 - v16, v19, v2, v17);
    result = PKPassKitBundle();
    if (result)
    {
      v22 = result;
      v23 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v20(v14, v19, v2, v17);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_1BE04B6F4();
    v18 = v14;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t _s9PassKitUI19FlightExtendedStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t sub_1BD0DECD4(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v2);
  return sub_1BE053D64();
}

unint64_t sub_1BD0DED18@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD0E5D44(*a1);
  *a2 = result;
  return result;
}

id sub_1BD0DED60@<X0>(void *a1@<X8>)
{
  result = sub_1BD0DE59C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD0DEDDC()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD0DEE50(double *a1, double *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_1BE04AED4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0DEE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1BE04AF64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1BD0DEEEC(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD0DEF74(char a1)
{
  v2 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range;
  *(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range) = a1;
  if (os_variant_has_internal_ui() && PKSavingsGraphOverrideCurrentType())
  {

    return sub_1BD0DF668();
  }

  else
  {
    sub_1BD0DF95C();
    v4 = *(v1 + v2);

    return MEMORY[0x1EEE255E8](v4);
  }
}

void sub_1BD0DEFEC(void *a1)
{
  v2 = v1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v47 - v6;
  v7 = sub_1BE04AF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38850, &qword_1BE0B7010);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory__balances;
  v58 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD387A0, &qword_1BE113B10);
  sub_1BE04D874();
  (*(v18 + 32))(&v2[v21], v20, v17);
  v22 = PKLastSelectedAccountGraphRange();
  if (v22 >= 5)
  {
    v23 = 4;
  }

  else
  {
    v23 = v22;
  }

  v2[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range] = v23;
  v24 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService;
  *&v2[v24] = [objc_opt_self() sharedInstance];
  *&v2[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_activeState] = 2;
  *&v2[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_maxDataPoint] = 185;
  *&v2[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account] = a1;
  v25 = a1;
  sub_1BE04AEF4();
  v26 = sub_1BE04AE64();
  v49 = *(v8 + 8);
  v49(v13, v7);
  v27 = PKStartOfMonth();

  if (!v27)
  {
    goto LABEL_15;
  }

  sub_1BE04AEE4();

  sub_1BE04AEF4();
  sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if ((sub_1BE052314() & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v47 = v10;
  v48 = v25;
  v28 = v8;
  v29 = v54;
  (*(v8 + 16))(v54, v10, v7);
  v30 = v53;
  v31 = *(v28 + 32);
  v31(v29 + *(v53 + 48), v13, v7);
  v32 = v52;
  sub_1BD0DE19C(v29, v52, &unk_1EBD38810, &unk_1BE0B6F60);
  v33 = v2;
  v34 = *(v30 + 48);
  v35 = v50;
  v31(v50, v32, v7);
  v36 = (v32 + v34);
  v37 = v33;
  v38 = v49;
  v49(v36, v7);
  sub_1BD0DE204(v29, v32, &unk_1EBD38810, &unk_1BE0B6F60);
  v31(v35 + *(v55 + 36), (v32 + *(v30 + 48)), v7);
  v38(v32, v7);
  v38(v47, v7);
  swift_beginAccess();
  sub_1BD0DE19C(v35, v51, &unk_1EBD387B0, "FM\r");
  sub_1BE04D874();
  sub_1BD0DE53C(v35, &unk_1EBD387B0, "FM\r");
  swift_endAccess();
  if (os_variant_has_internal_ui() && PKSavingsGraphOverrideCurrentType())
  {
    v39 = type metadata accessor for AccountBalanceHistory(0);
    v57.receiver = v37;
    v57.super_class = v39;
    objc_msgSendSuper2(&v57, sel_init);
    sub_1BD0DF668();
  }

  else
  {
    v40 = type metadata accessor for AccountBalanceHistory(0);
    v56.receiver = v37;
    v56.super_class = v40;
    v41 = objc_msgSendSuper2(&v56, sel_init);
    sub_1BD0DF95C();
    sub_1BD0DFB34(0, 0);
    v42 = *&v41[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService];
    v43 = v48;
    if (v42)
    {
      [v42 registerObserver_];
    }

    v44 = [objc_opt_self() sharedInstance];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 registerObserver_];

      *&v41[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_activeState] = v46 & 0x101;
    }

    else
    {
    }
  }
}

uint64_t sub_1BD0DF668()
{
  v1 = type metadata accessor for AccountBalance(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_ui();
  if (result)
  {
    result = PKSavingsGraphOverrideCurrentType();
    if (result)
    {
      sub_1BD0E106C(v11);
      v13 = sub_1BD7B5448();
      v14 = v13[2];
      if (v14)
      {
        v30 = v9;
        v31 = v8;
        v28 = v13;
        v29 = v0;
        v32 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v15 = v13 + v32;
        v16 = *(v2 + 72);
        sub_1BE048C84();
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1BD0E5D5C(v15, v7);
          if (sub_1BE04AE74())
          {
            sub_1BD0E5D5C(v7, v4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1BD1D7640(0, v17[2] + 1, 1, v17);
            }

            v26 = v17[2];
            v25 = v17[3];
            if (v26 >= v25 >> 1)
            {
              v17 = sub_1BD1D7640((v25 > 1), v26 + 1, 1, v17);
            }

            sub_1BD0E5E24(v7);
            v17[2] = v26 + 1;
            sub_1BD0E5DC0(v4, v17 + v32 + v26 * v16);
          }

          else
          {
            sub_1BD0E5E24(v7);
          }

          v15 += v16;
          --v14;
        }

        while (v14);
        v28, v18, v19, v20, v21, v22, v23, v24;
        v0 = v29;
        v9 = v30;
        v8 = v31;
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v17;
      v27 = v0;
      sub_1BE04D8C4();
      sub_1BD0E1B54();
      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

void sub_1BD0DF95C()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService);
  if (v6)
  {
    v7 = [*(v0 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) accountIdentifier];
    sub_1BD0E106C(v5);
    v8 = sub_1BE04AE64();
    v9 = *(v2 + 8);
    v9(v5, v1);
    sub_1BE04AEF4();
    v10 = sub_1BE04AE64();
    v9(v5, v1);
    v11 = [v6 accountBalancesForAccountIdentifier:v7 startDate:v8 endDate:v10 type:1];

    if (v11)
    {
      sub_1BD0E5E8C(0, &qword_1EBD4DFC0, 0x1E69B8380);
      v12 = sub_1BE052744();
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD0E0398(v12, 0);
  v12, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1BD0DFB34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  v17 = *&v3[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService];
  if (v17)
  {
    v40 = a2;
    v18 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account;
    v39 = [*&v3[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account] accountIdentifier];
    v19 = [*&v3[v18] savingsDetails];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 createdDate];

      if (v21)
      {
        sub_1BE04AEE4();

        v22 = *(v10 + 32);
        v22(v8, v12, v9);
        (*(v10 + 56))(v8, 0, 1, v9);
        v22(v16, v8, v9);
      }

      else
      {
        (*(v10 + 56))(v8, 1, 1, v9);
        sub_1BE04AEF4();
        if ((*(v10 + 48))(v8, 1, v9) != 1)
        {
          sub_1BD0DE53C(v8, &unk_1EBD39970, &unk_1BE0B9F80);
        }
      }

      v23 = sub_1BE04AE64();
      v24 = *(v10 + 8);
      v24(v16, v9);
      sub_1BE04AEF4();
      v25 = sub_1BE04AE64();
      v24(v12, v9);
      v26 = swift_allocObject();
      v26[2] = v3;
      v26[3] = a1;
      v27 = v40;
      v26[4] = v40;
      aBlock[4] = sub_1BD0E5E80;
      v42 = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD0E02F4;
      aBlock[3] = &block_descriptor_44;
      v28 = _Block_copy(aBlock);
      v29 = v42;
      v30 = v3;
      sub_1BD0D44B8(a1, v27);
      v29, v31, v32, v33, v34, v35, v36, v37;
      v38 = v39;
      [v17 updateAccountBalancesForAccountIdentifier:v39 startDate:v23 endDate:v25 type:1 completion:v28];
      _Block_release(v28);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD0DFEE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE051F54();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v30 = sub_1BE052D54();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1BD0E5ED4;
  v34 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_51;
  v17 = _Block_copy(aBlock);
  v18 = v34;
  sub_1BE048C84();
  v19 = a2;
  sub_1BD0D44B8(a4, a5);
  v18, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD0E48AC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v27 = v30;
  MEMORY[0x1BFB3FDF0](0, v14, v11, v17);
  _Block_release(v17);

  (*(v32 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v31);
}

void sub_1BD0E0230(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t), void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    sub_1BE048C84();
    sub_1BD0E0398(v11, a3);
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  if (a4)
  {
    v19 = sub_1BE048964();
    a4(v19);
    sub_1BD0D4744(a4, a5, v20, v21, v22, v23, v24, v25);
  }
}

void sub_1BD0E02F4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4DFC0, 0x1E69B8380);
    v4 = sub_1BE052744();
  }

  sub_1BE048964();
  v7 = a3;
  v6(v4, a3);
  v5, v8, v9, v10, v11, v12, v13, v14;

  v4, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1BD0E0398(unint64_t a1, void *a2)
{
  v163 = a2;
  v157 = a1;
  v2 = sub_1BE04AF64();
  v152 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v155 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v147 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v147 - v8;
  v10 = type metadata accessor for AccountBalance(0);
  v158 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v147 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v147 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v147 - v20);
  v22 = sub_1BE04D214();
  v164 = *(v22 - 8);
  v165 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v147 - v26;
  if (v163)
  {
    v28 = v163;
    v29 = v163;
    sub_1BE04D194();
    v30 = v28;
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C54();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v166[0] = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v35 = sub_1BE053C74();
      v37 = v36;
      v38 = sub_1BD123690(v35, v36, v166);
      v37, v39, v40, v41, v42, v43, v44, v45;
      *(v33 + 4) = v38;
      _os_log_impl(&dword_1BD026000, v31, v32, "No balances with error %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34, v46, v47, v48, v49, v50, v51, v52);
      MEMORY[0x1BFB45F20](v34, -1, -1);
      MEMORY[0x1BFB45F20](v33, -1, -1);
    }

    else
    {
    }

    (*(v164 + 8))(v27, v165);
  }

  else
  {
    v160 = v18;
    v161 = v15;
    v153 = v10;
    v148 = v12;
    v162 = v9;
    sub_1BE04D194();
    v53 = sub_1BE04D204();
    v54 = sub_1BE052C54();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1BD026000, v53, v54, "Updating graph balances", v55, 2u);
      MEMORY[0x1BFB45F20](v55, -1, -1);
    }

    (*(v164 + 8))(v24, v165);
    v56 = v159;
    sub_1BD0E0E24(v21);
    v58 = v157;
    v57 = v158;
    v59 = v152;
    if (v157 >> 62)
    {
LABEL_36:
      v60 = sub_1BE053704();
    }

    else
    {
      v60 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    KeyPath = swift_getKeyPath();
    v62 = swift_getKeyPath();
    if (v60 < 1)
    {
      sub_1BE04D8B4(v166);
      KeyPath, v123, v124, v125, v126, v127, v128, v129;
      v62, v130, v131, v132, v133, v134, v135, v136;
      v137 = *(v166[0] + 2);
      v166[0], v138, v139, v140, v141, v142, v143, v144;
      if (v137 <= 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38820, &qword_1BE0DF880);
        v145 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v146 = swift_allocObject();
        v146[1] = xmmword_1BE0B69E0;
        sub_1BD0E5D5C(v21, v146 + v145);
        swift_getKeyPath();
        swift_getKeyPath();
        v166[0] = v146;
        v56;
        sub_1BE04D8C4();
        sub_1BD0E1B54();
      }

      v122 = v21;
    }

    else
    {
      v166[0] = MEMORY[0x1E69E7CC0];
      v57 = v56;
      sub_1BE04D8C4();
      v154 = v57;
      sub_1BD0E106C(v162);
      v63 = 0;
      v165 = v58 & 0xC000000000000001;
      v164 = *(v153 + 20);
      v156 = v58 & 0xFFFFFFFFFFFFFF8;
      v56 = (v59 + 1);
      v149 = (v59 + 4);
      v59 = &selRef_currentPassbookState;
      v152 = v21;
      v163 = v60;
      v150 = v2;
      v151 = v56;
      do
      {
        if (v165)
        {
          v64 = MEMORY[0x1BFB40900](v63, v58);
        }

        else
        {
          if (v63 >= *(v156 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v64 = *(v58 + 8 * v63 + 32);
        }

        v65 = v64;
        v66 = [v64 v59[76]];
        sub_1BE04AEE4();

        LOBYTE(v66) = sub_1BE04AE74();
        v57 = *v56;
        (*v56)(v6, v2);
        if (v66 & 1) != 0 || (v67 = [v65 v59[76]], sub_1BE04AEE4(), v67, LOBYTE(v67) = sub_1BE04AE84(), v57(v6, v2), (v67))
        {
        }

        else
        {
          v68 = [v65 balance];
          sub_1BE0529E4();
          v70 = v69;

          v71 = [v65 v59[76]];
          sub_1BE04AEE4();

          v72 = sub_1BE04AE64();
          v57(v6, v2);
          v73 = PKStartOfDay();

          if (!v73)
          {
            __break(1u);
            return;
          }

          v74 = v155;
          sub_1BE04AEE4();

          v75 = v160;
          *v160 = v70;
          (*v149)(&v75[*(v153 + 20)], v74, v2);
          sub_1BD0E5D5C(v75, v161);
          v76 = swift_getKeyPath();
          v77 = swift_getKeyPath();
          v159 = sub_1BE04D8A4();
          v79 = v78;
          v80 = *v78;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v79 = v80;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v80 = sub_1BD1D7640(0, v80[2] + 1, 1, v80);
            *v79 = v80;
          }

          v83 = v80[2];
          v82 = v80[3];
          if (v83 >= v82 >> 1)
          {
            v80 = sub_1BD1D7640((v82 > 1), v83 + 1, 1, v80);
            *v79 = v80;
          }

          v80[2] = v83 + 1;
          sub_1BD0E5DC0(v161, v80 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v83);
          (v159)(v166, 0);
          v76, v84, v85, v86, v87, v88, v89, v90;
          v77, v91, v92, v93, v94, v95, v96, v97;

          sub_1BD0E5E24(v160);
          v21 = v152;
          v2 = v150;
          v58 = v157;
          v56 = v151;
        }

        ++v63;
        v59 = &selRef_currentPassbookState;
      }

      while (v163 != v63);
      sub_1BD0E5D5C(v21, v148);
      v98 = swift_getKeyPath();
      v99 = swift_getKeyPath();
      v100 = sub_1BE04D8A4();
      v102 = v101;
      v103 = *v101;
      v104 = swift_isUniquelyReferenced_nonNull_native();
      *v102 = v103;
      if ((v104 & 1) == 0)
      {
        v103 = sub_1BD1D7640(0, v103[2] + 1, 1, v103);
        *v102 = v103;
      }

      v106 = v103[2];
      v105 = v103[3];
      v107 = v148;
      if (v106 >= v105 >> 1)
      {
        v103 = sub_1BD1D7640((v105 > 1), v106 + 1, 1, v103);
        v107 = v148;
        *v102 = v103;
      }

      v103[2] = v106 + 1;
      sub_1BD0E5DC0(v107, v103 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v106);
      v100(v166, 0);
      v98, v108, v109, v110, v111, v112, v113, v114;
      v99, v115, v116, v117, v118, v119, v120, v121;
      sub_1BD0E1B54();
      v57(v162, v2);
      v122 = v152;
    }

    sub_1BD0E5E24(v122);
  }
}

void sub_1BD0E0E24(double *a1@<X8>)
{
  v3 = sub_1BE04AF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account;
  v12 = [*(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) savingsDetails];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 accountSummary];

    v15 = [v14 currentBalance];
    if (!v15)
    {
      sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
      v15 = sub_1BE053044();
    }

    sub_1BE0529E4();
    v17 = v16;

    v18 = [*(v1 + v11) lastUpdated];
    if (v18)
    {
      v19 = v18;
      sub_1BE04AEE4();

      v20 = sub_1BE04AE64();
      (*(v4 + 8))(v10, v3);
    }

    else
    {
      v20 = 0;
    }

    v21 = PKStartOfDay();

    if (v21)
    {
      sub_1BE04AEE4();

      *a1 = v17;
      v22 = type metadata accessor for AccountBalance(0);
      (*(v4 + 32))(a1 + *(v22 + 20), v6, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD0E106C@<X0>(char *a1@<X8>)
{
  v73 = a1;
  v2 = sub_1BE04B2D4();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v61 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  v21 = sub_1BE04AF64();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v61 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v76 = &v61 - v32;
  v33 = sub_1BE04B2F4();
  v70 = *(v33 - 8);
  v71 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v75 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B1E4();
  if (os_variant_has_internal_ui() && PKSavingsGraphOverrideCurrentType())
  {
    v35 = sub_1BD7B5448();
    if (*(v35 + 16))
    {
      v36 = v35;
      v37 = type metadata accessor for AccountBalance(0);
      (*(v22 + 16))(v20, v36 + *(v37 + 20) + ((*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80)), v21);
      v38 = *(v22 + 56);
      v38(v20, 0, 1, v21);
      (*(v22 + 32))(v30, v20, v21);
    }

    else
    {
      v38 = *(v22 + 56);
      v38(v20, 1, 1, v21);
      sub_1BE04AEF4();
      if ((*(v22 + 48))(v20, 1, v21) != 1)
      {
        sub_1BD0DE53C(v20, &unk_1EBD39970, &unk_1BE0B9F80);
      }
    }
  }

  else
  {
    result = [*(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) savingsDetails];
    if (!result)
    {
      __break(1u);
      goto LABEL_36;
    }

    v40 = result;
    v41 = [result createdDate];

    if (v41)
    {
      sub_1BE04AEE4();

      v42 = *(v22 + 32);
      v42(v17, v24, v21);
      v38 = *(v22 + 56);
      v38(v17, 0, 1, v21);
      v42(v27, v17, v21);
    }

    else
    {
      v38 = *(v22 + 56);
      v38(v17, 1, 1, v21);
      sub_1BE04AEF4();
      if ((*(v22 + 48))(v17, 1, v21) != 1)
      {
        sub_1BD0DE53C(v17, &unk_1EBD39970, &unk_1BE0B9F80);
      }
    }

    v30 = v27;
  }

  v43 = *(v22 + 32);
  v43(v76, v30, v21);
  v38(v14, 1, 1, v21);
  v44 = *(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range);
  v69 = v43;
  v64 = v22 + 56;
  if (v44 > 1)
  {
    if (v44 == 2)
    {
      v46 = v67;
      v45 = v68;
      v47 = v65;
      (*(v67 + 104))(v65, *MEMORY[0x1E6969A78], v68);
      sub_1BE04AEF4();
      v63 = v38;
      v48 = v66;
    }

    else
    {
      if (v44 != 3)
      {
        sub_1BD0DE53C(v14, &unk_1EBD39970, &unk_1BE0B9F80);
        (*(v22 + 16))(v14, v76, v21);
        v38(v14, 0, 1, v21);
        goto LABEL_20;
      }

      v46 = v67;
      v45 = v68;
      v47 = v65;
      (*(v67 + 104))(v65, *MEMORY[0x1E6969A68], v68);
      sub_1BE04AEF4();
      v63 = v38;
      v48 = v66;
    }

    sub_1BE04B224();
    (*(v22 + 8))(v24, v21);
    (*(v46 + 8))(v47, v45);
    sub_1BD0DE53C(v14, &unk_1EBD39970, &unk_1BE0B9F80);
    v53 = v48;
    v38 = v63;
    sub_1BD0DE204(v53, v14, &unk_1EBD39970, &unk_1BE0B9F80);
LABEL_20:
    v54 = v74;
    goto LABEL_23;
  }

  v63 = v38;
  v50 = v67;
  v49 = v68;
  v51 = v65;
  if (v44)
  {
    (*(v67 + 104))(v65, *MEMORY[0x1E6969A78], v68);
  }

  else
  {
    (*(v67 + 104))(v65, *MEMORY[0x1E6969A48], v68);
  }

  sub_1BE04AEF4();
  v52 = v66;
  sub_1BE04B224();
  (*(v22 + 8))(v24, v21);
  (*(v50 + 8))(v51, v49);
  sub_1BD0DE53C(v14, &unk_1EBD39970, &unk_1BE0B9F80);
  sub_1BD0DE204(v52, v14, &unk_1EBD39970, &unk_1BE0B9F80);
  v54 = v74;
  v38 = v63;
LABEL_23:
  sub_1BD0DE19C(v14, v54, &unk_1EBD39970, &unk_1BE0B9F80);
  v55 = *(v22 + 48);
  if (v55(v54, 1, v21) != 1)
  {
    sub_1BD0DE53C(v54, &unk_1EBD39970, &unk_1BE0B9F80);
    v56 = v62;
    sub_1BD0DE19C(v14, v62, &unk_1EBD39970, &unk_1BE0B9F80);
    result = v55(v56, 1, v21);
    if (result != 1)
    {
      v57 = sub_1BE04AE84();
      (*(v70 + 8))(v75, v71);
      (*(v22 + 8))(v56, v21);
      if ((v57 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_36:
    __break(1u);
    return result;
  }

  (*(v70 + 8))(v75, v71);
  sub_1BD0DE53C(v54, &unk_1EBD39970, &unk_1BE0B9F80);
LABEL_27:
  sub_1BD0DE53C(v14, &unk_1EBD39970, &unk_1BE0B9F80);
  (*(v22 + 16))(v14, v76, v21);
  v38(v14, 0, 1, v21);
LABEL_28:
  v58 = v72;
  sub_1BD0DE204(v14, v72, &unk_1EBD39970, &unk_1BE0B9F80);
  v59 = v55(v58, 1, v21);
  v60 = v69;
  if (v59 == 1)
  {
    v69(v73, v76, v21);
    result = v55(v58, 1, v21);
    if (result != 1)
    {
      return sub_1BD0DE53C(v58, &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  else
  {
    (*(v22 + 8))(v76, v21);
    return v60(v73, v58, v21);
  }

  return result;
}

void sub_1BD0E1B54()
{
  v1 = sub_1BE04D214();
  v178 = *(v1 - 8);
  v179 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v181 = &v164 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v170 = &v164 - v5;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
  MEMORY[0x1EEE9AC00](v183);
  v174 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v173 = &v164 - v8;
  v182 = sub_1BE04AF64();
  v186 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v177 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v175 = &v164 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v184 = &v164 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v185 = &v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38828, &qword_1BE0B6F70);
  MEMORY[0x1EEE9AC00](v16);
  v176 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v164 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v164 - v22);
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  sub_1BE04D8B4(v187);
  KeyPath, v26, v27, v28, v29, v30, v31, v32;
  v25, v33, v34, v35, v36, v37, v38, v39;
  v40 = v187[0];
  sub_1BE048C84();
  sub_1BD0E49E8(v187);
  v40, v41, v42, v43, v44, v45, v46, v47;
  v48 = v187[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v187[0] = v48;
  v49 = v0;
  sub_1BE04D8C4();
  v50 = *(v16 + 48);
  v51 = swift_getKeyPath();
  v52 = swift_getKeyPath();
  sub_1BE04D8B4(v187);
  v51, v53, v54, v55, v56, v57, v58, v59;
  v52, v60, v61, v62, v63, v64, v65, v66;
  v67 = v187[0];
  sub_1BD0E267C(v23 + v50, v187[0]);
  v69 = v68;
  v67, v70, v71, v72, v73, v74, v75, v76;
  *v23 = v69;
  sub_1BD0DE19C(v23, v20, &qword_1EBD38828, &qword_1BE0B6F70);
  v77 = *v20;
  v78 = *(v16 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  v187[0] = v77;
  v169 = v49;
  sub_1BE04D8C4();
  sub_1BD0DE53C(v20 + v78, &unk_1EBD387B0, "FM\r");
  sub_1BD0DE19C(v23, v20, &qword_1EBD38828, &qword_1BE0B6F70);
  *v20, v79, v80, v81, v82, v83, v84, v85;
  v86 = *(v16 + 48);
  v87 = v186 + 16;
  v88 = *(v186 + 16);
  v89 = v182;
  v88(v185, v20 + v86, v182);
  sub_1BD0DE53C(v20 + v86, &unk_1EBD387B0, "FM\r");
  v180 = v23;
  sub_1BD0DE19C(v23, v20, &qword_1EBD38828, &qword_1BE0B6F70);
  *v20, v90, v91, v92, v93, v94, v95, v96;
  v166 = v16;
  v97 = *(v16 + 48);
  v165 = v20;
  v98 = v20 + v97;
  v99 = v89;
  v88(v184, (v98 + *(v183 + 36)), v89);
  sub_1BD0DE53C(v98, &unk_1EBD387B0, "FM\r");
  sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1BE052314())
  {
    v100 = v170;
    v168 = v88;
    v88(v170, v185, v99);
    v101 = v172;
    v88((v100 + *(v172 + 48)), v184, v99);
    v102 = v171;
    sub_1BD0DE19C(v100, v171, &unk_1EBD38810, &unk_1BE0B6F60);
    v103 = *(v101 + 48);
    v104 = v186;
    v105 = *(v186 + 32);
    v106 = v173;
    v105(v173, v102, v99);
    v167 = v87;
    v107 = *(v104 + 8);
    v107(v102 + v103, v99);
    sub_1BD0DE204(v100, v102, &unk_1EBD38810, &unk_1BE0B6F60);
    v105((v106 + *(v183 + 36)), v102 + *(v101 + 48), v99);
    v186 = v104 + 8;
    v183 = v107;
    v107(v102, v99);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v106, v174, &unk_1EBD387B0, "FM\r");
    v108 = v169;
    sub_1BE04D8C4();
    sub_1BD0DE53C(v106, &unk_1EBD387B0, "FM\r");
    v109 = v181;
    sub_1BE04D194();
    v110 = v175;
    v111 = v168;
    v168(v175, v185, v99);
    v112 = v177;
    v111(v177, v184, v99);
    v113 = v180;
    v114 = v176;
    sub_1BD0DE19C(v180, v176, &qword_1EBD38828, &qword_1BE0B6F70);
    v115 = sub_1BE04D204();
    v116 = sub_1BE052C54();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v187[0] = v174;
      *v117 = 136315650;
      sub_1BD0E48AC(&unk_1EBD38830, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      LODWORD(v173) = v116;
      v118 = sub_1BE053B24();
      v119 = v114;
      v120 = v112;
      v122 = v121;
      v123 = v183;
      (v183)(v110, v99);
      v124 = sub_1BD123690(v118, v122, v187);
      v122, v125, v126, v127, v128, v129, v130, v131;
      *(v117 + 4) = v124;
      *(v117 + 12) = 2080;
      v132 = sub_1BE053B24();
      v134 = v133;
      v123(v120, v99);
      v135 = sub_1BD123690(v132, v134, v187);
      v134, v136, v137, v138, v139, v140, v141, v142;
      *(v117 + 14) = v135;
      *(v117 + 22) = 2048;
      v143 = v165;
      sub_1BD0DE19C(v119, v165, &qword_1EBD38828, &qword_1BE0B6F70);
      v144 = *(v166 + 48);
      v145 = *(*v143 + 2);
      *v143, v146, v147, v148, v149, v150, v151, v152;
      sub_1BD0DE53C(v143 + v144, &unk_1EBD387B0, "FM\r");
      sub_1BD0DE53C(v119, &qword_1EBD38828, &qword_1BE0B6F70);
      *(v117 + 24) = v145;
      _os_log_impl(&dword_1BD026000, v115, v173, "Updated graph from %s to %s with %ld balances", v117, 0x20u);
      v153 = v174;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v153, -1, -1);
      MEMORY[0x1BFB45F20](v117, -1, -1);

      (*(v178 + 8))(v181, v179);
      v154 = v182;
      v123(v184, v182);
      v123(v185, v154);
      v155 = v180;
    }

    else
    {
      sub_1BD0DE53C(v114, &qword_1EBD38828, &qword_1BE0B6F70);

      v156 = v183;
      (v183)(v112, v99);
      v156(v110, v99);
      (*(v178 + 8))(v109, v179);
      v156(v184, v99);
      v156(v185, v99);
      v155 = v113;
    }

    sub_1BD0DE53C(v155, &qword_1EBD38828, &qword_1BE0B6F70);
  }

  else
  {
    __break(1u);

    v187[0], v157, v158, v159, v160, v161, v162, v163;
    __break(1u);
  }
}

void sub_1BD0E267C(uint64_t a1, char *a2)
{
  v179 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38800, &qword_1BE0B6F50);
  v184 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v186 = (v168 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38808, &qword_1BE0B6F58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v168 - v9);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v177);
  v178 = v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v176 = v168 - v13;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  v180 = v14;
  v181 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v168 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v175 = v168 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = v168 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v182 = v168 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v183 = v168 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v185 = (v168 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v187 = v168 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v168 - v34;
  v36 = type metadata accessor for AccountBalance(0);
  MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  v40 = (v168 - v39);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v168 - v42;
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v46);
  v54 = *(a2 + 2);
  if (!v54)
  {
    v82 = v17;
    v182 = a2;
    sub_1BE04AEF4();
    v83 = sub_1BE04AE64();
    v84 = v180;
    v85 = v181;
    v86 = *(v181 + 8);
    v86(v35, v180);
    v87 = PKStartOfDay();

    if (!v87)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    sub_1BE04AEE4();

    sub_1BE04AEF4();
    v88 = sub_1BE04AE64();
    v86(v35, v84);
    v89 = PKEndOfDay();

    if (!v89)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v90 = v82;
    sub_1BE04AEE4();

    sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if (sub_1BE052314())
    {
      v91 = *(v85 + 16);
      v92 = v85;
      v93 = v176;
      v91(v176, v20, v84);
      v94 = v177;
      v91((v93 + *(v177 + 48)), v90, v84);
      v95 = v86;
      v96 = v178;
      sub_1BD0DE19C(v93, v178, &unk_1EBD38810, &unk_1BE0B6F60);
      v186 = v90;
      v187 = v20;
      v97 = *(v94 + 48);
      v185 = *(v92 + 32);
      v98 = v179;
      v185(v179, v96, v84);
      v95(v96 + v97, v84);
      sub_1BD0DE204(v93, v96, &unk_1EBD38810, &unk_1BE0B6F60);
      v99 = *(v94 + 48);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
      v185(v98 + *(v100 + 36), v96 + v99, v84);
      v95(v96, v84);
      v95(v186, v84);
      v95(v187, v84);
      sub_1BE048C84();
      return;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v55 = v47;
  if (v54 == 1)
  {
    v56 = v49;
    v186 = v48;
    v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v58 = (v168 - v50);
    v59 = v53;
    sub_1BD0E5D5C(&a2[v57], v168 - v50);
    v60 = *v58;
    if (*v58 != 0.0)
    {
      v185 = v59;
      v139 = v55;
      v140 = sub_1BE04AE64();
      v141 = PKStartOfDay();

      v143 = v180;
      v142 = v181;
      if (!v141)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v144 = v183;
      sub_1BE04AEE4();

      *v56 = v60;
      v145 = *(v139 + 20);
      v146 = *(v142 + 32);
      v184 = v56;
      v175 = v145;
      v187 = v146;
      v146(&v145[v56], v144, v143);
      v147 = sub_1BE04AE64();
      v148 = PKEndOfDay();

      if (!v148)
      {
LABEL_50:
        __break(1u);
        return;
      }

      v149 = v182;
      sub_1BE04AEE4();

      v151 = v186;
      v150 = v187;
      *v186 = v60;
      v152 = *(v139 + 20);
      v150(v151 + v152, v149, v143);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38820, &qword_1BE0DF880);
      v153 = *(v185 + 9);
      v154 = swift_allocObject();
      *(v154 + 16) = xmmword_1BE0B6CA0;
      v182 = v154;
      v155 = v154 + v57;
      v156 = v184;
      sub_1BD0E5D5C(v184, v154 + v57);
      sub_1BD0E5D5C(v151, v155 + v153);
      sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v157 = v175;
      LOBYTE(v155) = sub_1BE052314();
      sub_1BD0E5E24(v58);
      if (v155)
      {
        v158 = &v157[v156];
        v159 = v176;
        v160 = v187;
        (v187)(v176, v158, v143);
        v161 = v177;
        v160(v159 + *(v177 + 48), v151 + v152, v143);
        v162 = v178;
        sub_1BD0DE19C(v159, v178, &unk_1EBD38810, &unk_1BE0B6F60);
        v163 = *(v161 + 48);
        v164 = v179;
        v160(v179, v162, v143);
        v165 = *(v181 + 8);
        v165(v162 + v163, v143);
        sub_1BD0DE204(v159, v162, &unk_1EBD38810, &unk_1BE0B6F60);
        v166 = *(v161 + 48);
        v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
        v160(v164 + *(v167 + 36), v162 + v166, v143);
        v165(v162, v143);
        return;
      }

      goto LABEL_44;
    }

    sub_1BE04AEF4();
    v61 = sub_1BE04AE64();
    v63 = v180;
    v62 = v181;
    v64 = *(v181 + 8);
    v64(v35, v180);
    v65 = PKStartOfDay();

    if (!v65)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v66 = v187;
    sub_1BE04AEE4();

    sub_1BE04AEF4();
    v67 = sub_1BE04AE64();
    v64(v35, v63);
    v68 = PKEndOfDay();

    if (!v68)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v186 = v64;
    v69 = v185;
    sub_1BE04AEE4();

    sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v70 = sub_1BE052314();
    sub_1BD0E5E24(v58);
    if (v70)
    {
      v71 = *(v62 + 16);
      v72 = v176;
      v71(v176, v66, v63);
      v73 = v177;
      v71((v72 + *(v177 + 48)), v69, v63);
      v74 = v178;
      sub_1BD0DE19C(v72, v178, &unk_1EBD38810, &unk_1BE0B6F60);
      v75 = *(v73 + 48);
      v76 = *(v62 + 32);
      v77 = v179;
      v76(v179, v74, v63);
      v78 = v74 + v75;
      v79 = v186;
      v186(v78, v63);
      sub_1BD0DE204(v72, v74, &unk_1EBD38810, &unk_1BE0B6F60);
      v80 = *(v73 + 48);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
      v76(v77 + *(v81 + 36), v74 + v80, v63);
      v79(v74, v63);
      v79(v185, v63);
      v79(v187, v63);
      return;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v169 = v51;
  v187 = v54 - 1;
  v170 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v171 = v52;
  v101 = &a2[v170];
  v185 = v53;
  sub_1BD0E5D5C(&a2[v170], v43);
  v173 = v55;
  v102 = *(v55 + 20);
  v103 = v180;
  v104 = v181 + 32;
  v105 = *(v181 + 32);
  v105(v174, &v43[v102], v180);
  v106 = *(v185 + 9);
  v183 = v101;
  v185 = v106;
  sub_1BD0E5D5C(&v101[v106 * v187], v43);
  v107 = &v43[*(v173 + 20)];
  v168[1] = v104;
  v168[0] = v105;
  v105(v175, v107, v103);
  v108 = 0;
  v109 = (v184 + 7);
  v110 = (v184 + 6);
  v182 = MEMORY[0x1E69E7CC0];
  v184 = v40;
  while (1)
  {
    if (v108 == v54)
    {
      v111 = 1;
      v108 = v54;
    }

    else
    {
      if (v108 >= v54)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (__OFADD__(v108, 1))
      {
        goto LABEL_40;
      }

      v112 = &v183[v108 * v185];
      v113 = *(v3 + 48);
      v114 = v7;
      v115 = v186;
      *v186 = v108;
      sub_1BD0E5D5C(v112, v115 + v113);
      v116 = v115;
      v7 = v114;
      v40 = v184;
      sub_1BD0DE204(v116, v7, &qword_1EBD38800, &qword_1BE0B6F50);
      v111 = 0;
      ++v108;
    }

    (*v109)(v7, v111, 1, v3);
    sub_1BD0DE204(v7, v10, &qword_1EBD38808, &qword_1BE0B6F58);
    if ((*v110)(v10, 1, v3) == 1)
    {
      break;
    }

    v117 = *v10;
    sub_1BD0E5DC0(v10 + *(v3 + 48), v40);
    if (v54 <= 0x171)
    {
      sub_1BD0E5D5C(v40, v171);
      v118 = v182;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = sub_1BD1D7640(0, *(v118 + 2) + 1, 1, v118);
      }

      v120 = *(v118 + 2);
      v119 = *(v118 + 3);
      v121 = v120 + 1;
      v172 = v120;
      v122 = v120 >= v119 >> 1;
      v123 = v171;
      v182 = v121;
      if (!v122)
      {
LABEL_26:
        v173 = v123;
        goto LABEL_27;
      }

LABEL_32:
      v125 = v123;
      v118 = sub_1BD1D7640((v119 > 1), v121, 1, v118);
      v173 = v125;
      v40 = v184;
LABEL_27:
      sub_1BD0E5E24(v40);
      *(v118 + 2) = v182;
      v182 = v118;
      sub_1BD0E5DC0(v173, &v118[v170 + v172 * v185]);
    }

    else
    {
      if (v117 == v187 || !(v117 % (v54 / 0xB9)))
      {
        sub_1BD0E5D5C(v40, v169);
        v118 = v182;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1BD1D7640(0, *(v118 + 2) + 1, 1, v118);
        }

        v124 = *(v118 + 2);
        v119 = *(v118 + 3);
        v121 = v124 + 1;
        v172 = v124;
        v122 = v124 >= v119 >> 1;
        v123 = v169;
        v182 = v121;
        if (!v122)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }

      sub_1BD0E5E24(v40);
    }
  }

  sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v127 = v174;
  v126 = v175;
  v128 = v180;
  if ((sub_1BE052314() & 1) == 0)
  {
    goto LABEL_42;
  }

  v129 = v176;
  v130 = v168[0];
  (v168[0])(v176, v127, v128);
  v131 = v177;
  v130(v129 + *(v177 + 48), v126, v128);
  v132 = v178;
  sub_1BD0DE19C(v129, v178, &unk_1EBD38810, &unk_1BE0B6F60);
  v133 = *(v131 + 48);
  v134 = v179;
  v130(v179, v132, v128);
  v135 = *(v181 + 8);
  v135(v132 + v133, v128);
  v136 = v135;
  sub_1BD0DE204(v129, v132, &unk_1EBD38810, &unk_1BE0B6F60);
  v137 = *(v131 + 48);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
  v130(v134 + *(v138 + 36), (v132 + v137), v128);
  v136(v132, v128);
}

void sub_1BD0E3720(void *a1)
{
  v3 = sub_1BE051F54();
  v66 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) accountIdentifier];
  if (v10)
  {
    v18 = v10;
    v19 = sub_1BE052434();
    v21 = v20;

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = 0;
  v21 = 0;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v22 = [a1 accountIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BE052434();
    v26 = v25;

    if (v21)
    {
      if (v26)
      {
        if (v19 == v24 && v21 == v26)
        {
          v21, v11, v12, v13, v14, v15, v16, v17;
          v26, v27, v28, v29, v30, v31, v32, v33;
        }

        else
        {
          v35 = sub_1BE053B84();
          v21, v36, v37, v38, v39, v40, v41, v42;
          v26, v43, v44, v45, v46, v47, v48, v49;
          if ((v35 & 1) == 0)
          {
            return;
          }
        }

        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v26)
    {
      v34 = v26;
      goto LABEL_15;
    }

LABEL_19:
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v50 = sub_1BE052D54();
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = a1;
    aBlock[4] = sub_1BD0E5D54;
    v68 = v52;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_0;
    v53 = _Block_copy(aBlock);
    v54 = v68;
    v55 = a1;
    v54, v56, v57, v58, v59, v60, v61, v62;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD0E48AC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v9, v5, v53);
    _Block_release(v53);

    (*(v66 + 8))(v5, v3);
    (*(v64 + 8))(v9, v65);
    return;
  }

LABEL_11:
  if (!v21)
  {
    goto LABEL_19;
  }

LABEL_12:
  v34 = v21;
LABEL_15:

  v34, v11, v12, v13, v14, v15, v16, v17;
}

void sub_1BD0E3B50(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04D194();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "Will update balances following account update", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!a2)
    {
      __break(1u);
      return;
    }

    v11 = *(Strong + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account);
    *(Strong + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) = a2;
    v12 = Strong;
    v13 = a2;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1BD0DF95C();
  }
}

void sub_1BD0E3D78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = v10;
    v30 = v9;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v13 = a1;
    v28 = sub_1BE052D54();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    aBlock[4] = sub_1BD0E6068;
    v32 = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_64;
    v16 = _Block_copy(aBlock);
    v17 = v32;
    v18 = v13;
    v17, v19, v20, v21, v22, v23, v24, v25;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD0E48AC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    sub_1BE053664();
    v26 = v28;
    MEMORY[0x1BFB3FDF0](0, v12, v7, v16);
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    (*(v29 + 8))(v12, v30);
  }
}

void sub_1BD0E40A8(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04D194();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "Will update balances following foreground event", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account);
    *(Strong + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) = a2;
    v12 = Strong;

    v13 = a2;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1BD0DF95C();
  }
}

id sub_1BD0E4304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountBalanceHistory(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD0E4448(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD38798, &qword_1EBD387A0, &qword_1BE113B10);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD387A8, &unk_1EBD387B0, "FM\r");
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD0E4578(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BE04D8D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FlightWidgetDisplayContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlightWidgetDisplayContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BD0E4768(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD0E47A0(uint64_t a1)
{
  result = sub_1BE04AF64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD0E48AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD0E4948()
{
  result = qword_1EBD387E8;
  if (!qword_1EBD387E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD387E8);
  }

  return result;
}

uint64_t sub_1BD0E49A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountBalanceHistory(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD0E49E8(uint64_t *a1)
{
  v2 = *(type metadata accessor for AccountBalance(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED6DC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD0E4D30(v5);
  *a1 = v3;
}

void sub_1BD0E4A90(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD0E4B0C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1BD0DE19C(a1, &v13 - v8, &unk_1EBD387B0, "FM\r");
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v9, v6, &unk_1EBD387B0, "FM\r");
  v11 = v10;
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v9, &unk_1EBD387B0, "FM\r");
}

void sub_1BD0E4C38(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD0E4CB8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

void sub_1BD0E4D30(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AccountBalance(0);
        v6 = sub_1BE0527B4();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for AccountBalance(0) - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_1BD0E505C(v15, v16, a1, v4);
      v6[2] = 0;
      v6, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BD0E4E5C(0, v2, 1, a1);
  }
}

void sub_1BD0E4E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AccountBalance(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_1BD0E5D5C(v23, v17);
      sub_1BD0E5D5C(v20, v13);
      v24 = sub_1BE04AE84();
      sub_1BD0E5E24(v13);
      sub_1BD0E5E24(v17);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_1BD0E5DC0(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD0E5DC0(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD0E505C(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v107 = a1;
  v9 = type metadata accessor for AccountBalance(0);
  v115 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v104 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v104 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v24 = &v104 - v23;
  v117 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_137;
    }

    a4 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_131:
      v100 = sub_1BD5ED6C8(a4, v17, v18, v27, v19, v20, v21, v22);
    }

    v120 = v100;
    a4 = *(v100 + 2);
    if (a4 >= 2)
    {
      while (*v117)
      {
        v101 = *&v100[16 * a4];
        v88 = v100;
        v102 = *&v100[16 * a4 + 24];
        sub_1BD0E58BC(*v117 + *(v115 + 72) * v101, *v117 + *(v115 + 72) * *&v100[16 * a4 + 16], *v117 + *(v115 + 72) * v102, v5);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v102 < v101)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_1BD5ED6C8(v88, v17, v18, v27, v19, v20, v21, v22);
        }

        if (a4 - 2 >= *(v88 + 2))
        {
          goto LABEL_125;
        }

        v103 = &v88[16 * a4];
        *v103 = v101;
        *(v103 + 1) = v102;
        v120 = v88;
        sub_1BD5ED63C(a4 - 1);
        v100 = v120;
        a4 = *(v120 + 2);
        if (a4 <= 1)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_135;
    }

LABEL_109:
    v100, v17, v18, v27, v19, v20, v21, v22;
    return;
  }

  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v106 = a4;
  v119 = v9;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    v110 = v27;
    if (v29 >= v25)
    {
      v25 = v29;
    }

    else
    {
      v30 = *v117;
      v31 = v28;
      v32 = *(v115 + 72);
      v5 = *v117 + v32 * v29;
      sub_1BD0E5D5C(v5, v24);
      sub_1BD0E5D5C(v30 + v32 * v31, v15);
      LODWORD(v114) = sub_1BE04AE84();
      sub_1BD0E5E24(v15);
      sub_1BD0E5E24(v24);
      v105 = v31;
      v33 = v31 + 2;
      v116 = v32;
      v34 = v30 + v32 * v33;
      v35 = v114;
      while (v25 != v33)
      {
        sub_1BD0E5D5C(v34, v24);
        sub_1BD0E5D5C(v5, v15);
        v36 = sub_1BE04AE84() & 1;
        sub_1BD0E5E24(v15);
        sub_1BD0E5E24(v24);
        ++v33;
        v34 += v116;
        v5 += v116;
        if ((v35 & 1) != v36)
        {
          v37 = v35;
          v25 = v33 - 1;
          goto LABEL_11;
        }
      }

      v37 = v35;
LABEL_11:
      v27 = v110;
      v28 = v105;
      a4 = v106;
      if (v37)
      {
        if (v25 < v105)
        {
          goto LABEL_128;
        }

        if (v105 < v25)
        {
          v104 = v6;
          v38 = v116 * (v25 - 1);
          v39 = v25 * v116;
          v114 = v25;
          v40 = v25;
          v41 = v105;
          v42 = v105 * v116;
          do
          {
            if (v41 != --v40)
            {
              v43 = *v117;
              if (!*v117)
              {
                goto LABEL_134;
              }

              v5 = v43 + v42;
              sub_1BD0E5DC0(v43 + v42, v109);
              if (v42 < v38 || v5 >= v43 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1BD0E5DC0(v109, v43 + v38);
              v27 = v110;
            }

            ++v41;
            v38 -= v116;
            v39 -= v116;
            v42 += v116;
          }

          while (v41 < v40);
          v6 = v104;
          v28 = v105;
          a4 = v106;
          v25 = v114;
        }
      }
    }

    v44 = v117[1];
    if (v25 < v44)
    {
      if (__OFSUB__(v25, v28))
      {
        goto LABEL_127;
      }

      if (v25 - v28 < a4)
      {
        if (__OFADD__(v28, a4))
        {
          goto LABEL_129;
        }

        if ((v28 + a4) >= v44)
        {
          v45 = v117[1];
        }

        else
        {
          v45 = v28 + a4;
        }

        if (v45 < v28)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v25 != v45)
        {
          break;
        }
      }
    }

    v46 = v25;
    if (v25 < v28)
    {
      goto LABEL_126;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v110;
    }

    else
    {
      v27 = sub_1BD1D7844(0, *(v110 + 2) + 1, 1, v110, v19, v20, v21, v22);
    }

    a4 = *(v27 + 2);
    v47 = *(v27 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      v27 = sub_1BD1D7844((v47 > 1), a4 + 1, 1, v27, v19, v20, v21, v22);
    }

    *(v27 + 2) = v5;
    v48 = &v27[16 * a4];
    *(v48 + 4) = v28;
    *(v48 + 5) = v46;
    v49 = *v107;
    if (!*v107)
    {
      goto LABEL_136;
    }

    v111 = v46;
    if (a4)
    {
      while (1)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v51 = *(v27 + 4);
          v52 = *(v27 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_54:
          if (v54)
          {
            goto LABEL_115;
          }

          v67 = &v27[16 * v5];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_118;
          }

          v73 = &v27[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_122;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v77 = &v27[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_68:
        if (v72)
        {
          goto LABEL_117;
        }

        v80 = &v27[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_120;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*v117)
        {
          goto LABEL_133;
        }

        v88 = v27;
        v89 = *&v27[16 * a4 + 32];
        v5 = *&v27[16 * v50 + 40];
        sub_1BD0E58BC(*v117 + *(v115 + 72) * v89, *v117 + *(v115 + 72) * *&v27[16 * v50 + 32], *v117 + *(v115 + 72) * v5, v49);
        if (v6)
        {
LABEL_108:
          v100 = v88;
          goto LABEL_109;
        }

        if (v5 < v89)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_1BD5ED6C8(v88, v17, v18, v27, v19, v20, v21, v22);
        }

        if (a4 >= *(v88 + 2))
        {
          goto LABEL_112;
        }

        v90 = &v88[16 * a4];
        *(v90 + 4) = v89;
        *(v90 + 5) = v5;
        v120 = v88;
        sub_1BD5ED63C(v50);
        v27 = v120;
        v5 = *(v120 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v27[16 * v5 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_113;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_114;
      }

      v62 = &v27[16 * v5];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_116;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_119;
      }

      if (v66 >= v58)
      {
        v84 = &v27[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_123;
        }

        if (v53 < v87)
        {
          v50 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v25 = v117[1];
    v26 = v111;
    a4 = v106;
    if (v111 >= v25)
    {
      goto LABEL_96;
    }
  }

  v104 = v6;
  v105 = v28;
  a4 = *v117;
  v91 = *(v115 + 72);
  v92 = *v117 + v91 * (v25 - 1);
  v93 = v25;
  v94 = -v91;
  v95 = v28 - v93;
  v114 = v93;
  v108 = v91;
  v5 = a4 + v93 * v91;
  v111 = v45;
LABEL_86:
  v112 = v5;
  v113 = v95;
  v116 = v92;
  v96 = v92;
  while (1)
  {
    sub_1BD0E5D5C(v5, v24);
    sub_1BD0E5D5C(v96, v15);
    v97 = sub_1BE04AE84();
    sub_1BD0E5E24(v15);
    sub_1BD0E5E24(v24);
    if ((v97 & 1) == 0)
    {
LABEL_85:
      v92 = v116 + v108;
      v95 = v113 - 1;
      v46 = v111;
      v5 = v112 + v108;
      if (++v114 != v111)
      {
        goto LABEL_86;
      }

      v6 = v104;
      v28 = v105;
      v27 = v110;
      if (v111 < v105)
      {
        goto LABEL_126;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v98 = v118;
    sub_1BD0E5DC0(v5, v118);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD0E5DC0(v98, v96);
    v96 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

void sub_1BD0E58BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v42 = type metadata accessor for AccountBalance(0);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v46 = a1;
  v45 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v39 = v23;
      v40 = a4;
      do
      {
        v37[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v43;
          if (v26 <= a1)
          {
            v46 = v26;
            v44 = v37[0];
            goto LABEL_59;
          }

          v38 = v25;
          v43 += v23;
          v30 = v24 + v23;
          sub_1BD0E5D5C(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v41;
          sub_1BD0E5D5C(v32, v41);
          v35 = sub_1BE04AE84();
          v36 = v34;
          v11 = v33;
          sub_1BD0E5E24(v36);
          sub_1BD0E5E24(v33);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v43 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v39;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v43 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          v23 = v39;
        }

        else
        {
          v25 = v38;
          v23 = v39;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v44 = a4 + v16;
    if (v16 >= 1 && a2 < v43)
    {
      do
      {
        sub_1BD0E5D5C(a2, v11);
        v20 = v41;
        sub_1BD0E5D5C(a4, v41);
        v21 = sub_1BE04AE84();
        sub_1BD0E5E24(v20);
        sub_1BD0E5E24(v11);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v46 = a1;
      }

      while (a4 < v18 && a2 < v43);
    }
  }

LABEL_59:
  sub_1BD935150(&v46, &v45, &v44);
}

unint64_t sub_1BD0E5D44(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1BD0E5D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountBalance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0E5DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountBalance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0E5E24(uint64_t a1)
{
  v2 = type metadata accessor for AccountBalance(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0E5E8C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1BD0E5EE4(__int16 a1)
{
  v2 = v1[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_activeState];
  if (v2 != 2)
  {
    *&v1[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_activeState] = a1 & 0x101;
    if ((a1 & 1) != 0 && (v2 & 1) == 0)
    {
      v3 = *&v1[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService];
      if (v3)
      {
        v4 = [*&v1[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account] accountIdentifier];
        v5 = swift_allocObject();
        *(v5 + 16) = v1;
        v16[4] = sub_1BD0E6020;
        v17 = v5;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 1107296256;
        v16[2] = sub_1BD14E1D8;
        v16[3] = &block_descriptor_57;
        v6 = _Block_copy(v16);
        v7 = v17;
        v8 = v1;
        v7, v9, v10, v11, v12, v13, v14, v15;
        [v3 accountWithIdentifier:v4 completion:v6];
        _Block_release(v6);
      }
    }
  }
}

uint64_t objectdestroy_29Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

id sub_1BD0E6090(void *a1, void *a2)
{
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  v5 = (v2 + 64);
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (result)
  {
    *(v2 + 88) = result;
    v7 = [a1 originalShippingAddress];
    if (!v7)
    {
      v7 = [*(v2 + 80) defaultShippingAddress];
    }

    *(v2 + 16) = v7;
    *(v2 + 24) = a2;
    *(v2 + 96) = a1;
    v8 = a2;
    v9 = a1;
    result = [v9 paymentRequest];
    if (result)
    {
      v10 = result;
      v11 = [result requiredShippingContactFields];

      type metadata accessor for PKContactField(0);
      sub_1BD0E947C(&qword_1EBD35EE0, type metadata accessor for PKContactField, &unk_1BE0B362C);
      v12 = sub_1BE052A34();

      v13 = *(v2 + 16);
      if (v13)
      {
        v14 = *MEMORY[0x1E69BB7D8];
        v15 = v13;
        LOBYTE(v14) = sub_1BD6CC0DC(v14, v12);
        v12, v16, v17, v18, v19, v20, v21, v22;
        if (v14)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1BE0B7020;
          *(v23 + 32) = v15;
          swift_beginAccess();
          v24 = *v5;
          *v5 = v23;
          v25 = v15;
          v24, v26, v27, v28, v29, v30, v31, v32;
          v33 = [v9 shippingAddress];
          if (v33)
          {
            v34 = v33;

            return v2;
          }

          [v9 setShippingAddress_];
        }

        else
        {
        }

        return v2;
      }

      v12, v35, v36, v37, v38, v39, v40, v41;
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD0E6324()
{
  sub_1BD0D4744(*(v0 + 32), *(v0 + 40), v1, v2, v3, v4, v5, v6);

  *(v0 + 64), v7, v8, v9, v10, v11, v12, v13;
  return v0;
}

uint64_t sub_1BD0E6384()
{
  sub_1BD0E6324();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for LoadingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LoadingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BD0E6530()
{
  result = qword_1EBD38860;
  if (!qword_1EBD38860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38860);
  }

  return result;
}

uint64_t sub_1BD0E6584@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 96);
  if ([v3 mode] == 1)
  {
    v4 = [v3 pass];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  if ([v3 mode] == 2)
  {
    v4 = [v3 remotePaymentInstrument];
    if (v4)
    {
LABEL_5:
      *a1 = v4;
      v5 = type metadata accessor for WrappedPass(0);
      swift_storeEnumTagMultiPayload();
      v6 = *(*(v5 - 8) + 56);
      v7 = a1;
      v8 = 0;
      v9 = v5;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = type metadata accessor for WrappedPass(v4);
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a1;
  v8 = 1;
LABEL_8:

  return v6(v7, v8, 1, v9);
}

void sub_1BD0E66D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v70 - v3);
  v5 = type metadata accessor for WrappedPass(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[12];
  v11 = [v10 paymentRequest];
  if (!v11)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 requiredBillingContactFields];

  type metadata accessor for PKContactField(0);
  sub_1BD0E947C(&qword_1EBD35EE0, type metadata accessor for PKContactField, &unk_1BE0B362C);
  v14 = sub_1BE052A34();

  LOBYTE(v13) = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D8], v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if ((v13 & 1) == 0)
  {
    return;
  }

  sub_1BD0E6584(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BD0E8D78(v4);
  }

  else
  {
    sub_1BD0E8DE0(v4, v9);
    v22 = sub_1BD0E6B40(v9);
    sub_1BD0E8E44(v9);
    if (v22)
    {
      v23 = v22;
      v24 = v23;
      goto LABEL_9;
    }
  }

  sub_1BD0E6C38();
  v24 = 0;
  if (!v23)
  {
    v22 = 0;
    v40 = v1[6];
    if (!v40)
    {
      goto LABEL_17;
    }

LABEL_14:
    v1[6] = v22;
    v41 = v22;

    v42 = v1[4];
    if (v42)
    {
      v43 = v1[5];
      v44 = sub_1BE048964();
      v42(v44);

      sub_1BD0D4744(v42, v43, v45, v46, v47, v48, v49, v50);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v22 = v23;
LABEL_9:
  v25 = v23;
  sub_1BE052434();
  v27 = v26;
  v28 = sub_1BE052404();
  v27, v29, v30, v31, v32, v33, v34, v35;
  [v25 setValueSource_];

  v36 = v1[6];
  if (!v36)
  {
    v40 = 0;
    goto LABEL_14;
  }

  sub_1BD0E8CBC();
  v37 = v36;
  v38 = v22;
  v39 = sub_1BE053074();

  if ((v39 & 1) == 0)
  {
    v40 = v1[6];
    goto LABEL_14;
  }

LABEL_17:
  v51 = [v10 billingAddress];
  if (v51)
  {
  }

  else
  {
    [v10 setBillingAddress_];
  }

  v52 = [v10 paymentRequest];
  if (!v52)
  {
    goto LABEL_32;
  }

  v53 = v52;
  v54 = [v52 billingContact];

  if (v54)
  {
    v55 = [v54 cnMutableContact];
    v56 = v1[7];
    if (v56)
    {
      sub_1BD0E8CBC();
      v57 = v55;
      v58 = v56;
      v59 = sub_1BE053074();

      if (v59)
      {
LABEL_28:

        goto LABEL_29;
      }

      v60 = v1[7];
    }

    else
    {
      v60 = 0;
    }

    v1[7] = v55;
    v57 = v55;

    v61 = v1[4];
    if (v61)
    {
      v62 = v1[5];
      v63 = sub_1BE048964();
      v61(v63);

      sub_1BD0D4744(v61, v62, v64, v65, v66, v67, v68, v69);
      return;
    }

    goto LABEL_28;
  }

LABEL_29:
}

id sub_1BD0E6B40(uint64_t a1)
{
  v3 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E8EA0(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1BD0E8E44(v5);
      return 0;
    }

    v7 = *v5;
    v8 = [*(v1 + 80) defaultBillingAddressForRemotePaymentInstrument_];
  }

  else
  {
    v7 = *v5;
    v8 = [*(v1 + 80) defaultBillingAddressForPaymentPass_];
  }

  v9 = v8;

  return v9;
}

void sub_1BD0E6C38()
{
  v1 = [*(v0 + 80) defaultBillingAddresses];
  if (!v1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1;
  v3 = sub_1BE052244();

  v11 = v3[2];
  if (v11)
  {
    v12 = sub_1BD1D9F10(v3[2], 0);
    v3 = sub_1BD5ED830(v70, (v12 + 4), v11, v3);
    sub_1BD0D45FC(v70[0], v70[1], v70[2], v70[3], v70[4], v13, v14, v15);
    if (v3 == v11)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v3, v4, v5, v6, v7, v8, v9, v10;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v16 = sub_1BD3EFEF4(v12);
  v12, v17, v18, v19, v20, v21, v22, v23;
  v31 = sub_1BD3EFFC8(v16, v24, v25, v26, v27, v28, v29, v30);
  v32 = sub_1BE04A0E4();
  v33 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
  v34 = sub_1BE052404();
  v35 = sub_1BE052724();
  v31, v36, v37, v38, v39, v40, v41, v42;
  v43 = [v33 initWithTitle:v34 preferences:v35 selectedIndex:v32 readOnly:0];

  if (!v43)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v43 setContactKey_];
  [v43 mergeRecentsAndMeCard];
  v44 = [v43 preferences];
  if (v44)
  {
    v52 = v44;
    v16, v45, v46, v47, v48, v49, v50, v51;
    v53 = sub_1BE052744();

    v54 = sub_1BD3EFFDC(v53);
    v53, v55, v56, v57, v58, v59, v60, v61;
    if (v54 >> 62)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_14;
      }
    }

    else if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:

      v54, v63, v64, v65, v66, v67, v68, v69;
      return;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB40900](0, v54);
      goto LABEL_14;
    }

    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v62 = *(v54 + 32);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
}

void sub_1BD0E6EB0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E8EA0(a2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v7;
    [*(v2 + 80) setDefaultBillingAddress:a1 forPaymentPass:v9];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v7;
    [*(v2 + 80) setDefaultBillingAddress:a1 forRemotePaymentInstrument:v9];
LABEL_5:

    return;
  }

  sub_1BD0E8E44(v7);
}

id sub_1BD0E6F98(void *a1)
{
  v2 = v1;
  v4 = sub_1BE051F54();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1BE051FA4();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B344();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = a1;
  v13 = v12 + 2;
  swift_beginAccess();
  v14 = v2[8];
  v15 = a1;
  v16 = sub_1BE048C84();
  v17 = sub_1BD0E7524(v16, v12 + 2);
  v19 = v18;
  v14, v18, v20, v21, v22, v23, v24, v25;
  if ((v19 & 1) == 0)
  {
    result = swift_beginAccess();
    v29 = v2[8];
    if ((v29 & 0xC000000000000001) == 0)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v17 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v29 + 8 * v17 + 32);
LABEL_8:
        v60 = v30;
        swift_endAccess();
        sub_1BE04B324();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38868, &qword_1BE0E4CA0);
        sub_1BD0DE4F4(&qword_1EBD38870, &qword_1EBD38868, &qword_1BE0E4CA0, MEMORY[0x1E69E6318]);
        sub_1BE052324();
        swift_endAccess();
        (*(v9 + 8))(v11, v8);
        v27 = *v13;
        *v13 = v60;
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }

LABEL_14:
    v30 = MEMORY[0x1BFB40900](v17);
    goto LABEL_8;
  }

  v26 = *v13;
  swift_beginAccess();
  if (v2[8] >> 62 && sub_1BE053704() < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = v26;
  sub_1BD1DD280(0, 0, v27);
  swift_endAccess();
LABEL_9:

  v31 = v2[4];
  if (v31)
  {
    v32 = v2[5];
    v33 = sub_1BE048964();
    v31(v33);
    sub_1BD0D4744(v31, v32, v34, v35, v36, v37, v38, v39);
  }

  v40 = swift_allocObject();
  v40[2] = v12;
  v40[3] = v2;
  aBlock[4] = sub_1BD0E9570;
  v68 = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_23;
  v41 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051F74();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1BD0E947C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  v42 = v62;
  v43 = v65;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v7, v42, v41);
  _Block_release(v41);
  (*(v64 + 8))(v42, v43);
  (*(v61 + 8))(v7, v63);
  v68, v44, v45, v46, v47, v48, v49, v50;
  swift_beginAccess();
  v51 = v12[2];
  v12, v52, v53, v54, v55, v56, v57, v58;
  return v51;
}

unint64_t sub_1BD0E7524(unint64_t a1, void **a2)
{
  if (a1 >> 62)
  {
LABEL_17:
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_1BE053704();
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB40900](v4, a1);
    }

    else
    {
      if (v4 >= *(v21 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BE0B69E0;
    *(v8 + 32) = sub_1BE052434();
    *(v8 + 40) = v9;
    v10 = v7;
    v11 = sub_1BE052724();
    v8, v12, v13, v14, v15, v16, v17, v18;
    LOBYTE(v8) = [v6 representsContact:v10 forContactKeys:v11];

    if (v8)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_1BD0E76BC(uint64_t a1)
{
  swift_beginAccess();
  if ([*(a1 + 16) contactSource] == 1)
  {
    swift_beginAccess();
    v2 = *(a1 + 16);
    v3 = sub_1BE052434();
    v5 = v4;
    v6 = v2;
    sub_1BD0E904C(v6, v3, v5);
  }

  else
  {
    swift_beginAccess();
    v7 = *(a1 + 16);
    v8 = sub_1BE052434();
    v5 = v9;
    v6 = v7;
    sub_1BD51D5B4(v6, v8, v5, v10, v11, v12, v13, v14);
  }

  v5, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1BD0E77B0(void *a1, void *a2)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = v2[8];
  sub_1BE048C84();
  v13 = sub_1BD2242A4(a1, v12);
  v15 = v14;
  v12, v14, v16, v17, v18, v19, v20, v21;
  if (v15)
  {
    return;
  }

  v22 = [a1 contactSource];
  [a2 setContactSource_];
  swift_beginAccess();
  v23 = v2[8];
  v24 = a2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  v2[8] = v23;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v23 < 0 || (v23 & 0x4000000000000000) != 0)
  {
    v23 = sub_1BD509758();
    v2[8] = v23;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v48 = v6;
  v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 8 * v13 + 0x20);
  *((v23 & 0xFFFFFFFFFFFFFF8) + 8 * v13 + 0x20) = v24;
  v2[8] = v23;
  swift_endAccess();

  v27 = v2[4];
  if (v27)
  {
    v28 = v2[5];
    v29 = sub_1BE048964();
    v27(v29);
    sub_1BD0D4744(v27, v28, v30, v31, v32, v33, v34, v35);
  }

  v36 = swift_allocObject();
  v36[2] = v22;
  v36[3] = a1;
  v36[4] = v24;
  v36[5] = v2;
  aBlock[4] = sub_1BD0E951C;
  v53 = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_14;
  v37 = _Block_copy(aBlock);
  v38 = v24;
  v39 = a1;
  sub_1BE048964();
  sub_1BE051F74();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1BD0E947C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v37);
  _Block_release(v37);
  (*(v48 + 8))(v8, v5);
  (*(v49 + 8))(v11, v50);
  v53, v40, v41, v42, v43, v44, v45, v46;
}

void sub_1BD0E7BB0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 == 1)
  {
    v7 = PKUpdateMeContact();
  }

  else
  {
    v8 = (a1 & 0xFFFFFFFFFFFFFFFBLL) != 0;
    v9 = *(a4 + 80);
    v11 = [v9 defaultShippingAddress];
    v12 = [a2 isEqualIgnoringIdentifiers_];

    if (a1 == 2 || ((v8 | v12 ^ 1) & 1) == 0)
    {
      [v9 setDefaultShippingAddress_];
    }

    v7 = 0;
  }

  v13 = [a2 recentContact];
  if (v13)
  {
    v14 = v13;
    [*(a4 + 88) deleteRecent_];
  }

  if ((v7 & 1) == 0)
  {
    [a3 copy];
    sub_1BE053624();
    swift_unknownObjectRelease();
    sub_1BD0E8CBC();
    swift_dynamicCast();
    v15 = sub_1BE052434();
    v17 = v16;
    sub_1BD51D5B4(v30, v15, v16, v18, v19, v20, v21, v22);

    v17, v23, v24, v25, v26, v27, v28, v29;
  }
}

void sub_1BD0E7D54(void *a1)
{
  v2 = v1;
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BE048C84();
  v12 = sub_1BD0E91D8(v2 + 8, a1);
  a1, v13, v14, v15, v16, v17, v18, v19;
  v20 = v2[8];
  if (v20 >> 62)
  {
    v21 = sub_1BE053704();
    if (v21 >= v12)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    swift_endAccess();
    __break(1u);
    return;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21 < v12)
  {
    goto LABEL_7;
  }

LABEL_3:
  v40 = v8;
  v41 = v5;
  sub_1BD1DD38C(v12, v21);
  swift_endAccess();
  v22 = v2[4];
  if (v22)
  {
    v23 = v2[5];
    v24 = sub_1BE048964();
    v22(v24);
    sub_1BD0D4744(v22, v23, v25, v26, v27, v28, v29, v30);
  }

  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = v2;
  aBlock[4] = sub_1BD0E9474;
  v44 = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_1;
  v32 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE051F74();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1BD0E947C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v32);
  _Block_release(v32);
  (*(v41 + 8))(v7, v4);
  (*(v9 + 8))(v11, v40);
  v44, v33, v34, v35, v36, v37, v38, v39;
}

void sub_1BD0E80F4(unint64_t a1, uint64_t a2)
{
  v17 = a2;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 recentContact];
      if (v10)
      {
        v11 = v10;
        v12 = [objc_opt_self() defaultInstance];
        if (!v12)
        {
          __break(1u);
          break;
        }

        v5 = v12;
        v6 = v11;
        [v5 deleteRecent_];
      }

      ++v4;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v13 = *(v17 + 80);
  v14 = [v13 defaultShippingAddress];
  if (v14)
  {
    v15 = v14;
    v18 = v14;
    MEMORY[0x1EEE9AC00](v14);
    v16[2] = &v18;
    if (sub_1BD30114C(sub_1BD0E9580, v16, a1))
    {
      [v13 deleteDefaultShippingAddress];
    }
  }
}

void sub_1BD0E82D4()
{
  if (!*(v0 + 72))
  {
    v2 = v0;
    *(v0 + 72) = 1;
    v226 = MEMORY[0x1E69E7CC0];
    v3 = sub_1BE04A0E4();
    v4 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
    v5 = sub_1BE052404();
    v6 = sub_1BE052724();
    v7 = [v4 initWithTitle:v5 preferences:v6 selectedIndex:v3 readOnly:0];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 setContactKey_];
    v8 = *(v2 + 88);
    v9 = v7;
    v10 = [v8 meCardEntriesForPreference_];
    v218 = v9;
    v219 = v2;
    if (v10)
    {
      v11 = v10;
      sub_1BD0E8CBC();
      v12 = sub_1BE052744();

      v224 = v8;
      if (v12 >> 62)
      {
        v13 = sub_1BE053704();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();
      if (v13)
      {
        v21 = 0;
        v22 = v12 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1BFB40900](v21, v12);
          }

          else
          {
            if (v21 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_97;
            }

            v23 = *(v12 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          sub_1BE052434();
          v27 = v26;
          v1 = sub_1BE052404();
          v27, v28, v29, v30, v31, v32, v33, v34;
          [v24 setValueSource_];

          ++v21;
          if (v25 == v13)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_15:
      v12, v14, v15, v16, v17, v18, v19, v20;
      v9 = v218;
      v2 = v219;
      v8 = v224;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    sub_1BDA7A2A8(v12);
    v35 = *(v2 + 16);
    if (v35)
    {
      [*(v2 + 16) setValueSource_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1BE0B7020;
      *(v36 + 32) = v35;
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    v37 = v35;
    sub_1BDA7A2A8(v36);
    v38 = [v8 recentsForPreference_];

    v39 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      sub_1BD0E8CBC();
      v22 = sub_1BE052744();

      if (v22 >> 62)
      {
        v40 = sub_1BE053704();
      }

      else
      {
        v40 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();
      if (v40)
      {
        v48 = 0;
        v1 = v22 & 0xFFFFFFFFFFFFFF8;
        v12 = *MEMORY[0x1E69BB410];
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x1BFB40900](v48, v22);
          }

          else
          {
            if (v48 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v49 = *(v22 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          sub_1BE052434();
          v53 = v52;
          v54 = sub_1BE052404();
          v53, v55, v56, v57, v58, v59, v60, v61;
          [v50 setValueSource_];

          ++v48;
          if (v51 == v40)
          {
            goto LABEL_32;
          }
        }

LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

LABEL_32:
      v22, v41, v42, v43, v44, v45, v46, v47;
      v9 = v218;
      v2 = v219;
      v39 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    sub_1BDA7A2A8(v22);
    v211 = sub_1BD0E8CBC();
    v62 = sub_1BE052724();
    [v9 _mergeContacts_];

    v63 = [v9 preferences];
    if (v63)
    {
      v71 = v63;
      v72 = sub_1BE052744();

      v73 = sub_1BD3FD0A4(v72);
      v72, v74, v75, v76, v77, v78, v79, v80;
      v226, v81, v82, v83, v84, v85, v86, v87;
      if (v73)
      {
        v1 = v73;
      }

      else
      {
        v1 = v39;
      }
    }

    else
    {
      v226, v64, v65, v66, v67, v68, v69, v70;
      v1 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v88 = *(v2 + 64);
    *(v2 + 64) = v1;
    sub_1BE048C84();
    v88, v89, v90, v91, v92, v93, v94, v95;
    *(v2 + 72) = 2;
    v96 = *(v2 + 96);
    v97 = [v96 originalShippingAddress];
    v12 = v97;
    if (v97)
    {
      v225 = v97;
      MEMORY[0x1EEE9AC00](v97);
      v209[2] = &v225;
      v105 = v12;
      v22 = 0;
      if (sub_1BD30114C(sub_1BD0E8D5C, v209, v1))
      {
        v1, v106, v107, v108, v109, v110, v111, v112;
        v113 = *(v2 + 32);
        if (v113)
        {
          v114 = *(v2 + 40);
          v115 = sub_1BE048964();
          v113(v115);

          sub_1BD0D4744(v113, v114, v116, v117, v118, v119, v120, v121);
        }

        else
        {
        }

        goto LABEL_119;
      }
    }

    else
    {
      v22 = 0;
    }

    v212 = v96;
    v220 = sub_1BD551128(v97, v98, v99, v100, v101, v102, v103, v104);
    v215 = sub_1BE04A0E4();
    if (!(v1 >> 62))
    {
      v129 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v223 = v1;
      if (!v129)
      {
        goto LABEL_104;
      }

LABEL_48:
      v210 = v22;
      v130 = 0;
      v224 = 0;
      v131 = 0;
      v132 = v1 & 0xC000000000000001;
      v221 = v1 + 32;
      v222 = v1 & 0xFFFFFFFFFFFFFF8;
      v213 = (v220 + 40);
      v214 = 0;
      v217 = v129;
      while (1)
      {
        if (v132)
        {
          v140 = MEMORY[0x1BFB40900](v131, v1);
        }

        else
        {
          if (v131 >= *(v222 + 16))
          {
            goto LABEL_101;
          }

          v140 = *(v221 + 8 * v131);
        }

        v141 = v140;
        if (__OFADD__(v131++, 1))
        {
          goto LABEL_100;
        }

        if (v12 && [v12 isEqualIgnoringIdentifiers_])
        {
          v186 = v1;
          v173 = v130;
          v174 = v224;
          v186, v143, v144, v145, v146, v147, v148, v149;

          v220, v187, v188, v189, v190, v191, v192, v193;
          v12 = v141;
          v183 = v218;
          v182 = v219;
          v184 = v212;
          v185 = &_OBJC_LABEL_PROTOCOL___PKPaymentPassDetailAutoReloadActionSectionControllerDelegate;
          v129 = v214;
          goto LABEL_109;
        }

        if ([v141 contactSource] == 1)
        {
          break;
        }

        if (!v130)
        {
          v130 = v141;
          goto LABEL_51;
        }

LABEL_50:

LABEL_51:
        if (v131 == v129)
        {
          v173 = v130;
          v174 = v224;
          v220, v133, v134, v135, v136, v137, v138, v139;
          v183 = v218;
          v182 = v219;
          v184 = v212;
          v185 = &_OBJC_LABEL_PROTOCOL___PKPaymentPassDetailAutoReloadActionSectionControllerDelegate;
          if (v12)
          {
            v129 = v214;
            goto LABEL_108;
          }

          v129 = v214;
          if (v214)
          {
            v12 = v214;
            goto LABEL_107;
          }

          v12 = v174;
          if (v174)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }
      }

      v22 = [v141 postalAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
      v150 = sub_1BE052744();

      if (v150 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_62;
        }
      }

      else if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_62:
        if ((v150 & 0xC000000000000001) != 0)
        {
          v158 = MEMORY[0x1BFB40900](0, v150);
        }

        else
        {
          if (!*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_102;
          }

          v158 = *(v150 + 32);
        }

        v166 = v158;
        v150, v159, v160, v161, v162, v163, v164, v165;
        v22 = [v166 label];

        if (!v22)
        {
          v1 = v223;
          if (!v224)
          {
LABEL_80:
            v224 = v141;
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        v167 = v132;
        v168 = sub_1BE052434();
        v150 = v169;

        v170 = *(v220 + 2);
        if (v170)
        {
          v216 = v130;
          v22 = 0;
          v171 = v213;
          while (1)
          {
            v151 = *v171;
            v172 = *(v171 - 1) == v168 && v151 == v150;
            if (v172 || (sub_1BE053B84() & 1) != 0)
            {
              break;
            }

            ++v22;
            v171 += 2;
            if (v170 == v22)
            {
              v130 = v216;
              goto LABEL_75;
            }
          }

          v150, v151, v152, v153, v154, v155, v156, v157;
          if (v22 >= v215)
          {
          }

          else
          {

            v214 = v141;
            v215 = v22;
          }

          v1 = v223;
          v132 = v167;
          v130 = v216;
          v129 = v217;
          goto LABEL_51;
        }

LABEL_75:
        v1 = v223;
        v132 = v167;
        v129 = v217;
      }

      v150, v151, v152, v153, v154, v155, v156, v157;
      if (!v224)
      {
        goto LABEL_80;
      }

      goto LABEL_50;
    }

LABEL_103:
    v129 = sub_1BE053704();
    v223 = v1;
    if (!v129)
    {
LABEL_104:
      v220, v122, v123, v124, v125, v126, v127, v128;
      v174 = 0;
      v173 = 0;
      v183 = v218;
      v182 = v219;
      v184 = v212;
      v185 = &_OBJC_LABEL_PROTOCOL___PKPaymentPassDetailAutoReloadActionSectionControllerDelegate;
      if (!v12)
      {
LABEL_105:
        v12 = v173;
        v194 = v173;
        v174 = 0;
LABEL_106:
        v195 = v174;
        v129 = 0;
LABEL_107:
        v196 = v129;
      }

LABEL_108:
      v223, v175, v176, v177, v178, v179, v180, v181;
LABEL_109:
      v105 = v12;
      v197 = [v184 v185[379]];
      if (v197)
      {
        if (v12)
        {
          v198 = v197;
          v199 = sub_1BE053074();

          if (v199)
          {
            goto LABEL_117;
          }

LABEL_115:
          [v184 setShippingAddress_];

          goto LABEL_116;
        }
      }

      else
      {
        v197 = v105;
        if (!v12)
        {
LABEL_117:
          v200 = *(v182 + 32);
          if (v200)
          {
            v201 = *(v182 + 40);
            v202 = sub_1BE048964();
            v200(v202);

            sub_1BD0D4744(v200, v201, v203, v204, v205, v206, v207, v208);
            goto LABEL_119;
          }

LABEL_116:
          v105 = v129;
LABEL_119:

          return;
        }
      }

      goto LABEL_115;
    }

    goto LABEL_48;
  }
}

unint64_t sub_1BD0E8CBC()
{
  result = qword_1EBD406E0;
  if (!qword_1EBD406E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD406E0);
  }

  return result;
}

uint64_t sub_1BD0E8D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0E8DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0E8E44(uint64_t a1)
{
  v2 = type metadata accessor for WrappedPass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0E8EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD0E8F04(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1BE053704();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB40900](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v13 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = &v13;
    v8 = sub_1BD30114C(sub_1BD0E9580, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_1BD0E904C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PKAddMeContactForKey())
  {
    sub_1BE04D084();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "Successfully saved contact to me card", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {

    sub_1BD51D5B4(a1, a2, a3, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_1BD0E91D8(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_1BD0E8F04(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1BE053704();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v26 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1BE053704())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB40900](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v27 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v25[2] = &v27;
    v14 = sub_1BD30114C(sub_1BD0E9580, v25, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1BFB40900](v2, v6);
    v16 = MEMORY[0x1BFB40900](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v18 = *(v6 + 32 + 8 * v10);
    v15 = *(v6 + 32 + 8 * v2);
    v16 = v18;
  }

  v19 = v16;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1BD509758();
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v19;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1BD509758();
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    v23 = v21 + 8 * v10;
    v24 = *(v23 + 32);
    *(v23 + 32) = v15;

    *v26 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1BE053704();
}

uint64_t sub_1BD0E947C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 16));
  *(v1 + 24), v2, v3, v4, v5, v6, v7, v8;

  return swift_deallocObject();
}

void sub_1BD0E959C(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE04CDA4();
  sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a2 + 32) = sub_1BE04EEC4();
  *(a2 + 40) = v4;
  *&v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_1BD0DE19C(&v53, v52, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(&v53, &qword_1EBD51EC0, &qword_1BE0B7120);
  memset(v52, 0, sizeof(v52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55590, &qword_1BE0B7128);
  sub_1BE051694();
  v5 = v56;
  v6 = v54;
  v7 = v55;
  *(a2 + 104) = v53;
  *(a2 + 120) = v6;
  *(a2 + 136) = v7;
  *(a2 + 152) = v5;
  LOBYTE(v52[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38878, &qword_1BE0B7130);
  sub_1BE051694();
  v8 = *(&v53 + 1);
  *(a2 + 160) = v53;
  *(a2 + 168) = v8;
  *&v52[0] = 0;
  sub_1BE051694();
  v9 = *(&v53 + 1);
  *(a2 + 176) = v53;
  *(a2 + 184) = v9;
  v10 = type metadata accessor for AccountServiceSheet(0);
  v11 = v10[12];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v10[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v10[14];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  v14 = v10[15];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  swift_storeEnumTagMultiPayload();
  *(a2 + 48) = a1;
  type metadata accessor for AccountServiceAuthorizationModel(0);
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = a1;
  sub_1BE04D8B4(&v53);
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v16, v25, v26, v27, v28, v29, v30, v31;
  sub_1BD0EDA00(&qword_1EBD38890, type metadata accessor for AccountServiceAuthorizationModel, MEMORY[0x1E69BCA10]);
  *a2 = sub_1BE04E954();
  *(a2 + 8) = v32;
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  sub_1BE04D8B4(&v53);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v34, v42, v43, v44, v45, v46, v47, v48;
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD0EDA00(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v49 = sub_1BE04E954();
  v51 = v50;

  *(a2 + 16) = v49;
  *(a2 + 24) = v51;
}

uint64_t type metadata accessor for AccountServiceSheet(uint64_t a1)
{
  result = qword_1EBD388B8;
  if (!qword_1EBD388B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD0E99BC@<X0>(uint64_t a1@<X8>)
{
  v168 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38920, &qword_1BE0B7418);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v149 = (&v148 - v3);
  v4 = type metadata accessor for AccountServiceSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38928, &qword_1BE0B7420);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v169 = &v148 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38930, &qword_1BE0B7428);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v155 = &v148 - v13;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38938, &qword_1BE0B7430);
  MEMORY[0x1EEE9AC00](v170);
  v156 = &v148 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38940, &qword_1BE0B7438);
  v157 = *(v15 - 8);
  v158 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v171 = &v148 - v16;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38948, &qword_1BE0B7440);
  MEMORY[0x1EEE9AC00](v159);
  v161 = &v148 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38950, &qword_1BE0B7448);
  v163 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v162 = &v148 - v18;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38958, &qword_1BE0B7450);
  MEMORY[0x1EEE9AC00](v160);
  v166 = &v148 - v19;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38960, &qword_1BE0B7458);
  MEMORY[0x1EEE9AC00](v164);
  v167 = &v148 - v20;
  sub_1BD0EA930(v188);
  v194 = v188[4];
  v195[0] = v189[0];
  *(v195 + 9) = *(v189 + 9);
  v190 = v188[0];
  v191 = v188[1];
  v192 = v188[2];
  v193 = v188[3];
  v174 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0EE25C(v1, v174);
  v21 = *(v5 + 80);
  v177 = ((v21 + 16) & ~v21) + v6;
  v175 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  sub_1BD0EE2C0(&v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + ((v21 + 16) & ~v21));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38968, &qword_1BE0B7460);
  sub_1BD0DE4F4(&qword_1EBD38970, &qword_1EBD38968, &qword_1BE0B7460, MEMORY[0x1E6981F48]);
  v23 = v169;
  sub_1BE04C664();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38978, &qword_1BE0B7468);
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  v25 = sub_1BE04F7B4();
  v26 = v149;
  *v149 = v25;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38980, &unk_1BE0B7470);
  sub_1BD0EC614(v1, v26 + *(v27 + 44));
  v172 = *(v1 + 24);
  v28 = *(v1 + 48);
  v187[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D500, &qword_1BE0C12D0);
  v187[4] = sub_1BD0DE4F4(&qword_1EBD38988, &qword_1EBD3D500, &qword_1BE0C12D0, &unk_1BE0D59B8);
  v187[0] = v28;
  v29 = *(v1 + 168);
  v152 = *(v1 + 160);
  LOBYTE(v181) = v152;
  v151 = v29;
  *(&v181 + 1) = v29;
  sub_1BE048964();
  v30 = v28;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990, &qword_1BE0B7480);
  sub_1BE0516A4();
  LOBYTE(v23) = LOBYTE(v178[0]) == 2;
  v176 = v1;
  v31 = v174;
  sub_1BD0EE25C(v1, v174);
  v173 = v21;
  v32 = v26;
  v33 = swift_allocObject();
  sub_1BD0EE2C0(v31, v33 + v175);
  v34 = (v11 + v9[26]);
  v35 = sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
  v153 = sub_1BD0EE33C();
  v154 = v35;
  *v34 = sub_1BE04EEC4();
  v34[1] = v36;
  v37 = (v11 + v9[27]);
  sub_1BE04CDA4();
  sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *v37 = sub_1BE04EEC4();
  v37[1] = v38;
  v39 = v11 + v9[28];
  LOBYTE(v178[0]) = 0;
  sub_1BE051694();
  v40 = *(&v181 + 1);
  *v39 = v181;
  *(v39 + 1) = v40;
  v41 = v11 + v9[29];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  v42 = v169;
  *(v11 + 89) = *(v195 + 9);
  v43 = v195[0];
  v11[4] = v194;
  v11[5] = v43;
  v44 = v191;
  *v11 = v190;
  v11[1] = v44;
  v45 = v193;
  v11[2] = v192;
  v11[3] = v45;
  sub_1BD0DE19C(v42, v11 + v9[17], &qword_1EBD38928, &qword_1BE0B7420);
  sub_1BD0DE19C(v26, v11 + v9[18], &qword_1EBD38920, &qword_1BE0B7418);
  *(v11 + v9[19]) = 0;
  *(v11 + v9[20]) = 1;
  *(v11 + v9[21]) = v172;
  sub_1BD0EE8CC(v187, v11 + v9[22]);
  *(v11 + v9[23]) = v23;
  v46 = (v11 + v9[25]);
  *v46 = sub_1BD0EF550;
  v46[1] = v33;
  sub_1BD0EE8CC(v187, v178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998, &unk_1BE0F7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0, &unk_1BE0B74C0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v185, &v181);
    v47 = *(&v182 + 1);
    v48 = v183;
    __swift_project_boxed_opaque_existential_1(&v181, *(&v182 + 1));
    (*(v48 + 56))(v178, v47, v48);
    sub_1BD0DE53C(v32, &qword_1EBD38920, &qword_1BE0B7418);
    sub_1BD0DE53C(v42, &qword_1EBD38928, &qword_1BE0B7420);
    __swift_destroy_boxed_opaque_existential_0(v187, v49, v50, v51, v52, v53, v54, v55);
    *(v11 + v9[24]) = v178[0];
    __swift_destroy_boxed_opaque_existential_0(&v181, v56, v57, v58, v59, v60, v61, v62);
  }

  else
  {
    sub_1BD0DE53C(v26, &qword_1EBD38920, &qword_1BE0B7418);
    sub_1BD0DE53C(v42, &qword_1EBD38928, &qword_1BE0B7420);
    __swift_destroy_boxed_opaque_existential_0(v187, v63, v64, v65, v66, v67, v68, v69);
    v186 = 0;
    memset(v185, 0, sizeof(v185));
    sub_1BD0DE53C(v185, &qword_1EBD389A0, &qword_1BE0F7D40);
    *(v11 + v9[24]) = 2;
  }

  v70 = v155;
  sub_1BD0DE204(v11, v155, &qword_1EBD38930, &qword_1BE0B7428);
  v71 = v176;
  v72 = v174;
  sub_1BD0EE25C(v176, v174);
  v73 = swift_allocObject();
  v74 = v175;
  sub_1BD0EE2C0(v72, v73 + v175);
  v75 = v156;
  sub_1BD0DE204(v70, v156, &qword_1EBD38930, &qword_1BE0B7428);
  v76 = (v75 + *(v170 + 36));
  *v76 = sub_1BD0EE3A4;
  v76[1] = v73;
  v76[2] = 0;
  v76[3] = 0;
  LOBYTE(v178[0]) = v152;
  *(&v178[0] + 1) = v151;
  sub_1BE0516C4();
  v77 = v181;
  sub_1BD0EE25C(v71, v72);
  v78 = swift_allocObject();
  sub_1BD0EE2C0(v72, v78 + v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389A8, &qword_1BE0B74D0);
  sub_1BD0EE484();
  sub_1BD0EE53C();
  sub_1BD0DE4F4(&qword_1EBD389C8, &qword_1EBD389A8, &qword_1BE0B74D0, MEMORY[0x1E697C278]);
  sub_1BE051124();
  *(&v77 + 1), v79, v80, v81, v82, v83, v84, v85;
  v78, v86, v87, v88, v89, v90, v91, v92;
  v77, v93, v94, v95, v96, v97, v98, v99;
  sub_1BD0DE53C(v75, &qword_1EBD38938, &qword_1BE0B7430);
  v100 = v176;
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD0EDA00(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v101 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v103, v104, v105, v106, v107, v108, v109;
  v101, v110, v111, v112, v113, v114, v115, v116;
  v169 = *(&v181 + 1);
  v170 = v181;
  LOBYTE(v72) = v182;
  v117 = v100;
  v118 = v174;
  sub_1BD0EE25C(v117, v174);
  v119 = swift_allocObject();
  sub_1BD0EE2C0(v118, v119 + v175);
  v120 = sub_1BE04EEC4();
  v122 = v121;
  type metadata accessor for PresentationContext(0);
  sub_1BD0EDA00(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
  v123 = sub_1BE04EEC4();
  v125 = v124;
  v180 = 0;
  v126 = v161;
  (*(v157 + 32))(v161, v171, v158);
  v127 = v126 + *(v159 + 36);
  v128 = v169;
  *v127 = v170;
  *(v127 + 8) = v128;
  *(v127 + 16) = v72;
  *(v127 + 17) = v185[0];
  *(v127 + 20) = *(v185 + 3);
  *(v127 + 24) = sub_1BD0EE590;
  *(v127 + 32) = v119;
  *(v127 + 40) = v120;
  *(v127 + 48) = v122;
  *(v127 + 56) = v123;
  *(v127 + 64) = v125;
  *(v127 + 72) = sub_1BD644BF8;
  *(v127 + 80) = 0;
  *(v127 + 88) = v180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
  v129 = v176;
  sub_1BE0516C4();
  sub_1BD0EE62C();
  v130 = v162;
  sub_1BE050704();
  sub_1BD0DE53C(&v181, &qword_1EBD51FA0, &unk_1BE0BA2A0);
  sub_1BD0DE53C(v126, &qword_1EBD38948, &qword_1BE0B7440);
  v131 = v129;
  v132 = *(v129 + 152);
  v133 = *(v129 + 120);
  v178[0] = *(v129 + 104);
  v178[1] = v133;
  v178[2] = *(v129 + 136);
  v179 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389E8, &qword_1BE0B7520);
  sub_1BE0516C4();
  v134 = v166;
  (*(v163 + 32))(v166, v130, v165);
  v135 = (v134 + *(v160 + 36));
  v136 = v182;
  *v135 = v181;
  v135[1] = v136;
  v137 = v184;
  v135[2] = v183;
  v135[3] = v137;
  v138 = v164;
  v139 = v167;
  sub_1BE04C924();
  sub_1BD0EE25C(v131, v118);
  v140 = swift_allocObject();
  v141 = v175;
  sub_1BD0EE2C0(v118, v140 + v175);
  sub_1BD0DE204(v134, v139, &qword_1EBD38958, &qword_1BE0B7450);
  v142 = (v139 + *(v138 + 56));
  *v142 = sub_1BD0EE79C;
  v142[1] = v140;
  swift_beginAccess();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389F0, &qword_1BE0B7528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0, &qword_1BE0B7530);
  v144 = v168;
  sub_1BE04D884();
  swift_endAccess();
  sub_1BD0EE25C(v176, v118);
  v145 = swift_allocObject();
  sub_1BD0EE2C0(v118, v145 + v141);
  result = sub_1BD0DE204(v139, v144, &qword_1EBD38960, &qword_1BE0B7458);
  v147 = (v144 + *(v143 + 56));
  *v147 = sub_1BD0EE80C;
  v147[1] = v145;
  return result;
}

__n128 sub_1BD0EA930@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccountServiceSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + 8) + qword_1EBDAB038);
  sub_1BD0EE25C(v1, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  if (v7 == 1)
  {
    v9 = swift_allocObject();
    sub_1BD0EE2C0(v6, v9 + v8);
    v10 = sub_1BE04CAE4();
    v11 = sub_1BE051C54();
    v12 = 18.0;
    v21 = 0uLL;
    if (v11)
    {
      v12 = 10.0;
    }

    strcpy(&v22, "AppleCardLogo");
    HIWORD(v22) = -4864;
    *&v23 = sub_1BD0EF550;
    *(&v23 + 1) = v9;
    LOBYTE(v24) = v10 & 1;
    *(&v24 + 1) = 0;
    *&v25 = 0;
    *(&v25 + 1) = 0x4032000000000000;
    *v26 = v12;
    *&v26[8] = xmmword_1BE0B7110;
    v27[0] = 0;
    v27[1] = 0;
    strcpy(v28, "AppleCardLogo");
    v28[7] = -4864;
    v29 = sub_1BD0EF550;
    v30 = v9;
    v31 = v10 & 1;
    v32 = 0;
    v33 = 0;
    v34 = 0x4032000000000000;
    v35 = v12;
    v36 = xmmword_1BE0B7110;
    sub_1BD0DE19C(&v21, v45, &qword_1EBD38AC8, &qword_1BE0EB100);
    sub_1BD0DE53C(v27, &qword_1EBD38AC8, &qword_1BE0EB100);
    v42 = v25;
    *v43 = *v26;
    *&v43[16] = *&v26[16];
    v38 = v21;
    v39 = v22;
    v40 = v23;
    v41 = v24;
    v37 = 0;
    v44 = 0;
  }

  else
  {
    v13 = swift_allocObject();
    sub_1BD0EE2C0(v6, v13 + v8);
    v14 = sub_1BE04CAE4();
    v15 = sub_1BE051C54();
    LOBYTE(v27[0]) = 1;
    v16 = 18.0;
    v38 = 0uLL;
    if (v15)
    {
      v16 = 10.0;
    }

    strcpy(&v39, "ApplePayLogo");
    BYTE13(v39) = 0;
    HIWORD(v39) = -5120;
    *&v40 = sub_1BD0EF550;
    *(&v40 + 1) = v13;
    LOBYTE(v41) = v14 & 1;
    *(&v41 + 1) = sub_1BD0EC044;
    *&v42 = 0;
    *(&v42 + 1) = 0x4032000000000000;
    *v43 = v16;
    *&v43[8] = xmmword_1BE0B7110;
    v44 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AC8, &qword_1BE0EB100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AD0, &qword_1BE0B76C0);
  sub_1BD0DE4F4(&qword_1EBD38AD8, &qword_1EBD38AC8, &qword_1BE0EB100, &unk_1BE0BD4B0);
  sub_1BD0DE4F4(&qword_1EBD38AE0, &qword_1EBD38AD0, &qword_1BE0B76C0, &unk_1BE0BD4B0);
  sub_1BE04F9A4();
  result = v45[3];
  v18 = v46[0];
  *(a1 + 64) = v45[4];
  *(a1 + 80) = v18;
  *(a1 + 89) = *(v46 + 9);
  v19 = v45[1];
  *a1 = v45[0];
  *(a1 + 16) = v19;
  *(a1 + 32) = v45[2];
  *(a1 + 48) = result;
  return result;
}

void sub_1BD0EACDC(void *a1)
{
  v2 = sub_1BE051F54();
  v51 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountServiceSheet(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1BE051FC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = a1[1] + qword_1EBDAB040;
  if ((*(v18 + 8) & 1) == 0)
  {
    v46 = v4;
    v47 = v2;
    v19 = v15;
    v42 = *v18;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v45 = sub_1BE052D54();
    sub_1BE051FB4();
    v20 = a1[4];
    if (v20)
    {
      sub_1BE048964();
      sub_1BE04CD14();
      v20, v21, v22, v23, v24, v25, v26, v27;
      sub_1BE051FF4();
      v28 = *(v11 + 8);
      v43 = v19;
      v44 = v28;
      v28(v13, v19);
      sub_1BD0EE25C(a1, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v29 = (*(v48 + 80) + 24) & ~*(v48 + 80);
      v30 = swift_allocObject();
      v30[2] = v42;
      sub_1BD0EE2C0(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
      aBlock[4] = sub_1BD0EEE74;
      v53 = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_2;
      v31 = _Block_copy(aBlock);
      v53, v32, v33, v34, v35, v36, v37, v38;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD0EDA00(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
      v39 = v46;
      v40 = v47;
      sub_1BE053664();
      v41 = v45;
      MEMORY[0x1BFB3FD90](v17, v7, v39, v31);
      _Block_release(v31);

      (*(v51 + 8))(v39, v40);
      (*(v49 + 8))(v7, v50);
      v44(v17, v43);
      *v18 = 0;
      *(v18 + 8) = 1;
    }

    else
    {
      sub_1BE04CDA4();
      sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

uint64_t sub_1BD0EB200(char a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 160);
  v8 = *(v1 + 168);
  v15 = v7;
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990, &qword_1BE0B7480);
  sub_1BE0516A4();
  if (v14 == 2)
  {
    v15 = v7;
    v16 = v8;
    v14 = a1 & 1;
    return sub_1BE0516B4();
  }

  else
  {
    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "Detail sheet already set, ignoring", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BD0EB3A8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccountServiceSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  sub_1BD0EB5C8(*a1);
  sub_1BD0EE25C(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v7 + 80);
  v11 = (v10 + 17) & ~v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  sub_1BD0EE2C0(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A00, &qword_1BE0B7540) + 36));
  *v13 = sub_1BD0EE934;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  sub_1BD0EE25C(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  sub_1BD0EE2C0(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v11);
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A08, &qword_1BE0B7548) + 36));
  *v15 = 0;
  v15[1] = 0;
  v15[2] = sub_1BD0EEC1C;
  v15[3] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389A8, &qword_1BE0B74D0);
  sub_1BE04CA34();
  sub_1BD0EE25C(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  result = sub_1BD0EE2C0(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + ((v10 + 16) & ~v10));
  v19 = (a3 + *(v16 + 56));
  *v19 = sub_1BD0EEC9C;
  v19[1] = v17;
  return result;
}

uint64_t sub_1BD0EB5C8(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A10, &qword_1BE0B7550);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A18, &qword_1BE0B7558);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A20, &unk_1BE0B7560);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  if (a1)
  {
    sub_1BD82BBB0(v5);
    sub_1BD0DE19C(v5, v8, &qword_1EBD38A10, &qword_1BE0B7550);
    swift_storeEnumTagMultiPayload();
    sub_1BD0EED0C();
    sub_1BD0EEDC0();
    sub_1BE04F9A4();
    v12 = v5;
    v13 = &qword_1EBD38A10;
    v14 = &qword_1BE0B7550;
  }

  else
  {
    sub_1BD82B68C(&v16 - v10);
    sub_1BD0DE19C(v11, v8, &qword_1EBD38A20, &unk_1BE0B7560);
    swift_storeEnumTagMultiPayload();
    sub_1BD0EED0C();
    sub_1BD0EEDC0();
    sub_1BE04F9A4();
    v12 = v11;
    v13 = &qword_1EBD38A20;
    v14 = &unk_1BE0B7560;
  }

  return sub_1BD0DE53C(v12, v13, v14);
}

uint64_t sub_1BD0EB7F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04CA04();
  result = (*(*(v3 - 8) + 48))(a1, 1, v3);
  if (result != 1)
  {
    sub_1BD6B2184(1, 2u, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990, &qword_1BE0B7480);
    return sub_1BE0516B4();
  }

  return result;
}

void sub_1BD0EB8B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountServiceSheet(0);
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38920, &qword_1BE0B7418);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  sub_1BD0EA930(v80);
  v86 = v80[4];
  v87[0] = v81[0];
  *(v87 + 9) = *(v81 + 9);
  v82 = v80[0];
  v83 = v80[1];
  v84 = v80[2];
  v85 = v80[3];
  *v10 = sub_1BE04F7B4();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38980, &unk_1BE0B7470);
  sub_1BD0EC614(a1, &v10[*(v11 + 44)]);
  v71 = *(a1 + 24);
  v12 = *(a1 + 48);
  v79[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D500, &qword_1BE0C12D0);
  v79[4] = sub_1BD0DE4F4(&qword_1EBD38988, &qword_1EBD3D500, &qword_1BE0C12D0, &unk_1BE0D59B8);
  v79[0] = v12;
  v13 = *(a1 + 168);
  LOBYTE(v78[0]) = *(a1 + 160);
  v78[1] = v13;
  sub_1BE048964();
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990, &qword_1BE0B7480);
  sub_1BE0516A4();
  v15 = LOBYTE(v75[0]) == 2;
  sub_1BD0EE25C(a1, &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v17 = swift_allocObject();
  sub_1BD0EE2C0(&v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = v69;
  sub_1BD0DE19C(v10, v69, &qword_1EBD38920, &qword_1BE0B7418);
  sub_1BD0EE8CC(v79, v78);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389F8, &qword_1BE0B7538);
  v20 = (a2 + v19[26]);
  sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
  sub_1BD0EE33C();
  *v20 = sub_1BE04EEC4();
  v20[1] = v21;
  v22 = (a2 + v19[27]);
  sub_1BE04CDA4();
  sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *v22 = sub_1BE04EEC4();
  v22[1] = v23;
  v24 = a2 + v19[28];
  LOBYTE(v74[0]) = 0;
  sub_1BE051694();
  v25 = v75[1];
  *v24 = v75[0];
  *(v24 + 8) = v25;
  v26 = a2 + v19[29];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v83;
  *a2 = v82;
  *(a2 + 16) = v27;
  *(a2 + 89) = *(v87 + 9);
  v28 = v87[0];
  *(a2 + 64) = v86;
  *(a2 + 80) = v28;
  v29 = v85;
  *(a2 + 32) = v84;
  *(a2 + 48) = v29;
  *(a2 + 105) = 1;
  sub_1BD0DE19C(v18, a2 + v19[18], &qword_1EBD38920, &qword_1BE0B7418);
  *(a2 + v19[19]) = 0;
  *(a2 + v19[20]) = 1;
  *(a2 + v19[21]) = v71;
  sub_1BD0EE8CC(v78, a2 + v19[22]);
  *(a2 + v19[23]) = v15;
  v30 = (a2 + v19[25]);
  *v30 = sub_1BD0EE930;
  v30[1] = v17;
  sub_1BD0EE8CC(v78, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998, &unk_1BE0F7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0, &unk_1BE0B74C0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v72, v75);
    v38 = v76;
    v39 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v39 + 56))(v74, v38, v39);
    __swift_destroy_boxed_opaque_existential_0(v78, v40, v41, v42, v43, v44, v45, v46);
    sub_1BD0DE53C(v18, &qword_1EBD38920, &qword_1BE0B7418);
    sub_1BD0DE53C(v10, &qword_1EBD38920, &qword_1BE0B7418);
    __swift_destroy_boxed_opaque_existential_0(v79, v47, v48, v49, v50, v51, v52, v53);
    *(a2 + v19[24]) = v74[0];
    __swift_destroy_boxed_opaque_existential_0(v75, v54, v55, v56, v57, v58, v59, v60);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v78, v31, v32, v33, v34, v35, v36, v37);
    sub_1BD0DE53C(v18, &qword_1EBD38920, &qword_1BE0B7418);
    sub_1BD0DE53C(v10, &qword_1EBD38920, &qword_1BE0B7418);
    __swift_destroy_boxed_opaque_existential_0(v79, v61, v62, v63, v64, v65, v66, v67);
    v73 = 0;
    memset(v72, 0, sizeof(v72));
    sub_1BD0DE53C(v72, &qword_1EBD389A0, &qword_1BE0F7D40);
    *(a2 + v19[24]) = 2;
  }
}

void sub_1BD0EBE44(uint64_t a1)
{
  sub_1BD0DE19C(a1, &v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  if (v17)
  {
    sub_1BD043990(&v16, &v18);
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v18, &v16);
      sub_1BD0DE19C(&v16, &v15, &qword_1EBD51EC0, &qword_1BE0B7120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
      sub_1BE0516B4();
      sub_1BD0DE53C(&v16, &qword_1EBD51EC0, &qword_1BE0B7120);
      __swift_destroy_boxed_opaque_existential_0(&v18, v8, v9, v10, v11, v12, v13, v14);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(&v18, v1, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    sub_1BD0DE53C(&v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1BD0DE19C(&v18, &v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
  sub_1BE0516B4();
  sub_1BD0DE53C(&v18, &qword_1EBD51EC0, &qword_1BE0B7120);
}

uint64_t sub_1BD0EBFBC(uint64_t *a1, uint64_t a2)
{
  sub_1BD0EE87C(*a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389E8, &qword_1BE0B7520);
  return sub_1BE0516B4();
}

uint64_t sub_1BD0EC044@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AE8, &qword_1BE0B76C8);
  sub_1BD0EC0F0((a1 + *(v2 + 44)));
  v3 = sub_1BE050204();
  sub_1BE04E1F4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AF0, &qword_1BE0B76D0);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

id sub_1BD0EC0F0@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v124[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AF8, &qword_1BE0B76D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v124[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B00, &qword_1BE0B76E0);
  v129 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v124[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v124[-v13];
  result = PKAppIconBundleIdentifier();
  if (result)
  {
    v15 = result;
    v126 = v10;
    v127 = a1;
    [objc_allocWithZone(MEMORY[0x1E69A8A00]) initWithBundleIdentifier_];

    sub_1BE04CF44();
    sub_1BD0DE4F4(&qword_1EBD38B08, &qword_1EBD38AF8, &qword_1BE0B76D8, MEMORY[0x1E69E3A30]);
    sub_1BE0506E4();
    (*(v7 + 8))(v9, v6);
    (*(v3 + 104))(v5, *MEMORY[0x1E69B8068], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v19 = v18;

      (*(v3 + 8))(v5, v2);
      v131 = v17;
      v132 = v19;
      sub_1BD0DDEBC();
      v20 = sub_1BE0506C4();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = sub_1BE0503D4();
      v28 = sub_1BE0505F4();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v27, v29, v31, v33, v35, v36, v37, v38;
      sub_1BD0DDF10(v20, v22, (v24 & 1), v39, v40, v41, v42, v43);
      v26, v44, v45, v46, v47, v48, v49, v50;
      sub_1BE050384();
      v51 = sub_1BE050544();
      v53 = v52;
      LOBYTE(v26) = v54;
      v56 = v55;
      sub_1BD0DDF10(v28, v30, (v32 & 1), v55, v57, v58, v59, v60);
      v34, v61, v62, v63, v64, v65, v66, v67;
      sub_1BE04F624();
      v69 = v68;
      v71 = v70;
      v72 = v56;
      v73 = sub_1BE0505A4();
      v75 = v74;
      v125 = v76;
      v78 = v77;
      v71, v74, v76, v77, v79, v80, v81, v82;
      v69, v83, v84, v85, v86, v87, v88, v89;
      sub_1BD0DDF10(v51, v53, (v26 & 1), v90, v91, v92, v93, v94);
      v72, v95, v96, v97, v98, v99, v100, v101;
      v103 = v128;
      v102 = v129;
      v104 = *(v129 + 16);
      v105 = v130;
      v106 = v126;
      v104(v128, v130, v126);
      v107 = v127;
      v104(v127, v103, v106);
      v108 = &v107[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B10, &qword_1BE0B76E8) + 48)];
      *v108 = v73;
      *(v108 + 1) = v75;
      v109 = v125;
      v110 = (v125 & 1);
      v108[16] = v125 & 1;
      *(v108 + 3) = v78;
      sub_1BD0D7F18(v73, v75, v109 & 1);
      v111 = *(v102 + 8);
      sub_1BE048C84();
      v111(v105, v106);
      sub_1BD0DDF10(v73, v75, v110, v112, v113, v114, v115, v116);
      v78, v117, v118, v119, v120, v121, v122, v123;
      return (v111)(v103, v106);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD0EC614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v71 = a2;
  v2 = type metadata accessor for AccountServiceSheet(0);
  v70 = *(v2 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v69 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030, &qword_1BE0B7570);
  MEMORY[0x1EEE9AC00](v68);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A48, &qword_1BE0B7578);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A50, &qword_1BE0B7580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A58, &qword_1BE0B7588);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  sub_1BD0ECF70(v9);
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  *(v15 + 2) = KeyPath;
  v15[24] = 0;
  *(v15 + 4) = v20;
  v15[40] = 0;
  LOBYTE(v79) = 0;
  sub_1BE051694();
  v21 = v88;
  v15[48] = v87;
  *(v15 + 7) = v21;
  sub_1BD0DE204(v9, &v15[v11[14]], &qword_1EBD38A50, &qword_1BE0B7580);
  v22 = &v15[v11[15]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v15[v11[16]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = 0;
  v24 = v11[17];
  LOBYTE(KeyPath) = sub_1BE051C54();
  v25 = sub_1BE04C894();
  v26 = MEMORY[0x1E69BCA08];
  if ((KeyPath & 1) == 0)
  {
    v26 = MEMORY[0x1E69BCA00];
  }

  (*(*(v25 - 8) + 104))(&v15[v24], *v26, v25);
  v27 = &v15[v11[18]];
  sub_1BE04C7E4();
  v29 = v28;
  v30 = *(sub_1BE04EDE4() + 20);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_1BE04F684();
  (*(*(v32 - 8) + 104))(&v27[v30], v31, v32);
  *v27 = v29;
  *(v27 + 1) = v29;
  v66 = v18;
  sub_1BD0DE204(v15, v18, &qword_1EBD38A58, &qword_1BE0B7588);
  sub_1BE051C64();
  v33 = MEMORY[0x1E6981CD0];
  v34 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  v87 = v34;
  v88 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1BD0EEEE0();
  sub_1BE051C84();
  v35 = v69;
  sub_1BD0EE25C(v67, v69);
  v36 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v70 = swift_allocObject();
  sub_1BD0EE2C0(v35, v70 + v36);
  LOBYTE(v87) = 0;
  v69 = swift_getKeyPath();
  LOBYTE(v79) = 0;
  sub_1BE04CDA4();
  sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  sub_1BE048964();
  v68 = sub_1BE04EEC4();
  v67 = v37;
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD0EDA00(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v38 = sub_1BE04E954();
  v65 = v38;
  v62 = v39;
  v40 = v87;
  v63 = v87;
  LOBYTE(v30) = v79;
  v64 = v79;
  v41 = v73;
  sub_1BD0DE19C(v18, v73, &qword_1EBD38A58, &qword_1BE0B7588);
  v42 = *(v75 + 16);
  v43 = v74;
  v44 = v76;
  v42(v74, v72, v76);
  v45 = v41;
  v46 = v71;
  sub_1BD0DE19C(v45, v71, &qword_1EBD38A58, &qword_1BE0B7588);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A60, &qword_1BE0B75F0);
  v42((v46 + *(v47 + 48)), v43, v44);
  v48 = (v46 + *(v47 + 64));
  *&v79 = v38;
  v49 = v62;
  *(&v79 + 1) = v62;
  v80 = sub_1BD31FF5C;
  v81 = 0;
  LOBYTE(v82) = v40;
  *(&v82 + 1) = *v78;
  DWORD1(v82) = *&v78[3];
  v50 = v69;
  *(&v82 + 1) = v69;
  LOBYTE(v83) = v30;
  *(&v83 + 1) = *v77;
  DWORD1(v83) = *&v77[3];
  v51 = v68;
  *(&v83 + 1) = v68;
  v52 = v67;
  *&v84 = v67;
  v53 = v70;
  *(&v84 + 1) = sub_1BD0EEF34;
  v85 = v70;
  *&v86 = 0;
  *(&v86 + 1) = 0x4014000000000000;
  *v48 = v79;
  v48[1] = sub_1BD31FF5C;
  v54 = v82;
  v55 = v83;
  v56 = v86;
  v57 = v84;
  v48[5] = v85;
  v48[6] = v56;
  v48[3] = v55;
  v48[4] = v57;
  v48[2] = v54;
  sub_1BD0EEF94(&v79, &v87);
  v58 = *(v75 + 8);
  v59 = v76;
  v58(v72, v76);
  sub_1BD0DE53C(v66, &qword_1EBD38A58, &qword_1BE0B7588);
  v87 = v65;
  v88 = v49;
  v89 = sub_1BD31FF5C;
  v90 = 0;
  v91 = v63;
  *v92 = *v78;
  *&v92[3] = *&v78[3];
  v93 = v50;
  v94 = v64;
  *v95 = *v77;
  *&v95[3] = *&v77[3];
  v96 = v51;
  v97 = v52;
  v98 = sub_1BD0EEF34;
  v99 = v53;
  v100 = 0;
  v101 = 0;
  v102 = 0x4014000000000000;
  sub_1BD0EEFF0(&v87);
  v58(v74, v59);
  return sub_1BD0DE53C(v73, &qword_1EBD38A58, &qword_1BE0B7588);
}

uint64_t sub_1BD0ECF70@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A68, &qword_1BE0B75F8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A70, &qword_1BE0B7600);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - v10;
  *v7 = sub_1BE04F7C4();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A78, &qword_1BE0B7608);
  sub_1BD0ED230(&v7[*(v12 + 44)]);
  v13 = sub_1BE050204();
  sub_1BE04E1F4();
  v14 = &v7[*(v5 + 36)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  sub_1BE04FF44();
  v19 = sub_1BD0EF044();
  sub_1BE050D14();
  (*(v2 + 8))(v4, v1);
  sub_1BD0DE53C(v7, &qword_1EBD38A68, &qword_1BE0B75F8);
  sub_1BE052434();
  v21 = v20;
  v30[2] = v5;
  v30[3] = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v21, v22, v23, v24, v25, v26, v27, v28;
  return (*(v9 + 8))(v11, v8);
}

id sub_1BD0ED230@<X0>(uint64_t a1@<X8>)
{
  v183 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v184 = &v180 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v182 = &v180 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v181 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v180 - v8;
  sub_1BD0ED724();
  v186 = v11;
  v187 = v10;
  v188 = v12;
  v189 = v13;
  v185 = sub_1BD0DDEBC();
  v14 = sub_1BE0506C4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_1BE0502B4();
  v22 = sub_1BE0505F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v21, v23, v25, v27, v29, v30, v31, v32;
  sub_1BD0DDF10(v14, v16, (v18 & 1), v33, v34, v35, v36, v37);
  v20, v38, v39, v40, v41, v42, v43, v44;
  v45 = sub_1BE051234();
  v46 = sub_1BE050564();
  v48 = v47;
  LOBYTE(v14) = v49;
  v51 = v50;
  v45, v47, v49, v50, v52, v53, v54, v55;
  sub_1BD0DDF10(v22, v24, (v26 & 1), v56, v57, v58, v59, v60);
  v28, v61, v62, v63, v64, v65, v66, v67;
  v188 = v46;
  v189 = v48;
  v190 = v14 & 1;
  v191 = v51;
  sub_1BE052434();
  v69 = v68;
  v180 = v9;
  sub_1BE050DE4();
  v69, v70, v71, v72, v73, v74, v75, v76;
  sub_1BD0DDF10(v46, v48, (v14 & 1), v77, v78, v79, v80, v81);
  v51, v82, v83, v84, v85, v86, v87, v88;
  v188 = v187;
  v189 = v186;
  v89 = sub_1BE0506C4();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0, *MEMORY[0x1E69DB980]);
  if (result)
  {
    v97 = sub_1BE050484();
    v98 = sub_1BE0505F4();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v97, v99, v101, v103, v105, v106, v107, v108;
    sub_1BD0DDF10(v89, v91, (v93 & 1), v109, v110, v111, v112, v113);
    v95, v114, v115, v116, v117, v118, v119, v120;
    v121 = sub_1BE051224();
    v122 = sub_1BE050564();
    v124 = v123;
    v126 = v125;
    v128 = v127;
    v121, v123, v125, v127, v129, v130, v131, v132;
    sub_1BD0DDF10(v98, v100, (v102 & 1), v133, v134, v135, v136, v137);
    v104, v138, v139, v140, v141, v142, v143, v144;
    KeyPath = swift_getKeyPath();
    v188 = v122;
    v189 = v124;
    v190 = v126 & 1;
    v191 = v128;
    v192 = KeyPath;
    v193 = 1;
    sub_1BE052434();
    v147 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
    sub_1BD0EF0FC();
    v148 = v182;
    sub_1BE050DE4();
    v147, v149, v150, v151, v152, v153, v154, v155;
    sub_1BD0DDF10(v122, v124, (v126 & 1), v156, v157, v158, v159, v160);
    KeyPath, v161, v162, v163, v164, v165, v166, v167;
    v128, v168, v169, v170, v171, v172, v173, v174;
    v176 = v180;
    v175 = v181;
    sub_1BD0DE19C(v180, v181, &qword_1EBD452C0, &qword_1BE0B7620);
    v177 = v184;
    sub_1BD0DE19C(v148, v184, &qword_1EBD38A98, &unk_1BE0C3CC0);
    v178 = v183;
    sub_1BD0DE19C(v175, v183, &qword_1EBD452C0, &qword_1BE0B7620);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AC0, &qword_1BE0B7668);
    sub_1BD0DE19C(v177, v178 + *(v179 + 48), &qword_1EBD38A98, &unk_1BE0C3CC0);
    sub_1BD0DE53C(v148, &qword_1EBD38A98, &unk_1BE0C3CC0);
    sub_1BD0DE53C(v176, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v177, &qword_1EBD38A98, &unk_1BE0C3CC0);
    return sub_1BD0DE53C(v175, &qword_1EBD452C0, &qword_1BE0B7620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD0ED724()
{
  v0 = _s11BillPaymentVMa(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v57 - v4);
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(v5);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v22 = v5[3];
  sub_1BE048C84();
  sub_1BD0EF1B4(v5);
  if (v22)
  {
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    sub_1BE04D8B4(v2);
    v23, v25, v26, v27, v28, v29, v30, v31;
    v24, v32, v33, v34, v35, v36, v37, v38;
LABEL_5:
    sub_1BE048C84();
    sub_1BD0EF1B4(v2);
    return;
  }

  v39 = sub_1BE052404();
  v40 = PKLocalizedFeatureString();

  if (v40)
  {
    sub_1BE052434();

    v41 = swift_getKeyPath();
    v42 = swift_getKeyPath();
    sub_1BE04D8B4(v2);
    v41, v43, v44, v45, v46, v47, v48, v49;
    v42, v50, v51, v52, v53, v54, v55, v56;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1BD0ED958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38898, &unk_1BE0B72C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD0DE19C(a1, &v5 - v3, &qword_1EBD38898, &unk_1BE0B72C0);
  return sub_1BE04F1D4();
}

uint64_t sub_1BD0EDA00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for FlightWidgetProgressFlightStepContent.FlightStepType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UIFlowItemDismissalConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1BD0EDBC0(uint64_t a1)
{
  sub_1BD0EDEBC(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0EDF50(319);
    if (v2 <= 0x3F)
    {
      sub_1BD0EDFE4(319);
      if (v3 <= 0x3F)
      {
        sub_1BD0EE0C8(319, &qword_1EBD388D8, type metadata accessor for AccountServiceAuthorizationModel, type metadata accessor for PaymentAuthorizationStateMachineWrapper);
        if (v4 <= 0x3F)
        {
          sub_1BD0EE12C(319, &qword_1EBD388E0, &qword_1EBD51EC0, &qword_1BE0B7120, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1BD0EE12C(319, &qword_1EBD388E8, &qword_1EBD55590, &qword_1BE0B7128, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1BD0EE12C(319, &qword_1EBD388F0, &qword_1EBD38878, &qword_1BE0B7130, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1BD0EE078(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  sub_1BD0EE0C8(319, &qword_1EBD388F8, MEMORY[0x1E69BC9D0], MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD0EE078(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1BD0EE0C8(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                      if (v11 <= 0x3F)
                      {
                        sub_1BD0EE12C(319, &qword_1EBD38908, &qword_1EBD38898, &unk_1BE0B72C0, MEMORY[0x1E697DCC0]);
                        if (v12 <= 0x3F)
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

void sub_1BD0EDEBC(uint64_t a1)
{
  if (!qword_1EBD388C8)
  {
    type metadata accessor for AccountServiceAuthorizationModel(255);
    sub_1BD0EDA00(&qword_1EBD38890, type metadata accessor for AccountServiceAuthorizationModel, MEMORY[0x1E69BCA10]);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD388C8);
    }
  }
}

void sub_1BD0EDF50(uint64_t a1)
{
  if (!qword_1EBD59620)
  {
    type metadata accessor for AuthenticatorModel(255);
    sub_1BD0EDA00(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD59620);
    }
  }
}

void sub_1BD0EDFE4(uint64_t a1)
{
  if (!qword_1EBD388D0)
  {
    sub_1BE04CDA4();
    sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    v1 = sub_1BE04EED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD388D0);
    }
  }
}

void sub_1BD0EE078(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD0EE0C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD0EE12C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1BD0EE194()
{
  result = qword_1EBD38910;
  if (!qword_1EBD38910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38910);
  }

  return result;
}

unint64_t sub_1BD0EE1EC()
{
  result = qword_1EBD38918;
  if (!qword_1EBD38918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38918);
  }

  return result;
}

uint64_t sub_1BD0EE25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountServiceSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0EE2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountServiceSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD0EE33C()
{
  result = qword_1EBD35E40;
  if (!qword_1EBD35E40)
  {
    sub_1BD0E5E8C(255, &qword_1EBD35E30, 0x1E69B8E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35E40);
  }

  return result;
}

void sub_1BD0EE3A4()
{
  v1 = *(type metadata accessor for AccountServiceSheet(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1BD0EACDC(v2);
}

uint64_t sub_1BD0EE404@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountServiceSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD0EB3A8(a1, v6, a2);
}

unint64_t sub_1BD0EE484()
{
  result = qword_1EBD389B0;
  if (!qword_1EBD389B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38938, &qword_1BE0B7430);
    sub_1BD0DE4F4(&qword_1EBD389B8, &qword_1EBD38930, &qword_1BE0B7428, &unk_1BE10CBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD389B0);
  }

  return result;
}

unint64_t sub_1BD0EE53C()
{
  result = qword_1EBD389C0;
  if (!qword_1EBD389C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD389C0);
  }

  return result;
}

uint64_t sub_1BD0EE5A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccountServiceSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD0EE62C()
{
  result = qword_1EBD389D0;
  if (!qword_1EBD389D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38948, &qword_1BE0B7440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38938, &qword_1BE0B7430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD389A8, &qword_1BE0B74D0);
    sub_1BD0EE484();
    sub_1BD0EE53C();
    sub_1BD0DE4F4(&qword_1EBD389C8, &qword_1EBD389A8, &qword_1BE0B74D0, MEMORY[0x1E697C278]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD389D8, &qword_1EBD389E0, &unk_1BE0B7510, &unk_1BE0EA648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD389D0);
  }

  return result;
}

void sub_1BD0EE79C(uint64_t a1)
{
  type metadata accessor for AccountServiceSheet(0);

  sub_1BD0EBE44(a1);
}

uint64_t sub_1BD0EE80C(uint64_t *a1)
{
  v3 = *(type metadata accessor for AccountServiceSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD0EBFBC(a1, v4);
}

void sub_1BD0EE87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    sub_1BE048C84();
    sub_1BE048964();

    sub_1BE048C84();
  }
}

uint64_t sub_1BD0EE8CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_59Tm()
{
  v1 = type metadata accessor for AccountServiceSheet(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 32), v17, v18, v19, v20, v21, v22, v23;

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56), v24, v25, v26, v27, v28, v29, v30);
  }

  *(v2 + 96), v24, v25, v26, v27, v28, v29, v30;
  v38 = *(v2 + 112);
  if (v38)
  {
    v38, v31, v32, v33, v34, v35, v36, v37;
    *(v2 + 128), v39, v40, v41, v42, v43, v44, v45;
    *(v2 + 144), v46, v47, v48, v49, v50, v51, v52;
  }

  *(v2 + 152), v31, v32, v33, v34, v35, v36, v37;
  *(v2 + 168), v53, v54, v55, v56, v57, v58, v59;
  *(v2 + 184), v60, v61, v62, v63, v64, v65, v66;
  v67 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = sub_1BE04C884();
    (*(*(v75 - 8) + 8))(v2 + v67, v75);
  }

  else
  {
    *(v2 + v67), v68, v69, v70, v71, v72, v73, v74;
  }

  sub_1BD0D4604(*(v2 + v1[13]), *(v2 + v1[13] + 8), v76, v77, v78, v79, v80, v81);
  v82 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v90 = sub_1BE04EB24();
    (*(*(v90 - 8) + 8))(v2 + v82, v90);
  }

  else
  {
    *(v2 + v82), v83, v84, v85, v86, v87, v88, v89;
  }

  v91 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v99 = sub_1BE04FD04();
    v100 = *(v99 - 8);
    if (!(*(v100 + 48))(v2 + v91, 1, v99))
    {
      (*(v100 + 8))(v2 + v91, v99);
    }
  }

  else
  {
    *(v2 + v91), v92, v93, v94, v95, v96, v97, v98;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0EEC9C(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountServiceSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD0EB7F8(a1, v4);
}

unint64_t sub_1BD0EED0C()
{
  result = qword_1EBD38A28;
  if (!qword_1EBD38A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A20, &unk_1BE0B7560);
    sub_1BD0EDA00(&qword_1EBD38A30, type metadata accessor for BankAccountSheet, &unk_1BE0E61B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38A28);
  }

  return result;
}

unint64_t sub_1BD0EEDC0()
{
  result = qword_1EBD38A38;
  if (!qword_1EBD38A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A10, &qword_1BE0B7550);
    sub_1BD0EDA00(&qword_1EBD38A40, type metadata accessor for TransferOptionsSheet, &unk_1BE0F8238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38A38);
  }

  return result;
}

uint64_t sub_1BD0EEE74()
{
  result = type metadata accessor for AccountServiceSheet(0) - 8;
  if (*(v0 + 16) == 1)
  {
    return sub_1BD0EB200(1);
  }

  return result;
}

unint64_t sub_1BD0EEEE0()
{
  result = qword_1EBD365D0;
  if (!qword_1EBD365D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD365D0);
  }

  return result;
}

unint64_t sub_1BD0EF044()
{
  result = qword_1EBD38A80;
  if (!qword_1EBD38A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A68, &qword_1BE0B75F8);
    sub_1BD0DE4F4(&qword_1EBD38A88, &qword_1EBD38A90, &unk_1BE0B7610, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38A80);
  }

  return result;
}

unint64_t sub_1BD0EF0FC()
{
  result = qword_1EBD38AA8;
  if (!qword_1EBD38AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38AA0, &unk_1BE0C3690);
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8, &qword_1BE0B7660, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38AA8);
  }

  return result;
}

uint64_t sub_1BD0EF1B4(uint64_t a1)
{
  v2 = _s11BillPaymentVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for AccountServiceSheet(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 32), v17, v18, v19, v20, v21, v22, v23;

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56), v24, v25, v26, v27, v28, v29, v30);
  }

  *(v2 + 96), v24, v25, v26, v27, v28, v29, v30;
  v38 = *(v2 + 112);
  if (v38)
  {
    v38, v31, v32, v33, v34, v35, v36, v37;
    *(v2 + 128), v39, v40, v41, v42, v43, v44, v45;
    *(v2 + 144), v46, v47, v48, v49, v50, v51, v52;
  }

  *(v2 + 152), v31, v32, v33, v34, v35, v36, v37;
  *(v2 + 168), v53, v54, v55, v56, v57, v58, v59;
  *(v2 + 184), v60, v61, v62, v63, v64, v65, v66;
  v67 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = sub_1BE04C884();
    (*(*(v75 - 8) + 8))(v2 + v67, v75);
  }

  else
  {
    *(v2 + v67), v68, v69, v70, v71, v72, v73, v74;
  }

  sub_1BD0D4604(*(v2 + v1[13]), *(v2 + v1[13] + 8), v76, v77, v78, v79, v80, v81);
  v82 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v90 = sub_1BE04EB24();
    (*(*(v90 - 8) + 8))(v2 + v82, v90);
  }

  else
  {
    *(v2 + v82), v83, v84, v85, v86, v87, v88, v89;
  }

  v91 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v99 = sub_1BE04FD04();
    v100 = *(v99 - 8);
    if (!(*(v100 + 48))(v2 + v91, 1, v99))
    {
      (*(v100 + 8))(v2 + v91, v99);
    }
  }

  else
  {
    *(v2 + v91), v92, v93, v94, v95, v96, v97, v98;
  }

  return swift_deallocObject();
}

id sub_1BD0EF4E0()
{
  type metadata accessor for AccountServiceSheet(0);
  sub_1BD6B2184(1, 1u, 0);
  return sub_1BD74239C();
}

unint64_t sub_1BD0EF568()
{
  result = qword_1EBD38B20;
  if (!qword_1EBD38B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B20);
  }

  return result;
}

unint64_t sub_1BD0EF5D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD0F0F24(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD0EF608(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7239014;
  v5 = 0xE800000000000000;
  v6 = 0x7365636976726573;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE900000000000074;
  v8 = 0x726F70736E617274;
  if (v2 != 4)
  {
    v8 = 0x6C6576617274;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000736B6E6972;
  v10 = 0x44646E41646F6F66;
  if (v2 != 2)
  {
    v10 = 0x68746C616568;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x676E6970706F6873;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1BD0EF708()
{
  result = qword_1EBD38B28;
  if (!qword_1EBD38B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B28);
  }

  return result;
}

unint64_t sub_1BD0EF760()
{
  result = qword_1EBD38B30;
  if (!qword_1EBD38B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B30);
  }

  return result;
}

unint64_t sub_1BD0EF7B8()
{
  result = qword_1EBD38B38;
  if (!qword_1EBD38B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B38);
  }

  return result;
}

unint64_t sub_1BD0EF81C()
{
  result = qword_1EBD38B40;
  if (!qword_1EBD38B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B40);
  }

  return result;
}

unint64_t sub_1BD0EF870()
{
  result = qword_1EBD38B48;
  if (!qword_1EBD38B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B48);
  }

  return result;
}

unint64_t sub_1BD0EF8C4()
{
  result = qword_1EBD38B50;
  if (!qword_1EBD38B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B50);
  }

  return result;
}

unint64_t sub_1BD0EF91C()
{
  result = qword_1EBD38B58;
  if (!qword_1EBD38B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B58);
  }

  return result;
}

uint64_t sub_1BD0EF970()
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
  __swift_allocate_value_buffer(v10, qword_1EBDAADD0);
  __swift_project_value_buffer(v10, qword_1EBDAADD0);
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

uint64_t sub_1BD0EFC88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v79 = &v57 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v57 - v3;
  v5 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1BE04A874();
  v8 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1BE04A884();
  v14 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B90, &qword_1BE0B79D8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B98, &unk_1BE0B79E0);
  v16 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v71 = *(*(v15 - 8) + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B76F0;
  v61 = v17;
  v76 = v15;
  v60 = *(v15 + 48);
  v72 = v17 + v16;
  *(v17 + v16) = 0;
  v18 = v13;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v19 = v78;
  v67 = __swift_project_value_buffer(v78, qword_1EBDAB400);
  v74 = *(v8 + 16);
  v20 = v10;
  v74(v10, v67, v19);
  v66 = v7;
  sub_1BE04B0A4();
  sub_1BE04A894();
  v75 = *(v14 + 56);
  v63 = v4;
  v75(v4, 1, 1, v77);
  v64 = sub_1BE048BB4();
  v21 = *(v64 - 8);
  v69 = *(v21 + 56);
  v73 = v21 + 56;
  v69(v79, 1, 1, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA0, &qword_1BE0EEDF0);
  v68 = v14 + 56;
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  v65 = v18;
  sub_1BE052354();
  v22 = v67;
  v23 = v78;
  v24 = v74;
  v70 = v8 + 16;
  v74(v10, v67, v78);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v25 = v72;
  v26 = v63;
  sub_1BE048BD4();
  v60 = *(v76 + 48);
  *(v25 + v71) = 1;
  sub_1BE052354();
  v24(v20, v22, v23);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v27 = v77;
  v75(v26, 1, 1, v77);
  v28 = v64;
  v69(v79, 1, 1, v64);
  v29 = v26;
  sub_1BE048BD4();
  v30 = v71;
  v60 = 2 * v71;
  v31 = v72;
  v58 = (v72 + 2 * v71);
  v59 = *(v76 + 48);
  *v58 = 2;
  sub_1BE052354();
  v62 = v20;
  v32 = v67;
  v74(v20, v67, v78);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v75(v29, 1, 1, v27);
  v33 = v28;
  v34 = v69;
  v69(v79, 1, 1, v33);
  sub_1BE048BD4();
  v59 = v31 + v60 + v30;
  v35 = v76;
  v60 = *(v76 + 48);
  *v59 = 3;
  sub_1BE052354();
  v36 = v62;
  v37 = v74;
  v74(v62, v32, v78);
  sub_1BE04B0A4();
  v38 = v36;
  sub_1BE04A894();
  v39 = v63;
  v40 = v77;
  v41 = v75;
  v75(v63, 1, 1, v77);
  v34(v79, 1, 1, v64);
  sub_1BE048BD4();
  v60 = 4 * v71;
  v42 = v72;
  v59 = *(v35 + 48);
  *(v72 + 4 * v71) = 4;
  sub_1BE052354();
  v43 = v78;
  v37(v38, v67, v78);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v41(v39, 1, 1, v40);
  v44 = v64;
  v69(v79, 1, 1, v64);
  sub_1BE048BD4();
  v45 = v71;
  v59 = v42 + v60 + v71;
  v60 = *(v76 + 48);
  *v59 = 5;
  sub_1BE052354();
  v46 = v67;
  v74(v62, v67, v43);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v75(v63, 1, 1, v77);
  v47 = v69;
  v69(v79, 1, 1, v44);
  sub_1BE048BD4();
  v48 = v76;
  v60 = *(v76 + 48);
  *(v72 + 6 * v45) = 6;
  sub_1BE052354();
  v49 = v62;
  v74(v62, v46, v78);
  sub_1BE04B0A4();
  v50 = v49;
  sub_1BE04A894();
  v51 = v63;
  v75(v63, 1, 1, v77);
  v52 = v79;
  v53 = v64;
  v47(v79, 1, 1, v64);
  sub_1BE048BD4();
  v54 = (v72 - v71 + 8 * v71);
  v71 = *(v48 + 48);
  *v54 = 7;
  sub_1BE052354();
  v74(v50, v67, v78);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v75(v51, 1, 1, v77);
  v69(v52, 1, 1, v53);
  sub_1BE048BD4();
  v55 = sub_1BD1AB2A8(v61);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAADE8 = v55;
  return result;
}

uint64_t sub_1BD0F09BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B00 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAADD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD0F0AB4()
{
  result = qword_1EBD560F0;
  if (!qword_1EBD560F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD560F0);
  }

  return result;
}

uint64_t sub_1BD0F0B08(uint64_t a1)
{
  v2 = sub_1BD0F0AB4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD0F0B58()
{
  result = qword_1EBD38B60;
  if (!qword_1EBD38B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B60);
  }

  return result;
}

unint64_t sub_1BD0F0BB0()
{
  result = qword_1EBD38B68;
  if (!qword_1EBD38B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B68);
  }

  return result;
}

unint64_t sub_1BD0F0C08()
{
  result = qword_1EBD38B70;
  if (!qword_1EBD38B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B70);
  }

  return result;
}

uint64_t sub_1BD0F0C5C()
{
  if (qword_1EBD36B08 != -1)
  {
    swift_once();
  }

  return sub_1BE048C84();
}

uint64_t sub_1BD0F0CB8(uint64_t a1)
{
  sub_1BD0EF91C();

  return sub_1BE048E14();
}

unint64_t sub_1BD0F0D08()
{
  result = qword_1EBD38B78;
  if (!qword_1EBD38B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38B80, &qword_1BE0B7958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionEntityMerchantCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionEntityMerchantCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BD0F0F04(unint64_t a1)
{
  if (a1 > 8)
  {
    return 8;
  }

  else
  {
    return byte_1BE0B79F2[a1];
  }
}

unint64_t sub_1BD0F0F24(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BD0F0FF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BD0F1038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD0F10A4(void *a1@<X2>, void *a2@<X8>)
{
  v69[1] = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051574();
  KeyPath = swift_getKeyPath();
  sub_1BE048964();
  v9 = sub_1BE0511F4();
  v10 = swift_getKeyPath();
  v69[0] = v7;
  v69[5] = v7;
  v69[6] = KeyPath;
  v69[7] = a1;
  v69[8] = v10;
  v69[9] = v9;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8068], v3);
  v11 = PKPassKitBundle();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v4 + 8))(v6, v3);
    v69[3] = v13;
    v69[4] = v15;
    sub_1BD0DDEBC();
    v16 = sub_1BE0506C4();
    v18 = v17;
    LOBYTE(v13) = v19;
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170, &qword_1BE0C8110);
    sub_1BD0F1430();
    sub_1BE050C24();
    sub_1BD0DDF10(v16, v18, (v13 & 1), v22, v23, v24, v25, v26);
    v9, v27, v28, v29, v30, v31, v32, v33;
    v10, v34, v35, v36, v37, v38, v39, v40;
    a1, v41, v42, v43, v44, v45, v46, v47;
    KeyPath, v48, v49, v50, v51, v52, v53, v54;
    v69[0], v55, v56, v57, v58, v59, v60, v61;
    v21, v62, v63, v64, v65, v66, v67, v68;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD0F1300()
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8, &qword_1BE0B8930);
  sub_1BD0F13A4();
  return sub_1BE051704();
}

unint64_t sub_1BD0F13A4()
{
  result = qword_1EBD38BB0;
  if (!qword_1EBD38BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38BA8, &qword_1BE0B8930);
    sub_1BD0F1430();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38BB0);
  }

  return result;
}

unint64_t sub_1BD0F1430()
{
  result = qword_1EBD38BB8;
  if (!qword_1EBD38BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49170, &qword_1BE0C8110);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38BB8);
  }

  return result;
}

unint64_t sub_1BD0F14E8()
{
  result = qword_1EBD38BC0;
  if (!qword_1EBD38BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49180, &unk_1BE0B89B0);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38BC0);
  }

  return result;
}

unint64_t sub_1BD0F15A0()
{
  result = qword_1EBD52210;
  if (!qword_1EBD52210)
  {
    sub_1BE0500D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52210);
  }

  return result;
}

uint64_t sub_1BD0F15F8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  return sub_1BD0F9950(v13 + v11, a1);
}

uint64_t sub_1BD0F16C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  return sub_1BD0F9950(v3 + v12, a2);
}

uint64_t sub_1BD0F1788(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD0F9950(a1, v6);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD0F99B4(v6);
}

uint64_t sub_1BD0F18B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  sub_1BD0F9A2C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BD0F191C()
{
  v1[15] = v0;
  v2 = sub_1BE04AFE4();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_1BE04D214();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0, &unk_1BE0B7DC0);
  v1[26] = swift_task_alloc();
  v4 = sub_1BE049CC4();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v5 = sub_1BE049D44();
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();
  v6 = sub_1BE049184();
  v1[33] = v6;
  v1[34] = *(v6 - 8);
  v1[35] = swift_task_alloc();
  v7 = sub_1BE049E54();
  v1[36] = v7;
  v1[37] = *(v7 - 8);
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8, &unk_1BE1091B0);
  v1[39] = swift_task_alloc();
  v8 = sub_1BE049B64();
  v1[40] = v8;
  v1[41] = *(v8 - 8);
  v1[42] = swift_task_alloc();
  v9 = sub_1BE049C24();
  v1[43] = v9;
  v1[44] = *(v9 - 8);
  v1[45] = swift_task_alloc();
  v10 = sub_1BE0495A4();
  v1[46] = v10;
  v1[47] = *(v10 - 8);
  v1[48] = swift_task_alloc();
  v11 = sub_1BE049A94();
  v1[49] = v11;
  v1[50] = *(v11 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v1[54] = swift_task_alloc();
  v12 = sub_1BE049D74();
  v1[55] = v12;
  v1[56] = *(v12 - 8);
  v1[57] = swift_task_alloc();
  sub_1BE0528A4();
  v1[58] = sub_1BE052894();
  v14 = sub_1BE052844();
  v1[59] = v14;
  v1[60] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1BD0F1EB8, v14, v13);
}

uint64_t sub_1BD0F1EB8()
{
  v1 = v0[54];
  v2 = v0[49];
  v3 = *(v0[15] + 16);
  v0[61] = sub_1BE0490F4();
  v0[62] = sub_1BE0490B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B6CA0;
  swift_getKeyPath();
  sub_1BD0F93A4(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_1BE04A4F4();
  swift_getKeyPath();
  sub_1BD0F93A4(&qword_1EBD38DE8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C0]);
  sub_1BE04A4F4();
  v4 = swift_task_alloc();
  v0[63] = v4;
  *(v4 + 16) = v3;
  v0[7] = v2;
  sub_1BE04B444();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = sub_1BE049CE4();
  v7 = MEMORY[0x1E6967BC8];
  v0[5] = v6;
  v0[6] = v7;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v8 = swift_task_alloc();
  v0[64] = v8;
  *v8 = v0;
  v8[1] = sub_1BD0F21A8;
  v9 = v0[57];

  return MEMORY[0x1EEDC14D8](v9, v0 + 2);
}

uint64_t sub_1BD0F21A8()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  *(v2 + 496), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v17 = *(v2 + 472);
    v18 = *(v2 + 480);
    v19 = sub_1BD0F38E0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v10, v11, v12, v13, v14, v15, v16);
    v17 = *(v2 + 472);
    v18 = *(v2 + 480);
    v19 = sub_1BD0F22D4;
  }

  return MEMORY[0x1EEE6DFA0](v19, v17, v18);
}

uint64_t sub_1BD0F22D4()
{
  v1 = sub_1BE049D54();
  if (*(v1 + 16))
  {
    v10 = *(v0 + 416);
    v9 = *(v0 + 424);
    v11 = *(v0 + 392);
    v12 = *(v0 + 400);
    v13 = *(v0 + 368);
    v14 = *(v0 + 312);
    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = *(v12 + 16);
    *(v0 + 528) = v16;
    *(v0 + 536) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17 = v1;
    v16(v10, v1 + v15, v11);
    v17, v18, v19, v20, v21, v22, v23, v24;
    (*(v12 + 32))(v9, v10, v11);
    *(v0 + 544) = sub_1BE0490B4();
    v25 = swift_task_alloc();
    *(v0 + 552) = v25;
    *(v25 + 16) = v9;
    *(v0 + 72) = v13;
    sub_1BE04B444();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
    (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
    sub_1BE049B54();
    v27 = swift_task_alloc();
    *(v0 + 560) = v27;
    *v27 = v0;
    v27[1] = sub_1BD0F27EC;
    v28 = *(v0 + 360);
    v29 = *(v0 + 336);

    return MEMORY[0x1EEDC14B8](v28, v29);
  }

  else
  {
    v30 = v1;
    *(v0 + 464), v2, v3, v4, v5, v6, v7, v8;
    v30, v31, v32, v33, v34, v35, v36, v37;
    sub_1BE04D114();
    v38 = sub_1BE04D204();
    v39 = sub_1BE052C34();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1BD026000, v38, v39, "No transactions for Manually Excluded found.", v40, 2u);
      MEMORY[0x1BFB45F20](v40, -1, -1);
    }

    v41 = *(v0 + 448);
    v60 = *(v0 + 456);
    v42 = *(v0 + 440);
    v43 = *(v0 + 200);
    v44 = *(v0 + 176);
    v45 = *(v0 + 152);
    v46 = *(v0 + 160);
    v47 = *(v0 + 120);

    (*(v46 + 8))(v44, v45);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
    (*(*(v48 - 8) + 56))(v43, 2, 2, v48);
    KeyPath = swift_getKeyPath();
    v50 = swift_task_alloc();
    *(v50 + 16) = v47;
    *(v50 + 24) = v43;
    *(v0 + 112) = v47;
    sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
    sub_1BE04B584();
    KeyPath, v51, v52, v53, v54, v55, v56, v57;
    (*(v41 + 8))(v60, v42);

    sub_1BD0F99B4(v43);

    v58 = *(v0 + 8);

    return v58();
  }
}

uint64_t sub_1BD0F27EC()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  v3 = v2[68];
  (*(v2[41] + 8))(v2[42], v2[40]);
  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = v2[60];
  v12 = v2[59];
  if (v0)
  {
    v13 = sub_1BD0F3C78;
  }

  else
  {
    v13 = sub_1BD0F2990;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1BD0F2990()
{
  v106 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = sub_1BE049C14();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 2))
  {
    v12 = *(v0 + 376);
    v13 = *(v0 + 384);
    v14 = *(v0 + 368);
    v15 = *(v0 + 296);
    v16 = *(v0 + 304);
    v17 = *(v0 + 288);
    v18 = *(v0 + 264);
    v19 = *(v0 + 208);
    v20 = *(v12 + 16);
    v12 += 16;
    v21 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    *(v0 + 576) = v20;
    *(v0 + 584) = v12 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v13, &v4[v21], v14);
    v4, v22, v23, v24, v25, v26, v27, v28;
    sub_1BE049524();
    v29 = sub_1BE049E24();
    v31 = v30;
    *(v0 + 592) = v29;
    *(v0 + 600) = v30;
    (*(v15 + 8))(v16, v17);
    *(v0 + 608) = sub_1BE0490B4();
    v32 = swift_task_alloc();
    *(v0 + 616) = v32;
    *(v32 + 16) = v29;
    *(v32 + 24) = v31;
    *(v0 + 80) = v18;
    sub_1BE04B444();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00, &unk_1BE0B7E60);
    (*(*(v33 - 8) + 56))(v19, 0, 1, v33);
    sub_1BE049CB4();
    v34 = swift_task_alloc();
    *(v0 + 624) = v34;
    *v34 = v0;
    v34[1] = sub_1BD0F3080;
    v35 = *(v0 + 256);
    v36 = *(v0 + 232);

    return MEMORY[0x1EEDC14C8](v35, v36);
  }

  else
  {
    v37 = *(v0 + 528);
    v38 = *(v0 + 424);
    v39 = *(v0 + 408);
    v40 = *(v0 + 392);
    *(v0 + 464), v5, v6, v7, v8, v9, v10, v11;
    v4, v41, v42, v43, v44, v45, v46, v47;
    sub_1BE04D114();
    v37(v39, v38, v40);
    v48 = sub_1BE04D204();
    v49 = sub_1BE052C34();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 400);
    v52 = *(v0 + 408);
    v53 = *(v0 + 392);
    v54 = *(v0 + 184);
    v55 = *(v0 + 152);
    v56 = *(v0 + 160);
    if (v50)
    {
      v102 = *(v0 + 152);
      v98 = v49;
      v58 = *(v0 + 136);
      v57 = *(v0 + 144);
      v59 = *(v0 + 128);
      v103 = *(v0 + 392);
      buf = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v105 = v96;
      *buf = 136315138;
      v100 = v54;
      sub_1BE049A64();
      sub_1BD0F93A4(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v60 = sub_1BE053B24();
      v62 = v61;
      (*(v58 + 8))(v57, v59);
      v63 = v103;
      v104 = *(v51 + 8);
      v104(v52, v63);
      v64 = sub_1BD123690(v60, v62, &v105);
      v62, v65, v66, v67, v68, v69, v70, v71;
      *(buf + 4) = v64;
      _os_log_impl(&dword_1BD026000, v48, v98, "No account with id %s found.", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96, v72, v73, v74, v75, v76, v77, v78);
      MEMORY[0x1BFB45F20](v96, -1, -1);
      MEMORY[0x1BFB45F20](buf, -1, -1);

      (*(v56 + 8))(v100, v102);
    }

    else
    {

      v104 = *(v51 + 8);
      v104(v52, v53);
      (*(v56 + 8))(v54, v55);
    }

    v79 = *(v0 + 448);
    v80 = *(v0 + 440);
    v101 = *(v0 + 424);
    v97 = *(v0 + 456);
    v99 = *(v0 + 392);
    v81 = *(v0 + 200);
    v82 = *(v0 + 120);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
    (*(*(v83 - 8) + 56))(v81, 2, 2, v83);
    KeyPath = swift_getKeyPath();
    v85 = swift_task_alloc();
    *(v85 + 16) = v82;
    *(v85 + 24) = v81;
    *(v0 + 104) = v82;
    sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
    sub_1BE04B584();
    KeyPath, v86, v87, v88, v89, v90, v91, v92;
    (*(v79 + 8))(v97, v80);

    sub_1BD0F99B4(v81);
    v104(v101, v99);

    v93 = *(v0 + 8);

    return v93();
  }
}