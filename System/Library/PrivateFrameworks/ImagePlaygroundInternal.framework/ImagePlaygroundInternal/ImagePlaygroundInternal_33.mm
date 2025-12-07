uint64_t sub_1D2619E44@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  *a7 = sub_1D28756A8();
  *(a7 + 8) = 0;
  *(a7 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return a6(a2, v13);
}

uint64_t sub_1D2619EC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = a2;
  v7 = 0xEB00000000646569;
  v8 = 0x6669636570736E75;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF338, &qword_1D2898C68);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  LOBYTE(v30[0]) = v3;
  sub_1D261A154(v30, v30 - v13);
  v15 = 0x6669636570736E75;
  v16 = 0xEB00000000646569;
  if (v6 != 3)
  {
    v15 = sub_1D2873768();
    v16 = v17;
  }

  v18 = a1[1];
  v30[0] = *a1;
  v30[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v19 = sub_1D23C75E0();

  v20 = v19[4];
  sub_1D2870F68();

  v21 = *(v20 + 16);
  if (!v21)
  {

    goto LABEL_12;
  }

  v22 = *(v20 + v21 + 31);

  if (v22 != 3)
  {
    v8 = sub_1D2873768();
    v7 = v23;
  }

  if (v15 != v8 || v16 != v7)
  {
    v24 = sub_1D2879618();

    if (v24)
    {
      goto LABEL_11;
    }

LABEL_12:
    v26 = 0;
    v25 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v25 = 0;
  v26 = 1;
LABEL_13:
  sub_1D22BD1D0(v14, v11, &qword_1EC6DF338, &qword_1D2898C68);
  sub_1D22BD1D0(v11, a3, &qword_1EC6DF338, &qword_1D2898C68);
  v27 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF340, &qword_1D2898C70) + 48);
  *v27 = 0;
  *(v27 + 8) = v25;
  *(v27 + 9) = v26;
  sub_1D22BD238(v14, &qword_1EC6DF338, &qword_1D2898C68);
  return sub_1D22BD238(v11, &qword_1EC6DF338, &qword_1D2898C68);
}

double sub_1D261A154@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v6 = *(v11 + *off_1E83FE878[v5]);
  sub_1D2870F78();

  *a2 = sub_1D28756A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF348, &qword_1D2898C78) + 44);
  v8 = *(v3 + *(type metadata accessor for CharacterEditingView(0) + 32) + 104);
  *v7 = sub_1D2875918();
  *(v7 + 8) = v8;
  *(v7 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF350, &qword_1D2898C80);
  sub_1D261B8EC(v6, v3, v5, v7 + *(v9 + 44));

  return result;
}

double sub_1D261A264(uint64_t a1)
{
  v2 = type metadata accessor for CharacterEditingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D262064C(a1, v5, type metadata accessor for CharacterEditingView);
  sub_1D2878568();
  v10 = sub_1D2878558();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1D26206B4(v5, v12 + v11, type metadata accessor for CharacterEditingView);
  sub_1D23C8994(0, 0, v8, &unk_1D2898C58, v12);

  return result;
}

uint64_t sub_1D261A438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_1D2879328();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1D2878568();
  v4[16] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D261A538, v7, v6);
}

uint64_t sub_1D261A538()
{
  v1 = v0[11];
  v2 = *v1;
  v0[19] = *v1;
  v3 = v1[1];
  v0[20] = v3;
  v0[2] = v2;
  v0[3] = v3;
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  sub_1D2870F78();

  sub_1D286C128();

  v4 = sub_1D2879908();
  v6 = v5;
  sub_1D2879718();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1D261A690;

  return sub_1D233BA38(v4, v6, 0, 0, 1);
}

uint64_t sub_1D261A690()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v2[23] = v0;

  v6 = *(v4 + 8);
  v2[24] = v6;
  v2[25] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[18];
  v8 = v2[17];
  if (v0)
  {
    v9 = sub_1D261AB18;
  }

  else
  {
    v9 = sub_1D261A83C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D261A83C()
{
  v1 = v0[20];
  v0[4] = v0[19];
  v0[5] = v1;
  sub_1D2877308();
  sub_1D2870F78();

  sub_1D286C128();

  v2 = sub_1D2879908();
  v4 = v3;
  sub_1D2879718();
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1D261A970;

  return sub_1D233BA38(v2, v4, 0, 0, 1);
}

uint64_t sub_1D261A970()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  *(*v1 + 216) = v0;

  v3(v4, v5);
  v6 = *(v2 + 144);
  v7 = *(v2 + 136);
  if (v0)
  {
    v8 = sub_1D261AC74;
  }

  else
  {
    v8 = sub_1D261AB98;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D261AB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D261AB98()
{
  v1 = v0[20];
  v2 = v0[19];

  v0[6] = v2;
  v0[7] = v1;
  sub_1D2877308();
  sub_1D2870F78();

  sub_1D286C128();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D261AC74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D261ACF4@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D2874518();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_1D2877848();
  a3[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2C8, &qword_1D2898B18);
  sub_1D261AF60(a1, a2, (a3 + *(v11 + 44)));
  type metadata accessor for CharacterEditingView(0);
  sub_1D2877848();
  sub_1D28748C8();
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2D0, &unk_1D2898B20) + 36));
  v13 = v22;
  *v12 = v21;
  v12[1] = v13;
  v12[2] = v23;
  v14 = *(a1 + 1);
  v19 = *a1;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v15 = *&v18[1];
  swift_getKeyPath();
  v19 = v15;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v16 = *(*&v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  if (v16 != 4 && a2 != 4 && v16 != 3 && a2 != 3)
  {
    sub_1D2873768();
    sub_1D2873768();
  }

  sub_1D28744F8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D261AF60@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a2;
  v95 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2D8, &qword_1D2898B30);
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2E0, &qword_1D2898B38);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v82 - v14;
  v15 = sub_1D2874DB8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = *a1;
  v16 = a1[1];
  v97 = a1;
  v106 = v17;
  v107 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v18 = *&v98;
  swift_getKeyPath();
  v106 = v18;
  v85 = sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v19 = *(*&v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  if (v19 == 4)
  {
    if (v3 == 4)
    {
LABEL_3:
      sub_1D2874DA8();
      goto LABEL_6;
    }
  }

  else if (v3 != 4)
  {
    if (v19 == 3)
    {
      if (v3 == 3)
      {
        goto LABEL_3;
      }
    }

    else if (v3 != 3)
    {
      v77 = sub_1D2873768();
      v79 = v78;
      if (v77 == sub_1D2873768() && v79 == v80)
      {

        goto LABEL_3;
      }

      v81 = sub_1D2879618();

      if (v81)
      {
        goto LABEL_3;
      }
    }
  }

  LODWORD(v106) = sub_1D2875D88();
LABEL_6:
  v90 = sub_1D28748D8();
  v20 = v97 + *(type metadata accessor for CharacterEditingView(0) + 32);
  sub_1D28745B8();
  v21 = v127;
  LODWORD(v97) = v128;
  v87 = v129;
  v22 = v130;
  v96 = v131;
  v23 = v132;
  v24 = sub_1D2877848();
  v88 = v25;
  v89 = v24;
  v82 = v20;
  sub_1D2877848();
  sub_1D28748C8();
  v106 = v17;
  v107 = v16;
  sub_1D2877308();
  v106 = v17;
  v107 = v16;
  sub_1D2877308();
  v26 = *&v98;
  swift_getKeyPath();
  v106 = v26;
  sub_1D28719E8();

  v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  v28 = v86;
  sub_1D22BD1D0(*&v26 + v27, v86, &unk_1EC6E33C0, &unk_1D2883750);

  sub_1D23C75E0();
  LOBYTE(v106) = v3;
  v29 = COERCE_DOUBLE(sub_1D2437618(&v106, v28));
  v31 = v30;

  sub_1D22BD238(v28, &unk_1EC6E33C0, &unk_1D2883750);
  if (v31 == 0.0)
  {
    v62 = 1;
    v57 = v92;
    v58 = v93;
  }

  else
  {
    v106 = v29;
    v107 = v31;
    sub_1D22BD06C();
    v32 = sub_1D2876698();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    KeyPath = swift_getKeyPath();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2F8, &unk_1D2898B80);
    v41 = v83;
    v42 = &v83[*(v40 + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF300, &qword_1D28AC1C0) + 28);
    v44 = *MEMORY[0x1E697E6F8];
    v45 = sub_1D2874E88();
    (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
    *v42 = KeyPath;
    *v41 = v32;
    *(v41 + 8) = v34;
    *(v41 + 16) = v36 & 1;
    *(v41 + 24) = v38;
    v46 = v82;
    v47 = sub_1D28763F8();
    v48 = v84;
    (*(*(v47 - 8) + 56))(v84, 1, 1, v47);
    v49 = sub_1D2876448();
    sub_1D22BD238(v48, &qword_1EC6D9D40, &qword_1D28804D0);
    v50 = swift_getKeyPath();
    v51 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF308, &qword_1D2898BC0) + 36));
    *v51 = v50;
    v51[1] = v49;
    v52 = *(v46 + 2);
    v53 = swift_getKeyPath();
    v54 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF310, &qword_1D2898BF8) + 36));
    *v54 = v53;
    v54[1] = v52;
    v55 = swift_getKeyPath();
    v56 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF318, &qword_1D2898C30) + 36);
    *v56 = v55;
    *(v56 + 8) = 1;
    *(v56 + 16) = 0;
    sub_1D2877848();
    sub_1D28748C8();
    v57 = v92;
    v58 = v93;
    v59 = (v41 + *(v92 + 36));
    v60 = v133[1];
    v61 = v133[2];
    *v59 = v133[0];
    v59[1] = v60;
    v59[2] = v61;
    sub_1D2620D3C(v41, v58);
    v62 = 0;
  }

  (*(v91 + 56))(v58, v62, 1, v57);
  v63 = v94;
  sub_1D22BD1D0(v58, v94, &qword_1EC6DF2E0, &qword_1D2898B38);
  *&v98 = v21 * 0.5;
  *(&v98 + 1) = v21;
  v64 = v87;
  *&v99 = __PAIR64__(v87, v97);
  *(&v99 + 1) = v22;
  *&v100 = v96;
  *(&v100 + 1) = v23;
  v65 = v89;
  v66 = v90;
  *&v101 = v90;
  WORD4(v101) = 256;
  HIWORD(v101) = v126;
  *(&v101 + 10) = v125;
  v67 = v88;
  *&v102 = v89;
  *(&v102 + 1) = v88;
  v104 = v123;
  v105 = v124;
  v103 = v122;
  v68 = v98;
  v69 = v99;
  v70 = v101;
  v71 = v95;
  v95[2] = v100;
  v71[3] = v70;
  *v71 = v68;
  v71[1] = v69;
  v72 = v102;
  v73 = v103;
  v74 = v105;
  v71[6] = v104;
  v71[7] = v74;
  v71[4] = v72;
  v71[5] = v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2E8, &qword_1D2898B40);
  sub_1D22BD1D0(v63, v71 + *(v75 + 48), &qword_1EC6DF2E0, &qword_1D2898B38);
  sub_1D22BD1D0(&v98, &v106, &qword_1EC6DF2F0, &qword_1D2898B48);
  sub_1D22BD238(v58, &qword_1EC6DF2E0, &qword_1D2898B38);
  sub_1D22BD238(v63, &qword_1EC6DF2E0, &qword_1D2898B38);
  v106 = v21 * 0.5;
  v107 = v21;
  v108 = v97;
  v109 = v64;
  v110 = v22;
  v111 = v96;
  v112 = v23;
  v113 = v66;
  v114 = 256;
  v115 = v125;
  v116 = v126;
  v117 = v65;
  v118 = v67;
  v120 = v123;
  v121 = v124;
  v119 = v122;
  return sub_1D22BD238(&v106, &qword_1EC6DF2F0, &qword_1D2898B48);
}

uint64_t sub_1D261B8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v98 = a1;
  v94 = a4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF358, &qword_1D2898C88);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v75 - v9;
  v10 = sub_1D2875E18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v76 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v75 - v31);
  v89 = type metadata accessor for CharacterEditingView(0);
  v33 = *(v89 + 20);
  *&v99 = a2;
  v83 = v33;
  sub_1D24CC0C4(v32);
  v34 = v11[13];
  v82 = *MEMORY[0x1E697FF38];
  v80 = v34;
  v81 = v11 + 13;
  v34(v29);
  v78 = v11[7];
  v79 = v11 + 7;
  v78(v29, 0, 1, v10);
  v86 = v13;
  v35 = *(v13 + 48);
  sub_1D22BD1D0(v32, v17, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v29, &v17[v35], &qword_1EC6D99B8, &unk_1D287E890);
  v96 = v11;
  v36 = v11[6];
  v37 = v36(v17, 1, v10);
  v84 = v36;
  if (v37 == 1)
  {
    sub_1D22BD238(v29, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v32, &qword_1EC6D99B8, &unk_1D287E890);
    v38 = v36(&v17[v35], 1, v10);
    v39 = v87;
    if (v38 == 1)
    {
      sub_1D22BD238(v17, &qword_1EC6D99B8, &unk_1D287E890);
      v40 = 0x4058800000000000;
LABEL_7:
      v85 = v40;
      v41 = v88;
      goto LABEL_11;
    }

LABEL_6:
    sub_1D22BD238(v17, &qword_1EC6E0DB0, &qword_1D288C390);
    v40 = 0x405D800000000000;
    goto LABEL_7;
  }

  sub_1D22BD1D0(v17, v26, &qword_1EC6D99B8, &unk_1D287E890);
  if (v36(&v17[v35], 1, v10) == 1)
  {
    sub_1D22BD238(v29, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v32, &qword_1EC6D99B8, &unk_1D287E890);
    (v96[1])(v26, v10);
    v39 = v87;
    goto LABEL_6;
  }

  v42 = v77;
  (v96[4])(v77, &v17[v35], v10);
  sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  LODWORD(v85) = sub_1D2877F98();
  v43 = v96[1];
  v43(v42, v10);
  sub_1D22BD238(v29, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v32, &qword_1EC6D99B8, &unk_1D287E890);
  v43(v26, v10);
  sub_1D22BD238(v17, &qword_1EC6D99B8, &unk_1D287E890);
  v44 = 0x4058800000000000;
  if ((v85 & 1) == 0)
  {
    v44 = 0x405D800000000000;
  }

  v85 = v44;
  v39 = v87;
  v41 = v88;
LABEL_11:
  v45 = v97;
  sub_1D24CC0C4(v39);
  v80(v45, v82, v10);
  v78(v45, 0, 1, v10);
  v46 = *(v86 + 48);
  sub_1D22BD1D0(v39, v41, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v45, v41 + v46, &qword_1EC6D99B8, &unk_1D287E890);
  v47 = v84;
  if (v84(v41, 1, v10) == 1)
  {
    sub_1D22BD238(v45, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v39, &qword_1EC6D99B8, &unk_1D287E890);
    if (v47(v41 + v46, 1, v10) == 1)
    {
      sub_1D22BD238(v41, &qword_1EC6D99B8, &unk_1D287E890);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v48 = v76;
  sub_1D22BD1D0(v41, v76, &qword_1EC6D99B8, &unk_1D287E890);
  if (v47(v41 + v46, 1, v10) == 1)
  {
    sub_1D22BD238(v97, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v39, &qword_1EC6D99B8, &unk_1D287E890);
    (v96[1])(v48, v10);
LABEL_16:
    sub_1D22BD238(v41, &qword_1EC6E0DB0, &qword_1D288C390);
    goto LABEL_18;
  }

  v49 = v39;
  v50 = v96;
  v51 = v77;
  (v96[4])(v77, v41 + v46, v10);
  sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  sub_1D2877F98();
  v52 = v50[1];
  v52(v51, v10);
  sub_1D22BD238(v97, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v49, &qword_1EC6D99B8, &unk_1D287E890);
  v52(v48, v10);
  sub_1D22BD238(v41, &qword_1EC6D99B8, &unk_1D287E890);
LABEL_18:
  sub_1D2877848();
  sub_1D2875208();
  v53 = *v99;
  v54 = *(v99 + 8);
  *&v103 = *v99;
  *(&v103 + 1) = v54;
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v55 = v100;
  swift_getKeyPath();
  *&v103 = v55;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v56 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  v57 = v55 + v56;
  v58 = v90;
  sub_1D22BD1D0(v57, v90, &unk_1EC6E33C0, &unk_1D2883750);

  v59 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  LODWORD(v55) = (*(*(v59 - 8) + 48))(v58, 1, v59);
  sub_1D22BD238(v58, &unk_1EC6E33C0, &unk_1D2883750);
  v60 = 1.0;
  if (v55 == 1)
  {
    *&v103 = v53;
    *(&v103 + 1) = v54;
    sub_1D2877308();
    v61 = v100;
    swift_getKeyPath();
    *&v103 = v61;
    sub_1D28719E8();

    v62 = *(v61 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

    if (v62 == 4)
    {
      v60 = 0.3;
    }

    else
    {
      v60 = 1.0;
    }
  }

  v63 = v93;
  sub_1D261C688(v99, v91, v93);
  sub_1D2877848();
  sub_1D28748C8();
  v64 = (v63 + *(v92 + 36));
  v65 = v126;
  *v64 = v125;
  v64[1] = v65;
  v64[2] = v127;
  v66 = v95;
  sub_1D22BD1D0(v63, v95, &qword_1EC6DF358, &qword_1D2898C88);
  v99 = xmmword_1D2898670;
  v100 = xmmword_1D2898670;
  v67 = v98;
  *&v101[0] = v98;
  *(&v101[3] + 8) = v119;
  *(&v101[4] + 8) = v120;
  *(&v101[5] + 8) = v121;
  *(&v101[6] + 8) = v122;
  *(v101 + 8) = v116;
  *(&v101[1] + 8) = v117;
  *(&v101[2] + 8) = v118;
  WORD4(v101[7]) = 1;
  HIWORD(v101[7]) = v124;
  *(&v101[7] + 10) = v123;
  v102 = v60;
  v68 = v101[6];
  v69 = v94;
  *(v94 + 96) = v101[5];
  *(v69 + 112) = v68;
  v70 = v101[4];
  *(v69 + 64) = v101[3];
  *(v69 + 80) = v70;
  v71 = v101[2];
  *(v69 + 32) = v101[1];
  *(v69 + 48) = v71;
  v72 = v101[0];
  *v69 = v100;
  *(v69 + 16) = v72;
  *(v69 + 128) = v101[7];
  *(v69 + 144) = v102;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF360, &qword_1D2898C90);
  sub_1D22BD1D0(v66, v69 + *(v73 + 48), &qword_1EC6DF358, &qword_1D2898C88);
  sub_1D22BD1D0(&v100, &v103, &qword_1EC6DF368, &qword_1D2898C98);
  sub_1D22BD238(v63, &qword_1EC6DF358, &qword_1D2898C88);
  sub_1D22BD238(v66, &qword_1EC6DF358, &qword_1D2898C88);
  v103 = v99;
  v108 = v119;
  v109 = v120;
  v110 = v121;
  v111 = v122;
  v105 = v116;
  v106 = v117;
  v104 = v67;
  v107 = v118;
  v112 = 1;
  v114 = v124;
  v113 = v123;
  v115 = v60;
  return sub_1D22BD238(&v103, &qword_1EC6DF368, &qword_1D2898C98);
}

uint64_t sub_1D261C688@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v47 = a3;
  v5 = sub_1D2874518();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF370, &qword_1D2898CA0);
  MEMORY[0x1EEE9AC00](v46);
  v8 = (&v37 - v7);
  v39 = sub_1D28771B8();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF378, &qword_1D2898CA8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = (&v37 - v11);
  v13 = *(a1 + 1);
  v41 = *a1;
  v51 = v41;
  v52 = v13;
  v40 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v14 = v49;
  swift_getKeyPath();
  v51 = v14;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v15 = &unk_1ED89F000;
  v16 = *(*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  if (v16 == 4)
  {
    if (v3 == 4)
    {
LABEL_3:
      sub_1D2877198();
      v17 = v38;
      v18 = v39;
      (*(v38 + 104))(v10, *MEMORY[0x1E6981630], v39);
      v19 = sub_1D2877228();

      (*(v17 + 8))(v10, v18);
      sub_1D2874DA8();
      *v12 = v19;
      sub_1D22BD1D0(v12, v8, &qword_1EC6DF378, &qword_1D2898CA8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF380, &unk_1D2898CB0);
      sub_1D2621144();
      sub_1D26211FC();
      sub_1D2875AF8();
      return sub_1D22BD238(v12, &qword_1EC6DF378, &qword_1D2898CA8);
    }
  }

  else if (v3 != 4)
  {
    if (v16 == 3)
    {
      if (v3 == 3)
      {
        goto LABEL_3;
      }
    }

    else if (v3 != 3)
    {
      v32 = sub_1D2873768();
      v34 = v33;
      if (v32 == sub_1D2873768() && v34 == v35)
      {

        goto LABEL_3;
      }

      v36 = sub_1D2879618();

      v15 = &unk_1ED89F000;
      if (v36)
      {
        goto LABEL_3;
      }
    }
  }

  LODWORD(v39) = sub_1D2875D88();
  type metadata accessor for CharacterEditingView(0);
  sub_1D28745B8();
  v21 = v51;
  v22 = v52;
  v23 = v53;
  v24 = v54;
  v25 = v55;
  v26 = sub_1D2877848();
  v28 = v27;
  v49 = v41;
  v50 = v40;
  sub_1D2877308();
  v29 = v48;
  swift_getKeyPath();
  v49 = v29;
  sub_1D28719E8();

  v30 = *(*&v29 + v15[360]);

  if (v30 != 4 && v3 != 4 && v30 != 3 && v3 != 3)
  {
    sub_1D2873768();
    sub_1D2873768();
  }

  v31 = v42;
  sub_1D28744F8();
  (*(v43 + 8))(v31, v44);
  *v8 = v21 * 0.5;
  v8[1] = v21;
  *(v8 + 2) = v22;
  *(v8 + 3) = v23;
  *(v8 + 4) = v24;
  *(v8 + 5) = v25;
  *(v8 + 12) = v39;
  *(v8 + 26) = 256;
  *(v8 + 7) = v26;
  *(v8 + 8) = v28;
  *(v8 + 72) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF380, &unk_1D2898CB0);
  sub_1D2621144();
  sub_1D26211FC();
  return sub_1D2875AF8();
}

uint64_t sub_1D261CD00(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  *&v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  if (*(v9 + 32) == 1)
  {
    sub_1D264C564(&v5);

    if (v5)
    {
      v3 = v7;
      v8 = v5;
      sub_1D2870F68();
      sub_1D2620860(&v8);
      v9 = v6;
      sub_1D22BD018(&v9);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = sub_1D264D2A0();
  }

  return v3;
}

uint64_t sub_1D261CDE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v47 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108, &qword_1D2898A00);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = sub_1D28758D8();
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1E8, &qword_1D2898A08);
  MEMORY[0x1EEE9AC00](v50);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1F0, &qword_1D2898A10);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v44 - v24;
  *v22 = sub_1D28756A8();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1F8, &unk_1D2898A18) + 44);
  v48 = v22;
  sub_1D261D698(a1, a2, &v22[v25]);
  v26 = a2[1];
  v59 = *a2;
  v60 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v27 = v57;
  swift_getKeyPath();
  v59 = v27;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v27 + v28, v18, &unk_1EC6E33C0, &unk_1D2883750);

  v29 = a1;
  v30 = v47;
  sub_1D262064C(v29, v15, type metadata accessor for ImageGenerationPerson.SkinTone);
  (*(v5 + 56))(v15, 0, 1, v30);
  v31 = *(v8 + 56);
  sub_1D22BD1D0(v18, v10, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D22BD1D0(v15, &v10[v31], &unk_1EC6E33C0, &unk_1D2883750);
  v32 = *(v5 + 48);
  if (v32(v10, 1, v30) == 1)
  {
    sub_1D22BD238(v15, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D22BD238(v18, &unk_1EC6E33C0, &unk_1D2883750);
    if (v32(&v10[v31], 1, v30) == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v33 = v46;
  sub_1D22BD1D0(v10, v46, &unk_1EC6E33C0, &unk_1D2883750);
  if (v32(&v10[v31], 1, v30) == 1)
  {
    sub_1D22BD238(v15, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D22BD238(v18, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D24917E0(v33);
LABEL_6:
    sub_1D22BD238(v10, &qword_1EC6DC108, &qword_1D2898A00);
    v35 = v51;
    v34 = v52;
    goto LABEL_7;
  }

  v36 = v45;
  sub_1D26206B4(&v10[v31], v45, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D28737A8();
  sub_1D2620AA4(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01D8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v57 == v55 && v58 == v56)
  {
    sub_1D24917E0(v36);
    sub_1D22BD238(v15, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D22BD238(v18, &unk_1EC6E33C0, &unk_1D2883750);

    sub_1D24917E0(v33);
LABEL_11:
    sub_1D22BD238(v10, &unk_1EC6E33C0, &unk_1D2883750);
    v35 = v51;
    v34 = v52;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C0, &unk_1D288FF90);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D287F500;
    sub_1D2875888();
    v57 = v37;
    goto LABEL_13;
  }

  v43 = sub_1D2879618();
  sub_1D24917E0(v36);
  sub_1D22BD238(v15, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D22BD238(v18, &unk_1EC6E33C0, &unk_1D2883750);

  sub_1D24917E0(v33);
  sub_1D22BD238(v10, &unk_1EC6E33C0, &unk_1D2883750);
  v35 = v51;
  v34 = v52;
  if (v43)
  {
    goto LABEL_12;
  }

LABEL_7:
  v57 = MEMORY[0x1E69E7CC0];
LABEL_13:
  sub_1D2620AA4(&qword_1ED89D678, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C8, &qword_1D2890E70);
  sub_1D22BB9D8(&qword_1ED89CEC8, &qword_1EC6DD1C8, &qword_1D2890E70, MEMORY[0x1E69E6328]);
  v38 = v53;
  sub_1D2879088();
  sub_1D22BB9D8(&qword_1EC6D76C8, &qword_1EC6DF1E8, &qword_1D2898A08, MEMORY[0x1E69817F8]);
  v39 = v49;
  v40 = v48;
  sub_1D2876918();
  (*(v34 + 8))(v35, v38);
  sub_1D22BD238(v40, &qword_1EC6DF1E8, &qword_1D2898A08);
  v41 = v54;
  sub_1D22EC9BC(v39, v54, &qword_1EC6DF1F0, &qword_1D2898A10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF200, &unk_1D2898A28);
  *(v41 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1D261D698@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v88 = sub_1D2874518();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94 - 8);
  v79 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v77 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108, &qword_1D2898A00);
  MEMORY[0x1EEE9AC00](v80);
  v10 = &v77 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v77 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF208, &qword_1D2898A38);
  MEMORY[0x1EEE9AC00](v86);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF210, &qword_1D2898A40);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v91 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  v96 = a1;
  sub_1D264C564(&v102);
  v90 = v25;
  v78 = v13;
  if (v102)
  {
    v81 = v102;
    v108 = v103;
    sub_1D22BD018(&v108);
    v109 = v104;
    sub_1D22BD018(&v109);
  }

  else
  {
    v81 = sub_1D2877098();
  }

  v26 = *a2;
  v27 = a2[1];
  v89 = a2;
  *&v105 = v26;
  *(&v105 + 1) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();

  *&v105 = v26;
  *(&v105 + 1) = v27;
  sub_1D2877308();

  sub_1D2877848();
  sub_1D28748C8();
  *&v100[6] = v105;
  *&v100[22] = v106;
  *&v100[38] = v107;
  v84 = v26;
  v99[0] = v26;
  v83 = v27;
  v99[1] = v27;
  v82 = v28;
  sub_1D2877308();
  v29 = v97;
  swift_getKeyPath();
  v99[0] = v29;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v30 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  v31 = v93;
  sub_1D22BD1D0(v29 + v30, v93, &unk_1EC6E33C0, &unk_1D2883750);

  sub_1D262064C(v96, v16, type metadata accessor for ImageGenerationPerson.SkinTone);
  v32 = v95;
  v33 = v94;
  (*(v95 + 56))(v16, 0, 1, v94);
  v34 = *(v80 + 48);
  sub_1D22BD1D0(v31, v10, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D22BD1D0(v16, &v10[v34], &unk_1EC6E33C0, &unk_1D2883750);
  v35 = *(v32 + 48);
  if (v35(v10, 1, v33) == 1)
  {
    sub_1D22BD238(v16, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D22BD238(v31, &unk_1EC6E33C0, &unk_1D2883750);
    v36 = v35(&v10[v34], 1, v33);
    v37 = v95;
    if (v36 == 1)
    {
      v38 = &unk_1EC6E33C0;
      v39 = &unk_1D2883750;
LABEL_10:
      sub_1D22BD238(v10, v38, v39);
      v41 = v90;
      goto LABEL_12;
    }

LABEL_9:
    v38 = &qword_1EC6DC108;
    v39 = &qword_1D2898A00;
    goto LABEL_10;
  }

  v40 = v78;
  sub_1D22BD1D0(v10, v78, &unk_1EC6E33C0, &unk_1D2883750);
  if (v35(&v10[v34], 1, v33) == 1)
  {
    sub_1D22BD238(v16, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D22BD238(v93, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D24917E0(v40);
    v37 = v95;
    goto LABEL_9;
  }

  v42 = &v10[v34];
  v43 = v77;
  sub_1D26206B4(v42, v77, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D28737A8();
  sub_1D2620AA4(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01D8]);
  sub_1D2878368();
  sub_1D2878368();
  sub_1D24917E0(v43);
  sub_1D22BD238(v16, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D22BD238(v93, &unk_1EC6E33C0, &unk_1D2883750);

  sub_1D24917E0(v40);
  sub_1D22BD238(v10, &unk_1EC6E33C0, &unk_1D2883750);
  v41 = v90;
  v37 = v95;
LABEL_12:
  v44 = v85;
  sub_1D28744F8();
  (*(v87 + 8))(v44, v88);
  type metadata accessor for CharacterEditingView(0);
  v45 = v89;
  LOBYTE(v44) = sub_1D2876338();
  sub_1D2874298();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v101 = 0;
  v54 = sub_1D2877848();
  v56 = v55;
  v57 = &v20[*(v86 + 36)];
  sub_1D261E26C(v45, v96, v57);
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF218, &qword_1D2898A48) + 36));
  *v58 = v54;
  v58[1] = v56;
  *(v20 + 7) = *&v100[46];
  *(v20 + 42) = *&v100[32];
  v59 = *v100;
  *(v20 + 26) = *&v100[16];
  *v20 = v81;
  *(v20 + 4) = 256;
  *(v20 + 10) = v59;
  v20[64] = v44;
  *(v20 + 9) = v47;
  *(v20 + 10) = v49;
  *(v20 + 11) = v51;
  *(v20 + 12) = v53;
  v20[104] = 0;
  v97 = 0;
  v98 = 0xE000000000000000;
  MEMORY[0x1D38A0C50](0x656E6F546E696B53, 0xE800000000000000);
  sub_1D2879348();
  sub_1D262071C();
  sub_1D2876CC8();

  sub_1D22BD238(v20, &qword_1EC6DF208, &qword_1D2898A38);
  v60 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v62 = v61;
  v97 = v84;
  v98 = v83;
  sub_1D2877308();
  sub_1D2650030();
  v64 = v63;

  v65 = *(v64 + 16);
  if (!v65)
  {

    goto LABEL_19;
  }

  v66 = v79;
  sub_1D262064C(v64 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * (v65 - 1), v79, type metadata accessor for ImageGenerationPerson.SkinTone);

  v67 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v69 = v68;
  sub_1D24917E0(v66);
  if (v60 != v67 || v62 != v69)
  {
    v70 = sub_1D2879618();

    if (v70)
    {
      goto LABEL_18;
    }

LABEL_19:
    v72 = 0;
    v71 = 1;
    goto LABEL_20;
  }

LABEL_18:
  v71 = 0;
  v72 = 1;
LABEL_20:
  v73 = v91;
  sub_1D22BD1D0(v41, v91, &qword_1EC6DF210, &qword_1D2898A40);
  v74 = v92;
  sub_1D22BD1D0(v73, v92, &qword_1EC6DF210, &qword_1D2898A40);
  v75 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF228, &qword_1D2898A58) + 48);
  *v75 = 0;
  *(v75 + 8) = v71;
  *(v75 + 9) = v72;
  sub_1D22BD238(v41, &qword_1EC6DF210, &qword_1D2898A40);
  return sub_1D22BD238(v73, &qword_1EC6DF210, &qword_1D2898A40);
}

uint64_t sub_1D261E26C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v53 = a3;
  v51 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108, &qword_1D2898A00);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = sub_1D2874DB8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF230, &qword_1D2898A60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v47 - v21);
  sub_1D2874DA8();
  type metadata accessor for CharacterEditingView(0);
  sub_1D28745B8();
  v23 = v60;
  v24 = v62;
  v25 = v63;
  v26 = v64;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD638, &qword_1D2891038);
  v28 = v61;
  (*(v17 + 16))(v22 + *(v27 + 52), v19, v16);
  *v22 = v23 * 0.5;
  v22[1] = v23;
  *(v22 + 2) = v28;
  *(v22 + 3) = v24;
  *(v22 + 4) = v25;
  *(v22 + 5) = v26;
  *(v22 + *(v27 + 56)) = 256;
  v29 = sub_1D2877848();
  v31 = v30;
  (*(v17 + 8))(v19, v16);
  v32 = v15;
  v33 = v49;
  v34 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD640, &qword_1D2891040) + 36));
  *v34 = v29;
  v34[1] = v31;
  v35 = v50;
  v36 = v51;
  v37 = a1[1];
  v58 = *a1;
  v59 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v38 = v56;
  swift_getKeyPath();
  v58 = v38;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v39 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v38 + v39, v32, &unk_1EC6E33C0, &unk_1D2883750);

  sub_1D262064C(v52, v12, type metadata accessor for ImageGenerationPerson.SkinTone);
  (*(v35 + 56))(v12, 0, 1, v36);
  v40 = *(v6 + 56);
  sub_1D22BD1D0(v32, v33, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D22BD1D0(v12, v33 + v40, &unk_1EC6E33C0, &unk_1D2883750);
  v41 = *(v35 + 48);
  if (v41(v33, 1, v36) == 1)
  {
    sub_1D22BD238(v12, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D22BD238(v32, &unk_1EC6E33C0, &unk_1D2883750);
    if (v41(v33 + v40, 1, v36) == 1)
    {
      sub_1D22BD238(v33, &unk_1EC6E33C0, &unk_1D2883750);
      v42 = 1.0;
      goto LABEL_13;
    }

LABEL_6:
    sub_1D22BD238(v33, &qword_1EC6DC108, &qword_1D2898A00);
    v42 = 0.0;
    goto LABEL_13;
  }

  v43 = v48;
  sub_1D22BD1D0(v33, v48, &unk_1EC6E33C0, &unk_1D2883750);
  if (v41(v33 + v40, 1, v36) == 1)
  {
    sub_1D22BD238(v12, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D22BD238(v32, &unk_1EC6E33C0, &unk_1D2883750);
    sub_1D24917E0(v43);
    goto LABEL_6;
  }

  v44 = v47;
  sub_1D26206B4(v33 + v40, v47, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D28737A8();
  sub_1D2620AA4(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01D8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v56 != v54 || (v42 = 1.0, v57 != v55))
  {
    if (sub_1D2879618())
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.0;
    }
  }

  sub_1D24917E0(v44);
  sub_1D22BD238(v12, &unk_1EC6E33C0, &unk_1D2883750);
  sub_1D22BD238(v32, &unk_1EC6E33C0, &unk_1D2883750);

  sub_1D24917E0(v43);
  sub_1D22BD238(v33, &unk_1EC6E33C0, &unk_1D2883750);
LABEL_13:
  v45 = v53;
  sub_1D22EC9BC(v22, v53, &qword_1EC6DF230, &qword_1D2898A60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF238, &qword_1D2898A68);
  *(v45 + *(result + 36)) = v42;
  return result;
}

double sub_1D261EA04(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  sub_1D264FCD0();

  return result;
}

void sub_1D261EA64(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips);
}

uint64_t sub_1D261EB3C(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF320, &qword_1D2898C38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF328, &unk_1D2898C40);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D261EC84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D28755F8();
  *a1 = result;
  return result;
}

double sub_1D261ECDC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D28720D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1D28720C8();
  (*(v3 + 104))(v5, *MEMORY[0x1E696E3D8], v2);
  sub_1D2620AA4(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8], MEMORY[0x1E696E408]);
  sub_1D2878368();
  sub_1D2878368();
  v9 = 0x4024000000000000;
  if (v15 != v14 && (sub_1D2879618() & 1) == 0)
  {
    v9 = 0;
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  LOBYTE(v15) = 0;
  sub_1D28763C8();
  v11 = sub_1D28763E8();

  v12 = v15;
  *a1 = xmmword_1D2898680;
  *(a1 + 16) = xmmword_1D2898690;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = xmmword_1D28986A0;
  *(a1 + 64) = xmmword_1D28986B0;
  *(a1 + 80) = xmmword_1D28986C0;
  *(a1 + 96) = v11;
  *(a1 + 104) = xmmword_1D28986D0;
  result = 540.0;
  *(a1 + 120) = xmmword_1D28986E0;
  return result;
}

double sub_1D261EF4C(uint64_t a1)
{
  v3 = *(type metadata accessor for CharacterEditingView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1D26190F0(a1, v4);
}

double sub_1D261EFBC(uint64_t a1)
{
  v2 = sub_1D28720D8();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v32 - v5;
  v6 = sub_1D2875E18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  (*(v7 + 104))(&v32 - v19, *MEMORY[0x1E697FF38], v6, v18);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_1D22BD1D0(a1, v13, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v20, &v13[v21], &qword_1EC6D99B8, &unk_1D287E890);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) == 1)
  {
    sub_1D22BD238(v20, &qword_1EC6D99B8, &unk_1D287E890);
    if (v22(&v13[v21], 1, v6) == 1)
    {
      sub_1D22BD238(v13, &qword_1EC6D99B8, &unk_1D287E890);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1D22BD1D0(v13, v16, &qword_1EC6D99B8, &unk_1D287E890);
  if (v22(&v13[v21], 1, v6) == 1)
  {
    sub_1D22BD238(v20, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6E0DB0, &qword_1D288C390);
    return 70.0;
  }

  (*(v7 + 32))(v9, &v13[v21], v6);
  sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v23 = sub_1D2877F98();
  v24 = *(v7 + 8);
  v24(v9, v6);
  sub_1D22BD238(v20, &qword_1EC6D99B8, &unk_1D287E890);
  v24(v16, v6);
  sub_1D22BD238(v13, &qword_1EC6D99B8, &unk_1D287E890);
  if (v23)
  {
LABEL_8:
    v25 = v32;
    sub_1D28720C8();
    v27 = v33;
    v26 = v34;
    v28 = v35;
    (*(v34 + 104))(v33, *MEMORY[0x1E696E3D8], v35);
    sub_1D2620AA4(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8], MEMORY[0x1E696E400]);
    v29 = sub_1D2877F98();
    v30 = *(v26 + 8);
    v30(v27, v28);
    v30(v25, v28);
    result = 20.0;
    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  return 70.0;
}

double sub_1D261F4F4(uint64_t a1)
{
  v35 = a1;
  v1 = sub_1D2875E18();
  v36 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = sub_1D28720D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1D28720C8();
  (*(v12 + 104))(v14, *MEMORY[0x1E696E3D8], v11);
  sub_1D2620AA4(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8], MEMORY[0x1E696E408]);
  sub_1D2878368();
  sub_1D2878368();
  if (v39 == v37 && v40 == v38)
  {
    v18 = *(v12 + 8);
    v18(v14, v11);
    v18(v17, v11);

    return 18.0;
  }

  v31 = v5;
  v32 = v1;
  v20 = sub_1D2879618();
  v21 = *(v12 + 8);
  v21(v14, v11);
  v21(v17, v11);

  result = 18.0;
  if ((v20 & 1) == 0)
  {
    v22 = v36;
    v23 = v32;
    (*(v36 + 104))(v10, *MEMORY[0x1E697FF38], v32, 18.0);
    (*(v22 + 56))(v10, 0, 1, v23);
    v24 = *(v3 + 48);
    v25 = v31;
    sub_1D22BD1D0(v35, v31, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD1D0(v10, v25 + v24, &qword_1EC6D99B8, &unk_1D287E890);
    v26 = *(v22 + 48);
    if (v26(v25, 1, v23) == 1)
    {
      sub_1D22BD238(v10, &qword_1EC6D99B8, &unk_1D287E890);
      if (v26(v25 + v24, 1, v23) == 1)
      {
        sub_1D22BD238(v25, &qword_1EC6D99B8, &unk_1D287E890);
        return 0.0;
      }
    }

    else
    {
      v27 = v34;
      sub_1D22BD1D0(v25, v34, &qword_1EC6D99B8, &unk_1D287E890);
      if (v26(v25 + v24, 1, v23) != 1)
      {
        v28 = v33;
        (*(v22 + 32))(v33, v25 + v24, v23);
        sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
        v29 = sub_1D2877F98();
        v30 = *(v22 + 8);
        v30(v28, v23);
        sub_1D22BD238(v10, &qword_1EC6D99B8, &unk_1D287E890);
        v30(v27, v23);
        sub_1D22BD238(v25, &qword_1EC6D99B8, &unk_1D287E890);
        result = 0.0;
        if (v29)
        {
          return result;
        }

        return 8.0;
      }

      sub_1D22BD238(v10, &qword_1EC6D99B8, &unk_1D287E890);
      (*(v22 + 8))(v27, v23);
    }

    sub_1D22BD238(v25, &qword_1EC6E0DB0, &qword_1D288C390);
    return 8.0;
  }

  return result;
}

unint64_t sub_1D261FB04()
{
  result = qword_1EC6DF058;
  if (!qword_1EC6DF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF050, &qword_1D2898828);
    sub_1D261FC40();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0C0, &qword_1D2898868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0C8, &qword_1D2898870);
    sub_1D261FF2C();
    sub_1D22BAAF0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF058);
  }

  return result;
}

unint64_t sub_1D261FC40()
{
  result = qword_1EC6DF060;
  if (!qword_1EC6DF060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF068, &qword_1D2898830);
    sub_1D261FCCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF060);
  }

  return result;
}

unint64_t sub_1D261FCCC()
{
  result = qword_1EC6DF070;
  if (!qword_1EC6DF070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF078, &qword_1D2898838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF080, &qword_1D2898840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF088, &qword_1D2898848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF090, &qword_1D2898850);
    sub_1D261FE74();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0B0, &qword_1D2898860);
    sub_1D22BB9D8(&qword_1EC6DF0B8, &qword_1EC6DF0B0, &qword_1D2898860, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF070);
  }

  return result;
}

unint64_t sub_1D261FE74()
{
  result = qword_1EC6DF098;
  if (!qword_1EC6DF098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF090, &qword_1D2898850);
    sub_1D22BB9D8(&qword_1EC6DF0A0, &qword_1EC6DF0A8, &qword_1D2898858, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF098);
  }

  return result;
}

unint64_t sub_1D261FF2C()
{
  result = qword_1EC6DF0D0;
  if (!qword_1EC6DF0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0C8, &qword_1D2898870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0D8, &qword_1D2898878);
    sub_1D2620024();
    swift_getOpaqueTypeConformance2();
    sub_1D2620AA4(&qword_1EC6D77C8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF0D0);
  }

  return result;
}

unint64_t sub_1D2620024()
{
  result = qword_1EC6DF0E0;
  if (!qword_1EC6DF0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0D8, &qword_1D2898878);
    sub_1D22BB9D8(&qword_1EC6DF0E8, &qword_1EC6DF0F0, &qword_1D2898880, MEMORY[0x1E697BE60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF0E0);
  }

  return result;
}

unint64_t sub_1D2620118()
{
  result = qword_1EC6DF148;
  if (!qword_1EC6DF148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF140, &qword_1D28988D8);
    sub_1D26201D0();
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70, &qword_1D287FDC0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF148);
  }

  return result;
}

unint64_t sub_1D26201D0()
{
  result = qword_1EC6DF150;
  if (!qword_1EC6DF150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF158, &qword_1D28988E0);
    sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30, &qword_1D287FDB0, MEMORY[0x1E697D680]);
    sub_1D22BB9D8(&qword_1ED89D2D8, &qword_1EC6DA278, &unk_1D288CDC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF150);
  }

  return result;
}

uint64_t sub_1D26202E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CharacterEditingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1D2620358()
{
  result = qword_1EC6D7758;
  if (!qword_1EC6D7758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF170, &qword_1D2898958);
    sub_1D22BB9D8(&qword_1EC6D75C8, &qword_1EC6DF180, &qword_1D2898968, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7758);
  }

  return result;
}

unint64_t sub_1D2620408()
{
  result = qword_1EC6D7750;
  if (!qword_1EC6D7750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF160, &qword_1D2898948);
    sub_1D22BB9D8(&qword_1EC6D75C0, &qword_1EC6DF188, &qword_1D2898970, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7750);
  }

  return result;
}

uint64_t sub_1D26204B8(uint64_t a1)
{
  v3 = *(type metadata accessor for CharacterEditingView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1D261CD00(a1, v4);
}

unint64_t sub_1D2620598()
{
  result = qword_1EC6D8AB8;
  if (!qword_1EC6D8AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E33C0, &unk_1D2883750);
    sub_1D2620AA4(&qword_1EC6D8AC0, type metadata accessor for ImageGenerationPerson.SkinTone, &protocol conformance descriptor for ImageGenerationPerson.SkinTone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8AB8);
  }

  return result;
}

uint64_t sub_1D262064C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26206B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D262071C()
{
  result = qword_1EC6D7AD8;
  if (!qword_1EC6D7AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF208, &qword_1D2898A38);
    sub_1D26207D4();
    sub_1D22BB9D8(&qword_1EC6D7950, &qword_1EC6DF218, &qword_1D2898A48, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AD8);
  }

  return result;
}

unint64_t sub_1D26207D4()
{
  result = qword_1EC6D7BD0;
  if (!qword_1EC6D7BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF220, &qword_1D2898A50);
    sub_1D24CA41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BD0);
  }

  return result;
}

uint64_t sub_1D26208CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CharacterEditingView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1D2620968()
{
  result = qword_1EC6D7DE0;
  if (!qword_1EC6D7DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF278, &qword_1D2898AA0);
    sub_1D22BB9D8(&qword_1EC6D8518, &qword_1EC6DF288, &qword_1D2898AB0, &unk_1D28AD0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DE0);
  }

  return result;
}

unint64_t sub_1D2620A20()
{
  result = qword_1EC6D8AC8;
  if (!qword_1EC6D8AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF280, &qword_1D2898AA8);
    sub_1D24925AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8AC8);
  }

  return result;
}

uint64_t sub_1D2620AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2620AEC()
{
  result = qword_1EC6D7E80;
  if (!qword_1EC6D7E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF240, &qword_1D2898A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF270, &qword_1D2898A98);
    sub_1D2871798();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF278, &qword_1D2898AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF280, &qword_1D2898AA8);
    sub_1D2620968();
    sub_1D2620A20();
    swift_getOpaqueTypeConformance2();
    sub_1D2620AA4(&qword_1EC6D8BD0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E80);
  }

  return result;
}

unint64_t sub_1D2620C84()
{
  result = qword_1EC6D7DD8;
  if (!qword_1EC6D7DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF298, &qword_1D2898AE8);
    sub_1D22BB9D8(&qword_1EC6D8520, &qword_1EC6DF2A0, &qword_1D2898AF0, &unk_1D28AD0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DD8);
  }

  return result;
}

uint64_t sub_1D2620D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2D8, &qword_1D2898B30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_25()
{
  v1 = type metadata accessor for CharacterEditingView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2875E18();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  sub_1D2273818(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D2621054(uint64_t a1)
{
  v4 = *(type metadata accessor for CharacterEditingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D261A438(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D2621144()
{
  result = qword_1EC6DF388;
  if (!qword_1EC6DF388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF378, &qword_1D2898CA8);
    sub_1D22BB9D8(&qword_1ED89D378, &qword_1EC6DC0A8, &unk_1D2891020, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF388);
  }

  return result;
}

unint64_t sub_1D26211FC()
{
  result = qword_1EC6DF390;
  if (!qword_1EC6DF390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF380, &unk_1D2898CB0);
    sub_1D22BB9D8(&qword_1EC6DF398, &qword_1EC6DF3A0, &unk_1D2898CC0, MEMORY[0x1E697FCF0]);
    sub_1D22BB9D8(&qword_1EC6DF3A8, &qword_1EC6DF3B0, &qword_1D28AAB70, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF390);
  }

  return result;
}

unint64_t sub_1D26212E0()
{
  result = qword_1EC6DF3C0;
  if (!qword_1EC6DF3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF3C8, &qword_1D2898CD8);
    sub_1D2621398();
    sub_1D22BB9D8(&qword_1EC6DF3F0, &qword_1EC6DF040, &unk_1D2898790, MEMORY[0x1E697F598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF3C0);
  }

  return result;
}

unint64_t sub_1D2621398()
{
  result = qword_1EC6DF3D0;
  if (!qword_1EC6DF3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF3D8, &qword_1D2898CE0);
    sub_1D22BB9D8(&qword_1EC6DF3E0, &qword_1EC6DF3E8, &unk_1D2898CE8, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF3D0);
  }

  return result;
}

Swift::Void __swiftcall CharacterStorageManager.deleteAllCharacters()()
{
  v22[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2871538();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-v5];
  v7 = sub_1D28716B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2621EEC();
  (*(v8 + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_1D2871688();
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  sub_1D2871658();
  v13 = sub_1D2878068();

  v14 = [v12 directoryExistsAtPath_];

  if (v14)
  {
    v15 = [v11 defaultManager];
    v16 = sub_1D28715B8();
    v22[0] = 0;
    v17 = [v15 removeItemAtURL:v16 error:v22];

    if (v17)
    {
      v18 = *(v8 + 8);
      v19 = v22[0];
      v18(v10, v7);
    }

    else
    {
      v20 = v22[0];
      sub_1D28714B8();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }
}

void *sub_1D26217A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v51 = &v43 - v2;
  v50 = type metadata accessor for CharacterAsset(0);
  v53 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v43 - v5;
  v6 = sub_1D2871528();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2871538();
  v57 = *(v9 - 1);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = sub_1D28716B8();
  v59 = *(v18 - 8);
  v19 = v59;
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v52 = v0;
  sub_1D2621EEC();
  v24 = v19[7];
  v24(v17, 1, 1, v18);
  (v57[13])(v11, *MEMORY[0x1E6968F70], v58);
  sub_1D2871688();
  v25 = [objc_opt_self() defaultManager];
  v26 = sub_1D28789D8();

  v27 = v59 + 1;
  v28 = v59[1];
  v28(v23, v18);
  if (!v26)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v58 = v26;
  sub_1D28789B8();
  sub_1D2871518();
  if (v60)
  {
    v57 = v27;
    v46 = (v59 + 4);
    v47 = v28;
    v45 = (v53 + 48);
    v59 = MEMORY[0x1E69E7CC0];
    v29 = v56;
    while (1)
    {
      if (swift_dynamicCast())
      {
        v24(v14, 0, 1, v18);
        (*v46)(v29, v14, v18);
        v33 = v29;
        v34 = v51;
        sub_1D262277C(v33, v51);
        v35 = v34;
        if ((*v45)(v34, 1, v50) != 1)
        {
          v36 = v48;
          sub_1D2626804(v34, v48, type metadata accessor for CharacterAsset);
          sub_1D2626740(v36, v49);
          v37 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_1D27CCE9C(0, v37[2] + 1, 1, v37);
          }

          v29 = v56;
          v38 = v37;
          v39 = v37[2];
          v59 = v38;
          v40 = v38[3];
          v44 = v39 + 1;
          if (v39 >= v40 >> 1)
          {
            v59 = sub_1D27CCE9C((v40 > 1), v44, 1, v59);
          }

          sub_1D26267A4(v48, type metadata accessor for CharacterAsset);
          v47(v29, v18);
          v41 = v59;
          v59[2] = v44;
          sub_1D2626804(v49, v41 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v39, type metadata accessor for CharacterAsset);
          goto LABEL_7;
        }

        v29 = v56;
        v47(v56, v18);
        v30 = v35;
        v31 = &unk_1EC6DDDA0;
        v32 = &qword_1D2882D20;
      }

      else
      {
        v24(v14, 1, 1, v18);
        v30 = v14;
        v31 = &qword_1EC6DA1B8;
        v32 = &qword_1D2884470;
      }

      sub_1D22BD238(v30, v31, v32);
LABEL_7:
      sub_1D2871518();
      if (!v60)
      {
        goto LABEL_18;
      }
    }
  }

  v59 = MEMORY[0x1E69E7CC0];
LABEL_18:
  (*(v54 + 8))(v8, v55);

  return v59;
}

uint64_t CharacterStorageManager.__allocating_init(servicesFetcher:)(uint64_t a1)
{
  swift_allocObject();
  v1 = sub_1D26265FC();

  return v1;
}

uint64_t CharacterStorageManager.init(servicesFetcher:)(uint64_t a1)
{
  v1 = sub_1D26265FC();

  return v1;
}

uint64_t sub_1D2621EEC()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873AA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D28716B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-v9];
  sub_1D26255D0(v7);
  sub_1D2873A78();
  sub_1D28715D8();
  (*(v1 + 8))(v3, v0);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_1D2871658();
  v14 = sub_1D2878068();

  v15 = [v13 directoryExistsAtPath_];

  if (v15)
  {
    goto LABEL_4;
  }

  v16 = [v12 defaultManager];
  v17 = sub_1D28715B8();
  v24[0] = 0;
  v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v24];

  if (v18)
  {
    v19 = v24[0];
LABEL_4:
    v20 = sub_1D2871658();
    v11(v10, v4);
    return v20;
  }

  v22 = v24[0];
  sub_1D28714B8();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D2622204(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D28716B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CharacterAsset(0);
  sub_1D2622438(a1 + *(v6 + 24), v5);
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_1D2871658();
  v9 = sub_1D2878068();

  v10 = [v8 directoryExistsAtPath_];

  if (!v10)
  {
    return (*(v3 + 8))(v5, v2);
  }

  v11 = [v7 defaultManager];
  v12 = sub_1D28715B8();
  v19[0] = 0;
  v13 = [v11 removeItemAtURL:v12 error:v19];

  if (v13)
  {
    v14 = *(v3 + 8);
    v15 = v19[0];
    return v14(v5, v2);
  }

  else
  {
    v17 = v19[0];
    sub_1D28714B8();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2622438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[0] = a1;
  v24[1] = a2;
  v2 = sub_1D2873AA8();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2871538();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  v12 = sub_1D28716B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2621EEC();
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v6 + 104))(v8, *MEMORY[0x1E6968F70], v5);
  v16 = v24[0];
  sub_1D2871688();
  if (*v16 == 3)
  {
    v17 = 0xEB00000000646569;
    v18 = 0x6669636570736E75;
  }

  else
  {
    v18 = sub_1D2873768();
    v17 = v19;
  }

  type metadata accessor for CharacterRecipe(0);
  v20 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v22 = v21;
  v27 = v18;
  v28 = v17;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v20, v22);

  sub_1D2873A78();
  sub_1D28715D8();

  (*(v25 + 8))(v4, v26);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1D262277C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v235 = a2;
  v263 = sub_1D2873CB8();
  v280 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263);
  v277 = v210 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for CharacterRecipe(0);
  v233 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v214 = v210 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v213 = v210 - v6;
  v7 = type metadata accessor for PlaygroundImage(0);
  v239 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v212 = v210 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v217 = v210 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v222 = v210 - v12;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA7E8, &unk_1D2884460);
  MEMORY[0x1EEE9AC00](v270);
  v240 = v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v246 = v210 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v248 = v210 - v17;
  v267 = sub_1D2873AA8();
  v275 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v255 = v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v238 = v210 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v242 = v210 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v249 = v210 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v253 = v210 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v237 = v210 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v266 = v210 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v278 = v210 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v276 = v210 - v34;
  v252 = sub_1D28716B8();
  v35 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v268 = v210 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v247 = v210 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v210 - v40;
  v231 = sub_1D2871528();
  v230 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v43 = v210 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF3F8, &unk_1D2898DC0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v216 = v210 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v228 = v210 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v210 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v211 = v210 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v221 = v210 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v229 = v210 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v220 = v210 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v226 = v210 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v210 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = v210 - v65;
  v67 = [objc_opt_self() defaultManager];
  v264 = a1;
  v68 = sub_1D28789D8();

  if (v68)
  {
    v69 = v239 + 56;
    v70 = *(v239 + 56);
    v244 = v66;
    v70(v66, 1, 1, v7);
    v227 = v63;
    v234 = v7;
    v225 = v69;
    v224 = v70;
    v70(v63, 1, 1, v7);
    v71 = *(v233 + 56);
    v223 = v50;
    v210[1] = v233 + 56;
    v210[0] = v71;
    v71(v50, 1, 1, v236);
    v219 = v68;
    sub_1D28789B8();
    v72 = v43;
    sub_1D2871518();
    v73 = v276;
    v74 = v277;
    v75 = v252;
    if (v282)
    {
      v76 = 0;
      v77 = (v35 + 56);
      v273 = (v35 + 32);
      v279 = (v35 + 8);
      v254 = (v275 + 16);
      v271 = (v275 + 56);
      v265 = (v275 + 48);
      v232 = (v275 + 32);
      v245 = (v275 + 8);
      v258 = (v35 + 16);
      v257 = v280 + 1;
      *(&v78 + 1) = 0xF000000000000000;
      v215 = xmmword_1D28809A0;
      *&v78 = 136315394;
      v241 = v78;
      v256 = v41;
      v274 = (v35 + 56);
      v275 = v72;
      while (1)
      {
        v79 = swift_dynamicCast();
        v80 = *v77;
        if ((v79 & 1) == 0)
        {
          v80(v73, 1, 1, v75);
          sub_1D22BD238(v73, &qword_1EC6DA1B8, &qword_1D2884470);
          goto LABEL_5;
        }

        v80(v73, 0, 1, v75);
        (*v273)(v41, v73, v75);
        v81 = sub_1D28716C8();
        if (v76)
        {
          v83 = v76;
          v76 = 0;
          v84 = v268;
          goto LABEL_9;
        }

        v261 = v81;
        v262 = v82;
        v280 = 0;
        sub_1D2871548();
        sub_1D2873A18();
        v101 = v278;
        sub_1D28739F8();
        v102 = v247;
        sub_1D28715C8();
        v260 = sub_1D2871598();
        v272 = v103;
        v251 = *v279;
        v251(v102, v75);
        sub_1D28710A8();
        swift_allocObject();
        v259 = sub_1D2871098();
        if (qword_1ED8A5308 != -1)
        {
          swift_once();
        }

        v104 = v267;
        v105 = __swift_project_value_buffer(v267, qword_1ED8A5310);
        v106 = v266;
        v250 = *v254;
        v250(v266, v105, v104);
        v269 = *v271;
        v269(v106, 0, 1, v104);
        v107 = *(v270 + 48);
        v108 = v248;
        sub_1D22BD1D0(v101, v248, &qword_1EC6DAE70, &qword_1D2881A90);
        sub_1D22BD1D0(v106, v108 + v107, &qword_1EC6DAE70, &qword_1D2881A90);
        v109 = *v265;
        v110 = (*v265)(v108, 1, v104);
        v111 = v249;
        if (v110 == 1)
        {
          break;
        }

        v117 = v237;
        sub_1D22BD1D0(v108, v237, &qword_1EC6DAE70, &qword_1D2881A90);
        if (v109(v108 + v107, 1, v104) == 1)
        {
          sub_1D22BD238(v266, &qword_1EC6DAE70, &qword_1D2881A90);
          (*v245)(v117, v104);
          v113 = v108;
LABEL_20:
          sub_1D22BD238(v113, &qword_1EC6DA7E8, &unk_1D2884460);
          v115 = v253;
          goto LABEL_21;
        }

        v127 = v255;
        (*v232)(v255, v108 + v107, v104);
        sub_1D262686C(&qword_1EC6DA7F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
        v218 = sub_1D2877F98();
        v128 = *v245;
        v129 = v127;
        v111 = v249;
        (*v245)(v129, v104);
        sub_1D22BD238(v266, &qword_1EC6DAE70, &qword_1D2881A90);
        v128(v117, v104);
        sub_1D22BD238(v108, &qword_1EC6DAE70, &qword_1D2881A90);
        v115 = v253;
        v41 = v256;
        v114 = v244;
        if (v218)
        {
          goto LABEL_33;
        }

LABEL_21:
        v118 = v267;
        v250(v115, v105, v267);
        v269(v115, 0, 1, v118);
        v119 = *(v270 + 48);
        v120 = v246;
        sub_1D22BD1D0(v278, v246, &qword_1EC6DAE70, &qword_1D2881A90);
        sub_1D22BD1D0(v115, v120 + v119, &qword_1EC6DAE70, &qword_1D2881A90);
        if (v109(v120, 1, v118) == 1)
        {
          sub_1D22BD238(v115, &qword_1EC6DAE70, &qword_1D2881A90);
          v121 = v109(v120 + v119, 1, v118);
          v75 = v252;
          if (v121 == 1)
          {
            sub_1D22BD238(v120, &qword_1EC6DAE70, &qword_1D2881A90);
LABEL_43:
            if (v260 == v243[11] && v272 == v243[12] || (sub_1D2879618() & 1) != 0)
            {

              v148 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
              v149 = v261;
              v150 = v262;
              sub_1D22D6CF8(v261, v262);
              v151 = sub_1D28716D8();
              v152 = v148;
              v153 = v150;
              v154 = [v152 initWithData_];

              sub_1D22D6D60(v149, v153);
              if (!v154)
              {
                sub_1D23EE050();
                v83 = swift_allocError();
                *v171 = 0;
                swift_willThrow();

                sub_1D22D6D60(v149, v153);
                sub_1D22BD238(v278, &qword_1EC6DAE70, &qword_1D2881A90);
                v76 = 0;
                v84 = v268;
                v41 = v256;
LABEL_64:
                v74 = v277;
LABEL_9:
                sub_1D2872708();
                (*v258)(v84, v264, v75);
                v85 = v83;
                v86 = sub_1D2873CA8();
                v87 = v75;
                v88 = sub_1D2878A18();

                if (os_log_type_enabled(v86, v88))
                {
                  v89 = v84;
                  v90 = swift_slowAlloc();
                  v272 = swift_slowAlloc();
                  v281 = v272;
                  *v90 = v241;
                  v91 = sub_1D2871558();
                  v93 = v92;
                  v280 = 0;
                  v94 = *v279;
                  (*v279)(v89, v87);
                  v95 = v91;
                  v41 = v256;
                  v96 = sub_1D23D7C84(v95, v93, &v281);

                  *(v90 + 4) = v96;
                  *(v90 + 12) = 2080;
                  swift_getErrorValue();
                  v97 = sub_1D2879748();
                  v99 = sub_1D23D7C84(v97, v98, &v281);

                  *(v90 + 14) = v99;
                  _os_log_impl(&dword_1D226E000, v86, v88, "Unable to load character at url: %s with error: %s", v90, 0x16u);
                  v100 = v272;
                  swift_arrayDestroy();
                  MEMORY[0x1D38A3520](v100, -1, -1);
                  MEMORY[0x1D38A3520](v90, -1, -1);

                  (*v257)(v277, v263);
                  v94(v41, v87);
                  v76 = v280;
                  v73 = v276;
                  v74 = v277;
                  v75 = v87;
                  v77 = v274;
                  v72 = v275;
                }

                else
                {

                  v116 = *v279;
                  (*v279)(v84, v87);
                  (*v257)(v74, v263);
                  v116(v41, v87);
                  v72 = v275;
                  v73 = v276;
                  v75 = v87;
                  v77 = v274;
                }

                goto LABEL_5;
              }

              v155 = sub_1D28716D8();
              v156 = CGImageSourceCreateWithData(v155, 0);

              v72 = v275;
              v41 = v256;
              if (v156)
              {
                v157 = CGImageSourceCopyPropertiesAtIndex(v156, 0, 0);
                v158 = v227;
                v159 = v280;
                if (v157)
                {
                  v160 = v157;
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v281 = 0;
                    sub_1D2877E88();
                    if (v281)
                    {
                      v272 = v281;
                      sub_1D2625974(v281);
                      v162 = v161;
                      v280 = v159;

                      goto LABEL_75;
                    }
                  }
                }

                v162 = 0;
LABEL_75:
                v75 = v252;
              }

              else
              {
                v162 = 0;
                v158 = v227;
              }

              v180 = v234;
              v181 = v220;
              v182 = &v220[v234[9]];
              *v182 = 0u;
              *(v182 + 1) = 0u;
              *&v181[v180[10]] = v215;
              v269(&v181[v180[11]], 1, 1, v118);
              *v181 = v154;
              v181[8] = 2;
              v183 = v154;
              [v183 imageOrientation];
              *(v181 + 6) = sub_1D2878C88();
              *(v181 + 2) = v162;
              *(v181 + 4) = 0;
              *(v181 + 5) = 0;
              v181[v180[12]] = 0;
              sub_1D2871808();

              sub_1D22D6D60(v261, v262);
              sub_1D22BD238(v278, &qword_1EC6DAE70, &qword_1D2881A90);
              v251(v41, v75);
              sub_1D22BD238(v158, &unk_1EC6DE5A0, &unk_1D287F0E0);
              v224(v181, 0, 1, v180);
              v178 = v181;
              v179 = v158;
              goto LABEL_77;
            }

            goto LABEL_27;
          }

          goto LABEL_26;
        }

        sub_1D22BD1D0(v120, v111, &qword_1EC6DAE70, &qword_1D2881A90);
        if (v109(v120 + v119, 1, v118) == 1)
        {
          sub_1D22BD238(v253, &qword_1EC6DAE70, &qword_1D2881A90);
          (*v245)(v111, v118);
          v75 = v252;
LABEL_26:
          sub_1D22BD238(v120, &qword_1EC6DA7E8, &unk_1D2884460);
          goto LABEL_27;
        }

        v145 = v255;
        (*v232)(v255, v120 + v119, v118);
        sub_1D262686C(&qword_1EC6DA7F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
        v146 = sub_1D2877F98();
        v147 = *v245;
        (*v245)(v145, v118);
        sub_1D22BD238(v253, &qword_1EC6DAE70, &qword_1D2881A90);
        v147(v111, v118);
        sub_1D22BD238(v246, &qword_1EC6DAE70, &qword_1D2881A90);
        v75 = v252;
        if (v146)
        {
          goto LABEL_43;
        }

LABEL_27:
        v122 = v242;
        sub_1D2873A48();
        v269(v122, 0, 1, v118);
        v123 = *(v270 + 48);
        v124 = v240;
        sub_1D22BD1D0(v278, v240, &qword_1EC6DAE70, &qword_1D2881A90);
        sub_1D22BD1D0(v122, v124 + v123, &qword_1EC6DAE70, &qword_1D2881A90);
        v125 = v109(v124, 1, v118);
        v126 = v238;
        if (v125 == 1)
        {
          sub_1D22BD238(v122, &qword_1EC6DAE70, &qword_1D2881A90);
          if (v109(v124 + v123, 1, v118) != 1)
          {

            sub_1D22D6D60(v261, v262);

            goto LABEL_53;
          }

          sub_1D22BD238(v124, &qword_1EC6DAE70, &qword_1D2881A90);
          v73 = v276;
        }

        else
        {
          sub_1D22BD1D0(v124, v238, &qword_1EC6DAE70, &qword_1D2881A90);
          if (v109(v124 + v123, 1, v118) == 1)
          {

            sub_1D22D6D60(v261, v262);

            sub_1D22BD238(v242, &qword_1EC6DAE70, &qword_1D2881A90);
            (*v245)(v126, v118);
LABEL_53:
            v73 = v276;
            v74 = v277;
            v77 = v274;
            v41 = v256;
            sub_1D22BD238(v124, &qword_1EC6DA7E8, &unk_1D2884460);
            v72 = v275;
            v76 = v280;
LABEL_54:
            sub_1D22BD238(v278, &qword_1EC6DAE70, &qword_1D2881A90);
            v251(v41, v75);
            goto LABEL_5;
          }

          v163 = v255;
          (*v232)(v255, v124 + v123, v118);
          sub_1D262686C(&qword_1EC6DA7F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
          v164 = sub_1D2877F98();
          v165 = *v245;
          (*v245)(v163, v118);
          sub_1D22BD238(v242, &qword_1EC6DAE70, &qword_1D2881A90);
          v165(v126, v118);
          sub_1D22BD238(v240, &qword_1EC6DAE70, &qword_1D2881A90);
          v73 = v276;
          if ((v164 & 1) == 0)
          {

            sub_1D22D6D60(v261, v262);

            v77 = v274;
            v72 = v275;
            v41 = v256;
            v76 = v280;
            v74 = v277;
            goto LABEL_54;
          }
        }

        v84 = v268;
        v41 = v256;
        v76 = v280;
        if (v260 == v243[7] && v272 == v243[8])
        {
        }

        else
        {
          v167 = sub_1D2879618();

          if ((v167 & 1) == 0)
          {

            sub_1D22D6D60(v261, v262);
            sub_1D22BD238(v278, &qword_1EC6DAE70, &qword_1D2881A90);
            v251(v41, v75);
            v77 = v274;
            v72 = v275;
            v74 = v277;
            goto LABEL_5;
          }
        }

        sub_1D262686C(&qword_1EC6DF400, type metadata accessor for CharacterRecipe, &unk_1D28AC2B8);
        v168 = v236;
        v169 = v261;
        v170 = v262;
        sub_1D2871088();
        if (v76)
        {
          sub_1D22BD238(v278, &qword_1EC6DAE70, &qword_1D2881A90);
          sub_1D22D6D60(v169, v170);

          v83 = v76;
          v76 = 0;
          goto LABEL_64;
        }

        sub_1D22D6D60(v169, v170);
        sub_1D22BD238(v278, &qword_1EC6DAE70, &qword_1D2881A90);
        v251(v41, v75);
        v172 = v223;
        sub_1D22BD238(v223, &qword_1EC6DF3F8, &unk_1D2898DC0);
        v173 = v228;
        (v210[0])(v228, 0, 1, v168);
        sub_1D22EC9BC(v173, v172, &qword_1EC6DF3F8, &unk_1D2898DC0);
        v77 = v274;
        v72 = v275;
        v74 = v277;
        v76 = 0;
LABEL_5:
        sub_1D2871518();
        if (!v282)
        {
          goto LABEL_78;
        }
      }

      sub_1D22BD238(v266, &qword_1EC6DAE70, &qword_1D2881A90);
      v112 = v109(v108 + v107, 1, v104) == 1;
      v113 = v108;
      v114 = v244;
      if (!v112)
      {
        goto LABEL_20;
      }

      sub_1D22BD238(v113, &qword_1EC6DAE70, &qword_1D2881A90);
      v115 = v253;
LABEL_33:
      if (v260 == v243[9] && v272 == v243[10] || (sub_1D2879618() & 1) != 0)
      {

        v130 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        v131 = v261;
        v132 = v262;
        sub_1D22D6CF8(v261, v262);
        v133 = sub_1D28716D8();
        v134 = v130;
        v135 = v132;
        v136 = [v134 initWithData_];

        sub_1D22D6D60(v131, v135);
        v137 = v267;
        if (!v136)
        {
          sub_1D23EE050();
          v83 = swift_allocError();
          *v166 = 0;
          swift_willThrow();

          sub_1D22D6D60(v131, v135);
          sub_1D22BD238(v278, &qword_1EC6DAE70, &qword_1D2881A90);
          v76 = 0;
          v75 = v252;
          v84 = v268;
          goto LABEL_64;
        }

        v138 = sub_1D28716D8();
        v139 = CGImageSourceCreateWithData(v138, 0);

        v72 = v275;
        if (v139)
        {
          v140 = CGImageSourceCopyPropertiesAtIndex(v139, 0, 0);
          v141 = v280;
          if (v140)
          {
            v142 = v140;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v281 = 0;
              sub_1D2877E88();
              if (v281)
              {
                v272 = v281;
                sub_1D2625974(v281);
                v144 = v143;
                v280 = v141;

                goto LABEL_72;
              }
            }
          }
        }

        v144 = 0;
LABEL_72:
        v174 = v234;
        v175 = v226;
        v176 = &v226[v234[9]];
        *v176 = 0u;
        *(v176 + 1) = 0u;
        *&v175[v174[10]] = v215;
        v269(&v175[v174[11]], 1, 1, v137);
        *v175 = v136;
        v175[8] = 2;
        v177 = v136;
        [v177 imageOrientation];
        *(v175 + 6) = sub_1D2878C88();
        *(v175 + 2) = v144;
        *(v175 + 4) = 0;
        *(v175 + 5) = 0;
        v175[v174[12]] = 0;
        sub_1D2871808();

        sub_1D22D6D60(v261, v262);
        sub_1D22BD238(v278, &qword_1EC6DAE70, &qword_1D2881A90);
        v75 = v252;
        v251(v41, v252);
        sub_1D22BD238(v114, &unk_1EC6DE5A0, &unk_1D287F0E0);
        v224(v175, 0, 1, v174);
        v178 = v175;
        v179 = v114;
LABEL_77:
        sub_1D22EC9BC(v178, v179, &unk_1EC6DE5A0, &unk_1D287F0E0);
        v73 = v276;
        v74 = v277;
        v77 = v274;
        v76 = v280;
        goto LABEL_5;
      }

      goto LABEL_21;
    }

LABEL_78:
    (*(v230 + 8))(v72, v231);

    v184 = v229;
    sub_1D22EC9BC(v244, v229, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v185 = *(v239 + 48);
    v186 = v234;
    if (v185(v184, 1, v234) == 1)
    {
      sub_1D22BD238(v223, &qword_1EC6DF3F8, &unk_1D2898DC0);
      sub_1D22BD238(v227, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD238(v184, &unk_1EC6DE5A0, &unk_1D287F0E0);
      v187 = v235;
LABEL_88:
      v202 = type metadata accessor for CharacterAsset(0);
      return (*(*(v202 - 8) + 56))(v187, 1, 1, v202);
    }

    v193 = v222;
    sub_1D2626804(v184, v222, type metadata accessor for PlaygroundImage);
    v194 = v221;
    sub_1D22EC9BC(v227, v221, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v195 = v185(v194, 1, v186);
    v187 = v235;
    v196 = v223;
    if (v195 == 1)
    {
      sub_1D26267A4(v193, type metadata accessor for PlaygroundImage);
      sub_1D22BD238(v196, &qword_1EC6DF3F8, &unk_1D2898DC0);
      v197 = &unk_1EC6DE5A0;
      v198 = &unk_1D287F0E0;
      v199 = v194;
LABEL_87:
      sub_1D22BD238(v199, v197, v198);
      goto LABEL_88;
    }

    v200 = v217;
    sub_1D2626804(v194, v217, type metadata accessor for PlaygroundImage);
    v201 = v216;
    sub_1D22EC9BC(v196, v216, &qword_1EC6DF3F8, &unk_1D2898DC0);
    if ((*(v233 + 48))(v201, 1, v236) == 1)
    {
      sub_1D26267A4(v200, type metadata accessor for PlaygroundImage);
      sub_1D26267A4(v193, type metadata accessor for PlaygroundImage);
      v197 = &qword_1EC6DF3F8;
      v198 = &unk_1D2898DC0;
      v199 = v201;
      goto LABEL_87;
    }

    v203 = v213;
    sub_1D2626804(v201, v213, type metadata accessor for CharacterRecipe);
    v204 = v212;
    sub_1D2626804(v193, v212, type metadata accessor for PlaygroundImage);
    v205 = v200;
    v206 = v211;
    sub_1D2626804(v205, v211, type metadata accessor for PlaygroundImage);
    v224(v206, 0, 1, v186);
    v207 = v203;
    v208 = v214;
    sub_1D2626804(v207, v214, type metadata accessor for CharacterRecipe);
    sub_1D2626804(v204, v187, type metadata accessor for PlaygroundImage);
    v209 = type metadata accessor for CharacterAsset(0);
    sub_1D22EC9BC(v206, v187 + v209[5], &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D2626804(v208, v187 + v209[6], type metadata accessor for CharacterRecipe);
    *(v187 + v209[7]) = 0;
    return (*(*(v209 - 1) + 56))(v187, 0, 1, v209);
  }

  else
  {
    v188 = type metadata accessor for CharacterAsset(0);
    v189 = *(*(v188 - 8) + 56);
    v190 = v188;
    v191 = v235;

    return v189(v191, 1, 1, v190);
  }
}

uint64_t sub_1D2624C0C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for PlaygroundImage(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1D2873AA8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_1D28716B8();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2624E18, 0, 0);
}

uint64_t sub_1D2624E18()
{
  v1 = v0[18];
  v2 = v0[3];
  sub_1D2871108();
  swift_allocObject();
  sub_1D28710F8();
  v3 = type metadata accessor for CharacterAsset(0);
  sub_1D2622438(v2 + *(v3 + 24), v1);
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  sub_1D2871658();
  v6 = sub_1D2878068();

  v7 = [v5 directoryExistsAtPath_];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [v4 defaultManager];
  v9 = sub_1D28715B8();
  v0[2] = 0;
  v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

  v11 = v0[2];
  if (v10)
  {
    v12 = v11;
LABEL_4:
    if (qword_1ED8A5308 != -1)
    {
      swift_once();
    }

    v13 = v0[17];
    v14 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    v17 = __swift_project_value_buffer(v16, qword_1ED8A5310);
    (*(v15 + 16))(v14, v17, v16);
    sub_1D28715D8();
    sub_1D262ECCC(v13, v14);
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];
    v21 = v0[3];
    sub_1D28715D8();
    sub_1D22BD1D0(v21 + *(v3 + 20), v20, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if ((*(v18 + 48))(v20, 1, v19) == 1)
    {
      sub_1D22BD238(v0[5], &unk_1EC6DE5A0, &unk_1D287F0E0);
    }

    else
    {
      v24 = v0[16];
      v25 = v0[12];
      sub_1D2626804(v0[5], v0[8], type metadata accessor for PlaygroundImage);
      sub_1D262ECCC(v24, v25);
      sub_1D26267A4(v0[8], type metadata accessor for PlaygroundImage);
    }

    v26 = v0[10];
    v27 = v0[11];
    v28 = v0[9];
    sub_1D2873A48();
    sub_1D28715D8();
    v42 = *(v26 + 8);
    v42(v27, v28);
    type metadata accessor for CharacterRecipe(0);
    sub_1D262686C(&qword_1EC6DF410, type metadata accessor for CharacterRecipe, &unk_1D28AC2E0);
    v29 = sub_1D28710E8();
    v31 = v30;
    sub_1D28716F8();
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[15];
    v35 = v0[16];
    v36 = v0[13];
    v37 = v0[14];
    v41 = v0[12];
    v40 = v0[9];

    sub_1D22D6D60(v29, v31);
    v38 = *(v37 + 8);
    v38(v34, v36);
    v38(v35, v36);
    v38(v33, v36);
    v42(v41, v40);
    v38(v32, v36);

    v39 = v0[1];

    return v39();
  }

  v22 = v11;
  sub_1D28714B8();

  swift_willThrow();

  return swift_unexpectedError();
}

void sub_1D26255D0(uint64_t a1@<X8>)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D28716B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  os_unfair_lock_lock((v7 + 20));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 20));
  if (v8 == 1 && (v9 = [objc_opt_self() defaultManager], v10 = sub_1D2878068(), v11 = objc_msgSend(v9, sel_containerURLForSecurityApplicationGroupIdentifier_, v10), v9, v10, v11))
  {
    sub_1D2871638();

    (*(v4 + 32))(a1, v6, v3);
  }

  else
  {
    v12 = [objc_opt_self() defaultManager];
    v18[0] = 0;
    v13 = [v12 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v18];

    v14 = v18[0];
    if (v13)
    {
      sub_1D2871638();
      v15 = v14;
    }

    else
    {
      v16 = v18[0];
      sub_1D28714B8();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }
  }
}

void *CharacterStorageManager.deinit()
{

  return v0;
}

uint64_t CharacterStorageManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D2625920(uint64_t *a2@<X8>)
{
  swift_allocObject();
  v3 = sub_1D26265FC();

  *a2 = v3;
}

void sub_1D2625974(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    sub_1D2870F78();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1D2625CF0(v7, v4, v2);
      MEMORY[0x1D38A3520](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1D2625AD4(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1D2625AD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v24 = 0;
  v3 = 0;
  v29 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v29 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1D23C3EE4(*(v29 + 56) + 32 * v12, v28);
    v26[0] = v14;
    v26[1] = v15;
    sub_1D23C3EE4(v28, &v27);
    v16 = qword_1EC6D8D50;
    v17 = swift_bridgeObjectRetain_n();
    if (v16 != -1)
    {
      v17 = swift_once();
    }

    v25[0] = v14;
    v25[1] = v15;
    MEMORY[0x1EEE9AC00](v17);
    v21[2] = v25;
    v19 = sub_1D286430C(sub_1D234ABBC, v21, v18);
    sub_1D22BD238(v26, &qword_1EC6DF408, &unk_1D2898DD0);
    __swift_destroy_boxed_opaque_existential_0(v28);

    if (v19)
    {
      *(v23 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v24++, 1))
      {
        goto LABEL_19;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      sub_1D26263AC(v23, v22, v24, v29);
      return;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void *sub_1D2625CF0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1D2625AD4(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1D2625D68(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_1D2871818();
  v7 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {
    sub_1D2870F78();
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAE8, &unk_1D2898DE0);
  result = sub_1D28793F8();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_1D262686C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v42 = v23;
    sub_1D2870F78();
    result = sub_1D2877EF8();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D2626108(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    sub_1D2870F78();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB48, &qword_1D28947C0);
  result = sub_1D28793F8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v28 = v4;
  v29 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    sub_1D28797D8();
    sub_1D2871818();
    sub_1D262686C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D2870F78();
    v31 = v18;
    sub_1D2877F08();
    result = sub_1D2879828();
    v9 = v29;
    v19 = -1 << *(v29 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v29 + 48) + 8 * v22) = v17;
    *(*(v29 + 56) + 8 * v22) = v31;
    ++*(v29 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D26263AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    sub_1D2870F78();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB10, &unk_1D2897220);
  result = sub_1D28793F8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1D23C3EE4(v17 + 32 * v16, v33);
    sub_1D23C3FAC(v33, v32);
    sub_1D28797D8();
    sub_1D2870F68();
    sub_1D2877F38();
    result = sub_1D2879828();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1D23C3FAC(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D26265FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF418, &qword_1D2898DF8);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 1;
  *(v0 + 16) = v1;
  strcpy((v0 + 24), "GenericPeople");
  *(v0 + 38) = -4864;
  *(v0 + 40) = 0xD000000000000021;
  *(v0 + 48) = 0x80000001D28B2BE0;
  *(v0 + 56) = 0x657069636572;
  *(v0 + 64) = 0xE600000000000000;
  *(v0 + 72) = 0x6D692D696A6F6D65;
  *(v0 + 80) = 0xEB00000000656761;
  *(v0 + 88) = 0xD000000000000010;
  *(v0 + 96) = 0x80000001D28BE700;
  return v0;
}

uint64_t sub_1D2626740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26267A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2626804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D262686C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D26268E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_1D2876088();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28756B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF420, &qword_1D2898E88);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = sub_1D2877848();
  v14 = v13;
  sub_1D2626C70(a1, &v39);
  v35 = v41;
  v36 = v42;
  v33 = v39;
  v34 = v40;
  v38[2] = v41;
  v38[3] = v42;
  v38[4] = v43;
  v38[1] = v40;
  v37 = v43;
  v38[0] = v39;
  sub_1D2627034(&v33, &v27);
  sub_1D22BD238(v38, &qword_1EC6DF428, &qword_1D2898E90);
  v30 = v35;
  v31 = v36;
  v32 = v37;
  v28 = v33;
  v29 = v34;
  *&v27 = v12;
  *(&v27 + 1) = v14;
  (*(v5 + 104))(v7, *MEMORY[0x1E697F3A0], v4);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF430, &qword_1D2898E98);
  v16 = sub_1D26270A4();
  sub_1D28768A8();
  (*(v5 + 8))(v7, v4);
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v39 = v27;
  v40 = v28;
  sub_1D22BD238(&v39, &qword_1EC6DF430, &qword_1D2898E98);
  v17 = v23;
  sub_1D2876058();
  *&v27 = v15;
  *(&v27 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  v18 = v25;
  v19 = v21;
  sub_1D2876BE8();
  (*(v24 + 8))(v17, v26);
  (*(v22 + 8))(v11, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF440, &qword_1D2898EA0);
  *(v18 + *(result + 36)) = 1;
  return result;
}

void sub_1D2626C70(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D28771B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28739B8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel___observationRegistrar;
  v28 = a1;
  v10 = sub_1D2627108();
  v27 = v9;
  v23 = v10;
  sub_1D28719E8();

  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex;
  sub_1D26286A8(*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex));
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v24 = qword_1ED8B0058;
  sub_1D2873988();
  sub_1D2877238();
  v22 = *MEMORY[0x1E6981630];
  v21 = *(v5 + 104);
  v21(v7);
  v26 = sub_1D2877228();

  v11 = *(v5 + 8);
  v19 = v4;
  v20 = v11;
  v11(v7, v4);
  swift_getKeyPath();
  v28 = a1;
  sub_1D28719E8();

  v25 = *(a1 + v25);
  swift_getKeyPath();
  v28 = a1;
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex;
  sub_1D26286A8(*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex));
  sub_1D2873988();
  sub_1D2877238();
  v13 = v19;
  (v21)(v7, v22, v19);
  v14 = sub_1D2877228();

  v20(v7, v13);
  v15 = sub_1D2877958();
  swift_getKeyPath();
  v28 = a1;
  sub_1D28719E8();

  v16 = *(a1 + v12);
  *a2 = v26;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  v17 = v25;
  *(a2 + 24) = 0;
  *(a2 + 32) = v17;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 57) = 1;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
}

uint64_t sub_1D2627034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF428, &qword_1D2898E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D26270A4()
{
  result = qword_1EC6DF438;
  if (!qword_1EC6DF438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF430, &qword_1D2898E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF438);
  }

  return result;
}

unint64_t sub_1D2627108()
{
  result = qword_1EC6D83A8;
  if (!qword_1EC6D83A8)
  {
    type metadata accessor for AppearanceCellViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D83A8);
  }

  return result;
}

unint64_t sub_1D2627160()
{
  result = qword_1EC6DF448;
  if (!qword_1EC6DF448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF440, &qword_1D2898EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF420, &qword_1D2898E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF430, &qword_1D2898E98);
    sub_1D26270A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D250C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF448);
  }

  return result;
}

uint64_t PersonAttributeOption.id.getter()
{
  v1 = *v0;
  sub_1D2870F68();
  return v1;
}

void sub_1D26272B0(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = sub_1D28795C8();
  v7 = v5;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v3, v4);

  *a1 = v6;
  a1[1] = v7;
}

double sub_1D2627340()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4B8, &qword_1D2899358);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D2886B90;
  if (qword_1EC6D8D48 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = qword_1EC6E3F30;
  v2 = qword_1EC6E3F38;
  v3 = qword_1EC6E3F40;
  *(v0 + 32) = qword_1EC6E3F28;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0x7265696C727543;
  *(v0 + 72) = 0xE700000000000000;
  *(v0 + 80) = 0x7275632068746977;
  *(v0 + 88) = 0xEF7269616820796CLL;
  *(v0 + 96) = 0x726569766157;
  *(v0 + 104) = 0xE600000000000000;
  strcpy((v0 + 112), "with wavy hair");
  *(v0 + 127) = -18;
  *(v0 + 128) = 1684824386;
  *(v0 + 136) = 0xE400000000000000;
  *(v0 + 144) = 0xD00000000000001DLL;
  *(v0 + 152) = 0x80000001D28BE740;
  *(v0 + 160) = 0x7468676961727453;
  *(v0 + 168) = 0xEA00000000007265;
  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = 0x80000001D28BE760;
  *(v0 + 192) = 0x726574726F6853;
  *(v0 + 200) = 0xE700000000000000;
  *(v0 + 208) = 0x6F68732068746977;
  *(v0 + 216) = 0xEF72696168207472;
  *(v0 + 224) = 0x7265676E6F4CLL;
  *(v0 + 232) = 0xE600000000000000;
  strcpy((v0 + 240), "with long hair");
  *(v0 + 255) = -18;
  *(v0 + 256) = 1869768257;
  *(v0 + 264) = 0xE400000000000000;
  strcpy((v0 + 272), "with an afro");
  *(v0 + 285) = 0;
  *(v0 + 286) = -5120;
  *(v0 + 288) = 0x736469617242;
  *(v0 + 296) = 0xE600000000000000;
  *(v0 + 304) = 0xD000000000000011;
  *(v0 + 312) = 0x80000001D28BE780;
  *(v0 + 320) = 0x636F6C6461657244;
  *(v0 + 328) = 0xEA0000000000736BLL;
  *(v0 + 336) = 0x6572642068746977;
  *(v0 + 344) = 0xEF736B636F6C6461;
  off_1EC6DF450 = v0;
  sub_1D2870F68();

  sub_1D2870F68();
  return result;
}

double sub_1D26275B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4B8, &qword_1D2899358);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D28800F0;
  if (qword_1EC6D8D48 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = qword_1EC6E3F30;
  v2 = qword_1EC6E3F38;
  v3 = qword_1EC6E3F40;
  *(v0 + 32) = qword_1EC6E3F28;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0x616542206C6C7546;
  *(v0 + 72) = 0xEA00000000006472;
  *(v0 + 80) = 0xD000000000000011;
  *(v0 + 88) = 0x80000001D28BE7A0;
  *(v0 + 96) = 0x656574616F47;
  *(v0 + 104) = 0xE600000000000000;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001D28BE7C0;
  *(v0 + 128) = 0x656863617473754DLL;
  *(v0 + 136) = 0xE800000000000000;
  *(v0 + 144) = 0xD000000000000014;
  *(v0 + 152) = 0x80000001D28BE7E0;
  qword_1EC6DF458 = v0;
  sub_1D2870F68();

  sub_1D2870F68();
  return result;
}

double sub_1D262770C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4B8, &qword_1D2899358);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D28838F0;
  if (qword_1EC6D8D48 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = qword_1EC6E3F30;
  v2 = qword_1EC6E3F38;
  v3 = qword_1EC6E3F40;
  *(v0 + 32) = qword_1EC6E3F28;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0x7373616C676E7553;
  *(v0 + 72) = 0xEA00000000007365;
  *(v0 + 80) = 0x6E75732068746977;
  *(v0 + 88) = 0xEF73657373616C67;
  *(v0 + 96) = 0x73657373616C47;
  *(v0 + 104) = 0xE700000000000000;
  *(v0 + 112) = 0xD000000000000019;
  *(v0 + 120) = 0x80000001D28BE800;
  qword_1EC6DF460 = v0;
  sub_1D2870F68();

  sub_1D2870F68();
  return result;
}

ImagePlaygroundInternal::PersonAttribute_optional __swiftcall PersonAttribute.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PersonAttributeOption.isDefaultOption.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = qword_1EC6D8D48;
  sub_1D2870F68();
  if (v3 != -1)
  {
    swift_once();
  }

  if (v2 == qword_1EC6E3F28 && v1 == qword_1EC6E3F30)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D2879618();
  }

  return v5 & 1;
}

void sub_1D26279BC()
{
  qword_1EC6E3F28 = 0x676E616843206F4ELL;
  qword_1EC6E3F30 = 0xE900000000000065;
  qword_1EC6E3F38 = 0;
  qword_1EC6E3F40 = 0xE000000000000000;
}

uint64_t static PersonAttributeOption.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D2879618(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D2879618();
    }
  }

  return result;
}

uint64_t sub_1D2627A90()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x656C746974;
  }
}

void sub_1D2627ACC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D2879618() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D28BE720 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D2879618();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D2627BAC(uint64_t a1)
{
  v2 = sub_1D2627DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2627BE8(uint64_t a1)
{
  v2 = sub_1D2627DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonAttributeOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF468, &qword_1D2898F00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2627DB8();
  sub_1D2879888();
  v12 = 0;
  v8 = v10[3];
  sub_1D2879578();
  if (!v8)
  {
    v11 = 1;
    sub_1D2879578();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D2627DB8()
{
  result = qword_1EC6DF470;
  if (!qword_1EC6DF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF470);
  }

  return result;
}

uint64_t PersonAttributeOption.hash(into:)(uint64_t a1)
{
  sub_1D2877F38();

  return sub_1D2877F38();
}

uint64_t PersonAttributeOption.hashValue.getter()
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2877F38();
  return sub_1D2879828();
}

void PersonAttributeOption.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF478, &qword_1D2898F08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2627DB8();
  sub_1D2879868();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v18 = 0;
    v9 = sub_1D28794E8();
    v11 = v10;
    v16 = v9;
    v17 = 1;
    v12 = sub_1D28794E8();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;
    sub_1D2870F68();
    sub_1D2870F68();
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_1D26280C4()
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D262812C(uint64_t a1)
{
  sub_1D2877F38();

  return sub_1D2877F38();
}

uint64_t sub_1D262817C()
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2877F38();
  return sub_1D2879828();
}

unint64_t sub_1D26281E4()
{
  result = qword_1EC6DF480;
  if (!qword_1EC6DF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF480);
  }

  return result;
}

unint64_t sub_1D262823C()
{
  result = qword_1EC6DF488;
  if (!qword_1EC6DF488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF490, &qword_1D2898FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF488);
  }

  return result;
}

unint64_t sub_1D26282A4()
{
  result = qword_1EC6DF498;
  if (!qword_1EC6DF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF498);
  }

  return result;
}

uint64_t sub_1D2628328(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D2879618(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D2879618();
    }
  }

  return result;
}

unint64_t sub_1D2628410()
{
  result = qword_1EC6DF4A0;
  if (!qword_1EC6DF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4A0);
  }

  return result;
}

unint64_t sub_1D2628468()
{
  result = qword_1EC6DF4A8;
  if (!qword_1EC6DF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4A8);
  }

  return result;
}

unint64_t sub_1D26284C0()
{
  result = qword_1EC6DF4B0;
  if (!qword_1EC6DF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4B0);
  }

  return result;
}

uint64_t sub_1D2628514(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v12 = sub_1D28795C8();
  v14 = v6;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v2, v3);

  v8 = v12;
  v7 = v14;
  *&v13 = sub_1D28795C8();
  *(&v13 + 1) = v9;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v4, v5);

  if (__PAIR128__(v7, v8) == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D2879618();
  }

  return v10 & 1;
}

unint64_t sub_1D262863C()
{
  result = qword_1EC6DF4C0;
  if (!qword_1EC6DF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4C0);
  }

  return result;
}

uint64_t sub_1D26286A8(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_1D28737A8();
  v44 = *(v3 - 8);
  *&v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) == 3)
  {
    goto LABEL_2;
  }

  v15 = sub_1D2873768();
  v17 = v16;
  if (v15 == sub_1D2873768() && v17 == v18)
  {

LABEL_7:
    v13 = 0xE700000000000000;
    v14 = 0x5F656C616D6546;
    goto LABEL_8;
  }

  v19 = sub_1D2879618();

  if (v19)
  {
    goto LABEL_7;
  }

  v25 = sub_1D2873768();
  v27 = v26;
  if (v25 == sub_1D2873768() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_1D2879618();

    if ((v29 & 1) == 0)
    {
LABEL_2:
      v13 = 0xEC0000005F73756FLL;
      v14 = 0x6E79676F72646E41;
      goto LABEL_8;
    }
  }

  v13 = 0xE500000000000000;
  v14 = 0x5F656C614DLL;
LABEL_8:
  swift_getKeyPath();
  v49 = v2;
  sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel, &unk_1D28993A0);
  sub_1D28719E8();

  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
  swift_beginAccess();
  sub_1D24912B8(v2 + v20, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D22BD238(v8, &unk_1EC6E33C0, &unk_1D2883750);
    v21 = sub_1D23B8344() + 1;
    goto LABEL_25;
  }

  sub_1D249183C(v8, v12);
  v23 = v44;
  v22 = v45;
  (*(v44 + 32))(v5, v12, v45);
  v24 = (*(v23 + 88))(v5, v22);
  if (v24 == *MEMORY[0x1E69E01A0])
  {
    v21 = 1;
    goto LABEL_25;
  }

  if (v24 == *MEMORY[0x1E69E0188])
  {
    v21 = 2;
    goto LABEL_25;
  }

  if (v24 == *MEMORY[0x1E69E0178])
  {
    goto LABEL_18;
  }

  if (v24 == *MEMORY[0x1E69E0190])
  {
    v21 = 4;
  }

  else
  {
    if (v24 != *MEMORY[0x1E69E0180])
    {
      (*(v23 + 8))(v5, v22);
LABEL_18:
      v21 = 3;
      goto LABEL_25;
    }

    v21 = 5;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A50, &qword_1D2888F20);
  v30 = swift_allocObject();
  v45 = xmmword_1D287F500;
  v31 = MEMORY[0x1E69E6530];
  *(v30 + 16) = xmmword_1D287F500;
  v32 = MEMORY[0x1E69E65A8];
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  *(v30 + 32) = v21;
  v33 = sub_1D28780B8();
  v35 = v34;
  v47 = v14;
  v48 = v13;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v33, v35);

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](95, 0xE100000000000000);

  v36 = v47;
  v37 = v48;
  result = swift_allocObject();
  *(result + 16) = v45;
  v39 = v46 + 1;
  if (__OFADD__(v46, 1))
  {
    __break(1u);
  }

  else
  {
    *(result + 56) = v31;
    *(result + 64) = v32;
    *(result + 32) = v39;
    v40 = sub_1D28780B8();
    v42 = v41;
    v47 = v36;
    v48 = v37;
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v40, v42);

    return v47;
  }

  return result;
}

uint64_t sub_1D2628C80(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel, &unk_1D28993A0);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D2628D20@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel, &unk_1D28993A0);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
  swift_beginAccess();
  return sub_1D24912B8(v5 + v3, a1);
}

uint64_t sub_1D2628DE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
  swift_beginAccess();
  sub_1D24912B8(v1 + v6, v5);
  v7 = sub_1D26296F0(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6E33C0, &unk_1D2883750);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel, &unk_1D28993A0);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D262963C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &unk_1EC6E33C0, &unk_1D2883750);
}

uint64_t sub_1D2628FCC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
  swift_beginAccess();
  sub_1D262963C(a2, a1 + v4);
  return swift_endAccess();
}

double sub_1D2629038(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel, &unk_1D28993A0);
    sub_1D28719D8();
  }

  return result;
}

double sub_1D2629144(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex) == a1)
  {
    result = sub_1D26294E0();
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel, &unk_1D28993A0);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D26292B0()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone, &unk_1EC6E33C0, &unk_1D2883750);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppearanceCellViewModel(uint64_t a1)
{
  result = qword_1EC6D8398;
  if (!qword_1EC6D8398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26293C0(uint64_t a1)
{
  sub_1D2491788(319);
  if (v1 <= 0x3F)
  {
    sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D26294B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2879188();
  *a1 = result;
  return result;
}

double sub_1D26294E0()
{
  swift_getKeyPath();
  sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel, &unk_1D28993A0);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex) != *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D262963C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1D26296AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D26294E0();
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex) = v2;
}

uint64_t sub_1D26296F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108, &qword_1D2898A00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v19 - v12;
  v15 = *(v14 + 56);
  sub_1D24912B8(a1, v19 - v12);
  sub_1D24912B8(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D22BD238(v13, &unk_1EC6E33C0, &unk_1D2883750);
      v17 = 0;
      return v17 & 1;
    }

LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6DC108, &qword_1D2898A00);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D24912B8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D24917E0(v10);
    goto LABEL_6;
  }

  sub_1D249183C(&v13[v15], v7);
  sub_1D28737A8();
  sub_1D2629A1C(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01D8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v19[2] == v19[0] && v19[3] == v19[1])
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1D2879618() ^ 1;
  }

  sub_1D24917E0(v7);

  sub_1D24917E0(v10);
  sub_1D22BD238(v13, &unk_1EC6E33C0, &unk_1D2883750);
  return v17 & 1;
}

uint64_t sub_1D2629A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2629A7C()
{
  swift_getKeyPath();
  sub_1D2629EB8();
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2629B14()
{
  swift_getKeyPath();
  sub_1D2629EB8();
  sub_1D28719E8();

  return sub_1D2870F78();
}

void sub_1D2629B88(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  sub_1D2870F78();
}

uint64_t sub_1D2629BC4()
{
  swift_getKeyPath();
  sub_1D2629EB8();
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong() && (v1 = *(v0 + 24), v2 = swift_getObjectType(), LOBYTE(v1) = (*(v1 + 8))(v2, v1), swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    v3 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v3 = (*(v4 + 16))(ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1D2629CFC()
{
  sub_1D22729C0(v0 + 16);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FeedbackSectionViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeedbackSectionViewModel(uint64_t a1)
{
  result = qword_1ED8A0018;
  if (!qword_1ED8A0018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2629E04(uint64_t a1)
{
  result = sub_1D2871A28();
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

unint64_t sub_1D2629EB8()
{
  result = qword_1ED8A0028;
  if (!qword_1ED8A0028)
  {
    type metadata accessor for FeedbackSectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0028);
  }

  return result;
}

uint64_t sub_1D2629F60(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v23 = a1;
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1D2871818();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 80);
  v15 = *(v6 + 88);
  v17 = type metadata accessor for PhotoAssetCacheKey(0, v14, v15, v16);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v23 - v19;
  LOBYTE(a3) = *a3;
  (*(v11 + 16))(v13, a2, v10, v18);
  v24 = a3;
  sub_1D262A168(v13, &v24, v14, v15, v20);
  v21 = v23;
  sub_1D247E07C(v23, v9);
  sub_1D27EF1BC(v9, v20);
  (*(v11 + 8))(a2, v10);
  return sub_1D25042E8(v21);
}

uint64_t sub_1D262A168@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1D2871818();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for PhotoAssetCacheKey(0, a3, a4, v11);
  *(a5 + *(result + 36)) = v9;
  return result;
}

BOOL sub_1D262A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
  {
    v9 = *(type metadata accessor for PhotoAssetCacheKey(0, a3, a4, v8) + 36);
    v13 = *(a1 + v9);
    v12 = *(a2 + v9);
    return static _PhotoAsset.ImageType.== infix(_:_:)(&v13, &v12);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D262A284(uint64_t a1, uint64_t a2)
{
  sub_1D2871818();
  sub_1D24FEF24();
  sub_1D2877F08();
  type metadata accessor for _PhotoAsset.ImageType(0, *(a2 + 16), *(a2 + 24), v3);
  return _PhotoAsset.ImageType.hash(into:)();
}

uint64_t sub_1D262A300(uint64_t a1)
{
  sub_1D28797D8();
  sub_1D262A284(v3, a1);
  return sub_1D2879828();
}

uint64_t sub_1D262A350(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  sub_1D262A284(v4, a2);
  return sub_1D2879828();
}

uint64_t sub_1D262A3A0()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D2878B88();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D262A404()
{
  sub_1D262A3A0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D262A450(uint64_t a1)
{
  result = sub_1D2871818();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for _PhotoAsset.ImageType(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D262A534@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v21 = a3;
  v5 = *v3;
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 80);
  v11 = *(v5 + 88);
  v13 = type metadata accessor for PhotoAssetCacheKey(0, v10, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  LOBYTE(a2) = *a2;
  (*(v7 + 16))(v9, v20, v6, v15);
  v22 = a2;
  sub_1D262A168(v9, &v22, v10, v11, v17);
  sub_1D27EF008(v21);
  return (*(v14 + 8))(v17, v13);
}

size_t sub_1D262A704@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1D262B684();
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  v5 = sub_1D262B684();
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  Width = CGImageGetWidth(v4);
  if (CGImageGetWidth(v6) >= Width)
  {
    Height = CGImageGetHeight(v4);
    if (CGImageGetHeight(v6) >= Height)
    {
      v21 = v4;
      goto LABEL_17;
    }
  }

  v9 = CGImageGetWidth(v4);
  result = CGImageGetWidth(v6);
  v11 = v9 - result;
  if (__OFSUB__(v9, result))
  {
    __break(1u);
    goto LABEL_25;
  }

  v12 = CGImageGetHeight(v4);
  result = CGImageGetHeight(v6);
  if (__OFSUB__(v12, result))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v13 = (v11 & ~(v11 >> 63)) >> 1;
  v14 = ((v12 - result) & ~((v12 - result) >> 63)) >> 1;
  v15 = CGImageGetWidth(v4);
  v16 = CGImageGetWidth(v6);
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = CGImageGetHeight(v4);
  v19 = CGImageGetHeight(v6);
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v34.origin.x = v13;
  v34.origin.y = v14;
  v34.size.width = v17;
  v34.size.height = v20;
  v21 = CGImageCreateWithImageInRect(v4, v34);
  if (!v21)
  {

LABEL_15:
LABEL_20:
    v32 = type metadata accessor for PlaygroundImage(0);
    v28 = *(*(v32 - 8) + 56);
    v31 = v32;
    v29 = a2;
    v30 = 1;
    goto LABEL_21;
  }

LABEL_17:
  v22 = v21;
  v23 = sub_1D28788E8();

  if (!v23)
  {

    goto LABEL_20;
  }

  v24 = type metadata accessor for PlaygroundImage(0);
  v25 = (a2 + v24[9]);
  *v25 = 0u;
  v25[1] = 0u;
  *(a2 + v24[10]) = xmmword_1D28809A0;
  v26 = v24[11];
  v27 = sub_1D2873AA8();
  (*(*(v27 - 8) + 56))(a2 + v26, 1, 1, v27);
  *a2 = v23;
  *(a2 + 8) = 0;
  *(a2 + 24) = 1;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + v24[12]) = 0;
  sub_1D2871808();

  v28 = *(*(v24 - 1) + 56);
  v29 = a2;
  v30 = 0;
  v31 = v24;
LABEL_21:

  return v28(v29, v30, 1, v31);
}

uint64_t sub_1D262A994@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D262B684();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D2878928();

    if (v7)
    {
      v8 = *(v3 + 24);
      v9 = type metadata accessor for PlaygroundImage(0);
      v10 = (a2 + v9[9]);
      *v10 = 0u;
      v10[1] = 0u;
      *(a2 + v9[10]) = xmmword_1D28809A0;
      v11 = v9[11];
      v12 = sub_1D2873AA8();
      (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
      *a2 = v7;
      *(a2 + 8) = 0;
      *(a2 + 24) = v8;
      *(a2 + 16) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + v9[12]) = 0;
      sub_1D2871808();
      v13 = *(*(v9 - 1) + 56);
      v14 = a2;
      v15 = 0;
      v16 = v9;
      goto LABEL_20;
    }
  }

  v17 = *v3;
  if (*(v3 + 8) > 1u)
  {
    if (*(v3 + 8) == 2)
    {
      v19 = v17;
      v20 = [v19 CIImage];
      if (v20)
      {
        v21 = v20;

LABEL_14:
        v22 = [objc_opt_self() whiteImage];
        [v21 extent];
        v23 = [v22 imageByCroppingToRect_];

        v24 = [v21 imageByCompositingOverImage_];
        v25 = type metadata accessor for PlaygroundImage(0);
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        v26 = (a2 + v25[9]);
        *v26 = 0u;
        v26[1] = 0u;
        *(a2 + v25[10]) = xmmword_1D28809A0;
        v27 = v25[11];
        v28 = sub_1D2873AA8();
        (*(*(v28 - 8) + 56))(a2 + v27, 1, 1, v28);
        *a2 = v24;
        *(a2 + 8) = 1;
        *(a2 + 24) = 1;
        *(a2 + 16) = 0;
        *(a2 + v25[12]) = 0;
        sub_1D2871808();

        v13 = *(*(v25 - 1) + 56);
        v14 = a2;
        v15 = 0;
        v16 = v25;
        goto LABEL_20;
      }

      v29 = [v19 CGImage];
      if (v29)
      {
        v30 = v29;
        v21 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];

        if (v21)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      goto LABEL_19;
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVImageBuffer_];
  }

  else
  {
    if (*(v3 + 8))
    {
      v18 = v17;
LABEL_13:
      v21 = v18;
      goto LABEL_14;
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  }

  if (v18)
  {
    goto LABEL_13;
  }

LABEL_19:
  v31 = type metadata accessor for PlaygroundImage(0);
  v13 = *(*(v31 - 8) + 56);
  v16 = v31;
  v14 = a2;
  v15 = 1;
LABEL_20:

  return v13(v14, v15, 1, v16);
}

id sub_1D262AD28()
{
  if (*(v0 + 24) == 1 && *(v0 + 8) == 3)
  {
    v1 = *v0;
    v2 = *v0;
    return v1;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    v5 = sub_1D262B684();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1D2878908();

      return v7;
    }

    else
    {

      return 0;
    }
  }
}

uint64_t sub_1D262ADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 160) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  *(v5 + 48) = swift_task_alloc();
  v6 = sub_1D2873AA8();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D262AEFC, 0, 0);
}

uint64_t sub_1D262AEFC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for PlaygroundImage(0);
  *(v0 + 80) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v6 = (v4 + v5[9]);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = v5[10];
  *(v0 + 152) = v7;
  *(v4 + v7) = xmmword_1D28809A0;
  v8 = v5[11];
  *(v0 + 156) = v8;
  v9 = *(v1 + 56);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v1 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  result = v9(v4 + v8, 1, 1, v2);
  v11 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = *(v0 + 24);
    LODWORD(v13) = HIDWORD(v12) - v12;
    if (!__OFSUB__(HIDWORD(v12), v12))
    {
      v13 = v13;
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_9;
  }

  v12 = *(v0 + 24);
  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (v13 > 200000000)
  {
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    sub_1D25424EC();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v20 = v12;
LABEL_14:
    v31 = v18;
LABEL_16:
    sub_1D22D6D60(v20, v31);
    v35 = sub_1D2871818();
    (*(*(v35 - 8) + 8))(v17, v35);
    v36 = *(v0 + 156);
    v37 = *(v0 + 16);
    sub_1D22D6D4C(*(v37 + *(v0 + 152)), *(v37 + *(v0 + 152) + 8));
    sub_1D22BD238(v37 + v36, &qword_1EC6DAE70, &qword_1D2881A90);

    v38 = *(v0 + 8);

    return v38();
  }

LABEL_9:
  v21 = sub_1D28716D8();
  v22 = CGImageSourceCreateWithData(v21, 0);
  *(v0 + 104) = v22;

  if (!v22)
  {
    v32 = *(v0 + 32);
    v17 = *(v0 + 40);
    v33 = *(v0 + 24);
    sub_1D25424EC();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
    v20 = v33;
    v31 = v32;
    goto LABEL_16;
  }

  v23 = CGImageSourceGetType(v22);
  *(v0 + 112) = v23;
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  v25 = *(v0 + 56);
  v26 = *(v0 + 64);
  v27 = *(v0 + 48);
  sub_1D28780A8();
  sub_1D2873AB8();
  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    v28 = *(v0 + 48);

    sub_1D22BD238(v28, &qword_1EC6DAE70, &qword_1D2881A90);
LABEL_13:
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v29 = *(v0 + 24);
    sub_1D25424EC();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    v20 = v29;
    goto LABEL_14;
  }

  v40 = *(v0 + 64);
  v39 = *(v0 + 72);
  v41 = *(v0 + 48);
  v42 = *(v0 + 56);
  v43 = *(v40 + 32);
  *(v0 + 120) = v43;
  *(v0 + 128) = (v40 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v43(v39, v41, v42);
  v44 = swift_task_alloc();
  *(v0 + 136) = v44;
  *v44 = v0;
  v44[1] = sub_1D262B2C0;

  return sub_1D27767E0(v22);
}

uint64_t sub_1D262B2C0(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D262B3C0, 0, 0);
}

uint64_t sub_1D262B3C0()
{
  v1 = *(v0 + 144);
  if (v1 && (v2 = sub_1D2878928(), v1, v2))
  {
    v28 = *(v0 + 120);
    v3 = *(v0 + 104);
    v30 = *(v0 + 88);
    v5 = *(v0 + 152);
    v4 = *(v0 + 156);
    v6 = *(v0 + 80);
    v27 = *(v0 + 72);
    v7 = *(v0 + 56);
    v29 = *(v0 + 160);
    v8 = *(v0 + 32);
    v31 = *(v0 + 40);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    v11 = (v10 + v5);
    *v10 = v2;
    *(v10 + 8) = 0;
    sub_1D22D6D4C(*(v10 + v5), *(v10 + v5 + 8));
    *v11 = v9;
    v11[1] = v8;
    sub_1D22BD238(v10 + v4, &qword_1EC6DAE70, &qword_1D2881A90);
    v28(v10 + v4, v27, v7);
    v30(v10 + v4, 0, 1, v7);
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    *(v10 + *(v6 + 48)) = v29;
    v12 = *(v6 + 32);
    v13 = sub_1D2871818();
    (*(*(v13 - 8) + 32))(v10 + v12, v31, v13);

    v14 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 104);
    v16 = *(v0 + 112);
    v17 = *(v0 + 64);
    v32 = *(v0 + 72);
    v18 = *(v0 + 56);
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v21 = *(v0 + 24);
    sub_1D25424EC();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    sub_1D22D6D60(v21, v20);
    v23 = sub_1D2871818();
    (*(*(v23 - 8) + 8))(v19, v23);
    (*(v17 + 8))(v32, v18);
    v24 = *(v0 + 156);
    v25 = *(v0 + 16);
    sub_1D22D6D4C(*(v25 + *(v0 + 152)), *(v25 + *(v0 + 152) + 8));
    sub_1D22BD238(v25 + v24, &qword_1EC6DAE70, &qword_1D2881A90);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t PlaygroundImage.imageView()(uint64_t a1)
{
  sub_1D262D4E8();

  return sub_1D2877188();
}

CGImageRef sub_1D262B684()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  if (*(v0 + 8) <= 1u)
  {
    if (!*(v0 + 8))
    {
      v2 = v1;
      return v1;
    }

    v5 = objc_allocWithZone(MEMORY[0x1E695F620]);
    v6 = v1;
    v3 = [v5 init];
    [(CGImage *)v6 extent];
    v7 = [(CGImage *)v3 createCGImage:v6 fromRect:?];
    goto LABEL_11;
  }

  if (*(v0 + 8) == 2)
  {
    v3 = v1;
    v4 = [(CGImage *)v3 CGImage];
    if (v4)
    {
      v1 = v4;
LABEL_12:

      return v1;
    }

    v6 = [(CGImage *)v3 CIImage];
    v7 = [(CGImage *)v6 CGImage];
LABEL_11:
    v1 = v7;

    goto LABEL_12;
  }

  v12[0] = 0;
  v8 = v1;
  v9 = VTCreateCGImageFromCVPixelBuffer(v8, 0, v12);
  v10 = sub_1D2874198();

  v1 = v12[0];
  if (v9 != v10)
  {

    return 0;
  }

  return v1;
}

void PlaygroundImage.init(nativeImage:imageProperties:imageDescription:hasAlpha:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for PlaygroundImage(0);
  v13 = (a6 + v12[9]);
  *v13 = 0u;
  v13[1] = 0u;
  *(a6 + v12[10]) = xmmword_1D28809A0;
  v14 = v12[11];
  v15 = sub_1D2873AA8();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  *a6 = a1;
  *(a6 + 8) = 2;
  v16 = a1;
  [v16 imageOrientation];
  *(a6 + 24) = sub_1D2878C88();
  *(a6 + 16) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + v12[12]) = a5;
  sub_1D2871808();
}

uint64_t PlaygroundImage.init(data:imageProperties:hasAlpha:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D22D6CF8(a1, a2);
  v11 = sub_1D28716D8();
  v12 = [v10 initWithData_];

  sub_1D22D6D60(a1, a2);
  if (v12)
  {
    if (!a3)
    {
      a3 = sub_1D2630BC0(a1, a2);
    }

    v13 = type metadata accessor for PlaygroundImage(0);
    v14 = (a5 + v13[9]);
    *v14 = 0u;
    v14[1] = 0u;
    *(a5 + v13[10]) = xmmword_1D28809A0;
    v15 = v13[11];
    v16 = sub_1D2873AA8();
    (*(*(v16 - 8) + 56))(a5 + v15, 1, 1, v16);
    *a5 = v12;
    *(a5 + 8) = 2;
    v17 = v12;
    [v17 imageOrientation];
    *(a5 + 24) = sub_1D2878C88();
    *(a5 + 16) = a3;
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + v13[12]) = a4 & 1;
    sub_1D2871808();
  }

  else
  {

    sub_1D23EE050();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }

  return sub_1D22D6D60(a1, a2);
}

uint64_t PlaygroundImage.imageDataWithBackgroundEncoding(_:isolatedOn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = type metadata accessor for PlaygroundImage(0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_1D2873CB8();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_1D28784F8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[14] = v7;
  v4[15] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D262BC18, v7, v9);
}

uint64_t sub_1D262BC18()
{
  v34 = v0;
  v1 = sub_1D262D940(v0[4]);
  if (v2 >> 60 == 15)
  {
    v3 = sub_1D262B684();
    v0[16] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v0[7];
      v6 = v0[4];
      v7 = swift_task_alloc();
      v0[17] = v7;
      v7[2] = v5;
      v7[3] = v4;
      v7[4] = v6;
      v8 = swift_task_alloc();
      v0[18] = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE740, &unk_1D2899B90);
      *v8 = v0;
      v8[1] = sub_1D262BF28;
      v10 = v0[5];
      v11 = v0[6];

      return MEMORY[0x1EEE6DDE0](v0 + 2, v10, v11, 0xD00000000000002ELL, 0x80000001D28BE930, sub_1D2630CA0, v7, v9);
    }

    v14 = v0[10];
    v15 = v0[7];
    sub_1D28724A8();
    sub_1D239A330(v15, v14);
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A18();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[12];
    v20 = v0[13];
    v22 = v0[10];
    v21 = v0[11];
    if (v18)
    {
      v23 = v0[9];
      v32 = v0[13];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      sub_1D239A330(v22, v23);
      v26 = sub_1D2878118();
      v28 = v27;
      sub_1D23D4DFC(v22);
      v29 = sub_1D23D7C84(v26, v28, &v33);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1D226E000, v16, v17, "Could not get CGImage from PlaygroundImage %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1D38A3520](v25, -1, -1);
      MEMORY[0x1D38A3520](v24, -1, -1);

      (*(v19 + 8))(v32, v21);
    }

    else
    {

      sub_1D23D4DFC(v22);
      (*(v19 + 8))(v20, v21);
    }

    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v12 = v1;
    v13 = v2;
  }

  v30 = v0[1];

  return v30(v12, v13);
}

uint64_t sub_1D262BF28()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D262C06C, v3, v2);
}

uint64_t sub_1D262C06C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t PlaygroundImage.init(cgImage:orientation:hasAlpha:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PlaygroundImage(0);
  v9 = (a4 + v8[9]);
  *v9 = 0u;
  v9[1] = 0u;
  *(a4 + v8[10]) = xmmword_1D28809A0;
  v10 = v8[11];
  v11 = sub_1D2873AA8();
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  *a4 = a1;
  *(a4 + 8) = 0;
  *(a4 + 24) = a2;
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + v8[12]) = a3;
  return sub_1D2871808();
}

void sub_1D262C1D0(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v41 - v5;
  v7 = *(v1 + 24);
  v8 = *v1;
  v9 = *(v1 + 8);
  if (v7 != 1)
  {
    if (*(v1 + 8) > 1u)
    {
      if (v9 == 2)
      {
        v16 = v8;
        v17 = [v16 CIImage];
        if (v17)
        {
          v18 = v17;
          v11 = [v17 CGImage];

          if (v11)
          {

            goto LABEL_18;
          }
        }

        v11 = [v16 CGImage];

        if (v11)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (!*(v1 + 8))
      {
        v42 = *v1;
        v11 = v8;
        goto LABEL_19;
      }

      v11 = [v8 CGImage];
      if (v11)
      {
LABEL_18:
        v42 = v11;
LABEL_19:
        v20 = v11;
        v21 = CGImageRef.reoriented(to:)(v7);

        if (v21)
        {

          *a1 = v21;
LABEL_21:
          v15 = MEMORY[0x1E69E0110];
          goto LABEL_22;
        }

LABEL_32:
        sub_1D2873A08();
        v29 = sub_1D2873AA8();
        (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
        v30 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v6);
        v32 = v31;
        sub_1D22BD238(v6, &qword_1EC6DAE70, &qword_1D2881A90);
        if (v32 >> 60 == 15)
        {

          v33 = sub_1D2873758();
          (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
        }

        else
        {
          sub_1D23C5B68(v30, v32, a1);
        }

        return;
      }
    }

    v42 = 0;
    goto LABEL_32;
  }

  if (*(v1 + 8) <= 1u)
  {
    v42 = *v1;
    *a1 = v8;
    if (v9)
    {
      v10 = MEMORY[0x1E69E0118];
    }

    else
    {
      v10 = MEMORY[0x1E69E0110];
    }

    v19 = *v10;
    goto LABEL_26;
  }

  if (v9 != 2)
  {
    *a1 = v8;
    v19 = *MEMORY[0x1E69E0108];
    v42 = v8;
LABEL_26:
    v25 = sub_1D2873758();
    v26 = *(v25 - 8);
    (*(v26 + 104))(a1, v19, v25);
    (*(v26 + 56))(a1, 0, 1, v25);
    v27 = v42;

    v28 = v27;
    return;
  }

  v12 = v8;
  v13 = [v12 CIImage];
  if (!v13)
  {
    v34 = [v12 CGImage];
    if (!v34)
    {
      sub_1D2873A08();
      v36 = sub_1D2873AA8();
      (*(*(v36 - 8) + 56))(v6, 0, 1, v36);
      v37 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v6);
      v39 = v38;
      sub_1D22BD238(v6, &qword_1EC6DAE70, &qword_1D2881A90);
      if (v39 >> 60 == 15)
      {
        v40 = sub_1D2873758();
        (*(*(v40 - 8) + 56))(a1, 1, 1, v40);
      }

      else
      {
        sub_1D23C5B68(v37, v39, a1);
      }

      return;
    }

    v35 = v34;

    *a1 = v35;
    goto LABEL_21;
  }

  v14 = v13;

  *a1 = v14;
  v15 = MEMORY[0x1E69E0118];
LABEL_22:
  v22 = *v15;
  v23 = sub_1D2873758();
  v42 = *(v23 - 8);
  (*(v42 + 13))(a1, v22, v23);
  v24 = *(v42 + 7);

  v24(a1, 0, 1, v23);
}

uint64_t PlaygroundImage.init(vgImage:imageProperties:hasAlpha:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v7 = sub_1D2873758();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PlaygroundImage(0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  v12 = (a4 + v11[9]);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = a4 + v11[10];
  *v13 = xmmword_1D28809A0;
  v14 = v11[11];
  v15 = sub_1D2873AA8();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v8 + 88))(v10, v7);
  if (v16 == *MEMORY[0x1E69E0110])
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E69E0118])
  {
    v17 = 1;
  }

  else
  {
    if (v16 != *MEMORY[0x1E69E0108])
    {

      sub_1D2399614();
      swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 2;
      swift_willThrow();
      v20 = *(v8 + 8);
      v20(a1, v7);
      v20(v10, v7);
      sub_1D22D6D4C(*v13, *(v13 + 8));
      return sub_1D22BD238(a4 + v14, &qword_1EC6DAE70, &qword_1D2881A90);
    }

    v17 = 3;
  }

  (*(v8 + 96))(v10, v7);
  *a4 = *v10;
  *(a4 + 8) = v17;
  *(a4 + 24) = 1;
  *(a4 + 16) = a2;
  *(a4 + v11[12]) = v22 & 1;
  sub_1D2871808();
  return (*(v8 + 8))(a1, v7);
}

void sub_1D262CA2C(uint64_t a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D2878068();
  v9 = [objc_opt_self() *a3];

  if (v9)
  {

    v10 = type metadata accessor for PlaygroundImage(0);
    v11 = (a4 + v10[9]);
    *v11 = 0u;
    v11[1] = 0u;
    *(a4 + v10[10]) = xmmword_1D28809A0;
    v12 = v10[11];
    v13 = sub_1D2873AA8();
    (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
    *a4 = v9;
    *(a4 + 8) = 2;
    v14 = v9;
    [v14 imageOrientation];
    *(a4 + 24) = sub_1D2878C88();
    *(a4 + 16) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + v10[12]) = 0;
    sub_1D2871808();
  }

  else
  {
    sub_1D2399614();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1D262CB9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PlaygroundImage(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D262CC5C, 0, 0);
}

uint64_t sub_1D262CC5C()
{
  v1 = sub_1D262B684();
  v0[7] = v1;
  if (v1)
  {
    v2 = *(v0[3] + 24);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1D262CD70;

    return MEMORY[0x1EEDC93A0](v2);
  }

  else
  {
    sub_1D239A330(v0[3], v0[2]);
    (*(v0[5] + 56))(v0[2], 0, 1, v0[4]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D262CD70(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D262CE8C, 0, 0);
}

uint64_t sub_1D262CE8C()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[4];
    v4 = v0[2];
    v5 = (v2 + v3[9]);
    *v5 = 0u;
    v5[1] = 0u;
    *(v2 + v3[10]) = xmmword_1D28809A0;
    v6 = v3[11];
    v7 = sub_1D2873AA8();
    (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
    *v2 = v1;
    *(v2 + 8) = 0;
    *(v2 + 24) = 1;
    *(v2 + 16) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + v3[12]) = 0;
    sub_1D2871808();
    sub_1D23EEBD4(v2, v4);
  }

  else
  {
    sub_1D239A330(v0[3], v0[2]);
  }

  (*(v0[5] + 56))(v0[2], 0, 1, v0[4]);

  v8 = v0[1];

  return v8();
}

void PlaygroundImage.size.getter()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      [*v0 size];
      return;
    }

    CVPixelBufferGetWidth(*v0);
    CVPixelBufferGetHeight(v1);
  }

  else
  {
    if (*(v0 + 8))
    {
      [*v0 extent];
      return;
    }

    CGImageGetWidth(*v0);
    CGImageGetHeight(v1);
  }

  CGRectMake();
}

void sub_1D262D084(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D2878068();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:a3];

  if (v9)
  {

    v10 = type metadata accessor for PlaygroundImage(0);
    v11 = (a4 + v10[9]);
    *v11 = 0u;
    v11[1] = 0u;
    *(a4 + v10[10]) = xmmword_1D28809A0;
    v12 = v10[11];
    v13 = sub_1D2873AA8();
    (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
    *a4 = v9;
    *(a4 + 8) = 2;
    v14 = v9;
    [v14 imageOrientation];
    *(a4 + 24) = sub_1D2878C88();
    *(a4 + 16) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + v10[12]) = 0;
    sub_1D2871808();
  }

  else
  {
    sub_1D2399614();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1D262D208()
{
  v0 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878AA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D24614C4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_1D2877B58();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D2631494(&qword_1ED89CD60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50, &unk_1D2881A40);
  sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50, &unk_1D2881A40, MEMORY[0x1E69E6328]);
  sub_1D2879088();
  result = sub_1D2878AD8();
  qword_1ED8A5338 = result;
  return result;
}

uint64_t PlaygroundImage.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlaygroundImage(0) + 32);
  v4 = sub_1D2871818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1D262D4E8()
{
  v1 = (v0 + *(type metadata accessor for PlaygroundImage(0) + 36));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = 0.0;
  v44.size.height = 0.0;
  v38.origin.x = *v1;
  v38.origin.y = v3;
  v38.size.width = v4;
  v38.size.height = v5;
  if (CGRectEqualToRect(v38, v44))
  {
    v6 = *(v0 + 8);
    goto LABEL_15;
  }

  v7 = *v0;
  v6 = *(v0 + 8);
  if (v6 == 2)
  {
    v8 = v7;
LABEL_9:
    v12 = v8;
    goto LABEL_10;
  }

  v9 = sub_1D262B684();
  if (!v9)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    goto LABEL_9;
  }

  v10 = v9;
  result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v9 imageOrientation:sub_1D263073C(*(v0 + 24))];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = result;

LABEL_10:
  [v12 size];
  if (v13 <= 0.0 || ([v12 size], v14 <= 0.0))
  {

    goto LABEL_15;
  }

  if (v6 == 2)
  {
    v15 = v7;
  }

  else
  {
    v21 = sub_1D262B684();
    if (v21)
    {
      v22 = v21;
      result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v21 imageOrientation:sub_1D263073C(*(v0 + 24))];
      if (!result)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      v23 = result;

      goto LABEL_31;
    }

    v15 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  v23 = v15;
LABEL_31:
  v24 = [v23 CGImage];
  if (v24)
  {
    v25 = v24;
    v39.origin.x = v2;
    v39.origin.y = v3;
    v39.size.width = v4;
    v39.size.height = v5;
    CGRectGetMinX(v39);
    CGImageGetWidth(v25);
    v40.origin.x = v2;
    v40.origin.y = v3;
    v40.size.width = v4;
    v40.size.height = v5;
    CGRectGetMaxY(v40);
    CGImageGetHeight(v25);
    CGRectMake();
    v27 = v26;
    v29 = v28;
    v41.origin.x = v2;
    v41.origin.y = v3;
    v41.size.width = v4;
    v41.size.height = v5;
    CGRectGetWidth(v41);
    CGImageGetWidth(v25);
    v42.origin.x = v2;
    v42.origin.y = v3;
    v42.size.width = v4;
    v42.size.height = v5;
    CGRectGetHeight(v42);
    CGImageGetHeight(v25);
    CGRectMake();
    v43.size.width = v30;
    v43.size.height = v31;
    v43.origin.x = v27;
    v43.origin.y = v29;
    v32 = CGImageCreateWithImageInRect(v25, v43);
    if (v32)
    {
      v33 = v32;
      [v23 scale];
      v35 = v34;
      v36 = [v23 imageOrientation];
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v33 scale:v36 orientation:v35];

      return v19;
    }
  }

  else
  {
  }

LABEL_15:
  if (v6 == 2)
  {
    v16 = *v0;

    return v16;
  }

  v17 = sub_1D262B684();
  if (v17)
  {
    v18 = v17;
    result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v17 imageOrientation:sub_1D263073C(*(v0 + 24))];
    if (result)
    {
      v19 = result;

      return v19;
    }

    __break(1u);
    goto LABEL_37;
  }

  v20 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  return [v20 init];
}

uint64_t type metadata accessor for PlaygroundImage(uint64_t a1)
{
  result = qword_1ED8A52F0;
  if (!qword_1ED8A52F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D262D940(uint64_t a1)
{
  v3 = sub_1D2873AA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA7E8, &unk_1D2884460);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for PlaygroundImage(0);
  v14 = (v1 + *(v13 + 40));
  result = *v14;
  v16 = v14[1];
  if (v16 >> 60 != 15)
  {
    v28 = v6;
    v29 = v4;
    v30 = result;
    v17 = *(v4 + 48);
    if (v17(a1, 1, v3) == 1)
    {
      v18 = v30;
      sub_1D22D6CF8(v30, v16);
      return v18;
    }

    v19 = *(v13 + 44);
    v20 = *(v10 + 48);
    sub_1D23BDC8C(a1, v12);
    sub_1D23BDC8C(v1 + v19, &v12[v20]);
    if (v17(v12, 1, v3) == 1)
    {
      if (v17(&v12[v20], 1, v3) == 1)
      {
        v18 = v30;
        sub_1D22D6CF8(v30, v16);
        sub_1D22BD238(v12, &qword_1EC6DAE70, &qword_1D2881A90);
        return v18;
      }

      goto LABEL_10;
    }

    sub_1D23BDC8C(v12, v9);
    if (v17(&v12[v20], 1, v3) == 1)
    {
      (*(v29 + 8))(v9, v3);
LABEL_10:
      sub_1D22BD238(v12, &qword_1EC6DA7E8, &unk_1D2884460);
      return 0;
    }

    v21 = v29;
    v22 = &v12[v20];
    v23 = v28;
    (*(v29 + 32))(v28, v22, v3);
    v24 = v30;
    sub_1D22D6CF8(v30, v16);
    sub_1D2631494(&qword_1EC6DA7F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
    v25 = sub_1D2877F98();
    v26 = *(v21 + 8);
    v26(v23, v3);
    v26(v9, v3);
    sub_1D22BD238(v12, &qword_1EC6DAE70, &qword_1D2881A90);
    result = v24;
    if ((v25 & 1) == 0)
    {
      sub_1D22D6D4C(v24, v16);
      return 0;
    }
  }

  return result;
}

uint64_t _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(uint64_t a1)
{
  v41 = type metadata accessor for PlaygroundImage(0);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v7 = sub_1D2873CB8();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_1D2873AA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D262D940(a1);
  if (v18 >> 60 != 15)
  {
    return v17;
  }

  sub_1D23BDC8C(a1, v12);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    if (qword_1ED8A5308 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v13, qword_1ED8A5310);
    (*(v14 + 16))(v16, v20, v13);
    if (v19(v12, 1, v13) != 1)
    {
      sub_1D22BD238(v12, &qword_1EC6DAE70, &qword_1D2881A90);
    }

    v21 = sub_1D262B684();
    if (v21)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v21 = sub_1D262B684();
    if (v21)
    {
LABEL_8:
      v22 = *(v1 + 24);
      v23 = *(v1 + 16);
      v24 = *(v1 + *(v41 + 48));
      v25 = v21;
      v26 = sub_1D2630794(v21, v22, v23, v16, v24);

      (*(v14 + 8))(v16, v13);
      return v26;
    }
  }

  sub_1D28724A8();
  sub_1D239A330(v1, v6);
  v27 = sub_1D2873CA8();
  v28 = sub_1D2878A18();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v9;
    v31 = v30;
    v42 = v30;
    *v29 = 136315138;
    sub_1D239A330(v6, v38);
    v32 = sub_1D2878118();
    v34 = v33;
    sub_1D23D4DFC(v6);
    v35 = sub_1D23D7C84(v32, v34, &v42);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_1D226E000, v27, v28, "Could not get CGImage from PlaygroundImage %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1D38A3520](v31, -1, -1);
    MEMORY[0x1D38A3520](v29, -1, -1);

    (*(v39 + 8))(v37, v40);
  }

  else
  {

    sub_1D23D4DFC(v6);
    (*(v39 + 8))(v9, v40);
  }

  (*(v14 + 8))(v16, v13);
  return 0;
}

CGColorSpace *sub_1D262E1A0()
{
  AlphaInfo = CGImageGetAlphaInfo(Image);
  if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
  {
    v2 = Image;
    return Image;
  }

  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  result = CGImageGetWidth(Image);
  if ((result - 0x2000000000000000) >> 62 == 3)
  {
    v6 = result;
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    if (result)
    {
      v7 = result;
      v8 = __CGBitmapContextCreate(Width, Height, 8uLL, 4 * v6, result, 5u);

      if (!v8)
      {
        return 0;
      }

      CGImageGetWidth(Image);
      CGImageGetHeight(Image);
      sub_1D2878998();
      Image = CGBitmapContextCreateImage(v8);

      return Image;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGColorSpaceRef CGImageRef.reoriented(to:)(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = Image;
    return Image;
  }

  if ((a1 - 5) > 3)
  {
    Width = CGImageGetWidth(Image);
    Height = CGImageGetHeight(Image);
  }

  else
  {
    Width = CGImageGetHeight(Image);
    Height = CGImageGetWidth(Image);
  }

  v5 = Height;
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  BytesPerRow = CGImageGetBytesPerRow(Image);
  result = CGImageGetWidth(Image);
  v9 = ceilf(Width / result);
  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v9 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v9 >= 9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = BytesPerRow * v9;
  if ((BytesPerRow * v9) >> 64 != v10 >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = CGImageGetColorSpace(Image);
  if (result)
  {
    v11 = result;
    BitmapInfo = CGImageGetBitmapInfo(Image);
    v13 = __CGBitmapContextCreate(Width, v5, BitsPerComponent, v10, v11, BitmapInfo);

    if (!v13)
    {
      return 0;
    }

    CGImageGetWidth(Image);
    CGImageGetHeight(Image);
    sub_1D2878A78();
    v14[0] = v14[1];
    CGContextConcatCTM(v13, v14);
    CGImageGetWidth(Image);
    CGImageGetHeight(Image);
    sub_1D2878998();
    Image = CGBitmapContextCreateImage(v13);

    return Image;
  }

LABEL_19:
  __break(1u);
  return result;
}

double sub_1D262E4C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a4;
  v33 = a1;
  v34 = a3;
  v5 = sub_1D2877B48();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2877B68();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748, &unk_1D2896AE0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v31 - v16;
  v18 = *(a2 + 16);
  v19 = qword_1ED8A5330;
  sub_1D2870F68();
  if (v19 != -1)
  {
    swift_once();
  }

  v31[1] = qword_1ED8A5338;
  v20 = *(a2 + 24);
  sub_1D23BDC8C(v32, v17);
  (*(v10 + 16))(v12, v33, v9);
  v21 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v22 = (v15 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = swift_allocObject();
  v24 = v34;
  *(v23 + 16) = v34;
  *(v23 + 24) = v20;
  *(v23 + 32) = v18;
  sub_1D263131C(v17, v23 + v21);
  (*(v10 + 32))(v23 + v22, v12, v9);
  aBlock[4] = sub_1D263138C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_29;
  v25 = _Block_copy(aBlock);
  v26 = v24;
  v27 = v35;
  sub_1D2877B58();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1D2631494(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00, MEMORY[0x1E69E6328]);
  v28 = v38;
  v29 = v40;
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v27, v28, v25);
  _Block_release(v25);
  (*(v39 + 8))(v28, v29);
  (*(v36 + 8))(v27, v37);

  return result;
}

uint64_t sub_1D262E970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  v11 = sub_1D2873AA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D23BDC8C(a4, v10);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    if (qword_1ED8A5308 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v11, qword_1ED8A5310);
    (*(v12 + 16))(v14, v16, v11);
    if (v15(v10, 1, v11) != 1)
    {
      sub_1D22BD238(v10, &qword_1EC6DAE70, &qword_1D2881A90);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v17 = sub_1D2630794(a1, a2, a3, v14, 0);
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  v21[0] = v17;
  v21[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748, &unk_1D2896AE0);
  return sub_1D2878518();
}

uint64_t sub_1D262EBD8()
{
  v0 = sub_1D2873AA8();
  __swift_allocate_value_buffer(v0, qword_1ED8A5310);
  __swift_project_value_buffer(v0, qword_1ED8A5310);
  return sub_1D2873A28();
}

uint64_t static PlaygroundImage.defaultWritingFormat.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED8A5308 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2873AA8();
  v3 = __swift_project_value_buffer(v2, qword_1ED8A5310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D262ECCC(uint64_t a1, uint64_t a2)
{
  v74 = sub_1D2873AA8();
  v4 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2873CB8();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v72 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v64 - v13;
  v15 = sub_1D28739D8();
  v73 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v64 - v19;
  v66 = a1;
  v69 = sub_1D2871548();
  v76 = v21;
  v22 = sub_1D2873A58();
  sub_1D28739C8();
  if (!*(v22 + 16) || (v23 = sub_1D25D0D5C(v20), (v24 & 1) == 0))
  {

    v27 = *(v73 + 8);
    v27(v20, v15);
    goto LABEL_8;
  }

  v64[0] = v11;
  v25 = *(v22 + 56);
  v65 = v6;
  v26 = *(v25 + 8 * v23);
  v27 = *(v73 + 8);
  sub_1D2870F68();
  v27(v20, v15);

  v28 = sub_1D2878128();
  v64[1] = v64;
  v75[0] = v28;
  v75[1] = v29;
  MEMORY[0x1EEE9AC00](v28);
  v64[-2] = v75;
  v30 = v68;
  v31 = sub_1D286430C(sub_1D234ABBC, &v64[-4], v26);
  v68 = v30;

  v6 = v65;

  if ((v31 & 1) == 0)
  {
LABEL_8:
    v67 = v27;
    v44 = v72;
    sub_1D28724A8();
    v45 = v6;
    v46 = v6;
    v47 = v74;
    (*(v4 + 16))(v45, a2, v74);
    sub_1D2870F68();
    v48 = sub_1D2873CA8();
    v49 = sub_1D2878A28();

    LODWORD(v68) = v49;
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v75[0] = v51;
      *v50 = 136315394;
      v52 = sub_1D2873A58();
      sub_1D28739C8();
      if (*(v52 + 16) && (v53 = sub_1D25D0D5C(v17), (v54 & 1) != 0))
      {
        v55 = *(*(v52 + 56) + 8 * v53);
        sub_1D2870F68();
        v67(v17, v15);

        v56 = MEMORY[0x1D38A0E70](v55, MEMORY[0x1E69E6158]);
        v58 = v57;
      }

      else
      {

        v67(v17, v15);
        v58 = 0xE400000000000000;
        v56 = 1701736270;
      }

      (*(v4 + 8))(v46, v74);
      v59 = sub_1D23D7C84(v56, v58, v75);

      *(v50 + 4) = v59;
      *(v50 + 12) = 2080;
      v60 = sub_1D23D7C84(v69, v76, v75);

      *(v50 + 14) = v60;
      _os_log_impl(&dword_1D226E000, v48, v68, "Incorrect image suffix for writing image (expected one in %s, got %s)", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v51, -1, -1);
      MEMORY[0x1D38A3520](v50, -1, -1);

      (*(v70 + 8))(v72, v71);
    }

    else
    {

      (*(v4 + 8))(v46, v47);
      (*(v70 + 8))(v44, v71);
    }

    v61 = 1;
    goto LABEL_16;
  }

  v32 = a2;
  v33 = v74;
  (*(v4 + 16))(v14, v32, v74);
  (*(v4 + 56))(v14, 0, 1, v33);
  v34 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v14);
  v36 = v35;
  sub_1D22BD238(v14, &qword_1EC6DAE70, &qword_1D2881A90);
  if (v36 >> 60 != 15)
  {

    sub_1D28716F8();
    return sub_1D22D6D4C(v34, v36);
  }

  v37 = v64[0];
  sub_1D28724A8();
  v38 = v76;
  sub_1D2870F68();
  v39 = sub_1D2873CA8();
  v40 = sub_1D2878A28();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v75[0] = v42;
    *v41 = 136315138;
    v43 = sub_1D23D7C84(v69, v38, v75);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_1D226E000, v39, v40, "Couldn't get image data for writing with format %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1D38A3520](v42, -1, -1);
    MEMORY[0x1D38A3520](v41, -1, -1);
  }

  else
  {
  }

  (*(v70 + 8))(v37, v71);
  v61 = 2;
LABEL_16:
  sub_1D23EE050();
  swift_allocError();
  *v62 = v61;
  return swift_willThrow();
}

uint64_t sub_1D262F49C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D287F550;
  *(v0 + 32) = sub_1D28780A8();
  *(v0 + 40) = v1;
  result = sub_1D28780A8();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_1EC6D8A38 = v0;
  return result;
}

uint64_t sub_1D262F518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1D2871818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static PlaygroundImage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaygroundImage(0);

  return _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
}

uint64_t PlaygroundImage.hash(into:)(uint64_t a1)
{
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D2877F08();
}

uint64_t PlaygroundImage.hashValue.getter()
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D262F70C()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D262F7A8(uint64_t a1)
{
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D2877F08();
}

uint64_t sub_1D262F828()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t static PlaygroundImage.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4C8, &qword_1D2899688);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - v2;
  v4 = sub_1D2873AA8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4D0, &qword_1D2899690);
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1D2873A68();
  type metadata accessor for PlaygroundImage(0);
  sub_1D2631494(&qword_1EC6DF4D8, type metadata accessor for PlaygroundImage, &protocol conformance descriptor for PlaygroundImage);
  v18 = v10;
  sub_1D2872768();
  sub_1D2873A08();
  sub_1D2872758();
  v11 = *(v1 + 48);
  v12 = *(v5 + 16);
  v13 = v10;
  v14 = v19;
  v12(v3, v13, v19);
  v12(&v3[v11], v7, v14);
  sub_1D28727A8();
  v15 = *(v5 + 8);
  v15(v7, v14);
  return (v15)(v18, v14);
}

uint64_t sub_1D262FB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D262FBA0, 0, 0);
}

uint64_t sub_1D262FBA0()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v2 = sub_1D28716D8();
  v3 = [v1 initWithData_];

  if (v3)
  {
    v4 = v0[2];
    v5 = sub_1D2630BC0(v0[3], v0[4]);
    v6 = type metadata accessor for PlaygroundImage(0);
    v7 = (v4 + v6[9]);
    *v7 = 0u;
    v7[1] = 0u;
    *(v4 + v6[10]) = xmmword_1D28809A0;
    v8 = v6[11];
    v9 = sub_1D2873AA8();
    (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
    *v4 = v3;
    *(v4 + 8) = 2;
    [v3 imageOrientation];
    *(v4 + 24) = sub_1D2878C88();
    *(v4 + 16) = v5;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + v6[12]) = 0;
    sub_1D2871808();
  }

  else
  {
    sub_1D23EE050();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D262FD48(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D262FDE4, 0, 0);
}

uint64_t sub_1D262FDE4(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D2873A08();
  v3 = sub_1D2873AA8();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v2);
  v6 = v5;
  sub_1D22BD238(v2, &qword_1EC6DAE70, &qword_1D2881A90);
  if (v6 >> 60 == 15)
  {
    sub_1D23EE050();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = *(v1 + 8);

    return v8();
  }

  else
  {

    v10 = *(v1 + 8);

    return v10(v4, v6);
  }
}

uint64_t sub_1D262FF5C()
{
  if (*v0)
  {
    return 0x6168706C41736168;
  }

  else
  {
    return 0x61746144676E70;
  }
}

void sub_1D262FF98(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746144676E70 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D2879618() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6168706C41736168 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D2879618();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D2630074(uint64_t a1)
{
  v2 = sub_1D2630CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D26300B0(uint64_t a1)
{
  v2 = sub_1D2630CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaygroundImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for PlaygroundImage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4E0, &qword_1D28996A8);
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2630CCC();
  sub_1D2879868();
  if (!v2)
  {
    v28 = v6;
    v29 = a1;
    v10 = v31;
    v35 = 0;
    sub_1D2630D20();
    sub_1D2879528();
    v11 = v7;
    v12 = v9;
    v13 = v32;
    v14 = v33;
    LOBYTE(v32) = 1;
    v34 = sub_1D28794F8();
    v17 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1D22D6CF8(v13, v14);
    v18 = sub_1D28716D8();
    v19 = [v17 initWithData_];

    sub_1D22D6D60(v13, v14);
    if (v19)
    {
      v26 = sub_1D2630BC0(v13, v14);
      v27 = v13;
      v20 = v28;
      v21 = &v28[v4[9]];
      *v21 = 0u;
      *(v21 + 1) = 0u;
      *(v20 + v4[10]) = xmmword_1D28809A0;
      v22 = v4[11];
      v23 = sub_1D2873AA8();
      (*(*(v23 - 8) + 56))(v20 + v22, 1, 1, v23);
      *v20 = v19;
      *(v20 + 8) = 2;
      v24 = v19;
      [v24 imageOrientation];
      *(v20 + 24) = sub_1D2878C88();
      *(v20 + 16) = v26;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      *(v20 + v4[12]) = v34 & 1;
      sub_1D2871808();

      sub_1D22D6D60(v27, v14);
      (*(v10 + 8))(v12, v11);
      sub_1D23EEBD4(v20, v30);
      v15 = v29;
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }

    sub_1D23EE050();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    sub_1D22D6D60(v13, v14);
    (*(v10 + 8))(v12, v11);
    a1 = v29;
  }

  v15 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t PlaygroundImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4F8, &qword_1D28996B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2630CCC();
  sub_1D2879888();
  v10 = sub_1D2873AA8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v5);
  v13 = v12;
  sub_1D22BD238(v5, &qword_1EC6DAE70, &qword_1D2881A90);
  v15 = v11;
  v16 = v13;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE740, &unk_1D2899B90);
  sub_1D2630D74();
  sub_1D2879598();
  sub_1D22D6D4C(v15, v16);
  if (!v1)
  {
    type metadata accessor for PlaygroundImage(0);
    LOBYTE(v15) = 1;
    sub_1D2879588();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D263073C(int a1)
{
  if ((a1 - 1) < 8)
  {
    return qword_1D2899AB8[a1 - 1];
  }

  type metadata accessor for CGImagePropertyOrientation(0);
  result = sub_1D28796B8();
  __break(1u);
  return result;
}

uint64_t sub_1D2630794(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  if (a5)
  {
    v19 = a1;
  }

  else
  {
    v19 = sub_1D262E1A0();
    if (!v19)
    {
      sub_1D28724A8();
      v32 = sub_1D2873CA8();
      v33 = sub_1D2878A18();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1D226E000, v32, v33, "Could not make image opaque", v34, 2u);
        MEMORY[0x1D38A3520](v34, -1, -1);
      }

      (*(v10 + 8))(v12, v9);
      return 0;
    }
  }

  v20 = v19;
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_10;
  }

  v22 = Mutable;
  v42 = v10;
  v23 = v9;
  sub_1D28739E8();
  v24 = sub_1D2878068();

  v25 = CGImageDestinationCreateWithData(v22, v24, 1uLL, 0);

  if (!v25)
  {

    v9 = v23;
    v10 = v42;
LABEL_10:

    sub_1D28724A8();
    v29 = sub_1D2873CA8();
    v30 = sub_1D2878A18();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D226E000, v29, v30, "Could not create CGImageDestination", v31, 2u);
      MEMORY[0x1D38A3520](v31, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v15, v9);
    return 0;
  }

  v26 = CGImageRef.reoriented(to:)(a2);
  if (!v26)
  {
    v27 = v20;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_20:
    v28 = 0;
    goto LABEL_21;
  }

  v27 = v26;
  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_8:
  v28 = sub_1D2877E78();
LABEL_21:
  CGImageDestinationAddImage(v25, v27, v28);

  if (CGImageDestinationFinalize(v25))
  {
    v36 = v22;
    v37 = sub_1D28716E8();

    return v37;
  }

  sub_1D28724A8();
  v38 = sub_1D2873CA8();
  v39 = sub_1D2878A18();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1D226E000, v38, v39, "Could not finalize CGImageDestination", v40, 2u);
    MEMORY[0x1D38A3520](v40, -1, -1);
  }

  else
  {
  }

  (*(v42 + 8))(v18, v23);
  return 0;
}

uint64_t sub_1D2630BC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D28716D8();
  v3 = CGImageSourceCreateWithData(v2, 0);

  if (v3)
  {
    v4 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1D2877E88();
      }
    }
  }

  return 0;
}

unint64_t sub_1D2630CCC()
{
  result = qword_1EC6DF4E8;
  if (!qword_1EC6DF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4E8);
  }

  return result;
}

unint64_t sub_1D2630D20()
{
  result = qword_1EC6DF4F0;
  if (!qword_1EC6DF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4F0);
  }

  return result;
}

unint64_t sub_1D2630D74()
{
  result = qword_1EC6DF500;
  if (!qword_1EC6DF500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE740, &unk_1D2899B90);
    sub_1D2630DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF500);
  }

  return result;
}

unint64_t sub_1D2630DF8()
{
  result = qword_1EC6DF508;
  if (!qword_1EC6DF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF508);
  }

  return result;
}

void sub_1D2630F20(uint64_t a1)
{
  sub_1D2631054(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGImagePropertyOrientation(319);
    if (v2 <= 0x3F)
    {
      sub_1D22F3EA0(319, qword_1ED8A6D28, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1D2871818();
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v5 <= 0x3F)
          {
            sub_1D22F3EA0(319, &qword_1ED8A6CC0, MEMORY[0x1E6969080]);
            if (v6 <= 0x3F)
            {
              sub_1D26310B8(319);
              if (v7 <= 0x3F)
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

void sub_1D2631054(uint64_t a1)
{
  if (!qword_1ED89CF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB178, &unk_1D2886B40);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89CF78);
    }
  }
}

void sub_1D26310B8(uint64_t a1)
{
  if (!qword_1ED8A6B60)
  {
    sub_1D2873AA8();
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8A6B60);
    }
  }
}

uint64_t sub_1D263111C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D2631164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal0bA0V9InitErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D26311EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1D2631218()
{
  result = qword_1EC6DF528;
  if (!qword_1EC6DF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF528);
  }

  return result;
}

unint64_t sub_1D2631270()
{
  result = qword_1EC6DF530;
  if (!qword_1EC6DF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF530);
  }

  return result;
}

unint64_t sub_1D26312C8()
{
  result = qword_1EC6DF538;
  if (!qword_1EC6DF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF538);
  }

  return result;
}

uint64_t sub_1D263131C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D263138C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748, &unk_1D2896AE0);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return sub_1D262E970(v3, v4, v5, v0 + v2);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2631494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static DisplayableImage.transferRepresentation.getter()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2873AA8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF540, &qword_1D2899B00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  sub_1D2873A08();
  type metadata accessor for DisplayableImage(0);
  sub_1D26320A4();
  sub_1D2872758();
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED8B0058;
  sub_1D28718C8();
  sub_1D28780E8();
  sub_1D263247C();
  sub_1D2872798();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D2631778(uint64_t a1)
{
  v1[97] = a1;
  v2 = *(type metadata accessor for PlaygroundImage(0) - 8);
  v1[103] = v2;
  v1[104] = *(v2 + 64);
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v3 = sub_1D2873AA8();
  v1[107] = v3;
  v1[108] = *(v3 - 8);
  v1[109] = swift_task_alloc();
  v1[110] = type metadata accessor for DisplayableImage(0);
  v1[111] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26318D4, 0, 0);
}

uint64_t sub_1D26318D4()
{
  sub_1D2632570(v0[97], v0[111], type metadata accessor for DisplayableImage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[112] = *v0[111];
    sub_1D2873A08();
    v1 = swift_task_alloc();
    v0[113] = v1;
    *v1 = v0;
    v1[1] = sub_1D2631AFC;
    v2 = v0[109];

    return sub_1D263623C(v2, 1);
  }

  else
  {
    v4 = v0[106];
    v5 = v0[105];
    v6 = v0[103];
    sub_1D23EEBD4(v0[111], v4);
    sub_1D2632570(v4, v5, type metadata accessor for PlaygroundImage);
    v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v8 = swift_allocObject();
    sub_1D23EEBD4(v5, v8 + v7);
    v9 = swift_allocObject();
    v0[115] = v9;
    *(v9 + 16) = &unk_1D2899B78;
    *(v9 + 24) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE740, &unk_1D2899B90);
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 95, sub_1D2631DC8, v0 + 82);
  }
}

uint64_t sub_1D2631AFC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[87] = v2;
  v4[88] = a1;
  v4[89] = a2;
  v5 = v3[109];
  v6 = v3[108];
  v7 = v3[107];
  v4[114] = a2;

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x1EEE6DFA0](sub_1D2631C64, 0, 0);
}

uint64_t sub_1D2631C64()
{
  if (v0[114] >> 60 == 15)
  {
    sub_1D233F184();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[88];

    v5 = v0[114];

    v6 = v0[1];

    return v6(v4, v5);
  }
}

uint64_t sub_1D2631DE4()
{
  v1 = v0[96];
  v0[116] = v1;
  if (v1 >> 60 == 15)
  {
    sub_1D233F184();
    v0[117] = swift_allocError();
    *v2 = 4;
    swift_willThrow();
    v3 = sub_1D2631EC0;
    v4 = v0 + 2;
    v5 = v0 + 95;
    v6 = v0 + 90;
  }

  else
  {
    v7 = v0[95];
    v0[118] = v7;
    sub_1D22D6CF8(v7, v1);
    v3 = sub_1D2631F80;
    v4 = v0 + 2;
    v5 = v0 + 95;
    v6 = v0 + 98;
  }

  return MEMORY[0x1EEE6DEB0](v4, v5, v3, v6);
}

uint64_t sub_1D2631EDC()
{
  sub_1D23D4DFC(*(v0 + 848));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2631F9C()
{
  sub_1D23D4DFC(v0[106]);

  v1 = v0[118];
  v2 = v0[116];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t type metadata accessor for DisplayableImage(uint64_t a1)
{
  result = qword_1EC6D8B30;
  if (!qword_1EC6D8B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D26320A4()
{
  result = qword_1EC6E0FD0;
  if (!qword_1EC6E0FD0)
  {
    type metadata accessor for DisplayableImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0FD0);
  }

  return result;
}

uint64_t sub_1D26320FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2632198, 0, 0);
}

uint64_t sub_1D2632198(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D2873A08();
  v3 = sub_1D2873AA8();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v2);
  v6 = v5;
  sub_1D2632860(v2);

  v7 = *(v1 + 8);

  return v7(v4, v6);
}

uint64_t sub_1D263226C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D2632358;

  return v5();
}

uint64_t sub_1D2632358(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  v5[1] = a2;
  v6 = *(v8 + 8);

  return v6();
}

unint64_t sub_1D263247C()
{
  result = qword_1EC6DF548;
  if (!qword_1EC6DF548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF540, &qword_1D2899B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF548);
  }

  return result;
}

void sub_1D26324FC(uint64_t a1)
{
  type metadata accessor for PlaygroundImage(319);
  if (v1 <= 0x3F)
  {
    sub_1D25461E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1D2632570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26325D8()
{
  v2 = *(type metadata accessor for PlaygroundImage(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D26326A4;

  return sub_1D26320FC(v0 + v3);
}

uint64_t sub_1D26326A4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1D26327A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BC8FC;

  return sub_1D263226C(a1, v4);
}

uint64_t sub_1D2632860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AsyncImageTransferable.transferRepresentation.getter()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2873AA8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF550, &qword_1D2899BA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  sub_1D2873A08();
  sub_1D24FB8DC();
  sub_1D2872758();
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED8B0058;
  sub_1D28718C8();
  sub_1D28780E8();
  sub_1D2632FB0();
  sub_1D2872798();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D2632B5C(int **a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  v1[2] = swift_task_alloc();
  type metadata accessor for PlaygroundImage(0);
  v3 = swift_task_alloc();
  v1[3] = v3;
  v6 = (*a1 + **a1);
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_1D2632CBC;

  return v6(v3);
}

uint64_t sub_1D2632CBC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D2632F40;
  }

  else
  {
    v2 = sub_1D2632DD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2632DD0(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  sub_1D2873A08();
  v4 = sub_1D2873AA8();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v3);
  v7 = v6;
  sub_1D2632860(v3);
  sub_1D23D4DFC(v2);
  if (v7 >> 60 == 15)
  {
    sub_1D2633040();
    swift_allocError();
    swift_willThrow();

    v8 = v1[1];

    return v8();
  }

  else
  {

    v10 = v1[1];

    return v10(v5, v7);
  }
}

uint64_t sub_1D2632F40()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D2632FB0()
{
  result = qword_1EC6DF558;
  if (!qword_1EC6DF558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF550, &qword_1D2899BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF558);
  }

  return result;
}

unint64_t sub_1D2633040()
{
  result = qword_1EC6DF560;
  if (!qword_1EC6DF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF560);
  }

  return result;
}

unint64_t sub_1D26330A8()
{
  result = qword_1EC6DF568;
  if (!qword_1EC6DF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF568);
  }

  return result;
}

uint64_t sub_1D26330FC()
{
  v1[2] = v0;
  sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2633194, v3, v2);
}

uint64_t sub_1D2633194()
{
  if (*(*(v0[2] + 16) + 16))
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1D263327C;

    return sub_1D26D67D4();
  }
}

uint64_t sub_1D263327C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D26333A4, v4, v3);
}

uint64_t sub_1D26333A4()
{
  v1 = v0[7];

  if (v1)
  {
    v2 = v0[7];
    v3 = sub_1D2633AC8(v2);
    v5 = v4;
    v1 = v6;

    if (v3)
    {
      if (v3[2])
      {
        goto LABEL_7;
      }

      v3 = 0;
    }

    v5 = 0;
    v1 = 0;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

LABEL_7:
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D2633AC8(qword_1ED8B0058);
  if (v7)
  {
    v10 = v9;
    if (v3)
    {
      v11 = v7;
      if (v1)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v1)
      {
        v13 = v1;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      if (v9)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      if (v12 == v14 && v13 == v15)
      {
        sub_1D2870F68();
        sub_1D2870F68();
      }

      else
      {
        v17 = v8;
        v18 = sub_1D2879618();
        sub_1D2870F68();
        sub_1D2870F68();

        if (v18)
        {

          v3 = v11;
          v5 = v17;
          v1 = v10;
          goto LABEL_33;
        }
      }
    }

    else
    {
      v3 = v7;
      v5 = v8;
      v1 = v9;
    }
  }

  else
  {
    sub_1D238D058(v3, v5, v1);
    v5 = 0;
    v1 = 0;
    v3 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:
  v19 = v0[2];
  v19[2] = v3;
  v19[3] = v5;
  v19[4] = v1;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D26335D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6973726576;
  }

  else
  {
    v3 = 0x6569636E6574616CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F6973726576;
  }

  else
  {
    v5 = 0x6569636E6574616CLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D263367C()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

double sub_1D2633704(uint64_t a1)
{
  sub_1D2877F38();

  return result;
}

uint64_t sub_1D2633778()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

void sub_1D26337FC(char *a2@<X8>)
{
  v3 = sub_1D2879488();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D263385C(uint64_t *a1@<X8>)
{
  v2 = 0x6569636E6574616CLL;
  if (*v1)
  {
    v2 = 0x6E6F6973726576;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D26338A0()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x6569636E6574616CLL;
  }
}

void sub_1D26338E0(char *a3@<X8>)
{
  v4 = sub_1D2879488();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D2633944(uint64_t a1)
{
  v2 = sub_1D263438C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2633980(uint64_t a1)
{
  v2 = sub_1D263438C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D26339BC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2634090(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D26339EC()
{

  return swift_deallocClassInstance();
}

void sub_1D2633A6C(void *a2@<X8>)
{
  v3 = swift_allocObject();

  v4 = MEMORY[0x1E69E7CC0];
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v4;
  *a2 = v3;
}

void *sub_1D2633AC8(void *a1)
{
  v2 = sub_1D2873CB8();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32[4] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - v5;
  v7 = sub_1D28716B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  v14 = sub_1D2878068();
  v15 = sub_1D2878068();
  v16 = [a1 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_1D2871638();

    (*(v8 + 32))(v13, v10, v7);
    v28 = sub_1D28716C8();
    v30 = v29;
    sub_1D28713F8();
    swift_allocObject();
    sub_1D28713E8();
    sub_1D263453C();
    sub_1D28713D8();
    (*(v8 + 8))(v13, v7);

    sub_1D22D6D60(v28, v30);
    return v34;
  }

  else
  {
    v17 = v2;
    sub_1D28725D8();
    v18 = a1;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136446210;
      v23 = [v18 bundlePath];
      v24 = sub_1D28780A8();
      v26 = v25;

      v27 = sub_1D23D7C84(v24, v26, &v34);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_1D226E000, v19, v20, "Cannot load latencies with bundle %{public}s, missing file", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1D38A3520](v22, -1, -1);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    (*(v33 + 8))(v6, v17);
    return 0;
  }
}

uint64_t sub_1D2634090(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF570, &qword_1D2899DB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D263438C();
  sub_1D2879868();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF578, &qword_1D2899DC0);
    v28 = 0;
    sub_1D26343E0();
    result = sub_1D2879528();
    v26 = v4;
    v9 = 0;
    v10 = v29;
    v11 = *(v29 + 16);
    v12 = v29 + 24;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v13 = v12 + 24 * v9;
    while (1)
    {
      if (v11 == v9)
      {

        v27 = 1;
        sub_1D28794E8();
        (*(v26 + 8))(v6, v3);
        __swift_destroy_boxed_opaque_existential_0(a1);
        return v7;
      }

      if (v9 >= *(v10 + 16))
      {
        break;
      }

      ++v9;
      v14 = (v13 + 24);
      v15 = *(v13 + 16);
      v13 += 24;
      if (v15)
      {
        v24 = *(v14 - 2);
        v25 = v12;
        v16 = *v14;
        sub_1D2870F68();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D27CD668(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
        }

        v17 = v7;
        v18 = *(v7 + 16);
        v19 = v17;
        v20 = *(v17 + 24);
        v21 = v18 + 1;
        if (v18 >= v20 >> 1)
        {
          v23 = v18 + 1;
          result = sub_1D27CD668((v20 > 1), v18 + 1, 1, v19);
          v21 = v23;
          v19 = result;
        }

        *(v19 + 16) = v21;
        v22 = (v19 + 24 * v18);
        v7 = v19;
        v12 = v25;
        v22[4] = v24;
        v22[5] = v15;
        v22[6] = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D263438C()
{
  result = qword_1ED89EFC0[0];
  if (!qword_1ED89EFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89EFC0);
  }

  return result;
}

unint64_t sub_1D26343E0()
{
  result = qword_1ED89CEF0;
  if (!qword_1ED89CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF578, &qword_1D2899DC0);
    sub_1D2634464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CEF0);
  }

  return result;
}

unint64_t sub_1D2634464()
{
  result = qword_1ED8A0770;
  if (!qword_1ED8A0770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF580, &qword_1D2899DC8);
    sub_1D26344E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0770);
  }

  return result;
}

unint64_t sub_1D26344E8()
{
  result = qword_1ED8A0778;
  if (!qword_1ED8A0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0778);
  }

  return result;
}

unint64_t sub_1D263453C()
{
  result = qword_1ED89EFA8;
  if (!qword_1ED89EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89EFA8);
  }

  return result;
}

unint64_t sub_1D26345A4()
{
  result = qword_1EC6DF588;
  if (!qword_1EC6DF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF588);
  }

  return result;
}

unint64_t sub_1D26345FC()
{
  result = qword_1ED89EFB0;
  if (!qword_1ED89EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89EFB0);
  }

  return result;
}

unint64_t sub_1D2634654()
{
  result = qword_1ED89EFB8;
  if (!qword_1ED89EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89EFB8);
  }

  return result;
}

uint64_t sub_1D26346A8(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v3[27] = sub_1D2878568();
  v3[28] = sub_1D2878558();
  v4 = swift_task_alloc();
  v3[29] = v4;
  *v4 = v3;
  v4[1] = sub_1D263475C;

  return sub_1D2634AD0();
}

uint64_t sub_1D263475C()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2634898, v1, v0);
}

void sub_1D2634898()
{
  v1 = *(v0 + 208);

  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  sub_1D2870F68();
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v25 = v6;
      v7 = (v5 + 80 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v10 = *(v0 + 192);
        v9 = *(v0 + 200);
        v11 = v7[1];
        v12 = v7[2];
        v13 = v7[3];
        *(v0 + 80) = v7[4];
        v14 = *v7;
        *(v0 + 48) = v12;
        *(v0 + 64) = v13;
        *(v0 + 16) = v14;
        *(v0 + 32) = v11;
        v4 = v8 + 1;
        v15 = *(v0 + 80);
        *(v0 + 176) = v10;
        *(v0 + 184) = v9;
        v16 = swift_task_alloc();
        *(v16 + 16) = v0 + 176;
        sub_1D25A3DB4(v0 + 16, v0 + 96);
        sub_1D2870F68();
        v17 = sub_1D286430C(sub_1D234ABBC, v16, v15);

        if (v17)
        {
          break;
        }

        sub_1D25A3DEC(v0 + 16);
        v7 += 5;
        ++v8;
        if (v3 == v4)
        {
          v6 = v25;
          goto LABEL_15;
        }
      }

      v6 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D23D868C(0, *(v25 + 16) + 1, 1);
        v6 = v25;
      }

      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D23D868C((v18 > 1), v19 + 1, 1);
        v6 = v25;
      }

      *(v6 + 16) = v19 + 1;
      v20 = (v6 + 80 * v19);
      v20[2] = *(v0 + 16);
      v21 = *(v0 + 32);
      v22 = *(v0 + 48);
      v23 = *(v0 + 80);
      v20[5] = *(v0 + 64);
      v20[6] = v23;
      v20[3] = v21;
      v20[4] = v22;
      v5 = v2 + 32;
    }

    while (v3 - 1 != v8);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v24 = *(v0 + 8);

  v24(v6);
}

uint64_t sub_1D2634AD0()
{
  v1[2] = v0;
  sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2634B68, v3, v2);
}

uint64_t sub_1D2634B68()
{
  if (*(*(v0[2] + 16) + 16))
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1D2634C50;

    return sub_1D26D67D4();
  }
}

uint64_t sub_1D2634C50(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D2634D78, v4, v3);
}

uint64_t sub_1D2634D78()
{
  v1 = v0[7];

  if (v1)
  {
    v2 = v0[7];
    v3 = sub_1D26353C8(v2);
    v5 = v4;
    v1 = v6;

    if (v3)
    {
      if (v3[2])
      {
        goto LABEL_7;
      }

      v3 = 0;
    }

    v5 = 0;
    v1 = 0;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

LABEL_7:
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D26353C8(qword_1ED8B0058);
  if (v7)
  {
    v10 = v9;
    if (v3)
    {
      v11 = v7;
      if (v1)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v1)
      {
        v13 = v1;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      if (v9)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      if (v12 == v14 && v13 == v15)
      {
        sub_1D2870F68();
        sub_1D2870F68();
      }

      else
      {
        v17 = v8;
        v18 = sub_1D2879618();
        sub_1D2870F68();
        sub_1D2870F68();

        if (v18)
        {

          v3 = v11;
          v5 = v17;
          v1 = v10;
          goto LABEL_33;
        }
      }
    }

    else
    {
      v3 = v7;
      v5 = v8;
      v1 = v9;
    }
  }

  else
  {
    sub_1D238D058(v3, v5, v1);
    v5 = 0;
    v1 = 0;
    v3 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:
  v19 = v0[2];
  v19[2] = v3;
  v19[3] = v5;
  v19[4] = v1;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D2634FA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6973726576;
  }

  else
  {
    v3 = 0x73656C797473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F6973726576;
  }

  else
  {
    v5 = 0x73656C797473;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D2635048()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

double sub_1D26350C8(uint64_t a1)
{
  sub_1D2877F38();

  return result;
}

uint64_t sub_1D2635134()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

void sub_1D26351B0(char *a2@<X8>)
{
  v3 = sub_1D2879488();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D2635210(uint64_t *a1@<X8>)
{
  v2 = 0x73656C797473;
  if (*v1)
  {
    v2 = 0x6E6F6973726576;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D263524C()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x73656C797473;
  }
}