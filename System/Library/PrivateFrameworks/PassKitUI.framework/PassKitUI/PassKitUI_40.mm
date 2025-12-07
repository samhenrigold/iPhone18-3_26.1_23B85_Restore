uint64_t sub_1BD450DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465C0, &qword_1BE0D70B8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v80 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465B0, &qword_1BE0D6FE0);
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465C8, &qword_1BE0D70C0);
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v80 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465D0, &qword_1BE0D70C8);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v80 - v8;
  v9 = sub_1BE051AD4();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465D8, &unk_1BE0D70D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v86 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v80 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465E0, &unk_1BE0DF470);
  v82 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v19 = &v80 - v18;
  v20 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49810, &qword_1BE0D6FD8);
  v81 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46598, &qword_1BE0D6FD0);
  MEMORY[0x1EEE9AC00](v99);
  v25 = (&v80 - v24);
  v26 = a1;
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_1BE04D8B4(&v101);
  KeyPath, v29, v30, v31, v32, v33, v34, v35;
  v28, v36, v37, v38, v39, v40, v41, v42;
  if (v101 == 1)
  {
    sub_1BE04FB14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BE04E424();
    v43 = sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810, &qword_1BE0D6FD8, MEMORY[0x1E697BEF0]);
    MEMORY[0x1BFB3CC50](v23, v21, v43);
    v101 = v21;
    v102 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = sub_1BD0DE4F4(&qword_1EBD465A8, &qword_1EBD465B0, &qword_1BE0D6FE0, MEMORY[0x1E697C5E0]);
    v46 = v98;
    MEMORY[0x1BFB3CC60](v19, v98, v97, OpaqueTypeConformance2, v45);
    v82[1](v19, v46);
    (*(v81 + 8))(v23, v21);
  }

  else
  {
    v81 = v21;
    v82 = v25;
    type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
    sub_1BE0516A4();
    v48 = v83;
    v47 = v84;
    v49 = v85;
    (*(v84 + 104))(v83, *MEMORY[0x1E697D708], v85);
    v50 = sub_1BE051AC4();
    v51 = *(v47 + 8);
    v51(v48, v49);
    v51(v13, v49);
    v52 = v26;
    if (v50)
    {
      v53 = sub_1BE04FAD4();
      MEMORY[0x1EEE9AC00](v53);
      *(&v80 - 2) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465F0, &unk_1BE1113E0);
      sub_1BD4578C0();
      v54 = v90;
      sub_1BE04E424();
      v55 = sub_1BD0DE4F4(&qword_1EBD465E8, &qword_1EBD465D0, &qword_1BE0D70C8, MEMORY[0x1E697BEF0]);
      v56 = v80;
      v57 = v93;
      MEMORY[0x1BFB3CC50](v54, v93, v55);
      v59 = v86;
      v58 = v87;
      v60 = v88;
      (*(v87 + 16))(v86, v56, v88);
      (*(v58 + 56))(v59, 0, 1, v60);
      v101 = v57;
      v102 = v55;
      v61 = swift_getOpaqueTypeConformance2();
      v62 = v89;
      MEMORY[0x1BFB3CC80](v59, v60, v61);
      sub_1BD0DE53C(v59, &qword_1EBD465D8, &unk_1BE0D70D0);
      v63 = v56;
      v52 = v26;
      (*(v58 + 8))(v63, v60);
      v64 = v91;
      (*(v91 + 8))(v54, v57);
      v65 = v97;
    }

    else
    {
      v66 = v86;
      v67 = v88;
      (*(v87 + 56))(v86, 1, 1, v88);
      v68 = sub_1BD0DE4F4(&qword_1EBD465E8, &qword_1EBD465D0, &qword_1BE0D70C8, MEMORY[0x1E697BEF0]);
      v57 = v93;
      v101 = v93;
      v102 = v68;
      v69 = swift_getOpaqueTypeConformance2();
      v62 = v89;
      MEMORY[0x1BFB3CC80](v66, v67, v69);
      sub_1BD0DE53C(v66, &qword_1EBD465D8, &unk_1BE0D70D0);
      v65 = v97;
      v54 = v90;
      v64 = v91;
    }

    v70 = sub_1BE04FB14();
    MEMORY[0x1EEE9AC00](v70);
    *(&v80 - 2) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465F0, &unk_1BE1113E0);
    sub_1BD4578C0();
    sub_1BE04E424();
    v71 = v54;
    v72 = *(v94 + 48);
    v73 = v92;
    sub_1BD0DE19C(v62, v92, &qword_1EBD465D8, &unk_1BE0D70D0);
    (*(v64 + 16))(v73 + v72, v54, v57);
    v74 = v95;
    sub_1BE04F854();
    v75 = sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810, &qword_1BE0D6FD8, MEMORY[0x1E697BEF0]);
    v101 = v81;
    v102 = v75;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = sub_1BD0DE4F4(&qword_1EBD465A8, &qword_1EBD465B0, &qword_1BE0D6FE0, MEMORY[0x1E697C5E0]);
    v25 = v82;
    MEMORY[0x1BFB3CC70](v74, v98, v65, v76, v77);
    (*(v96 + 8))(v74, v65);
    (*(v64 + 8))(v71, v57);
    sub_1BD0DE53C(v62, &qword_1EBD465D8, &unk_1BE0D70D0);
  }

  v78 = sub_1BD4542A8();
  MEMORY[0x1BFB3CC50](v25, v99, v78);
  return sub_1BD0DE53C(v25, &qword_1EBD46598, &qword_1BE0D6FD0);
}

uint64_t sub_1BD4519A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46608, &unk_1BE0D7130);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  v9 = type metadata accessor for SEStorageUsageGroup(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540, &qword_1BE0D6F88);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v48 - v14);
  v16 = sub_1BD5DB9DC();
  if (v16 >> 62)
  {
    goto LABEL_14;
  }

  v24 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v16, v17, v18, v19, v20, v21, v22, v23;
    sub_1BD44F044(v15);
    v25 = type metadata accessor for SEStorageUsageCategory(0);
    if ((*(*(v25 - 8) + 48))(v15, 1, v25) == 1)
    {
      sub_1BD0DE53C(v15, &qword_1EBD46540, &qword_1BE0D6F88);
      v26 = 0;
      goto LABEL_12;
    }

    v49 = v24;
    v50 = v4;
    v27 = *(v15 + *(v25 + 20));
    v28 = *(v27 + 16);
    if (!v28)
    {
      break;
    }

    v4 = 0;
    v29 = v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v10 = *(v10 + 72);
    while (1)
    {
      v16 = sub_1BD457848(v29, v12, type metadata accessor for SEStorageUsageGroup);
      v30 = *(*v12 + 16);
      v31 = __OFADD__(v4, v30);
      v4 += v30;
      if (v31)
      {
        break;
      }

      sub_1BD457A80(v12, type metadata accessor for SEStorageUsageGroup);
      v29 += v10;
      if (!--v28)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    v46 = v4;
    v47 = v16;
    v24 = sub_1BE053704();
    v16 = v47;
    v4 = v46;
  }

  v4 = 0;
LABEL_11:
  sub_1BD457A80(v15, type metadata accessor for SEStorageUsageCategory);
  v26 = v49 == v4;
  v4 = v50;
LABEL_12:
  sub_1BD457848(a1, &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v32 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v33 = swift_allocObject();
  v34 = sub_1BD458754(&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  *(v33 + v32 + v5) = v26;
  MEMORY[0x1EEE9AC00](v34);
  *(&v48 - 16) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
  sub_1BD170E70();
  sub_1BE051704();
  sub_1BE052434();
  v36 = v35;
  sub_1BD0DE4F4(&qword_1EBD46600, &qword_1EBD46608, &unk_1BE0D7130, MEMORY[0x1E697D680]);
  v37 = v52;
  sub_1BE050DE4();
  v36, v38, v39, v40, v41, v42, v43, v44;
  return (*(v51 + 8))(v8, v37);
}

void sub_1BD451E90(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540, &qword_1BE0D6F88);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  sub_1BD44F044((&v15 - v4));
  v6 = type metadata accessor for SEStorageUsageCategory(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1BD0DE53C(v5, &qword_1EBD46540, &qword_1BE0D6F88);
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = *&v5[*(v6 + 20)];
    sub_1BE048C84();
    sub_1BD457A80(v5, type metadata accessor for SEStorageUsageCategory);
  }

  sub_1BD5DBCC8(v7, (a2 & 1) == 0);
  v7, v8, v9, v10, v11, v12, v13, v14;
}

void *sub_1BD451FD4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v9;
  v12 = *MEMORY[0x1E69B80D8];
  v13 = *(v5 + 104);
  if (a1)
  {
    v13(&v31 - v9, v12, v4, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      v18 = v17;

      (*(v5 + 8))(v11, v4);
      *&v37 = v16;
      *(&v37 + 1) = v18;
      sub_1BD0DDEBC();
      v32 = sub_1BE0506C4();
      v33 = v19;
      v34 = v20 & 1;
      v35 = v21;
      v36 = 0;
LABEL_6:
      result = sub_1BE04F9A4();
      v29 = v38;
      v30 = v39;
      *a2 = v37;
      *(a2 + 16) = v29;
      *(a2 + 32) = v30;
      return result;
    }

    __break(1u);
  }

  else
  {
    v13(v7, v12, v4, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v22 = result;
      v23 = sub_1BE04B6F4();
      v25 = v24;

      (*(v5 + 8))(v7, v4);
      *&v37 = v23;
      *(&v37 + 1) = v25;
      sub_1BD0DDEBC();
      v32 = sub_1BE0506C4();
      v33 = v27;
      v34 = v26 & 1;
      v35 = v28;
      v36 = 1;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD452248(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46608, &unk_1BE0D7130);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-v7];
  sub_1BD457848(a1, &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1BD458754(&v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
  sub_1BD170E70();
  sub_1BE051704();
  sub_1BE052434();
  v12 = v11;
  sub_1BD0DE4F4(&qword_1EBD46600, &qword_1EBD46608, &unk_1BE0D7130, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v12, v13, v14, v15, v16, v17, v18, v19;
  return (*(v6 + 8))(v8, v5);
}

void sub_1BD4524CC(uint64_t a1)
{
  v1 = sub_1BE051D94();
  sub_1BE04E7D4();
  v1, v2, v3, v4, v5, v6, v7, v8;
}

uint64_t sub_1BD452544(uint64_t a1)
{
  v16 = a1;
  v1 = sub_1BE051AD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-v6];
  v17 = *(type metadata accessor for SEStorageCleanupAppletTypeDetailView(0) + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  sub_1BE0516A4();
  v8 = *MEMORY[0x1E697D708];
  v9 = *(v2 + 104);
  v9(v4, *MEMORY[0x1E697D708], v1);
  v14 = sub_1BE051AC4();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);
  if (v14)
  {
    v11 = *MEMORY[0x1E697D710];
  }

  else
  {
    v11 = v8;
  }

  v9(v7, v11, v1);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE0516B4();
  return (v10)(v7, v1);
}

void *sub_1BD452740@<X0>(_OWORD *a1@<X8>)
{
  v36 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = sub_1BE051AD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  sub_1BE0516A4();
  (*(v9 + 104))(v11, *MEMORY[0x1E697D708], v8);
  v15 = sub_1BE051AC4();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  v17 = *(v2 + 104);
  if (v15)
  {
    v17(v7, *MEMORY[0x1E69B80D0], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();
      v22 = v21;

      (*(v2 + 8))(v7, v1);
      *&v42 = v20;
      *(&v42 + 1) = v22;
      sub_1BD0DDEBC();
      v37 = sub_1BE0506C4();
      v38 = v23;
      v39 = v24 & 1;
      v40 = v25;
      v41 = 0;
LABEL_6:
      result = sub_1BE04F9A4();
      v33 = v43;
      v34 = v44;
      v35 = v36;
      *v36 = v42;
      v35[1] = v33;
      *(v35 + 32) = v34;
      return result;
    }

    __break(1u);
  }

  else
  {
    v17(v4, *MEMORY[0x1E69B80D8], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v26 = result;
      v27 = sub_1BE04B6F4();
      v29 = v28;

      (*(v2 + 8))(v4, v1);
      *&v42 = v27;
      *(&v42 + 1) = v29;
      sub_1BD0DDEBC();
      v37 = sub_1BE0506C4();
      v38 = v31;
      v39 = v30 & 1;
      v40 = v32;
      v41 = 1;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD452AEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466B0, &qword_1BE0D71B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1BE051994();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1BE051984();
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466B8, &qword_1BE0D71C0);
  sub_1BD452D50(a1, &v9[*(v17 + 44)]);
  v18 = *(v11 + 16);
  v18(v13, v16, v10);
  sub_1BD0DE19C(v9, v6, &qword_1EBD466B0, &qword_1BE0D71B8);
  v18(a2, v13, v10);
  v19 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466C0, &qword_1BE0D71C8) + 48)];
  sub_1BD0DE19C(v6, v19, &qword_1EBD466B0, &qword_1BE0D71B8);
  sub_1BD0DE53C(v9, &qword_1EBD466B0, &qword_1BE0D71B8);
  v20 = *(v11 + 8);
  v20(v16, v10);
  sub_1BD0DE53C(v6, &qword_1EBD466B0, &qword_1BE0D71B8);
  return (v20)(v13, v10);
}

uint64_t sub_1BD452D50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v103 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466C8, &unk_1BE0D71D0);
  MEMORY[0x1EEE9AC00](v98);
  v102 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v97 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540, &unk_1BE0DC3A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v101 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v97 - v10;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a1;
  v15 = sub_1BD5DB9DC();
  if (v15 >> 62)
  {
    v96 = v15;
    v23 = sub_1BE053704();
    v15 = v96;
  }

  else
  {
    v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15, v16, v17, v18, v19, v20, v21, v22;
  v97 = v23;
  if (v23 == 1)
  {
    v24 = "UP_SELECTION_COUNT";
  }

  else
  {
    v24 = "SE_STORAGE_CLEANUP_DESELECT_ALL";
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E69B80D8], v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E6530];
  *(v25 + 16) = xmmword_1BE0B69E0;
  v27 = MEMORY[0x1E69E65A8];
  *(v25 + 56) = v26;
  *(v25 + 64) = v27;
  *(v25 + 32) = v23;
  v28 = sub_1BE04B714();
  v30 = v29;
  (v24 | 0x8000000000000000), v29, v31, v32, v33, v34, v35, v36;
  v25, v37, v38, v39, v40, v41, v42, v43;
  (*(v12 + 8))(v14, v11);
  *&v109[0] = v28;
  *(&v109[0] + 1) = v30;
  sub_1BD0DDEBC();
  v44 = sub_1BE0506C4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = sub_1BE050464();
  v52 = sub_1BE0505F4();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v51, v53, v55, v57, v59, v60, v61, v62;
  sub_1BD0DDF10(v44, v46, (v48 & 1), v63, v64, v65, v66, v67);
  v50, v68, v69, v70, v71, v72, v73, v74;
  v75 = sub_1BE0501D4();
  v108 = v56 & 1;
  v107 = 1;
  *&v104 = v52;
  *(&v104 + 1) = v54;
  LOBYTE(v105) = v56 & 1;
  *(&v105 + 1) = v58;
  v106[0] = v75;
  memset(&v106[8], 0, 32);
  v106[40] = 1;
  sub_1BE052434();
  v77 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BD2A275C();
  v78 = v100;
  sub_1BE050DE4();
  v77, v79, v80, v81, v82, v83, v84, v85;
  v109[2] = *v106;
  v110[0] = *&v106[16];
  *(v110 + 9) = *&v106[25];
  v109[0] = v104;
  v109[1] = v105;
  sub_1BD0DE53C(v109, &unk_1EBD3DF90, &qword_1BE0C2E90);
  v86 = sub_1BE051CF4();
  v88 = v87;
  v89 = &v6[*(v98 + 36)];
  sub_1BD453300(v99, v97);
  v90 = &v89[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466D0, &qword_1BE0D71E0) + 36)];
  *v90 = v86;
  v90[1] = v88;
  *v6 = 0;
  v6[8] = 1;
  v91 = v101;
  sub_1BD0DE19C(v78, v101, &qword_1EBD40540, &unk_1BE0DC3A0);
  v92 = v102;
  sub_1BD0DE19C(v6, v102, &qword_1EBD466C8, &unk_1BE0D71D0);
  v93 = v103;
  *v103 = 0;
  *(v93 + 8) = 1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466D8, &qword_1BE0D71E8);
  sub_1BD0DE19C(v91, v93 + *(v94 + 48), &qword_1EBD40540, &unk_1BE0DC3A0);
  sub_1BD0DE19C(v92, v93 + *(v94 + 64), &qword_1EBD466C8, &unk_1BE0D71D0);
  sub_1BD0DE53C(v6, &qword_1EBD466C8, &unk_1BE0D71D0);
  sub_1BD0DE53C(v78, &qword_1EBD40540, &unk_1BE0DC3A0);
  sub_1BD0DE53C(v92, &qword_1EBD466C8, &unk_1BE0D71D0);
  return sub_1BD0DE53C(v91, &qword_1EBD40540, &unk_1BE0DC3A0);
}

uint64_t sub_1BD453300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466E0, &qword_1BE0D71F0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  sub_1BD457848(a1, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1BD458754(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  sub_1BE051704();
  LOBYTE(v10) = a2 == 0;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0) + 36)];
  *v14 = KeyPath;
  v14[1] = sub_1BD10DF54;
  v14[2] = v13;
  v15 = sub_1BE0501D4();
  v16 = &v9[*(v7 + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  sub_1BE052434();
  v18 = v17;
  sub_1BD457FF0();
  sub_1BE050DE4();
  v18, v19, v20, v21, v22, v23, v24, v25;
  return sub_1BD0DE53C(v9, &qword_1EBD466E0, &qword_1BE0D71F0);
}

void sub_1BD4535A0()
{
  v1 = v0;
  v2 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = type metadata accessor for SEStorageUsageGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540, &qword_1BE0D6F88);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v69 - v10);
  v12 = *(v0 + 24);
  v13 = sub_1BD5DB9DC();
  if (v13 >> 62)
  {
    goto LABEL_16;
  }

  v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v13, v14, v15, v16, v17, v18, v19, v20;
    sub_1BD44F044(v11);
    v22 = type metadata accessor for SEStorageUsageCategory(0);
    if ((*(*(v22 - 8) + 48))(v11, 1, v22) == 1)
    {
      sub_1BD0DE53C(v11, &qword_1EBD46540, &qword_1BE0D6F88);
      v23 = 0;
      goto LABEL_12;
    }

    v70 = v21;
    v71 = v3;
    v24 = *(v11 + *(v22 + 20));
    v3 = *(v24 + 16);
    if (!v3)
    {
      break;
    }

    v25 = 0;
    v26 = v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v6 = *(v6 + 72);
    while (1)
    {
      v13 = sub_1BD457848(v26, v8, type metadata accessor for SEStorageUsageGroup);
      v27 = *(*v8 + 16);
      v28 = __OFADD__(v25, v27);
      v25 += v27;
      if (v28)
      {
        break;
      }

      sub_1BD457A80(v8, type metadata accessor for SEStorageUsageGroup);
      v26 += v6;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    v68 = v13;
    v21 = sub_1BE053704();
    v13 = v68;
  }

  v25 = 0;
LABEL_11:
  sub_1BD457A80(v11, type metadata accessor for SEStorageUsageCategory);
  v3 = v71;
  v23 = v70 == v25;
LABEL_12:
  sub_1BD457848(v1, &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v29 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v30 = swift_allocObject();
  v30[16] = v23;
  sub_1BD458754(&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), &v30[v29], type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  sub_1BE04D8B4(&v72);
  KeyPath, v33, v34, v35, v36, v37, v38, v39;
  v32, v40, v41, v42, v43, v44, v45, v46;
  if ((v72 & 1) == 0)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD5EE954(v12, v12, sub_1BD45807C, v30);
    v12, v54, v55, v56, v57, v58, v59, v60;
    v30, v61, v62, v63, v64, v65, v66, v67;
  }

  v30, v47, v48, v49, v50, v51, v52, v53;
}

void sub_1BD453984(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v45 = v9;
    v46 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    v18 = sub_1BE0513B4();
    v45 = v18;
    v19 = sub_1BE050574();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_1BD0DDF10(v12, v14, (v8 & 1), v24, v26, v27, v28, v29);
    v18, v30, v31, v32, v33, v34, v35, v36;
    v17, v37, v38, v39, v40, v41, v42, v43;
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

uint64_t sub_1BD453B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1BD457848(a1, a4, type metadata accessor for SEStorageUsageGroup);
  v11 = *(a2 + 24);
  sub_1BD457848(a2, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_1BD458754(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  KeyPath = swift_getKeyPath();
  v15 = type metadata accessor for SEStorageAppletUsageSection(0);
  *(a4 + v15[8]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  *(a4 + v15[5]) = v11;
  *(a4 + v15[6]) = a3;
  v16 = (a4 + v15[7]);
  *v16 = sub_1BD45831C;
  v16[1] = v13;
  return sub_1BE048964();
}

void sub_1BD453D28(char a1, char a2)
{
  v4 = sub_1BE04E664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 & 1) != 0 && (a1)
  {
    type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
    sub_1BD70A050(v7);
    sub_1BE04E654();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BD453E1C@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for SEStorageAppletUsageSection(0);
  sub_1BD0DE19C(v1 + *(v10 + 32), v9, &qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BD0DE204(v9, a1, &qword_1EBD40450, &qword_1BE0D7250);
  }

  v12 = *v9;
  sub_1BE052C44();
  v13 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();
  v12, v14, v15, v16, v17, v18, v19, v20;
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BD454008()
{
  result = qword_1EBD46558;
  if (!qword_1EBD46558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46548, &qword_1BE0D6F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46560, &qword_1BE0D6FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46568, &qword_1BE0D6FA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46570, &qword_1BE0D6FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46578, &qword_1BE0D6FB8);
    sub_1BD4541C4();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46598, &qword_1BE0D6FD0);
    sub_1BD4542A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46558);
  }

  return result;
}

unint64_t sub_1BD4541C4()
{
  result = qword_1EBD46580;
  if (!qword_1EBD46580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46578, &qword_1BE0D6FB8);
    sub_1BD0DE4F4(&qword_1EBD46588, &qword_1EBD46590, &unk_1BE0D6FC0, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410, &unk_1BE0D2B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46580);
  }

  return result;
}

unint64_t sub_1BD4542A8()
{
  result = qword_1EBD465A0;
  if (!qword_1EBD465A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46598, &qword_1BE0D6FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49810, &qword_1BE0D6FD8);
    sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810, &qword_1BE0D6FD8, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD465A8, &qword_1EBD465B0, &qword_1BE0D6FE0, MEMORY[0x1E697C5E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD465A0);
  }

  return result;
}

uint64_t sub_1BD4543D0@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46728, &qword_1BE0D72B0);
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46730, &qword_1BE0D72B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46738, &qword_1BE0D72C0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46740, &qword_1BE0D72C8);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v43 = v1;
  sub_1BD456C88(v1, v10);
  sub_1BD457420(v1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46748, &unk_1BE0D72D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD45857C();
  sub_1BD0DE4F4(&qword_1EBD46768, &qword_1EBD46748, &unk_1BE0D72D0, MEMORY[0x1E6981F48]);
  sub_1BD12E194();
  v15 = v14;
  sub_1BE051A34();
  if (*(v1 + *(type metadata accessor for SEStorageAppletUsageSection(0) + 24)))
  {
    v16 = 1;
    v18 = v39;
    v17 = v40;
    v19 = v36;
  }

  else
  {
    v20 = v34;
    sub_1BD457618();
    v21 = v39;
    v19 = v36;
    v22 = v20;
    v23 = v40;
    (*(v39 + 32))(v36, v22, v40);
    v16 = 0;
    v17 = v23;
    v18 = v21;
  }

  (*(v18 + 56))(v19, v16, 1, v17);
  v24 = v35;
  v25 = *(v35 + 16);
  v26 = v37;
  v27 = v38;
  v25(v38, v15, v37);
  v28 = v41;
  sub_1BD0DE19C(v19, v41, &qword_1EBD46730, &qword_1BE0D72B8);
  v29 = v42;
  v25(v42, v27, v26);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46770, &qword_1BE0D72E8);
  sub_1BD0DE19C(v28, &v29[*(v30 + 48)], &qword_1EBD46730, &qword_1BE0D72B8);
  sub_1BD0DE53C(v19, &qword_1EBD46730, &qword_1BE0D72B8);
  v31 = *(v24 + 8);
  v31(v15, v26);
  sub_1BD0DE53C(v28, &qword_1EBD46730, &qword_1BE0D72B8);
  return (v31)(v27, v26);
}

uint64_t sub_1BD454844@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46778, &qword_1BE0D72F0);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467B8, &qword_1BE0D7330);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = v45 - v8;
  v56 = type metadata accessor for SEStorageAppletUsageSection(0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467C0, &qword_1BE0D7338);
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v51 = v45 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467C8, &qword_1BE0D7340);
  MEMORY[0x1EEE9AC00](v53);
  v58 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = v45 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v57 = v45 - v17;
  v49 = a1;
  sub_1BD6C9F84(*a1);
  v68 = v18;
  KeyPath = swift_getKeyPath();
  sub_1BD457848(a1, v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageAppletUsageSection);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v45[1] = v10;
  v20 = swift_allocObject();
  v46 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD458754(v46, v20 + v19, type metadata accessor for SEStorageAppletUsageSection);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1BD4587BC;
  *(v21 + 24) = v20;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467D0, &qword_1BE0D7378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467D8, &qword_1BE0D7380);
  sub_1BD0DE4F4(&qword_1EBD467E0, &qword_1EBD467D0, &qword_1BE0D7378, MEMORY[0x1E69E6338]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD467E8, &qword_1BE0D7388);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD467F0, &unk_1BE0D7390);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD467F8, &qword_1BE110AD0);
  v25 = sub_1BD0DE4F4(&qword_1EBD46800, &qword_1EBD467F0, &unk_1BE0D7390, &unk_1BE0FA020);
  v26 = sub_1BD4588AC();
  v64 = v23;
  v65 = v24;
  v27 = v51;
  v28 = v49;
  v66 = v25;
  v67 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v22;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BE0519C4();
  v30 = 0;
  v31 = 0;
  if ((sub_1BD4557C0() & 1) == 0)
  {
    v32 = v46;
    sub_1BD457848(v28, v46, type metadata accessor for SEStorageAppletUsageSection);
    v33 = swift_allocObject();
    sub_1BD458754(v32, v33 + v19, type metadata accessor for SEStorageAppletUsageSection);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1BD458B80;
    *(v31 + 24) = v33;
    v30 = sub_1BD458BE8;
  }

  v34 = v52;
  (*(v54 + 32))(v52, v27, v55);
  v35 = (v34 + *(v53 + 36));
  *v35 = v30;
  v35[1] = v31;
  v36 = v57;
  sub_1BD0DE204(v34, v57, &qword_1EBD467C8, &qword_1BE0D7340);
  if (*(v28 + *(v56 + 24)) == 1)
  {
    v37 = v47;
    sub_1BD456834(v47);
    v38 = v61;
    sub_1BD0DE204(v37, v61, &qword_1EBD46778, &qword_1BE0D72F0);
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v38 = v61;
  }

  (*(v59 + 56))(v38, v39, 1, v60);
  v40 = v58;
  sub_1BD0DE19C(v36, v58, &qword_1EBD467C8, &qword_1BE0D7340);
  v41 = v62;
  sub_1BD0DE19C(v38, v62, &qword_1EBD467B8, &qword_1BE0D7330);
  v42 = v63;
  sub_1BD0DE19C(v40, v63, &qword_1EBD467C8, &qword_1BE0D7340);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46810, &qword_1BE0D73A8);
  sub_1BD0DE19C(v41, v42 + *(v43 + 48), &qword_1EBD467B8, &qword_1BE0D7330);
  sub_1BD0DE53C(v38, &qword_1EBD467B8, &qword_1BE0D7330);
  sub_1BD0DE53C(v36, &qword_1EBD467C8, &qword_1BE0D7340);
  sub_1BD0DE53C(v41, &qword_1EBD467B8, &qword_1BE0D7330);
  return sub_1BD0DE53C(v40, &qword_1EBD467C8, &qword_1BE0D7340);
}

void sub_1BD454FB0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD455010@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a1;
  v78 = a4;
  v6 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v74 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v7;
  v77 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SEStorageAppletUsageSection(0);
  v71 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v72 = v8;
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v64);
  v65 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v66);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467F0, &unk_1BE0D7390);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v63 - v16);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467E8, &qword_1BE0D7388);
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v63 - v18;
  if (sub_1BD4557C0())
  {
    v19 = *(a2 + v6[8]);
  }

  else
  {
    v19 = 2;
  }

  LODWORD(v80) = v19;
  v20 = *a2;
  v21 = [*a2 localizedDescription];
  v22 = sub_1BE052434();
  v79 = v23;

  sub_1BD0DE19C(a2 + v6[6], v14, &unk_1EBD39970, &unk_1BE0B9F80);
  v24 = *(v81 + 20);
  v81 = a3;
  v25 = *(a3 + v24);
  v26 = v6[7];
  v76 = a2;
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v28 = [*(v25 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1BE052434();
    v32 = v31;
  }

  else
  {

    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = v79;
  *v17 = v22;
  v17[1] = v33;
  v34 = v14;
  sub_1BD0DE19C(v14, v17 + v15[9], &unk_1EBD39970, &unk_1BE0B9F80);
  *(v17 + v15[10]) = 0;
  v35 = (v17 + v15[11]);
  *v35 = v30;
  v35[1] = v32;
  *(v17 + v15[12]) = v80;
  *(v17 + v15[13]) = 0;
  result = [v20 paymentPass];
  v37 = v15;
  v38 = v81;
  if (result)
  {
    v39 = v37[14];
    v40 = v65;
    *v65 = result;
    v80 = v37;
    swift_storeEnumTagMultiPayload();
    PKPassFrontFaceContentSize();
    *(v11 + 3) = 0x4046000000000000;
    *(v11 + 4) = v42 / v41 * 44.0;
    v43 = v66;
    sub_1BD458754(v40, &v11[*(v66 + 6)], type metadata accessor for WrappedPass);
    *v11 = sub_1BD70C870;
    *(v11 + 1) = 0;
    v11[16] = 0;
    v11[*(v43 + 7)] = 1;
    *&v11[*(v43 + 8)] = 1911;
    sub_1BD458754(v11, v17 + v39, type metadata accessor for PassImage);
    v44 = sub_1BD0DE53C(v34, &unk_1EBD39970, &unk_1BE0B9F80);
    v66 = &v63;
    MEMORY[0x1EEE9AC00](v44);
    v45 = v69;
    *(&v63 - 2) = v38;
    *(&v63 - 1) = v45;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467F8, &qword_1BE110AD0);
    v46 = sub_1BD0DE4F4(&qword_1EBD46800, &qword_1EBD467F0, &unk_1BE0D7390, &unk_1BE0FA020);
    v47 = sub_1BD4588AC();
    v48 = v67;
    v49 = v80;
    sub_1BE0508B4();
    sub_1BD0DE53C(v17, &qword_1EBD467F0, &unk_1BE0D7390);
    v50 = v73;
    sub_1BD457848(v38, v73, type metadata accessor for SEStorageAppletUsageSection);
    v51 = v77;
    sub_1BD457848(v76, v77, type metadata accessor for SEStorageUsageGroup.PassEntry);
    v52 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v53 = (v72 + *(v74 + 80) + v52) & ~*(v74 + 80);
    v54 = swift_allocObject();
    sub_1BD458754(v50, v54 + v52, type metadata accessor for SEStorageAppletUsageSection);
    sub_1BD458754(v51, v54 + v53, type metadata accessor for SEStorageUsageGroup.PassEntry);
    v82 = v49;
    v83 = v79;
    v84 = v46;
    v85 = v47;
    swift_getOpaqueTypeConformance2();
    v55 = v70;
    sub_1BE0509D4();
    v54, v56, v57, v58, v59, v60, v61, v62;
    return (*(v68 + 8))(v48, v55);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4557C0()
{
  v0 = sub_1BE051AD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528, &unk_1BE0CE330);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v27 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530, &unk_1BE0C80F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  sub_1BD453E1C(v8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD40450, &qword_1BE0D7250);
    v19 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v18);
    sub_1BD0DE53C(v8, &qword_1EBD40520, &qword_1BE0D70B0);
    v19 = 0;
  }

  v20 = *(v1 + 56);
  v20(v17, v19, 1, v0);
  (*(v1 + 104))(v14, *MEMORY[0x1E697D708], v0);
  v20(v14, 0, 1, v0);
  v21 = *(v3 + 48);
  sub_1BD0DE19C(v17, v5, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE19C(v14, &v5[v21], &qword_1EBD40530, &unk_1BE0C80F0);
  v22 = *(v1 + 48);
  if (v22(v5, 1, v0) != 1)
  {
    sub_1BD0DE19C(v5, v11, &qword_1EBD40530, &unk_1BE0C80F0);
    if (v22(&v5[v21], 1, v0) != 1)
    {
      v24 = v28;
      (*(v1 + 32))(v28, &v5[v21], v0);
      sub_1BD4579A8(&qword_1EBD40538, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
      v23 = sub_1BE052334();
      v25 = *(v1 + 8);
      v25(v24, v0);
      sub_1BD0DE53C(v14, &qword_1EBD40530, &unk_1BE0C80F0);
      sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
      v25(v11, v0);
      sub_1BD0DE53C(v5, &qword_1EBD40530, &unk_1BE0C80F0);
      return v23 & 1;
    }

    sub_1BD0DE53C(v14, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
    (*(v1 + 8))(v11, v0);
    goto LABEL_9;
  }

  sub_1BD0DE53C(v14, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
  if (v22(&v5[v21], 1, v0) != 1)
  {
LABEL_9:
    sub_1BD0DE53C(v5, &qword_1EBD40528, &unk_1BE0CE330);
    v23 = 0;
    return v23 & 1;
  }

  sub_1BD0DE53C(v5, &qword_1EBD40530, &unk_1BE0C80F0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1BD455D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageAppletUsageSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8, &qword_1BE0D73A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  sub_1BD457848(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageAppletUsageSection);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1BD458754(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SEStorageAppletUsageSection);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
  sub_1BE051704();
  sub_1BE052434();
  v14 = v13;
  sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v14, v15, v16, v17, v18, v19, v20, v21;
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1BD455FC4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1BE04B344();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46838, &qword_1BE0D73D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B69E0;
  *(v8 + 32) = a2;
  v10[1] = v8;
  sub_1BD4579A8(&qword_1EBD46840, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46848, &qword_1BE0D73E0);
  sub_1BD0DE4F4(&qword_1EBD46850, &qword_1EBD46848, &qword_1BE0D73E0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  sub_1BD45617C(v7, a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BD45617C(uint64_t a1, uint64_t *a2)
{
  v52 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818, &qword_1BE0D73B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v52 - v3;
  v4 = sub_1BE04B304();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46820, &qword_1BE0D73B8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v56 = MEMORY[0x1E69E7CD0];
  sub_1BE04B314();
  sub_1BE04B344();
  sub_1BD4579A8(&unk_1EBD4D4D0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  while (1)
  {
    sub_1BE052B04();
    sub_1BD4579A8(&qword_1EBD46828, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v11 = sub_1BE052334();
    (*(v5 + 8))(v7, v4);
    if (v11)
    {
      break;
    }

    v12 = sub_1BE052B34();
    v14 = *v13;
    v12(v55, 0);
    sub_1BE052B14();
    sub_1BD2A5FF0(v55, v14);
  }

  sub_1BD0DE53C(v10, &qword_1EBD46820, &qword_1BE0D73B8);
  v15 = type metadata accessor for SEStorageAppletUsageSection(0);
  v16 = v54;
  v17 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v18 = v53;
  (*(*(v17 - 8) + 56))(v53, 1, 1, v17);
  v19 = v56;
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_1BE04D8B4(v55);
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v21, v29, v30, v31, v32, v33, v34, v35;
  if (LOBYTE(v55[0]) == 1)
  {
    v19, v36, v37, v38, v39, v40, v41, v42;
  }

  else
  {
    sub_1BD5E2BC0(v52, v18, v19, 1);
    v19, v43, v44, v45, v46, v47, v48, v49;
    sub_1BD5E0C8C();
  }

  v50 = sub_1BD0DE53C(v18, &qword_1EBD46818, &qword_1BE0D73B0);
  return (*(v16 + *(v15 + 28)))(v50);
}

id sub_1BD456544()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80F0], v0, v2);
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

uint64_t sub_1BD4566B4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818, &qword_1BE0D73B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  type metadata accessor for SEStorageAppletUsageSection(0);
  sub_1BD457848(a2, v6, type metadata accessor for SEStorageUsageGroup.PassEntry);
  v7 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = *(a2 + *(v7 + 32));
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  sub_1BE04D8B4(&v27);
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
  if ((v27 & 1) == 0)
  {
    sub_1BD5E2BC0(a1, v6, 0, v8 ^ 1);
    sub_1BD5E0C8C();
  }

  return sub_1BD0DE53C(v6, &qword_1EBD46818, &qword_1BE0D73B0);
}

int *sub_1BD456834@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46790, &qword_1BE0D72F8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v42 - v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E69B80D8], v3, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v4 + 8))(v6, v3);
    v16 = *(v1 + *(type metadata accessor for SEStorageAppletUsageSection(0) + 20));
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v18 = [*(v16 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1BE052434();
      v22 = v21;
    }

    else
    {

      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = sub_1BD4557C0();
    *v10 = v13;
    v10[1] = v15;
    v24 = v7[9];
    v25 = sub_1BE04AF64();
    (*(*(v25 - 8) + 56))(v10 + v24, 1, 1, v25);
    *(v10 + v7[10]) = 1;
    v26 = (v10 + v7[11]);
    *v26 = v20;
    v26[1] = v22;
    *(v10 + v7[12]) = 2;
    *(v10 + v7[13]) = v23 & 1;
    v27 = v10 + v7[14];
    v28 = swift_allocObject();
    *(v28 + 16) = 0xD000000000000015;
    *(v28 + 24) = 0x80000001BE12A050;
    __asm { FMOV            V0.2D, #29.0 }

    v42[0] = _Q0;
    *(v28 + 32) = _Q0;
    v34 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46798, &unk_1BE0D7300) + 36)];
    v35 = *(sub_1BE04EDE4() + 20);
    v36 = *MEMORY[0x1E697F468];
    v37 = sub_1BE04F684();
    (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
    __asm { FMOV            V0.2D, #6.0 }

    *v34 = _Q0;
    *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    *v27 = sub_1BD306C0C;
    *(v27 + 1) = v28;
    v27[16] = 0;
    *(v27 + 24) = v42[0];
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v39 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467A0, &qword_1BE0D7310) + 36)];
    v40 = v42[2];
    *v39 = v42[1];
    *(v39 + 1) = v40;
    *(v39 + 2) = v42[3];
    if (sub_1BD4557C0())
    {
      v41 = 0.5;
    }

    else
    {
      v41 = 1.0;
    }

    sub_1BD0DE204(v10, a1, &qword_1EBD46790, &qword_1BE0D72F8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46778, &qword_1BE0D72F0);
    *(a1 + result[9]) = v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1BD456C88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467A8, &qword_1BE0D7318);
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v10 = sub_1BE04F504();
  v21 = 1;
  sub_1BD456FC4(a1, v24);
  memcpy(v22, v24, sizeof(v22));
  memcpy(v23, v24, sizeof(v23));
  sub_1BD0DE19C(v22, v19, &qword_1EBD467B0, &unk_1BE0D7320);
  sub_1BD0DE53C(v23, &qword_1EBD467B0, &unk_1BE0D7320);
  memcpy(&v20[7], v22, 0x120uLL);
  *v19 = v10;
  *&v19[8] = 0;
  v19[16] = v21;
  memcpy(&v19[17], v20, 0x127uLL);
  sub_1BE04FF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46758, &qword_1BE0D72E0);
  sub_1BD0DE4F4(&qword_1EBD46760, &qword_1EBD46758, &qword_1BE0D72E0, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v4 + 8))(v6, v3);
  memcpy(v24, v19, 0x138uLL);
  sub_1BD0DE53C(v24, &qword_1EBD46758, &qword_1BE0D72E0);
  sub_1BE051CD4();
  sub_1BE04EE54();
  v11 = v18;
  (*(v7 + 32))(v18, v9, v17);
  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46738, &qword_1BE0D72C0) + 36);
  v13 = *&v19[80];
  *(v12 + 64) = *&v19[64];
  *(v12 + 80) = v13;
  *(v12 + 96) = *&v19[96];
  v14 = *&v19[16];
  *v12 = *v19;
  *(v12 + 16) = v14;
  result = *&v19[48];
  *(v12 + 32) = *&v19[32];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_1BD456FC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for SEStorageUsageGroup(0);
  HIDWORD(v108) = sub_1BD802444() >> 32;
  v109 = v4;
  sub_1BD0DDEBC();
  v5 = sub_1BE0506C4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  LODWORD(v108) = sub_1BE04FC74();
  v12 = sub_1BE050574();
  v67 = v13;
  v68 = v12;
  v15 = v14;
  v70 = v16;
  sub_1BD0DDF10(v5, v7, (v9 & 1), v16, v17, v18, v19, v20);
  v11, v21, v22, v23, v24, v25, v26, v27;
  v65 = sub_1BE051CE4();
  v66 = v28;
  LOBYTE(v64) = 1;
  LOBYTE(v63) = 1;
  sub_1BE04EE54();
  v29 = v15 & 1;
  v130 = v15 & 1;
  v30 = *(a1 + *(type metadata accessor for SEStorageAppletUsageSection(0) + 20));
  v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v32 = [*(v30 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1BE052434();
    v36 = v35;
  }

  else
  {

    HIDWORD(v34) = 0;
    v36 = 0xE000000000000000;
  }

  HIDWORD(v108) = HIDWORD(v34);
  v109 = v36;
  v37 = sub_1BE0506C4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  LODWORD(v108) = sub_1BE04FC94();
  v44 = sub_1BE050574();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1BD0DDF10(v37, v39, (v41 & 1), v49, v51, v52, v53, v54);
  v43, v55, v56, v57, v58, v59, v60, v61;
  sub_1BE051CF4();
  sub_1BE04EE54();
  v121 = v48 & 1;
  *&v79 = v68;
  *(&v79 + 1) = v67;
  LOBYTE(v80) = v29;
  *(&v80 + 1) = *v129;
  DWORD1(v80) = *&v129[3];
  *(&v80 + 1) = v70;
  v85 = v126;
  v86 = v127;
  v87 = v128;
  v81 = v122;
  v82 = v123;
  v83 = v124;
  v84 = v125;
  __src[6] = v126;
  __src[7] = v127;
  __src[2] = v122;
  __src[3] = v123;
  __src[4] = v124;
  __src[5] = v125;
  __src[0] = v79;
  __src[1] = v80;
  *&v88 = v44;
  *(&v88 + 1) = v46;
  LOBYTE(v89) = v48 & 1;
  *(&v89 + 1) = *v120;
  DWORD1(v89) = *&v120[3];
  *(&v89 + 1) = v50;
  v94 = v76;
  v95 = v77;
  v96 = v78;
  v90 = v72;
  v91 = v73;
  v92 = v74;
  v93 = v75;
  __src[12] = v73;
  __src[13] = v74;
  __src[10] = v89;
  __src[11] = v72;
  __src[14] = v75;
  __src[15] = v76;
  __src[16] = v77;
  __src[17] = v78;
  __src[8] = v128;
  __src[9] = v88;
  memcpy(a2, __src, 0x120uLL);
  v97[0] = v44;
  v97[1] = v46;
  v98 = v48 & 1;
  *v99 = *v120;
  *&v99[3] = *&v120[3];
  v100 = v50;
  v105 = v76;
  v106 = v77;
  v107 = v78;
  v101 = v72;
  v102 = v73;
  v103 = v74;
  v104 = v75;
  sub_1BD0DE19C(&v79, &v108, &qword_1EBD3E090, &unk_1BE0D49D0);
  sub_1BD0DE19C(&v88, &v108, &qword_1EBD3E090, &unk_1BE0D49D0);
  sub_1BD0DE53C(v97, &qword_1EBD3E090, &unk_1BE0D49D0);
  v108 = v68;
  v109 = v67;
  v110 = v29;
  *v111 = *v129;
  *&v111[3] = *&v129[3];
  v112 = v70;
  v117 = v126;
  v118 = v127;
  v119 = v128;
  v113 = v122;
  v114 = v123;
  v115 = v124;
  v116 = v125;
  return sub_1BD0DE53C(&v108, &qword_1EBD3E090, &unk_1BE0D49D0);
}

void sub_1BD457420(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageAppletUsageSection(0);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (*(a1 + *(v8 + 24)) != 1)
  {
    goto LABEL_4;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69B80D8], v4);
  v13 = PKPassKitBundle();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v5 + 8))(v7, v4);
    v46[2] = v15;
    v46[3] = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = sub_1BE050454();
    v9 = sub_1BE0505F4();
    v10 = v26;
    v28 = v27;
    v12 = v29;
    v25, v26, v27, v29, v30, v31, v32, v33;
    sub_1BD0DDF10(v18, v20, (v22 & 1), v34, v35, v36, v37, v38);
    v24, v39, v40, v41, v42, v43, v44, v45;
    v11 = v28 & 1;
LABEL_4:
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v12;
    return;
  }

  __break(1u);
}

id sub_1BD457618()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v0;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v2 + 8))(v5, v1);
    v43 = v8;
    v44 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v7) = v14;
    v16 = v15;
    v17 = sub_1BE050454();
    v18 = sub_1BE0505F4();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v17, v19, v21, v23, v25, v26, v27, v28;
    sub_1BD0DDF10(v11, v13, (v7 & 1), v29, v30, v31, v32, v33);
    v16, v34, v35, v36, v37, v38, v39, v40;
    v43 = v18;
    v44 = v20;
    v45 = v22 & 1;
    v46 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46778, &qword_1BE0D72F0);
    sub_1BD45869C();
    return sub_1BE051A54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD457848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD4578C0()
{
  result = qword_1EBD465F8;
  if (!qword_1EBD465F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD465F0, &unk_1BE1113E0);
    sub_1BD0DE4F4(&qword_1EBD46600, &qword_1EBD46608, &unk_1BE0D7130, MEMORY[0x1E697D680]);
    sub_1BD4579A8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD465F8);
  }

  return result;
}

uint64_t sub_1BD4579A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD4579F8()
{
  v1 = *(type metadata accessor for SEStorageCleanupAppletTypeDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  sub_1BD451E90(v2, v3);
}

uint64_t sub_1BD457A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD457AE0()
{
  v1 = *(type metadata accessor for SEStorageCleanupAppletTypeDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD4524CC(v2);
}

unint64_t sub_1BD457B6C()
{
  result = qword_1EBD46638;
  if (!qword_1EBD46638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46630, &qword_1BE0D7160);
    sub_1BD457C24();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46638);
  }

  return result;
}

unint64_t sub_1BD457C24()
{
  result = qword_1EBD46640;
  if (!qword_1EBD46640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46648, &unk_1BE0D7168);
    sub_1BD4579A8(&qword_1EBD46650, type metadata accessor for SEStorageAppletUsageSection, &unk_1BE0D7260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46640);
  }

  return result;
}

unint64_t sub_1BD457CF8()
{
  result = qword_1EBD46698;
  if (!qword_1EBD46698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46678, &qword_1BE0D7190);
    sub_1BD457DB0();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46698);
  }

  return result;
}

unint64_t sub_1BD457DB0()
{
  result = qword_1EBD466A0;
  if (!qword_1EBD466A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46670, &qword_1BE0D7188);
    sub_1BD0DE4F4(&qword_1EBD466A8, &qword_1EBD46668, &qword_1BE0D7180, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD466A0);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  *(v2 + 24), v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 28);
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

  v19 = v2 + *(v1 + 32);
  v20 = sub_1BE051AD4();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  *(v19 + *(v21 + 28)), v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

unint64_t sub_1BD457FF0()
{
  result = qword_1EBD466E8;
  if (!qword_1EBD466E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD466E0, &qword_1BE0D71F0);
    sub_1BD3BAA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD466E8);
  }

  return result;
}

void sub_1BD45807C(char a1)
{
  type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v3 = *(v1 + 16);

  sub_1BD453D28(a1, v3);
}

uint64_t objectdestroyTm_42()
{
  v1 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  *(v2 + 24), v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 28);
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

  v19 = v2 + *(v1 + 32);
  v20 = sub_1BE051AD4();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  *(v19 + *(v21 + 28)), v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1BD45827C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SEStorageCleanupAppletTypeDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_1BD453B6C(a1, v6, v7, a2);
}

void sub_1BD4583A4(uint64_t a1)
{
  type metadata accessor for SEStorageUsageGroup(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SEStorageCleanupController(319);
    if (v2 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v3 <= 0x3F)
      {
        sub_1BD2A1EF0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1BD458460()
{
  result = qword_1EBD46718;
  if (!qword_1EBD46718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46720, &qword_1BE0D7258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46548, &qword_1BE0D6F90);
    sub_1BD454008();
    swift_getOpaqueTypeConformance2();
    sub_1BD4579A8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46718);
  }

  return result;
}

unint64_t sub_1BD45857C()
{
  result = qword_1EBD46750;
  if (!qword_1EBD46750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46738, &qword_1BE0D72C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46758, &qword_1BE0D72E0);
    sub_1BD0DE4F4(&qword_1EBD46760, &qword_1EBD46758, &qword_1BE0D72E0, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46750);
  }

  return result;
}

unint64_t sub_1BD45869C()
{
  result = qword_1EBD46780;
  if (!qword_1EBD46780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46778, &qword_1BE0D72F0);
    sub_1BD0DE4F4(&qword_1EBD46788, &qword_1EBD46790, &qword_1BE0D72F8, &unk_1BE0FA020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46780);
  }

  return result;
}

uint64_t sub_1BD458754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1BD4587BC@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1BD455010(a1, a2, v8, a3);
}

uint64_t sub_1BD458844(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46830, &unk_1BE0D73C0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_1BD4588AC()
{
  result = qword_1EBD46808;
  if (!qword_1EBD46808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD467F8, &qword_1BE110AD0);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    sub_1BD4579A8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46808);
  }

  return result;
}

uint64_t objectdestroy_69Tm()
{
  v1 = (type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(type metadata accessor for SEStorageUsageGroup(0) + 20);
  v11 = sub_1BE04C164();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  *(v2 + v1[7]), v12, v13, v14, v15, v16, v17, v18;
  *(v2 + v1[9] + 8), v19, v20, v21, v22, v23, v24, v25;
  v26 = (v2 + v1[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v34 - 8) + 48))(v26, 1, v34))
    {
      *v26, v35, v36, v37, v38, v39, v40, v41;
      v26[1], v42, v43, v44, v45, v46, v47, v48;
      v49 = *(v34 + 32);
      v50 = sub_1BE051AD4();
      (*(*(v50 - 8) + 8))(v26 + v49, v50);
    }
  }

  else
  {
    *v26, v27, v28, v29, v30, v31, v32, v33;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD458BF8()
{
  v1 = *(type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SEStorageUsageGroup.PassEntry(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD4566B4((v0 + v2), v5);
}

uint64_t sub_1BD458CC4()
{
  v1 = *(type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD455FC4((v0 + v2), v3);
}

uint64_t get_enum_tag_for_layout_string_So19PKSecureElementPassCSgIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1BD458D7C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (v9 && (v10 = v9, v11 = [objc_opt_self() sharedService], v12 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E69B8D48]), sel_initWithWebService_paymentOffersController_, v11, a3), v11, v12))
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69B90E0]) initWithEnvironment:8 provisioningController:v12 groupsController:0];
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a4;
    v14[5] = a5;
    v14[6] = v10;
    sub_1BE04BC44();
    v15 = a2;
    v16 = a3;
    sub_1BD0D44B8(a4, a5);
    v75 = v10;
    v76 = v13;
    v17 = MEMORY[0x1BFB389E0]();
    v18 = type metadata accessor for PaymentSetupProductFlowSection();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
    *&v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v20 = &v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
    *v20 = 0xD000000000000012;
    *(v20 + 1) = 0x80000001BE118AA0;
    *&v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v17;
    *&v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = v15;
    v78.receiver = v19;
    v78.super_class = v18;
    v21 = v15;
    sub_1BE048964();
    v22 = objc_msgSendSuper2(&v78, sel_init);
    v23 = sub_1BD34FA40(v17, 0, 0);
    sub_1BE04BB64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BE0B6CA0;
    v25 = type metadata accessor for ProvisioningHeroFlowItem();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v27 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v28 = &v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v28[13] = 0;
    *(v28 + 7) = -5120;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v17;
    v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v29 = *&v26[v27];
    *&v26[v27] = 0;
    swift_retain_n();

    v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v77.receiver = v26;
    v77.super_class = v25;
    v30 = objc_msgSendSuper2(&v77, sel_init);
    v17, v31, v32, v33, v34, v35, v36, v37;
    *(v24 + 32) = v30;
    *(v24 + 40) = &off_1F3BA7D00;
    *(v24 + 48) = v22;
    *(v24 + 56) = &off_1F3BAAA80;
    v38 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    v39 = v22;
    v40 = sub_1BD3986F8(v24);
    *(*&v40[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
    swift_unknownObjectWeakAssign();
    v41 = &v40[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    v42 = *&v40[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    v43 = *&v40[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
    *v41 = PKEdgeInsetsMake;
    v41[1] = 0;
    sub_1BD0D4744(v42, v43, v44, v45, v46, v47, v48, v49);
    v50 = swift_allocObject();
    v50[2] = v17;
    v50[3] = sub_1BD45947C;
    v50[4] = v14;
    v50[5] = v23;
    v50[6] = v40;
    sub_1BE048964();
    v51 = v23;
    sub_1BE048964();
    v52 = v40;
    sub_1BD398318(sub_1BD359314, v50);
    v14, v53, v54, v55, v56, v57, v58, v59;

    v17, v60, v61, v62, v63, v64, v65, v66;
    v50, v67, v68, v69, v70, v71, v72, v73;
    return v75;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

id sub_1BD4592AC(uint64_t a1, int a2, int a3, void (*a4)(uint64_t), void *a5, id a6)
{
  if (a4)
  {
    sub_1BE048964();
    a4(a1);
    sub_1BD0D4744(a4, a5, v10, v11, v12, v13, v14, v15);
  }

  return [a6 dismissViewControllerAnimated:1 completion:{0, a5}];
}

uint64_t sub_1BD459334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD45948C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD459398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD45948C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD4593FC(uint64_t a1)
{
  sub_1BD45948C();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD459428()
{
  result = qword_1EBD46868;
  if (!qword_1EBD46868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46868);
  }

  return result;
}

unint64_t sub_1BD45948C()
{
  result = qword_1EBD46870;
  if (!qword_1EBD46870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46870);
  }

  return result;
}

uint64_t sub_1BD4594E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7C4();
  v36 = 0;
  sub_1BD459768(a1, &v31);
  v39 = v33;
  v40[0] = v34[0];
  *(v40 + 9) = *(v34 + 9);
  v37 = v31;
  v38 = v32;
  v41[2] = v33;
  v42[0] = v34[0];
  *(v42 + 9) = *(v34 + 9);
  v41[0] = v31;
  v41[1] = v32;
  sub_1BD459D64(&v37, v30);
  sub_1BD459DD4(v41);
  *&v35[23] = v38;
  *&v35[39] = v39;
  *&v35[55] = v40[0];
  *&v35[64] = *(v40 + 9);
  *&v35[7] = v37;
  v5 = v36;
  LOBYTE(a1) = sub_1BE050204();
  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = v15;
  *(a2 + 40) = 0;
  v30[0] = 0;
  sub_1BE051694();
  v16 = *v35;
  *(a2 + 97) = *&v35[16];
  v17 = *&v35[48];
  *(a2 + 113) = *&v35[32];
  *(a2 + 129) = v17;
  *(a2 + 145) = *&v35[64];
  v18 = *(&v31 + 1);
  *(a2 + 48) = v31;
  *(a2 + 56) = v18;
  *(a2 + 64) = v4;
  *(a2 + 72) = 0x4000000000000000;
  *(a2 + 80) = v5;
  *(a2 + 81) = v16;
  *(a2 + 168) = a1;
  *(a2 + 176) = v7;
  *(a2 + 184) = v9;
  *(a2 + 192) = v11;
  *(a2 + 200) = v13;
  *(a2 + 208) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46880, &qword_1BE0D76B0);
  v20 = *(v19 + 60);
  LOBYTE(a1) = sub_1BE051C54();
  v21 = sub_1BE04C894();
  v22 = MEMORY[0x1E69BCA08];
  if ((a1 & 1) == 0)
  {
    v22 = MEMORY[0x1E69BCA00];
  }

  (*(*(v21 - 8) + 104))(a2 + v20, *v22, v21);
  v23 = (a2 + *(v19 + 64));
  sub_1BE04C7E4();
  v25 = v24;
  v26 = *(sub_1BE04EDE4() + 20);
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_1BE04F684();
  result = (*(*(v28 - 8) + 104))(&v23[v26], v27, v28);
  *v23 = v25;
  *(v23 + 1) = v25;
  return result;
}

void sub_1BD459768(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v3 = [a1 localizedTitle];
  if (v3)
  {
    v4 = v3;
    sub_1BE052434();

    sub_1BD0DDEBC();
    v5 = sub_1BE0506C4();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = sub_1BE0502B4();
    v13 = sub_1BE0505F4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v12, v14, v16, v18, v20, v21, v22, v23;
    sub_1BD0DDF10(v5, v7, (v9 & 1), v24, v25, v26, v27, v28);
    v11, v29, v30, v31, v32, v33, v34, v35;
    v36 = sub_1BE051234();
    v37 = v2;
    v38 = sub_1BE050564();
    v40 = v39;
    LOBYTE(v12) = v41;
    v43 = v42;
    v36, v39, v41, v42, v44, v45, v46, v47;
    sub_1BD0DDF10(v13, v15, (v17 & 1), v48, v49, v50, v51, v52);
    v19, v53, v54, v55, v56, v57, v58, v59;
    v166 = v40;
    v167 = v38;
    v60 = v38;
    v2 = v37;
    v163 = v12 & 1;
    sub_1BD0D7F18(v60, v40, v12 & 1);
    v165 = v43;
    sub_1BE048C84();
  }

  else
  {
    v166 = 0;
    v167 = 0;
    v163 = 0;
    v165 = 0;
  }

  v61 = [v2 label];
  sub_1BE052434();

  sub_1BD0DDEBC();
  v62 = sub_1BE0506C4();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  if (PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0, *MEMORY[0x1E69DB980]))
  {
    v69 = sub_1BE050484();
    v70 = sub_1BE0505F4();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v69, v71, v73, v75, v77, v78, v79, v80;
    sub_1BD0DDF10(v62, v64, (v66 & 1), v81, v82, v83, v84, v85);
    v68, v86, v87, v88, v89, v90, v91, v92;
    sub_1BE0503A4();
    v93 = sub_1BE050544();
    v95 = v94;
    v97 = v96;
    v99 = v98;
    sub_1BD0DDF10(v70, v72, (v74 & 1), v98, v100, v101, v102, v103);
    v76, v104, v105, v106, v107, v108, v109, v110;
    v111 = sub_1BE051224();
    v112 = sub_1BE050564();
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v111, v113, v115, v117, v119, v120, v121, v122;
    sub_1BD0DDF10(v93, v95, (v97 & 1), v123, v124, v125, v126, v127);
    v99, v128, v129, v130, v131, v132, v133, v134;
    KeyPath = swift_getKeyPath();
    sub_1BD1969AC(v167, v166, v164, v165);
    sub_1BD0D7F18(v112, v114, v116 & 1);
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BD1969F0(v167, v166, v164, v165, v136, v137, v138, v139);
    *a2 = v167;
    *(a2 + 8) = v166;
    *(a2 + 16) = v164;
    *(a2 + 24) = v165;
    *(a2 + 32) = v112;
    *(a2 + 40) = v114;
    *(a2 + 48) = v116 & 1;
    *(a2 + 56) = v118;
    *(a2 + 64) = KeyPath;
    *(a2 + 72) = 1;
    sub_1BD0DDF10(v112, v114, (v116 & 1), v140, v141, v142, v143, v144);
    KeyPath, v145, v146, v147, v148, v149, v150, v151;
    v118, v152, v153, v154, v155, v156, v157, v158;
    sub_1BD1969F0(v167, v166, v164, v165, v159, v160, v161, v162);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD459B24(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD459BA4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD459C20(void *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v52);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v25 = v52;
  if (!(v52 >> 62))
  {
    v26 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_10:
    v25, v18, v19, v20, v21, v22, v23, v24;
    a1, v45, v46, v47, v48, v49, v50, v51;
    return 0;
  }

  v26 = sub_1BE053704();
  if (!v26)
  {
    goto LABEL_10;
  }

LABEL_3:
  v27 = __OFSUB__(v26, 1);
  result = v26 - 1;
  if (v27)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v29 = MEMORY[0x1BFB40900](result, v25);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v25 + 8 * result + 32);
LABEL_8:
    v37 = v29;
    a1, v30, v31, v32, v33, v34, v35, v36;
    v25, v38, v39, v40, v41, v42, v43, v44;
    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD459D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46878, &qword_1BE0D7618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD459DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46878, &qword_1BE0D7618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD459E3C()
{
  result = qword_1EBD46888;
  if (!qword_1EBD46888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46880, &qword_1BE0D76B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46888);
  }

  return result;
}

UIColor __swiftcall UIColor.interpolate(with:fraction:)(UIColor with, Swift::Double fraction)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = fmin(fraction, 1.0);
  if (fraction < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v13 = 0.0;
  v14[0] = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  [v2 getRed:v14 green:&v13 blue:&v12 alpha:&v11];
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [(objc_class *)with.super.isa getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
  return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v14[0] + v5 * (v10 - v14[0]) green:v13 + v5 * (v9 - v13) blue:v12 + v5 * (v8 - v12) alpha:v11 + v5 * (v7 - v11)];
}

uint64_t sub_1BD45A0D0()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_verificationController];
  v7 = [v6 pass];
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_context];
  v56 = v2;
  v10 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_methodGroup];
  v11 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_method];
  KeyPath = swift_getKeyPath();
  v55 = v5;
  v13 = KeyPath;
  v14 = sub_1BD1875E0(v0, KeyPath);
  v13, v15, v16, v17, v18, v19, v20, v21;
  v54 = type metadata accessor for ProvisioningVerificationURLViewController();
  v22 = objc_allocWithZone(v54);
  *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_delegate + 8] = 0;
  v23 = swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_provisioningContext] = v9;
  *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_pass] = v8;
  *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_methodGroup] = v10;
  *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_method] = v11;
  v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_showChangeMethodButton] = (v14 & 1) == 0;
  *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_verificationController] = v6;
  *(v23 + 8) = &off_1F3BA7808;
  swift_unknownObjectWeakAssign();
  sub_1BE052434();
  v53 = v1;
  v25 = v24;
  sub_1BE048964();
  v26 = v10;
  v27 = v11;
  v28 = v6;
  v29 = v8;
  v30 = sub_1BE04BB74();
  v25, v31, v32, v33, v34, v35, v36, v37;
  *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_reporter] = v30;
  v38 = type metadata accessor for ProvisioningVerificationURLPerformController();
  v39 = objc_allocWithZone(v38);
  v40 = OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_authSession;
  v41 = objc_allocWithZone(PKWebAuthenticationSession);
  v42 = v29;
  v43 = v41;
  v44 = v42;
  *&v39[v40] = [v43 init];
  *&v39[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_window] = 0;
  *&v39[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_provisioningContext] = v9;
  *&v39[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_pass] = v44;
  *&v39[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_methodGroup] = v26;
  *&v39[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_method] = v27;
  *&v39[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_verificationController] = v28;
  v58.receiver = v39;
  v58.super_class = v38;
  sub_1BE048964();
  v45 = v26;
  v46 = v27;
  v47 = v28;
  *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_performController] = objc_msgSendSuper2(&v58, sel_init);
  v48 = v55;
  sub_1BE04BC34();
  v49 = sub_1BE04B9A4();
  (*(v56 + 8))(v48, v53);
  v57.receiver = v22;
  v57.super_class = v54;
  result = objc_msgSendSuper2(&v57, sel_initWithContext_, v49);
  if (result)
  {
    v51 = result;
    v52 = result;
    [v52 setExplanationViewControllerDelegate_];

    return v51;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD45A460()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD45A49C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD45A4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468E8, &unk_1BE0D78C8);
  sub_1BE0516A4();
  if (v5)
  {

    v6 = *(a1 + 24);
    sub_1BE0516A4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468D0, &qword_1BE0D7890);
  sub_1BD45B0D8();
  result = sub_1BE04F9A4();
  *a2 = v6;
  *(a2 + 8) = BYTE8(v6);
  return result;
}

uint64_t sub_1BD45A5D4(uint64_t a1)
{
  v1[2] = sub_1BE0528A4();
  v1[3] = sub_1BE052894();
  v3 = *(a1 + 24);
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v7 = swift_task_alloc();
  v1[4] = v7;
  *v7 = v1;
  v7[1] = sub_1BD16DB04;

  return sub_1BD45AC80(v3, v4, v5);
}

uint64_t sub_1BD45A698@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  *v17 = *v2;
  *&v17[16] = v4;
  v18 = v2[2];
  v5 = sub_1BE04F7B4();
  sub_1BD45A4EC(v17, &v19);
  v7 = *(&v18 + 1);
  v6 = v19;
  v8 = BYTE8(v19);
  v9 = *v17;
  v19 = *&v17[8];
  v20 = v18;
  v21 = *&v17[24];
  v10 = swift_allocObject();
  v11 = *&v17[16];
  v10[1] = *v17;
  v10[2] = v11;
  v10[3] = v18;
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468D8, &qword_1BE0D78A8) + 36));
  sub_1BE04E7B4();
  v13 = v9;
  sub_1BD206260(&v19, v16);
  sub_1BD0DE19C(&v21, v16, &qword_1EBD468D0, &qword_1BE0D7890);
  sub_1BD0DE19C(&v20, v16, &qword_1EBD468E0, &qword_1BE0D78B0);
  v14 = v7;
  result = sub_1BE0528B4();
  *v12 = &unk_1BE0D78A0;
  v12[1] = v10;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  return result;
}

id sub_1BD45A7EC(int a1, id a2)
{
  v3 = [a2 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD46920, &qword_1BE0D79A8);
  sub_1BE050154();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v13 action:sel_dismiss];
  v13, v5, v6, v7, v8, v9, v10, v11;
  [v3 setRightBarButtonItem_];

  return [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
}

uint64_t sub_1BD45A8E4()
{

  return swift_deallocClassInstance();
}

id sub_1BD45A974@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  type metadata accessor for _AccountTermsAndConditionsViewController.Coordinator();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *a1 = v3;

  return v5;
}

uint64_t sub_1BD45A9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD45B2B4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD45AA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD45B2B4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD45AA9C(uint64_t a1)
{
  sub_1BD45B2B4();
  sub_1BE0500A4();
  __break(1u);
}

void sub_1BD45AAC4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468D0, &qword_1BE0D7890);
  sub_1BE051694();
  v8 = objc_opt_self();
  v9 = a1;
  sub_1BE048C84();
  v10 = [v8 sharedService];
  if (v10)
  {
    v11 = v10;
    v12 = objc_allocWithZone(PKAccountTermsAndConditionsController);
    v13 = sub_1BE052404();
    a3, v14, v15, v16, v17, v18, v19, v20;
    v21 = [v12 initWithAccount:v9 webService:v11 context:8 termsIdentifier:v13];

    *a4 = v9;
    a4[1] = a2;
    a4[2] = a3;
    a4[3] = v22;
    a4[4] = v23;
    a4[5] = v21;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD45ABEC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD45A5D4(v0 + 16);
}

uint64_t sub_1BD45AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  sub_1BE0528A4();
  v3[22] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD45AD1C, v5, v4);
}

uint64_t sub_1BD45AD1C()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD45AE38;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA10, &qword_1BE0C42F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD16F63C;
  v0[13] = &block_descriptor_96;
  v0[14] = v2;
  [v1 termsViewControllerWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD45AE38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1BD45B000;
  }

  else
  {
    v5 = sub_1BD45AF68;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD45AF68(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 152);
  v9 = *(v8 + 160);
  *(v8 + 176), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 80) = v10;
  *(v8 + 88) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468E8, &unk_1BE0D78C8);
  sub_1BE0516B4();
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1BD45B000(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 200);
  v11 = *(v8 + 152);
  v10 = *(v8 + 160);
  *(v8 + 176), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();
  *(v8 + 80) = v11;
  *(v8 + 88) = v10;
  *(v8 + 144) = 0;
  sub_1BE048964();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468E8, &unk_1BE0D78C8);
  sub_1BE0516B4();

  v10, v13, v14, v15, v16, v17, v18, v19;
  v20 = *(v8 + 8);

  return v20();
}

unint64_t sub_1BD45B0D8()
{
  result = qword_1EBD468F0;
  if (!qword_1EBD468F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD468D0, &qword_1BE0D7890);
    sub_1BD45B15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD468F0);
  }

  return result;
}

unint64_t sub_1BD45B15C()
{
  result = qword_1EBD468F8;
  if (!qword_1EBD468F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD468F8);
  }

  return result;
}

unint64_t sub_1BD45B1C0()
{
  result = qword_1EBD46900;
  if (!qword_1EBD46900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD468D8, &qword_1BE0D78A8);
    sub_1BD45B24C();
    sub_1BD306B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46900);
  }

  return result;
}

unint64_t sub_1BD45B24C()
{
  result = qword_1EBD46908;
  if (!qword_1EBD46908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46910, &qword_1BE0D78D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46908);
  }

  return result;
}

unint64_t sub_1BD45B2B4()
{
  result = qword_1EBD46918;
  if (!qword_1EBD46918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46918);
  }

  return result;
}

void sub_1BD45B310(void *a1)
{
  sub_1BE052804();
  sub_1BE051964();
  if (v1 <= 0x3F)
  {
    sub_1BE0534B4();
    sub_1BE051964();
    if (v2 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD469A8, &qword_1EBD45E80, 0x1E696ABC0);
      if (v3 <= 0x3F)
      {
        sub_1BD45C2C0(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1BD10315C(319, &qword_1EBD469B0, &qword_1EBD3E6C8, 0x1E69B8730);
          if (v5 <= 0x3F)
          {
            sub_1BE0516D4();
            if (v6 <= 0x3F)
            {
              sub_1BE0534B4();
              if (v7 <= 0x3F)
              {
                sub_1BD45C270();
                if (v8 <= 0x3F)
                {
                  sub_1BD45C2C0(319, &qword_1EBD40448, &qword_1EBD40450, &qword_1BE0D7250, MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1BE0516D4();
                    if (v10 <= 0x3F)
                    {
                      swift_getAssociatedTypeWitness();
                      sub_1BE0534B4();
                      swift_getAssociatedConformanceWitness();
                      swift_getWitnessTable();
                      sub_1BE04E294();
                      if (v11 <= 0x3F)
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

uint64_t sub_1BD45B5D8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v52 = *(v4 - 8);
  v54 = *(v52 + 84);
  if (v54)
  {
    v5 = v54 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = v5;
  }

  v53 = *(v3 - 8);
  v7 = *(v53 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(sub_1BE051AD4() - 8);
  v10 = *(v9 + 80);
  v50 = *(v9 + 64);
  v48 = v8;
  if (v5 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v6;
  }

  if (v8 > v11)
  {
    v11 = v8;
  }

  if (v5 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v5;
  }

  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = v4;
  v15 = v10;
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 <= v13)
  {
    v19 = v13;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  if (v54)
  {
    v20 = *(v52 + 64);
  }

  else
  {
    v20 = *(v52 + 64) + 1;
  }

  if (v7)
  {
    v21 = *(v53 + 64);
  }

  else
  {
    v21 = *(v53 + 64) + 1;
  }

  v22 = 8;
  if (((v15 + 16) & ~v15) + v50 > 8)
  {
    v22 = ((v15 + 16) & ~v15) + v50;
  }

  v23 = *(v52 + 80);
  v24 = *(v53 + 80);
  v25 = *(v16 + 80);
  v26 = *(v16 + 64);
  if (v18)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = v23 | 7;
  v29 = v20 + 7;
  v30 = v29 + ((v23 + 16) & ~v23);
  v31 = v15 | 7;
  v32 = v21 + 7;
  v33 = v29 & 0xFFFFFFFFFFFFFFF8;
  v34 = v25 | 7;
  if (a2 <= v19)
  {
    goto LABEL_61;
  }

  v35 = v27 - ((-9 - v25 - ((v27 + 7) & 0xFFFFFFFFFFFFFFF8)) | v25) - ((((~v22 - v28 + ((((((-17 - v24 - ((((((((((v30 + ((v23 + 24) & ~v28)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v24) - v32) | 7) - v31 - 32) | v31)) | v28) - (v33 + v34) - 8) | v34) - 2;
  v36 = 8 * v35;
  if (v35 > 3)
  {
    goto LABEL_41;
  }

  v38 = ((a2 - v19 + ~(-1 << v36)) >> v36) + 1;
  if (HIWORD(v38))
  {
    v37 = *(a1 + v35);
    if (v37)
    {
      goto LABEL_48;
    }

LABEL_61:
    if (v19 == 0x7FFFFFFF)
    {
      v42 = *(a1 + 1);
      if (v42 >= 0xFFFFFFFF)
      {
        LODWORD(v42) = -1;
      }

      return (v42 + 1);
    }

    v44 = (a1 + v28 + 24) & ~v28;
    if (v19 == v6)
    {
      v45 = (*(v52 + 48))((v23 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v23, v54, v14, v30);
      goto LABEL_67;
    }

    v46 = (v24 + ((((((((((v30 + v44) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24;
    if (v48 != v19)
    {
      v47 = (v22 + v28 + ((v15 + ((v32 + v46) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v31) + 1) & ~v28;
      if (v12 == v19)
      {
        v45 = (*(v52 + 48))(v47, v54, v14);
      }

      else
      {
        v45 = (*(v17 + 48))((v33 + v25 + v47 + 8) & ~v34);
      }

      goto LABEL_67;
    }

    if (v7 >= 2)
    {
      v45 = (*(v53 + 48))(v46, v7, v3);
LABEL_67:
      if (v45 >= 2)
      {
        return v45 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v38 > 0xFF)
  {
    v37 = *(a1 + v35);
    if (*(a1 + v35))
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

  if (v38 < 2)
  {
    goto LABEL_61;
  }

LABEL_41:
  v37 = *(a1 + v35);
  if (!*(a1 + v35))
  {
    goto LABEL_61;
  }

LABEL_48:
  v39 = (v37 - 1) << v36;
  if (v35 > 3)
  {
    v39 = 0;
  }

  if (v35)
  {
    if (v35 <= 3)
    {
      v40 = v35;
    }

    else
    {
      v40 = 4;
    }

    if (v40 > 2)
    {
      if (v40 == 3)
      {
        v41 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v41 = *a1;
      }
    }

    else if (v40 == 1)
    {
      v41 = *a1;
    }

    else
    {
      v41 = *a1;
    }
  }

  else
  {
    v41 = 0;
  }

  return v19 + (v41 | v39) + 1;
}

void sub_1BD45BB2C(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = a4[2];
  v63 = *(v4 - 8);
  v62 = *(v63 + 84);
  if (v62)
  {
    v5 = v62 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = v5;
  }

  v55 = a4[3];
  v7 = *(v55 - 8);
  v68 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(sub_1BE051AD4() - 8);
  v61 = *(v10 + 80);
  v64 = *(v10 + 64);
  v59 = v5;
  v60 = v6;
  if (v5 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v6;
  }

  v58 = v9;
  if (v9 > v11)
  {
    v11 = v9;
  }

  if (v5 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v5;
  }

  v56 = v12;
  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v57 = v4;
  v14 = 0;
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v13 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v13;
  }

  if (v62)
  {
    v21 = *(v63 + 64);
  }

  else
  {
    v21 = *(v63 + 64) + 1;
  }

  v22 = *(v63 + 80);
  v23 = *(v7 + 80);
  v24 = *(v15 + 80);
  v25 = *(v15 + 64);
  v26 = ((v61 + 16) & ~v61) + v64;
  if (v8)
  {
    v27 = *(v7 + 64);
  }

  else
  {
    v27 = *(v7 + 64) + 1;
  }

  if (v26 <= 8)
  {
    v26 = 8;
  }

  v28 = v22 | 7;
  v29 = v21 + 7 + ((v22 + 16) & ~v22);
  v30 = v61 | 7;
  v31 = v27 + 7;
  v32 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v24 | 7;
  if (!v17)
  {
    ++v25;
  }

  v34 = v25 + 7;
  v35 = v25 - ((-9 - v24 - ((v25 + 7) & 0xFFFFFFFFFFFFFFF8)) | v24) - ((((~v26 - v28 + ((((((-17 - v23 - ((((((((((v29 + ((v22 + 24) & ~(v22 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v23) - v31) | 7) - v30 - 32) | v30)) | v28) - (v32 + v33) - 8) | v33) - 2;
  if (a3 > v20)
  {
    if (v35 <= 3)
    {
      v36 = ((a3 - v20 + ~(-1 << (8 * v35))) >> (8 * v35)) + 1;
      if (HIWORD(v36))
      {
        v14 = 4;
      }

      else
      {
        if (v36 < 0x100)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (v36 >= 2)
        {
          v14 = v37;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  if (v20 < a2)
  {
    v38 = ~v20 + a2;
    if (v35 >= 4)
    {
      bzero(a1, v35);
      *a1 = v38;
      v39 = 1;
      if (v14 > 1)
      {
        goto LABEL_54;
      }

      goto LABEL_95;
    }

    v39 = (v38 >> (8 * v35)) + 1;
    if (v25 - ((-9 - v24 - ((v25 + 7) & 0xFFFFFFF8)) | v24) - ((((~v26 - v28 + ((((((-17 - v23 - ((((((((((v29 + ((v22 + 24) & ~(v22 | 7))) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) | v23) - v31) | 7) - v30 - 32) | v30)) | v28) - (v32 + v33) - 8) | v33) != 2)
    {
      v40 = v38 & ~(-1 << (8 * v35));
      bzero(a1, v35);
      if (v35 != 3)
      {
        if (v35 == 2)
        {
          *a1 = v40;
          if (v14 > 1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          *a1 = v38;
          if (v14 > 1)
          {
LABEL_54:
            if (v14 == 2)
            {
              *(a1 + v35) = v39;
            }

            else
            {
              *(a1 + v35) = v39;
            }

            return;
          }
        }

LABEL_95:
        if (v14)
        {
          *(a1 + v35) = v39;
        }

        return;
      }

      *a1 = v40;
      *(a1 + 2) = BYTE2(v40);
    }

    if (v14 > 1)
    {
      goto LABEL_54;
    }

    goto LABEL_95;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_68;
    }

    *(a1 + v35) = 0;
  }

  else if (v14)
  {
    *(a1 + v35) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_68;
  }

  if (!a2)
  {
    return;
  }

LABEL_68:
  if (v20 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v41 = (a1 + v28 + 24) & ~v28;
  if (v20 == v60)
  {
    v42 = (v22 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v22;
  }

  else
  {
    v47 = (v23 + ((((((((((v29 + v41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23;
    if (v58 == v20)
    {
      if (v8 < 2)
      {
        return;
      }

      v48 = *(v68 + 56);
      v49 = a2 + 1;
      v50 = v8;
      v51 = v55;
      goto LABEL_101;
    }

    v42 = (v26 + v28 + ((v61 + ((v31 + v47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v30) + 1) & ~v28;
    if (v56 != v20)
    {
      v42 = (v32 + v24 + v42 + 8) & ~v33;
      if (v19 >= a2)
      {
        if (v18 >= a2)
        {
          v54 = *(v16 + 56);

          v54(v42, a2 + 1);
        }

        else
        {
          if (v25 <= 3)
          {
            v53 = ~(-1 << (8 * v25));
          }

          else
          {
            v53 = -1;
          }

          if (v25)
          {
            v44 = v53 & (~v18 + a2);
            if (v25 <= 3)
            {
              v45 = v25;
            }

            else
            {
              v45 = 4;
            }

            v46 = v42;
            v21 = v25;
            goto LABEL_83;
          }
        }
      }

      else
      {
        v21 = ((v24 + (v34 & 0xFFFFFFF8) + 8) & ~v24) + v25;
        v52 = -1 << (8 * (((v24 + (v34 & 0xF8) + 8) & ~v24) + v25));
        if (v21 <= 3)
        {
          v43 = ~v52;
        }

        else
        {
          v43 = -1;
        }

        if (v21)
        {
          goto LABEL_79;
        }
      }

      return;
    }
  }

  if (v59 >= a2)
  {
    v48 = *(v63 + 56);
    v49 = a2 + 1;
    v47 = v42;
    v50 = v62;
    v51 = v57;
LABEL_101:

    v48(v47, v49, v50, v51);
    return;
  }

  if (v21 <= 3)
  {
    v43 = ~(-1 << (8 * v21));
  }

  else
  {
    v43 = -1;
  }

  if (v21)
  {
    v19 = v59;
LABEL_79:
    v44 = v43 & (~v19 + a2);
    if (v21 <= 3)
    {
      v45 = v21;
    }

    else
    {
      v45 = 4;
    }

    v46 = v42;
LABEL_83:
    bzero(v46, v21);
    if (v45 > 2)
    {
      if (v45 == 3)
      {
        *v42 = v44;
        *(v42 + 2) = BYTE2(v44);
      }

      else
      {
        *v42 = v44;
      }
    }

    else if (v45 == 1)
    {
      *v42 = v44;
    }

    else
    {
      *v42 = v44;
    }
  }
}

void sub_1BD45C270()
{
  if (!qword_1EBD469B8)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD469B8);
    }
  }
}

void sub_1BD45C2C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void *sub_1BD45C368(uint64_t (*a1)(uint64_t *), uint64_t a2, double a3)
{
  v36 = a1;
  v37 = a2;
  v40 = sub_1BE04B304();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46820, &qword_1BE0D73B8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v35 - v7;
  v9 = sub_1BE04B344();
  v10 = MEMORY[0x1E6969B50];
  sub_1BD463284(&qword_1EBD469E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1BE0526A4();
  sub_1BD463284(&unk_1EBD4D4D0, v10, MEMORY[0x1E6969B88]);
  v38 = (v4 + 8);
  v11 = MEMORY[0x1E69E7CC0];
  v35[1] = v9;
  while (1)
  {
    v12 = v39;
    sub_1BE052B04();
    sub_1BD463284(&qword_1EBD46828, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v13 = v40;
    v14 = sub_1BE052334();
    (*v38)(v12, v13);
    if (v14)
    {
      sub_1BD0DE53C(v8, &qword_1EBD46820, &qword_1BE0D73B8);
      return v11;
    }

    v15 = sub_1BE052B34();
    v17 = *v16;
    v15(v41, 0);
    sub_1BE052B14();
    v42 = v17;
    v18 = v36(&v42);
    if (v3)
    {
      break;
    }

    if (v18)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD532148(0, v11[2] + 1, 1, v20, v21, v22, v23, v24);
        v11 = v43;
      }

      v26 = v11[2];
      v25 = v11[3];
      if (v26 >= v25 >> 1)
      {
        sub_1BD532148((v25 > 1), v26 + 1, 1, v20, v21, v22, v23, v24);
        v11 = v43;
      }

      v11[2] = v26 + 1;
      v11[v26 + 4] = v17;
    }
  }

  sub_1BD0DE53C(v8, &qword_1EBD46820, &qword_1BE0D73B8);
  v11, v27, v28, v29, v30, v31, v32, v33;
  return v11;
}

uint64_t sub_1BD45C6C0(uint64_t a1)
{
  v4[1] = *v1;
  v5 = *(v1 + 8);
  sub_1BE052804();
  v2 = sub_1BE051964();
  MEMORY[0x1BFB3E970](v4, v2);
  return v4[0];
}

uint64_t sub_1BD45C71C(uint64_t a1)
{
  sub_1BE0534B4();
  v1 = sub_1BE051964();
  return MEMORY[0x1BFB3E970](v1);
}

uint64_t sub_1BD45C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C0, &qword_1BE0D7A28);
  v129 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v109[0] = v109 - v4;
  *&v121 = a1 + 40;
  v143 = *(a1 + 24);
  v124 = sub_1BE0534B4();
  v126 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v125 = v109 - v5;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C8, &qword_1BE0D7A30);
  MEMORY[0x1EEE9AC00](v127);
  v128 = v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v132 = v109 - v8;
  v9 = *(a1 + 16);
  v10 = a1;
  v144 = a1;
  v141 = sub_1BE0534B4();
  v145 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v123 = v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v120 = v109 - v13;
  swift_getTupleTypeMetadata2();
  v14 = sub_1BE052804();
  v116 = *(v10 + 32);
  v15 = v116;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ContactFormItemRow(255, v9, v15, v17);
  type metadata accessor for ListRowGestureActionsModifier(255);
  v18 = sub_1BE04EBD4();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v161 = v14;
  v162 = AssociatedTypeWitness;
  v163 = v18;
  v164 = WitnessTable;
  v165 = AssociatedConformanceWitness;
  sub_1BE0519E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D4A0, &qword_1BE0E8860);
  sub_1BE04EBD4();
  v130 = v3;
  sub_1BE04F9B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  v21 = MEMORY[0x1E6981148];
  v22 = sub_1BE051A64();
  v135 = v22;
  v119 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v138 = v109 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45200, &qword_1BE0BB900);
  v134 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_1BD12E194();
  v168 = MEMORY[0x1E6981138];
  v169 = v25;
  v27 = MEMORY[0x1E6981138];
  v170 = v26;
  v28 = swift_getWitnessTable();
  v136 = v28;
  v137 = sub_1BD35CEE0();
  v161 = v22;
  v162 = v24;
  v163 = v21;
  v164 = v9;
  v29 = v9;
  v165 = v28;
  v166 = v137;
  v167 = v27;
  v117 = MEMORY[0x1E697D4C0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v118 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v122 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v133 = v109 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v139 = v109 - v34;
  v35 = v144;
  v36 = v140;
  v37 = (v140 + *(v144 + 72));
  v38 = v37[1];
  v161 = *v37;
  v162 = v38;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v161 = sub_1BE0506C4();
  v162 = v39;
  LOBYTE(v163) = v40 & 1;
  v164 = v41;
  v42 = (v36 + *(v35 + 88));
  v43 = v42[1];
  v44 = v42[2];
  v45 = v42[3];
  v157 = *v42;
  v158 = v43;
  v159 = v44;
  v160 = v45;
  *&v46 = v29;
  *(&v46 + 1) = v143;
  v114 = v46;
  *&v47 = v116;
  *(&v47 + 1) = *v121;
  v121 = v47;
  v152 = v46;
  v153 = v47;
  v154 = v36;
  sub_1BD1969AC(v157, v43, v44, v45);
  sub_1BE051A34();
  v161 = sub_1BD4607E8(v35);
  v162 = v48;
  v49 = sub_1BE0506C4();
  v115 = v50;
  v116 = v49;
  v112 = v51;
  v113 = v52;
  v53 = v141;
  sub_1BE0516D4();
  v54 = v120;
  sub_1BE0516A4();
  v55 = *(*(v29 - 8) + 48);
  v110 = v29;
  LOBYTE(v25) = v55(v54, 1, v29) != 1;
  v56 = *(v145 + 8);
  v145 += 8;
  v111 = v56;
  v56(v54, v53);
  LOBYTE(v157) = v25;
  sub_1BE051944();
  v58 = v161;
  v57 = v162;
  LODWORD(v120) = v163;
  v59 = v123;
  sub_1BE0516A4();
  v109[1] = v109;
  v149 = v114;
  v150 = v121;
  v151 = v36;
  v146 = v114;
  v147 = v121;
  v148 = v36;
  LOBYTE(v29) = v112;
  v61 = v115;
  v60 = v116;
  v62 = v113;
  v63 = v138;
  sub_1BE050F04();
  v64 = v140;
  v57, v65, v66, v67, v68, v69, v70, v71;
  v58, v72, v73, v74, v75, v76, v77, v78;
  sub_1BD0DDF10(v60, v61, (v29 & 1), v79, v80, v81, v82, v83);
  v62, v84, v85, v86, v87, v88, v89, v90;
  v111(v59, v141);
  v91 = v135;
  (*(v119 + 8))(v63, v135);
  v161 = v91;
  v162 = v134;
  v163 = MEMORY[0x1E6981148];
  v164 = v110;
  v165 = v136;
  v166 = v137;
  v167 = MEMORY[0x1E6981138];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = v133;
  v94 = OpaqueTypeMetadata2;
  v145 = OpaqueTypeConformance2;
  sub_1BD147308();
  v95 = v118;
  v96 = *(v118 + 8);
  v96(v93, v94);
  v97 = v125;
  v98 = v126;
  v99 = v124;
  (*(v126 + 16))(v125, v64 + *(v144 + 84), v124);
  LODWORD(v62) = (*(*(v143 - 8) + 48))(v97, 1);
  (*(v98 + 8))(v97, v99);
  v100 = 1;
  if (v62 != 1)
  {
    v101 = v109[0];
    sub_1BD4605C4(v144);
    sub_1BD46232C(v101, v132);
    v100 = 0;
  }

  v102 = v132;
  (*(v129 + 56))(v132, v100, 1, v130);
  v103 = *(v95 + 16);
  v104 = v122;
  v105 = v139;
  v106 = OpaqueTypeMetadata2;
  v103(v122, v139, OpaqueTypeMetadata2);
  v161 = v104;
  v107 = v128;
  sub_1BD0DE19C(v102, v128, &qword_1EBD469C8, &qword_1BE0D7A30);
  v162 = v107;
  v157 = v106;
  v158 = v127;
  v155 = v145;
  v156 = sub_1BD462198();
  sub_1BD13A4C4(&v161, 2uLL, &v157);
  sub_1BD0DE53C(v102, &qword_1EBD469C8, &qword_1BE0D7A30);
  v96(v105, v106);
  sub_1BD0DE53C(v107, &qword_1EBD469C8, &qword_1BE0D7A30);
  return (v96)(v104, v106);
}

uint64_t sub_1BD45D2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v168 = a5;
  v163 = a1;
  v160 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C0, &qword_1BE0D7A28);
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v133 - v11;
  v12 = sub_1BE0534B4();
  v153 = *(v12 - 8);
  v154 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v134 = &v133 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v133 - v17;
  v156 = v10;
  v18 = sub_1BE04F9B4();
  v158 = *(v18 - 8);
  v159 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v167 = &v133 - v21;
  v185 = a2;
  v186 = a3;
  v187 = a4;
  v188 = a5;
  v22 = type metadata accessor for ContactEditingSection(0, &v185);
  v144 = *(v22 - 8);
  v147 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v141 = &v133 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = sub_1BE052804();
  v162 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v145 = type metadata accessor for ContactFormItemRow(255, a2, a4, v26);
  type metadata accessor for ListRowGestureActionsModifier(255);
  v27 = sub_1BE04EBD4();
  v146 = v27;
  v151 = v24;
  WitnessTable = swift_getWitnessTable();
  v150 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v185 = v24;
  v186 = AssociatedTypeWitness;
  v187 = v27;
  v188 = WitnessTable;
  v189 = AssociatedConformanceWitness;
  v148 = sub_1BE0519E4();
  v152 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v142 = &v133 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D4A0, &qword_1BE0E8860);
  v166 = sub_1BE04EBD4();
  v164 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v143 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v165 = &v133 - v32;
  v33 = v22;
  v34 = v163;
  v35 = sub_1BD45C6C0(v22);
  v36 = *(v22 + 80);
  v161 = v22;
  v37 = (v34 + v36);
  v38 = v34;
  v40 = *v37;
  v39 = v37[1];
  v185 = v40;
  v186 = v39;
  v41 = sub_1BE052804();
  sub_1BE0516D4();
  sub_1BE0516A4();
  v42 = v184[0];
  v43 = sub_1BE052794();
  v35, v44, v45, v46, v47, v48, v49, v50;
  v42, v51, v52, v53, v54, v55, v56, v57;
  v184[0] = v43;
  v58 = swift_getWitnessTable();
  MEMORY[0x1BFB3F750](&v185, v41, v58);
  v43, v59, v60, v61, v62, v63, v64, v65;
  v184[0] = v185;
  sub_1BE0539B4();
  swift_getWitnessTable();
  v66 = sub_1BE052814();
  v67 = v33;
  v68 = v38;
  v69 = sub_1BD45C6C0(v67);
  v184[0] = v69;
  v137 = a2;
  v173 = a2;
  v174 = a3;
  v70 = v162;
  v71 = v168;
  v175 = v162;
  v176 = v168;
  v177 = v68;
  swift_getWitnessTable();
  sub_1BE052B24();
  v69, v72, v73, v74, v75, v76, v77, v78;
  v139 = v185;
  v138 = v186;
  v185 = v66;
  v169 = a2;
  v170 = a3;
  v171 = v70;
  v172 = v71;
  v79 = v71;
  TupleTypeMetadata2 = swift_getKeyPath();
  v80 = v144;
  v81 = v141;
  v82 = v68;
  v83 = v161;
  (*(v144 + 16))(v141, v82, v161);
  v84 = (*(v80 + 80) + 57) & ~*(v80 + 80);
  v85 = swift_allocObject();
  v86 = v137;
  *(v85 + 16) = v137;
  *(v85 + 24) = a3;
  v87 = v162;
  *(v85 + 32) = v162;
  *(v85 + 40) = v79;
  *(v85 + 48) = v139;
  *(v85 + 56) = v138;
  (*(v80 + 32))(v85 + v84, v81, v83);
  v88 = swift_allocObject();
  v88[2] = v86;
  v88[3] = a3;
  v89 = v86;
  v90 = a3;
  v88[4] = v87;
  v88[5] = v79;
  v88[6] = sub_1BD462510;
  v88[7] = v85;
  v91 = swift_getWitnessTable();
  v92 = sub_1BD463284(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier, &unk_1BE0FCED0);
  v184[7] = v91;
  v184[8] = v92;
  v132 = swift_getWitnessTable();
  v93 = v142;
  v94 = v163;
  sub_1BE0519C4();
  sub_1BD45FF2C(v94, v89, v90, v87, v79);
  v96 = v95;
  v184[6] = v132;
  v97 = v148;
  swift_getWitnessTable();
  v98 = v143;
  sub_1BE04F534();
  v96, v99, v100, v101, v102, v103, v104, v105;
  v152[1](v93, v97);
  v184[5] = v132;
  v106 = v154;
  v107 = swift_getWitnessTable();
  v108 = sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0, &qword_1BE0E8860, MEMORY[0x1E697FDC0]);
  v184[3] = v107;
  v184[4] = v108;
  v109 = v166;
  v151 = swift_getWitnessTable();
  sub_1BD147308();
  v110 = *(v164 + 8);
  v111 = v98;
  v162 = v164 + 8;
  v152 = v110;
  (v110)(v98, v109);
  v112 = v161;
  v113 = v153;
  v114 = v155;
  (*(v153 + 16))(v155, v94 + *(v161 + 84), v106);
  LODWORD(v109) = (*(*(v90 - 8) + 48))(v114, 1, v90);
  v115 = *(v113 + 8);
  v115(v114, v106);
  if (v109 == 1)
  {
    v116 = v136;
    sub_1BD4605C4(v112);
    v184[2] = v168;
    swift_getWitnessTable();
    sub_1BD46221C();
    sub_1BD13A7F8(v116, v106, v156);
    sub_1BD0DE53C(v116, &qword_1EBD469C0, &qword_1BE0D7A28);
  }

  else
  {
    v178 = v168;
    swift_getWitnessTable();
    v117 = v134;
    sub_1BD147308();
    v118 = v135;
    sub_1BD147308();
    sub_1BD46221C();
    sub_1BD13A700(v118, v106);
    v115(v118, v106);
    v115(v117, v106);
  }

  v119 = v165;
  v120 = v111;
  v121 = v111;
  v122 = v166;
  (*(v164 + 16))(v121, v165, v166);
  v185 = v120;
  v124 = v157;
  v123 = v158;
  v125 = v167;
  v126 = v159;
  (*(v158 + 16))(v157, v167, v159);
  v186 = v124;
  v184[0] = v122;
  v184[1] = v126;
  v181 = v168;
  v182 = v151;
  v127 = swift_getWitnessTable();
  v128 = sub_1BD46221C();
  v179 = v127;
  v180 = v128;
  v183 = swift_getWitnessTable();
  sub_1BD13A4C4(&v185, 2uLL, v184);
  v129 = *(v123 + 8);
  v129(v125, v126);
  v130 = v152;
  (v152)(v119, v122);
  v129(v124, v126);
  return (v130)(v120, v122);
}

uint64_t sub_1BD45DF04(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v56 = a4;
  v59 = a2;
  v54 = a1;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0534B4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v47 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - v22;
  (*(v8 + 16))(&v47 - v22, v54, a3, v21);
  (*(v8 + 56))(v23, 0, 1, a3);
  v58[0] = a3;
  v58[1] = v56;
  v49 = a5;
  v58[2] = a5;
  v58[3] = v57;
  v24 = type metadata accessor for ContactEditingSection(0, v58);
  sub_1BD45C71C(v24);
  v51 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v53 = v14;
  v26 = *(v14 + 16);
  v26(v13, v23, v10);
  v54 = v25;
  v57 = v10;
  v26(&v13[v25], v19, v10);
  v52 = v8;
  v27 = *(v8 + 48);
  v59 = v13;
  v56 = a3;
  if (v27(v13, 1, a3) != 1)
  {
    v47 = v23;
    v34 = v53;
    v35 = v59;
    v26(v55, v59, v57);
    v36 = v54;
    v37 = v56;
    if (v27(&v35[v54], 1, v56) != 1)
    {
      v40 = v52;
      v41 = v48;
      (*(v52 + 32))(v48, &v59[v36], v37);
      v42 = v55;
      v33 = sub_1BE052334();
      v43 = *(v40 + 8);
      v43(v41, v37);
      v44 = *(v34 + 8);
      v45 = v57;
      v44(v19, v57);
      v44(v47, v45);
      v43(v42, v37);
      v44(v59, v45);
      return v33 & 1;
    }

    v38 = *(v34 + 8);
    v39 = v57;
    v38(v19, v57);
    v38(v47, v39);
    (*(v52 + 8))(v55, v37);
    v32 = v59;
    goto LABEL_7;
  }

  v28 = *(v53 + 8);
  v29 = v57;
  v28(v19, v57);
  v28(v23, v29);
  v30 = v59;
  v31 = v27(&v59[v54], 1, v56) == 1;
  v32 = v30;
  if (!v31)
  {
LABEL_7:
    (*(v50 + 8))(v32, v51);
    v33 = 0;
    return v33 & 1;
  }

  v28(v30, v57);
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_1BD45E3FC@<X0>(void (*a1)(char *, uint64_t, int *)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, int *)@<X2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v122 = a4;
  v129 = a3;
  v133 = a1;
  v123 = a8;
  v121 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v120 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v97 - v14;
  v141[0] = v15;
  v141[1] = v16;
  v135 = v17;
  v136 = v16;
  v141[2] = v18;
  v141[3] = v17;
  v19 = type metadata accessor for ContactEditingSection(0, v141);
  v137 = *(v19 - 1);
  v20 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v112 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v134 = &v97 - v22;
  v23 = *(a7 + 16);
  swift_getAssociatedTypeWitness();
  sub_1BE0534B4();
  v128 = v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1BE04E264();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v131 = (&v97 - v25);
  v26 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v130 = &v97 - v27;
  v29 = type metadata accessor for ContactFormItemRow(0, a6, a7, v28);
  v115 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v111 = &v97 - v30;
  type metadata accessor for ListRowGestureActionsModifier(255);
  v117 = v29;
  v119 = sub_1BE04EBD4();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v113 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v116 = &v97 - v34;
  v35 = *(a7 + 32);
  v132 = a7;
  v109 = v35(a6, a7, v33);
  v108 = v36;
  v37 = v133;
  v107 = sub_1BD45EE00(v133, v19);
  v38 = *(a5 + v19[14]);
  if (v38)
  {
    v39 = [v38 localizedDescription];
    v106 = sub_1BE052434();
    v105 = v40;
  }

  else
  {
    v106 = 0;
    v105 = 0;
  }

  v103 = v37 == v129;
  v41 = v19[16];
  v104 = *(a5 + v19[17]);
  v102 = *(a5 + v41);
  v42 = v102;
  v124 = a2;
  sub_1BE053844();
  sub_1BE04E294();
  sub_1BE04E244();
  v43 = v137;
  v44 = *(v137 + 16);
  v128 = v137 + 16;
  v129 = v44;
  v44(v134, a5, v19);
  WitnessTable = a5;
  v45 = a6;
  v46 = v121;
  v100 = *(v121 + 16);
  v47 = v114;
  v100(v114, a2, v45);
  v48 = *(v43 + 80);
  v101 = ((v48 + 48) & ~v48) + v20;
  v49 = (v48 + 48) & ~v48;
  v125 = v49;
  v126 = v48 | 7;
  v50 = (v101 + *(v46 + 80)) & ~*(v46 + 80);
  v98 = &v110[v50];
  v99 = v50;
  v51 = swift_allocObject();
  v52 = v136;
  v51[2] = v45;
  v51[3] = v52;
  v53 = v134;
  v54 = v135;
  v51[4] = v132;
  v51[5] = v54;
  v55 = *(v43 + 32);
  v137 = v43 + 32;
  v56 = v51 + v49;
  v57 = v55;
  v110 = v55;
  v55(v56, v53, v19);
  v121 = *(v46 + 32);
  (v121)(v51 + v50, v47, v45);
  v58 = v112;
  v129(v112, WitnessTable, v19);
  v59 = v120;
  v100(v120, v124, v45);
  v60 = (v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v135;
  v63 = v136;
  *(v61 + 2) = v45;
  *(v61 + 3) = v63;
  v64 = v132;
  *(v61 + 4) = v132;
  *(v61 + 5) = v62;
  v57(&v61[v125], v58, v19);
  (v121)(&v61[v99], v59, v45);
  *&v61[v60] = v133;
  v65 = v64;
  v66 = v111;
  sub_1BD29DFF4(v109, v108, v103 & ~v122, v107, v106, v105, v104, v102, v111, v130, v131, sub_1BD462D28, v51, sub_1BD462E1C, v61, v45, v64);
  v67 = WitnessTable;
  v68 = v135;
  v69 = v136;
  v131 = sub_1BD45F884(WitnessTable, v124, v45, v136, v64, v135);
  v71 = v70;
  v72 = v134;
  v129(v134, v67, v19);
  v73 = (v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v74[2] = v45;
  v74[3] = v69;
  v74[4] = v65;
  v74[5] = v68;
  (v110)(v74 + v125, v72, v19);
  *(v74 + v73) = v133;
  v75 = v117;
  v76 = swift_getWitnessTable();
  v77 = v113;
  v78 = v131;
  sub_1BD843CBC(v131, v71, sub_1BD462F68, v74, v75, v76);
  v74, v79, v80, v81, v82, v83, v84, v85;
  sub_1BD0D4744(v78, v71, v86, v87, v88, v89, v90, v91);
  (*(v115 + 8))(v66, v75);
  v92 = sub_1BD463284(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier, &unk_1BE0FCED0);
  v138 = v76;
  v139 = v92;
  v93 = v119;
  swift_getWitnessTable();
  v94 = v116;
  sub_1BD147308();
  v95 = *(v118 + 8);
  v95(v77, v93);
  sub_1BD147308();
  return (v95)(v94, v93);
}

BOOL sub_1BD45EE00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BD45C6C0(a2);
  v4 = sub_1BE0527D4();
  v3, v5, v6, v7, v8, v9, v10, v11;
  return v4 <= a1;
}

uint64_t sub_1BD45EE54(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0534B4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v38 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  result = sub_1BD461BB8();
  if ((result & 1) == 0)
  {
    v23 = v5[2];
    v44 = v5 + 2;
    v42 = v23;
    v23(v21, v53, v4);
    v24 = v5[7];
    v43 = v5 + 7;
    v41 = v24;
    v24(v21, 0, 1, v4);
    v48 = a2;
    v46 = v2;
    sub_1BD45C71C(a2);
    v39 = TupleTypeMetadata2;
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = *(v11 + 16);
    v26(v10, v21, v7);
    v47 = v25;
    v26(&v10[v25], v18, v7);
    v40 = v5;
    v27 = v5[6];
    v28 = v27(v10, 1, v4);
    v45 = v11;
    if (v28 == 1)
    {
      v29 = *(v11 + 8);
      v29(v18, v7);
      v29(v21, v7);
      if (v27(&v10[v47], 1, v4) == 1)
      {
        return (v29)(v10, v7);
      }
    }

    else
    {
      v26(v52, v10, v7);
      v30 = v47;
      if (v27(&v10[v47], 1, v4) != 1)
      {
        v34 = v40;
        v35 = &v10[v30];
        v36 = v49;
        (v40[4])(v49, v35, v4);
        LODWORD(v50) = sub_1BE052334();
        v37 = v34[1];
        v37(v36, v4);
        v29 = *(v45 + 8);
        v29(v18, v7);
        v29(v21, v7);
        v37(v52, v4);
        v31 = v48;
        result = (v29)(v10, v7);
        v32 = v53;
        if (v50)
        {
          return result;
        }

        goto LABEL_8;
      }

      v29 = *(v45 + 8);
      v29(v18, v7);
      v29(v21, v7);
      (v40[1])(v52, v4);
    }

    v31 = v48;
    v32 = v53;
    (*(v50 + 8))(v10, v39);
LABEL_8:
    v33 = v51;
    v42(v51, v32, v4);
    v41(v33, 0, 1, v4);
    sub_1BD463198(v33, v31);
    return (v29)(v33, v7);
  }

  return result;
}

void sub_1BD45F3D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6)
{
  v103 = a5;
  v11 = *(a6 + 16);
  v105 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v104 = v101 - v16;
  v19 = sub_1BD45EE00(v17, v18);
  v20 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v20 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    if (!v20)
    {
      return;
    }

    v101[1] = sub_1BD46210C(a2, a6);
    v21 = (v6 + *(a6 + 80));
    v23 = v21[1];
    v110 = *v21;
    v22 = v110;
    v111 = v23;
    sub_1BE052804();
    v102 = v11;
    sub_1BE0516D4();
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BE0516A4();
    sub_1BE0527F4();
    v107 = v22;
    v108 = v23;
    v106 = v113;
    sub_1BE0516B4();
    v23, v24, v25, v26, v27, v28, v29, v30;
    v22, v31, v32, v33, v34, v35, v36, v37;
    v38 = *(*(a6 + 32) + 48);
    v39 = a3;
    v40 = v104;
    v41 = v102;
    v38(v39, a4, v103, v102);
    v43 = v6[1];
    v44 = v6[2];
    v110 = *v6;
    v42 = v110;
    v111 = v43;
    v112 = v44;
    v45 = sub_1BE051964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048C84();
    MEMORY[0x1BFB3E970](&v113, v45);
    sub_1BE0527E4();
    v107 = v42;
    v108 = v43;
    v109 = v44;
    v106 = v113;
    sub_1BE0518F4();
    (*(v105 + 8))(v40, v41);
    v44, v46, v47, v48, v49, v50, v51, v52;
    v60 = v43;
  }

  else
  {
    if (v20)
    {
      (*(*(a6 + 32) + 48))(a3, a4, v103, v11);
      v61 = *v6;
      v62 = v6[1];
      v63 = v6[2];
      v110 = *v6;
      v111 = v62;
      v112 = v63;
      sub_1BE052804();
      v64 = sub_1BE051964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048C84();
      MEMORY[0x1BFB3E970](&v113, v64);
      sub_1BE0527A4();
      v65 = v113;
      sub_1BD463144(a2, v113, v11);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v67 = v65 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v67 = v65;
      }

      (*(v105 + 40))(v67 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * a2, v13, v11);
      v107 = v61;
      v108 = v62;
      v109 = v63;
      v106 = v113;
      sub_1BE0518F4();
      v63, v68, v69, v70, v71, v72, v73, v74;
      v62, v75, v76, v77, v78, v79, v80, v81;
      v89 = v61;
      goto LABEL_12;
    }

    v90 = v6[1];
    v91 = v6[2];
    v110 = *v6;
    v42 = v110;
    v111 = v90;
    v112 = v91;
    sub_1BE052804();
    v92 = sub_1BE051964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048C84();
    MEMORY[0x1BFB3E970](&v113, v92);
    v93 = v104;
    sub_1BE0527F4();
    (*(v105 + 8))(v93, v11);
    v107 = v42;
    v108 = v90;
    v109 = v91;
    v106 = v113;
    sub_1BE0518F4();
    v91, v94, v95, v96, v97, v98, v99, v100;
    v60 = v90;
  }

  v60, v53, v54, v55, v56, v57, v58, v59;
  v89 = v42;
LABEL_12:
  v89, v82, v83, v84, v85, v86, v87, v88;
}

uint64_t (*sub_1BD45F884(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v42[0] = a3;
  v42[1] = a4;
  v40 = a4;
  v41 = a5;
  v42[2] = a5;
  v42[3] = a6;
  v10 = type metadata accessor for ContactEditingSection(0, v42);
  MEMORY[0x1EEE9AC00](v10);
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (a1 + *(v17 + 60));
  v19 = *v18;
  if (!*v18)
  {
    return 0;
  }

  v37 = a1;
  v38 = a6;
  v39 = v15;
  v20 = v14;
  v21 = v18[1];
  sub_1BE048964();
  if (sub_1BD8B6708(a3, v41, v22))
  {
    sub_1BD0D4744(v19, v21, v23, v24, v25, v26, v27, v28);
    return 0;
  }

  (*(v11 + 16))(&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  (*(v20 + 16))(v39, v37, v10);
  v37 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v30 = (v12 + *(v20 + 80) + v37) & ~*(v20 + 80);
  v31 = swift_allocObject();
  v32 = v40;
  v33 = v41;
  *(v31 + 2) = a3;
  *(v31 + 3) = v32;
  v35 = v37;
  v34 = v38;
  *(v31 + 4) = v33;
  *(v31 + 5) = v34;
  *(v31 + 6) = v19;
  *(v31 + 7) = v21;
  (*(v11 + 32))(&v31[v35], v16, a3);
  (*(v20 + 32))(&v31[v30], v39, v10);
  return sub_1BD463040;
}

uint64_t sub_1BD45FAFC(void (*a1)(uint64_t, double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v12 = sub_1BE0534B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v18;
  a1(a3, v17);
  v25[0] = a5;
  v25[1] = a6;
  v25[2] = v23;
  v25[3] = v24;
  v20 = type metadata accessor for ContactEditingSection(0, v25);
  sub_1BD45EE54(a3, v20);
  v21 = *(a5 - 8);
  (*(v21 + 16))(v19, a3, a5);
  (*(v21 + 56))(v19, 0, 1, a5);
  (*(v13 + 16))(v15, v19, v12);
  sub_1BE0516D4();
  sub_1BE0516B4();
  return (*(v13 + 8))(v19, v12);
}

void sub_1BD45FCF0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BD45EE00(v9, v10))
  {
    sub_1BD46210C(a1, a2);
    v11 = (v2 + *(a2 + 80));
    v13 = v11[1];
    v57 = *v11;
    v12 = v57;
    v58 = v13;
    sub_1BE052804();
    sub_1BE0516D4();
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BE0516A4();
    sub_1BE0527F4();
    (*(v6 + 8))(v8, v5);
    v54 = v12;
    v55 = v13;
    v53 = v60;
    sub_1BE0516B4();
    v13, v14, v15, v16, v17, v18, v19, v20;
    v12, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    v29 = v2[1];
    v30 = v2[2];
    v57 = *v2;
    v28 = v57;
    v58 = v29;
    v59 = v30;
    sub_1BE052804();
    v31 = sub_1BE051964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048C84();
    MEMORY[0x1BFB3E970](&v60, v31);
    sub_1BE0527F4();
    (*(v6 + 8))(v8, v5);
    v54 = v28;
    v55 = v29;
    v56 = v30;
    v53 = v60;
    sub_1BE0518F4();
    v30, v32, v33, v34, v35, v36, v37, v38;
    v29, v39, v40, v41, v42, v43, v44, v45;
    v28, v46, v47, v48, v49, v50, v51, v52;
  }
}

void (*sub_1BD45FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for ContactEditingSection(0, v18);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return sub_1BD462B44;
}

void sub_1BD460088(uint64_t a1, void *a2)
{
  v122 = a1;
  v4 = sub_1BE04B344();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v114 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v114 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v114 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v114 - v17;
  v126 = v5;
  v19 = *(v5 + 16);
  v20 = v19(&v114 - v17, a1, v4, v16);
  v21 = a2[2];
  v120 = a2[3];
  v131 = v21;
  v132 = v120;
  v22 = a2[4];
  v23 = a2[5];
  v123 = a2;
  v117 = v22;
  v118 = v23;
  v133 = v22;
  v134 = v23;
  v24 = v22;
  v135 = v127;
  v121 = sub_1BD45C368(sub_1BD462BEC, v130, v20);
  v25 = (v19)(v18, v122, v4);
  v26 = v120;
  v129[2] = v21;
  v129[3] = v120;
  v129[4] = v24;
  v27 = v118;
  v28 = v127;
  v129[5] = v118;
  v129[6] = v127;
  v29 = sub_1BD45C368(sub_1BD462C54, v129, v25);
  v119 = v21;
  v128[2] = v21;
  v128[3] = v26;
  v128[4] = v117;
  v128[5] = v27;
  v30 = v121;
  v128[6] = v28;
  sub_1BDA3DD20(sub_1BD462CB8, v128, v29, v31, v32, v33, v34, v35);
  v122 = v36;
  v29, v37, v38, v39, v40, v41, v42, v43;
  sub_1BD463284(&qword_1EBD46840, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_1BE053654();
  v51 = v30[2];
  if (v51)
  {
    v52 = v30 + 4;
    do
    {
      v53 = *v52++;
      v137 = v53;
      sub_1BE053634();
      --v51;
    }

    while (v51);
  }

  v30, v44, v45, v46, v47, v48, v49, v50;
  v54 = v126;
  v120 = *(v126 + 32);
  v121 = (v126 + 32);
  v120(v125, v12, v4);
  v55 = v127[1];
  v56 = v127[2];
  v140 = *v127;
  v141 = v55;
  v115 = v55;
  v116 = v140;
  v142 = v56;
  v57 = sub_1BE052804();
  v58 = sub_1BE051964();
  v114 = v58;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  MEMORY[0x1BFB3E970](v143, v58);
  WitnessTable = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v61 = v125;
  v118 = v57;
  v119 = WitnessTable;
  v117 = v60;
  sub_1BE052B44();
  v125 = *(v54 + 8);
  v126 = v54 + 8;
  (v125)(v61, v4);
  v62 = v115;
  v63 = v116;
  v137 = v116;
  v138 = v115;
  v139 = v56;
  v136 = v143[0];
  sub_1BE0518F4();
  v56, v64, v65, v66, v67, v68, v69, v70;
  v62, v71, v72, v73, v74, v75, v76, v77;
  v63, v78, v79, v80, v81, v82, v83, v84;
  sub_1BE053654();
  v92 = v122;
  v93 = *(v122 + 16);
  if (v93)
  {
    v94 = (v122 + 32);
    do
    {
      v95 = *v94++;
      v137 = v95;
      sub_1BE053634();
      --v93;
    }

    while (v93);
  }

  v92, v85, v86, v87, v88, v89, v90, v91;
  v96 = v124;
  v120(v124, v7, v4);
  v97 = (v127 + *(v123 + 20));
  v99 = v97[1];
  v140 = *v97;
  v98 = v140;
  v141 = v99;
  sub_1BE0516D4();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE0516A4();
  sub_1BE052B44();
  (v125)(v96, v4);
  v137 = v98;
  v138 = v99;
  v136 = v143[0];
  sub_1BE0516B4();
  v99, v100, v101, v102, v103, v104, v105, v106;
  v98, v107, v108, v109, v110, v111, v112, v113;
}

uint64_t sub_1BD4605C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(v8 + 76));
  v11 = *v9;
  v10 = v9[1];
  (*(v4 + 16))(v7, v2, a1, v6);
  v12 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = *(a1 + 32);
  *(v13 + 16) = *(a1 + 16);
  *(v13 + 32) = v14;
  (*(v4 + 32))(v13 + v12, v7, a1);
  LOBYTE(v37[0]) = 0;
  sub_1BE048C84();
  sub_1BE051944();
  v15 = v40;
  LOBYTE(v12) = v41;
  v16 = sub_1BE0511D4();
  *&v40 = v11;
  *(&v40 + 1) = v10;
  *&v41 = sub_1BD46239C;
  *(&v41 + 1) = v13;
  v42 = v15;
  LOBYTE(v43) = v12;
  *(&v43 + 1) = v16;
  v38 = sub_1BE052434();
  v39 = v17;
  MEMORY[0x1BFB3F610](45, 0xE100000000000000);
  v18 = sub_1BE052434();
  v20 = v19;
  MEMORY[0x1BFB3F610](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = v39;
  sub_1BD4622D8();
  sub_1BE050DE4();
  v28, v29, v30, v31, v32, v33, v34, v35;
  v37[0] = v40;
  v37[1] = v41;
  v37[2] = v42;
  v37[3] = v43;
  return sub_1BD4623B4(v37);
}

uint64_t sub_1BD4607E8(uint64_t a1)
{
  v28 = sub_1BE04BD74();
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  v5 = sub_1BE0534B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0516D4();
  sub_1BE0516A4();
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v8, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BE0B69E0;
    v15 = (*(*(a1 + 32) + 32))(v4);
    v17 = v16;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1BD110550();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v18 = v28;
    (*(v2 + 104))(v29, *MEMORY[0x1E69B8068], v28);
    v19 = v29;
    v20 = sub_1BE04B714();
    v14, v21, v22, v23, v24, v25, v26, v27;
    (*(v2 + 8))(v19, v18);
    (*(v9 + 8))(v12, v4);
    return v20;
  }
}

uint64_t sub_1BD460B40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v35 = a6;
  v36[0] = a2;
  v36[1] = a3;
  v36[2] = a4;
  v36[3] = a5;
  v8 = type metadata accessor for ContactEditingSection(0, v36);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  (*(v9 + 16))(v11, a1, v8, v14);
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v32;
  v20 = v33;
  *(v18 + 2) = a2;
  *(v18 + 3) = v19;
  v21 = v34;
  *(v18 + 4) = v20;
  *(v18 + 5) = v21;
  (*(v9 + 32))(&v18[v17], v11, v8);
  sub_1BE051704();
  sub_1BE052434();
  v23 = v22;
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v23, v24, v25, v26, v27, v28, v29, v30;
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1BD460DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE0534B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v18 - v15;
  (*(*(a2 - 8) + 56))(v18 - v15, 1, 1, a2, v14);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  type metadata accessor for ContactEditingSection(0, v18);
  (*(v10 + 16))(v12, v16, v9);
  sub_1BE0516D4();
  sub_1BE0516B4();
  return (*(v10 + 8))(v16, v9);
}

id sub_1BD460F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
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

uint64_t sub_1BD4610C8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v6 = type metadata accessor for ContactEditingSection(0, &v12);
  v12 = sub_1BD461138(v6);
  v13 = v7;
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a5 = result;
  *(a5 + 8) = v9;
  *(a5 + 16) = v10 & 1;
  *(a5 + 24) = v11;
  return result;
}

id sub_1BD461138(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v8;
  v11 = *MEMORY[0x1E69B8068];
  v12 = *(v4 + 104);
  if (*(v1 + *(a1 + 68)))
  {
    v12(v6, v11, v3, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v10 = v6;
LABEL_6:

      (*(v4 + 8))(v10, v3);
      return v15;
    }

    __break(1u);
  }

  else
  {
    v12(&v16 - v8, v11, v3, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD461308(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v56 = a3;
  v57 = a5;
  v53 = a1;
  v60 = sub_1BE051F54();
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v13 = type metadata accessor for ContactEditingSection(0, &aBlock);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v53 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v54 = a4;
  (*(a4 + 24))(0, 0xE000000000000000, 6, a2, a4, v17);
  v18 = (a1 + *(v13 + 80));
  v19 = v18[1];
  aBlock = *v18;
  v20 = aBlock;
  v65 = v19;
  sub_1BE052804();
  sub_1BE0516D4();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE0516A4();
  sub_1BE0527E4();
  v71 = v20;
  v72 = v19;
  v70 = v73;
  sub_1BE0516B4();
  v19, v21, v22, v23, v24, v25, v26, v27;
  v20, v28, v29, v30, v31, v32, v33, v34;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v35 = sub_1BE052D54();
  v36 = v55;
  (*(v14 + 16))(v55, v53, v13);
  v37 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v38 = swift_allocObject();
  v39 = v56;
  *(v38 + 2) = a2;
  *(v38 + 3) = v39;
  v40 = v57;
  *(v38 + 4) = v54;
  *(v38 + 5) = v40;
  (*(v14 + 32))(&v38[v37], v36, v13);
  v68 = sub_1BD462408;
  v69 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1BD126964;
  v67 = &block_descriptor_97;
  v41 = _Block_copy(&aBlock);
  v69, v42, v43, v44, v45, v46, v47, v48;
  v49 = v58;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD463284(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  v51 = v59;
  v50 = v60;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v49, v51, v41);
  _Block_release(v41);

  (*(v63 + 8))(v51, v50);
  return (*(v61 + 8))(v49, v62);
}

uint64_t sub_1BD461800(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BE0534B4();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v39 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1BE0534B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v20 = *(type metadata accessor for ContactEditingSection(0, &v42) + 80);
  v38 = a1;
  v21 = (a1 + v20);
  v23 = *v21;
  v22 = v21[1];
  v42 = v23;
  v43 = v22;
  sub_1BE052804();
  sub_1BE0516D4();
  sub_1BE0516A4();
  v24 = v41;
  v42 = v41;
  swift_getWitnessTable();
  sub_1BE0522C4();
  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = *(a2 - 1);
  if ((*(v32 + 48))(v12, 1, a2) == 1)
  {
    (*(v35 + 8))(v12, v36);
    (*(*(AssociatedTypeWitness - 8) + 56))(v19, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    sub_1BE053844();
    (*(v32 + 8))(v12, a2);
    (*(*(AssociatedTypeWitness - 8) + 56))(v19, 0, 1, AssociatedTypeWitness);
  }

  (*(v15 + 16))(v37, v19, v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1BE04E294();
  sub_1BE04E234();
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_1BD461BB8()
{
  v0 = sub_1BE051AD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528, &unk_1BE0CE330);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v27 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530, &unk_1BE0C80F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  sub_1BD70A2C8(v8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD40450, &qword_1BE0D7250);
    v19 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v18);
    sub_1BD0DE53C(v8, &qword_1EBD40520, &qword_1BE0D70B0);
    v19 = 0;
  }

  v20 = *(v1 + 56);
  v20(v17, v19, 1, v0);
  (*(v1 + 104))(v14, *MEMORY[0x1E697D708], v0);
  v20(v14, 0, 1, v0);
  v21 = *(v3 + 48);
  sub_1BD0DE19C(v17, v5, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE19C(v14, &v5[v21], &qword_1EBD40530, &unk_1BE0C80F0);
  v22 = *(v1 + 48);
  if (v22(v5, 1, v0) != 1)
  {
    sub_1BD0DE19C(v5, v11, &qword_1EBD40530, &unk_1BE0C80F0);
    if (v22(&v5[v21], 1, v0) != 1)
    {
      v24 = v28;
      (*(v1 + 32))(v28, &v5[v21], v0);
      sub_1BD463284(&qword_1EBD40538, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
      v23 = sub_1BE052334();
      v25 = *(v1 + 8);
      v25(v24, v0);
      sub_1BD0DE53C(v14, &qword_1EBD40530, &unk_1BE0C80F0);
      sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
      v25(v11, v0);
      sub_1BD0DE53C(v5, &qword_1EBD40530, &unk_1BE0C80F0);
      return v23 & 1;
    }

    sub_1BD0DE53C(v14, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
    (*(v1 + 8))(v11, v0);
    goto LABEL_9;
  }

  sub_1BD0DE53C(v14, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
  if (v22(&v5[v21], 1, v0) != 1)
  {
LABEL_9:
    sub_1BD0DE53C(v5, &qword_1EBD40528, &unk_1BE0CE330);
    v23 = 0;
    return v23 & 1;
  }

  sub_1BD0DE53C(v5, &qword_1EBD40530, &unk_1BE0C80F0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1BD46210C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BD45C6C0(a2);
  v4 = sub_1BE0527D4();
  v3, v5, v6, v7, v8, v9, v10, v11;
  result = a1 - v4;
  if (__OFSUB__(a1, v4))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD462198()
{
  result = qword_1EBD469D0;
  if (!qword_1EBD469D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD469C8, &qword_1BE0D7A30);
    sub_1BD46221C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD469D0);
  }

  return result;
}

unint64_t sub_1BD46221C()
{
  result = qword_1EBD469D8;
  if (!qword_1EBD469D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD469C0, &qword_1BE0D7A28);
    sub_1BD4622D8();
    sub_1BD463284(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD469D8);
  }

  return result;
}

unint64_t sub_1BD4622D8()
{
  result = qword_1EBD469E0;
  if (!qword_1EBD469E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD469E0);
  }

  return result;
}

uint64_t sub_1BD46232C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C0, &qword_1BE0D7A28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD462438(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for ContactEditingSection(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1BD462510@<X0>(void (*a1)(char *, uint64_t, int *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v13[0] = *(v3 + 16);
  v7 = v13[0];
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v11 = *(type metadata accessor for ContactEditingSection(0, v13) - 8);
  return sub_1BD45E3FC(a1, a2, *(v3 + 48), *(v3 + 56), v3 + ((*(v11 + 80) + 57) & ~*(v11 + 80)), v7, v9, a3);
}

uint64_t sub_1BD4625D0(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t objectdestroyTm_43()
{
  v2 = *(v0 + 24);
  v145[0] = *(v0 + 16);
  v1 = v145[0];
  v145[1] = v2;
  v146 = *(v0 + 32);
  v3 = type metadata accessor for ContactEditingSection(0, v145);
  v144 = *(*(v3 - 1) + 80);
  v4 = (v0 + ((v144 + 48) & ~v144));
  *v4, v5, v6, v7, v8, v9, v10, v11;
  v4[1], v12, v13, v14, v15, v16, v17, v18;
  v4[2], v19, v20, v21, v22, v23, v24, v25;
  v26 = (v4 + v3[13]);
  *v26, v27, v28, v29, v30, v31, v32, v33;
  v26[1], v34, v35, v36, v37, v38, v39, v40;
  sub_1BE0534B4();
  v41 = *(sub_1BE051964() + 32);
  v42 = *(v1 - 8);
  v43 = *(v42 + 48);
  if (!v43(v26 + v41, 1, v1))
  {
    (*(v42 + 8))(v26 + v41, v1);
  }

  v51 = (v4 + v3[15]);
  if (*v51)
  {
    v51[1], v44, v45, v46, v47, v48, v49, v50;
  }

  *(v4 + v3[18] + 8), v52, v53, v54, v55, v56, v57, v58;
  *(v4 + v3[19] + 8), v59, v60, v61, v62, v63, v64, v65;
  v66 = (v4 + v3[20]);
  *v66, v67, v68, v69, v70, v71, v72, v73;
  v66[1], v74, v75, v76, v77, v78, v79, v80;
  v81 = v3[21];
  v82 = *(v2 - 8);
  if (!(*(v82 + 48))(v4 + v81, 1, v2))
  {
    (*(v82 + 8))(v4 + v81, v2);
  }

  v88 = v4 + v3[22];
  if (*(v88 + 3))
  {
    sub_1BD0DDF10(*v88, *(v88 + 1), v88[16], v83, v84, v85, v86, v87);
    *(v88 + 3), v89, v90, v91, v92, v93, v94, v95;
  }

  v96 = (v4 + v3[23]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v104 - 8) + 48))(v96, 1, v104))
    {
      *v96, v105, v106, v107, v108, v109, v110, v111;
      v96[1], v112, v113, v114, v115, v116, v117, v118;
      v119 = *(v104 + 32);
      v120 = sub_1BE051AD4();
      (*(*(v120 - 8) + 8))(v96 + v119, v120);
    }
  }

  else
  {
    *v96, v97, v98, v99, v100, v101, v102, v103;
  }

  v121 = v4 + v3[24];
  if (!v43(v121, 1, v1))
  {
    (*(v42 + 8))(v121, v1);
  }

  v122 = sub_1BE0516D4();
  *&v121[*(v122 + 28)], v123, v124, v125, v126, v127, v128, v129;
  v130 = v4 + v3[25];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v132 = *(AssociatedTypeWitness - 8);
  v133 = *(v132 + 48);
  if (!v133(v130, 1, AssociatedTypeWitness))
  {
    (*(v132 + 8))(v130, AssociatedTypeWitness);
  }

  sub_1BE0534B4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v134 = sub_1BE04E294();
  *&v130[*(v134 + 36)], v135, v136, v137, v138, v139, v140, v141;
  v142 = *(v134 + 40);
  if (!v133(&v130[v142], 1, AssociatedTypeWitness))
  {
    (*(v132 + 8))(&v130[v142], AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

void sub_1BD462B44(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  type metadata accessor for ContactEditingSection(0, &v8);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v7 = type metadata accessor for ContactEditingSection(0, &v8);
  sub_1BD460088(a1, v7);
}

BOOL sub_1BD462BEC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for ContactEditingSection(0, v6);
  return !sub_1BD45EE00(v2, v4);
}

BOOL sub_1BD462C54(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for ContactEditingSection(0, v6);
  return sub_1BD45EE00(v2, v4);
}

uint64_t sub_1BD462CB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 32);
  v8[0] = *(v2 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for ContactEditingSection(0, v8);
  result = sub_1BD46210C(v4, v6);
  *a2 = result;
  return result;
}

uint64_t sub_1BD462D28()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v12 = v0[2];
  v1 = v12;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = *(type metadata accessor for ContactEditingSection(0, &v12) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(*(v1 - 8) + 80);
  v12 = v1;
  v13 = v2;
  v9 = (v6 + v7 + v8) & ~v8;
  v14 = v3;
  v15 = v4;
  v10 = type metadata accessor for ContactEditingSection(0, &v12);
  return sub_1BD45EE54(v0 + v9, v10);
}

void sub_1BD462E1C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v15 = v3[2];
  v6 = v15;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v10 = *(type metadata accessor for ContactEditingSection(0, &v15) - 8);
  v11 = (((*(v10 + 80) + 48) & ~*(v10 + 80)) + *(v10 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v12 = *(v3 + ((*(*(v6 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v13 = type metadata accessor for ContactEditingSection(0, &v15);
  sub_1BD45F3D4(v3 + v11, v12, a1, a2, a3, v13);
}

void sub_1BD462F68()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8 = v0[2];
  v1 = v8;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v5 = *(type metadata accessor for ContactEditingSection(0, &v8) - 8);
  v6 = *(v0 + ((*(v5 + 64) + ((*(v5 + 80) + 48) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v7 = type metadata accessor for ContactEditingSection(0, &v8);
  sub_1BD45FCF0(v6, v7);
}

uint64_t sub_1BD463040()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = (*(*(v0[2] - 8) + 80) + 64) & ~*(*(v0[2] - 8) + 80);
  v6 = *(*(v0[2] - 8) + 64);
  v12[0] = v0[2];
  v1 = v12[0];
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v7 = *(type metadata accessor for ContactEditingSection(0, v12) - 8);
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1BD45FAFC(v8, v9, v0 + v5, v10, v1, v2, v3, v4);
}

uint64_t sub_1BD463144(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BD463198(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE0534B4();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - v5, a1, v3, v4);
  sub_1BE051964();
  return sub_1BE0518F4();
}

uint64_t sub_1BD463284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int *AppleCashConfirmationSnippetView.init(person:note:isSend:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1BE048724();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for AppleCashConfirmationSnippetView(0);
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t type metadata accessor for AppleCashConfirmationSnippetView(uint64_t a1)
{
  result = qword_1EBD46A00;
  if (!qword_1EBD46A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *AppleCashConfirmationSnippetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F7D4();
  v27 = 0;
  sub_1BD463520(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v29, __src, sizeof(v29));
  sub_1BD0DE19C(__dst, &v24, &qword_1EBD469F0, &qword_1BE0D7A80);
  sub_1BD0DE53C(v29, &qword_1EBD469F0, &qword_1BE0D7A80);
  memcpy(&v26[7], __dst, 0x168uLL);
  v5 = v27;
  LOBYTE(v2) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(__src[0]) = 0;
  v14 = sub_1BE050234();
  sub_1BE04E1F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  *a1 = v4;
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = v5;
  result = memcpy((a1 + 17), v26, 0x16FuLL);
  *(a1 + 384) = v2;
  *(a1 + 392) = v7;
  *(a1 + 400) = v9;
  *(a1 + 408) = v11;
  *(a1 + 416) = v13;
  *(a1 + 424) = 0;
  *(a1 + 432) = v14;
  *(a1 + 440) = v16;
  *(a1 + 448) = v18;
  *(a1 + 456) = v20;
  *(a1 + 464) = v22;
  *(a1 + 472) = 0;
  return result;
}

uint64_t sub_1BD463520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v3 = sub_1BE051584();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BE04F504();
  LOBYTE(v78[0]) = 0;
  sub_1BD463CFC(&v79);
  v100 = *&v80[10];
  v101 = *&v80[12];
  v102[0] = *&v80[14];
  *(v102 + 9) = *(&v80[15] + 1);
  v96 = *&v80[2];
  v97 = *&v80[4];
  v98 = *&v80[6];
  v99 = *&v80[8];
  v94 = v79;
  v95 = *v80;
  v103[6] = *&v80[10];
  v103[7] = *&v80[12];
  v104[0] = *&v80[14];
  *(v104 + 9) = *(&v80[15] + 1);
  v103[2] = *&v80[2];
  v103[3] = *&v80[4];
  v103[4] = *&v80[6];
  v103[5] = *&v80[8];
  v103[0] = v79;
  v103[1] = *v80;
  sub_1BD0DE19C(&v94, &v65, &qword_1EBD46A40, &qword_1BE0D7B30);
  sub_1BD0DE53C(v103, &qword_1EBD46A40, &qword_1BE0D7B30);
  *(&v81[6] + 7) = v100;
  *(&v81[7] + 7) = v101;
  *(&v81[8] + 7) = v102[0];
  v81[9] = *(v102 + 9);
  *(&v81[2] + 7) = v96;
  *(&v81[3] + 7) = v97;
  *(&v81[4] + 7) = v98;
  *(&v81[5] + 7) = v99;
  *(v81 + 7) = v94;
  *(&v81[1] + 7) = v95;
  v61 = LOBYTE(v78[0]);
  v7 = sub_1BD464BD0(186.0, 130.0);
  v8 = MEMORY[0x1E6981630];
  if (v7)
  {
    v9 = v7;
    v10 = sub_1BE051544();
    v11 = v8;
    (*(v4 + 104))(v6, *v8, v3);
    v60 = sub_1BE0515E4();
    v10, v12, v13, v14, v15, v16, v17, v18;
    (*(v4 + 8))(v6, v3);
    [v9 size];
    sub_1BE051CD4();
    sub_1BE04E5E4();

    LOBYTE(v79) = 1;
    LOBYTE(v65) = 1;
    v58 = v83;
    v59 = v82;
    v56 = v85;
    v57 = v84;
    v63 = v87;
    v54 = 1;
    v55 = v86;
    v19 = 1;
  }

  else
  {
    v11 = MEMORY[0x1E6981630];
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v63 = 0;
    v19 = 0;
    v54 = 0;
  }

  v20 = *(a1 + *(type metadata accessor for AppleCashConfirmationSnippetView(0) + 20) + 8);
  if (v20)
  {
    v21 = objc_allocWithZone(PKPeerPaymentMessageMemoBalloonView);
    v22 = sub_1BE052404();
    v23 = [v21 initWithMemo_];

    v24 = v23;
    [v24 sizeThatFits_];
    v26 = v25;
    v28 = v27;
    [v24 setFrame_];

    sub_1BD464D98(v24, v26, v28);
    v30 = v29;

    v31 = v30;
    v32 = sub_1BE051544();
    (*(v4 + 104))(v6, *v11, v3);
    v52 = sub_1BE0515E4();
    v32, v33, v34, v35, v36, v37, v38, v39;
    (*(v4 + 8))(v6, v3);
    [v31 size];
    sub_1BE051CD4();
    sub_1BE04E5E4();

    LOBYTE(v79) = 1;
    LOBYTE(v65) = 1;
    v40 = v88;
    v20 = v89;
    v41 = v90;
    v42 = v91;
    v43 = v92;
    v44 = v93;
    v45 = 1;
    v46 = 1;
  }

  else
  {
    v52 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v46 = 0;
    v45 = 0;
  }

  *&v65 = v62;
  *(&v65 + 1) = 0x4020000000000000;
  v66[0] = v61;
  *&v66[49] = v81[3];
  *&v66[33] = v81[2];
  *&v66[97] = v81[6];
  *&v66[113] = v81[7];
  *&v66[129] = v81[8];
  *&v66[145] = v81[9];
  *&v66[65] = v81[4];
  *&v66[81] = v81[5];
  *&v66[1] = v81[0];
  *&v66[17] = v81[1];
  v64[8] = *&v66[112];
  v64[9] = *&v66[128];
  v64[10] = *&v66[144];
  LOBYTE(v64[11]) = HIBYTE(v81[9]);
  v64[4] = *&v66[48];
  v64[5] = *&v66[64];
  v64[6] = *&v66[80];
  v64[7] = *&v66[96];
  v64[0] = v65;
  v64[1] = *v66;
  v64[2] = *&v66[16];
  v64[3] = *&v66[32];
  v67[0] = v60;
  v67[1] = 0;
  v67[2] = v54;
  v67[3] = 0;
  *&v68 = v19;
  *(&v68 + 1) = v59;
  *&v69 = v58;
  *(&v69 + 1) = v57;
  v51 = v19;
  *&v70 = v56;
  *(&v70 + 1) = v55;
  v71 = v63;
  *(&v64[16] + 1) = v63;
  *(&v64[13] + 8) = v68;
  *(&v64[14] + 8) = v69;
  *(&v64[15] + 8) = v70;
  *(&v64[11] + 8) = v60;
  *(&v64[12] + 8) = v54;
  v47 = v52;
  v72[0] = v52;
  v72[1] = 0;
  v72[2] = v45;
  v72[3] = 0;
  *&v73 = v46;
  *(&v73 + 1) = v40;
  *&v74 = v20;
  *(&v74 + 1) = v41;
  *&v75 = v42;
  *(&v75 + 1) = v43;
  v76 = v44;
  v64[17] = v52;
  v64[18] = v45;
  *&v64[22] = v44;
  v64[20] = v74;
  v64[21] = v75;
  v64[19] = v73;
  v48 = v46;
  memcpy(v53, v64, 0x168uLL);
  v77[0] = v47;
  v77[1] = 0;
  v77[2] = v45;
  v77[3] = 0;
  v77[4] = v48;
  v77[5] = v40;
  v77[6] = v20;
  v77[7] = v41;
  v77[8] = v42;
  v77[9] = v43;
  v77[10] = v44;
  sub_1BD0DE19C(&v65, &v79, &qword_1EBD46A48, &qword_1BE0D7B38);
  sub_1BD0DE19C(v67, &v79, &qword_1EBD46A50, &qword_1BE0D7B40);
  sub_1BD0DE19C(v72, &v79, &qword_1EBD46A50, &qword_1BE0D7B40);
  sub_1BD0DE53C(v77, &qword_1EBD46A50, &qword_1BE0D7B40);
  v78[0] = v60;
  v78[1] = 0;
  v78[2] = v54;
  v78[3] = 0;
  v78[4] = v51;
  v78[5] = v59;
  v78[6] = v58;
  v78[7] = v57;
  v78[8] = v56;
  v78[9] = v55;
  v78[10] = v63;
  sub_1BD0DE53C(v78, &qword_1EBD46A50, &qword_1BE0D7B40);
  *(&v80[12] + 1) = v81[6];
  *(&v80[14] + 1) = v81[7];
  *(&v80[16] + 1) = v81[8];
  *(&v80[18] + 1) = v81[9];
  *(&v80[4] + 1) = v81[2];
  *(&v80[6] + 1) = v81[3];
  *(&v80[8] + 1) = v81[4];
  *(&v80[10] + 1) = v81[5];
  *(v80 + 1) = v81[0];
  *&v79 = v62;
  *(&v79 + 1) = 0x4020000000000000;
  LOBYTE(v80[0]) = v61;
  *(&v80[2] + 1) = v81[1];
  return sub_1BD0DE53C(&v79, &qword_1EBD46A48, &qword_1BE0D7B38);
}

uint64_t sub_1BD463CFC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE051CB4();
  v48 = v4;
  v49 = v3;
  sub_1BD463F30(&v70);
  v52 = v72;
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v50 = v70;
  v51 = v71;
  v56[4] = v74;
  v56[5] = v75;
  v56[2] = v72;
  v56[3] = v73;
  v56[0] = v70;
  v56[1] = v71;
  sub_1BD0DE19C(&v50, &v63, &qword_1EBD46A60, &qword_1BE0D7B48);
  sub_1BD0DE53C(v56, &qword_1EBD46A60, &qword_1BE0D7B48);
  v59 = v52;
  v60 = v53;
  v61 = v54;
  v62 = v55;
  v57 = v50;
  v58 = v51;
  *&v70 = IntentPerson.pkDisplayName.getter();
  *(&v70 + 1) = v5;
  sub_1BD0DDEBC();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BE050364();
  v13 = sub_1BE050544();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1BD0DDF10(v6, v8, (v10 & 1), v18, v20, v21, v22, v23);
  v12, v24, v25, v26, v27, v28, v29, v30;
  *&v63 = v49;
  *(&v63 + 1) = v48;
  v31 = v59;
  v66 = v59;
  v67 = v60;
  v68 = v61;
  v69 = v62;
  v64 = v57;
  v65 = v58;
  v32 = (v17 & 1);
  *(a2 + 32) = v58;
  *(a2 + 48) = v31;
  v33 = v64;
  *a2 = v63;
  *(a2 + 16) = v33;
  v34 = v69;
  *(a2 + 80) = v68;
  *(a2 + 96) = v34;
  *(a2 + 64) = v67;
  *(a2 + 112) = v13;
  *(a2 + 120) = v15;
  *(a2 + 128) = v32;
  *(a2 + 136) = v19;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  sub_1BD0DE19C(&v63, &v70, &qword_1EBD46A68, &unk_1BE0D7B50);
  sub_1BD0D7F18(v13, v15, v32);
  sub_1BE048C84();
  sub_1BD0DDF10(v13, v15, v32, v35, v36, v37, v38, v39);
  v19, v40, v41, v42, v43, v44, v45, v46;
  *&v70 = v49;
  *(&v70 + 1) = v48;
  v73 = v59;
  v74 = v60;
  v75 = v61;
  v76 = v62;
  v71 = v57;
  v72 = v58;
  return sub_1BD0DE53C(&v70, &qword_1EBD46A68, &unk_1BE0D7B50);
}

void sub_1BD463F30(uint64_t a1@<X8>)
{
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4641F8();
  v6 = sub_1BE051544();
  v7 = sub_1BE052434();
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v11 = sub_1BD469048(v7, v9, 1);
  v12 = PKUIGetAppIconForApplicationRecord(v11);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE051544();
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v15 = sub_1BE0515E4();
    v14, v16, v17, v18, v19, v20, v21, v22;
    (*(v3 + 8))(v5, v2);
    sub_1BE051CD4();
    sub_1BE04E5E4();

    LOBYTE(v48[0]) = 1;
    LOBYTE(v42) = 1;
    v23 = v48[12];
    v24 = v48[13];
    v25 = v48[14];
    v26 = v48[15];
    v27 = v48[16];
    v28 = v48[17];
    v29 = 1;
    v30 = 1;
  }

  else
  {

    v15 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v30 = 0;
    v29 = 0;
  }

  v42 = v15;
  v43 = v29;
  *&v44 = v30;
  *(&v44 + 1) = v23;
  *&v45 = v24;
  *(&v45 + 1) = v25;
  *&v46 = v26;
  *(&v46 + 1) = v27;
  *(a1 + 40) = v44;
  v31 = v46;
  *(a1 + 56) = v45;
  *(a1 + 72) = v31;
  v32 = v43;
  *(a1 + 8) = v42;
  v47 = v28;
  v48[0] = v15;
  *a1 = v6;
  *(a1 + 88) = v28;
  *(a1 + 24) = v32;
  v48[1] = 0;
  v48[2] = v29;
  v48[3] = 0;
  v48[4] = v30;
  v48[5] = v23;
  v48[6] = v24;
  v48[7] = v25;
  v48[8] = v26;
  v48[9] = v27;
  v48[10] = v28;
  sub_1BE048964();
  sub_1BD0DE19C(&v42, &v41, &qword_1EBD46A50, &qword_1BE0D7B40);
  sub_1BD0DE53C(v48, &qword_1EBD46A50, &qword_1BE0D7B40);
  v6, v33, v34, v35, v36, v37, v38, v39;
}

id sub_1BD4641F8()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(MEMORY[0x1E695D098]) initWithSettings_];

  v2 = [objc_opt_self() defaultContactResolver];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_7;
  }

  v4 = v2;
  IntentPerson.pkStringHandle.getter(v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE052404();
    v7, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v8 = 0;
  }

  v16 = [v4 contactForHandle_];

  if (v16)
  {
    v17 = objc_opt_self();
    v18 = [v17 scopeWithPointSize:1 scale:0 rightToLeft:64.0 style:{64.0, PKUIScreenScale()}];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BE0B7020;
    *(v19 + 32) = v16;
    sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
    v20 = v16;
    v21 = sub_1BE052724();
    v19, v22, v23, v24, v25, v26, v27, v28;
    v29 = [v1 avatarImageForContacts:v21 scope:v18];

    swift_unknownObjectRelease();
    return v29;
  }

  else
  {
LABEL_7:
    v31 = [objc_msgSend(v1 placeholderImageProvider)];

    swift_unknownObjectRelease();
    return v31;
  }
}

id IntentPerson.pkDisplayName.getter()
{
  v0 = sub_1BE04BD74();
  v82 = *(v0 - 8);
  v83 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v74 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v74 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v74 - v6;
  v7 = sub_1BE0486E4();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469F8, &unk_1BE0D7A88);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v74 - v10;
  v12 = sub_1BE048704();
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04A704();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE048694();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0486A4();
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 == *MEMORY[0x1E6959FA0])
  {
    (*(v20 + 96))(v22, v19);
    return *v22;
  }

  if (v23 == *MEMORY[0x1E6959FA8])
  {
    (*(v20 + 96))(v22, v19);
    (*(v16 + 32))(v18, v22, v15);
    v25 = sub_1BE04A664();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v28 = 0xE000000000000000;
    if (v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    v84 = v27;
    v85 = v29;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](32, 0xE100000000000000);
    v29, v30, v31, v32, v33, v34, v35, v36;
    v38 = v84;
    v37 = v85;
    v39 = sub_1BE04A684();
    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    if (v40)
    {
      v28 = v40;
    }

    v84 = v38;
    v85 = v37;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v41, v28);
    v28, v42, v43, v44, v45, v46, v47, v48;
    v37, v49, v50, v51, v52, v53, v54, v55;
    v56 = v84;
    (*(v16 + 8))(v18, v15);
    return v56;
  }

  if (v23 != *MEMORY[0x1E6959FB8])
  {
    v64 = v82;
    v63 = v83;
    (*(v82 + 104))(v2, *MEMORY[0x1E69B8050], v83);
    result = PKPassKitBundle();
    if (result)
    {
      v65 = result;
      v56 = sub_1BE04B6F4();

      (*(v64 + 8))(v2, v63);
      (*(v20 + 8))(v22, v19);
      return v56;
    }

    __break(1u);
    goto LABEL_31;
  }

  sub_1BE048714();
  v58 = v80;
  v57 = v81;
  if ((*(v80 + 48))(v11, 1, v81) != 1)
  {
    (*(v58 + 32))(v14, v11, v57);
    v66 = v77;
    sub_1BE0486F4();
    v68 = v78;
    v67 = v79;
    v69 = (*(v78 + 88))(v66, v79);
    if (v69 == *MEMORY[0x1E695A020] || v69 == *MEMORY[0x1E695A028] || v69 == *MEMORY[0x1E695A030])
    {
      (*(v58 + 8))(v14, v57);
      (*(v68 + 96))(v66, v67);
      return *v66;
    }

    v71 = v82;
    v70 = v83;
    v72 = v75;
    (*(v82 + 104))(v75, *MEMORY[0x1E69B8050], v83);
    result = PKPassKitBundle();
    if (result)
    {
      v73 = result;
      v56 = sub_1BE04B6F4();

      (*(v71 + 8))(v72, v70);
      (*(v80 + 8))(v14, v81);
      (*(v68 + 8))(v66, v67);
      return v56;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  sub_1BD0DE53C(v11, &qword_1EBD469F8, &unk_1BE0D7A88);
  v60 = v82;
  v59 = v83;
  v61 = v76;
  (*(v82 + 104))(v76, *MEMORY[0x1E69B8050], v83);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v62 = result;
  v56 = sub_1BE04B6F4();

  (*(v60 + 8))(v61, v59);
  return v56;
}

uint64_t sub_1BD464BD0(double a1, double a2)
{
  v5 = type metadata accessor for AppleCashConfirmationSnippetView(0);
  v6 = *(v2 + *(v5 + 28));
  v7 = [v6 amount];
  v8 = [v6 currency];
  if (v8)
  {
    v9 = v8;
    sub_1BE052434();
    v11 = v10;

    v12 = *(v2 + *(v5 + 24));
    if (v12)
    {
      v13 = 5;
    }

    else
    {
      v13 = 1;
    }

    if (v11)
    {
      v14 = sub_1BE052404();
      v11, v15, v16, v17, v18, v19, v20, v21;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v12 = *(v2 + *(v5 + 24));
    if (v12)
    {
      v13 = 5;
    }

    else
    {
      v13 = 1;
    }
  }

  v22 = [objc_allocWithZone(PKPeerPaymentBubbleView) initWithAmount:v7 currency:v14 state:v13];

  if (v22)
  {
    [v22 setDisplaysCashLogo_];
    if (v12)
    {
      v23 = 1;
    }

    else
    {
      v23 = 3;
    }

    v24 = [objc_allocWithZone(PKPeerPaymentMessageBalloonView) initWithBubbleView:v22 peerPaymentType:v23];
    if (v24)
    {
      v25 = v24;
      [v24 setHasTail_];
      [v25 setFrame_];
      sub_1BD464D98(v25, a1, a2);
      v27 = v26;

      return v27;
    }
  }

  return 0;
}

void sub_1BD464D98(void *a1, double a2, double a3)
{
  sub_1BD0E5E8C(0, &qword_1EBD46A58, 0x1E69DCA80);
  v6 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v6 setScale_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v6 format:{a2, a3}];
  v8 = swift_allocObject();
  v8[2] = a1;
  v9 = swift_allocObject();
  v9[2] = sub_1BD465988;
  v9[3] = v8;
  v34[4] = sub_1BD465990;
  v35 = v9;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_1BD4883A0;
  v34[3] = &block_descriptor_98;
  v10 = _Block_copy(v34);
  v11 = v35;
  v12 = a1;
  sub_1BE048964();
  v11, v13, v14, v15, v16, v17, v18, v19;
  [v7 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();
  v8, v20, v21, v22, v23, v24, v25, v26;
  v9, v27, v28, v29, v30, v31, v32, v33;
  if (v6)
  {
    __break(1u);
  }
}

void sub_1BD464F8C(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

uint64_t IntentPerson.pkStringHandle.getter(double a1)
{
  v1 = sub_1BE0486E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469F8, &unk_1BE0D7A88);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1BE048704();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE048714();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BD0DE53C(v7, &qword_1EBD469F8, &unk_1BE0D7A88);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1BE0486F4();
    (*(v9 + 8))(v11, v8);
    v12 = (*(v2 + 88))(v4, v1);
    if (v12 == *MEMORY[0x1E695A020] || v12 == *MEMORY[0x1E695A028] || v12 == *MEMORY[0x1E695A030])
    {
      (*(v2 + 96))(v4, v1);
      return *v4;
    }

    (*(v2 + 8))(v4, v1);
  }

  return 0;
}

uint64_t static IntentPerson.pkMePerson(counterpartHandle:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469F8, &unk_1BE0D7A88);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_1BE048694();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE048674();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17 && (v18 = sub_1BE052404(), v19 = PKPeerPaymentSenderAddressForRecipientAddress(v18), v18, v19))
  {
    v20 = sub_1BE052434();
    v34 = a2;
    v22 = v21;

    (*(v13 + 104))(v16, *MEMORY[0x1E6959F90], v12);
    (*(v9 + 104))(v11, *MEMORY[0x1E6959FB8], v8);
    static IntentPerson.Handle.pkHandleFromString(_:)(v20, v22);
    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = 0;
  }

  else
  {
    (*(v13 + 104))(v16, *MEMORY[0x1E6959F90], v12, v14);
    (*(v9 + 104))(v11, *MEMORY[0x1E6959FB8], v8);
    v30 = 1;
  }

  v31 = sub_1BE048704();
  (*(*(v31 - 8) + 56))(v7, v30, 1, v31);
  v32 = sub_1BE048BB4();
  (*(*(v32 - 8) + 56))(v35, 1, 1, v32);
  return sub_1BE048684();
}

uint64_t static IntentPerson.Handle.pkHandleFromString(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0486D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[2] = a1;
  v10[3] = a2;
  v10[0] = 64;
  v10[1] = 0xE100000000000000;
  sub_1BD0DDEBC();
  v8 = sub_1BE0535F4();
  (*(v5 + 104))(v7, *MEMORY[0x1E6959FE0], v4);
  sub_1BE048C84();
  if (v8)
  {
    return sub_1BE0486C4();
  }

  else
  {
    return sub_1BE0486B4();
  }
}

void sub_1BD4657BC(uint64_t a1)
{
  sub_1BE048724();
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD43B00, 0x1E69B8780);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD4658A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD465924()
{
  result = qword_1EBD46A30;
  if (!qword_1EBD46A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46A38, &qword_1BE0D7B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46A30);
  }

  return result;
}

char *sub_1BD465998(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = a3;
  *&v3[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_tokenModel] = a3;
  type metadata accessor for InStoreTopUpTokenModel(0);
  sub_1BD291C14();
  v68 = v5;
  v7 = sub_1BE04E954();
  v9 = v8;
  v70 = 0;
  sub_1BE051694();
  LOBYTE(v5) = v71;
  v10 = v72;
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46A90, &qword_1BE0D7B88));
  type metadata accessor for ObservableHostingController();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v11 + *((*MEMORY[0x1E69E7D40] & *v11) + class metadata base offset for WrapperHostingController + 16)) = v12;
  v71 = v7;
  v72 = v9;
  v73 = v5;
  v74 = v10;
  v75 = 0;
  v76 = 0;
  v77 = v12;
  swift_retain_n();
  sub_1BE048964();
  v13 = v9;
  sub_1BD0D44B8(0, 0);
  sub_1BE048964();
  v14 = sub_1BE04F894();
  v10, v15, v16, v17, v18, v19, v20, v21;

  sub_1BD0D4744(0, 0, v22, v23, v24, v25, v26, v27);
  v12, v28, v29, v30, v31, v32, v33, v34;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC] = v14;
  *&v4[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_account] = a1;
  *&v4[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_context] = a2;
  v69.receiver = v4;
  v69.super_class = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  v35 = a1;
  v36 = objc_msgSendSuper2(&v69, sel_initWithNibName_bundle_, 0, 0);
  v37 = OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC;
  v38 = *&v36[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v36;
  v41 = v38;
  sub_1BE048964();
  v42 = sub_1BE04F8A4();
  v44 = *(v43 + 32);
  v45 = *(v43 + 40);
  *(v43 + 32) = sub_1BD466328;
  *(v43 + 40) = v39;
  sub_1BD0D4744(v44, v45, v46, v47, v48, v49, v50, v51);
  v42(&v71, 0);

  v39, v52, v53, v54, v55, v56, v57, v58;
  [v40 addChildViewController_];

  v10, v59, v60, v61, v62, v63, v64, v65;
  return v40;
}

void sub_1BD465D24()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  v53.receiver = v0;
  v53.super_class = v6;
  objc_msgSendSuper2(&v53, sel_loadView);
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC;
  v10 = [*&v1[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC] view];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v8 addSubview_];

  [*&v1[v9] didMoveToParentViewController_];
  v12 = sub_1BD85D55C();
  v14 = v13;
  v15 = [v1 navigationItem];
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1BE053834();
  v52, v16, v17, v18, v19, v20, v21, v22;
  v51 = 0x45524F54535F4E49;
  v52 = 0xEF5F454C5449545FLL;
  MEMORY[0x1BFB3F610](v12, v14);
  v14, v23, v24, v25, v26, v27, v28, v29;
  v30 = v52;
  (*(v3 + 104))(v5, *MEMORY[0x1E69B8060], v2);
  v31 = PKPassKitBundle();
  if (!v31)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v32 = v31;
  sub_1BE04B6F4();
  v34 = v33;
  v30, v33, v35, v36, v37, v38, v39, v40;

  (*(v3 + 8))(v5, v2);
  v41 = sub_1BE052404();
  v34, v42, v43, v44, v45, v46, v47, v48;
  [v15 setTitle_];

  if (!*&v1[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_context])
  {
    v49 = [v1 navigationItem];
    v50 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_dismissAction];
    [v49 setLeftBarButtonItem_];
  }
}

void sub_1BD466188(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    [v10 *a5];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD466274(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static FinanceKitPredictedTransactionsViewControllerProvider.makeViewController(pass:navigationController:)(void *a1, void *a2)
{
  v4 = type metadata accessor for FinanceKitPredictedTransactionsView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationController();
  v7 = swift_allocObject();
  v7[2] = a2;
  v8 = a1;
  v9 = a2;
  sub_1BD982048(v8, v7, v6);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46A98, &unk_1BE0D7B90));
  return sub_1BE04F894();
}

id FinanceKitPredictedTransactionsViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitPredictedTransactionsViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitPredictedTransactionsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FinanceKitPredictedTransactionsViewControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitPredictedTransactionsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD4666E0(void (*a1)(BOOL, unint64_t, unint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v91 = sub_1BD1870B8(v1, KeyPath) & 1;
  v92 = v4;
  v93 = v5;
  sub_1BD4F8958();
  if (v93[2] <= v92[2] >> 3)
  {
    sub_1BE048C84();
    sub_1BD534FE4(v93);
    v12 = v92;
  }

  else
  {
    sub_1BE048C84();
    v12 = sub_1BD2AD830(v93, v92, v6, v7, v8, v9, v10, v11);
  }

  v20 = v12[2];
  v12, v13, v14, v15, v16, v17, v18, v19;
  v21 = v1;
  sub_1BD12F66C(v91, v92, v93, v21, KeyPath);
  v93, v22, v23, v24, v25, v26, v27, v28;
  v92, v29, v30, v31, v32, v33, v34, v35;

  KeyPath, v36, v37, v38, v39, v40, v41, v42;
  v43 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
  v44 = *&v21[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod];
  if (!v44)
  {
    v45 = swift_getKeyPath();
    v46 = sub_1BD187848(v21, v45);
    v45, v47, v48, v49, v50, v51, v52, v53;
    v54 = *&v21[v43];
    *&v21[v43] = v46;

    v44 = *&v21[v43];
    if (!v44)
    {
      v68 = *&v21[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product];
      if (!v68)
      {
        v72 = swift_getKeyPath();
        v73 = sub_1BD1879C8(v21, v72);
        v72, v74, v75, v76, v77, v78, v79, v80;
        a1((v73 & 1) == 0, 0xD000000000000023, 0x80000001BE12A4D0, 2);
        return;
      }

      v90 = v68;
      v69 = [v90 configuration];
      if (!v69)
      {
        __break(1u);
        return;
      }

      v70 = v69;
      v71 = [v69 type];

      if ((v71 - 3) < 2)
      {
        v81 = swift_getKeyPath();
        v82 = sub_1BD1879C8(v21, v81);
        v81, v83, v84, v85, v86, v87, v88, v89;
        v63 = ~v82 & 1;
        v64 = 0xD000000000000023;
        v65 = 0x80000001BE12A4D0;
        goto LABEL_13;
      }

      if (v71 == 10)
      {
        v67 = " seen all privacy disclosures";
        v63 = 0xD00000000000001ELL;
      }

      else
      {
        if (v71 != 12)
        {
          v63 = v20 != 0;
          v64 = 0xD00000000000002DLL;
          goto LABEL_12;
        }

        v67 = "identity product not supported";
        v63 = 0xD000000000000029;
      }

LABEL_15:
      v64 = v67 | 0x8000000000000000;
      v65 = 0;
      v66 = 1;
      goto LABEL_16;
    }
  }

  v90 = v44;
  v55 = [v90 type];
  if (v55 > 8 || ((1 << v55) & 0x199) != 0)
  {
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD000000000000014, 0x80000001BE12A580);
    [v90 type];
    type metadata accessor for PKSetupProductMethodType(0);
    sub_1BE053974();
    a1(0, 0xE000000000000000, 0, 1);

    0xE000000000000000, v56, v57, v58, v59, v60, v61, v62;
    return;
  }

  if (((1 << v55) & 6) == 0)
  {
    v67 = "Invalid method type ";
    v63 = 0xD000000000000030;
    goto LABEL_15;
  }

  v63 = v20 != 0;
  v64 = 0xD00000000000002DLL;
LABEL_12:
  v65 = 0x80000001BE12A500;
LABEL_13:
  v66 = 2;
LABEL_16:
  a1(v63, v64, v65, v66);
}

id sub_1BD466B2C()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v213 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v211 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BAC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v211 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context];
  KeyPath = swift_getKeyPath();
  LOBYTE(aBlock) = sub_1BD1870B8(v0, KeyPath) & 1;
  v216 = v11;
  v217 = v12;
  v214 = v9;
  sub_1BD4F8958();
  v13 = v216;
  v14 = v217;
  if (*(v217 + 2) <= *(v216 + 16) >> 3)
  {
    v221 = v216;
    sub_1BE048C84();
    sub_1BD534FE4(v14);
    v221, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    sub_1BE048C84();
    v21 = sub_1BD2AD830(v14, v13, v15, v16, v17, v18, v19, v20);
    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  v36 = aBlock;
  v37 = v1;
  sub_1BD12F66C(v36, v13, v14, v37, KeyPath);
  v14, v38, v39, v40, v41, v42, v43, v44;
  v13, v45, v46, v47, v48, v49, v50, v51;

  KeyPath, v52, v53, v54, v55, v56, v57, v58;
  if (v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] == 2)
  {
    v59 = *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product];
    if (v59 && (v60 = [v59 partnerName]) != 0)
    {
      v61 = v60;
      sub_1BE052434();
      v63 = v62;
    }

    else
    {
      v79 = v213;
      (*(v213 + 104))(v4, *MEMORY[0x1E69B80C8], v2);
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v81 = result;
      sub_1BE04B6F4();
      v63 = v82;

      (*(v79 + 8))(v4, v2);
    }

    sub_1BE04BC34();
    v83 = sub_1BE04B9A4();
    (*(v6 + 8))(v8, v5);
    v84 = objc_allocWithZone(PKBarcodePaymentOnboardingViewController);
    v85 = sub_1BE052404();
    v63, v86, v87, v88, v89, v90, v91, v92;
    v66 = [v84 initWithIssuerName:v85 context:v83];

    if (v66)
    {
      sub_1BE052434();
      v94 = v93;
      v95 = v66;
      v96 = sub_1BE04BB74();
      v94, v97, v98, v99, v100, v101, v102, v103;
      [v95 setReporter_];

      v104 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v219 = sub_1BD467DFC;
      v220 = v104;
      aBlock = MEMORY[0x1E69E9820];
      v216 = 1107296256;
      v217 = sub_1BD2749B0;
      v218 = &block_descriptor_99;
      v105 = _Block_copy(&aBlock);
      v106 = v220;
      v107 = v95;
      v106, v108, v109, v110, v111, v112, v113, v114;
      [v107 setContinueHandler_];
      _Block_release(v105);
    }

    v115 = v37;
    goto LABEL_50;
  }

  LODWORD(v213) = v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style];
  v64 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v65 = sub_1BE04B9A4();
  (*(v6 + 8))(v8, v5);
  v66 = [objc_allocWithZone(PKPaymentSetupHeroViewController) initWithProvisioningController:v64 context:v65 delegate:0 product:*&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] selectedMethod:*&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] allowsManualEntry:v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry]];

  [v66 setFlowDelegate_];
  v67 = swift_getKeyPath();
  LOBYTE(aBlock) = sub_1BD1870B8(v37, v67) & 1;
  v216 = v68;
  v217 = v69;
  sub_1BD4F8958();
  v70 = v216;
  v71 = v217;
  if (*(v217 + 2) <= *(v216 + 16) >> 3)
  {
    v221 = v216;
    sub_1BE048C84();
    sub_1BD534FE4(v71);
    v78 = v221;
  }

  else
  {
    sub_1BE048C84();
    v78 = sub_1BD2AD830(v71, v70, v72, v73, v74, v75, v76, v77);
  }

  v116 = aBlock;
  v117 = v37;
  sub_1BD12F66C(v116, v70, v71, v117, v67);
  v71, v118, v119, v120, v121, v122, v123, v124;
  v70, v125, v126, v127, v128, v129, v130, v131;
  v212 = v117;

  v67, v132, v133, v134, v135, v136, v137, v138;
  if (*(v78 + 2))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v139 = sub_1BE053D64();
    v147 = -1 << v78[32];
    v148 = v139 & ~v147;
    if ((*&v78[((v148 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v148))
    {
      v149 = ~v147;
      while (1)
      {
        v150 = *(*(v78 + 6) + v148);
        v151 = 0xEE00415049506165;
        if (v150 != 1)
        {
          if (v150 != 2)
          {
            0xE400000000000000, v140, v141, v142, v143, v144, v145, v146;
            v160 = 0;
            goto LABEL_27;
          }

          v151 = 0x80000001BE117610;
        }

        v152 = sub_1BE053B84();
        v151, v153, v154, v155, v156, v157, v158, v159;
        if ((v152 & 1) == 0)
        {
          v148 = (v148 + 1) & v149;
          if ((*&v78[((v148 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v148))
          {
            continue;
          }
        }

        v160 = v152 ^ 1;
        goto LABEL_27;
      }
    }
  }

  v160 = 1;
LABEL_27:
  [v66 setHidePrivacyView_];
  if (*(v78 + 2))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v161 = sub_1BE053D64();
    v169 = -1 << v78[32];
    v170 = v161 & ~v169;
    if ((*&v78[((v170 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v170))
    {
      v171 = ~v169;
      while (1)
      {
        if (*(*(v78 + 6) + v170))
        {
          if (*(*(v78 + 6) + v170) != 1)
          {
            0x80000001BE117610, v162, v163, v164, v165, v166, v167, v168;
            v173 = 1;
            goto LABEL_38;
          }

          v172 = 0xEE00415049506165;
        }

        else
        {
          v172 = 0xE400000000000000;
        }

        v173 = sub_1BE053B84();
        v172, v174, v175, v176, v177, v178, v179, v180;
        if ((v173 & 1) == 0)
        {
          v170 = (v170 + 1) & v171;
          if ((*&v78[((v170 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v170))
          {
            continue;
          }
        }

        goto LABEL_38;
      }
    }
  }

  v173 = 0;
LABEL_38:
  [v66 setShowChinaPrivacyDisclosure_];
  if (!*(v78 + 2) || (sub_1BE053D04(), sub_1BE052524(), v188 = sub_1BE053D64(), v189 = -1 << v78[32], v190 = v188 & ~v189, ((*&v78[((v190 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v190) & 1) == 0))
  {
    v193 = 0;
    goto LABEL_49;
  }

  v191 = ~v189;
  while (!*(*(v78 + 6) + v190))
  {
    v192 = 0xE400000000000000;
LABEL_45:
    v193 = sub_1BE053B84();
    v192, v194, v195, v196, v197, v198, v199, v200;
    if ((v193 & 1) == 0)
    {
      v190 = (v190 + 1) & v191;
      if ((*&v78[((v190 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v190))
      {
        continue;
      }
    }

    goto LABEL_49;
  }

  if (*(*(v78 + 6) + v190) == 2)
  {
    v192 = 0x80000001BE117610;
    goto LABEL_45;
  }

  v78, v181, v182, v183, v184, v185, v186, v187;
  v193 = 1;
  v78 = 0xEE00415049506165;
LABEL_49:
  v78, v181, v182, v183, v184, v185, v186, v187;
  [v66 setShowSouthKoreaPrivacyDisclosure_];
  sub_1BE052434();
  v202 = v201;
  v203 = sub_1BE04BB74();
  v202, v204, v205, v206, v207, v208, v209, v210;
  [v66 setReporter_];

  [v66 setShowPaymentCardTitle_];
  v115 = v212;
LABEL_50:
  sub_1BD4674D4(v115);
  return v66;
}

void sub_1BD4674D4(void *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = a1;
  sub_1BD12F68C(1, v3, KeyPath);

  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v146 = swift_getKeyPath();
  v142 = sub_1BD1870B8(v3, v146);
  v144 = v11;
  v13 = v12;
  sub_1BE053D04();
  sub_1BE052524();
  v14 = sub_1BE053D64();
  v22 = -1 << *(v13 + 32);
  v23 = v14 & ~v22;
  if (((*(v13 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = v13;
    sub_1BD2A9690(0, v23, isUniquelyReferenced_nonNull_native, v36, v37, v38, v39, v40);
    goto LABEL_9;
  }

  v24 = ~v22;
  while (1)
  {
    v25 = *(*(v13 + 48) + v23);
    v26 = 0xEE00415049506165;
    if (v25 != 1)
    {
      break;
    }

LABEL_6:
    v27 = sub_1BE053B84();
    v26, v28, v29, v30, v31, v32, v33, v34;
    if (v27)
    {
      goto LABEL_9;
    }

    v23 = (v23 + 1) & v24;
    if (((*(v13 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v25 == 2)
  {
    v26 = 0x80000001BE117610;
    goto LABEL_6;
  }

  0xE400000000000000, v15, v16, v17, v18, v19, v20, v21;
LABEL_9:
  v41 = v3;
  sub_1BD12F66C(v142 & 1, v144, v13, v41, v146);
  v13, v42, v43, v44, v45, v46, v47, v48;
  v144, v49, v50, v51, v52, v53, v54, v55;

  v146, v56, v57, v58, v59, v60, v61, v62;
  v63 = swift_getKeyPath();
  v64 = sub_1BD1870B8(v41, v63);
  v66 = v65;
  v149 = v67;
  sub_1BD2A50F4(&v148, 2);
  v68 = v149;
  v69 = v41;
  sub_1BD12F66C(v64 & 1, v66, v68, v69, v63);
  v68, v70, v71, v72, v73, v74, v75, v76;
  v66, v77, v78, v79, v80, v81, v82, v83;

  v63, v84, v85, v86, v87, v88, v89, v90;
  v147 = swift_getKeyPath();
  v143 = sub_1BD1870B8(v69, v147);
  v145 = v91;
  v93 = v92;
  sub_1BE053D04();
  sub_1BE052524();
  v94 = sub_1BE053D64();
  v102 = -1 << *(v93 + 32);
  v103 = v94 & ~v102;
  if (((*(v93 + 56 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0)
  {
LABEL_17:
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v149 = v93;
    sub_1BD2A9690(1, v103, v114, v115, v116, v117, v118, v119);
    v93 = v149;
    goto LABEL_18;
  }

  v104 = ~v102;
  while (2)
  {
    if (!*(*(v93 + 48) + v103))
    {
      v105 = 0xE400000000000000;
LABEL_15:
      v106 = sub_1BE053B84();
      v105, v107, v108, v109, v110, v111, v112, v113;
      if (v106)
      {
        goto LABEL_18;
      }

      v103 = (v103 + 1) & v104;
      if (((*(v93 + 56 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0)
      {
        goto LABEL_17;
      }

      continue;
    }

    break;
  }

  if (*(*(v93 + 48) + v103) == 2)
  {
    v105 = 0x80000001BE117610;
    goto LABEL_15;
  }

  0xEE00415049506165, v95, v96, v97, v98, v99, v100, v101;
LABEL_18:
  v120 = v69;
  sub_1BD12F66C(v143 & 1, v145, v93, v120, v147);
  v93, v121, v122, v123, v124, v125, v126, v127;
  v145, v128, v129, v130, v131, v132, v133, v134;

  v147, v135, v136, v137, v138, v139, v140, v141;
}

void sub_1BD4678D0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  v5 = Strong;
  v6 = Strong + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = v5;
    sub_1BD8659A4(v9, &off_1F3BA7D00, ObjectType, v7);

    Strong = swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (!a1)
  {
    return;
  }

LABEL_5:
  a1(Strong);
}

uint64_t sub_1BD4679A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4679E0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD467A34(void *a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  v5 = a2;
  v6 = a1;
  sub_1BD12FDD4(a2, v6, KeyPath);

  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = *&v6[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod];
  *&v6[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = a2;
  v15 = v5;

  v16 = &v6[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v16 + 1);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v6, &off_1F3BA7D00, ObjectType, v18);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisioningHeroFlowItem.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProvisioningHeroFlowItem.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD467E04()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5[0] = [objc_opt_self() userCancelError];
    v6 = 1;
    sub_1BD865A00(v0, &off_1F3BA7D00, v5, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_1BD12FF7C(v5);
  }

  return result;
}

uint64_t sub_1BD467FC4(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BD468024(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD3F0C10;
}

void sub_1BD4680BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_1BE048C84();
  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t sub_1BD468128()
{
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_1BE048C84();
  return v2;
}

void sub_1BD468180(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  v6, v7, v8, v9, v10, v11, v12, v13;
}

id AppPrivacySettingsProvider.__allocating_init(bundleIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  v7 = &v6[OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier];
  *v7 = a1;
  *(v7 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10.receiver = v6;
  v10.super_class = v3;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectRelease();
  return v8;
}

id AppPrivacySettingsProvider.init(bundleIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v6 = &v3[OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v9.receiver = v3;
  v9.super_class = type metadata accessor for AppPrivacySettingsProvider();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();
  return v7;
}

void sub_1BD4684D0()
{
  v114 = sub_1BE04D214();
  v1 = *(v114 - 1);
  MEMORY[0x1EEE9AC00](v114);
  v3 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v107 - v9;
  v115 = v0;
  v11 = &v0[OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier];
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1BE048C84();
  v14 = sub_1BD469048(v12, v13, 0);
  v113 = v7;
  if (v14)
  {
    v114 = v14;
    v116 = MEMORY[0x1E69E7CC0];
    v37 = objc_opt_self();
    v38 = v11[1];
    sub_1BE048C84();
    v39 = sub_1BE052404();
    v38, v40, v41, v42, v43, v44, v45, v46;
    v47 = [v37 authorizationStatusForCapability:0 bundleIdentifier:v39];

    if (v47 >= 2)
    {

      return;
    }

    v48 = objc_opt_self();
    v49 = [v48 emptyGroupSpecifier];
    if (v49)
    {
      v50 = v49;
      v110 = v48;
      v51 = v5;
      v52 = *(v5 + 104);
      v112 = *MEMORY[0x1E69B80F0];
      v53 = v4;
      v111 = v52;
      v52(v10);
      v54 = PKPassKitBundle();
      if (v54)
      {
        v55 = v54;
        sub_1BE04B6F4();
        v57 = v56;

        v108 = *(v51 + 8);
        v109 = v51 + 8;
        v108(v10, v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1BE0B69E0;
        v59 = [v114 localizedName];
        v60 = sub_1BE052434();
        v62 = v61;

        *(v58 + 56) = MEMORY[0x1E69E6158];
        *(v58 + 64) = sub_1BD110550();
        *(v58 + 32) = v60;
        *(v58 + 40) = v62;
        v63 = v57;
        sub_1BE052454();
        v65 = v64;
        v66 = sub_1BE052404();
        [v50 setProperty:v66 forKey:*MEMORY[0x1E69C5900]];

        v67 = v50;
        MEMORY[0x1BFB3F7A0]();
        v68 = v113;
        if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v111(v68, v112, v53);
        v69 = PKPassKitBundle();
        if (v69)
        {
          v70 = v69;
          sub_1BE04B6F4();
          v72 = v71;

          v108(v68, v53);
          v73 = sub_1BE052404();
          v72, v74, v75, v76, v77, v78, v79, v80;
          v81 = [v110 preferenceSpecifierNamed:v73 target:v115 set:sel_setBackgroundAddAuthorization:: get:sel_backgroundAddAuthorizationWithSpecifier_ detail:0 cell:6 edit:0];

          if (v81)
          {
            v65, v82, v83, v84, v85, v86, v87, v88;
            v63, v89, v90, v91, v92, v93, v94, v95;
            v96 = v11[1];
            sub_1BE048C84();
            v97 = sub_1BE052404();
            v96, v98, v99, v100, v101, v102, v103, v104;
            v105 = sub_1BE052404();
            [v81 setProperty:v97 forKey:v105];

            v106 = v81;
            MEMORY[0x1BFB3F7A0]();
            if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BE052774();
            }

            sub_1BE0527C4();

            return;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  sub_1BE04D1C4();
  v15 = v115;
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C34();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v116 = v19;
    *v18 = 136315138;
    v21 = *v11;
    v20 = v11[1];
    sub_1BE048C84();
    v22 = sub_1BD123690(v21, v20, &v116);
    v20, v23, v24, v25, v26, v27, v28, v29;
    *(v18 + 4) = v22;
    _os_log_impl(&dword_1BD026000, v16, v17, "Failed to get application record for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19, v30, v31, v32, v33, v34, v35, v36);
    MEMORY[0x1BFB45F20](v19, -1, -1);
    MEMORY[0x1BFB45F20](v18, -1, -1);
  }

  (*(v1 + 8))(v3, v114);
}

void *sub_1BD468BB4(void *a1, void *a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE052404();
  v10 = [a2 propertyForKey_];

  if (v10)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v26[1];
      v12 = [a1 BOOLValue];
      v13 = objc_opt_self();
      v14 = sub_1BE052404();
      v11, v15, v16, v17, v18, v19, v20, v21;
      [v13 setAuthorizationForCapability:0 granted:v12 bundleIdentifier:v14];

      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result provider:v2 specifierDidChange:a2];
        return swift_unknownObjectRelease();
      }

      return result;
    }
  }

  else
  {
    sub_1BD14EC0C(v29);
  }

  sub_1BE04D1C4();
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C34();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BD026000, v23, v24, "Expected bundleID property on specifier", v25, 2u);
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

id AppPrivacySettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppPrivacySettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPrivacySettingsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD469048(uint64_t a1, void *a2, char a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BE052404();
  a2, v7, v8, v9, v10, v11, v12, v13;
  v18[0] = 0;
  v14 = [v3 initWithBundleIdentifier:v6 allowPlaceholder:a3 & 1 error:v18];

  if (v14)
  {
    v15 = v18[0];
  }

  else
  {
    v16 = v18[0];
    sub_1BE04A854();

    swift_willThrow();
  }

  return v14;
}

id sub_1BD469124(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v61 - v7;
  v9 = sub_1BE052404();
  v10 = [a1 propertyForKey_];

  if (v10)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64[0] = v62;
  v64[1] = v63;
  if (!*(&v63 + 1))
  {
    sub_1BD14EC0C(v64);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1BE04D1C4();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1BD026000, v24, v25, "Expected bundleID property on specifier", v26, 2u);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    goto LABEL_16;
  }

  v12 = v61[0];
  v11 = v61[1];
  v13 = objc_opt_self();
  v14 = sub_1BE052404();
  v15 = [v13 authorizationStatusForCapability:0 bundleIdentifier:v14];

  if (v15 + 1 < 2 || v15 == 2)
  {
    v11, v16, v17, v18, v19, v20, v21, v22;
LABEL_16:
    v23 = 0;
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v15 != 1)
  {
    sub_1BE04D1C4();
    sub_1BE048C84();
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C34();
    v11, v30, v31, v32, v33, v34, v35, v36;
    if (os_log_type_enabled(v28, v29))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v64[0] = v38;
      *v37 = 134218242;
      *(v37 + 4) = v15;
      *(v37 + 12) = 2080;
      v39 = sub_1BD123690(v12, v11, v64);
      v11, v40, v41, v42, v43, v44, v45, v46;
      *(v37 + 14) = v39;
      _os_log_impl(&dword_1BD026000, v28, v29, "Unhandled authorization status %ld for bundle %s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v38, v47, v48, v49, v50, v51, v52, v53);
      MEMORY[0x1BFB45F20](v38, -1, -1);
      MEMORY[0x1BFB45F20](v37, -1, -1);
    }

    else
    {

      v11, v54, v55, v56, v57, v58, v59, v60;
    }

    (*(v3 + 8))(v8, v2);
    goto LABEL_16;
  }

  v11, v16, v17, v18, v19, v20, v21, v22;
  v23 = 1;
  return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
}

unint64_t sub_1BD469708()
{
  result = qword_1EBD46B20;
  if (!qword_1EBD46B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD46B20);
  }

  return result;
}

void *FlightWidgetPassSnapshotView.body.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B28, &qword_1BE0D7D30);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v37 - v3;
  v5 = sub_1BE051584();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B30, &qword_1BE0D7D38);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = *v1;
  v13 = *(v12 + 24);
  if (v13)
  {
    v38 = v13;
    v14 = sub_1BE051544();
    (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
    v15 = sub_1BE0515E4();
    v14, v16, v17, v18, v19, v20, v21, v22;
    (*(v6 + 8))(v8, v5);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v40 = 1;
    *&v39[6] = v41;
    *&v39[22] = v42;
    *&v39[38] = v43;
    LOBYTE(v14) = sub_1BE0501D4();
    v40 = 0;
    v23 = &v11[*(v9 + 36)];
    v24 = *(sub_1BE04EDE4() + 20);
    v25 = *MEMORY[0x1E697F468];
    v26 = sub_1BE04F684();
    (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
    __asm { FMOV            V0.2D, #2.0 }

    *v23 = _Q0;
    *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    v32 = *&v39[16];
    *(v11 + 18) = *v39;
    *v11 = v15;
    *(v11 + 1) = 0;
    *(v11 + 8) = 1;
    *(v11 + 34) = v32;
    *(v11 + 50) = *&v39[32];
    *(v11 + 8) = *&v39[46];
    v11[72] = 0;
    v11[80] = v14;
    *(v11 + 88) = xmmword_1BE0CC930;
    __asm { FMOV            V0.2D, #-2.0 }

    *(v11 + 104) = _Q0;
    v11[120] = 0;
    sub_1BD469D08(v11, v4);
    swift_storeEnumTagMultiPayload();
    sub_1BD469B38();
    sub_1BD469CB4();
    sub_1BE04F9A4();

    return sub_1BD469D78(v11);
  }

  else
  {
    v35 = sub_1BE0513C4();
    v36 = *(v12 + 16);
    *v4 = 0xD000000000000014;
    *(v4 + 1) = 0x80000001BE12A8B0;
    *(v4 + 2) = v35;
    v4[24] = v36;
    swift_storeEnumTagMultiPayload();
    sub_1BD469B38();
    sub_1BD469CB4();
    return sub_1BE04F9A4();
  }
}

unint64_t sub_1BD469B38()
{
  result = qword_1EBD46B38;
  if (!qword_1EBD46B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46B30, &qword_1BE0D7D38);
    sub_1BD469BC4();
    sub_1BD469C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B38);
  }

  return result;
}

unint64_t sub_1BD469BC4()
{
  result = qword_1EBD46B40;
  if (!qword_1EBD46B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46B48, &qword_1BE0D7D40);
    sub_1BD275C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B40);
  }

  return result;
}

unint64_t sub_1BD469C50()
{
  result = qword_1EBD3B468;
  if (!qword_1EBD3B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FC50, &unk_1BE0B7D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B468);
  }

  return result;
}

unint64_t sub_1BD469CB4()
{
  result = qword_1EBD46B50;
  if (!qword_1EBD46B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B50);
  }

  return result;
}

uint64_t sub_1BD469D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B30, &qword_1BE0D7D38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD469D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B30, &qword_1BE0D7D38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD469DE4()
{
  result = qword_1EBD44068;
  if (!qword_1EBD44068)
  {
    type metadata accessor for FlightWidgetPassSnapshotContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44068);
  }

  return result;
}

unint64_t sub_1BD469E48(uint64_t a1)
{
  result = sub_1BD469E70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD469E70()
{
  result = qword_1EBD46B58;
  if (!qword_1EBD46B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B58);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_1BE048964();
  return a1;
}

void **__swift_assignWithCopy_strong(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1BE048964();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return a1;
}

void **__swift_assignWithTake_strong(void **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *a1;
  *a1 = *a2;
  v9, a2, a3, a4, a5, a6, a7, a8;
  return a1;
}

unint64_t sub_1BD469F9C()
{
  result = qword_1EBD46B60;
  if (!qword_1EBD46B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46B68, &unk_1BE0D7E00);
    sub_1BD469B38();
    sub_1BD469CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B60);
  }

  return result;
}

uint64_t type metadata accessor for StateMachineAuthorizationModel(uint64_t a1)
{
  result = qword_1EBD36008;
  if (!qword_1EBD36008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD46A074(uint64_t a1)
{
  sub_1BD46A518(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1BD46A174()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD46A1E8(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD46A268(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v2;
  sub_1BE048964();
  sub_1BE04D8C4();
  v3 = sub_1BD1123AC(&unk_1F3B8E168);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v28);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  sub_1BD6CF234();
  v3, v20, v21, v22, v23, v24, v25, v26;
  return sub_1BE04C914();
}

void sub_1BD46A35C()
{
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140, &unk_1BE0D42A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + qword_1EBDAAD68;
  v4 = *(v0 + qword_1EBDAAD68);
  v5 = *(v3 + 32);
  v13 = *(v3 + 24);
  *(v3 + 40), v6, v7, v8, v9, v10, v11, v12;

  swift_unknownObjectRelease();
}

uint64_t sub_1BD46A418()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  sub_1BE048964();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140, &unk_1BE0D42A0);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *&v0[qword_1EBDAAD68];
  v4 = *&v0[qword_1EBDAAD68 + 24];
  v5 = *&v0[qword_1EBDAAD68 + 32];
  v6 = *&v0[qword_1EBDAAD68 + 40];
  v0, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1BD46A518(uint64_t a1)
{
  if (!qword_1EBD368C0)
  {
    type metadata accessor for PKPaymentAuthorizationState(255);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD368C0);
    }
  }
}

id sub_1BD46A578(uint64_t a1)
{
  v2 = *a1;
  v23 = *(a1 + 8);
  v3 = *(a1 + 16);
  v22 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (v1 + qword_1EBDAAD68);
  v6 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v6;
  v5[2] = *(a1 + 32);
  swift_beginAccess();
  v21 = v3;
  v7 = v2;
  v8 = v4;
  sub_1BE048964();
  sub_1BD0DE19C(&v23, v20, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v22, v20, &qword_1EBD40150, &qword_1BE0C12A0);
  type metadata accessor for PKPaymentAuthorizationState(0);
  sub_1BE04D874();
  swift_endAccess();
  result = [v8 paymentRequest];
  if (result)
  {
    v10 = result;
    v11 = [result localizedNavigationTitle];

    if (v11)
    {
      sub_1BE052434();
    }

    v12 = sub_1BE04C8B4();
    sub_1BE048964();
    sub_1BE04C8F4();
    v12, v13, v14, v15, v16, v17, v18, v19;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD46A748(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0, 0x1E69B91E8);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WalletSettingsModel(319);
    if (v2 <= 0x3F)
    {
      sub_1BD46A80C(319);
      if (v3 <= 0x3F)
      {
        sub_1BD170C00(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD46A80C(uint64_t a1)
{
  if (!qword_1EBD46B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46B88, &qword_1BE0FDE40);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD46B80);
    }
  }
}

unint64_t sub_1BD46A884()
{
  result = qword_1EBD46B90;
  if (!qword_1EBD46B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B90);
  }

  return result;
}

void *sub_1BD46A8F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BA8, &qword_1BE0D7FB0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BB0, &qword_1BE0D7FB8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-v7];
  v9 = type metadata accessor for PaymentPassDetailsSheet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if ([*a1 passActivationState] == 1 || (v12 = *(a1 + 24), v19[16] = *(a1 + 16), v20 = v12, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BA0, &qword_1BE0D7FA8), sub_1BE0516A4(), (v19[15] & 1) != 0))
  {
    sub_1BD471B10(a1, &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassDetailsSheet);
    v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v14 = swift_allocObject();
    sub_1BD471FF8(&v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for PaymentPassDetailsSheet);
    *v8 = sub_1BD471AE0;
    v8[1] = v14;
    v8[2] = 0;
    v8[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BB8, &qword_1BE0D7FC0);
    sub_1BD4717A8();
    sub_1BD471DE8(&qword_1EBD46BC8, &qword_1EBD46BA8, &qword_1BE0D7FB0, sub_1BD47182C);
    return sub_1BE04F9A4();
  }

  else
  {
    sub_1BD46ACDC(v5);
    sub_1BD471B10(a1, &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassDetailsSheet);
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    sub_1BD471FF8(&v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16, type metadata accessor for PaymentPassDetailsSheet);
    v18 = (v5 + *(v3 + 36));
    *v18 = sub_1BD4716FC;
    v18[1] = v17;
    v18[2] = 0;
    v18[3] = 0;
    sub_1BD0DE19C(v5, v8, &qword_1EBD46BA8, &qword_1BE0D7FB0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BB8, &qword_1BE0D7FC0);
    sub_1BD4717A8();
    sub_1BD471DE8(&qword_1EBD46BC8, &qword_1EBD46BA8, &qword_1BE0D7FB0, sub_1BD47182C);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v5, &qword_1EBD46BA8, &qword_1BE0D7FB0);
  }
}

uint64_t sub_1BD46ACDC@<X0>(void *a1@<X8>)
{
  v46 = a1;
  v43 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  MEMORY[0x1EEE9AC00](v43);
  v39[0] = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C10, &qword_1BE0D7FE0);
  MEMORY[0x1EEE9AC00](v42);
  v4 = v39 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C00, &qword_1BE0D7FD8);
  MEMORY[0x1EEE9AC00](v45);
  v6 = v39 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C18, &qword_1BE0D7FE8);
  MEMORY[0x1EEE9AC00](v44);
  v8 = v39 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C20, &qword_1BE0D7FF0);
  MEMORY[0x1EEE9AC00](v40);
  v10 = v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BE8, &qword_1BE0D7FD0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = v39 - v12;
  v13 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *v1;
  v18 = [*v1 devicePrimaryPaymentApplication];
  if (v18)
  {
    v19 = v18;
    v39[1] = v11;
    v20 = [v18 state];

    v21 = *(v1 + 8);
    if (v20 == 6)
    {
      *(v16 + v13[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
      swift_storeEnumTagMultiPayload();
      *v16 = v17;
      v16[1] = v21;
      *(v16 + v13[7]) = 0;
      v32 = v16 + v13[8];
      v47 = 0;
      v33 = v17;
      sub_1BE048964();
      sub_1BE051694();
      v34 = v49;
      *v32 = v48;
      *(v32 + 1) = v34;
      sub_1BD471B10(v16, v10, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    }

    else
    {
      if (v20 != 7)
      {
        v37 = v17;
        sub_1BE048964();
        v16 = v39[0];
        sub_1BD46B54C(v37, v21, v39[0]);
        sub_1BD471B10(v16, v4, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
        swift_storeEnumTagMultiPayload();
        sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet, &unk_1BE0D80E8);
        sub_1BD471A78(&qword_1EBD46C08, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet, &unk_1BE0D8098);
        sub_1BE04F9A4();
        sub_1BD0DE19C(v6, v8, &qword_1EBD46C00, &qword_1BE0D7FD8);
        swift_storeEnumTagMultiPayload();
        sub_1BD4718B8();
        sub_1BD47198C();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v6, &qword_1EBD46C00, &qword_1BE0D7FD8);
        v36 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet;
        return sub_1BD471B78(v16, v36);
      }

      *(v16 + v13[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
      swift_storeEnumTagMultiPayload();
      *v16 = v17;
      v16[1] = v21;
      *(v16 + v13[7]) = 1;
      v22 = v16 + v13[8];
      v47 = 0;
      v23 = v17;
      sub_1BE048964();
      sub_1BE051694();
      v24 = v49;
      *v22 = v48;
      *(v22 + 1) = v24;
      sub_1BD471B10(v16, v10, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    }

    swift_storeEnumTagMultiPayload();
    sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet, &unk_1BE0D80E8);
    v35 = v41;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v35, v8, &qword_1EBD46BE8, &qword_1BE0D7FD0);
    swift_storeEnumTagMultiPayload();
    sub_1BD4718B8();
    sub_1BD47198C();
    sub_1BE04F9A4();
    v29 = v35;
    v30 = &qword_1EBD46BE8;
    v31 = &qword_1BE0D7FD0;
  }

  else
  {
    v25 = *(v1 + 8);
    *(v16 + v13[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
    swift_storeEnumTagMultiPayload();
    *v16 = v17;
    v16[1] = v25;
    *(v16 + v13[7]) = 0;
    v26 = v16 + v13[8];
    v47 = 0;
    v27 = v17;
    sub_1BE048964();
    sub_1BE051694();
    v28 = v49;
    *v26 = v48;
    *(v26 + 1) = v28;
    sub_1BD471B10(v16, v4, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    swift_storeEnumTagMultiPayload();
    sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet, &unk_1BE0D80E8);
    sub_1BD471A78(&qword_1EBD46C08, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet, &unk_1BE0D8098);
    sub_1BE04F9A4();
    sub_1BD0DE19C(v6, v8, &qword_1EBD46C00, &qword_1BE0D7FD8);
    swift_storeEnumTagMultiPayload();
    sub_1BD4718B8();
    sub_1BD47198C();
    sub_1BE04F9A4();
    v29 = v6;
    v30 = &qword_1EBD46C00;
    v31 = &qword_1BE0D7FD8;
  }

  sub_1BD0DE53C(v29, v30, v31);
  v36 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet;
  return sub_1BD471B78(v16, v36);
}

double sub_1BD46B4F0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BA0, &qword_1BE0D7FA8);
  sub_1BE0516B4();
  return result;
}

void sub_1BD46B54C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BE051694();
  *(a3 + 8) = v26;
  *(a3 + 16) = v27;
  v6 = *(type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0) + 36);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  v7 = WalletSettingsModel.transactionsModelForPass(pass:)(a1);
  *a3 = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v7;
  KeyPath = swift_getKeyPath();
  sub_1BD471A78(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  v9 = v7;
  v10 = a1;
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;

  v18 = a2[6];
  sub_1BE048964();
  a2, v19, v20, v21, v22, v23, v24, v25;
  *(a3 + 40) = v18;
}

uint64_t sub_1BD46B6BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1BD46A8F4(v2);
  sub_1BD471B10(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1BD471FF8(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PaymentPassDetailsSheet);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B98, &qword_1BE0D7FA0);
  v9 = (a2 + *(result + 36));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = sub_1BD46B7FC;
  v9[3] = v7;
  return result;
}

id sub_1BD46B82C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v59 = v2;
  v60 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BE04ECF4();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D28, &qword_1BE0D81E8);
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v7 = &v51 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D30, &qword_1BE0D81F0);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v9 = &v51 - v8;
  v66 = v1;
  v54 = v1;
  v65 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D38, &qword_1BE0D81F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D40, &qword_1BE0D8200);
  v10 = MEMORY[0x1E6981F48];
  v11 = v59;
  sub_1BD0DE4F4(&qword_1EBD46D48, &qword_1EBD46D38, &qword_1BE0D81F8, MEMORY[0x1E6981F48]);
  v12 = v57;
  v13 = v60;
  sub_1BD0DE4F4(&qword_1EBD46D50, &qword_1EBD46D40, &qword_1BE0D8200, v10);
  sub_1BE050494();
  v14 = v58;
  sub_1BE051DD4();
  v15 = sub_1BD0DE4F4(&qword_1EBD46D58, &qword_1EBD46D28, &qword_1BE0D81E8, MEMORY[0x1E697CCF0]);
  v16 = sub_1BD471A78(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
  v52 = v9;
  v18 = v63;
  v17 = v64;
  sub_1BE051134();
  (v62[1])(v14, v17);
  (*(v61 + 8))(v7, v18);
  (*(v13 + 104))(v12, *MEMORY[0x1E69B80F0], v11);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v13 + 8))(v12, v11);
    v73 = v21;
    v74 = v23;
    v24 = *(v54 + 16);
    v71 = *(v54 + 8);
    v72 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    v25 = sub_1BE0516C4();
    v62 = &v51;
    v26 = v67;
    v27 = v68;
    MEMORY[0x1EEE9AC00](v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CB0, &unk_1BE0D8168);
    v67 = v63;
    v68 = v64;
    v69 = v15;
    v70 = v16;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD46CB8, &qword_1EBD46CB0, &unk_1BE0D8168, MEMORY[0x1E6981F48]);
    v28 = v55;
    v29 = v52;
    sub_1BE050F44();
    v23, v30, v31, v32, v33, v34, v35, v36;
    v27, v37, v38, v39, v40, v41, v42, v43;
    v26, v44, v45, v46, v47, v48, v49, v50;
    return (*(v53 + 8))(v29, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD46BE64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D68, &qword_1BE0D8210);
  MEMORY[0x1EEE9AC00](v112);
  v5 = &v94 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D70, &qword_1BE0D8218);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v94 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D78, &qword_1BE0D8220);
  MEMORY[0x1EEE9AC00](v111);
  v110 = (&v94 - v9);
  v10 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  v105 = *(v10 - 8);
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for AppleCardDetailsSheet(0);
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = (&v94 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D80, &qword_1BE0D8228);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v94 - v19;
  v21 = *(a1 + 24);
  v22 = *a1;
  sub_1BE048964();
  v113 = v22;
  if ([v22 isAppleCardPass])
  {
    if (PKAppleCardMacTransactionHistoryEnabled())
    {
      v103 = v21;
      v23 = v20;
      v24 = v17;
      v25 = v8;
      v26 = v11;
      v27 = a2;
      v28 = *(a1 + 32);
      KeyPath = swift_getKeyPath();
      v104 = v6;
      v30 = KeyPath;
      v115 = v28;
      sub_1BD471A78(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
      sub_1BE04B594();
      v30, v31, v32, v33, v34, v35, v36, v37;
      v102 = v28;
      v38 = *&v28[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account];
      a2 = v27;
      v39 = v26;
      v8 = v25;
      v17 = v24;
      v20 = v23;
      v21 = v103;
      if (v38)
      {
        v40 = v38;
        if ([v40 accessLevel] == 1)
        {
          v41 = [v40 creditDetails];
          v101 = v40;
          if (v41)
          {
            v42 = v41;
            v43 = [v41 accountSummary];
            if (!v43)
            {
LABEL_21:

              goto LABEL_22;
            }

            v44 = v43;
            v45 = [v43 pastDueAmount];
            if (v45)
            {
              v97 = v39;
              v98 = v44;
              v46 = v45;
              v47 = [objc_opt_self() zero];
              sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
              v100 = v46;
              v48 = sub_1BE053074();

              if (v48)
              {

                v99 = 0;
                v100 = 0;
LABEL_23:
                v69 = v106;
                sub_1BD471B10(a1, v106, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
                v70 = (*(v105 + 80) + 16) & ~*(v105 + 80);
                v71 = swift_allocObject();
                sub_1BD471FF8(v69, v71 + v70, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
                v72 = swift_getKeyPath();
                v73 = v109;
                *v109 = v72;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
                swift_storeEnumTagMultiPayload();
                v74 = v107;
                v75 = v113;
                *(v73 + v107[5]) = v113;
                v76 = (v73 + v74[6]);
                *v76 = sub_1BD4726AC;
                v76[1] = v71;
                v77 = (v73 + v74[7]);
                v78 = v101;
                v114 = v101;
                v105 = sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
                v79 = v75;
                sub_1BE048964();
                v106 = v78;
                v80 = v102;
                sub_1BE051694();
                v81 = v116;
                *v77 = v115;
                v77[1] = v81;
                *(v73 + v74[8]) = v80;
                *(v73 + v74[9]) = v21;
                v82 = v108;
                sub_1BD471B10(v73, v108, type metadata accessor for AppleCardDetailsSheet);
                v83 = v110;
                v84 = v100;
                *v110 = v99;
                *(v83 + 8) = v84;
                v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DA0, &qword_1BE0D8260);
                sub_1BD471B10(v82, v83 + *(v85 + 48), type metadata accessor for AppleCardDetailsSheet);
                sub_1BE048C84();
                v107 = type metadata accessor for AppleCardDetailsSheet;
                sub_1BD471B78(v82, type metadata accessor for AppleCardDetailsSheet);
                v84, v86, v87, v88, v89, v90, v91, v92;
                sub_1BD0DE19C(v83, v8, &qword_1EBD46D78, &qword_1BE0D8220);
                swift_storeEnumTagMultiPayload();
                v93 = MEMORY[0x1E6981F48];
                sub_1BD0DE4F4(&qword_1EBD46D88, &qword_1EBD46D78, &qword_1BE0D8220, MEMORY[0x1E6981F48]);
                sub_1BD0DE4F4(&qword_1EBD46D90, &qword_1EBD46D68, &qword_1BE0D8210, v93);
                sub_1BE04F9A4();

                sub_1BD0DE53C(v83, &qword_1EBD46D78, &qword_1BE0D8220);
                sub_1BD471B78(v73, v107);
                goto LABEL_12;
              }

              v60 = [v42 currencyCode];
              v61 = v98;
              if (v60)
              {
                v62 = v60;
                v63 = v100;
                v95 = PKCurrencyAmountCreate(v63, v62);
                v96 = v63;

                if (v95)
                {
                  v64 = v95;
                  v65 = [v95 minimalFormattedStringValue];
                  v66 = v98;
                  if (v65)
                  {
                    v67 = v65;
                    v99 = sub_1BE052434();
                    v100 = v68;

                    goto LABEL_23;
                  }

                  goto LABEL_21;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

LABEL_22:
          v99 = 0;
          v100 = 0;
          goto LABEL_23;
        }
      }
    }
  }

  sub_1BD46C7E8(v5);
  sub_1BD0DE19C(v5, v8, &qword_1EBD46D68, &qword_1BE0D8210);
  swift_storeEnumTagMultiPayload();
  v49 = MEMORY[0x1E6981F48];
  sub_1BD0DE4F4(&qword_1EBD46D88, &qword_1EBD46D78, &qword_1BE0D8220, MEMORY[0x1E6981F48]);
  sub_1BD0DE4F4(&qword_1EBD46D90, &qword_1EBD46D68, &qword_1BE0D8210, v49);
  sub_1BE04F9A4();
  sub_1BD0DE53C(v5, &qword_1EBD46D68, &qword_1BE0D8210);
LABEL_12:
  sub_1BD0DE19C(v20, v17, &qword_1EBD46D80, &qword_1BE0D8228);
  v50 = v113;
  *a2 = v113;
  *(a2 + 8) = v21;
  *(a2 + 16) = 1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D98, &qword_1BE0D8230);
  sub_1BD0DE19C(v17, a2 + *(v51 + 48), &qword_1EBD46D80, &qword_1BE0D8228);
  v52 = v50;
  sub_1BE048964();
  sub_1BD0DE53C(v20, &qword_1EBD46D80, &qword_1BE0D8228);
  sub_1BD0DE53C(v17, &qword_1EBD46D80, &qword_1BE0D8228);
  v21, v53, v54, v55, v56, v57, v58, v59;
}

uint64_t sub_1BD46C7E8@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v3 = type metadata accessor for SettingsTransactionSection(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DA8, &unk_1BE0D8268);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB30, &unk_1BE0C2320);
  v46 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v51 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DB0, &qword_1BE0D8278);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v53 = v2;
  sub_1BD472618();
  v48 = v19;
  sub_1BE051A44();
  v52 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB90, &qword_1BE0D8280);
  sub_1BD0DE4F4(&qword_1EBD3DB98, &qword_1EBD3DB90, &qword_1BE0D8280, MEMORY[0x1E6981F48]);
  v50 = v15;
  sub_1BE051A44();
  v20 = *v2;
  if (([*v2 supportsFPANNotifications] & 1) != 0 || objc_msgSend(v20, sel_supportsDPANNotifications))
  {
    v21 = *(v2 + 32);
    *v6 = v20;
    type metadata accessor for TransactionsModel(0);
    sub_1BD471A78(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    v22 = v20;
    v23 = v21;
    sub_1BE051A94();
    *(v6 + *(v3 + 24)) = 0;
    sub_1BD471FF8(v6, v11, type metadata accessor for SettingsTransactionSection);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = *(v4 + 56);
  v41 = v11;
  v25(v11, v24, 1, v3);
  v26 = v43;
  v27 = *(v43 + 16);
  v28 = v49;
  v29 = v45;
  v27(v49, v48, v45);
  v30 = v46;
  v40 = *(v46 + 16);
  v31 = v42;
  v40(v51, v50, v42);
  v32 = v11;
  v33 = v44;
  sub_1BD0DE19C(v32, v44, &qword_1EBD46DA8, &unk_1BE0D8268);
  v34 = v47;
  v27(v47, v28, v29);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DC0, &qword_1BE0D8288);
  v36 = v51;
  v40(&v34[*(v35 + 48)], v51, v31);
  sub_1BD0DE19C(v33, &v34[*(v35 + 64)], &qword_1EBD46DA8, &unk_1BE0D8268);
  sub_1BD0DE53C(v41, &qword_1EBD46DA8, &unk_1BE0D8268);
  v37 = *(v30 + 8);
  v37(v50, v31);
  v38 = *(v26 + 8);
  v38(v48, v29);
  sub_1BD0DE53C(v33, &qword_1EBD46DA8, &unk_1BE0D8268);
  v37(v36, v31);
  return (v38)(v49, v29);
}

uint64_t sub_1BD46CD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  sub_1BD471B10(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1BD471FF8(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  sub_1BE051704();
  sub_1BE052434();
  v19 = v18;
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v19, v20, v21, v22, v23, v24, v25, v26;
  (*(v7 + 8))(v9, v6);
  sub_1BD0DE19C(v15, v12, &unk_1EBD45200, &qword_1BE0BB900);
  v27 = v31;
  sub_1BD0DE19C(v12, v31, &unk_1EBD45200, &qword_1BE0BB900);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D60, &qword_1BE0D8208) + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_1BD0DE53C(v15, &unk_1EBD45200, &qword_1BE0BB900);
  return sub_1BD0DE53C(v12, &unk_1EBD45200, &qword_1BE0BB900);
}

id sub_1BD46D0D0@<X0>(uint64_t a1@<X8>)
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