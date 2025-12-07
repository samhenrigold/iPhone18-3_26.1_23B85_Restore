uint64_t sub_24BA9046C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24BAA89FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_24B8F3208(v2 + *(a1 + 36), &v15 - v10, &qword_27F063A08, &qword_24BAAD880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24BAA8B9C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_24BAAA2BC();
    v14 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24BA9067C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B230, &qword_24BABED90);
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  v80 = &v75 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B238, &qword_24BABED98);
  v6 = MEMORY[0x28223BE20](v91);
  v83 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v75 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B240, &qword_24BABEDA0);
  MEMORY[0x28223BE20](v89);
  v90 = &v75 - v9;
  v10 = sub_24BAA8FBC();
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10);
  v85 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B248, &qword_24BABEDA8);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B250, &qword_24BABEDB0);
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B258, &qword_24BABEDB8);
  v18 = MEMORY[0x28223BE20](v88);
  v78 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v79 = &v75 - v20;
  v21 = sub_24BAA8B9C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1;
  v26 = a1;
  v27 = v2;
  sub_24BA9046C(v26, v24);
  v28 = sub_24BAA8B8C();
  (*(v22 + 8))(v24, v21);
  if (v28)
  {
    *v14 = sub_24BAA8BDC();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B2B0, &unk_24BABEDE0);
    sub_24BA90F90(v27, *(v25 + 16), *(v25 + 24), &v14[*(v29 + 44)]);
    v30 = sub_24BAA90AC();
    sub_24BAA828C();
    v31 = &v14[*(v12 + 36)];
    *v31 = v30;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    v36 = v85;
    sub_24BAA8FAC();
    v37 = sub_24BA92C7C();
    sub_24BAA95FC();
    (*(v86 + 8))(v36, v87);
    sub_24B8F35E4(v14, &qword_27F06B248, &qword_24BABEDA8);
    v99[0] = v12;
    v99[1] = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v78;
    v39 = v77;
    sub_24BAA94DC();
    (*(v76 + 8))(v17, v39);
    sub_24BA91CE8(v25);
    v99[0] = v40;
    v99[1] = v41;
    sub_24B8F5E3C();
    v42 = sub_24BAA93CC();
    v44 = v43;
    LOBYTE(v39) = v45;
    v46 = v79;
    sub_24BAA858C();
    sub_24B900910(v42, v44, v39 & 1);

    v47 = &qword_27F06B258;
    v48 = &qword_24BABEDB8;
    sub_24B8F35E4(v38, &qword_27F06B258, &qword_24BABEDB8);
    sub_24B8F3208(v46, v90, &qword_27F06B258, &qword_24BABEDB8);
    swift_storeEnumTagMultiPayload();
    sub_24BA92B84();
    sub_24BA92D34();
    sub_24BAA8D0C();
    v49 = v46;
  }

  else
  {
    v50 = sub_24BAA8AAC();
    v95 = 0;
    sub_24BA91F78(v27, *(v25 + 16), *(v25 + 24), v99);
    memcpy(v97, v99, 0x131uLL);
    memcpy(v98, v99, 0x131uLL);
    sub_24B8F3208(v97, v93, &qword_27F06B260, &qword_24BABEDC0);
    sub_24B8F35E4(v98, &qword_27F06B260, &qword_24BABEDC0);
    memcpy(&v94[7], v97, 0x131uLL);
    v51 = v95;
    v52 = sub_24BAA911C();
    sub_24BAA828C();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v96 = 0;
    v93[0] = v50;
    v93[1] = 0;
    LOBYTE(v93[2]) = v51;
    memcpy(&v93[2] + 1, v94, 0x138uLL);
    LOBYTE(v93[42]) = v52;
    v93[43] = v54;
    v93[44] = v56;
    v93[45] = v58;
    v93[46] = v60;
    LOBYTE(v93[47]) = 0;
    v61 = v85;
    sub_24BAA8FAC();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B268, &qword_24BABEDC8);
    v63 = sub_24BA92ACC();
    v64 = v80;
    sub_24BAA95FC();
    (*(v86 + 8))(v61, v87);
    memcpy(v99, v93, 0x179uLL);
    sub_24B8F35E4(v99, &qword_27F06B268, &qword_24BABEDC8);
    v93[0] = v62;
    v93[1] = v63;
    swift_getOpaqueTypeConformance2();
    v65 = v83;
    v66 = v82;
    sub_24BAA94DC();
    (*(v81 + 8))(v64, v66);
    sub_24BA91CE8(v25);
    v93[0] = v67;
    v93[1] = v68;
    sub_24B8F5E3C();
    v69 = sub_24BAA93CC();
    v71 = v70;
    LOBYTE(v62) = v72;
    v73 = v84;
    sub_24BAA858C();
    sub_24B900910(v69, v71, v62 & 1);

    v47 = &qword_27F06B238;
    v48 = &qword_24BABED98;
    sub_24B8F35E4(v65, &qword_27F06B238, &qword_24BABED98);
    sub_24B8F3208(v73, v90, &qword_27F06B238, &qword_24BABED98);
    swift_storeEnumTagMultiPayload();
    sub_24BA92B84();
    sub_24BA92D34();
    sub_24BAA8D0C();
    v49 = v73;
  }

  return sub_24B8F35E4(v49, v47, v48);
}

uint64_t sub_24BA90F90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v7 = sub_24BAAA3FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0647B8, &unk_24BAAF270);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v66 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  *v15 = sub_24BAA8AAC();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0647C0, &qword_24BABEDF0) + 44);
  v55 = v15;
  sub_24BA9162C(a1, a2, a3, &v15[v16]);
  v18 = type metadata accessor for TriggerRowView(0, a2, a3, v17);
  if (*(a1 + *(v18 + 52) + 8))
  {
    v65 = sub_24BAA8AAC();
    LOBYTE(v67[0]) = 1;
    v19.n128_f64[0] = sub_24BA91B4C(&v90);
    v63 = v91;
    v64 = v90;
    v61 = v93;
    v62 = v92;
    v59 = v95;
    v60 = v94;
    v57 = v97;
    v58 = v96;
    v56 = v98;
    v54 = LOBYTE(v67[0]);
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v56 = 0;
    v54 = 0;
  }

  (*(v8 + 16))(v10, a1 + *(v18 + 40), v7, v19);
  v20 = *(a2 - 8);
  if ((*(v20 + 48))(v10, 1, a2) == 1)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = (*(a3 + 48))(a2, a3);
    (*(v20 + 8))(v10, a2);
    if (v21)
    {
      if (qword_27F063110 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  if (qword_27F063110 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:
  v90 = sub_24BAA7C2C();
  v91 = v22;
  sub_24B8F5E3C();
  v23 = sub_24BAA93CC();
  v48 = v23;
  v49 = v24;
  v26 = v25;
  v28 = v27;
  v29 = v24;
  KeyPath = swift_getKeyPath();
  v30 = sub_24BAA989C();
  v51 = swift_getKeyPath();
  v105 = v28 & 1;
  v103 = 0;
  v50 = swift_getKeyPath();
  v31 = v66;
  sub_24B8F3208(v55, v66, &qword_27F0647B8, &unk_24BAAF270);
  v32 = v31;
  v33 = v53;
  sub_24B8F3208(v32, v53, &qword_27F0647B8, &unk_24BAAF270);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B2B8, &qword_24BABEE88);
  v35 = (v33 + *(v34 + 48));
  v67[0] = v65;
  v67[1] = 0;
  *&v68 = v54;
  *(&v68 + 1) = v64;
  *&v69 = v63;
  *(&v69 + 1) = v62;
  *&v70 = v61;
  *(&v70 + 1) = v60;
  *&v71[0] = v59;
  *(&v71[0] + 1) = v58;
  *&v71[1] = v57;
  BYTE8(v71[1]) = v56;
  v36 = v68;
  *v35 = v65;
  v35[1] = v36;
  v37 = v70;
  v35[2] = v69;
  v35[3] = v37;
  v35[4] = v71[0];
  *(v35 + 73) = *(v71 + 9);
  v38 = v33 + *(v34 + 64);
  *&v72 = v23;
  *(&v72 + 1) = v26;
  v39 = v26;
  LOBYTE(v73) = v28 & 1;
  DWORD1(v73) = *&v104[3];
  *(&v73 + 1) = *v104;
  v40 = v51;
  v41 = KeyPath;
  *(&v73 + 1) = v29;
  *&v74 = KeyPath;
  *(&v74 + 1) = 1;
  LOBYTE(v75) = 0;
  DWORD1(v75) = *&v102[3];
  *(&v75 + 1) = *v102;
  *(&v75 + 1) = v51;
  *&v76 = v30;
  v42 = v50;
  *(&v76 + 1) = v50;
  v77 = 2;
  v43 = v74;
  v44 = v75;
  v45 = v76;
  *(v38 + 80) = 2;
  *(v38 + 48) = v44;
  *(v38 + 64) = v45;
  v46 = v72;
  *(v38 + 16) = v73;
  *(v38 + 32) = v43;
  *v38 = v46;
  sub_24B8F3208(v67, &v90, &qword_27F06B2C0, &qword_24BABEE90);
  sub_24B8F3208(&v72, &v90, &qword_27F06B2C8, &qword_24BABEE98);
  sub_24B8F35E4(v55, &qword_27F0647B8, &unk_24BAAF270);
  v78[0] = v48;
  v78[1] = v39;
  v79 = v28 & 1;
  *v80 = *v104;
  *&v80[3] = *&v104[3];
  v81 = v49;
  v82 = v41;
  v83 = 1;
  v84 = 0;
  *v85 = *v102;
  *&v85[3] = *&v102[3];
  v86 = v40;
  v87 = v30;
  v88 = v42;
  v89 = 2;
  sub_24B8F35E4(v78, &qword_27F06B2C8, &qword_24BABEE98);
  v90 = v65;
  v91 = 0;
  v92 = v54;
  v93 = v64;
  v94 = v63;
  v95 = v62;
  v96 = v61;
  v97 = v60;
  v98 = v59;
  v99 = v58;
  v100 = v57;
  v101 = v56;
  sub_24B8F35E4(&v90, &qword_27F06B2C0, &qword_24BABEE90);
  return sub_24B8F35E4(v66, &qword_27F0647B8, &unk_24BAAF270);
}

uint64_t sub_24BA9162C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F38, &qword_24BAAE200);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v64 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F40, &qword_24BAAE208);
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F48, &qword_24BAAE210);
  v15 = MEMORY[0x28223BE20](v14);
  v66 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  MEMORY[0x28223BE20](v17);
  v65 = &v64 - v20;
  v22 = type metadata accessor for TriggerRowView(0, a2, a3, v21);

  v23 = sub_24BAA994C();
  v24 = *(v8 + 44);
  *(v10 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
  swift_storeEnumTagMultiPayload();
  *v10 = v23;
  if (*a1)
  {

    v25 = sub_24B991A94();

    KeyPath = swift_getKeyPath();
    sub_24B90294C(v10, v13, &qword_27F063F38, &qword_24BAAE200);
    v27 = &v13[*(v11 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    LOBYTE(KeyPath) = sub_24BAA910C();
    sub_24BAA828C();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_24B90294C(v13, v19, &qword_27F063F40, &qword_24BAAE208);
    v36 = &v19[*(v14 + 36)];
    *v36 = KeyPath;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = v65;
    sub_24B90294C(v19, v65, &qword_27F063F48, &qword_24BAAE210);
    v38 = (a1 + *(v22 + 48));
    v39 = v38[1];
    v68 = *v38;
    v69 = v39;
    sub_24B8F5E3C();

    v40 = sub_24BAA93CC();
    v42 = v41;
    v44 = v43;
    sub_24BAA916C();
    v45 = sub_24BAA939C();
    v47 = v46;
    v49 = v48;

    sub_24B900910(v40, v42, v44 & 1);

    sub_24BAA988C();
    v50 = sub_24BAA933C();
    v52 = v51;
    v54 = v53;
    v56 = v55;

    sub_24B900910(v45, v47, v49 & 1);

    v57 = swift_getKeyPath();
    v58 = v66;
    sub_24B8F3208(v37, v66, &qword_27F063F48, &qword_24BAAE210);
    v59 = v67;
    sub_24B8F3208(v58, v67, &qword_27F063F48, &qword_24BAAE210);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0647D8, &qword_24BAAF330);
    v61 = v59 + *(v60 + 48);
    *v61 = v50;
    *(v61 + 8) = v52;
    *(v61 + 16) = v54 & 1;
    *(v61 + 24) = v56;
    *(v61 + 32) = v57;
    *(v61 + 40) = 0;
    *(v61 + 48) = 1;
    v62 = v59 + *(v60 + 64);
    *v62 = 0;
    *(v62 + 8) = 1;
    sub_24B8F319C(v50, v52, v54 & 1);

    sub_24B8F35E4(v37, &qword_27F063F48, &qword_24BAAE210);
    sub_24B900910(v50, v52, v54 & 1);

    return sub_24B8F35E4(v58, &qword_27F063F48, &qword_24BAAE210);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24BA9342C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

double sub_24BA91B4C@<D0>(uint64_t a3@<X8>)
{
  sub_24B8F5E3C();

  v4 = sub_24BAA93CC();
  v6 = v5;
  v8 = v7;
  sub_24BAA927C();
  v9 = sub_24BAA939C();
  v11 = v10;
  v13 = v12;

  sub_24B900910(v4, v6, v8 & 1);

  sub_24BAA989C();
  v14 = sub_24BAA933C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_24B900910(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v20;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  sub_24B8F319C(v14, v16, v18 & 1);

  sub_24B900910(v14, v16, v18 & 1);

  return result;
}

void sub_24BA91CE8(uint64_t a1)
{
  v3 = sub_24BAA8B9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24BA9046C(a1, v6);
  sub_24BAA8B8C();
  (*(v4 + 8))(v6, v3);
  v7 = sub_24BA92E2C(a1);
  v9 = *(v1 + *(a1 + 52));
  v8 = *(v1 + *(a1 + 52) + 8);
  v10 = (v1 + *(a1 + 48));
  v11 = v10[1];
  v24[6] = *v10;
  v24[7] = v11;
  v24[8] = v9;
  v24[9] = v8;
  v24[10] = v7;
  v24[11] = v12;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
LABEL_2:
  if (v13 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 + 1;
  v17 = 16 * v13 + 40;
  while (1)
  {
    if (v13 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A10, qword_24BAB3020);
      swift_arrayDestroy();
      v24[1] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066A30, &unk_24BAB4ED0);
      sub_24B8F384C(&qword_27F06B2D0, &unk_27F066A30, &unk_24BAB4ED0, MEMORY[0x277D83958]);
      sub_24BAA9F3C();

      return;
    }

    if (v16 == ++v13)
    {
      break;
    }

    v18 = v17 + 16;
    v19 = *(&v24[2] + v17);
    v17 += 16;
    if (v19)
    {
      v20 = *(&v24[-1] + v18);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_24B99A290(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_24B99A290((v21 > 1), v22 + 1, 1, v14);
      }

      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_24BA91F78@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24BAAA3FC();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = a3;
  v13 = type metadata accessor for TriggerRowView(0, a2, a3, v12);
  v14 = &a1[*(v13 + 44)];
  v15 = *(v14 + 1);
  if (*a1)
  {
    *&v62 = *v14;
    *(&v62 + 1) = v15;

    v16 = sub_24B991A94();

    if (v16)
    {
      v61 = v16;
    }

    else
    {
      v61 = sub_24BAA974C();
    }

    v60 = sub_24BAA910C();
    sub_24BAA828C();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v120 = 0;
    v59 = sub_24BAA8BDC();
    LOBYTE(v83[0]) = 1;
    sub_24BA92748(a1, a2, a3, v25, &v95);
    v116 = *&v96[6];
    v117[0] = *&v96[8];
    *(v117 + 9) = *(&v96[9] + 1);
    v112 = v95;
    v113 = *v96;
    v115 = *&v96[4];
    v114 = *&v96[2];
    v118[0] = v95;
    v118[1] = *v96;
    v118[2] = *&v96[2];
    v118[3] = *&v96[4];
    v118[4] = *&v96[6];
    v119[0] = *&v96[8];
    *(v119 + 9) = *(&v96[9] + 1);
    sub_24B8F3208(&v112, v75, &qword_27F06B2D8, &unk_24BABEEA0);
    sub_24B8F35E4(v118, &qword_27F06B2D8, &unk_24BABEEA0);
    *(&v110[3] + 7) = v115;
    *(&v110[4] + 7) = v116;
    *(&v110[5] + 7) = v117[0];
    v110[6] = *(v117 + 9);
    *(v110 + 7) = v112;
    *(&v110[1] + 7) = v113;
    *(&v110[2] + 7) = v114;
    v58 = LOBYTE(v83[0]);
    v27 = v56;
    v26 = v57;
    (*(v56 + 16))(v10, &a1[*(v13 + 40)], v57);
    v28 = *(a2 - 8);
    if ((*(v28 + 48))(v10, 1, a2) == 1)
    {
      (*(v27 + 8))(v10, v26);
    }

    else
    {
      v29 = (*(v11 + 48))(a2, v11);
      (*(v28 + 8))(v10, a2);
      if (v29)
      {
        if (qword_27F063110 == -1)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }
    }

    if (qword_27F063110 == -1)
    {
LABEL_11:
      *&v95 = sub_24BAA7C2C();
      *(&v95 + 1) = v30;
      sub_24B8F5E3C();
      v31 = sub_24BAA93CC();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      KeyPath = swift_getKeyPath();
      v39 = sub_24BAA989C();
      v40 = swift_getKeyPath();
      v35 &= 1u;
      v109 = v35;
      v107 = 0;
      v41 = swift_getKeyPath();
      v70 = v62;
      *&v71 = v61;
      BYTE8(v71) = v60;
      *(&v71 + 9) = *v111;
      HIDWORD(v71) = *&v111[3];
      *&v72 = v18;
      *(&v72 + 1) = v20;
      *&v73 = v22;
      *(&v73 + 1) = v24;
      v74 = 0;
      LOBYTE(v69[0]) = 0;
      v67 = v72;
      v68 = v73;
      v65 = v62;
      v66 = v71;
      v75[0] = v59;
      v75[1] = 0;
      v76[0] = v58;
      *&v76[33] = v110[2];
      *&v76[17] = v110[1];
      *&v76[1] = v110[0];
      *&v76[97] = v110[6];
      *&v76[81] = v110[5];
      *&v76[65] = v110[4];
      *&v76[49] = v110[3];
      *(v69 + 8) = v59;
      *(&v69[4] + 8) = *&v76[48];
      *(&v69[3] + 8) = *&v76[32];
      *(&v69[2] + 8) = *&v76[16];
      *(&v69[1] + 8) = *v76;
      BYTE8(v69[8]) = HIBYTE(v110[6]);
      *(&v69[7] + 8) = *&v76[96];
      *(&v69[6] + 8) = *&v76[80];
      *(&v69[5] + 8) = *&v76[64];
      v64 = 1;
      *&v77 = v31;
      *(&v77 + 1) = v33;
      LOBYTE(v78) = v35;
      *(&v78 + 1) = *v108;
      DWORD1(v78) = *&v108[3];
      *(&v78 + 1) = v37;
      *&v79 = KeyPath;
      *(&v79 + 1) = 1;
      LOBYTE(v80) = 0;
      *(&v80 + 1) = *v106;
      DWORD1(v80) = *&v106[3];
      *(&v80 + 1) = v40;
      *&v81 = v39;
      *(&v81 + 1) = v41;
      v82 = 2;
      v63[87] = 2;
      *&v63[71] = v81;
      *&v63[55] = v80;
      *&v63[39] = v79;
      *&v63[23] = v78;
      *&v63[7] = v77;
      v42 = v62;
      v43 = v71;
      v44 = v73;
      *(a4 + 32) = v72;
      *(a4 + 48) = v44;
      *a4 = v42;
      *(a4 + 16) = v43;
      v45 = v69[0];
      v46 = v69[1];
      v47 = v69[3];
      *(a4 + 96) = v69[2];
      *(a4 + 112) = v47;
      *(a4 + 64) = v45;
      *(a4 + 80) = v46;
      v48 = v69[4];
      v49 = v69[5];
      v50 = v69[8];
      *(a4 + 176) = v69[7];
      *(a4 + 192) = v50;
      v51 = v69[6];
      *(a4 + 144) = v49;
      *(a4 + 160) = v51;
      *(a4 + 128) = v48;
      *(a4 + 208) = 0;
      *(a4 + 216) = 1;
      v52 = *&v63[48];
      *(a4 + 249) = *&v63[32];
      v53 = *&v63[64];
      *(a4 + 265) = v52;
      *(a4 + 281) = v53;
      *(a4 + 297) = *&v63[80];
      v54 = *&v63[16];
      *(a4 + 217) = *v63;
      *(a4 + 233) = v54;
      v83[0] = v31;
      v83[1] = v33;
      v84 = v35;
      *&v85[3] = *&v108[3];
      *v85 = *v108;
      v86 = v37;
      v87 = KeyPath;
      v88 = 1;
      v89 = 0;
      *v90 = *v106;
      *&v90[3] = *&v106[3];
      v91 = v40;
      v92 = v39;
      v93 = v41;
      v94 = 2;
      sub_24B8F3208(&v70, &v95, &qword_27F0647E8, &qword_24BAAF340);
      sub_24B8F3208(v75, &v95, &qword_27F06B2E0, &qword_24BABEEB0);
      sub_24B8F3208(&v77, &v95, &qword_27F06B2C8, &qword_24BABEE98);
      sub_24B8F35E4(v83, &qword_27F06B2C8, &qword_24BABEE98);
      *(&v96[6] + 1) = v110[3];
      *(&v96[8] + 1) = v110[4];
      *(&v96[10] + 1) = v110[5];
      *(&v96[12] + 1) = v110[6];
      *(v96 + 1) = v110[0];
      *(&v96[2] + 1) = v110[1];
      v95 = v59;
      LOBYTE(v96[0]) = v58;
      *(&v96[4] + 1) = v110[2];
      sub_24B8F35E4(&v95, &qword_27F06B2E0, &qword_24BABEEB0);
      v97 = v62;
      v98 = v61;
      v99 = v60;
      *v100 = *v111;
      *&v100[3] = *&v111[3];
      v101 = v18;
      v102 = v20;
      v103 = v22;
      v104 = v24;
      v105 = 0;
      return sub_24B8F35E4(&v97, &qword_27F0647E8, &qword_24BAAF340);
    }

LABEL_12:
    swift_once();
    goto LABEL_11;
  }

  type metadata accessor for ActivityConfigViewModel(0);
  sub_24BA9342C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);

  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

double sub_24BA92748@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = type metadata accessor for TriggerRowView(0, a2, a3, a4);
  sub_24B8F5E3C();

  v6 = sub_24BAA93CC();
  v8 = v7;
  v10 = v9;
  sub_24BAA916C();
  v11 = sub_24BAA939C();
  v13 = v12;
  v15 = v14;

  sub_24B900910(v6, v8, v10 & 1);

  sub_24BAA988C();
  v16 = sub_24BAA933C();
  v50 = v17;
  v51 = v18;
  v20 = v19;

  sub_24B900910(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  if (*(a1 + *(v47 + 52) + 8))
  {

    v21 = sub_24BAA93CC();
    v44 = v20;
    v23 = v22;
    v25 = v24;
    sub_24BAA927C();
    v26 = sub_24BAA939C();
    v28 = v27;
    v45 = v16;
    v30 = v29;

    sub_24B900910(v21, v23, v25 & 1);

    sub_24BAA989C();
    v31 = sub_24BAA933C();
    v33 = v32;
    LOBYTE(v23) = v34;
    v36 = v35;

    v37 = v30 & 1;
    v16 = v45;
    sub_24B900910(v26, v28, v37);

    v38 = swift_getKeyPath();
    v39 = v23 & 1;
    v20 = v44;
    v40 = v31;
    v48 = v33;
    sub_24B8F319C(v31, v33, v39);
    v41 = v36;

    v42 = 1;
  }

  else
  {
    v40 = 0;
    v48 = 0;
    v39 = 0;
    v41 = 0;
    v38 = 0;
    v42 = 0;
  }

  sub_24B8F319C(v16, v50, v20 & 1);

  sub_24BA93080(v40, v48, v39, v41, v38);
  sub_24BA930D0(v40, v48, v39, v41, v38);
  *a5 = v16;
  *(a5 + 8) = v50;
  *(a5 + 16) = v20 & 1;
  *(a5 + 24) = v51;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v40;
  *(a5 + 64) = v48;
  *(a5 + 72) = v39;
  *(a5 + 80) = v41;
  *(a5 + 88) = v38;
  *(a5 + 96) = 0;
  *(a5 + 104) = v42;
  sub_24BA930D0(v40, v48, v39, v41, v38);
  sub_24B900910(v16, v50, v20 & 1);

  return result;
}

unint64_t sub_24BA92ACC()
{
  result = qword_27F06B270;
  if (!qword_27F06B270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B268, &qword_24BABEDC8);
    sub_24B8F384C(&qword_27F06B278, &qword_27F06B280, &qword_24BABEDD0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B270);
  }

  return result;
}

unint64_t sub_24BA92B84()
{
  result = qword_27F06B288;
  if (!qword_27F06B288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B258, &qword_24BABEDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B248, &qword_24BABEDA8);
    sub_24BA92C7C();
    swift_getOpaqueTypeConformance2();
    sub_24BA9342C(&qword_27F0690A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B288);
  }

  return result;
}

unint64_t sub_24BA92C7C()
{
  result = qword_27F06B290;
  if (!qword_27F06B290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B248, &qword_24BABEDA8);
    sub_24B8F384C(&qword_27F06B298, &qword_27F06B2A0, &qword_24BABEDD8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B290);
  }

  return result;
}

unint64_t sub_24BA92D34()
{
  result = qword_27F06B2A8;
  if (!qword_27F06B2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B238, &qword_24BABED98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B268, &qword_24BABEDC8);
    sub_24BA92ACC();
    swift_getOpaqueTypeConformance2();
    sub_24BA9342C(&qword_27F0690A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B2A8);
  }

  return result;
}

uint64_t sub_24BA92E2C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_24BAAA3FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, v1 + *(a1 + 40), v4);
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v9 = (*(*(a1 + 24) + 48))(v3);
    (*(v8 + 8))(v7, v3);
    if (v9)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_8;
    }
  }

  if (qword_27F063110 != -1)
  {
LABEL_8:
    swift_once();
  }

  return sub_24BAA7C2C();
}

double sub_24BA93080(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_24B8F319C(a1, a2, a3 & 1);
  }

  return result;
}

double sub_24BA930D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_24B900910(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24BA93130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24BA9318C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24BA931F0()
{
  result = qword_27F06B2E8;
  if (!qword_27F06B2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B2F0, qword_24BABEF48);
    sub_24BA92B84();
    sub_24BA92D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B2E8);
  }

  return result;
}

unint64_t sub_24BA932B8()
{
  result = qword_27F06B2F8;
  if (!qword_27F06B2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063F40, &qword_24BAAE208);
    sub_24BA93370();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0, &unk_24BAAD7B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B2F8);
  }

  return result;
}

unint64_t sub_24BA93370()
{
  result = qword_27F06B300;
  if (!qword_27F06B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063F38, &qword_24BAAE200);
    sub_24BA9342C(&qword_27F069628, type metadata accessor for TriggerCardLeadingImageModifier, &unk_24BAB51B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B300);
  }

  return result;
}

uint64_t sub_24BA9342C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24BA93478()
{
  result = qword_27F06B308;
  if (!qword_27F06B308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B2C8, &qword_24BABEE98);
    sub_24BA93530();
    sub_24B8F384C(&unk_27F069060, &qword_27F0658A0, &unk_24BAB2590, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B308);
  }

  return result;
}

unint64_t sub_24BA93530()
{
  result = qword_27F06B310;
  if (!qword_27F06B310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067160, &unk_24BABEFF0);
    sub_24B9D39AC();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0, &unk_24BAAD7B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B310);
  }

  return result;
}

uint64_t sub_24BA935E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5 = *(v2 - 2);
      v6 = swift_unknownObjectRetain();
      sub_24B8F2BDC(v6, v5, v4, v3);
      result = swift_unknownObjectRelease();
      v2 += 4;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_24BA93668()
{
  v1 = *(v0 + 16);
  sub_24BAAA7FC();
  sub_24BAAA07C();
  sub_24BA983D0(v3, v1);
  return sub_24BAAA84C();
}

uint64_t sub_24BA936CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_24BAAA07C();

  return sub_24BA983D0(a1, v3);
}

uint64_t sub_24BA93710(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24BAAA7FC();
  sub_24BAAA07C();
  sub_24BA983D0(v4, v2);
  return sub_24BAAA84C();
}

uint64_t sub_24BA93770(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24BAAA78C() & 1) == 0)
  {
    return 0;
  }

  return sub_24B98CB6C(v2, v3);
}

id sub_24BA938C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionsAppsPickerView.WrappedInstalledApp();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24BA93980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24BA93A50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SuggestionsAppsPickerView(uint64_t a1)
{
  result = qword_27F06B328;
  if (!qword_27F06B328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24BA93B4C(uint64_t a1)
{
  sub_24BA93CB0(319);
  if (v1 <= 0x3F)
  {
    sub_24BA93D44(319);
    if (v2 <= 0x3F)
    {
      sub_24BA93DA8(319, &qword_27F06B348, type metadata accessor for InstalledApp, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24B9FB96C(319, &qword_27F063A40, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_24B9FB96C(319, &qword_27F06B350, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_24BA93DA8(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
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

void sub_24BA93CB0(uint64_t a1)
{
  if (!qword_27F06B338)
  {
    type metadata accessor for FilteredAppSource(255);
    sub_24BA98E34(&unk_27F065110, type metadata accessor for FilteredAppSource, &unk_24BABB338);
    v1 = sub_24BAA850C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F06B338);
    }
  }
}

void sub_24BA93D44(uint64_t a1)
{
  if (!qword_27F06B340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068A90, &qword_24BAB9470);
    v1 = sub_24BAA9BBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F06B340);
    }
  }
}

void sub_24BA93DA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24BA93E28@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v30 = sub_24BAA8D6C();
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v26 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24BAA8D7C();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24BAA852C();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B358, &qword_24BABF0A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B360, &qword_24BABF0A8);
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B368, &unk_24BABF0B0);
  sub_24B8F384C(&qword_27F06B370, &qword_27F06B368, &unk_24BABF0B0, MEMORY[0x277CE14C0]);
  sub_24BAA92CC();
  sub_24BAA851C();
  v14 = sub_24B8F384C(&qword_27F06B378, &qword_27F06B358, &qword_24BABF0A0, MEMORY[0x277CDE5A0]);
  v28 = v13;
  v15 = MEMORY[0x277CDD980];
  sub_24BAA96FC();
  v16 = *(v29 + 8);
  v29 = v4;
  v16(v6, v4);
  (*(v8 + 8))(v10, v7);
  v17 = v25;
  v18 = *(v24 + 88);
  v41 = *(v24 + 72);
  v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8, &qword_24BAB1DA8);
  sub_24BAA9A1C();
  v19 = v26;
  sub_24BAA8D5C();
  sub_24BAA8D4C();
  (*(v27 + 8))(v19, v30);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v41 = sub_24BAA7C2C();
  *(&v41 + 1) = v20;
  v37 = v7;
  v38 = v29;
  v39 = v14;
  v40 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24B8F5E3C();
  v21 = v32;
  v22 = v28;
  sub_24BAA943C();

  (*(v33 + 8))(v17, v35);
  return (*(v31 + 8))(v22, v21);
}

uint64_t sub_24BA943C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for SuggestionsAppsPickerView(0);
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = v4;
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B380, &qword_24BABF0C0);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v50 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B388, &qword_24BABF0C8);
  MEMORY[0x28223BE20](v54);
  v52 = &v50 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B390, &qword_24BABF0D0);
  MEMORY[0x28223BE20](v55);
  v50 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B398, &qword_24BABF0D8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B3A0, &qword_24BABF0E0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B3A8, &qword_24BABF0E8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v56 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v51 = &v50 - v22;
  MEMORY[0x28223BE20](v21);
  v65 = &v50 - v23;
  *v13 = sub_24BAA8BCC();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B3B0, &qword_24BABF0F0);
  sub_24BA94BFC(a1, &v13[*(v24 + 44)]);
  sub_24BAA836C();
  v25 = sub_24B8F384C(&qword_27F06B3B8, &qword_27F06B398, &qword_24BABF0D8, MEMORY[0x277CE1198]);
  v53 = v11;
  sub_24BAA955C();
  sub_24B8F35E4(v13, &qword_27F06B398, &qword_24BABF0D8);
  v26 = *(a1 + 88);
  v68 = *(a1 + 72);
  v69 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8, &qword_24BAB1DA8);
  sub_24BAA99FC();
  v28 = v66;
  v27 = v67;

  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    (*(v15 + 16))(v52, v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_24BA97F1C();
    *&v68 = v53;
    *(&v68 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    v30 = v51;
    sub_24BAA8D0C();
  }

  else
  {
    v31 = [objc_opt_self() systemBackgroundColor];
    *&v68 = sub_24BAA973C();
    v32 = sub_24BAA9B4C();
    v33 = v50;
    (*(v15 + 16))(v50, v17, v14);
    *(v33 + *(v55 + 36)) = v32;
    sub_24B8F3208(v33, v52, &qword_27F06B390, &qword_24BABF0D0);
    swift_storeEnumTagMultiPayload();
    sub_24BA97F1C();
    *&v68 = v53;
    *(&v68 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    v30 = v51;
    sub_24BAA8D0C();
    sub_24B8F35E4(v33, &qword_27F06B390, &qword_24BABF0D0);
  }

  (*(v15 + 8))(v17, v14);
  v34 = v30;
  v35 = v65;
  sub_24B90294C(v34, v65, &qword_27F06B3A8, &qword_24BABF0E8);
  sub_24BA966D4();
  *&v68 = v36;
  v37 = v59;
  sub_24BA98044(a1, v59);
  v38 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v39 = swift_allocObject();
  sub_24BA980AC(v37, v39 + v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B3D8, &qword_24BABF108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B3E0, &qword_24BABF110);
  sub_24B8F384C(&qword_27F06B3E8, &qword_27F06B3D8, &qword_24BABF108, MEMORY[0x277D83980]);
  sub_24BA98190();
  sub_24BA9837C();
  v40 = v60;
  sub_24BAA9C0C();
  v41 = v56;
  sub_24B8F3208(v35, v56, &qword_27F06B3A8, &qword_24BABF0E8);
  v43 = v61;
  v42 = v62;
  v44 = *(v62 + 16);
  v45 = v63;
  v44(v61, v40, v63);
  v46 = v64;
  sub_24B8F3208(v41, v64, &qword_27F06B3A8, &qword_24BABF0E8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B428, &unk_24BABF128);
  v44((v46 + *(v47 + 48)), v43, v45);
  v48 = *(v42 + 8);
  v48(v40, v45);
  sub_24B8F35E4(v65, &qword_27F06B3A8, &qword_24BABF0E8);
  v48(v43, v45);
  return sub_24B8F35E4(v41, &qword_27F06B3A8, &qword_24BABF0E8);
}

uint64_t sub_24BA94BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B440, &qword_24BABF160);
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = v69 - v5;
  v6 = sub_24BAA82DC();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v76 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = v69 - v9;
  v10 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v10);
  v69[1] = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24BAA9C6C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B448, &qword_24BABF168);
  MEMORY[0x28223BE20](v70);
  v71 = v69 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B450, &qword_24BABF170);
  MEMORY[0x28223BE20](v73);
  v77 = v69 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B458, &qword_24BABF178);
  v18 = MEMORY[0x28223BE20](v72);
  v82 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v74 = v69 - v21;
  MEMORY[0x28223BE20](v20);
  v81 = v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B460, &qword_24BABF180);
  v24 = MEMORY[0x28223BE20](v23);
  v80 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v69 - v26;
  v28 = *(a1 + 88);
  v88 = *(a1 + 72);
  v89 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8, &qword_24BAB1DA8);
  sub_24BAA99FC();
  v30 = v86;
  v29 = v87;

  v31 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v31 = v30 & 0xFFFFFFFFFFFFLL;
  }

  v32 = 1;
  if (!v31)
  {
    *v27 = sub_24BAA8AAC();
    *(v27 + 1) = 0;
    v27[16] = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B468, &unk_24BABF188);
    sub_24BA9556C(&v27[*(v33 + 44)]);
    v34 = sub_24BAA90AC();
    v35 = &v27[*(v23 + 36)];
    *v35 = v34;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    v35[40] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08, &qword_24BAB7770);
    sub_24BAA9C7C();
    v69[0] = a2;
    *(swift_allocObject() + 16) = xmmword_24BAAD5B0;
    *v15 = xmmword_24BAB0EB0;
    (*(v13 + 104))(v15, *MEMORY[0x277CDF100], v12);
    v36 = sub_24BAA9C8C();
    MEMORY[0x28223BE20](v36);
    sub_24BAA8BCC();
    LODWORD(v88) = 0;
    sub_24BA98E34(&qword_27F065160, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
    sub_24BAAA85C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B470, &qword_24BABF198);
    sub_24BA9880C();
    v37 = v71;
    sub_24BAA9D8C();
    v38 = sub_24BAA90BC();
    v39 = v37 + *(v70 + 36);
    *v39 = v38;
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    *(v39 + 40) = 1;
    type metadata accessor for SuggestionsAppsPickerView(0);
    v40 = v75;
    sub_24BA8DCD0(v75);
    v42 = v78;
    v41 = v79;
    v43 = v76;
    (*(v78 + 104))(v76, *MEMORY[0x277CDF3C0], v79);
    v44 = sub_24BAA82CC();
    v45 = *(v42 + 8);
    v45(v43, v41);
    v45(v40, v41);
    v46 = objc_opt_self();
    v47 = &selRef_secondarySystemGroupedBackgroundColor;
    if ((v44 & 1) == 0)
    {
      v47 = &selRef_systemGroupedBackgroundColor;
    }

    v48 = [v46 *v47];
    v49 = sub_24BAA973C();
    v50 = sub_24BAA90BC();
    v51 = v77;
    sub_24B90294C(v37, v77, &qword_27F06B448, &qword_24BABF168);
    v52 = v74;
    v53 = v51 + *(v73 + 36);
    *v53 = v49;
    *(v53 + 8) = v50;
    v54 = (v52 + *(v72 + 36));
    v55 = *(sub_24BAA869C() + 20);
    v56 = *MEMORY[0x277CE0118];
    v57 = sub_24BAA8B2C();
    (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
    __asm { FMOV            V0.2D, #12.0 }

    *v54 = _Q0;
    *&v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8, &qword_24BAB1370) + 36)] = 256;
    sub_24B90294C(v51, v52, &qword_27F06B450, &qword_24BABF170);
    v63 = v81;
    sub_24B90294C(v52, v81, &qword_27F06B458, &qword_24BABF178);
    v64 = v80;
    sub_24B8F3208(v27, v80, &qword_27F06B460, &qword_24BABF180);
    v65 = v82;
    sub_24B8F3208(v63, v82, &qword_27F06B458, &qword_24BABF178);
    v66 = v83;
    sub_24B8F3208(v64, v83, &qword_27F06B460, &qword_24BABF180);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B480, &qword_24BABF1B0);
    sub_24B8F3208(v65, v66 + *(v67 + 48), &qword_27F06B458, &qword_24BABF178);
    sub_24B8F35E4(v63, &qword_27F06B458, &qword_24BABF178);
    sub_24B8F35E4(v27, &qword_27F06B460, &qword_24BABF180);
    sub_24B8F35E4(v65, &qword_27F06B458, &qword_24BABF178);
    sub_24B8F35E4(v64, &qword_27F06B460, &qword_24BABF180);
    a2 = v69[0];
    sub_24B90294C(v66, v69[0], &qword_27F06B440, &qword_24BABF160);
    v32 = 0;
  }

  return (*(v84 + 56))(a2, v32, 1, v85);
}

uint64_t sub_24BA9556C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B498, &qword_24BABF220);
  v1 = MEMORY[0x28223BE20](v35);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - v3;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v38 = sub_24BAA7C2C();
  v39 = v5;
  sub_24B8F5E3C();
  v6 = sub_24BAA93CC();
  v8 = v7;
  v10 = v9;
  sub_24BAA927C();
  v11 = sub_24BAA939C();
  v13 = v12;
  v15 = v14;

  sub_24B900910(v6, v8, v10 & 1);

  sub_24BAA989C();
  v16 = sub_24BAA933C();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_24B900910(v11, v13, v15 & 1);

  v23 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F10, &unk_24BABC190) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B10, &unk_24BAAD9A0) + 28);
  v25 = *MEMORY[0x277CE0B48];
  v26 = sub_24BAA937C();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v23 + v24, v25, v26);
  (*(v27 + 56))(v23 + v24, 0, 1, v26);
  *v23 = swift_getKeyPath();
  *v4 = v16;
  *(v4 + 1) = v18;
  v4[16] = v20 & 1;
  *(v4 + 3) = v22;
  KeyPath = swift_getKeyPath();
  v29 = v36;
  v30 = &v4[*(v35 + 36)];
  *v30 = KeyPath;
  *(v30 + 1) = 1;
  v30[16] = 0;
  sub_24B8F3208(v4, v29, &qword_27F06B498, &qword_24BABF220);
  v31 = v37;
  sub_24B8F3208(v29, v37, &qword_27F06B498, &qword_24BABF220);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B4A0, &qword_24BABF288) + 48);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_24B8F35E4(v4, &qword_27F06B498, &qword_24BABF220);
  return sub_24B8F35E4(v29, &qword_27F06B498, &qword_24BABF220);
}

uint64_t sub_24BA958E8(uint64_t a1)
{
  v2 = type metadata accessor for SuggestionsAppsPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 40);
  v13[2] = a1;

  v13[8] = sub_24B914494(sub_24BA98950, v13, v5);
  sub_24BA98044(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24BA980AC(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633D8, &qword_24BABF150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B488, &qword_24BABF1B8);
  sub_24B8F384C(&qword_27F06B430, &qword_27F0633D8, &qword_24BABF150, MEMORY[0x277D83980]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065180, &unk_24BABF1A0);
  v9 = sub_24BAA866C();
  v10 = sub_24B8F384C(&qword_27F065178, &qword_27F065180, &unk_24BABF1A0, MEMORY[0x277CDF028]);
  v11 = sub_24BA98E34(&qword_27F063BF8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v13[4] = v8;
  v13[5] = v9;
  v13[6] = v10;
  v13[7] = v11;
  swift_getOpaqueTypeConformance2();
  sub_24BA98E34(&qword_27F06B490, type metadata accessor for InstalledApp, &protocol conformance descriptor for EventSource);
  return sub_24BAA9C0C();
}

uint64_t sub_24BA95BAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_24BAA866C();
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SuggestionsAppsPickerView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065180, &unk_24BABF1A0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v17 = *a1;
  sub_24BA98044(a2, v12);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_24BA980AC(v12, v20 + v18);
  *(v20 + v19) = v17;
  v27 = v17;
  v28 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0651A8, &unk_24BAB10A0);
  sub_24B93E048();
  sub_24BAA9A5C();
  sub_24BAA865C();
  sub_24B8F384C(&qword_27F065178, &qword_27F065180, &unk_24BABF1A0, MEMORY[0x277CDF028]);
  sub_24BA98E34(&qword_27F063BF8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v21 = v24;
  sub_24BAA944C();
  (*(v25 + 8))(v8, v21);
  return (*(v14 + 8))(v16, v13);
}

double sub_24BA95EE0(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v14 = a1[2];
  v3 = v14;
  v15 = v4;
  v16 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B438, &qword_24BABF158);
  MEMORY[0x24C24FC10](&v9);
  v7 = sub_24B914A68(a2, v9);

  v14 = v3;
  v15 = v4;
  v16 = v5;

  if (v7)
  {
    MEMORY[0x24C24FC10](&v13, v6);
    sub_24B9ACCE0(a2);

    v9 = v3;
    v10 = v4;
    v11 = v5;
    v12 = v13;
  }

  else
  {
    MEMORY[0x24C24FC10](&v12, v6);

    sub_24B8E55CC(&v13, a2);

    v9 = v3;
    v10 = v4;
    v11 = v5;
  }

  sub_24BAA9B6C();

  return result;
}

uint64_t sub_24BA96050@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v42 = sub_24BAA8B7C();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SuggestionsAppsPickerView(0);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0651C0, &qword_24BAB7910);
  MEMORY[0x28223BE20](v9);
  v11 = (&v32 - v10);
  type metadata accessor for AppIconCache();
  sub_24BA98E34(&qword_27F0651D0, type metadata accessor for AppIconCache, &unk_24BAB5614);

  v12 = sub_24BAA86FC();
  v34 = v13;
  v35 = v12;
  KeyPath = swift_getKeyPath();
  v14 = *(a1 + 32);
  v36 = *(a1 + 24);

  v37 = sub_24BAA974C();
  v15 = a2[2];
  v40 = a2[3];
  v41 = v15;
  v39 = a2[4];
  v47 = v15;
  v48 = v40;
  v49 = v39;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B438, &qword_24BABF158);
  MEMORY[0x24C24FC10](&v46);
  v17 = sub_24B914A68(a1, v46);

  sub_24BA98044(a2, v8);
  v18 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_24BA980AC(v8, v20 + v18);
  *(v20 + v19) = a1;
  v21 = v11 + v9[9];
  *v21 = a1;
  *(v21 + 1) = 0x4050000000000000;
  v22 = v34;
  *(v21 + 2) = v35;
  *(v21 + 3) = v22;
  *(v21 + 4) = KeyPath;
  v21[40] = 0;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
  swift_storeEnumTagMultiPayload();
  v23 = (v11 + v9[10]);
  *v23 = v36;
  v23[1] = v14;
  v24 = (v11 + v9[11]);
  *v24 = 0x72616D6B63656863;
  v24[1] = 0xE90000000000006BLL;
  *(v11 + v9[12]) = v37;
  v25 = v11 + v9[13];
  LOBYTE(v46) = v17 & 1;

  sub_24BAA99EC();
  v26 = v48;
  *v25 = v47;
  *(v25 + 1) = v26;
  v27 = (v11 + v9[14]);
  *v27 = sub_24BA98D90;
  v27[1] = v20;
  v47 = v41;
  v48 = v40;
  v49 = v39;
  MEMORY[0x24C24FC10](&v46, v16);
  v28 = sub_24B914A68(a1, v46);

  if (v28)
  {
    v29 = v43;
    sub_24BAA8B3C();
    v30 = v42;
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
    sub_24BA98E34(&unk_27F0651E0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F18, &qword_24BAB0DA8);
    sub_24B8F384C(&qword_27F0651F0, &qword_27F064F18, &qword_24BAB0DA8, MEMORY[0x277D83970]);
    v29 = v43;
    v30 = v42;
    sub_24BAAA48C();
  }

  sub_24B8F384C(&qword_27F0651B8, &unk_27F0651C0, &qword_24BAB7910, &unk_24BABA5F0);
  sub_24BAA961C();
  (*(v44 + 8))(v29, v30);
  return sub_24B8F35E4(v11, &unk_27F0651C0, &qword_24BAB7910);
}

double sub_24BA96580(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2[3];
    v6 = a2[4];
    v14 = a2[2];
    v4 = v14;
    v15 = v5;
    v16 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B438, &qword_24BABF158);
    MEMORY[0x24C24FC10](&v10);

    sub_24B8E55CC(&v17, a3);

    v11 = v4;
    v12 = v5;
    v13 = v6;
  }

  else
  {
    v7 = a2[3];
    v8 = a2[4];
    v14 = a2[2];
    v15 = v7;
    v16 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B438, &qword_24BABF158);
    MEMORY[0x24C24FC10](&v17);
    sub_24B9ACCE0(a3);

    v11 = v14;
    v12 = v7;
    v13 = v8;
    v10 = v17;
  }

  sub_24BAA9B6C();

  return result;
}

void sub_24BA966D4()
{
  v2 = [objc_opt_self() currentCollation];
  v3 = *(v0 + 8);
  sub_24BA42F98();
  v4 = MEMORY[0x277D84F90];
  if (*(v3 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 8))
  {
    v57 = MEMORY[0x277D84F90];

    sub_24BA935E8(v5);

    v6 = v57;
    if (!(v57 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    v7 = sub_24BAAA52C();
    v52 = 0;
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v6 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = 0;
  if (v7)
  {
LABEL_4:
    v57 = v4;
    sub_24BAAA68C();
    if (v7 < 0)
    {
      goto LABEL_40;
    }

    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C2506E0](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      ++v8;
      v10 = type metadata accessor for SuggestionsAppsPickerView.WrappedInstalledApp();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR____TtCV15FocusSettingsUI25SuggestionsAppsPickerView19WrappedInstalledApp_installedApp] = v9;
      v12 = *(v9 + 32);
      v13 = &v11[OBJC_IVAR____TtCV15FocusSettingsUI25SuggestionsAppsPickerView19WrappedInstalledApp_displayName];
      *v13 = *(v9 + 24);
      *(v13 + 1) = v12;
      v56.receiver = v11;
      v56.super_class = v10;

      objc_msgSendSuper2(&v56, sel_init);
      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
    }

    while (v7 != v8);

    v14 = v57;
    v4 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

LABEL_13:

  v14 = MEMORY[0x277D84F90];
LABEL_14:
  sub_24BA3A994(v14);

  v15 = sub_24BAAA11C();

  v53 = sel_displayName;
  v16 = [v2 sortedArrayFromArray:v15 collationStringSelector:sel_displayName];

  v17 = sub_24BAAA12C();
  v1 = sub_24BA9745C(v17);

  if (!v1)
  {

    return;
  }

  v18 = [v2 sectionTitles];
  v19 = sub_24BAAA12C();

  v20 = *(v19 + 16);
  v55 = v2;
  if (v20)
  {
    v57 = v4;
    sub_24B914EB4(0, v20, 0);
    v6 = v57;
    v51 = v19;
    v21 = (v19 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v57 = v6;
      v25 = *(v6 + 16);
      v24 = *(v6 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_24B914EB4((v24 > 1), v25 + 1, 1);
        v6 = v57;
      }

      *(v6 + 16) = v25 + 1;
      v26 = (v6 + 24 * v25);
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = MEMORY[0x277D84F90];
      v21 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  if (v1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24BAAA52C())
  {
    if (i < 1)
    {
      goto LABEL_87;
    }

    v28 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x24C2506E0](v28, v1);
      }

      else
      {
        v29 = *(v1 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = [v2 sectionForObject:v29 collationStringSelector:{v53, v51, v52}];
      v2 = *&v30[OBJC_IVAR____TtCV15FocusSettingsUI25SuggestionsAppsPickerView19WrappedInstalledApp_installedApp];

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          break;
        }

        goto LABEL_32;
      }

      v6 = sub_24B9AECE8(v6);
      if ((v31 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_32:
      if (v31 >= *(v6 + 16))
      {
        goto LABEL_39;
      }

      MEMORY[0x24C2501C0]();
      if (*((*(v6 + 24 * v31 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 24 * v31 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24BAAA14C();
      }

      ++v28;
      sub_24BAAA16C();

      v2 = v55;
      if (i == v28)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:

  v32 = *(v6 + 16);
  if (!v32)
  {
    v36 = 0;
    v34 = 0;
    goto LABEL_70;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    if (v34 >= *(v6 + 16))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v35 = *(v6 + v33 + 48);
    if (!(v35 >> 62))
    {
      v36 = v34 + 1;
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_47;
    }

    v36 = v34 + 1;
    if (!sub_24BAAA52C())
    {
      break;
    }

LABEL_47:
    v33 += 24;
    v34 = v36;
    if (v32 == v36)
    {
      v36 = *(v6 + 16);
      v34 = v36;
      goto LABEL_70;
    }
  }

  v37 = *(v6 + 16);
  if (v37 - 1 != v34)
  {
    while (1)
    {
      if (v36 >= v37)
      {
        goto LABEL_79;
      }

      v38 = v6 + v33;
      v39 = *(v6 + v33 + 72);
      if (v39 >> 62)
      {
        if (sub_24BAAA52C())
        {
LABEL_57:
          if (v36 != v34)
          {
            if (v34 < 0)
            {
              goto LABEL_80;
            }

            v40 = *(v6 + 16);
            if (v34 >= v40)
            {
              goto LABEL_81;
            }

            if (v36 >= v40)
            {
              goto LABEL_82;
            }

            v41 = (v6 + 32 + 24 * v34);
            v42 = v41[1];
            v54 = *v41;
            v43 = v41[2];
            v44 = *(v38 + 56);
            v45 = *(v6 + v33 + 64);
            v46 = *(v38 + 72);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_24B9AECE8(v6);
            }

            v47 = (v6 + 24 * v34);
            v47[4] = v44;
            v47[5] = v45;
            v47[6] = v46;

            if (v36 >= *(v6 + 16))
            {
              goto LABEL_83;
            }

            v48 = (v6 + v33);
            v48[7] = v54;
            v48[8] = v42;
            v48[9] = v43;

            v2 = v55;
          }

          ++v34;
        }
      }

      else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      ++v36;
      v37 = *(v6 + 16);
      v33 += 24;
      if (v36 == v37)
      {
        if (v36 < v34)
        {
          goto LABEL_84;
        }

        if (v34 < 0)
        {
          goto LABEL_85;
        }

        break;
      }
    }
  }

LABEL_70:
  if (__OFADD__(v36, v34 - v36))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v6;
  if (!isUniquelyReferenced_nonNull_native || v34 > *(v6 + 24) >> 1)
  {
    if (v36 <= v34)
    {
      v50 = v34;
    }

    else
    {
      v50 = v36;
    }

    v57 = sub_24B99ADD4(isUniquelyReferenced_nonNull_native, v50, 1, v6);
  }

  sub_24B9B0D0C(v34, v36, 0);
}

double sub_24BA96DE4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8, &qword_24BAB1DA8);
  sub_24BAA99FC();
  v3 = sub_24BA98478(v5, v6, v2);

  if (v3 >> 62)
  {
    if (!sub_24BAAA52C())
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_24B8F5E3C();

    sub_24BAA93CC();
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B400, &qword_24BABF118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B410, &qword_24BABF120);
  sub_24BA98228();
  sub_24BA982A4();
  sub_24BAA9C2C();

  return result;
}

uint64_t sub_24BA96F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestionsAppsPickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_24BA98044(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_24BA980AC(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633D8, &qword_24BABF150);
  sub_24B8F384C(&qword_27F06B430, &qword_27F0633D8, &qword_24BABF150, MEMORY[0x277D83980]);
  sub_24BA98E34(&qword_27F0633F0, type metadata accessor for InstalledApp, &protocol conformance descriptor for EventSource);
  sub_24BA98328();
  return sub_24BAA9BFC();
}

double sub_24BA97150@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SuggestionsAppsPickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  v15[1] = *(a2 + 16);
  v16 = *(a2 + 24);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B438, &qword_24BABF158);
  MEMORY[0x24C24FC10](v15, v10);
  v11 = sub_24B914A68(v9, v15[0]);

  sub_24BA98044(a2, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_24BA980AC(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  *a3 = sub_24B8FC66C;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v9;
  *(a3 + 32) = v11 & 1;
  *(a3 + 40) = sub_24BA9877C;
  *(a3 + 48) = v13;

  return result;
}

double sub_24BA972EC(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v14 = v1[2];
  v3 = v14;
  v15 = v4;
  v16 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B438, &qword_24BABF158);
  MEMORY[0x24C24FC10](&v9);
  v7 = sub_24B914A68(a1, v9);

  v14 = v3;
  v15 = v4;
  v16 = v5;

  if (v7)
  {
    MEMORY[0x24C24FC10](&v13, v6);
    sub_24B9ACCE0(a1);

    v9 = v3;
    v10 = v4;
    v11 = v5;
    v12 = v13;
  }

  else
  {
    MEMORY[0x24C24FC10](&v12, v6);

    sub_24B8E55CC(&v13, a1);

    v9 = v3;
    v10 = v4;
    v11 = v5;
  }

  sub_24BAA9B6C();

  return result;
}

uint64_t sub_24BA9745C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_24BAAA68C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_24B8F3894(i, v5);
    type metadata accessor for SuggestionsAppsPickerView.WrappedInstalledApp();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_24BAAA66C();
    sub_24BAAA69C();
    sub_24BAAA6AC();
    sub_24BAAA67C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_24BA97544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24BAA8AAC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B4C0, &qword_24BABF450);
  return sub_24BA9759C(a1, a2 + *(v4 + 44));
}

uint64_t sub_24BA9759C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = sub_24BAA8B7C();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v4 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24BAA992C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B4C8, &qword_24BABF458);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57[-v10];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B4D0, &qword_24BABF460);
  v12 = MEMORY[0x28223BE20](v61);
  v67 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v57[-v15];
  MEMORY[0x28223BE20](v14);
  v65 = a1;
  v66 = &v57[-v16];
  v17 = *(a1 + 32);
  sub_24BAA991C();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v18 = sub_24BAA997C();

  (*(v6 + 8))(v8, v5);
  if (v17)
  {
    v19 = sub_24BAA974C();
  }

  else
  {
    v20 = [objc_opt_self() tertiaryLabelColor];
    v19 = sub_24BAA973C();
  }

  v21 = v19;
  KeyPath = swift_getKeyPath();
  sub_24BAA916C();
  v23 = sub_24BAA917C();

  v24 = swift_getKeyPath();
  v88 = 1;
  v84 = v18;
  LOWORD(v85) = 1;
  *(&v85 + 1) = KeyPath;
  *&v86 = v21;
  *(&v86 + 1) = v24;
  v87 = v23;
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B508, &qword_24BABF4F0);
    v25 = v62;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24BAAD5B0;
    sub_24BAA8B3C();
    v75 = v26;
    sub_24BA98E34(&unk_27F0651E0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F18, &qword_24BAB0DA8);
    sub_24B8F384C(&qword_27F0651F0, &qword_27F064F18, &qword_24BAB0DA8, MEMORY[0x277D83970]);
    v27 = v64;
    sub_24BAAA48C();
  }

  else
  {
    v75 = MEMORY[0x277D84F90];
    sub_24BA98E34(&unk_27F0651E0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F18, &qword_24BAB0DA8);
    sub_24B8F384C(&qword_27F0651F0, &qword_27F064F18, &qword_24BAB0DA8, MEMORY[0x277D83970]);
    v27 = v64;
    sub_24BAAA48C();
    v25 = v62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B4D8, &qword_24BABF4C8);
  sub_24BA990D4();
  sub_24BAA961C();
  (*(v25 + 8))(v4, v27);
  v69[0] = v84;
  v69[1] = v85;
  v69[2] = v86;
  v70 = v87;
  sub_24B8F35E4(v69, &qword_27F06B4D8, &qword_24BABF4C8);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v28 = v60;
  sub_24B90294C(v11, v60, &qword_27F06B4C8, &qword_24BABF458);
  v29 = &v28[*(v61 + 36)];
  v30 = v89[1];
  *v29 = v89[0];
  v29[1] = v30;
  v29[2] = v89[2];
  v31 = v66;
  sub_24B90294C(v28, v66, &qword_27F06B4D0, &qword_24BABF460);
  v32 = *(v65 + 24);
  type metadata accessor for AppIconCache();
  sub_24BA98E34(&qword_27F0651D0, type metadata accessor for AppIconCache, &unk_24BAB5614);

  v62 = sub_24BAA86FC();
  v64 = v33;
  v61 = swift_getKeyPath();
  v65 = sub_24BAA82FC();
  v34 = sub_24BAA813C();
  v59 = v32;
  v60 = v34;
  LOBYTE(v75) = 0;
  v35 = *(v32 + 32);
  v36 = v32;
  v75 = *(v32 + 24);
  v76 = v35;
  sub_24B8F5E3C();

  v37 = sub_24BAA93CC();
  v39 = v38;
  v58 = v40;
  v42 = v41;
  v43 = v31;
  v44 = v67;
  sub_24B8F3208(v43, v67, &qword_27F06B4D0, &qword_24BABF460);
  v45 = v44;
  v46 = v63;
  sub_24B8F3208(v45, v63, &qword_27F06B4D0, &qword_24BABF460);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B4F8, &qword_24BABF4E0);
  v48 = (v46 + v47[12]);
  *&v71 = v36;
  *(&v71 + 1) = 0x403D000000000000;
  v50 = v61;
  v49 = v62;
  *&v72 = v62;
  *(&v72 + 1) = v64;
  *&v73 = v61;
  BYTE8(v73) = 0;
  *(&v73 + 9) = *v68;
  HIDWORD(v73) = *&v68[3];
  *&v74 = v34;
  *(&v74 + 1) = v65;
  v51 = v72;
  *v48 = v71;
  v48[1] = v51;
  v52 = v74;
  v48[2] = v73;
  v48[3] = v52;
  v53 = v46 + v47[16];
  *v53 = v37;
  *(v53 + 8) = v39;
  v54 = v58 & 1;
  *(v53 + 16) = v58 & 1;
  *(v53 + 24) = v42;
  v55 = v46 + v47[20];
  *v55 = 0;
  *(v55 + 8) = 1;
  sub_24B8F3208(&v71, &v75, &qword_27F06B500, &qword_24BABF4E8);
  sub_24B8F319C(v37, v39, v54);

  sub_24B8F35E4(v66, &qword_27F06B4D0, &qword_24BABF460);
  sub_24B900910(v37, v39, v54);

  v75 = v59;
  v76 = 0x403D000000000000;
  v77 = v49;
  v78 = v64;
  v79 = v50;
  v80 = 0;
  *v81 = *v68;
  *&v81[3] = *&v68[3];
  v82 = v60;
  v83 = v65;
  sub_24B8F35E4(&v75, &qword_27F06B500, &qword_24BABF4E8);
  return sub_24B8F35E4(v67, &qword_27F06B4D0, &qword_24BABF460);
}

uint64_t sub_24BA97E34()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B4B0, &qword_24BABF448);
  sub_24B8F384C(&qword_27F06B4B8, &qword_27F06B4B0, &qword_24BABF448, MEMORY[0x277CE1138]);
  return sub_24BAA9A5C();
}

unint64_t sub_24BA97F1C()
{
  result = qword_27F06B3C0;
  if (!qword_27F06B3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B390, &qword_24BABF0D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B398, &qword_24BABF0D8);
    sub_24B8F384C(&qword_27F06B3B8, &qword_27F06B398, &qword_24BABF0D8, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&qword_27F06B3C8, &qword_27F06B3D0, &unk_24BABF0F8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B3C0);
  }

  return result;
}

uint64_t sub_24BA98044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestionsAppsPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA980AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestionsAppsPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24BA98110(uint64_t *a1)
{
  v3 = *(type metadata accessor for SuggestionsAppsPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24BA96DE4(a1, v4);
}

unint64_t sub_24BA98190()
{
  result = qword_27F06B3F0;
  if (!qword_27F06B3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B3E0, &qword_24BABF110);
    sub_24BA98228();
    sub_24BA982A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B3F0);
  }

  return result;
}

unint64_t sub_24BA98228()
{
  result = qword_27F06B3F8;
  if (!qword_27F06B3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B400, &qword_24BABF118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B3F8);
  }

  return result;
}

unint64_t sub_24BA982A4()
{
  result = qword_27F06B408;
  if (!qword_27F06B408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B410, &qword_24BABF120);
    sub_24BA98328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B408);
  }

  return result;
}

unint64_t sub_24BA98328()
{
  result = qword_27F06B418;
  if (!qword_27F06B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B418);
  }

  return result;
}

unint64_t sub_24BA9837C()
{
  result = qword_27F06B420;
  if (!qword_27F06B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B420);
  }

  return result;
}

uint64_t sub_24BA983D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v6 = sub_24BAAA52C();
    MEMORY[0x24C2508C0](v6);
    result = sub_24BAAA52C();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x24C2508C0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v4; ++i)
    {
      MEMORY[0x24C2506E0](i, a2);
      result = swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24BA98478(uint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = result;
  v14 = MEMORY[0x277D84F90];
  if (!(a3 >> 62))
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_24BAAA52C();
  v6 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v6 >= 1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      v9 = MEMORY[0x277D84F90];
      do
      {
        MEMORY[0x24C2506E0](v7, a3);
        sub_24B8F5E3C();
        if ((sub_24BAAA46C() & 1) == 0 && v8)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v10 = swift_unknownObjectRetain();
          MEMORY[0x24C2501C0](v10);
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24BAAA14C();
          }

          sub_24BAAA16C();
          swift_unknownObjectRelease();
          v9 = v14;
        }

        ++v7;
      }

      while (v6 != v7);
    }

    else
    {
      v11 = a3 + 32;
      sub_24B8F5E3C();
      if ((a2 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v12 = v5 & 0xFFFFFFFFFFFFLL;
      }

      v9 = MEMORY[0x277D84F90];
      do
      {

        if ((sub_24BAAA46C() & 1) == 0 && v12)
        {
        }

        else
        {

          MEMORY[0x24C2501C0](v13);
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24BAAA14C();
          }

          sub_24BAAA16C();

          v9 = v14;
        }

        v11 += 8;
        --v6;
      }

      while (v6);
    }

    return v9;
  }

  __break(1u);
  return result;
}

double sub_24BA986F8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SuggestionsAppsPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24BA97150(a1, v6, a2);
}

unint64_t sub_24BA9880C()
{
  result = qword_27F06B478;
  if (!qword_27F06B478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B470, &qword_24BABF198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065180, &unk_24BABF1A0);
    sub_24BAA866C();
    sub_24B8F384C(&qword_27F065178, &qword_27F065180, &unk_24BABF1A0, MEMORY[0x277CDF028]);
    sub_24BA98E34(&qword_27F063BF8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B478);
  }

  return result;
}

BOOL sub_24BA98950(uint64_t *a1)
{
  v2 = *(*(v1 + 16) + 48);
  v5 = *a1;
  v4[2] = &v5;
  return (sub_24BA3F098(sub_24B93DF68, v4, v2) & 1) == 0;
}

uint64_t objectdestroyTm_25()
{
  v1 = (type metadata accessor for SuggestionsAppsPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA82DC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24BA98B04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SuggestionsAppsPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24BA95BAC(a1, v6, a2);
}

double sub_24BA98B84()
{
  v1 = *(type metadata accessor for SuggestionsAppsPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24BA95EE0((v0 + v2), v3);
}

uint64_t objectdestroy_16Tm()
{
  v1 = (type metadata accessor for SuggestionsAppsPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA82DC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

double sub_24BA98D90(char a1)
{
  v3 = *(type metadata accessor for SuggestionsAppsPickerView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24BA96580(a1, (v1 + v4), v5);
}

uint64_t sub_24BA98E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24BA98E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24BA98ED4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_24BA98F40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B360, &qword_24BABF0A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B358, &qword_24BABF0A0);
  sub_24BAA852C();
  sub_24B8F384C(&qword_27F06B378, &qword_27F06B358, &qword_24BABF0A0, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  sub_24B8F5E3C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24BA9904C()
{
  result = qword_27F06B4A8;
  if (!qword_27F06B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B4A8);
  }

  return result;
}

unint64_t sub_24BA990D4()
{
  result = qword_27F06B4E0;
  if (!qword_27F06B4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B4D8, &qword_24BABF4C8);
    sub_24BA9918C();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70, &qword_24BAB66D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B4E0);
  }

  return result;
}

unint64_t sub_24BA9918C()
{
  result = qword_27F06B4E8;
  if (!qword_27F06B4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B4F0, &unk_24BABF4D0);
    sub_24B93B210();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0, &unk_24BAAD7B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B4E8);
  }

  return result;
}

uint64_t sub_24BA99298(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_24BA992F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24BA9937C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B548, &unk_24BABF608);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  *v6 = sub_24BAA8BCC();
  *(v6 + 1) = 0x4018000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B550, &qword_24BABF618);
  sub_24BA99648(a1, &v6[*(v7 + 44)]);
  sub_24B8F384C(&qword_27F06B540, &qword_27F06B548, &unk_24BABF608, MEMORY[0x277CE1198]);
  sub_24BAA94DC();
  sub_24B8F35E4(v6, &qword_27F06B548, &unk_24BABF608);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B520, &qword_24BABF5F8) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B10, &unk_24BAAD9A0) + 28);
  v10 = sub_24BAA937C();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  result = swift_getKeyPath();
  *v8 = result;
  return result;
}

uint64_t sub_24BA9952C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA7C2C();
  v4 = v3;
  result = sub_24BAA7C2C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  a1[4] = 0xD000000000000016;
  a1[5] = 0x800000024BAC6630;
  a1[6] = 0xD000000000000016;
  a1[7] = 0x800000024BAC6650;
  return result;
}

uint64_t sub_24BA99648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B558, &qword_24BABF650);
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B560, &qword_24BABF658);
  MEMORY[0x28223BE20](v42);
  v8 = v36 - v7;
  v9 = sub_24BAA866C();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B568, &qword_24BABF660);
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v36 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B570, &qword_24BABF668);
  MEMORY[0x28223BE20](v41);
  v16 = v36 - v15;
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18)
  {
    *v6 = sub_24BAA8AAC();
    *(v6 + 1) = 0x4030000000000000;
    v6[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B578, &qword_24BABF670);
    sub_24BA9A588(a1, &v6[*(v19 + 44)]);
    v20 = sub_24BAA911C();
    sub_24BAA828C();
    v21 = &v6[*(v4 + 36)];
    *v21 = v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    *(v21 + 4) = v25;
    v21[40] = 0;
    sub_24B8F3208(v6, v8, &qword_27F06B558, &qword_24BABF650);
    swift_storeEnumTagMultiPayload();
    sub_24BA9C13C();
    sub_24BA9C288();
    sub_24BAA8D0C();
    return sub_24B8F35E4(v6, &qword_27F06B558, &qword_24BABF650);
  }

  else
  {
    type metadata accessor for CarStatus(0);
    v36[1] = a2;
    sub_24BA9C994(&qword_27F06AF40, type metadata accessor for CarStatus, &unk_24BAB45D4);
    v36[0] = v4;
    sub_24BAA82FC();
    v43 = sub_24BAA84DC();
    v44 = v27;
    MEMORY[0x28223BE20](v43);
    v36[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B5A8, &qword_24BABF680);
    sub_24B8F384C(&qword_27F06B5B0, &qword_27F06B5A8, &qword_24BABF680, MEMORY[0x277CE1138]);
    sub_24BA9C348();
    sub_24BAA84AC();
    sub_24BAA865C();
    sub_24B8F384C(&qword_27F06B588, &qword_27F06B568, &qword_24BABF660, MEMORY[0x277CDD938]);
    sub_24BA9C994(&qword_27F063BF8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v28 = v38;
    v29 = v40;
    sub_24BAA944C();
    (*(v39 + 8))(v11, v29);
    (*(v37 + 8))(v14, v28);
    v30 = sub_24BAA911C();
    sub_24BAA828C();
    v31 = &v16[*(v41 + 36)];
    *v31 = v30;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    sub_24BA9C39C(v16, v8);
    swift_storeEnumTagMultiPayload();
    sub_24BA9C13C();
    sub_24BA9C288();
    sub_24BAA8D0C();
    return sub_24B8F35E4(v16, &qword_27F06B570, &qword_24BABF668);
  }
}

uint64_t sub_24BA99C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24BAA8AAC();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B5C0, &qword_24BABF688);
  return sub_24BA99C60(a1, a2 + *(v4 + 44));
}

uint64_t sub_24BA99C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for DrivingListSection.CarImage(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v25 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  if (*(a1 + 24))
  {

    v12 = sub_24B991A94();

    *v9 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
    swift_storeEnumTagMultiPayload();
    *(v9 + *(v3 + 20)) = v12;
    sub_24BA9C460(v9, v11);
    v13 = sub_24BAA8BDC();
    v27 = 1;
    sub_24BA9A000(&v38);
    v31 = *&v39[32];
    v32 = *&v39[48];
    v33[0] = *&v39[64];
    *(v33 + 9) = *&v39[73];
    v28 = v38;
    v29 = *v39;
    v30 = *&v39[16];
    v34[0] = v38;
    v34[1] = *v39;
    v34[2] = *&v39[16];
    v34[3] = *&v39[32];
    v34[4] = *&v39[48];
    v35[0] = *&v39[64];
    *(v35 + 9) = *&v39[73];
    sub_24B8F3208(&v28, &v36, &qword_27F0647E0, &qword_24BAAF338);
    sub_24B8F35E4(v34, &qword_27F0647E0, &qword_24BAAF338);
    *(&v26[3] + 7) = v31;
    *(&v26[4] + 7) = v32;
    *(&v26[5] + 7) = v33[0];
    v26[6] = *(v33 + 9);
    *(v26 + 7) = v28;
    *(&v26[1] + 7) = v29;
    *(&v26[2] + 7) = v30;
    v14 = v27;
    sub_24BA9C4C4(v11, v6);
    v15 = v25;
    sub_24BA9C4C4(v6, v25);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B5C8, &unk_24BABF6C0);
    v17 = *(v16 + 48);
    *&v37[49] = v26[3];
    *&v37[65] = v26[4];
    *&v37[81] = v26[5];
    *&v37[97] = v26[6];
    *&v37[1] = v26[0];
    v18 = v15 + v17;
    v36 = v13;
    v37[0] = v14;
    *&v37[17] = v26[1];
    *&v37[33] = v26[2];
    *(v18 + 128) = HIBYTE(v26[6]);
    v19 = *&v37[64];
    *(v18 + 64) = *&v37[48];
    *(v18 + 80) = v19;
    v20 = *&v37[32];
    *(v18 + 32) = *&v37[16];
    *(v18 + 48) = v20;
    v21 = *v37;
    *v18 = v36;
    *(v18 + 16) = v21;
    v22 = *&v37[96];
    *(v18 + 96) = *&v37[80];
    *(v18 + 112) = v22;
    v23 = v15 + *(v16 + 64);
    *v23 = 0;
    *(v23 + 8) = 1;
    sub_24B8F3208(&v36, &v38, &qword_27F0647F0, &qword_24BAAF348);
    sub_24BA9C528(v11);
    *&v39[49] = v26[3];
    *&v39[65] = v26[4];
    *&v39[81] = v26[5];
    v40 = v26[6];
    *&v39[1] = v26[0];
    *&v39[17] = v26[1];
    v38 = v13;
    v39[0] = v14;
    *&v39[33] = v26[2];
    sub_24B8F35E4(&v38, &qword_27F0647F0, &qword_24BAAF348);
    return sub_24BA9C528(v6);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24BA9C994(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

double sub_24BA9A000@<D0>(uint64_t a2@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v39 = sub_24BAA7C2C();
  sub_24B8F5E3C();
  v3 = sub_24BAA93CC();
  v5 = v4;
  v7 = v6;
  sub_24BAA916C();
  v8 = sub_24BAA939C();
  v10 = v9;
  v12 = v11;

  sub_24B900910(v3, v5, v7 & 1);

  sub_24BAA988C();
  v13 = sub_24BAA933C();
  v36 = v14;
  v37 = v13;
  v35 = v15;
  v38 = v16;

  sub_24B900910(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  type metadata accessor for CarStatus(0);
  sub_24BA9C994(&qword_27F06AF40, type metadata accessor for CarStatus, &unk_24BAB45D4);
  sub_24BAA82FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  sub_24BA9A404(v39);
  v17 = sub_24BAA93CC();
  v19 = v18;
  LOBYTE(v8) = v20;
  sub_24BAA927C();
  v21 = sub_24BAA939C();
  v23 = v22;
  v25 = v24;

  sub_24B900910(v17, v19, v8 & 1);

  sub_24BAA989C();
  v26 = sub_24BAA933C();
  v28 = v27;
  LOBYTE(v17) = v29;
  v33 = v30;

  sub_24B900910(v21, v23, v25 & 1);

  v31 = swift_getKeyPath();
  *a2 = v37;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v26;
  *(a2 + 64) = v28;
  *(a2 + 72) = v17 & 1;
  *(a2 + 80) = v33;
  *(a2 + 88) = v31;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  sub_24B8F319C(v37, v36, v35 & 1);

  sub_24B8F319C(v26, v28, v17 & 1);

  sub_24B900910(v26, v28, v17 & 1);

  sub_24B900910(v37, v36, v35 & 1);

  return result;
}

uint64_t sub_24BA9A404(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

LABEL_11:
      swift_once();
      return sub_24BAA7C2C();
    case 1:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_11;
    case 2:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_11;
  }

  return 0;
}

uint64_t sub_24BA9A588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DrivingListSection.CarImage(0);
  v5 = MEMORY[0x28223BE20](v4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v30 - v7);
  MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  if (*(a1 + 24))
  {
    v31 = a2;
    v32 = v9;

    v12 = sub_24B991A94();

    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
    swift_storeEnumTagMultiPayload();
    *(v8 + *(v4 + 20)) = v12;
    sub_24BA9C460(v8, v11);
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v33 = sub_24BAA7C2C();
    v34 = v13;
    sub_24B8F5E3C();
    v14 = sub_24BAA93CC();
    v16 = v15;
    v18 = v17;
    sub_24BAA915C();
    v19 = sub_24BAA939C();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    sub_24B900910(v14, v16, v18 & 1);

    v26 = v32;
    sub_24BA9C4C4(v11, v32);
    v27 = v31;
    sub_24BA9C4C4(v26, v31);
    v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B5D0, &qword_24BABF748) + 48);
    *v28 = v19;
    *(v28 + 8) = v21;
    v23 &= 1u;
    *(v28 + 16) = v23;
    *(v28 + 24) = v25;
    sub_24B8F319C(v19, v21, v23);

    sub_24BA9C528(v11);
    sub_24B900910(v19, v21, v23);

    return sub_24BA9C528(v26);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel(0);
    sub_24BA9C994(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel, &unk_24BAB4DD8);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

double sub_24BA9A8A4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24BAA991C();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F38, &qword_24BAAE200) + 36);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08, &qword_24BAAD880);
  swift_storeEnumTagMultiPayload();
  *a2 = v5;
  v7 = *(v2 + *(a1 + 20));
  KeyPath = swift_getKeyPath();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F40, &qword_24BAAE208) + 36));
  *v9 = KeyPath;
  v9[1] = v7;

  return result;
}

uint64_t sub_24BA9A990()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = *(v0 + 4);
  sub_24BA9952C(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B520, &qword_24BABF5F8);
  sub_24B8FF838();
  sub_24BA9AA44();
  return sub_24BAA9C1C();
}

unint64_t sub_24BA9AA44()
{
  result = qword_27F06B528;
  if (!qword_27F06B528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B520, &qword_24BABF5F8);
    sub_24BA9AAFC();
    sub_24B8F384C(&qword_27F063B08, &qword_27F063B10, &unk_24BAAD9A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B528);
  }

  return result;
}

unint64_t sub_24BA9AAFC()
{
  result = qword_27F06B530;
  if (!qword_27F06B530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B538, &qword_24BABF600);
    sub_24B8F384C(&qword_27F06B540, &qword_27F06B548, &unk_24BABF608, MEMORY[0x277CE1198]);
    sub_24BA9C994(&qword_27F0690A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B530);
  }

  return result;
}

uint64_t sub_24BA9ABE4@<X0>(uint64_t a1@<X0>, char *a3@<X8>)
{
  v53 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685A8, &unk_24BAB89F0);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v58 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = v49 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B618, &qword_24BABF860);
  v50 = *(v52 - 8);
  v8 = MEMORY[0x28223BE20](v52);
  v51 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = v49 - v10;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v49[2] = qword_27F077088;
  v63 = sub_24BAA7C2C();
  v64 = v11;
  sub_24B8F5E3C();
  v70 = sub_24BAA93CC();
  v71 = v12;
  v72 = v13 & 1;
  v73 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v63 = sub_24BA9B304(v63);
  v64 = v15;
  v16 = sub_24BAA93CC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v49[0] = v49;
  v63 = v16;
  v64 = v18;
  v65 = v20 & 1;
  v66 = v22;
  v67 = KeyPath;
  v68 = 0;
  v69 = 1;
  MEMORY[0x28223BE20](KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B620, &unk_24BABF868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067950, &unk_24BABA780);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B628, &qword_24BABF878);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B630, &unk_24BABF880);
  v26 = sub_24BAA8A3C();
  v49[1] = a1;
  v27 = v26;
  v28 = sub_24B8F384C(&qword_27F06B638, &qword_27F06B630, &unk_24BABF880, MEMORY[0x277CDF038]);
  v59 = v25;
  v60 = v27;
  v61 = v28;
  v62 = MEMORY[0x277CDDDA0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B9D39AC();
  v30 = v56;
  sub_24BAA9C2C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v63 = sub_24BAA7C2C();
  v64 = v31;
  v63 = sub_24BAA93CC();
  v64 = v32;
  v65 = v33 & 1;
  v66 = v34;
  MEMORY[0x28223BE20](v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0, &unk_24BAB07C0);
  sub_24B8F384C(&unk_27F069090, &qword_27F0639C0, &unk_24BAB07C0, MEMORY[0x277CDF068]);
  v35 = v57;
  sub_24BAA9C4C();
  v36 = v50;
  v37 = *(v50 + 16);
  v38 = v51;
  v39 = v52;
  v37(v51, v30, v52);
  v41 = v54;
  v40 = v55;
  v42 = *(v54 + 16);
  v42(v58, v35, v55);
  v43 = v53;
  v37(v53, v38, v39);
  v44 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B640, &qword_24BABF8E0) + 48)];
  v45 = v58;
  v42(v44, v58, v40);
  v46 = *(v41 + 8);
  v46(v57, v40);
  v47 = *(v36 + 8);
  v47(v56, v39);
  v46(v45, v40);
  return (v47)(v38, v39);
}

uint64_t sub_24BA9B304(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

LABEL_11:
      swift_once();
      return sub_24BAA7C2C();
    case 1:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_11;
    case 2:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_11;
  }

  return 0;
}

uint64_t sub_24BA9B48C@<X0>(uint64_t a3@<X8>)
{
  v21 = a3;
  v3 = sub_24BAA8A3C();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B630, &unk_24BABF880);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B628, &qword_24BABF878);
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v27 = sub_24BAA7C2C();
  v28 = v12;
  type metadata accessor for CarStatus(0);
  sub_24BA9C994(&qword_27F06AF40, type metadata accessor for CarStatus, &unk_24BAB45D4);
  sub_24BAA84EC();
  swift_getKeyPath();
  sub_24BAA84FC();

  v25 = v22;
  v26 = v23;
  type metadata accessor for CARAutomaticDNDTriggerPreference(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B648, &qword_24BABF8E8);
  sub_24BA9C994(&qword_27F06B650, type metadata accessor for CARAutomaticDNDTriggerPreference, &unk_24BAAC870);
  sub_24B8F384C(&qword_27F06B658, &qword_27F06B648, &qword_24BABF8E8, MEMORY[0x277CE14C0]);
  sub_24B8F5E3C();
  sub_24BAA9ADC();
  sub_24BAA8A2C();
  v13 = sub_24B8F384C(&qword_27F06B638, &qword_27F06B630, &unk_24BABF880, MEMORY[0x277CDF038]);
  v14 = MEMORY[0x277CDDDA0];
  sub_24BAA947C();
  (*(v20 + 8))(v5, v3);
  (*(v17 + 8))(v8, v6);
  *&v22 = v6;
  *(&v22 + 1) = v3;
  v23 = v13;
  v24 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  sub_24BAA94BC();
  return (*(v18 + 8))(v11, v15);
}

uint64_t sub_24BA9B930@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B660, &qword_24BABF8F0);
  v39 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v40 = &v38 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v38 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v44 = sub_24BAA7C2C();
  v45 = v16;
  sub_24B8F5E3C();
  *v15 = sub_24BAA93CC();
  *(v15 + 1) = v17;
  v15[16] = v18 & 1;
  *(v15 + 3) = v19;
  *(v15 + 4) = 2;
  v15[40] = 1;
  v38 = v15;
  v44 = sub_24BAA7C2C();
  v45 = v20;
  *v13 = sub_24BAA93CC();
  *(v13 + 1) = v21;
  v13[16] = v22 & 1;
  *(v13 + 3) = v23;
  *(v13 + 4) = 1;
  v13[40] = 1;
  v44 = sub_24BAA7C2C();
  v45 = v24;
  v25 = v10;
  *v10 = sub_24BAA93CC();
  *(v10 + 1) = v26;
  v10[16] = v27 & 1;
  *(v10 + 3) = v28;
  *(v10 + 4) = 0;
  v10[40] = 1;
  v29 = v39;
  v30 = *(v39 + 16);
  v31 = v43;
  v30(v43, v15, v1);
  v32 = v40;
  v30(v40, v13, v1);
  v33 = v41;
  v30(v41, v25, v1);
  v34 = v42;
  v30(v42, v31, v1);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B668, &unk_24BABF8F8);
  v30(&v34[*(v35 + 48)], v32, v1);
  v30(&v34[*(v35 + 64)], v33, v1);
  v36 = *(v29 + 8);
  v36(v25, v1);
  v36(v13, v1);
  v36(v38, v1);
  v36(v33, v1);
  v36(v32, v1);
  return (v36)(v43, v1);
}

uint64_t sub_24BA9BD84(uint64_t a1, uint64_t a2)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  type metadata accessor for CarStatus(0);
  sub_24BA9C994(&qword_27F06AF40, type metadata accessor for CarStatus, &unk_24BAB45D4);
  sub_24BAA84EC();
  swift_getKeyPath();
  sub_24BAA84FC();

  sub_24B8F5E3C();
  return sub_24BAA9AFC();
}

uint64_t sub_24BA9BEFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B5F8, &qword_24BABF848);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-v3];
  v5 = v0[1];
  v9 = *v0;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B600, &unk_24BABF850);
  sub_24B8F384C(&qword_27F06B608, &qword_27F06B600, &unk_24BABF850, MEMORY[0x277CE14C0]);
  sub_24BAA92CC();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v11 = sub_24BAA7C2C();
  v12 = v6;
  sub_24B8F384C(&qword_27F06B610, &qword_27F06B5F8, &qword_24BABF848, MEMORY[0x277CDE5A0]);
  sub_24B8F5E3C();
  sub_24BAA952C();

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_24BA9C13C()
{
  result = qword_27F06B580;
  if (!qword_27F06B580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B570, &qword_24BABF668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B568, &qword_24BABF660);
    sub_24BAA866C();
    sub_24B8F384C(&qword_27F06B588, &qword_27F06B568, &qword_24BABF660, MEMORY[0x277CDD938]);
    sub_24BA9C994(&qword_27F063BF8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B580);
  }

  return result;
}

unint64_t sub_24BA9C288()
{
  result = qword_27F06B590;
  if (!qword_27F06B590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B558, &qword_24BABF650);
    sub_24B8F384C(&qword_27F06B598, &qword_27F06B5A0, &qword_24BABF678, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B590);
  }

  return result;
}

unint64_t sub_24BA9C348()
{
  result = qword_27F06B5B8;
  if (!qword_27F06B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B5B8);
  }

  return result;
}

uint64_t sub_24BA9C39C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B570, &qword_24BABF668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DrivingListSection.CarImage(uint64_t a1)
{
  result = qword_27F06B5D8;
  if (!qword_27F06B5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24BA9C460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrivingListSection.CarImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA9C4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrivingListSection.CarImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA9C528(uint64_t a1)
{
  v2 = type metadata accessor for DrivingListSection.CarImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24BA9C5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18, qword_24BAAD8C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24BA9C6A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18, qword_24BAAD8C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_24BA9C764(uint64_t a1)
{
  sub_24B980E74(319);
  if (v1 <= 0x3F)
  {
    sub_24B9366D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24BA9C7EC()
{
  result = qword_27F06B5E8;
  if (!qword_27F06B5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B5F0, qword_24BABF7A0);
    sub_24B8FF838();
    sub_24BA9AA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B5E8);
  }

  return result;
}

uint64_t sub_24BA9C8E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B5F8, &qword_24BABF848);
  sub_24B8F384C(&qword_27F06B610, &qword_27F06B5F8, &qword_24BABF848, MEMORY[0x277CDE5A0]);
  sub_24B8F5E3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24BA9C994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 ActivityEditView.init(use:semanticType:textName:canEditName:symbolImageName:tintColorName:usedSymbolImageNames:usedNames:isScrolling:onCommit:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, __n128 a13, unint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v40 = *a1;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for ActivityEditView(0);
  v26 = a9 + v25[7];
  v27 = (a9 + v25[11]);
  v47 = 0;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A10, qword_24BAB3020);
  sub_24BAA99EC();
  v28 = a9 + v25[13];
  sub_24BAA99EC();
  *v28 = v45;
  *(v28 + 1) = v46;
  v29 = v25[18];
  *(a9 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968, &unk_24BAAD710);
  swift_storeEnumTagMultiPayload();
  *(a9 + v25[6]) = v40;
  *v26 = a2;
  v26[8] = a3 & 1;
  *(a9 + v25[5]) = a8;
  *(a9 + v25[14]) = a16;
  *(a9 + v25[15]) = a17;
  v30 = (a9 + v25[16]);
  *v30 = a20;
  v30[1] = a21;
  v31 = (a9 + v25[17]);
  *v31 = a18;
  v31[1] = a19;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8, &unk_24BABEB80);
  MEMORY[0x24C24FC10](&v47);

  v33 = v48;
  *v27 = v47;
  v27[1] = v33;
  v27[2] = 0;
  MEMORY[0x24C24FC10](&v47, v32);

  v34 = v48;
  v35 = (a9 + v25[12]);
  *v35 = v47;
  v35[1] = v34;
  v35[2] = 0;
  v36 = (a9 + v25[8]);
  *v36 = a4;
  v36[1] = a5;
  v36[2] = a6;
  v36[3] = a7;
  v37 = a9 + v25[9];
  *v37 = a10;
  *(v37 + 2) = a11;
  *(v37 + 3) = a12;
  v38 = (a9 + v25[10]);
  result = a13;
  *v38 = a13;
  v38[1].n128_u64[0] = a14;
  v38[1].n128_u64[1] = a15;
  return result;
}

uint64_t ActivityEditView.Use.hashValue.getter()
{
  v1 = *v0;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v1);
  return sub_24BAAA84C();
}

__n128 ActivityEditView.init(use:semanticType:textName:canEditName:symbolImageName:tintColorName:usedSymbolImageNames:usedNames:onCommit:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, __n128 a13, unint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v39 = *a1;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for ActivityEditView(0);
  v25 = a9 + v24[7];
  v26 = (a9 + v24[11]);
  v45 = 0;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A10, qword_24BAB3020);
  sub_24BAA99EC();
  v27 = a9 + v24[13];
  sub_24BAA99EC();
  *v27 = v43;
  *(v27 + 1) = v44;
  v28 = v24[18];
  *(a9 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968, &unk_24BAAD710);
  swift_storeEnumTagMultiPayload();
  *(a9 + v24[6]) = v39;
  *v25 = a2;
  v25[8] = a3 & 1;
  *(a9 + v24[5]) = a8;
  *(a9 + v24[14]) = a16;
  *(a9 + v24[15]) = a17;
  v29 = (a9 + v24[16]);
  *v29 = a18;
  v29[1] = a19;
  v30 = (a9 + v24[17]);
  *v30 = sub_24B9FA73C;
  v30[1] = 0;

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8, &unk_24BABEB80);
  MEMORY[0x24C24FC10](&v45);

  v32 = v46;
  *v26 = v45;
  v26[1] = v32;
  v26[2] = 0;
  MEMORY[0x24C24FC10](&v45, v31);

  v33 = v46;
  v34 = (a9 + v24[12]);
  *v34 = v45;
  v34[1] = v33;
  v34[2] = 0;
  v35 = (a9 + v24[8]);
  *v35 = a4;
  v35[1] = a5;
  v35[2] = a6;
  v35[3] = a7;
  v36 = a9 + v24[9];
  *v36 = a10;
  *(v36 + 2) = a11;
  *(v36 + 3) = a12;
  v37 = (a9 + v24[10]);
  result = a13;
  *v37 = a13;
  v37[1].n128_u64[0] = a14;
  v37[1].n128_u64[1] = a15;
  return result;
}

uint64_t sub_24BA9D090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B6E8, &qword_24BABFB08);
  MEMORY[0x28223BE20](v4);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B720, &qword_24BABFC88);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B6D8, &qword_24BABFB00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  v14 = type metadata accessor for ActivityEditView(0);
  if (*(a1 + *(v14 + 24)))
  {
    sub_24BA9D410(v6);
    sub_24B8F3208(v6, v9, &qword_27F06B6E8, &qword_24BABFB08);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06B6D0, &qword_27F06B6D8, &qword_24BABFB00, MEMORY[0x277CDD6E0]);
    sub_24B8F384C(&qword_27F06B6E0, &qword_27F06B6E8, &qword_24BABFB08, MEMORY[0x277CE14C0]);
    sub_24BAA8D0C();
    return sub_24B8F35E4(v6, &qword_27F06B6E8, &qword_24BABFB08);
  }

  else
  {
    v16[1] = a2;
    MEMORY[0x28223BE20](v14);
    v16[-2] = a1;
    sub_24BAA909C();
    sub_24B8F384C(&qword_27F06B6E0, &qword_27F06B6E8, &qword_24BABFB08, MEMORY[0x277CE14C0]);
    sub_24BAA829C();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06B6D0, &qword_27F06B6D8, &qword_24BABFB00, MEMORY[0x277CDD6E0]);
    sub_24BAA8D0C();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_24BA9D410@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v114 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B728, &qword_24BABFC90);
  MEMORY[0x28223BE20](v112);
  v4 = &v99 - v3;
  v102 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v102);
  v101 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA9C6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B730, &qword_24BABFC98);
  MEMORY[0x28223BE20](v103);
  v11 = &v99 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B738, &qword_24BABFCA0);
  MEMORY[0x28223BE20](v108);
  v100 = &v99 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B740, &qword_24BABFCA8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v113 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v116 = &v99 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B748, &qword_24BABFCB0);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v109 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v99 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B750, &qword_24BABFCB8);
  v24 = v23 - 8;
  v25 = MEMORY[0x28223BE20](v23);
  v111 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = (&v99 - v27);
  *v28 = sub_24BAA9D1C();
  v28[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B758, &qword_24BABFCC0);
  sub_24BA9EBA4(v2, v28 + *(v30 + 44));
  v31 = sub_24BAA90BC();
  v32 = *(v24 + 44);
  v115 = v28;
  v33 = v28 + v32;
  *v33 = v31;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  *v22 = sub_24BAA8BCC();
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B760, &unk_24BABFCC8);
  sub_24BA9FA0C(v22 + *(v34 + 44));
  v35 = sub_24BAA90AC();
  v36 = *(v18 + 44);
  v110 = v22;
  v37 = v22 + v36;
  *v37 = v35;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 1;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v107 = v120;
  v106 = v122;
  v105 = v124;
  v104 = v125;
  v128 = 1;
  v127 = v121;
  v126 = v123;
  LOBYTE(v22) = *(v2 + *(type metadata accessor for ActivityEditView(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08, &qword_24BAB7770);
  sub_24BAA9C7C();
  *(swift_allocObject() + 16) = xmmword_24BAAD5B0;
  *v9 = xmmword_24BABF940;
  (*(v7 + 104))(v9, *MEMORY[0x277CDF100], v6);
  sub_24BAA9C8C();
  v117 = v2;
  sub_24BAA8BCC();
  LODWORD(v118) = 0;
  sub_24BAA5C08(&qword_27F065160, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_24BAAA85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B768, &qword_24BABFCD8);
  sub_24B8F384C(&qword_27F06B770, &qword_27F06B768, &qword_24BABFCD8, MEMORY[0x277CE14C0]);
  sub_24BAA9D8C();
  if (v22)
  {
    v38 = sub_24BAA90CC();
    sub_24BAA828C();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B778, &qword_24BABFCE0) + 36)];
    *v47 = v38;
    *(v47 + 1) = v40;
    *(v47 + 2) = v42;
    *(v47 + 3) = v44;
    *(v47 + 4) = v46;
    v47[40] = 0;
    v48 = sub_24BAA90AC();
    v49 = &v11[*(v103 + 36)];
    *v49 = v48;
    *(v49 + 8) = 0u;
    *(v49 + 24) = 0u;
    v49[40] = 1;
    sub_24B8F3208(v11, v4, &qword_27F06B730, &qword_24BABFC98);
    swift_storeEnumTagMultiPayload();
    sub_24BAA5CAC(&qword_27F06B780, &qword_27F06B738, &qword_24BABFCA0, sub_24BAA5C7C);
    sub_24BAA5CAC(&qword_27F06B7B8, &qword_27F06B730, &qword_24BABFC98, sub_24BAA5FAC);
    sub_24BAA8D0C();
    v50 = v11;
    v51 = &qword_27F06B730;
    v52 = &qword_24BABFC98;
  }

  else
  {
    v53 = sub_24BAA90CC();
    sub_24BAA828C();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B778, &qword_24BABFCE0) + 36)];
    *v62 = v53;
    *(v62 + 1) = v55;
    *(v62 + 2) = v57;
    *(v62 + 3) = v59;
    *(v62 + 4) = v61;
    v62[40] = 0;
    v63 = sub_24BAA90BC();
    v102 = &v99;
    v64 = &v11[*(v103 + 36)];
    *v64 = v63;
    *(v64 + 8) = 0u;
    *(v64 + 24) = 0u;
    v64[40] = 1;
    MEMORY[0x28223BE20](v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064050, &qword_24BABFD00);
    sub_24BAA5CAC(&qword_27F06B7B8, &qword_27F06B730, &qword_24BABFC98, sub_24BAA5FAC);
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058, &qword_24BAAE440);
    v66 = sub_24B8F384C(&qword_27F064060, &qword_27F064058, &qword_24BAAE440, MEMORY[0x277CDD7A8]);
    v118 = v65;
    v119 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v100;
    sub_24BAA96CC();
    sub_24B8F35E4(v11, &qword_27F06B730, &qword_24BABFC98);
    v68 = sub_24BA9E9D8();
    v69 = sub_24BAA90BC();
    v70 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B7B0, &qword_24BABFCF8) + 36);
    *v70 = v68;
    *(v70 + 8) = v69;
    v71 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B7A0, &qword_24BABFCF0) + 36));
    v72 = *(sub_24BAA869C() + 20);
    v73 = *MEMORY[0x277CE0118];
    v74 = sub_24BAA8B2C();
    (*(*(v74 - 8) + 104))(&v71[v72], v73, v74);
    __asm { FMOV            V0.2D, #12.0 }

    *v71 = _Q0;
    *&v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8, &qword_24BAB1370) + 36)] = 256;
    LOBYTE(v73) = sub_24BAA90AC();
    v80 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B790, &qword_24BABFCE8) + 36);
    *v80 = v73;
    *(v80 + 8) = 0u;
    *(v80 + 24) = 0u;
    *(v80 + 40) = 1;
    LOBYTE(v73) = sub_24BAA90DC();
    sub_24BAA828C();
    v81 = v67 + *(v108 + 36);
    *v81 = v73;
    *(v81 + 8) = v82;
    *(v81 + 16) = v83;
    *(v81 + 24) = v84;
    *(v81 + 32) = v85;
    *(v81 + 40) = 0;
    sub_24B8F3208(v67, v4, &qword_27F06B738, &qword_24BABFCA0);
    swift_storeEnumTagMultiPayload();
    sub_24BAA5CAC(&qword_27F06B780, &qword_27F06B738, &qword_24BABFCA0, sub_24BAA5C7C);
    sub_24BAA8D0C();
    v50 = v67;
    v51 = &qword_27F06B738;
    v52 = &qword_24BABFCA0;
  }

  sub_24B8F35E4(v50, v51, v52);
  v86 = v111;
  sub_24B8F3208(v115, v111, &qword_27F06B750, &qword_24BABFCB8);
  v87 = v110;
  v88 = v109;
  sub_24B8F3208(v110, v109, &qword_27F06B748, &qword_24BABFCB0);
  v89 = v128;
  v90 = v127;
  v91 = v126;
  v92 = v116;
  v93 = v113;
  sub_24B8F3208(v116, v113, &qword_27F06B740, &qword_24BABFCA8);
  v94 = v114;
  sub_24B8F3208(v86, v114, &qword_27F06B750, &qword_24BABFCB8);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B7D8, &qword_24BABFD18);
  sub_24B8F3208(v88, v94 + v95[12], &qword_27F06B748, &qword_24BABFCB0);
  v96 = v94 + v95[16];
  *v96 = 0;
  *(v96 + 8) = v89;
  *(v96 + 16) = v107;
  *(v96 + 24) = v90;
  *(v96 + 32) = v106;
  *(v96 + 40) = v91;
  v97 = v104;
  *(v96 + 48) = v105;
  *(v96 + 56) = v97;
  sub_24B8F3208(v93, v94 + v95[20], &qword_27F06B740, &qword_24BABFCA8);
  sub_24B8F35E4(v92, &qword_27F06B740, &qword_24BABFCA8);
  sub_24B8F35E4(v87, &qword_27F06B748, &qword_24BABFCB0);
  sub_24B8F35E4(v115, &qword_27F06B750, &qword_24BABFCB8);
  sub_24B8F35E4(v93, &qword_27F06B740, &qword_24BABFCA8);
  sub_24B8F35E4(v88, &qword_27F06B748, &qword_24BABFCB0);
  return sub_24B8F35E4(v86, &qword_27F06B750, &qword_24BABFCB8);
}

uint64_t sub_24BA9E23C(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064058, &qword_24BAAE440);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078, &unk_24BAAE460);
  sub_24B90A7A8();
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F064060, &qword_27F064058, &qword_24BAAE440, MEMORY[0x277CDD7A8]);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24BA9E3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityEditView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v19 = sub_24BAA7C2C();
  v20 = v7;
  sub_24BAA6074(a1, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24BAA6780(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for ActivityEditView);
  sub_24B8F5E3C();
  sub_24BAA9A7C();
  v10 = (a1 + *(v4 + 52));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v19) = v11;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
  sub_24BAA99FC();
  v13 = v18[15];
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078, &unk_24BAAE460);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_24B9027F8;
  v17[2] = v15;
  return result;
}

void *sub_24BA9E634()
{
  v1 = v0;
  v2 = sub_24BAA868C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940, &unk_24BAAD600);
  MEMORY[0x28223BE20](v40);
  v39 = (v38 - v5);
  v6 = sub_24BAA7B4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActivityEditView(0);
  v11 = (v0 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v41 = v10;
  *&v42 = v13;
  *(&v42 + 1) = v12;
  *&v43 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30, &qword_24BAB3090);
  result = sub_24BAA99FC();
  if (*(&v44 + 1))
  {
    v38[1] = *(&v44 + 1);
    v38[2] = v4;
    v42 = v44;
    sub_24BAA7B3C();
    sub_24B8F5E3C();
    v16 = sub_24BAAA42C();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    *&v42 = v13;
    *(&v42 + 1) = v12;
    *&v43 = v14;
    *&v44 = v16;
    *(&v44 + 1) = v18;
    sub_24BAA9A0C();
    if (sub_24BAA225C())
    {
      goto LABEL_7;
    }

    v19 = sub_24BAA04B8();
    v20 = v41;
    if (v19)
    {
      goto LABEL_7;
    }

    v21 = *(v1 + *(v41 + 64));
    v22 = (v1 + *(v41 + 32));
    v23 = *v22;
    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v42 = v23;
    *&v43 = v25;
    *(&v43 + 1) = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8, &unk_24BABEB80);
    MEMORY[0x24C24FC10](&v44, v26);
    v27 = v44;
    v28 = v1 + *(v20 + 36);
    v29 = *(v28 + 8);
    *&v42 = *v28;
    *(&v42 + 1) = v29;
    v43 = *(v28 + 16);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
    result = MEMORY[0x24C24FC10](&v44);
    v31 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v32 = v44;
      v33 = v1 + *(v20 + 40);
      v34 = *(v33 + 8);
      *&v42 = *v33;
      *(&v42 + 1) = v34;
      v43 = *(v33 + 16);
      result = MEMORY[0x24C24FC10](&v44, v30);
      v35 = *(&v44 + 1);
      if (*(&v44 + 1))
      {
        v36 = v44;

        v21(v27, *(&v27 + 1), v32, v31, v36, v35);

LABEL_7:

        v37 = v39;
        sub_24BA8DA5C(v39);
        MEMORY[0x24C24FC10](v40);
        sub_24BAA867C();
        sub_24BAA9B6C();
        return sub_24B8F35E4(v37, &qword_27F063940, &unk_24BAAD600);
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

uint64_t sub_24BA9E9D8()
{
  v1 = sub_24BAA82DC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  if (*(v0 + *(type metadata accessor for ActivityEditView(0) + 24)))
  {
    sub_24BAA2B1C(v7);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF3C0], v1);
    v8 = sub_24BAA82CC();
    v9 = *(v2 + 8);
    v9(v5, v1);
    v9(v7, v1);
    v10 = objc_opt_self();
    if (v8)
    {
      v11 = [v10 secondarySystemGroupedBackgroundColor];
    }

    else
    {
      v11 = [v10 systemGroupedBackgroundColor];
    }

    v14 = v11;
    return sub_24BAA973C();
  }

  else
  {
    v12 = [objc_opt_self() secondarySystemGroupedBackgroundColor];

    return sub_24BAA973C();
  }
}

void *sub_24BA9EBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8D0, &qword_24BABFE90);
  v3 = MEMORY[0x28223BE20](v69);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = (&v69 - v5);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8D8, &qword_24BABFE98);
  v76 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v70 = (&v69 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8E0, &qword_24BABFEA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v69 - v10;
  v11 = sub_24BAA992C();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24BAA82DC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  v21 = type metadata accessor for ActivityEditView(0);
  v22 = *(v21 + 40);
  v82 = a1;
  v23 = a1 + v22;
  v24 = *(v23 + 8);
  v91 = *v23;
  *v92 = v24;
  *&v92[8] = *(v23 + 16);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
  MEMORY[0x24C24FC10](v83);
  _s7SwiftUI5ColorV013FocusSettingsB0E08activityC0yACSgSSSgFZ_0(*&v83[0], *(&v83[0] + 1));
  v27 = v26;

  v81 = v27;
  if (!v27)
  {
    v81 = sub_24BAA989C();
  }

  sub_24BAA9D1C();
  sub_24BAA83BC();
  *(v117 + 6) = *(&v117[3] + 6);
  *(&v117[1] + 6) = *(&v117[4] + 6);
  *(&v117[2] + 6) = *(&v117[5] + 6);
  v75 = v21;
  v28 = v82 + *(v21 + 36);
  v29 = *(v28 + 8);
  v91 = *v28;
  *v92 = v29;
  *&v92[8] = *(v28 + 16);
  result = MEMORY[0x24C24FC10](v83, v25);
  v31 = *(&v83[0] + 1);
  if (*(&v83[0] + 1))
  {
    v32 = *&v83[0];
    sub_24BAA2B1C(v20);
    (*(v15 + 104))(v18, *MEMORY[0x277CDF3C0], v14);
    v33 = sub_24BAA82CC();
    v34 = *(v15 + 8);
    v34(v18, v14);
    v34(v20, v14);
    v35 = v82;
    _s15FocusSettingsUI14ActivitySourceV25inverseVariantIfAvailable3for17isDarkColorSchemeS2S_SbtFZ_0(v32, v31, v33 & 1);

    sub_24BAA994C();
    v37 = v73;
    v36 = v74;
    (*(v73 + 104))(v13, *MEMORY[0x277CE0FE0], v74);
    v38 = sub_24BAA997C();

    (*(v37 + 8))(v13, v36);
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v39 = 1;
    v116 = 1;
    *&v115[6] = *(&v117[6] + 6);
    *&v115[22] = *(&v117[7] + 6);
    *&v115[38] = *(&v117[8] + 6);
    v40 = sub_24BAA982C();
    KeyPath = swift_getKeyPath();
    v42 = sub_24BAA9D1C();
    v95[0] = v38;
    v95[1] = 0;
    LOWORD(v96[0]) = 1;
    *(&v96[1] + 2) = *&v115[16];
    *(v96 + 2) = *v115;
    *&v96[3] = *&v115[46];
    *(&v96[2] + 2) = *&v115[32];
    *(&v96[3] + 1) = KeyPath;
    *&v97 = v40;
    *(&v97 + 1) = v42;
    v98 = v43;
    v114 = v43;
    v112 = v96[3];
    v113 = v97;
    v110 = v96[1];
    v111 = v96[2];
    v108 = v38;
    v109 = v96[0];
    v99[0] = v38;
    v99[1] = 0;
    v100 = 1;
    *&v103[14] = *&v115[46];
    *v103 = *&v115[32];
    v102 = *&v115[16];
    v101 = *v115;
    v104 = KeyPath;
    v105 = v40;
    v106 = v42;
    v107 = v43;
    sub_24B8F3208(v95, &v91, &qword_27F06B8E8, &qword_24BABFEA8);
    sub_24B8F35E4(v99, &qword_27F06B8E8, &qword_24BABFEA8);
    v44 = v77;
    v45 = v80;
    if ((*(v35 + *(v75 + 24)) & 1) == 0)
    {
      v46 = v35 + *(v75 + 28);
      if ((*(v46 + 8) & 1) == 0 && (*v46 + 1) >= 2)
      {
        v47 = sub_24BAA8BCC();
        v48 = v70;
        *v70 = v47;
        *(v48 + 8) = 0;
        *(v48 + 16) = 1;
        v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B900, &qword_24BABFEC0) + 44);
        v50 = sub_24BAA8AAC();
        v51 = v35;
        v52 = v71;
        *v71 = v50;
        *(v52 + 8) = 0;
        *(v52 + 16) = 1;
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B908, &qword_24BABFEC8);
        sub_24BA9F4E8(v51, (v52 + *(v53 + 44)));
        sub_24BAA8BEC();
        sub_24BAA8A7C();
        sub_24BAA83BC();
        v54 = (v52 + *(v69 + 36));
        v55 = *(&v117[10] + 6);
        *v54 = *(&v117[9] + 6);
        v54[1] = v55;
        v54[2] = *(&v117[11] + 6);
        v56 = v72;
        sub_24B8F3208(v52, v72, &qword_27F06B8D0, &qword_24BABFE90);
        *v49 = 0;
        *(v49 + 8) = 1;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B910, &unk_24BABFED0);
        sub_24B8F3208(v56, v49 + *(v57 + 48), &qword_27F06B8D0, &qword_24BABFE90);
        sub_24B8F35E4(v52, &qword_27F06B8D0, &qword_24BABFE90);
        sub_24B8F35E4(v56, &qword_27F06B8D0, &qword_24BABFE90);
        v58 = swift_getKeyPath();
        v59 = v48 + *(v80 + 36);
        *v59 = v58;
        *(v59 + 8) = 2;
        sub_24BAA735C(v48, v44);
        v45 = v80;
        v39 = 0;
      }
    }

    (*(v76 + 56))(v44, v39, 1, v45);
    v60 = v78;
    sub_24B8F3208(v44, v78, &qword_27F06B8E0, &qword_24BABFEA0);
    v61 = v81;
    *&v83[0] = v81;
    WORD4(v83[0]) = 256;
    *(v83 + 10) = v117[0];
    *(&v83[1] + 10) = v117[1];
    *(&v83[2] + 10) = v117[2];
    *(&v83[3] + 1) = *(&v117[2] + 14);
    v88 = v112;
    v89 = v113;
    v90 = v114;
    v84 = v108;
    v85 = v109;
    v86 = v110;
    v87 = v111;
    v62 = v79;
    *(v79 + 160) = v114;
    v63 = v89;
    v62[8] = v88;
    v62[9] = v63;
    v64 = v87;
    v62[6] = v86;
    v62[7] = v64;
    v65 = v85;
    v62[4] = v84;
    v62[5] = v65;
    v66 = v83[3];
    v62[2] = v83[2];
    v62[3] = v66;
    v67 = v83[1];
    *v62 = v83[0];
    v62[1] = v67;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8F0, &qword_24BABFEB0);
    sub_24B8F3208(v60, v62 + *(v68 + 48), &qword_27F06B8E0, &qword_24BABFEA0);
    sub_24B8F3208(v83, &v91, &qword_27F06B8F8, &qword_24BABFEB8);
    sub_24B8F35E4(v44, &qword_27F06B8E0, &qword_24BABFEA0);
    sub_24B8F35E4(v60, &qword_27F06B8E0, &qword_24BABFEA0);
    v91 = v61;
    *v92 = 256;
    *&v92[2] = v117[0];
    *&v92[18] = v117[1];
    *v93 = v117[2];
    *&v93[43] = v112;
    *&v93[51] = v113;
    *&v93[7] = *(&v117[2] + 14);
    v94 = v114;
    *&v93[11] = v108;
    *&v93[19] = v109;
    *&v93[27] = v110;
    *&v93[35] = v111;
    return sub_24B8F35E4(&v91, &qword_27F06B8F8, &qword_24BABFEB8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA9F4E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = sub_24BAA8DEC();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityEditView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130, &qword_24BAB81C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B918, &qword_24BABFEE0);
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B920, &qword_24BABFEE8);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  sub_24BAA824C();
  v23 = sub_24BAA826C();
  (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  sub_24BAA6074(a1, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_24BAA6780(&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for ActivityEditView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B928, &qword_24BABFEF0);
  sub_24B8F384C(&qword_27F06B930, &qword_27F06B928, &qword_24BABFEF0, MEMORY[0x277CE11A8]);
  sub_24BAA9A4C();
  v26 = v37;
  sub_24BAA8DDC();
  sub_24B8F384C(&qword_27F06B938, &qword_27F06B918, &qword_24BABFEE0, MEMORY[0x277CDF028]);
  sub_24BAA5C08(&qword_27F0667F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v27 = v35;
  v28 = v38;
  sub_24BAA944C();
  (*(v39 + 8))(v26, v28);
  (*(v36 + 8))(v15, v27);
  v29 = *(v17 + 16);
  v29(v20, v22, v16);
  v30 = v40;
  *v40 = 0;
  *(v30 + 8) = 1;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B940, &qword_24BABFEF8);
  v29(&v31[*(v32 + 48)], v20, v16);
  v33 = *(v17 + 8);
  v33(v22, v16);
  return (v33)(v20, v16);
}

uint64_t sub_24BA9FA0C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B860, &qword_24BABFDC8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v34 - v5;
  sub_24BA9FE54(&v34 - v5);
  if (sub_24BAA04B8())
  {
    v34 = a1;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    sub_24BAA7C2C();
    sub_24BAA927C();
    v6 = sub_24BAA939C();
    v8 = v7;
    v10 = v9;

    sub_24BAA978C();
    v39 = sub_24BAA933C();
    v38 = v11;
    v13 = v12;
    v37 = v14;

    sub_24B900910(v6, v8, v10 & 1);

    v15 = sub_24BAA90AC();
    LOBYTE(v43) = v13 & 1;
    v42 = 1;
    v16 = v13 & 1;
    v36 = 1;
    KeyPath = swift_getKeyPath();
    LOBYTE(v49[0]) = 0;
    v17 = v15;
    v18 = 256;
    v19 = 2;
    a1 = v34;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v37 = 0;
    KeyPath = 0;
    v19 = 0;
    v36 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
  }

  v34 = v17;
  v20 = v40;
  v21 = v41;
  sub_24B8F3208(v40, v41, &qword_27F06B860, &qword_24BABFDC8);
  sub_24B8F3208(v21, a1, &qword_27F06B860, &qword_24BABFDC8);
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B868, &qword_24BABFDD0) + 48));
  v23 = v39;
  *&v43 = v39;
  v24 = v38;
  *(&v43 + 1) = v38;
  *&v44 = v16;
  v25 = v37;
  *(&v44 + 1) = v37;
  *&v45 = v18;
  *(&v45 + 1) = v17;
  v46 = 0u;
  v47 = 0u;
  v26 = v16;
  v27 = v36;
  v28 = v18;
  v29 = KeyPath;
  *v48 = v36;
  *&v48[8] = KeyPath;
  *&v48[16] = v19;
  v48[24] = 0;
  v30 = v44;
  *v22 = v43;
  v22[1] = v30;
  v31 = v46;
  v22[2] = v45;
  v22[3] = v31;
  v32 = *v48;
  v22[4] = v47;
  v22[5] = v32;
  *(v22 + 89) = *&v48[9];
  sub_24B8F3208(&v43, v49, &qword_27F06B870, &qword_24BABFDD8);
  sub_24B8F35E4(v20, &qword_27F06B860, &qword_24BABFDC8);
  v49[0] = v23;
  v49[1] = v24;
  v49[2] = v26;
  v49[3] = v25;
  v49[4] = v28;
  v49[5] = v34;
  v50 = 0u;
  v51 = 0u;
  v52 = v27;
  v53 = v29;
  v54 = v19;
  v55 = 0;
  sub_24B8F35E4(v49, &qword_27F06B870, &qword_24BABFDD8);
  return sub_24B8F35E4(v21, &qword_27F06B860, &qword_24BABFDC8);
}

uint64_t sub_24BA9FE54@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B878, &qword_24BABFE10);
  MEMORY[0x28223BE20](v66);
  v3 = &v66 - v2;
  v67 = type metadata accessor for ActivityEditView(0);
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v67);
  sub_24BAA6074(v1, &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24BAAA1BC();
  v6 = sub_24BAAA1AC();
  v7 = *(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_24BAA6780(&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + ((v7 + 32) & ~v7), type metadata accessor for ActivityEditView);
  v69 = v1;
  sub_24BAA6074(v1, &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24BAAA1AC();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = 40;
  sub_24BAA6780(&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + ((v7 + 40) & ~v7), type metadata accessor for ActivityEditView);
  sub_24BAA9B9C();
  v12 = qword_27F063110;

  if (v12 != -1)
  {
    swift_once();
  }

  v71 = sub_24BAA7C2C();
  v72 = v13;
  sub_24B8F5E3C();
  sub_24BAA93CC();
  sub_24BAA9DAC();
  v14 = v67;
  v15 = v69;
  v16 = *(v69 + *(v67 + 20));
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = (v16 & 1) == 0;
  v19 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B880, &qword_24BABFE18) + 36)];
  *v19 = KeyPath;
  v19[1] = sub_24B90CF38;
  v19[2] = v18;
  sub_24BAA920C();
  sub_24BAA91AC();
  v20 = sub_24BAA921C();

  v21 = swift_getKeyPath();
  v22 = v66;
  v23 = &v3[*(v66 + 36)];
  *v23 = v21;
  v23[1] = v20;
  v24 = sub_24BAA71B8();
  v25 = v68;
  MEMORY[0x24C24F6C0](1, v22, v24);
  sub_24B8F35E4(v3, &qword_27F06B878, &qword_24BABFE10);
  v26 = swift_getKeyPath();
  v27 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8A8, &qword_24BABFE60) + 36);
  *v27 = v26;
  *(v27 + 8) = 1;
  v28 = v15 + *(v14 + 40);
  v29 = *(v28 + 8);
  v71 = *v28;
  v72 = v29;
  v73 = *(v28 + 16);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
  MEMORY[0x24C24FC10](v70, v30);
  _s7SwiftUI5ColorV013FocusSettingsB0E08activityC0yACSgSSSgFZ_0(v70[0], v70[1]);
  v32 = v31;

  v33 = swift_getKeyPath();
  v34 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8B0, &qword_24BABFE68) + 36));
  *v34 = v33;
  v34[1] = v32;
  LOBYTE(v33) = sub_24BAA90AC();
  sub_24BAA828C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8B8, &qword_24BABFE70) + 36);
  *v43 = v33;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  LOBYTE(v33) = sub_24BAA911C();
  sub_24BAA828C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8C0, &qword_24BABFE78) + 36);
  *v52 = v33;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  v53 = sub_24BA9E9D8();
  v54 = sub_24BAA90BC();

  v55 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8C8, &unk_24BABFE80) + 36);
  *v55 = v53;
  *(v55 + 8) = v54;
  v56 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B860, &qword_24BABFDC8) + 36));
  v57 = *(sub_24BAA869C() + 20);
  v58 = *MEMORY[0x277CE0118];
  v59 = sub_24BAA8B2C();
  (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
  __asm { FMOV            V0.2D, #12.0 }

  *v56 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8, &qword_24BAB1370);
  *&v56[*(result + 36)] = 256;
  return result;
}

uint64_t sub_24BAA04B8()
{
  v1 = sub_24BAA7B4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityEditView(0);
  v6 = (v0 + *(v5 + 44));
  v7 = *(v6 + 2);
  v15 = *v6;
  v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30, &qword_24BAB3090);
  sub_24BAA99FC();
  if (*(&v14 + 1))
  {
    v8 = *(v0 + *(v5 + 60));
    v15 = v14;
    sub_24BAA7B3C();
    sub_24B8F5E3C();
    v9 = sub_24BAAA42C();
    v11 = v10;
    (*(v2 + 8))(v4, v1);

    v12 = sub_24B91471C(v9, v11, v8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void *sub_24BAA063C@<X0>(void *a2@<X8>)
{
  type metadata accessor for ActivityEditView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30, &qword_24BAB3090);
  result = sub_24BAA99FC();
  v4 = v6;
  v5 = v7;
  if (!v7)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_24BAA06C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];

  v8 = sub_24B9AF828(a4, v5, v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  MEMORY[0x24C250120](v8, v10, v12, v14);

  type metadata accessor for ActivityEditView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30, &qword_24BAB3090);
  sub_24BAA9A0C();
  if (sub_24BAA225C() || (sub_24BAA04B8() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8, &qword_24BAB1DA8);
    sub_24BAA99FC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8, &unk_24BABEB80);
  sub_24BAA9B6C();
  if (!sub_24BAA225C())
  {
    sub_24BAA04B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38, &unk_24BAAD9C0);
  return sub_24BAA9A0C();
}

void sub_24BAA08AC(void (*a1)(void, void, void)@<X0>, char *a2@<X8>)
{
  v49 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B7E0, &qword_24BABFD50);
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v53 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &KeyPath - v5;
  v6 = type metadata accessor for ActivityEditView(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = v8;
  v9 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B7E8, &unk_24BABFD58);
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v50 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &KeyPath - v13;
  if (qword_27F063130 != -1)
  {
    swift_once();
  }

  v14 = off_27F06B670;
  v15 = *(off_27F06B670 + 2);
  if (!v15)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v47 = v7;
  v16 = sub_24BAA3994(v15, 0);
  v17 = sub_24BAA4B58(v60, v16 + 4, v15, v14);
  v18 = v60[0];

  sub_24B8F0C5C(v18);
  if (v17 == v15)
  {
    v7 = v47;
LABEL_7:
    v19 = v9;
    v60[0] = v16;

    sub_24BAA3B18(v60);
    v47 = 0;

    KeyPath = swift_getKeyPath();
    v20 = v49;
    sub_24BAA6074(v49, v19);
    v21 = (v7[80] + 16) & ~v7[80];
    v22 = swift_allocObject();
    v44 = type metadata accessor for ActivityEditView;
    sub_24BAA6780(v19, v22 + v21, type metadata accessor for ActivityEditView);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066A30, &unk_24BAB4ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B7F0, &qword_24BABFD88);
    v45 = sub_24B8F384C(&qword_27F06B7F8, &unk_27F066A30, &unk_24BAB4ED0, MEMORY[0x277D83980]);
    sub_24BAA63F0();
    v23 = sub_24BAA9BFC();
    MEMORY[0x28223BE20](v23);
    v59 = sub_24B91431C(sub_24BAA656C, (&KeyPath - 4), &unk_285EBE848);
    swift_getKeyPath();
    sub_24BAA6074(v20, v19);
    v24 = swift_allocObject();
    sub_24BAA6780(v19, v24 + v21, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B818, &qword_24BABFD98);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B820, &qword_24BABFDA0);
    v26 = sub_24BAA8DEC();
    v27 = sub_24BAA6670();
    v28 = sub_24BAA5C08(&qword_27F0667F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v60[0] = v25;
    v60[1] = v26;
    v60[2] = v27;
    v60[3] = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = v57;
    sub_24BAA9BFC();
    v30 = v50;
    v31 = v51;
    v32 = *(v51 + 16);
    v33 = v52;
    v32(v50, v58, v52);
    v34 = v55;
    v49 = *(v55 + 16);
    v35 = v53;
    v36 = v29;
    v37 = v56;
    v49(v53, v36, v56);
    v38 = v54;
    v32(v54, v30, v33);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B840, &unk_24BABFDB0);
    v49(&v38[*(v39 + 48)], v35, v37);
    v40 = *(v34 + 8);
    v40(v57, v37);
    v41 = *(v31 + 8);
    v41(v58, v33);
    v40(v35, v37);
    v41(v30, v33);
    return;
  }

  __break(1u);

  __break(1u);
}

char *static Color.allSystemColors.getter()
{
  if (qword_27F063130 != -1)
  {
    swift_once();
  }

  v0 = off_27F06B670;
  v1 = *(off_27F06B670 + 2);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_24BAA3994(*(off_27F06B670 + 2), 0);
  v3 = sub_24BAA4B58(&v6, v2 + 4, v1, v0);
  v4 = v6;

  sub_24B8F0C5C(v4);
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x277D84F90];
  }

  v6 = v2;

  sub_24BAA3B18(&v6);

  return v6;
}

uint64_t sub_24BAA108C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v56 = sub_24BAA8B7C();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA8DEC();
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  MEMORY[0x28223BE20](v6);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityEditView(0);
  v10 = *(v9 - 8);
  v51 = v9 - 8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B808, &qword_24BABFD90);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B850, &qword_24BABFDC0);
  v17 = *(v16 - 8);
  v47 = v16;
  v48 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B7F0, &qword_24BABFD88);
  MEMORY[0x28223BE20](v52);
  v44 = &v43 - v20;
  v21 = *a1;
  v22 = a1[1];
  sub_24BAA6074(a2, v12);
  v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v21;
  sub_24BAA6780(v12, v26, type metadata accessor for ActivityEditView);
  v28 = (v25 + v24);
  *v28 = v21;
  v28[1] = v22;
  v57 = v21;
  v58 = v22;
  v59 = a2;
  sub_24BAA6B50();

  sub_24BAA9A5C();
  v29 = v45;
  sub_24BAA8DDC();
  v30 = sub_24B8F384C(&qword_27F06B810, &qword_27F06B808, &qword_24BABFD90, MEMORY[0x277CDF028]);
  v31 = sub_24BAA5C08(&qword_27F0667F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v32 = v49;
  sub_24BAA944C();
  (*(v50 + 8))(v29, v32);
  (*(v46 + 8))(v15, v13);
  v63 = _s7SwiftUI5ColorV013FocusSettingsB0E013accessibilityc13NameForSystemcG0yS2SFZ_0(v27, v22);
  v64 = v33;
  v60 = v13;
  v61 = v32;
  *&v62 = v30;
  *(&v62 + 1) = v31;
  v34 = v44;
  swift_getOpaqueTypeConformance2();
  sub_24B8F5E3C();
  v35 = v47;
  sub_24BAA959C();

  (*(v48 + 8))(v19, v35);
  v36 = a2 + *(v51 + 48);
  v37 = *(v36 + 8);
  v60 = *v36;
  v61 = v37;
  v62 = *(v36 + 16);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
  MEMORY[0x24C24FC10](&v63, v38);
  if (!v64)
  {
    goto LABEL_7;
  }

  if (v27 != v63 || v64 != v22)
  {
    v39 = sub_24BAAA78C();

    if (v39)
    {
      goto LABEL_6;
    }

LABEL_7:
    v60 = MEMORY[0x277D84F90];
    sub_24BAA5C08(&unk_27F0651E0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F18, &qword_24BAB0DA8);
    sub_24B8F384C(&qword_27F0651F0, &qword_27F064F18, &qword_24BAB0DA8, MEMORY[0x277D83970]);
    v40 = v53;
    v41 = v56;
    sub_24BAAA48C();
    goto LABEL_8;
  }

LABEL_6:
  v40 = v53;
  sub_24BAA8B3C();
  v41 = v56;
LABEL_8:
  sub_24BAA85DC();
  (*(v54 + 8))(v40, v41);
  return sub_24B8F35E4(v34, &qword_27F06B7F0, &qword_24BABFD88);
}

void sub_24BAA1774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ActivityEditView(0);
  if (((*(a1 + *(v4 + 68)))() & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
    sub_24BAA9B6C();
  }

  v5 = [objc_opt_self() sharedApplication];
  [v5 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

double sub_24BAA1868@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = (a3 + *(type metadata accessor for ActivityEditView(0) + 40));
  v8 = v7[1];
  v15 = *v7;
  v16 = v8;
  v17 = *(v7 + 1);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
  MEMORY[0x24C24FC10](&v13, v9);
  if (v14)
  {
    if (v13 == a1 && v14 == a2)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_24BAAA78C();
    }
  }

  else
  {
    v11 = 0;
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v11 & 1;

  return result;
}

uint64_t sub_24BAA194C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = sub_24BAA8DEC();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24BAA8B7C();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityEditView(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B838, &qword_24BABFDA8);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v15 = &v39 - v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B820, &qword_24BABFDA0);
  v16 = MEMORY[0x28223BE20](v43);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v42 = &v39 - v19;
  v20 = *a1;
  v21 = a1[1];
  sub_24BAA6074(a2, v13);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_24BAA6780(v13, v24 + v22, type metadata accessor for ActivityEditView);
  v25 = (v24 + v23);
  v26 = v18;
  *v25 = v20;
  v25[1] = v21;
  v51 = v20;
  v52 = v21;
  v53 = a2;
  type metadata accessor for SystemImageView(0);
  sub_24BAA5C08(&qword_27F06B848, type metadata accessor for SystemImageView, &unk_24BABFBA0);

  sub_24BAA9A5C();
  v56 = _s15FocusSettingsUI14ActivitySourceV17accessibilityName3forS2S_tFZ_0(v20, v21);
  v57 = v27;
  sub_24B8F384C(&qword_27F06B830, &qword_27F06B838, &qword_24BABFDA8, MEMORY[0x277CDF028]);
  sub_24B8F5E3C();
  v28 = v40;
  sub_24BAA959C();

  (*(v41 + 8))(v15, v28);
  v29 = a2 + *(v10 + 44);
  v30 = *(v29 + 8);
  v56 = *v29;
  v57 = v30;
  v58 = *(v29 + 16);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
  MEMORY[0x24C24FC10](&v54, v31);
  if (!v55)
  {
    goto LABEL_7;
  }

  if (v20 != v54 || v55 != v21)
  {
    v32 = sub_24BAAA78C();

    if (v32)
    {
      goto LABEL_6;
    }

LABEL_7:
    v56 = MEMORY[0x277D84F90];
    sub_24BAA5C08(&unk_27F0651E0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F18, &qword_24BAB0DA8);
    sub_24B8F384C(&qword_27F0651F0, &qword_27F064F18, &qword_24BAB0DA8, MEMORY[0x277D83970]);
    v33 = v44;
    v34 = v46;
    sub_24BAAA48C();
    goto LABEL_8;
  }

LABEL_6:
  v33 = v44;
  sub_24BAA8B3C();
  v34 = v46;
LABEL_8:
  v35 = v42;
  sub_24BAA85DC();
  (*(v45 + 8))(v33, v34);
  sub_24B8F35E4(v26, &qword_27F06B820, &qword_24BABFDA0);
  v36 = v47;
  sub_24BAA8DDC();
  sub_24BAA6670();
  sub_24BAA5C08(&qword_27F0667F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v37 = v50;
  sub_24BAA944C();
  (*(v49 + 8))(v36, v37);
  return sub_24B8F35E4(v35, &qword_27F06B820, &qword_24BABFDA0);
}

void sub_24BAA1FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ActivityEditView(0);
  if (((*(a1 + *(v4 + 68)))() & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
    sub_24BAA9B6C();
  }

  v5 = [objc_opt_self() sharedApplication];
  [v5 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

double sub_24BAA20C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SystemImageView(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (a3 + *(type metadata accessor for ActivityEditView(0) + 36));
  v12 = v11[1];
  v19 = *v11;
  v20 = v12;
  v21 = *(v11 + 1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
  MEMORY[0x24C24FC10](&v17, v13);
  if (v18)
  {
    if (v17 == a1 && v18 == a2)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_24BAAA78C();
    }
  }

  else
  {
    v14 = 0;
  }

  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  swift_storeEnumTagMultiPayload();
  v15 = (v10 + *(v8 + 20));
  *v15 = a1;
  v15[1] = a2;
  *(v10 + *(v8 + 24)) = v14 & 1;
  sub_24BAA6780(v10, a4, type metadata accessor for SystemImageView);

  return result;
}

BOOL sub_24BAA225C()
{
  v1 = sub_24BAA7B4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ActivityEditView(0) + 44));
  v6 = *(v5 + 2);
  v13 = *v5;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30, &qword_24BAB3090);
  sub_24BAA99FC();
  if (!*(&v12 + 1))
  {
    return 1;
  }

  v13 = v12;
  sub_24BAA7B3C();
  sub_24B8F5E3C();
  v7 = sub_24BAAA42C();
  v9 = v8;
  (*(v2 + 8))(v4, v1);

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  return v10 == 0;
}

uint64_t sub_24BAA23C8(uint64_t a1)
{
  type metadata accessor for ActivityEditView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00, &unk_24BAADC80);
  sub_24BAA9B6C();
  return sub_24BAA9B6C();
}

__n128 sub_24BAA2474@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_24BAA9D1C();
  v5 = v4;
  sub_24BAA2550(&v10);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v25 = v16;
  sub_24B8F3208(&v17, &v9, &qword_27F06B948, &qword_24BABFF00);
  sub_24B8F35E4(v24, &qword_27F06B948, &qword_24BABFF00);
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v22;
  *(a2 + 80) = v21;
  *(a2 + 96) = v6;
  *(a2 + 112) = v23;
  v7 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v7;
  result = v20;
  *(a2 + 48) = v19;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_24BAA2550@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8, &qword_24BAADDA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-3] - v3;
  if (qword_27F063128 != -1)
  {
    swift_once();
  }

  v5 = qword_27F0770A0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v16[3] = *&v16[27];
  *&v16[11] = *&v16[35];
  *&v16[19] = *&v16[43];

  v6 = sub_24BAA994C();
  sub_24BAA91EC();
  v7 = sub_24BAA919C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_24BAA91FC();
  sub_24B8F35E4(v4, &qword_27F063CD8, &qword_24BAADDA0);
  KeyPath = swift_getKeyPath();
  v10 = sub_24BAA989C();
  v11 = swift_getKeyPath();
  *v17 = v5;
  *&v17[8] = 256;
  *&v17[10] = *v16;
  *&v17[26] = *&v16[8];
  *&v17[42] = *&v16[16];
  *&v17[56] = *&v16[23];
  v12 = *&v17[16];
  *a1 = *v17;
  *(a1 + 16) = v12;
  v13 = *&v17[48];
  *(a1 + 32) = *&v17[32];
  *(a1 + 48) = v13;
  *(a1 + 64) = v6;
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v8;
  *(a1 + 88) = v11;
  *(a1 + 96) = v10;
  sub_24B8F3208(v17, &v18, &qword_27F064D98, &unk_24BAB1490);
  v18 = v5;
  v19 = 256;
  v20 = *v16;
  v21 = *&v16[8];
  *v22 = *&v16[16];
  *&v22[14] = *&v16[23];
  return sub_24B8F35E4(&v18, &qword_27F064D98, &unk_24BAB1490);
}

uint64_t sub_24BAA27F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a3)
  {
    v5 = sub_24BAA979C();
  }

  else
  {
    v5 = sub_24BAA980C();
  }

  v6 = v5;
  sub_24BAA832C();
  v7 = v63;
  v8 = v64;
  v9 = DWORD1(v64);
  v10 = *(&v64 + 1);
  v11 = v65;
  v12 = sub_24BAA9D1C();
  v14 = v13;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  if (qword_27F063138 != -1)
  {
    swift_once();
  }

  v15 = off_27F06B678;
  if (*(off_27F06B678 + 2) && (v16 = sub_24BA1575C(a1, a2), (v17 & 1) != 0))
  {
    v18 = *(v15[7] + 8 * v16);
  }

  else
  {
    v18 = sub_24BAA97AC();
  }

  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v59[6] = v66;
  *&v59[22] = v67;
  *&v59[38] = v68;
  *v35 = v63 * 0.5;
  *(v35 + 1) = v63;
  v35[1] = v64;
  v35[2] = v65;
  *&v36 = v6;
  WORD4(v36) = 256;
  *&v37 = v12;
  *(&v37 + 1) = v14;
  v39 = v61;
  v40 = v62;
  v38 = v60;
  v25 = v35[0];
  v26 = v64;
  v29 = v61;
  v30 = v62;
  v27 = v37;
  v28 = v60;
  *v41 = v18;
  *&v41[8] = 256;
  v19 = *&v59[16];
  *&v41[10] = *v59;
  *&v41[56] = *(&v68 + 1);
  *&v41[42] = *&v59[32];
  v20 = *v59;
  *&v41[26] = *&v59[16];
  v33 = *&v41[32];
  v34 = *&v41[48];
  v31 = *v41;
  v32 = *&v41[16];
  v21 = v36;
  a4[2] = v65;
  a4[3] = v21;
  *a4 = v25;
  a4[1] = v26;
  a4[6] = v29;
  a4[7] = v30;
  a4[4] = v27;
  a4[5] = v28;
  a4[10] = v33;
  a4[11] = v34;
  a4[8] = v31;
  a4[9] = v32;
  v42 = v18;
  v43 = 256;
  v44 = v20;
  v45 = v19;
  *v46 = *&v59[32];
  *&v46[14] = *&v59[46];
  sub_24B8F3208(v35, v47, &qword_27F0692F0, &qword_24BABDB30);
  sub_24B8F3208(v41, v47, &qword_27F064D98, &unk_24BAB1490);
  sub_24B8F35E4(&v42, &qword_27F064D98, &unk_24BAB1490);
  v47[0] = v7 * 0.5;
  v47[1] = v7;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  v52 = v6;
  v53 = 256;
  v54 = v12;
  v55 = v14;
  v56 = v60;
  v57 = v61;
  v58 = v62;
  return sub_24B8F35E4(v47, &qword_27F0692F0, &qword_24BABDB30);
}

uint64_t sub_24BAA2B1C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA82DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_24BAA2D1C@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = sub_24BAA9D1C();
  v9 = v8;
  sub_24BAA27F4(v4, v5, v6, &v18);
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v42[8] = v26;
  v42[9] = v27;
  v42[10] = v28;
  v42[11] = v29;
  v42[4] = v22;
  v42[5] = v23;
  v42[6] = v24;
  v42[7] = v25;
  v42[0] = v18;
  v42[1] = v19;
  v42[2] = v20;
  v42[3] = v21;
  sub_24B8F3208(&v30, &v17, &qword_27F06B708, &qword_24BABFC68);
  sub_24B8F35E4(v42, &qword_27F06B708, &qword_24BABFC68);
  *a2 = v7;
  *(a2 + 8) = v9;
  v10 = v39;
  *(a2 + 144) = v38;
  *(a2 + 160) = v10;
  v11 = v41;
  *(a2 + 176) = v40;
  *(a2 + 192) = v11;
  v12 = v35;
  *(a2 + 80) = v34;
  *(a2 + 96) = v12;
  v13 = v37;
  *(a2 + 112) = v36;
  *(a2 + 128) = v13;
  v14 = v31;
  *(a2 + 16) = v30;
  *(a2 + 32) = v14;
  result = *&v32;
  v16 = v33;
  *(a2 + 48) = v32;
  *(a2 + 64) = v16;
  return result;
}

uint64_t sub_24BAA2E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8, &qword_24BAADDA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = *(a1 + *(type metadata accessor for SystemImageView(0) + 24));
  if (v7 == 1)
  {
    v8 = sub_24BAA979C();
  }

  else
  {
    v8 = sub_24BAA980C();
  }

  v42 = v8;
  sub_24BAA832C();
  v9 = v91;
  v43 = v92;
  v38 = v93;
  v10 = v94;
  v41 = v95;
  v11 = v96;
  v12 = sub_24BAA9D1C();
  v39 = v13;
  v40 = v12;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v37 = sub_24BAA59F4();

  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v85[6] = v97;
  *&v85[22] = v98;
  *&v85[38] = v99;

  v36 = sub_24BAA994C();
  sub_24BAA91EC();
  v14 = sub_24BAA919C();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v35 = sub_24BAA91FC();
  sub_24B8F35E4(v6, &qword_27F063CD8, &qword_24BAADDA0);
  KeyPath = swift_getKeyPath();
  if (v7)
  {
    v16 = sub_24BAA979C();
  }

  else
  {
    v16 = sub_24BAA989C();
  }

  v17 = v16;
  v18 = swift_getKeyPath();
  *&v56 = v9 * 0.5;
  *(&v56 + 1) = v9;
  *&v57 = __PAIR64__(v38, v43);
  v19 = v38;
  *(&v57 + 1) = v10;
  *&v58 = v41;
  *(&v58 + 1) = v11;
  *&v59 = v42;
  WORD4(v59) = 256;
  HIWORD(v59) = v90;
  *(&v59 + 10) = v89;
  v20 = v39;
  v21 = v40;
  *&v60 = v40;
  *(&v60 + 1) = v39;
  v62 = v87;
  v63 = v88;
  v61 = v86;
  v46 = v58;
  v47 = v59;
  v44 = v56;
  v45 = v57;
  v50 = v87;
  v51 = v88;
  v48 = v60;
  v49 = v86;
  v22 = v37;
  *&v64[0] = v37;
  WORD4(v64[0]) = 256;
  *(v64 + 10) = *v85;
  *(&v64[3] + 1) = *&v85[46];
  *(&v64[2] + 10) = *&v85[32];
  *(&v64[1] + 10) = *&v85[16];
  v54 = v64[2];
  v55 = v64[3];
  v52 = v64[0];
  v53 = v64[1];
  v23 = v56;
  v24 = v57;
  v25 = v59;
  *(a2 + 32) = v58;
  *(a2 + 48) = v25;
  *a2 = v23;
  *(a2 + 16) = v24;
  v26 = v48;
  v27 = v49;
  v28 = v51;
  *(a2 + 96) = v50;
  *(a2 + 112) = v28;
  *(a2 + 64) = v26;
  *(a2 + 80) = v27;
  v29 = v52;
  v30 = v53;
  v31 = v55;
  *(a2 + 160) = v54;
  *(a2 + 176) = v31;
  *(a2 + 128) = v29;
  *(a2 + 144) = v30;
  v32 = v35;
  *(a2 + 192) = v36;
  *(a2 + 200) = KeyPath;
  *(a2 + 208) = v32;
  *(a2 + 216) = v18;
  *(a2 + 224) = v17;
  sub_24B8F3208(&v56, v70, &qword_27F0692F0, &qword_24BABDB30);
  sub_24B8F3208(v64, v70, &qword_27F064D98, &unk_24BAB1490);
  v65 = v22;
  v66 = 256;
  v67 = *v85;
  v68 = *&v85[16];
  *v69 = *&v85[32];
  *&v69[14] = *&v85[46];
  sub_24B8F35E4(&v65, &qword_27F064D98, &unk_24BAB1490);
  v70[0] = v9 * 0.5;
  v70[1] = v9;
  v71 = v43;
  v72 = v19;
  v73 = v10;
  v74 = v41;
  v75 = v11;
  v76 = v42;
  v77 = 256;
  v78 = v89;
  v79 = v90;
  v80 = v21;
  v81 = v20;
  v83 = v87;
  v84 = v88;
  v82 = v86;
  return sub_24B8F35E4(v70, &qword_27F0692F0, &qword_24BABDB30);
}

__n128 sub_24BAA3298@<Q0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24BAA9D1C();
  v7 = v6;
  sub_24BAA2E4C(v3, &v16);
  v43 = v28;
  v44 = v29;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v46[12] = v28;
  v46[13] = v29;
  v46[8] = v24;
  v46[9] = v25;
  v46[10] = v26;
  v46[11] = v27;
  v46[4] = v20;
  v46[5] = v21;
  v46[6] = v22;
  v46[7] = v23;
  v46[0] = v16;
  v46[1] = v17;
  v45 = v30;
  v47 = v30;
  v46[2] = v18;
  v46[3] = v19;
  sub_24B8F3208(&v31, &v15, &qword_27F06B700, &unk_24BABFBF8);
  sub_24B8F35E4(v46, &qword_27F06B700, &unk_24BABFBF8);
  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v44;
  *(a2 + 208) = v43;
  *(a2 + 224) = v8;
  *(a2 + 240) = v45;
  v9 = v40;
  *(a2 + 144) = v39;
  *(a2 + 160) = v9;
  v10 = v42;
  *(a2 + 176) = v41;
  *(a2 + 192) = v10;
  v11 = v36;
  *(a2 + 80) = v35;
  *(a2 + 96) = v11;
  v12 = v38;
  *(a2 + 112) = v37;
  *(a2 + 128) = v12;
  v13 = v32;
  *(a2 + 16) = v31;
  *(a2 + 32) = v13;
  result = v34;
  *(a2 + 48) = v33;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_24BAA33EC()
{
  result = sub_24BAA977C();
  qword_27F077090 = result;
  return result;
}

uint64_t sub_24BAA3420()
{
  v0 = sub_24BAA975C();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_24BAA98AC();
  qword_27F077098 = result;
  return result;
}

void sub_24BAA3508()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  sub_24BAA973C();
  v1 = sub_24BAA987C();

  qword_27F0770A0 = v1;
}

uint64_t sub_24BAA356C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B710, &qword_24BABFC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24BABF950;
  *(inited + 32) = 0x65546D6574737973;
  *(inited + 40) = 0xEF726F6C6F436C61;
  *(inited + 48) = sub_24BAA97DC();
  *(inited + 56) = 0x6C426D6574737973;
  *(inited + 64) = 0xEF726F6C6F436575;
  *(inited + 72) = sub_24BAA979C();
  *(inited + 80) = 0x72476D6574737973;
  *(inited + 88) = 0xEF726F6C6F437961;
  *(inited + 96) = sub_24BAA97AC();
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x800000024BAC6880;
  *(inited + 120) = sub_24BAA981C();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000024BAC68A0;
  *(inited + 144) = sub_24BAA984C();
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x800000024BAC68C0;
  *(inited + 168) = sub_24BAA983C();
  strcpy((inited + 176), "systemRedColor");
  *(inited + 191) = -18;
  *(inited + 192) = sub_24BAA978C();
  *(inited + 200) = 0x69506D6574737973;
  *(inited + 208) = 0xEF726F6C6F436B6ELL;
  *(inited + 216) = sub_24BAA97CC();
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x800000024BAC68E0;
  *(inited + 240) = sub_24BAA985C();
  *(inited + 248) = 0xD000000000000010;
  *(inited + 256) = 0x800000024BAC6900;
  *(inited + 264) = sub_24BAA97FC();
  v1 = sub_24BA21344(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B718, &unk_24BABFC78);
  result = swift_arrayDestroy();
  off_27F06B670 = v1;
  return result;
}

uint64_t sub_24BAA3770()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B710, &qword_24BABFC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24BABF960;
  *(inited + 32) = 0x65546D6574737973;
  *(inited + 40) = 0xEF726F6C6F436C61;
  *(inited + 48) = sub_24BAA97DC();
  *(inited + 56) = 0x6C426D6574737973;
  *(inited + 64) = 0xEF726F6C6F436575;
  *(inited + 72) = sub_24BAA979C();
  *(inited + 80) = 0x72476D6574737973;
  *(inited + 88) = 0xEF726F6C6F437961;
  *(inited + 96) = sub_24BAA97AC();
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x800000024BAC6880;
  *(inited + 120) = sub_24BAA981C();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000024BAC68A0;
  *(inited + 144) = sub_24BAA984C();
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x800000024BAC68C0;
  *(inited + 168) = sub_24BAA983C();
  strcpy((inited + 176), "systemRedColor");
  *(inited + 191) = -18;
  *(inited + 192) = sub_24BAA978C();
  *(inited + 200) = 0x69506D6574737973;
  *(inited + 208) = 0xEF726F6C6F436B6ELL;
  *(inited + 216) = sub_24BAA97CC();
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x800000024BAC68E0;
  *(inited + 240) = sub_24BAA985C();
  *(inited + 248) = 0xD000000000000010;
  *(inited + 256) = 0x800000024BAC6900;
  *(inited + 264) = sub_24BAA97FC();
  *(inited + 272) = 0x694D6D6574737973;
  *(inited + 280) = 0xEF726F6C6F43746ELL;
  *(inited + 288) = sub_24BAA97BC();
  v1 = sub_24BA21344(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B718, &unk_24BABFC78);
  result = swift_arrayDestroy();
  off_27F06B678 = v1;
  return result;
}

void *sub_24BAA3994(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0669E0, &qword_24BAB24D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_24BAA3A1C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0645E8, &qword_24BAAEF10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_24BAA3A90(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710, &unk_24BAAE820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_24BAA3B18(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B9A0680(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_24BAA3B84(v4);
  *a1 = v2;
}

void sub_24BAA3B84(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24BAAA75C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24BAAA15C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_24BAA3D4C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

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
    sub_24BAA3C7C(0, v2, 1, a1);
  }
}

uint64_t sub_24BAA3C7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_24BAAA78C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_24BAA3D4C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_24B99FEB4(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_24BAA4328((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_24BAAA78C();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_24BAAA78C()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24B99A39C(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_24B99A39C((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_24BAA4328((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24B99FEB4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_24B99FE28(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_24BAAA78C() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_24BAA4328(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_24BAAA78C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_24BAAA78C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_24BAA4550(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_24BAA46B4(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v8 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_24BAAA4DC();
    a5(0);
    sub_24BAA5C08(a6, a7, &protocol conformance descriptor for EventSource);
    sub_24BAAA24C();
    v8 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = a3;
    if (!a2)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_20:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (!a2)
    {
      goto LABEL_30;
    }
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  if (v17 < 0)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v28 = v14;
  v29 = a5;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (v8 < 0)
  {
    if (!sub_24BAAA56C())
    {
      goto LABEL_29;
    }

    v29(0);
    swift_dynamicCast();
    v22 = v31;
    v17 = a3;
    if (!v31)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = v22;
    if (v19 == v17)
    {
      goto LABEL_29;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v20 = v15;
  if (v16)
  {
LABEL_12:
    v16 &= v16 - 1;

    if (!v22)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_12;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_29:
  v14 = v28;
LABEL_30:
  *a1 = v8;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
}

uint64_t *sub_24BAA4928(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_24BAAA4DC();
  sub_24B8F37E8(0, a5, a6);
  sub_24B8F1128(a7, a5, a6);
  result = sub_24BAAA24C();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_24BAAA56C())
      {
        goto LABEL_30;
      }

      sub_24B8F37E8(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_24BAA4B58(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void _s7SwiftUI5ColorV013FocusSettingsB0E08activityC0yACSgSSSgFZ_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F063138 != -1)
    {
      v3 = a1;
      v4 = a2;
      swift_once();
      a1 = v3;
      a2 = v4;
    }

    if (*(off_27F06B678 + 2))
    {
      sub_24BA1575C(a1, a2);
      if (v2)
      {
      }
    }
  }
}

uint64_t _s7SwiftUI5ColorV013FocusSettingsB0E013accessibilityc13NameForSystemcG0yS2SFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_27F063138 != -1)
  {
    swift_once();
  }

  if (*(off_27F06B678 + 2) && (sub_24BA1575C(a1, a2), (v4 & 1) != 0))
  {
    sub_24B8F37E8(0, &qword_27F066150, 0x277D75348);
    swift_retain_n();
    v5 = sub_24BAAA3AC();
    v6 = [v5 CGColor];

    v7 = AXNameFromColor(v6);
    a1 = sub_24BAAA01C();
  }

  else
  {
  }

  return a1;
}

unint64_t sub_24BAA4E6C()
{
  result = qword_27F06B680;
  if (!qword_27F06B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B680);
  }

  return result;
}

uint64_t sub_24BAA4EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910, qword_24BAAD5C0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 72);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24BAA5044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910, qword_24BAAD5C0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 72);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24BAA5184(uint64_t a1)
{
  sub_24BAA5430(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24BAA5430(319, &qword_27F06B698, type metadata accessor for DNDModeSemanticType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24BAA5494(319, &qword_27F06B6A0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_24BAA553C(319, &qword_27F063BB0, &qword_27F063A10, qword_24BAB3020, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_24BAA553C(319, &qword_27F063A48, &qword_27F063A10, qword_24BAB3020, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24BAA5494(319, &qword_27F06B350, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_24BAA5494(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24BAA54E4();
                if (v8 <= 0x3F)
                {
                  sub_24B8F45F4();
                  if (v9 <= 0x3F)
                  {
                    sub_24BAA553C(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
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

void sub_24BAA5430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24BAA5494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24BAA54E4()
{
  if (!qword_27F06B6A8)
  {
    v0 = sub_24BAAA25C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F06B6A8);
    }
  }
}

void sub_24BAA553C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_24BAA55B4()
{
  result = qword_27F06B6B0;
  if (!qword_27F06B6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B6B8, &qword_24BABFAF0);
    sub_24BAA5638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B6B0);
  }

  return result;
}

unint64_t sub_24BAA5638()
{
  result = qword_27F06B6C0;
  if (!qword_27F06B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B6C8, &qword_24BABFAF8);
    sub_24B8F384C(&qword_27F06B6D0, &qword_27F06B6D8, &qword_24BABFB00, MEMORY[0x277CDD6E0]);
    sub_24B8F384C(&qword_27F06B6E0, &qword_27F06B6E8, &qword_24BABFB08, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B6C0);
  }

  return result;
}

uint64_t sub_24BAA5730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24BAA5810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0, qword_24BAB0B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24BAA58F8(uint64_t a1)
{
  sub_24BAA5430(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24BAA59F4()
{
  v1 = sub_24BAA82DC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  if (*(v0 + *(type metadata accessor for SystemImageView(0) + 24)) == 1)
  {
    sub_24BAA2B1C(v7);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF3C0], v1);
    v8 = sub_24BAA82CC();
    v9 = *(v2 + 8);
    v9(v5, v1);
    v9(v7, v1);
    if (v8)
    {
      if (qword_27F063120 != -1)
      {
        swift_once();
      }

      v10 = &qword_27F077098;
    }

    else
    {
      if (qword_27F063118 != -1)
      {
        swift_once();
      }

      v10 = &qword_27F077090;
    }
  }

  else
  {
    if (qword_27F063128 != -1)
    {
      swift_once();
    }

    v10 = &qword_27F0770A0;
  }

  return *v10;
}

uint64_t sub_24BAA5C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24BAA5CAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24BAA5D30()
{
  result = qword_27F06B798;
  if (!qword_27F06B798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B7A0, &qword_24BABFCF0);
    sub_24BAA5DE8();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8, &qword_24BAB1370, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B798);
  }

  return result;
}

unint64_t sub_24BAA5DE8()
{
  result = qword_27F06B7A8;
  if (!qword_27F06B7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B7B0, &qword_24BABFCF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B730, &qword_24BABFC98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064050, &qword_24BABFD00);
    sub_24BAA5CAC(&qword_27F06B7B8, &qword_27F06B730, &qword_24BABFC98, sub_24BAA5FAC);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058, &qword_24BAAE440);
    sub_24B8F384C(&qword_27F064060, &qword_27F064058, &qword_24BAAE440, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20, &unk_24BAAE430, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B7A8);
  }

  return result;
}

unint64_t sub_24BAA5FAC()
{
  result = qword_27F06B7C0;
  if (!qword_27F06B7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B778, &qword_24BABFCE0);
    sub_24B8F384C(&qword_27F06B7C8, &qword_27F06B7D0, &unk_24BABFD08, MEMORY[0x277CDF170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B7C0);
  }

  return result;
}

uint64_t sub_24BAA6074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityEditView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for ActivityEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA82DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968, &unk_24BAAD710);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940, &unk_24BAAD600) + 32);
    v9 = sub_24BAA868C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24BAA63F0()
{
  result = qword_27F06B800;
  if (!qword_27F06B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B7F0, &qword_24BABFD88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B808, &qword_24BABFD90);
    sub_24BAA8DEC();
    sub_24B8F384C(&qword_27F06B810, &qword_27F06B808, &qword_24BABFD90, MEMORY[0x277CDF028]);
    sub_24BAA5C08(&qword_27F0667F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_24BAA5C08(&qword_27F0690A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B800);
  }

  return result;
}

BOOL sub_24BAA656C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v5 = type metadata accessor for ActivityEditView(0);
  return (sub_24B91471C(v3, v4, *(v2 + *(v5 + 56))) & 1) == 0;
}

uint64_t sub_24BAA65DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ActivityEditView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_24BAA6670()
{
  result = qword_27F06B828;
  if (!qword_27F06B828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B820, &qword_24BABFDA0);
    sub_24B8F384C(&qword_27F06B830, &qword_27F06B838, &qword_24BABFDA8, MEMORY[0x277CDF028]);
    sub_24BAA5C08(&qword_27F0690A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B828);
  }

  return result;
}

uint64_t sub_24BAA6780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_52Tm()
{
  v1 = type metadata accessor for ActivityEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA82DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968, &unk_24BAAD710);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940, &unk_24BAAD600) + 32);
    v9 = sub_24BAA868C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24BAA6AA0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ActivityEditView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

unint64_t sub_24BAA6B50()
{
  result = qword_27F06B858;
  if (!qword_27F06B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B858);
  }

  return result;
}

uint64_t sub_24BAA6BAC()
{
  v1 = type metadata accessor for ActivityEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA82DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968, &unk_24BAAD710);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940, &unk_24BAAD600) + 32);
    v9 = sub_24BAA868C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_24BAA6E3C@<X0>(void *a1@<X8>)
{
  type metadata accessor for ActivityEditView(0);

  return sub_24BAA063C(a1);
}

uint64_t sub_24BAA6EB0()
{
  v1 = type metadata accessor for ActivityEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60, &qword_24BAAE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA82DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968, &unk_24BAAD710);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940, &unk_24BAAD600) + 32);
    v9 = sub_24BAA868C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24BAA7140(uint64_t *a1)
{
  type metadata accessor for ActivityEditView(0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  return sub_24BAA06C8(a1, v3, v4, v5);
}

unint64_t sub_24BAA71B8()
{
  result = qword_27F06B888;
  if (!qword_27F06B888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B878, &qword_24BABFE10);
    sub_24BAA7270();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70, &qword_24BAB66D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B888);
  }

  return result;
}

unint64_t sub_24BAA7270()
{
  result = qword_27F06B890;
  if (!qword_27F06B890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B880, &qword_24BABFE18);
    sub_24B8F384C(&qword_27F06B898, &qword_27F06B8A0, &unk_24BABFE20, MEMORY[0x277CDF1A8]);
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20, &qword_24BAAE470, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B890);
  }

  return result;
}

uint64_t sub_24BAA735C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B8D8, &qword_24BABFE98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BAA73CC()
{
  v1 = *(type metadata accessor for ActivityEditView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24BAA23C8(v2);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27F076E90 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27F076E84 > a2)
  {
    return 1;
  }

  if (dword_27F076E84 < a2)
  {
    return 0;
  }

  return dword_27F076E88 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27F076E98 == -1)
  {
    if (qword_27F076EA0)
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
    if (qword_27F076EA0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27F076E90 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27F076E84 > a3)
      {
        return 1;
      }

      if (dword_27F076E84 >= a3)
      {
        return dword_27F076E88 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27F076EA0;
  if (qword_27F076EA0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F076EA0 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x24C250BC0](v13);
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
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27F076E84, &dword_27F076E88);
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

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x282123648](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}